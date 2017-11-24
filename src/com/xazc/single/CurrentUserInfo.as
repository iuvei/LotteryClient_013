package com.xazc.single
{
	/**
	 * 当前用户信息 
	 * @author qu
	 * 
	 */	
	public class CurrentUserInfo
	{
		public function CurrentUserInfo()
		{
			
		}
		
		//判断用户是否已经登录
		public static var isLogined:Boolean = true;
		
		//用户币种
		[Bindable]
		public static var moneyType:String = "元";
		
		[Bindable]
		public static var isOpenVoice:Boolean = true;
		
		//登录用户名
		[Bindable]
		public static var userName:String = "";
		
		//登录密码
		[Bindable]
		public static var userPassWord:String = "";
		
		//彩票平台购彩余额
		[Bindable]
		public static var userCPBalance:String = "0.0000" ;
		
		//彩票平台购彩锁定余额
		[Bindable]
		public static var userCPLockedBalance:String = "0.0000";
		
		//用户头像
		[Bindable]
		public static var headPortrait:String = "";
		
		
		public static var userRebate:int = 1956;
		
		//会员返点
		public static var qRebate:int;
		//代理返点
		public static var qARebate:int;
		
		//前台允许返点
		public static var hRebate:int;
		//返点差值
		public static var xRebate:int;
		//我的返点
		public static var myRebate:int;
		//返点差
		public static var myRebateDifference:int;
		//
		public static var generalRebate:int;
		
		public static var myUserID:String;
		
		public static var rRebate:String;
		//音效大小
		public static var musicVolume:int = 1;
		//用户是否是优质用户
		[Bindable]
		public static var userStatus:Boolean = false;
		//是否平账
		[Bindable]
		public static var canOffset:Boolean = false;
		//是否是一级分红(false代表二级分红，true代表一级分红)
		[Bindable]
		public static var isFirstDividend:Boolean = false;
		
		//当前用户是否可以该下级转账
		[Bindable]
		public static var isShowTran:Boolean = false;
		
		//当前用户是否是测试用户
		[Bindable]
		public static var isTestName:Boolean = true;
		
		//提现最小金额
		[Bindable]
		public static var DrawMinMoney:Number;
		//提现最大金额
		[Bindable]
		public static var DrawMaxMoney:Number;
		//提现开始时间
		[Bindable]
		public static var DrawBeginTime:int;
		//提现结束时间
		[Bindable]
		public static var DrawEndTime:int;
		
		public static var indexSelectedItemIndex:int = 0;
		
		
		//分红契约
		[Bindable]
		public static var IsContract:Boolean = false;
		//日工资契约
		[Bindable]
		public static var IsDayWages:Boolean = false;
		
		//邮件未读数目
		[Bindable]
		public static var EmailUnreadNum:String="0";
	}
}