package com.xazc.single
{
	import com.hurlant.CryptoUtil;
	import com.xazc.comm.vo.Cathectic;
	import com.xazc.components.bettings.AlertMsg;
	
	import flash.events.EventDispatcher;
	import flash.geom.Point;
	
	import mx.events.ToolTipEvent;

	public class Util extends EventDispatcher
	{
		private static var _instance:Util;
		
		public function Util()
		{
		}
		
		public static function getInstance():Util
		{
			return _instance ||= new Util();
		}
		
		public var scaleHeight:Number;
		
		public var picArr:Array = ["myCount", "record", "proxy", "recharge", "atm", "help"];
		
		public var screenWidth:Number = 1024;
		
		public var modulesXmlUrl:String = "config.xml?2017080304";
		
		/*"<font color='#FFFFFF' size='13'>{0}</font>  " +
			"<font color='#ffc446' size='13'>{1}</font>" +
			"<font color='#FFFFFF' size='13'>{2}</font>  " +
			"<font color='#ffc446' size='13'>{3}</font>" +*/
		private var num1:String = "";
		private var num2:String = "";
		private var num3:String = "";
		private var num4:String = "";
		private var num5:String = "";
		private var num6:String = "";
		private var num7:String = "";
		private var num8:String = "";
		
		public var firstPop:Boolean = false;
		public var secondPop:Boolean = false;
		public var thirdPop:Boolean = false;
		public var isPop:Boolean = false;
		public var backPop:Boolean = false;
		
		public var singleLabelStyle:String = 
			"<font color='#FFFFFF' size='13'>{4}</font>" +
			"<font color='#ffc446' size='13'>{5}</font>" +
			"<font color='#FFFFFF' size='13'>{6}</font>" +
			"<font color='#FFFFFF' size='13'>{7}</font>" +
			"<font color='#ffc446' size='13'>{8}</font>" +
			"<font color='#FFFFFF' size='13'>{9}</font> \n";
		
		public function systemMsgTipHandler(id:String):void
		{
			var alertMsg:AlertMsg = new AlertMsg();
			if(id == "-1")
			{
				alertMsg.show("请重新登录", "温馨提示",2, true);
			}
			else if(id == "-2")
			{
				alertMsg.show("您的账户已在别的地方登录，请从新登录", "温馨提示",2, true);
			}
			else
			{
				alertMsg.show("后台数据异常，请联系管理员", "温馨提示",2, true);
			}
		}
		public function resuleFormatToJSon(resultString:String,desType:int=0):Object
		{
			//JSON.parse(resultString,null)
			var temp:Object;
			if(0==desType){//不加密解密
				temp = new Object;
				temp = JSON.parse(resultString,null);
			}else{//解密
				temp = new Object;
				trace(CryptoUtil.DESDecrypt(resultString,CurrentBusinessInfo.desKey1,CurrentBusinessInfo.desKey2));
				temp =JSON.parse(CryptoUtil.DESDecrypt(resultString,CurrentBusinessInfo.desKey1,CurrentBusinessInfo.desKey2),null);
			}
			
			return temp;
		}
		/**
		 * 根据采种id返回采种类型
		 */
	public function getLotteryTypesByLotteryId(lotteryId:String):String{
		var lotteryType:String = '';
		switch(lotteryId)
		{
			case "12":
			case "14":
			case "13":
			case "50":
			case "51":
			case "53":
			case "55":
			case "56":
			case "66":
			case "57":
			case "58":
			case "71":
			case "72":
			case "73":
			case "74":
			case "75":
			case "76":
			case "59":
			case "41":
			case "42":
			case "86":
			case "43":
			case "44":
			case "45":
			case "46":
			case "47":
			case "48":
			case "49":
			{
				lotteryType = 'ssc';
				break;
			}
			case "4":
			case "5":
			case "16":
			case "77":
			case "78":
			case "61":
			case "63":
			case "85":
			{
				lotteryType = '11x5';
				break;
			}
			case "9":
			case "79":
			case "80":
			{
				lotteryType = 'happy8';
				break;
			}
			case "26":
			case "81":
			case "82":
			case "83":
			case "21":
			case "87":
			case "88":
			case "89":
			{
				lotteryType = 'kuai3';
				break;
			}
			case "10":
			{
				lotteryType = 'pk10';
				break;
			}
			case "15":
			{
				lotteryType = 'ssl';
				break;
			}
			case "17":
			{
				lotteryType = 'pl3';
				break;
			}
			case "18":
			{
				lotteryType = 'pl5';
				break;
			}
			case "19":
			case "84":
			{
				lotteryType = 'fc3d';
				break;
			}
			case "90":
			{
				lotteryType = 'klsf';
				break;
			}
			default:
			{
				lotteryType = 'others';
				break;
			}
		}
		
		return lotteryType;
	
	}
		
		
		/**
		 * --投注筐内容显示
		 * 对投注内容进行格式转换
		 * @param value(Cathectic) -投注内容
		 * @return 格式转换后的投注内容
		 * 
		 */		
		public function strFormatConversionForShow(value:Cathectic):String{
			//以前逻辑
			var returnStr:String = "";
			
			switch(this.getLotteryTypesByLotteryId(value.lottery_type))
			{
				case "ssc":
				{
					returnStr = this.strFormatConversionForShow_ssc(value);
					break;
				}
				case "pk10":
				{
					returnStr = this.strFormatConversionForShow_pk10(value);
					break;
				}
				case "11x5":
				{
					returnStr = this.strFormatConversionForShow_11x5(value);
					break;
				}
				case "happy8":
				{
					returnStr = this.strFormatConversionForShow_happy8(value);
					break;
				}
				case "kuai3":
				{
					returnStr = this.strFormatConversionForShow_kuai3(value);
					break;
				}
				case "klsf":
				{
					returnStr = this.strFormatConversionForShow_klsf(value);
					break;
				}
				default://不需要处理
				{
					returnStr = value.tzcontent;
					break;
				}
			}
			if(returnStr.length>5000){
				returnStr = returnStr.substring(0,5000)+"...";
			}
			return returnStr;
		}
		
		/**
		 * --订单详情显示
		 * 对投注内容进行格式转换
		 * @param value(Object) -投注内容
		 * @return 格式转换后的投注内容
		 * 
		 */		
		public function strFormatConversionForShowByObject(lotteryId:String,valueObject:Object):String{
			var returnStr:String = "";
			//封装数据
			var value:Cathectic = new  Cathectic();
			value.lottery_type = lotteryId;
			value.game_id = valueObject.PlayCode.toString();
			value.tzcontent = valueObject.BetContent.toString();
			
			switch(this.getLotteryTypesByLotteryId(value.lottery_type))
			{
				case "ssc":
				{
					returnStr = this.strFormatConversionForShow_ssc(value);
					break;
				}
				case "pk10":
				{
					returnStr = this.strFormatConversionForShow_pk10(value);
					break;
				}
				case "11x5":
				{
					returnStr = this.strFormatConversionForShow_11x5(value);
					break;
				}
				case "happy8":
				{
					returnStr = this.strFormatConversionForShow_happy8(value);
					break;
				}
				case "kuai3":
				{
					returnStr = this.strFormatConversionForShow_kuai3(value);
					break;
				}
				case "klsf":
				{
					returnStr = this.strFormatConversionForShow_klsf(value);
					break;
				}
				default://不需要处理
				{
					returnStr = value.tzcontent;
					break;
				}
			}
			return returnStr;
		}
		//快乐十分
		public function strFormatConversionForShow_klsf(value:Cathectic):String
		{
			var returnStr:String = "";
			var addStr:String = "";
			var newArray:Array = value.tzcontent.split("$");
			switch(value.game_id)
			{
				//快乐十分大小单双显示解析
				case value.lottery_type+"20"://大小单双
				{
					num1 = "";
					num2 = "";
					num3 = "";
					num4 = "";
					num5 = "";
					num6 = "";
					num7 = "";
					num8 = "";
					var tempArr:Array = value.tzcontent.split("|");
					var addText:String = "*";
					for (var i:int = 0; i < tempArr.length; i++) 
					{
						var childArr:Array = tempArr[i].toString().split(",");
						for (var j:int = 0; j <childArr.length; j++) 
						{
							switch(childArr[j])
							{
								case "0":{addText = "大"; break;}
								case "1":{addText = "小"; break;}
								case "2":{addText = "单"; break;}
								case "3":{addText = "双"; break;}
								case "4":{addText = "尾大"; break;}
								case "5":{addText = "尾小"; break;}
								case "6":{addText = "和单"; break;}
								case "7":{addText = "和双"; break;}
									//其他
								default:{addText = "*"; break;}
							}
							this["num"+(i+1)] =(this["num"+(i+1)] == "")?addText:this["num"+(i+1)]+","+addText;
						}
					}
					returnStr = num1+"|"+num2+"|"+num3+"|"+num4+"|"+num5+"|"+num6+"|"+num7+"|"+num8;
					break;
				}
				case value.lottery_type+"21"://大小和
				{
					num1 = "";
					var tempArr:Array = value.tzcontent.split("|");
					var addText:String = "";
					for (var i:int = 0; i < tempArr.length; i++) 
					{
						var childArr:Array = tempArr[i].toString().split(",");
						for (var j:int = 0; j <childArr.length; j++) 
						{
							switch(childArr[j])
							{
								case "0":{addText = "大"; break;}
								case "1":{addText = "小"; break;}
								case "2":{addText = "和"; break;}
							}
							num1 += addText + ",";
						}
					}
					returnStr = num1.substr(0,num1.length-1);
					break;
				}
				case value.lottery_type+"22"://四季方位
				{
					num1 = "";
					num2 = "";
					num3 = "";
					num4 = "";
					num5 = "";
					num6 = "";
					num7 = "";
					num8 = "";
					var tempArr:Array = value.tzcontent.split("|");
					var addText:String = "*";
					for (var i:int = 0; i < tempArr.length; i++) 
					{
						var childArr:Array = tempArr[i].toString().split(",");
						for (var j:int = 0; j <childArr.length; j++) 
						{
							switch(childArr[j])
							{
								case "0":{addText = "春"; break;}
								case "1":{addText = "夏"; break;}
								case "2":{addText = "秋"; break;}
								case "3":{addText = "冬"; break;}
								case "4":{addText = "东"; break;}
								case "5":{addText = "南"; break;}
								case "6":{addText = "西"; break;}
								case "7":{addText = "北"; break;}
									//其他
								default:{addText = "*"; break;}
							}
							this["num"+(i+1)] =(this["num"+(i+1)] == "")?addText:this["num"+(i+1)]+","+addText;
						}
					}
					returnStr = num1+"|"+num2+"|"+num3+"|"+num4+"|"+num5+"|"+num6+"|"+num7+"|"+num8;
					break;
				}
				case value.lottery_type+"23"://五行
				{
					num1 = "";
					num2 = "";
					num3 = "";
					num4 = "";
					num5 = "";
					num6 = "";
					num7 = "";
					num8 = "";
					var tempArr:Array = value.tzcontent.split("|");
					var addText:String = "*";
					for (var i:int = 0; i < tempArr.length; i++) 
					{
						var childArr:Array = tempArr[i].toString().split(",");
						for (var j:int = 0; j <childArr.length; j++) 
						{
							switch(childArr[j])
							{
								case "0":{addText = "金"; break;}
								case "1":{addText = "木"; break;}
								case "2":{addText = "水"; break;}
								case "3":{addText = "火"; break;}
								case "4":{addText = "土"; break;}
									//其他
								default:{addText = "*"; break;}
							}
							this["num"+(i+1)] =(this["num"+(i+1)] == "")?addText:this["num"+(i+1)]+","+addText;
						}
					}
					returnStr = num1+"|"+num2+"|"+num3+"|"+num4+"|"+num5+"|"+num6+"|"+num7+"|"+num8;
					break;
				}
				case value.lottery_type+"24"://龙虎 龙
				case value.lottery_type+"25"://龙虎 虎
				{
					num1 = "";
					var tempArr:Array = value.tzcontent.split(",");
					var addText:String = "";
					for (var i:int = 0; i < tempArr.length; i++) 
					{
						var childArr:Array = tempArr[i].toString().split("");
						addText = childArr[0] + "V" + childArr[2];
						num1 += addText + ",";
					}
					returnStr = num1.substr(0,num1.length-1);
					break;
				}
				
			}
			return returnStr;
		}
		//时时彩
		public function strFormatConversionForShow_ssc(value:Cathectic):String
		{
			var returnStr:String = "";
			var addStr:String = "";
			var newArray:Array = value.tzcontent.split("$");
			switch(value.game_id)
			{
				//时时彩大小单双显示解析
				case value.lottery_type+"11":
				case value.lottery_type+"79":
				case value.lottery_type+"80":
				case value.lottery_type+"81":
				case value.lottery_type+"82":
				{
					num1 = "";
					num2 = "";
					num3 = "";
					var tempArr:Array = value.tzcontent.split("|");
					var addText:String = "";
					for (var i:int = 0; i < tempArr.length; i++) 
					{
						var childArr:Array = tempArr[i].toString().split(",");
						for (var j:int = 0; j <childArr.length; j++) 
						{
							switch(childArr[j])
							{
								case "0":{addText = "大"; break;}
								case "1":{addText = "小"; break;}
								case "2":{addText = "单"; break;}
								case "3":{addText = "双"; break;}
							}
							this["num"+(i+1)] =(this["num"+(i+1)] == "")?addText:this["num"+(i+1)]+","+addText;
						}
						
					}
					if(tempArr.length == 1)
						returnStr = num1;
					else if(tempArr.length == 2)
						returnStr = num1+"|"+num2;
					else if(tempArr.length == 3)
						returnStr = num1+"|"+num2+"|"+num3;
					break;
				}
				case value.lottery_type+"94":
				case value.lottery_type+"95":
				case value.lottery_type+"96":
				case value.lottery_type+"97":
				case value.lottery_type+"98":
				case value.lottery_type+"99":
				case value.lottery_type+"100":
				case value.lottery_type+"101":
				case value.lottery_type+"102":
				case value.lottery_type+"103":
				{
					num1 = "";
					num2 = "";
					num3 = "";
					var tempArr:Array = value.tzcontent.split("|");
					var addText:String = "";
					for (var i:int = 0; i < tempArr.length; i++) 
					{
						var childArr:Array = tempArr[i].toString().split(",");
						for (var j:int = 0; j <childArr.length; j++) 
						{
							switch(childArr[j])
							{
								case "0":{addText = "龙"; break;}
								case "1":{addText = "虎"; break;}
								case "2":{addText = "和"; break;}
							}
							this["num"+(i+1)] =(this["num"+(i+1)] == "")?addText:this["num"+(i+1)]+","+addText;
						}
						
					}
					if(tempArr.length == 1)
						returnStr = num1;
					else if(tempArr.length == 2)
						returnStr = num1+"|"+num2;
					else if(tempArr.length == 3)
						returnStr = num1+"|"+num2+"|"+num3;
					break;
				}
				case value.lottery_type+"85":
				case value.lottery_type+"88":
				case value.lottery_type+"91":
				{
					num1 = "";
					num2 = "";
					num3 = "";
					var tempArr:Array = value.tzcontent.split("|");
					var addText:String = "";
					for (var i:int = 0; i < tempArr.length; i++) 
					{
						var childArr:Array = tempArr[i].toString().split(",");
						for (var j:int = 0; j <childArr.length; j++) 
						{
							switch(childArr[j])
							{
								case "0":{addText = "豹子"; break;}
								case "1":{addText = "顺子"; break;}
								case "2":{addText = "对子"; break;}
								case "3":{addText = "半顺"; break;}
								case "4":{addText = "杂六"; break;}
							}
							this["num"+(i+1)] =(this["num"+(i+1)] == "")?addText:this["num"+(i+1)]+","+addText;
						}
						
					}
					if(tempArr.length == 1)
						returnStr = num1;
					else if(tempArr.length == 2)
						returnStr = num1+"|"+num2;
					else if(tempArr.length == 3)
						returnStr = num1+"|"+num2+"|"+num3;
					break;
				}
				//其他
				default:
				{
					if(newArray.length == 2)
					{
						var tempStrArr:Array = (newArray[1]).toString().split("");
						for (var k:int = 0; k < tempStrArr.length; k++) 
						{
							switch(tempStrArr[k])
							{
								case "0":{addStr = addStr+"万";break;}
								case "1":{addStr = addStr+"千";break;}
								case "2":{addStr = addStr+"百";break;}
								case "3":{addStr = addStr+"十";break;}
								case "4":{addStr = addStr+"个";break;}
							}
						}
						returnStr = newArray[0].toString()+"#"+addStr;
					}
					else{
						returnStr = value.tzcontent;
					}
					break;
				}
			}
			return returnStr;
		}
		//pk10
		public function strFormatConversionForShow_pk10(value:Cathectic):String
		{
			//以前逻辑
			var returnStr:String = "";
			var addStr:String = "";
			var newArray:Array = value.tzcontent.split("$");
			switch(value.game_id)
			{
				//pk10
				case value.lottery_type+"16":
				case value.lottery_type+"17":
				case value.lottery_type+"18":
				case value.lottery_type+"19":
				case value.lottery_type+"20":
				case value.lottery_type+"21":
				{
					num1 = "";
					num2 = "";
					num3 = "";
					var tempArr:Array = value.tzcontent.split("|");
					var addText:String = "";
					for (var i:int = 0; i < tempArr.length; i++) 
					{
						var childArr:Array = tempArr[i].toString().split(",");
						for (var j:int = 0; j <childArr.length; j++) 
						{
							switch(childArr[j])
							{
								case "0":{addText = "大"; break;}
								case "1":{addText = "小"; break;}
								case "2":{addText = "单"; break;}
								case "3":{addText = "双"; break;}
							}
							this["num"+(i+1)] =(this["num"+(i+1)] == "")?addText:this["num"+(i+1)]+","+addText;
						}
						
					}
					if(tempArr.length == 1)
						returnStr = num1;
					else if(tempArr.length == 2)
						returnStr = num1+"|"+num2;
					else if(tempArr.length == 3)
						returnStr = num1+"|"+num2+"|"+num3;
					break;
				}
				case value.lottery_type+"22":
				case value.lottery_type+"23":
				case value.lottery_type+"24":
				{
					num1 = "";
					num2 = "";
					num3 = "";
					var tempArr:Array = value.tzcontent.split("|");
					var addText:String = "";
					for (var i:int = 0; i < tempArr.length; i++) 
					{
						var childArr:Array = tempArr[i].toString().split(",");
						for (var j:int = 0; j <childArr.length; j++) 
						{
							switch(childArr[j])
							{
								case "0":{addText = "龙"; break;}
								case "1":{addText = "虎"; break;}
							}
							this["num"+(i+1)] =(this["num"+(i+1)] == "")?addText:this["num"+(i+1)]+","+addText;
						}
						
					}
					if(tempArr.length == 1)
						returnStr = num1;
					else if(tempArr.length == 2)
						returnStr = num1+"|"+num2;
					else if(tempArr.length == 3)
						returnStr = num1+"|"+num2+"|"+num3;
					break;
				}
				default://不需要处理
				{
					returnStr = value.tzcontent;
					break;
				}
			}
			return returnStr;
		}
		//kuai3
		public function strFormatConversionForShow_kuai3(value:Cathectic):String
		{
			var returnStr:String = '';
			var addStr:String = "";
			var newArray:Array = value.tzcontent.split("$");
			switch(value.game_id)
			{
				//kuai3
				case value.lottery_type+"18":
				{
					num1 = "";
					num2 = "";
					num3 = "";
					var tempArr:Array = value.tzcontent.split("|");
					var addText:String = "";
					for (var i:int = 0; i < tempArr.length; i++) 
					{
						var childArr:Array = tempArr[i].toString().split(",");
						for (var j:int = 0; j <childArr.length; j++) 
						{
							switch(childArr[j])
							{
								case "0":{addText = "大"; break;}
								case "1":{addText = "小"; break;}
								case "2":{addText = "单"; break;}
								case "3":{addText = "双"; break;}
							}
							this["num"+(i+1)] =(this["num"+(i+1)] == "")?addText:this["num"+(i+1)]+","+addText;
						}
						
					}
					if(tempArr.length == 1)
						returnStr = num1;
					else if(tempArr.length == 2)
						returnStr = num1+"|"+num2;
					else if(tempArr.length == 3)
						returnStr = num1+"|"+num2+"|"+num3;
					break;
				}
				default://不需要处理
				{
					returnStr = value.tzcontent;
					break;
				}
			}
			return returnStr;
			
		}
		//11x5
		public function strFormatConversionForShow_11x5(value:Cathectic):String
		{
			var returnStr:String = '';
			var addStr:String = "";
			var newArray:Array = value.tzcontent.split("$");
			switch(value.game_id)
			{
				case value.lottery_type+"16":
					newArray = value.tzcontent.split(",");
					returnStr = parSingByDanShuang(newArray);
					break;
				default://不需要处理
				{
					returnStr = value.tzcontent;
					break;
				}
			}
			
			return returnStr;
			
		}
		//happy8
		public function strFormatConversionForShow_happy8(value:Cathectic):String
		{
			var returnStr:String = '';
			var addStr:String = "";
			var newArray:Array = value.tzcontent.split("$");
			switch(value.game_id)
			{
				case value.lottery_type+"11":
				case value.lottery_type+"12":
				case value.lottery_type+"13":
				case value.lottery_type+"14":
				case value.lottery_type+"15":
				case value.lottery_type+"16":
				{
					newArray = value.tzcontent.split(",");
					for (var i2:int = 0; i2 < newArray.length; i2++) 
					{
						returnStr = (returnStr == "")?returnStr+getHappy8ShowText(value.lottery_type,value.game_id,newArray[i2]):returnStr + ","+getHappy8ShowText(value.lottery_type,value.game_id,newArray[i2]);
					}
					break;
				}
				default://不需要处理
				{
					returnStr = value.tzcontent;
					break;
				}
			}
			return returnStr;
		}
		//happy8具体实现
		public function getHappy8ShowText(lotteryId:String,playId:String,valueKey:String):String
		{
			var returnStr:String = "";
			switch(valueKey)
			{
				case "0":
				{
					switch(playId)
					{
						case lotteryId+"11":{returnStr = "单";break;}
						case lotteryId+"12":{returnStr = "大";break;}
						case lotteryId+"13":{returnStr = "奇";break;}
						case lotteryId+"14":{returnStr = "上";break;}
						case lotteryId+"15":{returnStr = "大单";break;}
						case lotteryId+"16":{returnStr = "金";break;}
					}
					break;
				}
				case "1":
				{
					switch(playId)
					{
						case lotteryId+"11":{returnStr = "双";break;}
						case lotteryId+"12":{returnStr = "小";break;}
						case lotteryId+"13":{returnStr = "偶";break;}
						case lotteryId+"14":{returnStr = "下";break;}
						case lotteryId+"15":{returnStr = "大双";break;}
						case lotteryId+"16":{returnStr = "木";break;}
					}
					break;
				}
				case "2":
				{
					switch(playId)
					{
						case lotteryId+"12":{returnStr = "和";break;}
						case lotteryId+"13":{returnStr = "和";break;}
						case lotteryId+"14":{returnStr = "中";break;}
						case lotteryId+"15":{returnStr = "小单";break;}
						case lotteryId+"16":{returnStr = "水";break;}
					}
					break;
				}
				case "3":
				{
					switch(playId)
					{
						case lotteryId+"15":{returnStr = "小双";break;}
						case lotteryId+"16":{returnStr = "火";break;}
					}
					break;
				}
				case "4":
				{
					switch(playId)
					{
						case lotteryId+"16":{returnStr = "土";break;}
					}
					break;
				}
			}
			return returnStr;
		}
		
		public function parSingByDanShuang(arr:Array):String
		{
			var returnStr:String = "";
			for (var i:int = 0; i < arr.length; i++) 
			{
				switch(arr[i])
				{
					case "05":
						returnStr = (returnStr == "")?"0单5双":returnStr+",0单5双"
						break;
					case "50":
						returnStr = (returnStr == "")?"5单0双":returnStr+",5单0双"
						break;
					case "14":
						returnStr = (returnStr == "")?"1单4双":returnStr+",1单4双"
						break;
					case "41":
						returnStr = (returnStr == "")?"4单1双":returnStr+",4单1双"
						break;
					case "23":
						returnStr = (returnStr == "")?"2单3双":returnStr+",2单3双"
						break;
					case "32":
						returnStr = (returnStr == "")?"3单2双":returnStr+",3单2双"
						break;
					default:
						break;
				}
			}
			return returnStr;
		}
		public function getLastThreePlaysBybetNumbers(numbers:String):String
		{
			var numbersArray:Array = numbers.split(",");
			if(numbersArray.length == 5)
			{
				if(numbersArray[2] != numbersArray[3] && numbersArray[2] != numbersArray[4] && numbersArray[4] != numbersArray[3])
				{
					return "组六";
				}
				else if((numbersArray[2] == numbersArray[3]) && (numbersArray[2] == numbersArray[4]))
				{
					return "豹子";
				}
				else
				{
					return "组三";
				}
			}
			else if(numbersArray.length == 3)
			{
				if(numbersArray[0] != numbersArray[1] && numbersArray[0] != numbersArray[2] && numbersArray[1] != numbersArray[2])
				{
					return "组六";
				}
				else if((numbersArray[0] == numbersArray[1]) && (numbersArray[0] == numbersArray[2]))
				{
					return "豹子";
				}
				else
				{
					return "组三";
				}
			}
			else
				return ""
		}
		public function showToolTips(evt:ToolTipEvent):void{
			var point:Point = new Point(evt.currentTarget.width-evt.toolTip.width+3,evt.currentTarget.height+3);//自行设置显示的位置去..
			point = evt.currentTarget.localToGlobal(point);
			evt.toolTip.x = point.x;
			evt.toolTip.y = point.y;
		}
		public function arrayToString(arr:Array):String
		{
			if(arr!= null && arr.length != 0)
				return arr.toString();
			else
				return "*"
		}
		public function getZSTlinkByLotteryId(lotteryId:String):String
		{
			//测试开奖页面显示
			//return 'http://192.168.1.35:8080/CPDraw/front/lottery?item=11&type=11&lotteryId='+lotteryId;
			//
			var tempUrl:String = '';
			switch(CurrentLotteryInfo.lotteryId)
			{
				case '12':{tempUrl = 'http://trend.lecai.com/cqssc/threeStarsBaseTrend.action';break;}
				case '13':{tempUrl = 'http://trend.lecai.com/jxssc/threeStarsBaseTrend.action?onlyBody=false';break;}
				case '14':{tempUrl = 'http://zsfx.xjflcp.com/cjwssc/view/ssc_zst5-xjssc.html';break;}
				case '51':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/ssczst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '53':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/ssczst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '55':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/ssczst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '56':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/ssczst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '57':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '58':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '59':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '66':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '41':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '42':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '43':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '44':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '45':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '46':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '47':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '48':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '49':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '73':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '74':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '75':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '76':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '86':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '61':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/_11x5zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '63':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/_11x5zst.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '4':{tempUrl = 'http://trend.baidu.lecai.com/gd11x5/baseTrend.action?onlyBody=false';break;}
				case '5':{tempUrl = 'http://trend.lecai.com/jx11x5/baseTrend.action?onlyBody=false';break;}
				case '15':{tempUrl = 'http://zst.cjcp.com.cn/cjwssl/view/ssl_danxuan.html';break;}
				case '16':{tempUrl = 'http://trend.lecai.com/sd11x5/?lottery_type=20&';break;}
				case '17':{tempUrl = 'http://trend.lecai.com/pl3/baseTrend.action';break;}
				case '18':{tempUrl = 'http://trend.caipiao.163.com/pl5/';break;}
				case '19':{tempUrl = 'http://trend.lecai.com/fc3d/baseTrend.action';break;}
				case '71':{tempUrl = 'http://zst.cjcp.com.cn/cjwssc/view/ssc_zst5-tianjinssc.html';break;}
				case '9':{tempUrl = 'http://zst.cjcp.com.cn/cjwkl8/view/kl8_fenbu.html';break;}
				case '10':{tempUrl = 'http://www.caipiaokong.com/chart/bjpks.html';break;}
				case '26':{tempUrl = 'http://trend.caipiao.163.com/jskuai3/';break;}
				case '72':{tempUrl = CurrentBusinessInfo.serverUrl_net+"/charts/hgssc.aspx?"+CurrentLotteryInfo.lotteryId;break;}
				case '82':{tempUrl = "http://data.ahfc.gov.cn/k3/index.html";break;}
				case '83':{tempUrl = "http://zst.hbfcw.gov.cn/chart/hbk3/index";break;}
				case '85':{tempUrl = "http://new11x5.js-lottery.com/zhoushi.html";break;}
				case '77':{tempUrl = "http://www.shlottery.gov.cn/shsportsweb/html/tycp/lottery_zst/List/index.htm?code=lottery_11x5";break;}
				case '78':{tempUrl = "http://zst.cjcp.com.cn/cjw11x5_qs/view/11x5_jiben-5-ah11x5-11.html";break;}
				default:
				{
					tempUrl = '';
					break;
				}
			}
			return tempUrl;
		}
	}
}