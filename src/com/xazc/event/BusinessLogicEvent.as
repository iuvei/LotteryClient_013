package com.xazc.event
{
	import flash.events.Event;
	
	/**
	 *业务逻辑事件类型 
	 **/
	public class BusinessLogicEvent extends Event
	{
		
		/** 刷新购彩余额、锁定余额 **/
		public  static const REFRENSH_USER_ALL_MONEY_EVENT:String="refrenshUserAllMoneyEvent"; 
		
		/** 获取用户本身团队数据 **/
		public  static const GET_CONSUMTION_REPORT_TEAM:String="getConsumtionReportTeam";
		
		/** 获取邮件未读数目 **/
		public  static const GET_MESSAGEUNREAD_NUM:String="getMessageUnread";
		
		
		private var _body:Object;
		public function BusinessLogicEvent(type:String, body:Object = null,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_body=body;
		}
		/**
		 * 获取事件携带的用户参数
		 */
		public function get body():Object
		{
			return _body;
		}
		
		/**
		 * 克隆函数 
		 */
		override public function clone():Event
		{
			return new CenterEvent(type, body, bubbles, cancelable);
		}
		
		/**
		 * 字符串化函数 
		 */
		override public function toString():String
		{
			return formatToString("CenterEvent", "type", "body", "bubbles", "cancelable");
		}
	}
}