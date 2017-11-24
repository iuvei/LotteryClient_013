package com.xazc.event
{
	import flash.events.Event;

	/**
	 * 国内彩种投注区域（信息显示区域）事件 
	 * @author Administrator
	 * 
	 */
	public class BetEvent extends CustomEvent
	{
		/**
		 * 控制下注区"确认选号"按钮可用 
		 */
		public static const ENSURE_ENABLED:String = "ensureEnabeld";
		
		/**
		 * 控制下注区"确认选号"按钮不可用 
		 */
		public static const ENSURE_DISABLED:String = "ensureDisabled";
		
		/**
		 * 控制下注区"立即投注"按钮可用 
		 */
		public static const ENSURE_BETINGNOW_ENABLED:String = "ensureBettingNowDabeld";
		
		/**
		 * 控制下注区"立即投注"按钮不可用 
		 */
		public static const ENSURE_BETINGNOW_DISABLED:String = "ensureBettingNowDisabled";
		
		/**
		 * 点击随机选号时抛出事件
		 */
		public static const RANDOM_CLICK:String = "randomClick";
		
		/**
		 * 点击（改变）圆角分模式抛出事件
		 */
		public static const YUANJIAOMOSHI_CLICK:String = "yuanjiaomoshiClick";
		
		/**
		 * 点击确认选号抛出事件
		 */		
		public static const QUERENXUANHAO_CLICK:String = "querenxuanhaoClick";
		
		/**
		 * 刷新用户余额抛出事件
		 */		
		public static const REFRESH_BLANACE:String = "refreshBalance";
		
		
		/**
		 * 用户尝试下注
		 */
		public static const TRY_BET:String = "tryBet";
		
		public static const BETS_ITEM_INFO_CHANGE:String = "betsItemInfoChange"
		
		public static const CONFIRM_BTN_CLICK:String ="confirmBtnClick";
		
		public static const BTES_ZHUINUM_SUBMIT:String = "betsZhuiNumSubmit";
		
		public function BetEvent(type:String, body:Object=null, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, body, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new BetEvent(type, body, bubbles, cancelable);
		}
	}
}