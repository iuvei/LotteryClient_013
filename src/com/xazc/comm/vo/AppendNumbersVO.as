package com.xazc.comm.vo
{
	import mx.collections.ArrayCollection;

	public class AppendNumbersVO
	{
		
		/**
		 *	中奖后是否追号 
		 */
		private var _isAppended:Boolean;
		
		/**
		 * 详情 
		 */		
		private var _betsContext:ArrayCollection;

		/**
		 *	中奖后是否追号 
		 */
		public function get isAppended():Boolean
		{
			return _isAppended;
		}

		/**
		 * @private
		 */
		public function set isAppended(value:Boolean):void
		{
			_isAppended = value;
		}

		public function get betsContext():ArrayCollection
		{
			return _betsContext;
		}

		public function set betsContext(value:ArrayCollection):void
		{
			_betsContext = value;
		}


	}
}