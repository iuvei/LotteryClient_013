package com.xazc.event
{
	import flash.events.Event;
	
	public class SystemEvent extends CustomEvent
	{
		private var _body:Object;
		
		public static const SCREEN_SIZE_CHANGE:String = "screenSizeChange";
		
		public static const SELECTED_LOTTERY_CHANGE:String = "selectedLotteryChange";
		
		public static const BACK_2_MAIN_SCREEN:String = "back2MainScreen";
		
		public static const ALERT_SUCSSES_BTN_CLICK:String = "alertOkBtnClick";
		
		public static const TZ_LOCK_FULL_SCREEN:String="tzLockFullScreen";
		
		public static const SHOW_LOTTERY_MAIN_MENU:String = "showMainMenu";
		
		public static const CLOSE_POP_WINDOWBASE:String = "closePopWindowbase";
		
		public function SystemEvent(type:String, body:Object=null, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, body, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new BetEvent(type, body, bubbles, cancelable);
		}
	}
}