package com.xazc.single
{
	import flash.net.SharedObject;

	public class Cookie
	{
		/**
		 * 创建Cookie
		 */
		private var so:SharedObject;
		public function Cookie()
		{
			so = SharedObject.getLocal("userData","/");
		}
		/**
		 * 写入 Cookie
		 */
		public function writeCookie(key:String,value:String):void
		{
			key = "key_" + key;
			if(so.data.message == undefined){
				var obj:Object = new Object();
				obj[key] = value;
				so.data.message = obj;
			}else{
				so.data.message[key] = value;
			}
			so.flush();
		}
		/**
		 * 读取Cookie
		 */
		public function getCookie(key:String):Object
		{
			return contains(key)?so.data.message["key_"+key]:null;
		}
		/**
		 * 判断Cookie是否存在
		 */
		public function contains(key:String):Boolean{
			key = "key_" + key;　　　　　
			return so.data.message != undefined && so.data.message[key] != undefined;　　　　
		}
		/**
		 * 清除Cookie
		 */
		public function cleanCookie():void
		{
			so.clear();
		}
	}   
}