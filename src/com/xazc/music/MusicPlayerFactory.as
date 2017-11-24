package com.xazc.music 
{
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.SampleDataEvent;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.net.URLRequest;
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	import mx.messaging.Channel;
	
	public class MusicPlayerFactory
	{
		private static  var _channel:SoundChannel;
		private static var index:int = 0;
		private static var _soundList:ArrayCollection = new ArrayCollection();
		private static var _orderPlayList:ArrayCollection = new ArrayCollection();//循环播放链表
		private static var dic:Dictionary = new Dictionary;
		/**  
		 * 初始化、加载歌曲并开始播放  
		 * */ 
		public  static function Load():void
		{  
			var path:String;
			var iconPath:String = "com/xazc/music/assets/";
			var iconFormat:String = ".mp3";
			var g_musiclsit:Array = [{musicName:"001",musicIndex:1},{musicName:"002",musicIndex:2},{musicName:"003",musicIndex:3}];
			if(g_musiclsit!= null)
			{
				for(var i:int = 0;i<g_musiclsit.length;i++)
				{
					path = iconPath+g_musiclsit[i]["musicName"]+iconFormat;
					PlaySound.add(path,true);
				}
			}
		}  
		
		/**
		 *	开始播放   
		 * @param num -- 音乐名称
		 * @param loop -- 是否需要重复播放(true为需要)
		 * 
		 */		
		public static function OnPlayClick(num:int,loop:Boolean = false):void
		{
			var nameStr:String = num.toString();
			if(num < 10)
			{
				nameStr = "00" + num;
			}
			else if(num < 100)
			{
				nameStr = "0" + num;
			}
			MusicPlayerFactory.OnStopAll();
			if(loop == true)
			{
				PlaySound.play(nameStr, 9999);
			}
			else
			{
				PlaySound.play(nameStr);
			}
		}
		
		/**  
		 * 播放完毕判断是否重复播放  
		 * */ 
		public static 	function playComplete(event:Event):void 
		{
			
			for(var key:* in dic)
			{
				var obj:Object = dic[key];
				if(obj != null)
				{
					if(obj["channel"] == event.target)
					{
						OnStopClick(key);
						if(obj["loop"] ==  true)
						{
							OnPlayClick(key, true);
						}
						break;
					}
				}
			}
		}   
		/**  
		 * 暂停播放  
		 * */ 
		public static function OnStopClick(num:int):void
		{
			var nameStr:String = num.toString();
			if(num < 10)
			{
				nameStr = "00" + num;
			}
			else if(num < 100)
			{
				nameStr = "0" + num;
			}
			
			PlaySound.stop(nameStr);
		}
		
		/**
		 * 停止所有播放
		 * */
		public static function OnStopAll():void
		{
			PlaySound.stopAll();
		}
		
		/**  
		 * 调节音量 ,调整后的值是当且音量*volume值 
		 * */ 
		public static function changeVolume(volume:Number):void{
			PlaySound.setMusicVolume(volume);
		}    
		
		/**  
		 * 歌曲顺序播放  
		 * */ 
		
		public static  function playSequ(_playList:ArrayCollection):void 
		{
			_orderPlayList = _playList;
			if(index < _orderPlayList.length)
			{
				var _sound:Sound = _orderPlayList[index] as Sound;
				if(_sound != null)
				{
					_channel = _sound.play();
					index++;
					_channel.addEventListener(Event.SOUND_COMPLETE,onComplete);
				}
			}
		}
		/**  
		 
		 * 歌曲播放完成后顺序播放  
		 
		 * */ 
		public static function onComplete(event:Event):void
		{
			if(index < _orderPlayList.length)
			{
				playSequ(_orderPlayList);
			}
			else
			{
				index = 0;
				playSequ(_orderPlayList);
			}
		}
		public static function get s_soundList():ArrayCollection
		{
			return _soundList;
		}
		
		public static function set s_soundList(value:ArrayCollection):void
		{
			_soundList = value;
		}
	}
}