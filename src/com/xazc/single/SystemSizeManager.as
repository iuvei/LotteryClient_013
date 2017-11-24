package com.xazc.single
{
	import flash.events.EventDispatcher;
	
	public class SystemSizeManager extends EventDispatcher
	{
		private static var _instance:SystemSizeManager;
		
		public function SystemSizeManager()
		{
			super();
		}
		
		public static function getInstance():SystemSizeManager
		{
			return _instance ||= new SystemSizeManager();
		}
	}
}