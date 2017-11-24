package com.xazc.comm.vo
{

	public class UserDetailVo
	{
		public function UserDetailVo()
		{
			
		}
		private var _UserRealName:String="";//真实姓名
		private var _UserName:String="";//用户名
		private var _MyUserID:String="";//用户ID
		private var _IDCardNumber:String="";//身份证
		private var _EMail:String="";//邮箱
		private var _QQ:String="";//qq
		private var _Mobile:String="";//手机
		private var _City:String="";//城市
		private var _Province:String="";//省份
		private var _BankCode:String="";//银行
		private var _CardNumber:String="";//银行卡号
		private var _IsAgent:Boolean=false;//是否是代理
		private var _IsPayPsw:Boolean=false;//资金密码是否存在
		private var _UserLevel:int = 1;//用户代理等级
		private var _ChildCount:Number;//直属下级个数
		private var _TeamMemberCount:Number;//团队个数
		private var _StopAddChild:Boolean=false;//阻值创建下级  true是阻止  
		private var _HeadPortrait:String = "";//用户头像

		[Bindable]
		public function get HeadPortrait():String
		{
			return _HeadPortrait;
		}

		public function set HeadPortrait(value:String):void
		{
			_HeadPortrait = value;
		}

		[Bindable]
		public function get MyUserID():String
		{
			return _MyUserID;
		}

		public function set MyUserID(value:String):void
		{
			_MyUserID = value;
		}

		[Bindable]
		public function get StopAddChild():Boolean
		{
			return _StopAddChild;
		}

		public function set StopAddChild(value:Boolean):void
		{
			_StopAddChild = value;
		}

		[Bindable]
		public function get TeamMemberCount():Number
		{
			return _TeamMemberCount;
		}

		public function set TeamMemberCount(value:Number):void
		{
			_TeamMemberCount = value;
		}

		[Bindable]
		public function get ChildCount():Number
		{
			return _ChildCount;
		}

		public function set ChildCount(value:Number):void
		{
			_ChildCount = value;
		}

		[Bindable]
		public function get UserLevel():int
		{
			return _UserLevel;
		}

		public function set UserLevel(value:int):void
		{
			_UserLevel = value;
		}

		[Bindable]
		public function get IsPayPsw():Boolean
		{
			return _IsPayPsw;
		}

		public function set IsPayPsw(value:Boolean):void
		{
			_IsPayPsw = value;
		}

		[Bindable]
		public function get IsAgent():Boolean
		{
			return _IsAgent;
		}

		public function set IsAgent(value:Boolean):void
		{
			_IsAgent = value;
		}

		[Bindable]
		public function get CardNumber():String
		{
			return _CardNumber;
		}

		public function set CardNumber(value:String):void
		{
			_CardNumber = value;
		}
		[Bindable]
		public function get BankCode():String
		{
			return _BankCode;
		}

		public function set BankCode(value:String):void
		{
			_BankCode = value;
		}
		[Bindable]
		public function get Province():String
		{
			return _Province;
		}

		public function set Province(value:String):void
		{
			_Province = value;
		}
		[Bindable]
		public function get City():String
		{
			return _City;
		}

		public function set City(value:String):void
		{
			_City = value;
		}
		[Bindable]
		public function get Mobile():String
		{
			return _Mobile;
		}

		public function set Mobile(value:String):void
		{
			_Mobile = value;
		}
		[Bindable]
		public function get QQ():String
		{
			return _QQ;
		}

		public function set QQ(value:String):void
		{
			_QQ = value;
		}
		[Bindable]
		public function get EMail():String
		{
			return _EMail;
		}

		public function set EMail(value:String):void
		{
			_EMail = value;
		}
		[Bindable]
		public function get IDCardNumber():String
		{
			return _IDCardNumber;
		}

		public function set IDCardNumber(value:String):void
		{
			_IDCardNumber = value;
		}
		[Bindable]
		public function get UserName():String
		{
			return _UserName;
		}

		public function set UserName(value:String):void
		{
			_UserName = value;
		}
		[Bindable]
		public function get UserRealName():String
		{
			return _UserRealName;
		}

		public function set UserRealName(value:String):void
		{
			_UserRealName = value;
		}

	}
}