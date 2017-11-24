package com.xazc.comm.vo
{
	public class Cathectic
	{
		/**
		 * 投注信息实体类
		 * @author Administrator
		 * 
		 */	
		public function Cathectic()
		{
		}
		
		/**
		 * 彩种ID
		 */		
		private var _lottery_type:String;
		
		/**
		 * 玩法ID 
		 */		
		private var _game_id:String;
		
		/**
		 * 投注内容
		 */		
		private var _tzcontent:String;
		
		/**
		 * 投注金额
		 */
		private var _pmoney:int;
		
		/**
		 * 投注期号
		 */
		private var _tpissue:String;
		
		/**
		 * 投注倍数
		 */
		private var _tzbshu:int;
		
		/**
		 * 投注圆角分模式
		 */
		private var _tzbmoshi:int;
		
		/**
		 * 投注注数
		 */
		
		private var _tzzs:Number;
		/**
		 * 返奖率
		 */
		private var _awreturn:int;
		/**
		 * 
		 */
		private var _buybettype:int;
		/**
		 * 购彩模式
		 */
		private var _buybetstyle:int;
		/**
		 * 中将后是否停止追号
		 */
		//
		private var _winstopstyle:int;
		/**
		 * 是否是托胆玩法
		 */
		private var _sntuo:int;
		/**
		 * 数据来源
		 */
		private var _source:int = 1;
		
		public function get lottery_type():String
		{
			return _lottery_type;
		}
		
		public function set lottery_type(value:String):void
		{
			_lottery_type = value;
		}
		
		public function get game_id():String
		{
			return _game_id;
		}
		
		public function set game_id(value:String):void
		{
			_game_id = value;
		}
		
		public function get tzcontent():String
		{
			return _tzcontent;
		}
		
		public function set tzcontent(value:String):void
		{
			_tzcontent = value;
		}
		
		public function get pmoney():int
		{
			return _pmoney;
		}
		
		public function set pmoney(value:int):void
		{
			_pmoney = value;
		}
		
		public function get tpissue():String
		{
			return _tpissue;
		}
		
		public function set tpissue(value:String):void
		{
			_tpissue = value;
		}
		
		public function get tzbshu():int
		{
			return _tzbshu;
		}
		
		public function set tzbshu(value:int):void
		{
			_tzbshu = value;
		}
		
		
		
		public function get awreturn():int
		{
			return _awreturn;
		}
		
		public function set awreturn(value:int):void
		{
			_awreturn = value;
		}
		
		public function get buybettype():int
		{
			return _buybettype;
		}
		
		public function set buybettype(value:int):void
		{
			_buybettype = value;
		}
		
		public function get buybetstyle():int
		{
			return _buybetstyle;
		}
		
		public function set buybetstyle(value:int):void
		{
			_buybetstyle = value;
		}
		
		public function get winstopstyle():int
		{
			return _winstopstyle;
		}
		
		public function set winstopstyle(value:int):void
		{
			_winstopstyle = value;
		}
		
		public function get sntuo():int
		{
			return _sntuo;
		}
		
		public function set sntuo(value:int):void
		{
			_sntuo = value;
		}
		
		public function get source():int
		{
			return _source;
		}
		
		public function get tzzs():Number
		{
			return _tzzs;
		}
		public function set tzzs(value:Number):void
		{
			_tzzs = value;
		}
		public function get tzbmoshi():int
		{
			return _tzbmoshi;
		}
		public function set tzbmoshi(value:int):void
		{
			_tzbmoshi = value;
		}
		
		
	}
}