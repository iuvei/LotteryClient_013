package com.xazc.music
{
	import com.xazc.single.CurrentUserInfo;
	
	import flash.errors.IOError;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.SampleDataEvent;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	
	/**
	 * 声音播放完成时进行调度。
	 * 
	 * @eventType com.neog.events.PlaySoundEvent.COMPLETE
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10.0.r2
	 **/
	
	[Event(name="complete", type="com.xazc.music.PlaySoundEvent")]
	
	/**
	 * 在ActionScript 3.0中，外部加载声音文件，重复播放时，容易产生延迟现象，特别是在游戏操作实时播放时显得特别明显，
	 * PlaySound 类可以很好的解决这个问题。
	 */
	
	public class PlaySound extends EventDispatcher
	{
		/** @private 保存加载进来的声音数据。 */
		protected static var library:Dictionary = new Dictionary(false);
		
		/** @private 保存播放声音的引用。 */
		protected static var channelLib:Dictionary = new Dictionary(false);        
		
		/** @private 声音循环的次数。 */
		private var loops:int;
		
		/** @private 从0开始的索引，表示在数组中开始写入的位置。 */
		private var offset:int;
		
		/** @private 保存的声音数据。 */
		private var bytes:ByteArray;
		
		/** @private 声音开始播放的位置，单位是秒。 */
		private var startTime:Number;
		
		/** @private 保存单个声音的引用。 */
		private static var _channel:SoundChannel;
		
		/** @private 声音是否完成播放。 */
		private var _complete:Boolean;
		
		/** @private 声音的名称 */
		private var _name:String;
		
		/** @private **/
		private var outputSnd:Sound;
		
		/**
		 * 播放指定名称的声音，建议通过 PlaySound.play播放。
		 * 
		 * @param        name       需要播放声音的名称。
		 * @param        loops      声音需要循环的次数。
		 * @param        startTime  声音开始播放的位置，单位是秒。
		 */
		public function PlaySound(name:String, loops:int = 0, startTime:Number = 0) 
		{
			this.loops = loops;
			this.startTime = startTime;
			this._complete = false;
			this._name = name;
			offset = startTime * 44100 * 8;
			bytes = library[name];
			if (offset > bytes.length) { return; } //如果开始位置大于声音的长度，则不播放声音。
			outputSnd = new Sound();
			outputSnd.addEventListener(SampleDataEvent.SAMPLE_DATA, sampleDataHandler);
			_channel = outputSnd.play();
			if(_channel!=null)
			{
				var transform:SoundTransform = _channel.soundTransform;   //声音通道，可对声音精确控制     
				transform.volume = CurrentUserInfo.musicVolume;   
				_channel.soundTransform = transform;  
			}
			var all:Array = channelLib[name];
			if (!all)
			{
				channelLib[name] = [this];
			}
			else
			{
				all[all.length] = this;
			}
		}
		
		private function sampleDataHandler(e:SampleDataEvent):void 
		{
			var innerCount:int = 32768;
			if (bytes.length - offset < innerCount)
			{
				innerCount = bytes.length - offset;
				loops--;
				if (loops > 0)
				{
					offset = startTime * 44100 * 8;
					innerCount = 32768;
				}
				else 
				{
					stopSound();
				}
			}
			e.data.writeBytes(bytes, offset, innerCount);
			offset += innerCount;
		}
		
		/**
		 * 停止当前播放的声音，建议通过PlaySound.stop访问。
		 * 
		 * @see PlaySound.stop()
		 */
		public function stopSound():void
		{
			if(outputSnd!=null){
				_complete = true;
				outputSnd.removeEventListener(SampleDataEvent.SAMPLE_DATA, sampleDataHandler);
				dispatchEvent(new PlaySoundEvent(PlaySoundEvent.COMPLETE, { name:name } ));
			}
		}
		
		/**
		 * 获取声音的名称。
		 */
		public function get name():String { return _name; }
		
		/**
		 * 获取 PlaySound 实例的 SoundChannel 对象。
		 */
		public function get channel():SoundChannel { return _channel; }
		
		/**
		 * 设置或获取声音的播放状态。
		 */
		public function get complete():Boolean { return _complete; }
		
		/**
		 * 把声音样本 ByteArray 数据添加到库中，并处理声音。
		 * 
		 * @param        sound
		 * @param        overwrite
		 */
		private static function completeHandler(sound:Sound, overwrite:Boolean = false):void
		{
			var newBytes:ByteArray = new ByteArray();
			var key:String = sound.url;
			var offset:int = 0;
			sound.extract(newBytes, 44100 * sound.length / 1000);
			for (var i:int = 0; i < newBytes.length / 8; i++)
			{
				var isFlag:Boolean = false;
				for (var j:int = 0; j < 8; j++)
				{
					if (newBytes[i * 8 + j] > 0)
					{
						isFlag = true;
						break;
					}
				}
				
				if (isFlag)
				{
					offset = i * 8;
					break;
				}
			}
			
			var bytes:ByteArray = new ByteArray();
			bytes.writeBytes(newBytes, offset, newBytes.length - offset);
			key = key.substring(Math.max(key.lastIndexOf("/"), key.lastIndexOf("\\")) + 1, key.lastIndexOf("."));
			if (!library[key] || overwrite)
			{
				library[key] = bytes;
			}
			
//			UtilFunc.Log("PlaySound:completeHandler", key);
		}
		
		private static function ioErrorHandler(message:String = ""):void 
		{
//			UtilFunc.Log("路径[" + message + "]的声音文件不存在。");
		}
		
		/**
		 * 向PlaySound库添加声音数据，同时可以利用声音名称来访问。
		 * 
		 * @param        path       指向外部文件的声音文件的URL，如果是类，则需要完全限定类名。
		 * @param        overwrite  如果 PlaySound 库中存在相当名称声音，指定是否需要覆盖。
		 */
		public static function add(path:String, overwrite:Boolean = false):void
		{
			if (!path) { return; }
			var sound:Sound;
			if (path.indexOf("/") > -1 || path.indexOf("\\") > - 1)
			{
				sound = new Sound(new URLRequest(path));
				sound.addEventListener(Event.COMPLETE, function():void { completeHandler(sound, overwrite); } );
				sound.addEventListener(IOErrorEvent.IO_ERROR, function():void { ioErrorHandler(path); } );
			}
			else
			{
				try
				{
					var SoundClass:Class = ApplicationDomain.currentDomain.getDefinition(path) as Class;
					sound = new SoundClass();
					completeHandler(sound, overwrite);
				}
				catch (e:Error)
				{
					ioErrorHandler(path)
				}
			}
		}
		
		/**
		 * 播放声音并生成一个新的 PlaySound 对象。
		 * 
		 * @param        name       需要播放声音的名称。
		 * @param        loops      声音循环的次数。
		 * @param        startTime  声音播放的初始位置（以毫秒为单位）。
		 * @return             返回 PlaySound 实例。
		 */
		public static function play(name:String,loops:int = 0,startTime:Number = 0):PlaySound
		{
			if (library[name] == undefined) { return null; }
			return new PlaySound(name, loops, startTime);
		}
		
		/**
		 * 停止播放指定的单个声音或停止具有相同名称（同一名称可以有许多 PlaySound 实例）的声音。
		 * 
		 * @param        target    PlaySound 实例或是声音的名称。
		 */
		public static function stop(target:Object):void
		{
			var all:Array;
			var i:int;
			if (target is PlaySound && target.name in channelLib)
			{
				all = channelLib[target.name];
				i = all.length;
				while (i--)
				{
					if (all[i] == target)
					{
						PlaySound(all[i]).stopSound();
						all.splice(i, 1);
						i = 0;
						if (all.length == 0) { delete channelLib[target]; }
					}
				}
			}
			else if(target is String && target in channelLib)
			{
				all = channelLib[target];
				i = all.length;
				while (i--)
				{
					PlaySound(all[i]).stopSound();
					all.splice(i, 1);
					if (all.length == 0) { delete channelLib[target]; }
				}
			}
		}
		
		/**
		 * 停止播放所有声音。
		 */
		public static function stopAll():void
		{
			var all:Array;
			var i:int;
			for (var name:String in channelLib)
			{
				all = channelLib[name];
				i = all.length;
				while (i--)
				{
					PlaySound(all[i]).stopSound();
					all.splice(i, 1);
					if (all.length == 0) { delete channelLib[name]; }
				}
			}
		}
		
		public static function setMusicVolume(volume:int = 1):void{
			if(_channel!=null)
			{
				var transform:SoundTransform = _channel.soundTransform;   //声音通道，可对声音精确控制     
				transform.volume = volume;   
				_channel.soundTransform = transform;   
			}
		}
	}        
}