package com.xazc.single
{
	import flash.events.EventDispatcher;

	public class UsersLotteryDate extends EventDispatcher
	{
		private static var _instance:UsersLotteryDate;
		public function UsersLotteryDate()
		{
			super();
		}
		public static function getInstance():UsersLotteryDate
		{
			return _instance ||= new UsersLotteryDate();
		}
		/**
		 * 彩种信息 
		 */		
		public var lotteryList:Array = new Array();
		
		/**
		 * 用户的自身返点差
		 */		
		public var userRebate:Number;
		/**
		 * 用户的投注默认值返点差
		 */		
		public var defaultBetRebate:Number;
		/**
		 * 返点差区间
		 */		
		public var rebateSpan:Number;
		
		/**
		 * 获取用户可售彩种列表 
		 * @return 可售彩种id数组
		 * 
		 */		
		public function getCanSaleLotterys():Array
		{
			var tempArr:Array = new Array();
			for(var i:int = 0;i<lotteryList.length;i++){
				if(lotteryList[i].SaleState==1){
					tempArr.push(lotteryList[i].lotteryCode);
				}
			}
			return tempArr;
		}
		
		/**
		 * 彩种奖级信息 
		 */		
		public var lotteryDateList:Array = new Array();
		
		/**
		 * 获取用户可售彩种列表 
		 * @return 可售彩种id数组
		 * 
		 */		
		public function getThisLotteryDateByLoteryId(lotteryId:String):Object
		{
			var obj:Object;
			for(var i:int = 0;i<lotteryDateList.length;i++){
				if(lotteryId==lotteryDateList[i].lotteryId){
					obj = lotteryDateList[i].lottertyDate;
				}
			}
			return obj;
		}
		
	}
}