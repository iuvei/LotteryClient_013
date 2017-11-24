package com.xazc.single
{
	import mx.resources.ResourceManager;

	public class lotteryNameHelp
	{
		public function lotteryNameHelp()
		{
		}
		
		public static function getCaizhong(id:String):String{
			
			return ResourceManager.getInstance().getString("LotteryPlayNames","lottery_"+id);
			//return "";
		}
		public static function getWanfa(lottery_id:String,game_id:String,sntuo:int):String{
			var lotteryPlayIdName = '';
			switch(Util.getInstance().getLotteryTypesByLotteryId(lottery_id))
			{
				case "ssc":
				case "11x5":
				case "happy8":
				case "kuai3":
				case "fc3d":
				{
					var gameIdStr:String = game_id.substr(lottery_id.length,game_id.length);
					lotteryPlayIdName = ResourceManager.getInstance().getString("LotteryPlayNames","lottery_"+Util.getInstance().getLotteryTypesByLotteryId(lottery_id)+"_"+gameIdStr+"_"+sntuo);
					break;
				}
				default:
				{
					lotteryPlayIdName = ResourceManager.getInstance().getString("LotteryPlayNames","lottery_"+lottery_id+"_"+game_id+"_"+sntuo);
					break;
				}
			}
			return lotteryPlayIdName;
		}
	}
}
