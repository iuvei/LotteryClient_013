package com.xazc.components.load
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.events.TimerEvent;
	import flash.geom.Matrix;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.utils.Timer;
	
	import mx.events.FlexEvent;
	import mx.preloaders.IPreloaderDisplay;
	
	public class CustomPreloader extends Sprite implements IPreloaderDisplay
	{
		
//		private var dpbImageControloader; 
		private var _barSprite:Sprite; 
		private var progressText:TextField; 
		private var loadTxt:TextField;
		private var ProgressBarSpritIsAdded:Boolean = false; 
		
		public function CustomPreloader()
		{
			super();
		}
		
		public function get backgroundAlpha():Number
		{
			return 0;
		}
		
		public function set backgroundAlpha(value:Number):void
		{
		}
		
		public function get backgroundColor():uint
		{
			return 0;
		}
		
		public function set backgroundColor(value:uint):void
		{
		}
		
		public function get backgroundImage():Object
		{
			return null;
		}
		
		public function set backgroundImage(value:Object):void
		{
		}
		
		public function get backgroundSize():String
		{
			return null;
		}
		
		public function set backgroundSize(value:String):void
		{
		}
		/**
		 *添加监听事件 
		 **/
		public function set preloader(preloader:Sprite):void
		{
			//Listen for 正在下载 
			preloader.addEventListener(ProgressEvent.PROGRESS, handleProgress); 
			//Listen for 下载完成 
			preloader.addEventListener(Event.COMPLETE, handleComplete); 
			//Listen for 正在初始化 
			preloader.addEventListener(FlexEvent.INIT_PROGRESS, handleInitProgress); 
			//Listen for 初始化完成 
			preloader.addEventListener(FlexEvent.INIT_COMPLETE, handleInitComplete); 
		}
		
		public function get stageHeight():Number
		{
			return 375;
		}
		
		public function set stageHeight(value:Number):void
		{
		}
		
		public function get stageWidth():Number
		{
			return 500;
		}
		
		public function set stageWidth(value:Number):void
		{
		}
		
		public function initialize():void
		{
		}
		/**
		 *创建进度条 
		 **/
		private function addProgressBarSprit():void{ 
			//绘制背景渐变 
//			var matrix:Matrix=new Matrix(); 
//			matrix.createGradientBox(this.stage.stageWidth,this.stage.stageHeight,Math.PI/2); 
//			var colors:Array=[0x058BBD,0xFFFFFF]; 
//			var alphas:Array=[1,1]; 
//			var ratios:Array=[0,255]; 
			/*this.graphics.lineStyle(); 
			this.graphics.beginGradientFill(GradientType.LINEAR,colors,alphas,ratios,matrix);        
			this.graphics.drawRect(0,0,this.stage.stageWidth,this.stage.stageHeight); 
			this.graphics.endFill(); */
			
			//------------------------------------------------- 
			
			//绘制进度条背景 
			var _Sprite2:Sprite = new Sprite(); 
			_Sprite2.x = this.stage.stageWidth/2 - 150; 
			_Sprite2.y = this.stage.stageHeight/2 - 8; 
			addChild(_Sprite2); 
			_Sprite2.graphics.lineStyle(1,0x978086); 
			_Sprite2.graphics.drawRoundRect(0,0,350,18,30,30);   
			_Sprite2.graphics.endFill(); 
			
			//------------------------------------------------- 
			
			//加载进度条Sprite 
			_barSprite = new Sprite(); 
			addChild(_barSprite); 
			_barSprite.x = this.stage.stageWidth/2 - 150; 
			_barSprite.y = this.stage.stageHeight/2 - 8; 
			
			//------------------------------------------------- 
			var format:TextFormat = new TextFormat();
			format.font = "Verdana";
//			format.color = 0xBE235C;
			format.color = 0x1b2f3d;
			format.size = 20;
			
			var loadFormat:TextFormat=new TextFormat();
			loadFormat.font = "Verdana";
			loadFormat.color = 0xBE235C;
			loadFormat.size = 15;
			
			//文本“加载进度”
			progressText = new TextField(); 
			progressText.autoSize = TextFieldAutoSize.LEFT;
			addChild(progressText);
			
			
			progressText.x =_barSprite.x+350+5; 
			progressText.y = _barSprite.y-10; 
			progressText.defaultTextFormat=format;
			
			//文本"加载中..."
//			loadTxt=new TextField();
//			loadTxt.autoSize = TextFieldAutoSize.LEFT;
//			
//			loadTxt.text="加载中...";
//			addChild(loadTxt);
//			loadTxt.textColor = 0xBE235C; 
//			
//			loadTxt.x = progressText.x+100 ; 
//			loadTxt.y = progressText.y+20; 
//			loadTxt.defaultTextFormat=loadFormat;
			
		} 
		
		/**
		 * 刷新进度条
		 **/ 
		private function drawProgressBar(bytesLoaded:Number, bytesTotal:Number):void 
		{   
			if (_barSprite != null && progressText != null){ 
				var g:Graphics = _barSprite.graphics; 
				g.clear(); 
				g.beginFill(0x1b2f3d,1);
				g.drawRoundRect(0,0,350*(bytesLoaded/bytesTotal),18,15,15);
				g.endFill();                                  
			} 
		} 
		
		/**
		 * 1初始化进度条
		 * 2正在下载的进度
		 **/ 
		private function handleProgress(event:ProgressEvent):void { 
			//第一次处理时绘制进度条Sprit 
			if (ProgressBarSpritIsAdded == false){ 
				ProgressBarSpritIsAdded = true; 
				addProgressBarSprit();
			} 
			
			/*if (progressText != null){*/ 
			var rect:Number=Math.floor((event.bytesLoaded/event.bytesTotal)*100);
			progressText.text = rect+"%"; 
			trace(rect);
			
			/*if(rect>=50)
			{
			trace(rect);
			event.target.removeEventListener(ProgressEvent.PROGRESS, handleProgress); 
			//Listen for 下载完成 
			event.target.removeEventListener(Event.COMPLETE, handleComplete); 
			//Listen for 正在初始化 
			event.target.removeEventListener(FlexEvent.INIT_PROGRESS, handleInitProgress); 
			//Listen for 初始化完成 
			event.target.removeEventListener(FlexEvent.INIT_COMPLETE, handleInitComplete); 
			} */
			
			drawProgressBar(event.bytesLoaded, event.bytesTotal);
		} 
		
		private function handleComplete(event:Event):void { 
			if (progressText != null){ 
//				loadTxt.visible=false;
				progressText.text = "加载完成"; 
//				progressText.text = "100%"; 
			} 
			drawProgressBar(1,1);        
		} 
		
		private function handleInitProgress(event:Event):void { 
			if (progressText != null){ 
				progressText.text = "正在初始化..."; 
			} 
			drawProgressBar(1,1); 
		} 
		
		private function handleInitComplete(event:Event):void { 
			if (progressText != null){ 
//				progressText.text = "初始化完成";
				progressText.text = "100%"; 
			} 
			drawProgressBar(1,1);         
			
			//0.03秒后抛出完成事件 
			var timer:Timer = new Timer(1000,1); 
			timer.addEventListener(TimerEvent.TIMER, dispatchComplete); 
			timer.start();      
		} 
		
		private function dispatchComplete(event:TimerEvent):void { 
			dispatchEvent(new Event(Event.COMPLETE)); 
		} 
	}
}