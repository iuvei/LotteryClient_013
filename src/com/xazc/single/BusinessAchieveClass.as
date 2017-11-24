package com.xazc.single
{
	import com.xazc.comm.ServerToolImpl;
	import com.xazc.event.BusinessLogicEvent;
	import com.xazc.event.JumpEvent;
	import com.xazc.event.Sendnotification;
	
	import mx.rpc.events.ResultEvent;

	public class BusinessAchieveClass
	{
		
		private var service:ServerToolImpl;
		private var service2:ServerToolImpl;
		private var service3:ServerToolImpl;
		public function BusinessAchieveClass()
		{
			init();
			
			if(service==null){
				service=new ServerToolImpl();
			}
			if(service2==null){
				service2=new ServerToolImpl();
			}
			if(service3==null){
				service3=new ServerToolImpl();
			}
		}
		/**
		 *初始化信息 
		 **/
		private function init():void{
			//添加刷新账户余额、锁定余额监听事件
			Sendnotification.instance.addEventListener(BusinessLogicEvent.REFRENSH_USER_ALL_MONEY_EVENT,refrenshUserAllMoneyHandler);
			//查询账户金额回调函数 
			Sendnotification.instance.addEventListener(BusinessLogicEvent.GET_CONSUMTION_REPORT_TEAM,getConsumtionReportHandler);
			//查询邮件未读数目
			Sendnotification.instance.addEventListener(BusinessLogicEvent.GET_MESSAGEUNREAD_NUM,getMessageUnreadHandler);
			
		}
		/**
		 *刷新账户金额 
		 **/
		private function refrenshUserAllMoneyHandler(event:BusinessLogicEvent):void{
			//验证当前是否有已经登录用户
			if(CurrentUserInfo.userName!=""){
				service.getUserAllMoney(new Object(),getUserAllMoneyResult);
				getEmailCount();//查询邮件未读数目
			}else{
				trace("无可在线用户");
			}
		}
		/**
		 *查询账户金额回调函数 
		 **/
		private function getUserAllMoneyResult(event:ResultEvent):void{
			var arr:Object=Util.getInstance().resuleFormatToJSon(event.result.toString(),1);
			if(arr.state){
				CurrentUserInfo.userCPBalance = arr.lotteryMoney;
				CurrentUserInfo.userCPLockedBalance = arr.freezeMoney;
			}else{
				if(arr.SystemState==-1){
					//session失效
					Sendnotification.instance.dispatchEvent(new JumpEvent(JumpEvent.JUMP_TO_LOGIN));
					return;
				}else if(arr.SystemState==-2){
					//单点登录
					Sendnotification.instance.dispatchEvent(new JumpEvent(JumpEvent.JUMP_TO_LOGIN));
					return;
				}
				trace("获取余额失败");
			}
		}
		/**
		 * 查询团队人数接口
		 */
		private function getConsumtionReportHandler(event:BusinessLogicEvent):void{
			//验证当前是否有已经登录用户
			if(CurrentUserInfo.userName!=""){
				service2.getConsumtionReport(new Object(),getConsumtionReportResult);
			}else{
				trace("没有用户登录信息");
			}
		}
		private function getConsumtionReportResult(event:ResultEvent):void{
			var arr:Object=Util.getInstance().resuleFormatToJSon(event.result.toString());
			trace(event.result.toString());
			if(arr.SystemState==64){
				PersonCenterInfo.userInfoDetail.TeamMemberCount = arr.TeamMemberNum;
			}else{
				PersonCenterInfo.userInfoDetail.TeamMemberCount = 0;
			}
		}
		
		/**
		 *   查询邮件未读数目
		 **/
		private function getMessageUnreadHandler(event:BusinessLogicEvent):void{
			getEmailCount();
		}
		private function getEmailCount():void
		{
			//验证当前是否有已经登录用户
			if(CurrentUserInfo.userName!=""){
				var object:Object = new Object();
				object.UserID = CurrentUserInfo.myUserID;
				service3.getStationEmailCount(object,getStationEmailCountResult);
			}
		}
		
		private function getStationEmailCountResult(event:ResultEvent):void{
			var arr:Object=Util.getInstance().resuleFormatToJSon(event.result.toString(),1);
			if(arr.SystemState){
				if(arr.Count =="" || !arr.Count ){
					CurrentUserInfo.EmailUnreadNum = "0" ;
				}else{
					CurrentUserInfo.EmailUnreadNum = arr.Count ;
				}
			}
		}
		
	}
}