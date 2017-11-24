package com.xazc.single
{
	import mx.controls.DateField;
	import mx.core.mx_internal;
	
	
	use namespace mx_internal
	
	public class MyDateField extends DateField
	{
		public function MyDateField()
		{
			super();
			dayNames=['日','一','二','三','四','五','六']
			monthNames=['一','二','三','四','五','六','七','八','九','十','十一','十二'];
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			downArrowButton.visible = true;
		}
		override protected function createChildren():void
		{
			super.createChildren();
			downArrowButton.styleName = "timerListIconStele";
//			dropdown.styleName = "mydropDownStyleName";
			
		}
	}
}