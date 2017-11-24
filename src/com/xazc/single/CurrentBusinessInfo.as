package com.xazc.single
{
	/**
	 * 当前商户配置信息 
	 * @author qu
	 * 
	 */	
	public class CurrentBusinessInfo
	{
		public function CurrentBusinessInfo()
		{
		}
		//Des加密key1值
		public static  var desKey1:String = "X2E5X8SY";
		//Des加密key2值
		public static  var desKey2:String = "5BCEVJIO";
		
		//是否关闭注册模块(CanRegistUser)
		public static  var isRegisterOpen:Boolean = false;
		
		//是否关闭返点模块 （CanRebate）
		public static  var isRebateOpen:Boolean = false;
		
		//是否关闭代理模块
		public static  var isProxyOpen:Boolean = false;
		
		//是否自动弹出优惠活动
		[Bindable]
		public static  var isCommonOpen:Boolean = false;
		
		//是否弹出公告
		public static var isNoticeOpen:Boolean=false;
		
		//是否开启网银支付
		[Bindable]
		public static var isOpenNetRecharge:Boolean = false;
		//是否开启在线支付
		[Bindable]
		public static var isOpenOnlineRecharge:Boolean = false;
		//是否开启支付宝支付
		[Bindable]
		public static var isOpenAlipayRecharge:Boolean = false;
		//是否开启易宝支付
		[Bindable]
		public static var isOpenYiBao:Boolean=false;
		//是否开启MY18支付
		[Bindable]
		public static var isOpenMY18:Boolean=false;
		//是否开启e汇通支付
		[Bindable]
		public static var isOpenEHT:Boolean=false;
		//是否开启MY18支付宝
		[Bindable]
		public static var isOpenMY18Alipay:Boolean=false;
		//是否开启MY18建行
		[Bindable]
		public static var isOpenMY18CCB:Boolean=false;
		//是否开启MY18招行
		[Bindable]
		public static var isOpenMY18CMB:Boolean=false;
		//是否开启MY18财付通
		[Bindable]
		public static var isOpenMY18Tenpay:Boolean=false;
		//是否开起国付宝
		[Bindable]
		public static var isOpenGopay:Boolean=false;
		
		//是否开启环讯支付
		[Bindable]
		public static var isOpenHuanXun:Boolean=false;
		
		//是否开启MY18民生银行
		[Bindable]
		public static var isOpenMY18CMBC:Boolean=false;
		
		//是否开起卡卡联
		[Bindable]
		public static var isOpenKKL:Boolean=false;
		//是否开起摩宝
		[Bindable]
		public static var isOpenMobao:Boolean=false;
		//是否开起通汇
		[Bindable]
		public static var isOpenTonghui:Boolean=false;
		//是否开起中信联通
		[Bindable]
		public static var isOpenZXLT:Boolean=false;
		
		//充值方式限额配置
		public static var rechargeLimiteObj:Object;
		
		//是否开启宝付支付
		[Bindable]
		public static var isOpenBAOFOOpay:Boolean=false;
		
		// 是否开启元模式
		[Bindable]
		public static var isYuanModelOpen:Boolean = false;
		
		// 是否开启角模式
		[Bindable]
		public static var isJiaoModelOpen:Boolean = false;
		
		// 是否开启分模式
		[Bindable]
		public static var isFenModelOpen:Boolean = false;
		
		// 是否开启厘模式
		[Bindable]
		public static var isLiModelOpen:Boolean = false;
		
		// 是否开启棋牌显示
		[Bindable]
		public static var isOpenChessAndCardModelOpen:Boolean = false;
		
		
		
		// 商户默认返奖
		public static var defaultFfanjiangByShanghu:Number = 1000;
		
		//商户设置可售彩种
		public static var canSalableLotteries:String="";
		//彩种显示顺序模板
		public static var canSalableLotteriesTemplate:String="50,41,84,51,53,55,12,57,58,59,13,72,56,66,71,42,14,61,63,5,4,16,15,19,17,10,24,6,18,77,78,26,9,81,82,80,83,79,75,74,76,73,86,85,43,44,45,46,47,48,49,90";
		//快彩
		public static var fastLotteries:String="12,13,14,71,4,5,16,10,15,9,51,53,55,61,63,50,26,72,56,66,57,58,59,41,42,77,78,79,80,81,82,83,75,74,76,73,84,86,85,43,44,45,46,47,48,49";
		//加载皮肤路径（Skin）
		public static var skin:String = "";
		//logo（Logo）
		[Bindable]
		public static var logo:String = "";
		//及时帮助链接
		[Bindable]
		public static var timelyhelpLink:String = 	"";
		
		
		//期号服务器连接
		public static var issueUrl:String = '';
		//期号服务器连接（自有）
		public static var issueUrl2:String = '';
		//java前台服务器连接
		public static var serverUrl:String = '';
		//.net前台服务器连接
		public static var serverUrl_net:String = '';
		//客户端项目更新检测路径
		public static  var updateUrl:String = '';
		//注册地址
		public static  var registerUrl:String = '';
		
		//windows系统运行环境
		public static  var windowsAIRUrl:String = '';
		//苹果系统运行环境
		public static  var macAIRUrl:String = '';
		//PC客户端下载地址
		public static  var CPClientUrl:String = '';
		//手机客户端下载地址
		public static  var PhoneClientUrl:String = '';
		//手机客户端下载地址
		public static  var iosPhoneClientUrl:String = '';
		
		/**通域名验证地址*/
		public static var DomainVerificationUrl:String = '';
		
		
		
		//商户注册返点范围
		/**
		 * obj.CanDivident	含义:是否可以分红
		 * obj.Rebate		含义:返点值
		 * obj.MemberCount 	含义:人员数目
		 * 
		 */
		public static var MerchantRebateSettings:Array;
		
		//可售彩种列表
		/**
		 * obj.SaleState	含义:销售状态
		 * obj.MaxRebate	含义:最大返点
		 * obj.LotteryCode	含义:彩种代号
		 * 
		 */
		public static var LotteryList:Array;
		//语言(含义:语言版本)
		public static var Lang:String;
		//地址(含义:可访问地址)
		public static var Addrs:Array;
		//商户id
		public static var MerchantCode:String;
		
		public static var maxRebate:int;//商户最大返点
		public static var minRebate:int;//商户最小返点
		public static var cRebate:int;//返点差值
		
		//配置商户编号（区分显示不同需求使用），默认商户编号为0 其他个性定制商户编号依次相加
		[Bindable]
		public static var MerchantNumber:int = 0;
		//项目配置名称
		[Bindable]
		public static var MerchantProjectName:String = "LotteryWeb";
		/**允许代理投注*/
		[Bindable]
		public static var isAollowProxyBet:Boolean = false;
		public static var g_ActivitiesXML:Array = new Array;		
		//该商户可用地址链接表
		public static var linkAddrs:Array=[];
		
		//所有的支付方式按顺序存贮；
		[Bindable]
		public static var allPayTypeArray:Array = new Array();
		
		//当前商户配置支付名称显示链表及顺序
		public static var onlineTypeNamesObj:Object;
		//充值方式对应关系
		public static var onlineTypeCorrespondObj:Object;
	}
}