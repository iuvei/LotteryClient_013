package com.xazc.pop.center.personal.HaedIco
{
	public class HeadSoucre
	{
		private static var Arr_HeadSoucre:Array = ["",
			"css/skin1/images/headIco/show_1.png",
			"css/skin1/images/headIco/show_2.png",
			"css/skin1/images/headIco/show_3.png",
			"css/skin1/images/headIco/show_4.png",
			"css/skin1/images/headIco/show_5.png",
			"css/skin1/images/headIco/show_6.png",
			"css/skin1/images/headIco/show_7.png",
			"css/skin1/images/headIco/show_8.png",
			"css/skin1/images/headIco/show_9.png",
			"css/skin1/images/headIco/show_10.png",
			"css/skin1/images/headIco/show_11.png",
			"css/skin1/images/headIco/show_12.png",
			"css/skin1/images/headIco/show_13.png",
			"css/skin1/images/headIco/show_14.png",
			"css/skin1/images/headIco/show_15.png",
			"css/skin1/images/headIco/show_16.png",
			"css/skin1/images/headIco/show_17.png",
			"css/skin1/images/headIco/show_18.png",
			"css/skin1/images/headIco/show_19.png",
			"css/skin1/images/headIco/show_20.png",
			"css/skin1/images/headIco/show_21.png",
		];
		public function HeadSoucre()
		{
			
		}
		public static function get_HeadSoucre(id:String):String
		{
			var str:String = new String();
			str = Arr_HeadSoucre[id];
			return str;
		}
	}
}