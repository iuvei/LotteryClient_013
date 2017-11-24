package com.xazc.music
{
	import flash.events.Event;
	
	/**
	 * 当声音播放完成后，FlashPlayer将调试PlaySoundEvent对象。. 
	 * 存在以下事件类型：
	 * <ul>
	 *   <li>PlaySoundEvent.COMPLETE：针对声音播放完成时进行调度。</li>
	 * </ul>
	 */
	public class PlaySoundEvent extends Event 
	{
		/**
		 * 定义 confirm 事件对象的 type 属性值。
		 */
		public static const COMPLETE:String = "complete";
		
		private var _data:Object;
		
		/**
		 * 创建一个 PlaySoundEvent 对象，包含一些基本信息和数据并传递给事件侦听器。
		 * 
		 * @param        type        事件的类型，可以作为PlaySoundEvent.type访问。
		 * @param        data        附带的数据，在事件属性data读取相关值。默认值为 null。
		 * @param        bubbles     确定 PlaySoundEvent 对象是否参与事件流的冒泡阶段。默认值为 false。
		 * @param        cancelable  确定是否可以取消 PlaySoundEvent 对象。 默认值为 false。
		 */
		public function PlaySoundEvent(type:String, data:Object =null, bubbles:Boolean=false, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			_data = data;
		} 
		
		/**
		 * 创建 PlaySoundEvent 对象副本。
		 * 
		 * @return 其属性值与原始属性值匹配的新 PlaySoundEvent 对象。
		 */
		public override function clone():Event 
		{ 
			return new PlaySoundEvent(type, data, bubbles, cancelable);
		} 
		
		/**
		 * 返回一个字符串，其中包含 PlaySoundEvent 对象的所有属性。
		 * 
		 * @return 一个字符串，其中包含 PlaySoundEvent 对象的所有属性。
		 */
		public override function toString():String 
		{ 
			return formatToString("PlaySoundEvent", "type", "data", "bubbles", "cancelable", "eventPhase"); 
		}
		
		/**
		 * 获取事件所带的数据。
		 */
		public function get data():Object { return _data; }
		
	} 
}