package com.xazc.single
{
	import com.xazc.comm.vo.UserDetailVo;
	
	import flash.net.SharedObject;
	
	public class CommonMethodClass
	{
		public function CommonMethodClass()
		{
		}
		
		public static var userShare:SharedObject = null;  
		
		public static var cookie:Cookie = new Cookie();
		//登录 
//		{"UserDetail":
//			{"DrawMinMoney":0.0,"DrawMaxMoney":0.0,"DrawCount":0,"DrawBeginTime":null,"DrawEndTime":null,"DrawTotalMoney":"0",
//				"GroupRemark":null,"WeChatID":null,"HeadPortrait":null,"SystemState":64,"UserRealName":"becky","UserName":"becky",
//				"NickName":"aaaassdd21","IDCardNumber":"","EMail":"","QQ":"","Mobile":"","City":"","Province":"",
//				"StopAddChild":false,"BankCode":"cbhb","CardNumber":"8678768768768678768","IsAgent":true,"GeneralRebate":null,
//				"HRebate":1956,"QRebate":1956,"XRebate":2,"MyRebate":1956,"QARebate":"1956","CanOffset":0,"DividendLV":2,
//				"Status":0,"MyRebateDifference":0,"UserLevel":1,"ChildCount":null,"TeamMemberCount":0,"MyUserID":16594,
//				"RRebate":null,"UserGroupCode":"G0321NTT5"},
//			"LoginState":true,"CommonFlag":10,"Activity":0,"IsShowTran":0,
//			"UserName":"becky","UserType":0,"IsContract":false,"IsDayWages":true,"LockState":""}
		
		//用户信息
//		{"WeChatID":"","HeadPortrait":"8","DrawBeginTime":"23","DrawEndTime":"24","DrawCount":0,"DrawMaxMoney":50000.0000,
//			"DrawMinMoney":100.0000,"DrawTotalMoney":"500000","UserRealName":"becky","UserName":"becky","EMail":"","QQ":"",
//			"Mobile":"","City":"","Province":"","StopAddChild":false,"BankCode":"boc","CardNumber":"4654657567676876867",
//			"Category":0,"IsAgent":true,"GeneralRebate":0,"HRebate":1956,"QRebate":1956,"XRebate":2,"MyRebate":1956,"QARebate":"1956",
//			"CanOffset":0,"DividendLV":2,"Status":0,"MyRebateDifference":0,"UserLevel":1,"ChildCount":13,"CommonFlag":10,
//			"TeamMemberCount":17,"MyUserID":16594,"RRebate":-1,"IsShowTran":1,"NickName":"aaaassdd21","UserType":0,"SystemState":64}


		/**
		 * 登录信息；用户详细信息；
		 * */
		public static function commom_login(obj:Object):void
		{
			var userVo:UserDetailVo = new UserDetailVo();
			if(obj.hasOwnProperty("UserName")){
				userVo.UserName=obj.UserName;
			}
			if(obj.hasOwnProperty("MyUserID")){
				userVo.MyUserID=obj.MyUserID;
			}
			if(obj.hasOwnProperty("IDCardNumber")){
				userVo.IDCardNumber=obj.IDCardNumber;
			}
			if(obj.hasOwnProperty("UserRealName")){
				if(""!=obj.UserRealName){
					userVo.UserRealName=obj.UserRealName;
				}
			}
			if(obj.hasOwnProperty("BankCode")){
				userVo.BankCode=obj.BankCode;
			}
			if(obj.hasOwnProperty("CardNumber")){
				userVo.CardNumber=obj.CardNumber;
			}
			if(obj.hasOwnProperty("EMail")){
				userVo.EMail=obj.EMail;
			}
			if(obj.hasOwnProperty("Mobile")){
				userVo.Mobile=obj.Mobile;
			}
			if(obj.hasOwnProperty("Province")){
				userVo.Province=obj.Province;
			}
			if(obj.hasOwnProperty("City")){
				userVo.City=obj.City;
			}
			if(obj.hasOwnProperty("QQ")){
				userVo.QQ=obj.QQ;
			}
			if(obj.hasOwnProperty("IsAgent")){
				userVo.IsAgent=obj.IsAgent;
			}
			if(obj.hasOwnProperty("StopAddChild")){
				userVo.StopAddChild=obj.StopAddChild;
			}
			CurrentUserInfo.qRebate=obj.QRebate;
			if(obj.hasOwnProperty("QARebate")){
				CurrentUserInfo.qARebate=obj.QARebate;
			}
			if(obj.hasOwnProperty("HeadPortrait")){
				CurrentUserInfo.headPortrait=obj.HeadPortrait;
			}
			//是否允许代理投注
			if(obj.hasOwnProperty("CommonFlag")){
				if((Number(obj.CommonFlag)&8)==8){//是否允许代理投注
					CurrentBusinessInfo.isAollowProxyBet = true;
				}else{
					CurrentBusinessInfo.isAollowProxyBet = false;
				}
				if((Number(obj.CommonFlag)&1)==1){//优惠活动
					CurrentBusinessInfo.isCommonOpen = true;
				}else{
					CurrentBusinessInfo.isCommonOpen = false;
				}
				if((Number(obj.CommonFlag)&2)==2){//公告
					CurrentBusinessInfo.isNoticeOpen = true;
				}else{
					CurrentBusinessInfo.isNoticeOpen = false;
				}
			}
			if(obj.hasOwnProperty("Status")){
				if(obj.Status == 1 ){
					CurrentUserInfo.userStatus = true;
				}else{
					CurrentUserInfo.userStatus = true;
				}
			}
			if(obj.hasOwnProperty("CanOffset")){
				if(obj.CanOffset == 1 ){
					CurrentUserInfo.canOffset = true;
				}else{
					CurrentUserInfo.canOffset = false;
				}
			}
			
			if(obj.hasOwnProperty("DividendLV")){
				//1 一级代理       2 一二级代理 
				if(obj.DividendLV == 1 ){
					CurrentUserInfo.isFirstDividend = true;
				}else{
					CurrentUserInfo.isFirstDividend = false;
				}
			}
			//确定是否可以给下级转账
			if(obj.hasOwnProperty("IsShowTran")){
				if(1==obj.IsShowTran){
					CurrentUserInfo.isShowTran = true;
				}else{
					CurrentUserInfo.isShowTran = false;
				}
			}
			//确定是否  测试账号
			if(obj.hasOwnProperty("UserType")){
				if(obj.UserType==1){
					CurrentUserInfo.isTestName = true;
				}else{
					CurrentUserInfo.isTestName = false;
				}
			}
			
			//确定是否存在  分红契约
			if(obj.hasOwnProperty("IsContract")){
				CurrentUserInfo.IsContract = obj.IsContract;
				cookie.writeCookie("IsContract",obj.IsContract); 
			}
			//确定是否存在  日工资契约
			if(obj.hasOwnProperty("IsDayWages")){
				CurrentUserInfo.IsDayWages = obj.IsDayWages;
				cookie.writeCookie("IsDayWages",obj.IsDayWages); 
			}
			
			//特殊处理分红，日工资问题
			var IsContractCookie:String = cookie.getCookie("IsContract").toString();
			if(IsContractCookie){
				if("true"==IsContractCookie){
					CurrentUserInfo.IsContract = true;
				}else{
					CurrentUserInfo.IsContract = false;
				}
			}else{
				CurrentUserInfo.IsContract = false;
			}
			var IsDayWagesCookie:String = cookie.getCookie("IsDayWages").toString();
			if(IsDayWagesCookie){
				if("true"==IsDayWagesCookie){
					CurrentUserInfo.IsDayWages = true;
				}else{
					CurrentUserInfo.IsDayWages = false;
				}
			}else{
				CurrentUserInfo.IsDayWages = false;
			}
			
			CurrentUserInfo.hRebate=obj.HRebate;
			CurrentUserInfo.xRebate=obj.XRebate;
			CurrentUserInfo.myRebate=obj.MyRebate;
			CurrentUserInfo.myRebateDifference=obj.MyRebateDifference;
			CurrentUserInfo.generalRebate=obj.GeneralRebate;
			CurrentUserInfo.myUserID=obj.MyUserID;	
			CurrentUserInfo.rRebate=obj.RRebate;
			
			CurrentUserInfo.DrawMinMoney = obj.DrawMinMoney;
			CurrentUserInfo.DrawMaxMoney = obj.DrawMaxMoney;
			CurrentUserInfo.DrawBeginTime = obj.DrawBeginTime;
			CurrentUserInfo.DrawEndTime = obj.DrawEndTime;
			
			PersonCenterInfo.userInfoDetail = userVo;
			PersonCenterInfo.userInfoDetail.UserLevel = obj.UserLevel;
			
			PersonCenterInfo.userInfoDetail.ChildCount = obj.ChildCount;
			PersonCenterInfo.userInfoDetail.TeamMemberCount = obj.TeamMemberCount;
			
			if(obj.hasOwnProperty("WEBUrl")){
				CurrentBusinessInfo.registerUrl = obj.WEBUrl;
			}else{
				CurrentBusinessInfo.registerUrl = cookie.getCookie("web_url").toString();
			}
		}
		
		/**
		 * 支付信息；
		 * */
		public static function commom_payInfo(obj:Object):void{
			//所有的支付方式；
			if(obj.payInType && obj.payInType !=null){
				CurrentBusinessInfo.allPayTypeArray = new Array();
				CurrentBusinessInfo.allPayTypeArray = obj.payInType as Array;
			}
			
			//存储各个支付方式对应的可充值范围
			if(obj.payInType && obj.payInType !=null){
				var tempArr:Array = obj.payInType as Array;
				var rechargeObj:Object = new Object();
				for(var i:int = 0;i<tempArr.length;i++){
					rechargeObj['recharge_'+tempArr[i].id+"_minRecMoney"] = tempArr[i].minRecMoney; 
					rechargeObj['recharge_'+tempArr[i].id+"_maxRecMoney"] = tempArr[i].maxRecMoney;
				} 
				CurrentBusinessInfo.rechargeLimiteObj = rechargeObj;
			}
			//支付方式对应名称及顺序
			if(obj.allRecType){
				var tempArr:Array = obj.allRecType as Array;
				var rechargeNamesObj:Object = new Object();
				for(var i:int = 0;i<tempArr.length;i++){
					rechargeNamesObj['online_'+tempArr[i].Pay+"_name"] = tempArr[i].PayName;
					rechargeNamesObj['online_'+tempArr[i].Pay+"_sortnum"] = tempArr[i].SortNum;
				}
				CurrentBusinessInfo.onlineTypeNamesObj = rechargeNamesObj;
			}
			//支付方式显示编号与充值编号对应
			var rechargeTypesObj:Object = new Object();
			rechargeTypesObj["online_type_5"] = 16;//易宝支付
			rechargeTypesObj["online_type_8"] = 17;//汇潮支付
			rechargeTypesObj["online_type_9"] = 19;//环讯支付
			rechargeTypesObj["online_type_14"] = 20;//宝付支付
			rechargeTypesObj["online_type_15"] = 21;//国付宝支付
			rechargeTypesObj["online_type_16"] = 22;//卡卡连
			rechargeTypesObj["online_type_18"] = 23;//摩宝（微信）
			rechargeTypesObj["online_type_19"] = 24;//通汇
			rechargeTypesObj["online_type_20"] = 25;//中联信通
			rechargeTypesObj["online_type_21"] = 26;//OPEN2PAY
			rechargeTypesObj["online_type_22"] = 27;//新贝
			rechargeTypesObj["online_type_23"] = 28;//新汇潮
			rechargeTypesObj["online_type_24"] = 29;//快捷通
			rechargeTypesObj["online_type_25"] = 30;//智付
			rechargeTypesObj["online_type_26"] = 31;//国付宝手机支付
			rechargeTypesObj["online_type_6"] = 151;//MY18工行
			rechargeTypesObj["online_type_12"] = 152;//MY18招行
			rechargeTypesObj["online_type_11"] = 153;//MY18建行
			rechargeTypesObj["online_type_10"] = 154;//MY18支付宝
			rechargeTypesObj["online_type_13"] = 155;//MY18财付通
			rechargeTypesObj["online_type_17"] = 156;//my18民生
			rechargeTypesObj["online_type_157"] = 157;//my18支付宝2
			
			rechargeTypesObj["online_type_32"] = 32;//新生
			rechargeTypesObj["online_type_33"] = 33;//新生微信
			rechargeTypesObj["online_type_34"] = 34;//汇付宝
			rechargeTypesObj["online_type_35"] = 35;//汇付宝微信
			rechargeTypesObj["online_type_36"] = 36;//通汇微信
			rechargeTypesObj["online_type_37"] = 37;//锐付
			rechargeTypesObj["online_type_38"] = 38;//锐付微信
			rechargeTypesObj["online_type_39"] = 39;//智付微信
			
			rechargeTypesObj["online_type_40"] = 40;//首信易
			rechargeTypesObj["online_type_41"] = 41;//首信易微信
			
			rechargeTypesObj["online_type_42"] = 42;//乐付微信
			rechargeTypesObj["online_type_43"] = 43;//乐付网银
			rechargeTypesObj["online_type_44"] = 44;//乐付快捷
			rechargeTypesObj["online_type_45"] = 45;//乐付支付宝
			
			rechargeTypesObj["online_type_47"] = 47;//汇博支付 (QQPay)
			rechargeTypesObj["online_type_50"] = 50;//汇博支付 50
			
			rechargeTypesObj["online_type_51"] = 51;//华仁支付 (网银)51
			rechargeTypesObj["online_type_52"] = 52;//华仁支付(快捷支付) 52
			rechargeTypesObj["online_type_48"] = 48;//华仁支付(微信支付) 48 
			
			rechargeTypesObj["online_type_53"] = 53;//多得宝  网银  53
			rechargeTypesObj["online_type_54"] = 54;//多得宝  微信  54
			rechargeTypesObj["online_type_55"] = 55;//多得宝  支付宝  55
			
			rechargeTypesObj["online_type_56"] = 56;//新摩宝网银  56
			rechargeTypesObj["online_type_57"] = 57;// 华仁支付 支付宝   57 
			
			rechargeTypesObj["online_type_58"] = 58;//华仁支付(QQPay)
			rechargeTypesObj["online_type_59"] = 59;//乐付QQ支付
			
			rechargeTypesObj["online_type_60"] = 60;//智付(QQ支付)
			rechargeTypesObj["online_type_61"] = 61;//汇博微信扫码 
			rechargeTypesObj["online_type_62"] = 62;//速汇宝网银支付
			rechargeTypesObj["online_type_63"] = 63;//速汇宝微信
			rechargeTypesObj["online_type_64"] = 64;//速汇宝QQ
			
			rechargeTypesObj["online_type_65"] = 65;//扫码付微信支付
			rechargeTypesObj["online_type_66"] = 66;//扫码付QQ支付
			rechargeTypesObj["online_type_67"] = 67;//扫码付支付宝支付
			rechargeTypesObj["online_type_68"] = 68;//扫码付网银支付

			
			CurrentBusinessInfo.onlineTypeCorrespondObj = rechargeTypesObj;
			
		}
		
		
		/**
		 * 公用字段
		 * */
		private static function commom_property(obj:Object,obj_1:Object,obj_2:Object):void
		{
			if(obj_1 != null)
			{
				CurrentUserInfo.userCPBalance = obj_1.LotteryMoney;
				CurrentUserInfo.userCPLockedBalance = obj_1.FreezeMoney;
			}
		}
		
	}
}