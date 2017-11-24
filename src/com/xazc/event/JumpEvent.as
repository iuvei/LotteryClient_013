package com.xazc.event
{
	import flash.events.Event;

	/**
	 * 在AIR客户端版本中用来取代"navigateToURL"函数做页面跳转的事件 
	 */
	public class JumpEvent extends CustomEvent
	{
		
		/**
		 * 跳转到登录界面 
		 */
		public static const JUMP_TO_LOGIN:String = "jumpToLoginPanel";
		
		/**
		 * 跳转到个人中心界面 
		 * 
		 */
		public static const JUMP_TO_PSESONAL_CENTER:String = "jumpToPersonalCenterPanel";
		
		/**
		 * 跳转到主页面 
		 */
		public static const JUMP_TO_MAIN:String = "jumpToMainPanel";
		
		/**
		 * 跳转公告页面 
		 */
		public static const JUMP_TO_ANNOUNCEMENT:String = "jumpToAnnouncementPanel";
		
		/**
		 * 跳转到帮助中心
		 */
		public static const JUMP_TO_HELP_CENTER:String = "jumpToHelpCenterPanel";
		
		/**
		 * 跳转到优惠活动
		 */
		public static const JUMP_TO_PROMOTIONS:String = "jumpToPromotionsPanel";
		
		
		public function JumpEvent(type:String, body:Object=null, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, body, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new JumpEvent(type, body, bubbles, cancelable);
		}
	}
}