package com.xazc.single
{
	import flash.events.EventDispatcher;
	
	public class Kl8_tips 
	{
		public function Kl8_tips()
		{
		}
		
		public static function result(obj:Array):String
		{
			var temp:String;//和值=802大小单双=(大，单)    盘面=(上，偶)  五行（金木水火土）
			
			var sum:Number = 0;//和值
			var daxiao_1:String;//大小单双：大、小
			var daxiao_2:String;//大小单双：单、双
			
			var panmian_1:String;//盘面：上、下
			var panmian_2:String;//盘面：奇、偶
			
			var wuxing:String;//五行
			
			//和值
			for(var i:int=0; i<obj.length-1; i++)
			{
				sum += int(obj[i]);
			}
			//大小单双：大、小
			if(sum <= 809)daxiao_1 = "小";
			else if(sum == 810)daxiao_1 = "和";
			else if(sum >= 811)daxiao_1 = "大";
			//大小单双：单、双
			if(sum % 2 == 0 )daxiao_2 = "双";
			else if(sum % 2 == 1 )daxiao_2 = "单";
			
			//盘面：上、下
			var shang_total:int = 0;
			var xia_total:int = 0;
			for(var i:int=0; i<obj.length-1; i++)
			{
				if(int(obj[i]) <= 40)
				{
					shang_total ++;
				}else{
					xia_total ++;
				}
			}
			if(shang_total > xia_total)panmian_1 = "上";
			else if(shang_total < xia_total)panmian_1 = "下";
			else if(shang_total == xia_total)panmian_1 = "中";
			//盘面：奇、偶
			var ji_total:int = 0;
			var ou_total:int = 0;
			for(var i:int=0; i<obj.length-1; i++)
			{
				if(int(obj[i])%2 == 0)
				{
					ou_total ++;
				}else{
					ji_total ++;
				}
			}
			if(ji_total > ou_total)panmian_2 = "奇";
			if(ji_total < ou_total)panmian_2 = "偶";
			if(ji_total == ou_total)panmian_2 = "和";
			
			//五行
			if(210 <= sum && sum <= 695)wuxing = "金";
			else if(696 <= sum && sum <= 763)wuxing = "木";
			else if(764 <= sum && sum <= 855)wuxing = "水";
			else if(856 <= sum && sum <= 923)wuxing = "火";
			else if(924 <= sum && sum <= 1410)wuxing = "土";
			
			
			temp = "和值=" + sum + "(" + daxiao_1 + "，" + daxiao_2 + ")" + "   盘面=(" + panmian_1  + "，" + panmian_2 +")" + "   五行=(" + wuxing +")";
			return temp;
		}
		
		
	}
}