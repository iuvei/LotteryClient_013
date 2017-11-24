package com.xazc.event
{
	import flash.events.Event;
	
	
	/**
	 * 个人中心自定义事件
	 */
	public class CenterEvent extends Event
	{
		/**主页面的菜单项图标还原事件类型**/
		public static const MAIN_MENU_ITEM_REDUCTION_EVENT:String="mainMenuItemReductionEvent";
		
		/** 选择主菜单派发事件类型  **/
		public static const NAV_MENU_ITEM_SELECTED_EVENT:String="navMenuItemSelectedEvent";
		
		/** 选择二级菜单派发事件类型 **/
		public static const SECOND_MENU_ITEM_SELECTED_EVENT:String="secondMenuItemSelectedEvent";
		
		/** 选择三级菜单派发事件类型 **/
		public static const THREE_MENU_ITEM_SELECTED_EVENT:String="threeMenuItemSelectedEvent";
		
		/** 默认选择显示右边详情信息模块事件类型 **/
		public static const SELECTED_RIGHT_DETAIL_MESSAGES_EVENT:String="selectedRightDetailMessagesEvent";
		
		/** 二级菜单联动**/
		public static const SECOND_MENU_ITEM_LINKAGE_EVENT:String="secondMenuItemLinkageEvent";
		
		
		
		private var _body:Object;
		public function CenterEvent(type:String, body:Object = null,bubbles:Boolean=false, cancelable:Boolean=false)
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