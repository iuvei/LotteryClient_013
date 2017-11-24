package com.xazc.comm.vo
{
	public class AppendNumbersItemVO
	{
		private var _issue:String = "000000";
		
		/**
		 * 投注倍数 
		 */
		private var _changeDouble:String;
		
		private var _betsMoney:Number = 0;
		
		private var _selected:Boolean;
		
		private var _rowNum:int;
		
		private var _countMoney:Number = 0;
		
		public function get changeDouble():String
		{
			return _changeDouble;
		}
		
		/**
		 * 投注倍数 
		 * @param value
		 * 
		 */		
		public function set changeDouble(value:String):void
		{
			_changeDouble = value;
		}


		/**
		 *	期号 
		 */
		public function get issue():String
		{
			return _issue;
		}

		/**
		 * @private
		 */
		public function set issue(value:String):void
		{
			_issue = value;
		}

		/**
		 * 投入金额
		 */
		public function get betsMoney():Number
		{
			return _betsMoney;
		}

		/**
		 * @private
		 */
		public function set betsMoney(value:Number):void
		{
			_betsMoney = value;
		}

		public function get selected():Boolean
		{
			return _selected;
		}

		public function set selected(value:Boolean):void
		{
			_selected = value;
		}

		public function get rowNum():int
		{
			return _rowNum;
		}

		public function set rowNum(value:int):void
		{
			_rowNum = value;
		}

		public function get countMoney():Number
		{
			return _countMoney;
		}

		public function set countMoney(value:Number):void
		{
			_countMoney = value;
		}


	}
}