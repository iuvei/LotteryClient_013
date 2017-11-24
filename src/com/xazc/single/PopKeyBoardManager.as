package com.xazc.single
{
	
	import com.xazc.view.KeyBoard.KeyBoardView;
	
	import mx.controls.TextInput;
	
	public class PopKeyBoardManager extends KeyBoardView
	{
		private static var pop:PopKeyBoardManager =  new PopKeyBoardManager;
		public function PopKeyBoardManager()
		{
			super();
		}
		public static function show (input:TextInput):void
		{
			pop.input = input;
			pop.initView();
		}
		public static function clear():void{
			pop.clearAll();
		}
	}
}