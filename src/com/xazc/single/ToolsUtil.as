package com.xazc.single
{
	import flash.display.Graphics;
	import flash.geom.Point;
	
	import mx.core.UIComponent;

	public class ToolsUtil
	{
		public function ToolsUtil()
		{
		}
		/**画虚线**/
		public static  function freeDraw(fP:Point,tP:Point,g:Graphics):void { 
			g.lineStyle(1,0x000000,1);
			if(!fP){ 
				fP=new Point(0,0); 
			} 
			if(!tP){ 
				tP=new Point(0,0); 
			} 
			
			var solidLength:Number=1; 
			var brokenLength:Number=1; 
			
			var lineAngle:Number; 
			lineAngle = Math.atan2(tP.y - fP.y,tP.x - fP.x); 
			
			var xSolidLength:Number=solidLength*Math.cos(lineAngle); 
			var ySolidLength:Number=solidLength*Math.sin(lineAngle); 
			
			var xBrokenLength:Number=brokenLength*Math.cos(lineAngle); 
			var yBrokenLength:Number=brokenLength*Math.sin(lineAngle); 
			
			var forwardFlag:Boolean=true; 
			if(tP.x<fP.x){ 
				forwardFlag=false; 
			} 
			var tempP:Point=new Point(fP.x,fP.y); 
			var tempToP:Point=new Point(tP.x,tP.y); 
			
			//当线是实线的时候
			var lineType:String="solid"; 
			
			while(checkIn(tempP.x,tP.x,forwardFlag)){ 
				g.beginFill(0x555555); 
				if(lineType=="solid"){ 
					tempToP.x=tempP.x+xSolidLength; 
					tempToP.y=tempP.y+ySolidLength; 
					g.moveTo(tempP.x, tempP.y); 
					g.lineTo(tempToP.x, tempToP.y);  
					lineType="space"; 
				}else{ 
					tempToP.x=tempP.x+xBrokenLength; 
					tempToP.y=tempP.y+yBrokenLength;                     
					g.moveTo(tempToP.x, tempToP.y); 
					lineType="solid";    
				} 
				tempP.x=tempToP.x; 
				tempP.y=tempToP.y; 
				g.endFill(); 
			} 
		} 
		
		
		private static function checkIn(x:Number,toX:Number,forwardFlag:Boolean):Boolean{ 
			var result:Boolean=true; 
			if(forwardFlag){//向前 
				if(x<toX){ 
				}else{ 
					result=false; 
				} 
			}else{ 
				if(x>toX){ 
				}else{ 
					result=false; 
				} 
			} 
			return result; 
		} 
	}
}