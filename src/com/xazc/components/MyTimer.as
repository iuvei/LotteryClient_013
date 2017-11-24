package com.xazc.components
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;

	public class MyTimer{
		private static const DELAY:uint = 1000;//一秒钟
		private static const SECONDS_PER_MINUTE:uint = 60;//1分钟
		private var timer:Timer = new Timer(DELAY);//创建定时器对象
		
		public function MyTimer(hours:uint,minutes:uint = 0, seconds:uint = 0){
			setTimer(hours,minutes, seconds);
		}
		/**
		 *设置倒计时时间   时 ，分，秒
		 **/
		public function setTimer(hours:uint,minutes:uint, seconds:uint = 0):void{
			timer.repeatCount = seconds + minutes * SECONDS_PER_MINUTE+hours*60*SECONDS_PER_MINUTE;
		}
		/**
		 *定时器开始 
		 **/
		public function start():void{
			timer.start();
		}
		/**
		 *定时器结束 
		 **/
		public function stop():void{
			timer.stop();
		}
		/**
		 *定时器重置 
		 **/
		public function reset():void{
			timer.reset();
		}
		/**
		 *注册定时器监听函数 
		 **/
		public function setTimerHandler(func:Function):void{
			timer.addEventListener(TimerEvent.TIMER, func);
		}
		/**
		 *注册定时器结束函数
		 **/
		public function setTimeoutsHandler(func:Function):void{
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, func);
		}
		/**
		 *当前分钟数 
		 **/
		public function get currentMinutes():uint{
			return calculateMinutes(timer.currentCount);
		}
		
		/**
		 *当前秒数 
		 **/
		public function get currentSeconds():uint{
			return calculateSeconds(timer.currentCount);
		}
		/**
		 * 剩余分钟
		 **/
		public function get leftHours():uint{
			return calculateHours(leftCount);
		}
		/**
		 * 剩余分钟
		 **/
		public function get leftMinutes():uint{
			return calculateMinutes(leftCount);
		}
		/**
		 *剩余秒数 
		 **/
		public function get leftSeconds():uint{
			return calculateSeconds(leftCount);
		}
		/**
		 *计算分钟数 
		 **/
		private function calculateHours(count:int):uint{
			return count/SECONDS_PER_MINUTE/SECONDS_PER_MINUTE;
		}
		/**
		 *计算分钟数 
		 **/
		private function calculateMinutes(count:int):uint{
			//取余
			return count% (SECONDS_PER_MINUTE*SECONDS_PER_MINUTE)/SECONDS_PER_MINUTE;
		}
		/**
		 *计算秒数
		 **/
		private function calculateSeconds(count:int):uint{
			//取余
			return count %(SECONDS_PER_MINUTE*SECONDS_PER_MINUTE)%SECONDS_PER_MINUTE;
		}
		/**
		 *计算剩余次数 
		 **/
		private function get leftCount():uint{
			return timer.repeatCount - timer.currentCount;
		}
		
		
	}
}