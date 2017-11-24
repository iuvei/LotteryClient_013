package com.xazc.single
{
	/**
	 * 排列组合数学计算
	 * @author Administrator
	 * 
	 */	
	public class MathUtil
	{
		public function MathUtil()
		{
		}
		/**
		 * Cm n的计算方法
		 * @param m 下标
		 * @param n 上标
		 * @return 返回组合后的值
		 * 
		 */		
		public static function getCCombination(m:int,n:int):Number{
			var i:int = m - n;
			if (i < 0) {
				return 0;
			} else if (i == 0) {
				return 1;
			} else { 
				if (i < n) {
					var b:Number = getNtoMMultiplySum(n, m);
					var c:Number = getMultiplySum(i);
					var result:int = b/c;
					return result;
				} else {
					b = getNtoMMultiplySum(i, m);
					c = getMultiplySum(n);
					result = b/c;
					return result;
				}
			}
		}
		/**
		 * Am n的计算方法
		 * @param m 下标
		 * @param n 上标
		 * @return 返回排列后计算的值
		 * 
		 */		
		public static function getACombination(m:int,n:int):Number{
			return getNtoMMultiplySum(m-n, m);
		}
		
		/**
		 * 计算从(n+1)*(n+2)*(n+3)*...*m的值 m>n
		 * @param n 
		 * @param m
		 * @return 返回连乘后的乘积
		 * 
		 */		
		public static function getNtoMMultiplySum(n:int,m:int):Number{
			var sum:Number = 1;
			if (m < n) {
				return 0;
			}
			if (m == n) {
				return 1;
			}
			for (var i:int = n + 1; i <= m; i++) {
				sum = i*sum;
			}
			return sum;
		}
		/**
		 * An n的计算方法 计算从1*2*3*...*n的值 n>=1
		 * @param n
		 * @return 返回连乘的乘积
		 * 
		 */		
		public static function getMultiplySum(n:int):Number{
			return getNtoMMultiplySum(1, n);
		}
		/**
		 * 计算1+2+3+...+n的和值
		 * @param n
		 * @return 返回求和的和值
		 * 
		 */		
		public static function getAddSum(n:int):Number{
			var sum:int = 0;
			for (var i:int = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
		/**
		 * 两行选择号码 第一行一个第二行n个计算总注数
		 * @param a 选择一个号码的选号数组
		 * @param b 选择 type 个号码的选号数组
		 * @param type 至少选择 type 个号码 
		 */		
		public static function getBetSumByType(a:Array,b:Array,type:int):int{
			var sum:int = 0
			if(a.length < 1 || b.length < type)
				return sum;
			var tempArr:Array;
			for (var j:int = 0; j < a.length; j++) 
			{
				tempArr = new Array();
				tempArr.push(a[j]);
				for (var k:int = 0; k < b.length; k++)//去掉重复的单号
				{
					if(tempArr.indexOf(b[k]) == (-1))
						tempArr.push(b[k]);
				}
				var len:int = tempArr.length-1;
				if(tempArr.length>=type)//有注数
				{
					sum = sum+getCCombination(len,type);
				}
			}
			return sum;
		}
	}
}