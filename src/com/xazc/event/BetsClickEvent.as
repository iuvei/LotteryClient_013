package com.xazc.event
{
	import flash.events.Event;
	
	public class BetsClickEvent extends CustomEvent
	{
		
		public static const BETS_NUMBER_CLICK:String = "betsNumberClick";
		
		public static const CONFIRM_BTN_ENABLE:String = "tipLabelEnable";
		
		public static const CLEAN_ALL_SELECTED_NUMBERS:String = "cleanAllSelectedNumbers";
		
		public static const NUMBER_STICK:String="number_Stick";
		
		public static const NUMBER_STICK_ERROR:String="number_Stick_error";
		
		public function BetsClickEvent(type:String, body:Object=null, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, body, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new BetEvent(type, body, bubbles, cancelable);
		}

	}
}