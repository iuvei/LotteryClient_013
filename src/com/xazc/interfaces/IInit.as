package com.xazc.interfaces
{
	/**
	 * 每个UI实现接口 
	 * @author Administrator
	 * 
	 */	
	public interface IInit
	{
		/**
		 * 初始化函数
		 * - 在组件creationComplete事件中被调用
		 * - 在viewState组件切换时被调用
		 */
		function init():void;
	}
}