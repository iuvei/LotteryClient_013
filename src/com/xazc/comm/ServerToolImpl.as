package com.xazc.comm
{
	import com.xazc.service.SendMessageService;
	import com.xazc.single.CurrentBusinessInfo;
	
	import mx.controls.Alert;

	/**
	 * 方法调用实现类 
	 * @author qu
	 * 
	 */	
	public class ServerToolImpl implements ServerTool
	{
		private var sendMessageService:SendMessageService;
		/*用户类*/
		
		/**
		 * 用户登录 (加密)
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后调用方法
		 * @param faultHandler		调用失败后调用的方法
		 * 
		 */		
		public function userLogin(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****登录*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "AddUserLoginLog";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		
		}
		/**
		 * 获取用户金额  (加密)
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后调用方法
		 * @param faultHandler		调用失败后调用的方法
		 * 
		 */		
		public function getUserAllMoney(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取用户金额 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetUserAllMoney";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 获取我当前的可售彩种 
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getMyLotteryInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取我当前的可售彩种*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetMyLotteryInfo";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		
		}
		
		
		/**
		 * 从钱包中心获取所有平台的余额
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getAllPlatformMoney(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****从钱包中心获取所有平台的余额*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetAllPlatformMoney";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		
		}
		/**
		 * 修改用户信息(加密)
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function modifyUserInfo(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			trace("*****修改用户信息*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "ModifyUserInfo";
			params.MerchantType = 3;
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 修改用户登录密码(加密)
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function modifyPwdInfo(params:Object, resultHandler:Function=null, faultHandler:Function=null):void{
			trace("*****修改用户密码*******");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "ModifyPwdInfo";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		public function SetUserRebate(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****修改下级用户返点*******");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "SetUserRebate";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 检查用户资金密码信息是否完整 
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function checkPayOutPwdAndTransferPwd(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****检查用户资金密码信息是否完整*******");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "CheckPayOutPwdAndTransferPwd";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		/**
		 * 修改用户资金资金密码  (加密)
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function modifyPayPass(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****修改用户资金资金密码*******");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "ModifyPayPass";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 修改用户银行卡资料 (加密)
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function bindBankInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****修改用户银行资料*******");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "BindBankInfo";
			params.MerchantType = 3;
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 用户充值(加密)
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function addRechargeInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****用户充值*******");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "AddRechargeInfo";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 用户提款（加密）
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function addDrawingsInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****用户提款*******");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "AddDrawingsInfo";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 新版投注
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function userBet20160412(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****投注*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "UserBet20160412";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
			
		}
		/**
		 * 投注
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function userBet(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****投注*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "UserBet";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		
		}
		/**
		 * 新版极速秒秒彩投注
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function userBet_mmc(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****极速秒秒彩投注*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "UserBet_mmc";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
			
		}
		/**
		 * 极限秒秒彩投注
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function userBet1(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****极限秒秒彩投注*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "UserBet1";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
			
		}
		/**
		 * 获取用户可转款平台列表
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getTransProjects(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取用户可转款平台列表*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetTransProjects";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		/**
		 * 用户平台之间转账
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function userTransfer(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****用户平台之间转账*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "UserTransfer";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		/**
		 * 用户转账记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getTransferRecord(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****用户转账记录*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetTransferRecord";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		/**
		 * 用户存款(充值)记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getUserRechargeInfoByPage(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****用户提款记录*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetUserRechargeInfoByPage";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		/**
		 * 用户提款(提款)记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getUserDrawingsInfoByPage(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			trace("*****用户存款记录*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetUserDrawingsInfoByPage";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		/**
		 * 获取彩种信息(加密)
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getLotteryInfo(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			trace("*****获取彩种信息*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetLotteryInfo";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
			
		}
		/**
		 * 对应要检测的用户名
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function checkUserName(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			trace("*****获取彩种信息*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "CheckUserName";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			
		}
		
		/**
		 * 获取用户详细信息(加密)
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getUserDetail(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			trace("*****获取用户详细信息*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetUserDetail";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
			
		}
		/**
		 * 获取当前服务器商户的所有信息(加密)
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getAllMerchantInfo(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			trace("*****获取当前服务器商户的所有信息*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetAllMerchantInfo";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
			
		}
		
		/**
		 * 获取投注记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getBetDataList(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			trace("*****获取投注记录*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetBetDataListFlex";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		
		/**
		 * 中奖提示接口
		 * @param params
		 * @param resultHandler
		 * @param faultHandler
		 * 
		 */	
		public function winBetMoney(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "WinBetMoney";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		
		/**
		 * 获中奖结果
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getWindList(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			trace("*****获取投注记录*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetWindList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 追号记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getChaseList(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetChaseList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		
		/**
		 * 获取投注订单详情
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getBetOrderDetil(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetBetOrderDetil";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			
		}
		
		/**
		 * 获取用户资金明细
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getUserFundList(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			trace("*****获取用户资金明细*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetUserFundList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/*彩票类*/
		/**
		 * 获取当前可售期号信息
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getCurrLotteryIssue(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			trace("*****获取当前可售期号信息*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetCurrLotteryIssue";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			
		}
		/**
		 * 获取当前彩种下的所有玩法
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getLotteryAward(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			trace("*****获取当前彩种下的所有玩法*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetLotteryAward";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			
		}
		/**
		 * 追号期数获取(目前做了100期的数字验证)
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getLotteryIssueByNum(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetLotteryIssueByNum";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		
		/**
		 * 注册（加密）
		 */
		public function userRegist(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "UserRegist";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
			
		}
		
		
		
		/**
		 * 获取组织结构
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getAgentTreeInfo(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetAgentTreeInfo";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			
		}
		/**
		 * 设置用户返点
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function setUserLotteryRebate(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "SetUserLotteryRebate";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			
		}
		
		
		/**
		 * 下级代理会员查询
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getmyteam(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "Getmyteam";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		
		/**
		 * 查询下级代理登录状态
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getUsersLoginState(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetUsersLoginState";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 团队列表
		 * {"InterfaceName":"Getmyreport"} 团队列表 我自己的单独统计
		 * {"InterfaceName":"Getmyreport","UserId":1583} 指定人
		 * {"InterfaceName":"Gettotalreport","BeginTime":"2014-01-01","EndTime":"2014-06-01"} 团队报表合计
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getmyreport(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "Getmyreport";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 团队报表合计
		 * {"InterfaceName":"Getmyreport"} 团队列表 我自己的单独统计
		 * {"InterfaceName":"Getmyreport","UserId":1583} 指定人
		 * {"InterfaceName":"Gettotalreport","BeginTime":"2014-01-01","EndTime":"2014-06-01"} 团队报表合计
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function gettotalreport(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "Gettotalreport";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		
		
		
		/**
		 * 获取下级列表
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getMyChildList(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetMyChildList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		/**
		 * 获取新闻
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getNewsInfo(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetNewsInfo";
			sendMessageService.sendRequestMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 商户配额
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getAgentsRenbate(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetAgentsRenbate";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 返点配置信息
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getSingleAgentsRenbate(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetSingleAgentsRenbate";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		
		/**
		 * 撤单
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function cancelOrder(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "CancelOrder";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		/**
		 * 给下级用户充值
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function addTransferInfo_LotteryTransfer(params:Object, resultHandler:Function = null, faultHandler:Function = null):void{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "AddTransferInfo_LotteryTransfer";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		/**
		 * 设置用户推广连接返点
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function setUserPromotionRebate(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "SetUserPromotionRebate";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			
		}
		/**
		 * 查询代理分红
		 * ThisUserName必传
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function dividendRecord(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "DividendRecord";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 是否显示注册领取礼金
		 * ThisUserName必传
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function distributeActivityAward(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "DistributeActivityAward";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 领取礼金
		 * ThisUserName必传
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function isShowRegistBtn(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "IsShowRegistBtn";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 直属下级分红记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function lowerDividendRecord(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "LowerDividendRecord";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
						
		}
		/**
		 * 自身分红记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function selfDividendRecord(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "SelfDividendRecord";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		
		/**
		 * 会员转代理
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function modifyCategoryInfo(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "ModifyCategoryInfo";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 系统公告详情接口
		 * MerchantNews_ID   公告单号
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getNewsDetail(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetNewsDetail";
			sendMessageService.sendRequestMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 系统公告列表接口
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getNewsInfoFlex(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetNewsInfoFlex";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 获取详情接口（投注内容）html页面ajax调用
		 * 入参：（期号）IssueNumber，（采种）LotteryCode，（流水号）OrderID，（用户ID）UserID
		 *	出参：(投注内容)BetContent,
		 *	OrderState(-3 表示没有该数据,-10 表示非方案粘贴，1表示成功)
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getBetContentDetil(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetBetContentDetil";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			
		}
		
		public function getTotalChildReport(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetTotalChildReport";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 查询活动数量及完成情况
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function judgeActivityComplete(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "JudgeActivityComplete";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
		}
		/**
		 * 获取团队人员数目
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		public function getConsumtionReport(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetConsumtionReport";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		
		/**
		 * 获取牛牛登录参数(牛牛)
		 */
		public function userNNLogin(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "UserNNLogin";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		
		/**
		 * 彩票转账牛牛，和牛牛转账彩票(牛牛)
		 */
		public function userTransefer(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "UserTransefer";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 查询转账记录(牛牛)
		 */
		public function getUerTranseferList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetUerTranseferList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		
		/**
		 * 棋牌余额(牛牛)
		 */
		public function getUserMoney(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetUserMoney";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		
		
		
		
		
		
		/*期号服务器类*/
		/**
		 * 获取上期开奖结果 
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler		调用错误是执行的方法
		 * 
		 */		
		public function getLastResult(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取上期开奖结果*****");
			sendMessageService = new SendMessageService();
			
			params.InterfaceName = "GetHisNumber";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/GetHisNumber.ashx",params,resultHandler,faultHandler);
			
			
			//sendMessageService.send(CurrentBusinessInfo.issueUrl,params,resultHandler,faultHandler);
		}
		public function getLastResult2(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取上期开奖结果*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetHisNumber";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/GetHisNumber.ashx",params,resultHandler,faultHandler);
			
			//sendMessageService.send(CurrentBusinessInfo.issueUrl2,params,resultHandler,faultHandler);
		}
		/**
		 * 获取开奖结果结果列表 
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler		调用错误是执行的方法
		 * 
		 */	
		public function getResultsList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取开奖结果结果列表*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetHisNumber";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/GetHisNumber.ashx",params,resultHandler,faultHandler);
			
			//sendMessageService.send(CurrentBusinessInfo.issueUrl,params,resultHandler,faultHandler);
		}
		public function getResultsList2(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取开奖结果结果列表*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetHisNumber";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/GetHisNumber.ashx",params,resultHandler,faultHandler);
			
			//sendMessageService.send(CurrentBusinessInfo.issueUrl2,params,resultHandler,faultHandler);
		}
		
		public function getLotteryDrawPageFlx(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取极限秒秒彩开奖结果列表*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetLotteryDrawPageFlx";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			//sendMessageService.send(CurrentBusinessInfo.issueUrl2,params,resultHandler,faultHandler);
		}
		
		/**
		 * 棋牌 个人报表接口
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler		调用错误是执行的方法
		 * 
		 */
		public function getNNMyReport(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****棋牌 个人报表*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetNNMyReport";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			//sendMessageService.send(CurrentBusinessInfo.issueUrl2,params,resultHandler,faultHandler);
		}
		/**
		 * 棋牌  团队报表接口
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler		调用错误是执行的方法
		 * 
		 */
		public function getNNReport(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****棋牌 团队报表*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetNNReport";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			//sendMessageService.send(CurrentBusinessInfo.issueUrl2,params,resultHandler,faultHandler);
		}
		/**
		 * 棋牌  团队报表  查询下级  接口
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler		调用错误是执行的方法
		 * 
		 */
		public function getNNChildReport(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****棋牌 团队报表  查询下级 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetNNChildReport";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
			
			//sendMessageService.send(CurrentBusinessInfo.issueUrl2,params,resultHandler,faultHandler);
		}
		
		
		/**
		 * 活动  请求抽奖数据  接口
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler		调用错误是执行的方法
		 * 
		 */
		public function getUserBetMoneyAndTurnCount(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****活动  请求抽奖数据 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetUserBetMoneyAndTurnCount";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		
		/**
		 * 活动  请求抽奖数据(转盘的位置)  接口
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler		调用错误是执行的方法
		 * 
		 */
		public function userTurn(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****活动  请求抽奖数据(转盘的位置)  接口 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "UserTurn";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		
		/**
		 *  查询签到信息
		 * */
		public function getActivitySign(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****查询签到信息*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetActivitySign";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		/**
		 *  签到
		 * */
		public function activitySign(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****签到*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "ActivitySign";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler);
		}
		/**
		 * 代理管理——会员中心——发放日工资
		 */
		public function dailyWagesTransefer(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "DailyWagesTransefer";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 账户明细——日工资——查询
		 */
		public function dailyWagesGetUserFundList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "DailyWagesGetUserFundList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,0);
		}
		
		/**
		 * 代理管理——下级代理——是否显示日工资设置
		 */
		public function showDailyWagesSetting(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "ShowDailyWagesSetting";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,0);
		}
		
		/**
		 * 代理管理——下级代理——添加日工资设置
		 */
		public function addDailyWagesSetting(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "AddDailyWagesSetting";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		
		/**
		 * 获取银行卡列表
		 */
		public function getBankCardList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetBankCardList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 设置默认银行卡
		 */
		public function setDefaultBankCard(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "SetDefaultBankCard";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 新增银行卡
		 */
		public function addBankCard(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "AddBankCard";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 团队总览
		 */
		public function getTeamOverView(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetTeamOverView";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 团队总览_今日统计
		 */
		public function getTeamOverViewDayList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetTeamOverViewDayList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 团队总览_历史数据
		 */
		public function getTeamOverViewChartList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetTeamOverViewChartList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		/**
		 * 获取收件箱列表
		 */
		public function getStationEmailReceiveBox(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetStationEmailReceiveBox";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 获取收件箱详情
		 */
		public function getStationEmailReceiveBoxDetails(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetStationEmailReceiveBoxDetails";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 获取发件箱列表
		 */
		public function getStationEmailSendBox(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetStationEmailSendBox";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 获取发件箱详情
		 */
		public function getStationEmailSendBoxDetails(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetStationEmailSendBoxDetails";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 获取下级用户名
		 */
		public function getSubUserName(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetSubUserName";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 发送站内信
		 */
		public function sendStationEmail(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "SendStationEmail";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 * 获取所有收件人
		 */
		public function getAllReceivePerson(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetAllReceivePerson";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  修改头像接口 
		 * */
		public function setHeadPortrait(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****修改用户头像*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "SetHeadPortrait";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		/**
		 *  获取日工资数据列表
		 * */
		public function getDayWagesList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取日工资数据列表*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetDayWagesList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  获取我的日工资数据
		 * */
		public function getDayWagesDetails(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取我的日工资数据*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetDayWagesDetails";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  获取我的和下级日工资契约
		 * */
		public function getMyDownDayWages(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取我的和下级日工资契约*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetMyDownDayWages";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  修改日工资契约
		 * */
		public function modifyDayWages(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****修改日工资契约*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "ModifyDayWages";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  获取日工资记录 
		 * */
		public function getDayWagesRecordsList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取日工资记录 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetDayWagesRecordsList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		/**
		 *  获取  分红契约  数据列表
		 * */
		public function getContractList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取 分红契约 数据列表*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetContract";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *    获取我的    分红   数据
		 * */
		public function getContractDetails(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取我的    分红   数据*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetContractDetails";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *    获取  分红记录  数据列表
		 * */
		public function getDividentsList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("***** 获取  分红记录  数据列表 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetDividentsList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  获取我的和下级  分红契约
		 * */
		public function getMyDownContract(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****获取我的和下级  分红契约*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetMyDownContract";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  添加契约
		 * */
		public function addContract(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****添加契约*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "AddContract";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  修改契约
		 * */
		public function modifyContractContent(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****修改契约*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "ModifyContractContent";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		/**
		 *  前台     分红结算预览
		 * */
		public function getDividendSettlement(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****前台分红结算预览*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetDividendSettlement";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  前台   直属下级一键结算
		 * */
		public function oneKeySettlement(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****前台  直属下级一键结算*****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "OneKeySettlement";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  前台   分红结算
		 * */
		public function bonusSettlement(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****前台  分红结算  *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "BonusSettlement";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  同意契约
		 * */
		public function agreeContract(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****前台  同意契约  *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "AgreeContract";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		
		/**
		 *  前台  获取密保以及提示语状态 
		 * */
		public function getSecurityPromptingState(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****前台获取密保以及提示语状态 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetSecurityPromptingState";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  前台  获取密保问题数据
		 * */
		public function getSecurityQuestion(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****前台获取密保问题数据 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetSecurityQuestion";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  前台  添加用户密保问题数据
		 * */
		public function userSecurityQuestionAdd(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****前台添加用户密保问题数据 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "UserSecurityQuestionAdd";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  前后台    修改用户密保问题数据
		 * */
		public function userSecurityQuestionEdit(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****前后台  修改用户密保问题数据 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "UserSecurityQuestionEdit";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  前台  随机获取密保答案问题
		 * */
		public function getRandomSecurity(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****前台添加用户密保问题数据 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetRandomSecurity";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  前台  修改时初始化密保数据
		 * */
		public function initSecurityData(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****前台 修改时初始化密保数据 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "InitSecurityData";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  前台  随机问题密保验证
		 * */
		public function retrievePassword(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****前台 随机问题密保验证 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "RetrievePassword";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		/**
		 *  （日工资3--前后台）前后台获取用户日工资3数据列表
		 * */
		public function getDayWagesThreeList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****（日工资3--前后台）初始化后台修改数据以及前后台修改前和修改后数据 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetDayWagesThreeList";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  （日工资3--前后台）初始化后台修改数据以及前后台修改前和修改后数据
		 * */
		public function initDayWagesThreeData(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****（日工资3--前后台）初始化后台修改数据以及前后台修改前和修改后数据 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "InitDayWagesThreeData";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  （日工资3--前后台）后台添加日工资以及前台添加日工资
		 * */
		public function addDayWagesThree(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****（日工资3--前后台）初始化后台修改数据以及前后台修改前和修改后数据 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "AddDayWagesThree";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  （日工资3--前后台）前后台修改日工资
		 * */
		public function modifyDayWagesThree(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****（日工资3--前后台）初始化后台修改数据以及前后台修改前和修改后数据 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "ModifyDayWagesThree";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  （日工资3--前台）前台获取自己和下级的日工资3契约
		 * */
		public function getMyDownDayWagesThree(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****（日工资3--前后台）初始化后台修改数据以及前后台修改前和修改后数据 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetMyDownDayWagesThree";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  日工资3--前后台）前后台获取日工资3数据记录
		 * */
		public function getDayWagesRecord(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****日工资3--前后台）前后台获取日工资3数据记录 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetDayWagesRecord";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		/**
		 *  登录 新街口
		 * */
		public function addUserLoginLog(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****   登录 新街口 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "AddUserLoginLogNew";
			params.PlatformCode = "2";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  用户信息 新街口
		 * */
		public function getUserDetailNew(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****   登录 新街口 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetUserDetailNew";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  获取支付方式
		 * */
		public function getUserGroupPayment(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****   获取支付方式 新街口 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetUserGroupPaymentNew";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		/**
		 *  获取未读站内信数
		 * */
		public function getStationEmailCount(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****   获取未读站内信数 *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "GetStationEmailCount";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  重置登录密码；
		 * */
		public function resetPassword(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****   重置登录密码   *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "ResetPassword";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		/**
		 *  my18支付 提交审核接口；
		 * */
		public function AddOrderReminder(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			trace("*****    my18支付 提交审核接口    *****");
			sendMessageService = new SendMessageService();
			params.InterfaceName = "AddOrderReminder";
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl_net+"/manager/service.ashx",params,resultHandler,faultHandler,1);
		}
		
		public function ServerToolImpl()
		{
			super();
		}
	}
}