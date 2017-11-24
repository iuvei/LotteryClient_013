package com.xazc.single
{
	/**
	 * 当前彩种信息 
	 * @author qu
	 * 
	 */	
	public class CurrentLotteryInfo
	{
		public function CurrentLotteryInfo()
		{
		}
		/*当前点击彩种是否加载完成*/
		public static var lotteryState:Boolean = true;
		//彩种ID
		[Bindable]
		public static var lotteryId:String = "0";
		
		public static var lotteryModIds:Array=[];
		//当前玩法id
		[Bindable]
		public static var gameId:String = "0";
		
		//选择的倍数
		public static var beishu:int = 1;
		
		//单注彩票金额
		public static var perPrice:Number = 2 ;
		
		//当前期号
		[Bindable]
		public static var currentIssue:String = "";
		//当前期号
		[Bindable]
		public static var currentIssueTime:String = "";
		
		//最大倍数
		[Bindable]
		public static var maxMultiple:int = 9999;
		
		//最大追号数
		public static var maxAdditionalIssueNums:int = 99;
		
		//选择的元角模式
		public static var yuanjiaoMoshi:int = 1;
		
		// 是否开启返点模式
		public static var isFanDianModelOpen:Boolean = false;
		
		// 是否开启分模式
		public static var isOpenFenModel:Boolean = false;
		
		// 是否开启角模式
		public static var isOpenJiaoModel:Boolean = false;
		/**当前彩种是否可以投注*/
		[Bindable]
		public static var isBetNow:Boolean = false;
		
		/**是否显示里模式按钮*/
		[Bindable]
		public static var isShowLiModelBtn:Boolean = false;
		
		//玩法奖金数组
		public static var playInfo:Array ;
		/**妙妙彩票是否正在进行投注*/
		[Bindable]
		public static var mmcBetNowBoolean:Boolean = false;
		/**妙妙彩票是否需要显示提示拉杆*/
		[Bindable]
		public static var mmcNeedShowBoolean:Boolean = true;
		/**
		 * 根据玩法id获取奖金额 
		 * @param gameid 玩法id
		 * @return   该玩法对应奖金
		 * 
		 */		
		public static function getPlayInfoByGameId(gameid:String):Number
		{
			var tempMoney:Number = 0;
			var tempObj:Object;
			if(playInfo){
				for(var i:int = 0;i<playInfo.length;i++){
					tempObj = playInfo[i];
					if(tempObj.PlayCode==gameid){
						tempMoney = tempObj.AwardLevelInfo;
					}
				}
			}
			
			return tempMoney;
		}
		
		
	}
}