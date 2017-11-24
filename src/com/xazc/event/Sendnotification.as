package com.xazc.event
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class Sendnotification extends EventDispatcher
	{
		public function Sendnotification(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		private static var _instance:Sendnotification;
		public static function get instance():Sendnotification{
			if(!_instance){
				_instance=new Sendnotification();
			}
			return _instance;
		}
	}
}