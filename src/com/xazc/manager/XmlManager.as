package com.xazc.manager
{
	import com.xazc.event.Sendnotification;
	import com.xazc.event.SystemEvent;
	import com.xazc.single.Util;
	
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class XmlManager
	{
		private static var _instance:XmlManager;
		
		private var _modules:XML;
		
		private var _xmlList:XML;
		
		public function XmlManager()
		{
		}
		
		public static function getInstance():XmlManager
		{
			return _instance ||= new XmlManager();
		}
		
		public function init():void
		{
			var loader:URLLoader = new URLLoader();
			var request:URLRequest = new URLRequest(Util.getInstance().modulesXmlUrl);
			loader.addEventListener(Event.COMPLETE, completeFun);
			loader.load(request);
		}
		
		private function completeFun(e:Event):void
		{
			_xmlList = XMLList((e.target).data)[0];
			_modules = XMLList(_xmlList.modules)[0];
		}
		
		public function getModuleUrl(id:int):String
		{
			var url:String = "";
			if(_modules != null)
			{
				for each(var module:XML in _modules.module)
				{
					if(parseInt(module.@id.toString()) == id)
					{
						url = module.@url;
						break;
					}
				}
			}
			return url;
		}
		
		public function getResultNumberType(id:int):int
		{
			var resultNumberType:int;
			if(_modules != null)
			{
				for each(var module:XML in _modules.module)
				{
					if(parseInt(module.@id.toString()) == id)
					{
						resultNumberType = parseInt(module.@resultNumberType.toString());
						break;
					}
				}
			}
			return resultNumberType;
		}
		
		public function getModuleName(id:int):String
		{
			var name:String = "";
			if(_modules != null)
			{
				for each(var module:XML in _modules.module)
				{
					if(parseInt(module.@id.toString()) == id)
					{
						name = module.@name;
						break;
					}
				}
			}
			return name;
		}
	}
}