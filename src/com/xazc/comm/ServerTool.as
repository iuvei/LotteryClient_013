package com.xazc.comm
{
	/**
	 * Http请求服务端交互方法接口 
	 * @author qu
	 * 
	 */	
	public interface ServerTool
	{
		/*用户类*/
		/**
		 * 用户登录 
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */		
		function userLogin(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取用户金额 
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getUserAllMoney(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取我当前的可售彩种 
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getMyLotteryInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 从钱包中心获取所有平台的余额
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getAllPlatformMoney(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 投注
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function userBet(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 极限秒秒彩投注
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		/**
		 * 新版投注
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function userBet20160412(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		function userBet1(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 新版极速秒秒彩投注
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function userBet_mmc(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 获取用户可转款平台列表
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getTransProjects(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 修改下级用户返点
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function SetUserRebate(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 获取彩种信息
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getLotteryInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 获取用户详细信息
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getUserDetail (params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 对应要检测的用户名
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function checkUserName (params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 修改用户信息
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function modifyUserInfo (params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取当前服务器商户的所有信息
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getAllMerchantInfo (params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
		
		
		
		
		/*彩票类*/
		/**
		 * 获取当前可售期号信息
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getCurrLotteryIssue(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取当前彩种下的所有玩法
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getLotteryAward(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 修改用户登录密码
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function modifyPwdInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 检查用户资金密码信息是否完整 
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function checkPayOutPwdAndTransferPwd(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 修改用户资金资金密码  
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function modifyPayPass(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 修改用户银行卡资料 
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function bindBankInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 用户充值
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function addRechargeInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 用户提款
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function addDrawingsInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 用户平台之间转账
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function userTransfer(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 用户转账记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getTransferRecord(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 用户存款记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getUserRechargeInfoByPage(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 用户提款记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getUserDrawingsInfoByPage(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取投注记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getBetDataList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 中奖提示接口
		 * @param params
		 * @param resultHandler
		 * @param faultHandler
		 * 
		 */		
		function winBetMoney(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
		/**
		 * 获取中奖记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getWindList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 获取用户资金明细
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getUserFundList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 追号期数获取(目前做了100期的数字验证)
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getLotteryIssueByNum(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 追号记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getChaseList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
		/**
		 * 获取组织结构
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getAgentTreeInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 设置用户返点
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function setUserLotteryRebate(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 获取投注订单详情
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getBetOrderDetil(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 下级代理会员查询
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getmyteam(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 查询下级代理登录状态
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getUsersLoginState(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
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
		function getmyreport(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
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
		function gettotalreport(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 获取下级列表
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getMyChildList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 获取新闻
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getNewsInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 商户配额
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getAgentsRenbate(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 返点配置信息
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getSingleAgentsRenbate(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 撤单
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function cancelOrder(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 给下级用户充值
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function addTransferInfo_LotteryTransfer(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 设置用户推广连接返点
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function setUserPromotionRebate(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 查询代理分红
		 * ThisUserName必传
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function dividendRecord(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 是否显示注册领取礼金
		 * ThisUserName必传
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function isShowRegistBtn(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 领取礼金
		 * ThisUserName必传
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function distributeActivityAward(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 直属下级分红记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function lowerDividendRecord(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 自身分红记录
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function selfDividendRecord(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 会员转代理
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function modifyCategoryInfo(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 系统公告列表接口
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getNewsInfoFlex(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 系统公告详情接口
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getNewsDetail(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
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
		function getBetContentDetil(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 下级统计接口
		 * [Ben("用户ID")]
         * public int UserId
         * [Ben("开始时间")]
         * public DateTime BeginTime
         *  public DateTime EndTime
         * [Ben(" 搜索的用户名称")]
         * public string UserName
        *  [Ben("获取方式 0 全部 1 会员 2 代理")]
        *  public int GetUserType
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getTotalChildReport(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 查询活动数量及完成情况
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function judgeActivityComplete(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 获取团队人员数目
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getConsumtionReport(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 获取牛牛登录参数(牛牛)
		 */
		function userNNLogin(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 彩票转账牛牛，和牛牛转账彩票(牛牛)
		 */
		function userTransefer(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 查询转账记录(牛牛)
		 */
		function getUerTranseferList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 棋牌余额(牛牛)
		 */
		function getUserMoney(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
		
		
		
		/**
		 * 获取上期开奖结果 
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler		调用错误是执行的方法
		 * 
		 */		
		function getLastResult(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		function getLastResult2(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取开奖结果结果列表 
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler		调用错误是执行的方法
		 * 
		 */	
		function getResultsList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		function getResultsList2(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 极限秒秒彩开奖结果接口
		 * @param params
		 * @param resultHandler
		 * @param faultHandler
		 * 
		 */		
		function getLotteryDrawPageFlx(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 棋牌 个人报表接口
		 * @param params
		 * @param resultHandler
		 * @param faultHandler
		 * 
		 */		
		function getNNMyReport(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 棋牌 团队报表接口
		 * @param params
		 * @param resultHandler
		 * @param faultHandler
		 * 
		 */		
		function getNNReport(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 棋牌 团队报表  查询下级接口
		 * @param params
		 * @param resultHandler
		 * @param faultHandler
		 * 
		 */		
		function getNNChildReport(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 活动  请求抽奖数据  接口
		 * @param params
		 * @param resultHandler
		 * @param faultHandler
		 * 
		 */		
		function getUserBetMoneyAndTurnCount(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 活动  请求抽奖数据(转盘的位置)  接口
		 * @param params
		 * @param resultHandler
		 * @param faultHandler
		 * 
		 */		
		function userTurn(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 *  查询签到信息
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function getActivitySign(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 签到
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */
		function activitySign(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 代理管理——会员中心——发放日工资
		 */
		function dailyWagesTransefer(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
		
		/**
		 * 账户明细——日工资——查询
		 */
		function dailyWagesGetUserFundList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 代理管理——下级代理——是否显示日工资设置
		 */
		function showDailyWagesSetting(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 代理管理——下级代理——添加日工资设置
		 */
		function addDailyWagesSetting(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 * 获取银行卡列表
		 */
		function getBankCardList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 设置默认银行卡
		 */
		function setDefaultBankCard(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 新增银行卡
		 */
		function addBankCard(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 团队总览
		 */
		function getTeamOverView(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 团队总览_今日统计
		 */
		function getTeamOverViewDayList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 团队总览_历史数据
		 */
		function getTeamOverViewChartList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
		
		
		/**
		 * 获取收件箱列表
		 */
		function getStationEmailReceiveBox(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取收件箱详情
		 */
		function getStationEmailReceiveBoxDetails(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取发件箱列表
		 */
		function getStationEmailSendBox(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取发件箱详情
		 */
		function getStationEmailSendBoxDetails(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取下级用户名
		 */
		function getSubUserName(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  发送站内信
		 */
		function sendStationEmail(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  获取所有收件人
		 */
		function getAllReceivePerson(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  修改头像接口 
		 */
		function setHeadPortrait(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
		/**
		 *  获取日工资数据列表
		 */
		function getDayWagesList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  获取日工资修改前后数据
		 */
		function getDayWagesDetails(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  获取我的和下级日工资契约
		 */
		function getMyDownDayWages(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  修改日工资契约
		 */
		function modifyDayWages(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  获取日工资记录
		 */
		function getDayWagesRecordsList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
		/**
		 *  获取 分红契约 数据列表
		 */
		function getContractList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  获取我的    分红   数据
		 */
		function getContractDetails(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  获取  分红记录  数据列表
		 */
		function getDividentsList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  获取我的和下级  分红契约
		 */
		function getMyDownContract(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  添加契约
		 */
		function addContract(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  修改契约
		 */
		function modifyContractContent(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  前台分红结算预览
		 */
		function getDividendSettlement(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 前台   直属下级一键结算
		 */
		function oneKeySettlement(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 前台   分红结算
		 */
		function bonusSettlement(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 前台   同意契约
		 */
		function agreeContract(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
		
		/**
		 *  获取密保以及提示语状态 
		 */
		function getSecurityPromptingState(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  获取 获取密保问题数据
		 */
		function getSecurityQuestion(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  添加用户密保问题数据
		 */
		function userSecurityQuestionAdd(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *   修改用户密保问题数据
		 */
		function userSecurityQuestionEdit(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  随机获取密保答案问题
		 */
		function getRandomSecurity(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  修改时初始化密保数据
		 */
		function initSecurityData(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *   前台  随机问题密保验证
		 */
		function retrievePassword(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 *  （日工资3--前后台）前后台获取用户日工资3数据列表
		 */
		function getDayWagesThreeList(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  （日工资3--前后台）初始化后台修改数据以及前后台修改前和修改后数据
		 */
		function initDayWagesThreeData(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  （日工资3--前后台）后台添加日工资以及前台添加日工资
		 */
		function addDayWagesThree(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  （日工资3--前后台）前后台修改日工资
		 */
		function modifyDayWagesThree(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  （日工资3--前台）前台获取自己和下级的日工资3契约
		 */
		function getMyDownDayWagesThree(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  （日工资3--前后台）前后台获取日工资3数据记录
		 */
		function getDayWagesRecord(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		/**
		 *  登录 新街口
		 */
		function addUserLoginLog(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  用户信息 新街口
		 */
		function getUserDetailNew(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  获取支付方式
		 */
		function getUserGroupPayment(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
		/**
		 *  获取未读站内信数
		 */
		function getStationEmailCount(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  重置登录密码；
		 */
		function resetPassword(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 *  my18支付 提交审核接口；
		 */
		function AddOrderReminder(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
		
	}
}