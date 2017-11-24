package com.xazc.event
{
	import flash.events.Event;
	public class ChangeShowDateEvent extends CustomEvent
	{
		
		/**
		 * 改变当前玩法对应的单注奖金 
		 */
		public static const CHANGE_SINGLE_PRIZE:String = "ChangeSinglePrize";
		
		
		public function ChangeShowDateEvent(type:String, body:Object=null, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, body, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new JumpEvent(type, body, bubbles, cancelable);
		}
	}
}