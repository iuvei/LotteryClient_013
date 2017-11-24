package com.xazc.single
{
	import com.xazc.comm.vo.UserDetailVo;

	public class PersonCenterInfo
	{
		public function PersonCenterInfo()
		{
		}
		
		//是否关闭注册模块
		[Bindable]
		public static  var userInfoDetail:UserDetailVo;
		
		//是否存在资金密码
		[Bindable]
		public static  var IsPayPsw:Boolean = false;
		//是否存在密保
		[Bindable]
		public static  var IsSecurityState:Boolean = false;
	}
}