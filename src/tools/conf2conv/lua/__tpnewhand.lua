local newhand = {
[101] = {id=101,backId=101,wordId=100101,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=0,functionId=0,shield=""},
[102] = {id=102,backId=101,wordId=100102,maskRadius="",bShowMask="",animation="",picFilename="UI_guide_yd_tg.png;240:93",npcName="",tagId=5000,functionId=0,shield="摇杆"},
[103] = {id=103,backId=101,wordId=100103,maskRadius="",bShowMask="",animation="",picFilename="yd_csd.png;240:93",npcName="",tagId=5000,functionId=0,shield="摇杆"},
[201] = {id=201,backId=201,wordId=100201,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2001,functionId=0,shield="关卡1"},
[202] = {id=202,backId=201,wordId=100202,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=103,functionId=0,shield="挑战"},
[301] = {id=301,backId=201,wordId=100301,maskRadius="",bShowMask="",animation="zhandou_zhidingdian;500:250",picFilename="jiantouzhishi2.png;240:93",npcName="",tagId=0,functionId=0,shield="触发小怪"},
[302] = {id=302,backId=201,wordId=100302,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=0,functionId=0,shield="普通攻击"},
[303] = {id=303,backId=201,wordId=100303,maskRadius="",bShowMask="",animation="zhandou_zhidingdian;1400:250",picFilename="jiantouzhishi2.png;240:93",npcName="",tagId=0,functionId=0,shield="触发小怪"},
[304] = {id=304,backId=201,wordId=100304,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=1,functionId=0,shield="任意攻击"},
[305] = {id=305,backId=401,wordId=100305,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2,functionId=1001,shield="占位"},
[306] = {id=306,backId=401,wordId=100306,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2002,functionId=0,shield="回城"},
[401] = {id=401,backId=401,wordId=100401,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=1001,functionId=102,shield="dialog"},
[402] = {id=402,backId=401,wordId=100402,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=1001,functionId=102,shield="技能开启"},
[501] = {id=501,backId=401,wordId=100501,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=106,functionId=0,shield="主角"},
[502] = {id=502,backId=401,wordId=100502,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=503,functionId=0,shield="技能"},
[503] = {id=503,backId=401,wordId=100503,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=125,functionId=0,shield="主角第一个技能，升级"},
[504] = {id=504,backId=601,wordId=100504,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=102,functionId=0,shield="第一个天赋"},
[505] = {id=505,backId=601,wordId=100505,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=125,functionId=0,shield="升级"},
[506] = {id=506,backId=601,wordId=100506,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=125,functionId=0,shield="升级"},
[507] = {id=507,backId=601,wordId=100507,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=125,functionId=0,shield="升级"},
[508] = {id=508,backId=601,wordId=100508,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=125,functionId=0,shield="升级"},
[509] = {id=509,backId=601,wordId=100509,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=125,functionId=0,shield="升级"},
[510] = {id=510,backId=601,wordId=100510,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=100,functionId=0,shield="关闭"},
[511] = {id=511,backId=601,wordId=100511,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=101,functionId=0,shield="关闭"},
[512] = {id=512,backId=601,wordId=100512,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=99,functionId=0,shield="关闭"},
[601] = {id=601,backId=701,wordId=100601,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId="",functionId=0,shield="dialog"},
[701] = {id=701,backId=701,wordId=100701,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2002,functionId=0,shield="关卡2"},
[702] = {id=702,backId=701,wordId=100702,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=103,functionId=0,shield="挑战"},
[703] = {id=703,backId=704,wordId=100703,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=3,functionId=1002,shield="占位"},
[704] = {id=704,backId=704,wordId=100704,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2003,functionId=0,shield="选择关卡"},
[705] = {id=705,backId=704,wordId=100705,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2003,functionId=0,shield="关卡3"},
[706] = {id=706,backId=704,wordId=100706,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=103,functionId=0,shield="挑战"},
[707] = {id=707,backId=801,wordId=100707,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=4,functionId=1003,shield="占位"},
[708] = {id=708,backId=801,wordId=100708,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2002,functionId=0,shield="回城"},
[801] = {id=801,backId=801,wordId=100801,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=1002,functionId=100,shield="dialog"},
[802] = {id=802,backId=801,wordId=100802,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=1002,functionId=100,shield="武器强化开启"},
[901] = {id=901,backId=801,wordId=100901,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=503,functionId="",shield="强化面板"},
[902] = {id=902,backId=801,wordId=100902,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=440,functionId=0,shield="强化"},
[903] = {id=903,backId=1001,wordId=100903,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=440,functionId=0,shield="强化"},
[904] = {id=904,backId=1001,wordId=100904,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=440,functionId=0,shield="强化"},
[905] = {id=905,backId=1001,wordId=100905,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=101,functionId=0,shield="关闭"},
[1001] = {id=1001,backId=1101,wordId=101001,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=1,functionId=0,shield="dialog"},
[1101] = {id=1101,backId=1101,wordId=101101,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=3004,functionId=0,shield="关卡4"},
[1102] = {id=1102,backId=1101,wordId=101102,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=103,functionId=0,shield="挑战"},
[1103] = {id=1103,backId=1301,wordId=101103,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=4,functionId=1004,shield="占位"},
[1104] = {id=1104,backId=1301,wordId=101104,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2003,functionId=0,shield="选择关卡"},
[1301] = {id=1301,backId=1301,wordId=101301,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2005,functionId=0,shield="关卡5"},
[1302] = {id=1302,backId=1301,wordId=101302,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=103,functionId=0,shield="挑战"},
[1303] = {id=1303,backId=1401,wordId=101303,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=5,functionId=1005,shield="占位"},
[1304] = {id=1304,backId=1401,wordId=101304,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2002,functionId=0,shield="回城"},
[1401] = {id=1401,backId=1401,wordId=101401,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=600,functionId=111,shield="dialog"},
[1402] = {id=1402,backId=1401,wordId=101402,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=600,functionId=111,shield="任务开启"},
[1501] = {id=1501,backId=1401,wordId=101501,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=10001001,functionId=0,shield="领取"},
[1601] = {id=1601,backId=1601,wordId=101601,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=700,functionId=112,shield="dialog"},
[1602] = {id=1602,backId=1601,wordId=101602,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=700,functionId=112,shield="招募开启"},
[1701] = {id=1701,backId=1601,wordId=101701,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=510,functionId=0,shield="点击探员"},
[1702] = {id=1702,backId=1601,wordId=101702,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2001,functionId=0,shield="增加性格材料"},
[1703] = {id=1703,backId=1601,wordId=101703,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2001,functionId=0,shield="增加性格材料"},
[1704] = {id=1704,backId=1601,wordId=101704,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2001,functionId=0,shield="增加性格材料"},
[1705] = {id=1705,backId=1601,wordId=101705,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=301,functionId=0,shield="打赏"},
[1706] = {id=1706,backId=1601,wordId=101706,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=102,functionId=0,shield="派出探员"},
[1707] = {id=1707,backId=1601,wordId=101707,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=0,functionId=0,shield="点击探员"},
[1708] = {id=1708,backId=1601,wordId=101708,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=100,functionId=0,shield="加速"},
[1709] = {id=1709,backId=1601,wordId=101709,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=0,functionId=0,shield="点击探员"},
[1710] = {id=1710,backId=1801,wordId=101710,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=0,functionId=0,shield="关闭奖励面板"},
[1711] = {id=1711,backId=1801,wordId=101711,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=90,functionId=0,shield="关闭招募界面"},
[1801] = {id=1801,backId=1801,wordId=101801,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=1003,functionId=103,shield="dialog"},
[1802] = {id=1802,backId=1801,wordId=101802,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=1003,functionId=103,shield="阵容开启"},
[1901] = {id=1901,backId=1801,wordId=101901,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=142,functionId=0,shield="阵容面板"},
[1902] = {id=1902,backId=2001,wordId=101902,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=10,functionId=0,shield="拖拽"},
[1903] = {id=1903,backId=2001,wordId=101903,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=146,functionId=0,shield="拖拽"},
[1904] = {id=1904,backId=2001,wordId=101904,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=100,functionId=0,shield="关闭"},
[2001] = {id=2001,backId=2001,wordId=102001,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2006,functionId=0,shield="关卡6"},
[2002] = {id=2002,backId=2001,wordId=102002,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=103,functionId=0,shield="挑战"},
[2003] = {id=2003,backId=2101,wordId=102003,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=7,functionId=1006,shield="占位"},
[2004] = {id=2004,backId=2101,wordId=102004,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2002,functionId=0,shield="回城"},
[1201] = {id=1201,backId=1301,wordId=101201,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=101,functionId=0,shield="一键换装"},
[1202] = {id=1202,backId=1301,wordId=101202,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=1,functionId=0,shield="dialog"},
[2101] = {id=2101,backId=2101,wordId=102101,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2007,functionId=0,shield="关卡7"},
[2102] = {id=2102,backId=2101,wordId=102102,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=103,functionId=0,shield="挑战"},
[2103] = {id=2103,backId=2201,wordId=102103,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=8,functionId=1007,shield="占位"},
[2104] = {id=2104,backId=2201,wordId=102104,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2002,functionId=0,shield="回城"},
[2201] = {id=2201,backId=2201,wordId=102201,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=1001,functionId=104,shield="dialog"},
[2202] = {id=2202,backId=2201,wordId=102202,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=1001,functionId=104,shield="训练开启"},
[2301] = {id=2301,backId=2201,wordId=102301,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=107,functionId=0,shield="人物面板"},
[2302] = {id=2302,backId=2201,wordId=102302,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=0,functionId=0,shield="滑动"},
[2303] = {id=2303,backId=2201,wordId=102303,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=505,functionId=0,shield="训练面板"},
[2304] = {id=2304,backId=2201,wordId=102304,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=104,functionId=0,shield="添加"},
[2305] = {id=2305,backId=2201,wordId=102305,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2001,functionId=0,shield="陪练卡"},
[2306] = {id=2306,backId=2201,wordId=102306,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=103,functionId=0,shield="确定"},
[2307] = {id=2307,backId=2201,wordId=102307,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=109,functionId=0,shield="训练"},
[2308] = {id=2308,backId=2401,wordId=102308,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=101,functionId=0,shield="关闭"},
[2309] = {id=2309,backId=2401,wordId=102309,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=99,functionId=0,shield="关闭"},
[2401] = {id=2401,backId=2401,wordId=102401,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId="",functionId=0,shield="dialog"},
[2501] = {id=2501,backId=2501,wordId=102501,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=3008,functionId=0,shield="关卡8"},
[2502] = {id=2502,backId=2501,wordId=102502,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=103,functionId=0,shield="挑战"},
[2503] = {id=2503,backId=2601,wordId=102503,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=9,functionId=1008,shield="占位"},
[2504] = {id=2504,backId=2601,wordId=102504,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2003,functionId=0,shield="选择关卡"},
[2601] = {id=2601,backId=2601,wordId=102601,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2009,functionId=0,shield="关卡9"},
[2602] = {id=2602,backId=2601,wordId=102602,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=103,functionId=0,shield="挑战"},
[2603] = {id=2603,backId=2701,wordId=102603,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=10,functionId=1009,shield="占位"},
[2604] = {id=2604,backId=2701,wordId=102604,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2002,functionId=0,shield="回城"},
[2701] = {id=2701,backId=2701,wordId=102701,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=3002,functionId=106,shield="dialog"},
[2702] = {id=2702,backId=2701,wordId=102702,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=3002,functionId=106,shield="俱乐部开启"},
[2801] = {id=2801,backId=2701,wordId=102801,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=105,functionId=0,shield="俱乐部面板"},
[2802] = {id=2802,backId=2801,wordId=102802,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=105,functionId=0,shield="挑战"},
[2803] = {id=2803,backId=2820,wordId=102803,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=3002,functionId=0,shield="开始战斗"},
[2804] = {id=2804,backId=2820,wordId=102804,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=105,functionId=0,shield="团队赛"},
[2805] = {id=2805,backId=2820,wordId=102805,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=10,functionId=0,shield="开始战斗"},
[2806] = {id=2806,backId=2820,wordId=102806,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=101,functionId=0,shield="奖励"},
[2807] = {id=2807,backId=2820,wordId=102807,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=102,functionId=0,shield="碎片兑换"},
[2808] = {id=2808,backId=2820,wordId=102808,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=101,functionId=0,shield="关闭"},
[2809] = {id=2809,backId=2820,wordId=102809,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=101,functionId=0,shield="关闭"},
[2820] = {id=2820,backId=2820,wordId=102820,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=2002,functionId=118,shield="dialog"},
[2821] = {id=2821,backId=2820,wordId=102821,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2002,functionId=118,shield="好友开启"},
[2830] = {id=2830,backId=2820,wordId=102830,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=2,functionId=0,shield="推荐好友"},
[2831] = {id=2831,backId=2820,wordId=102831,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=106,functionId=0,shield="添加"},
[2832] = {id=2832,backId=2901,wordId=102832,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=1000,functionId=0,shield="关闭"},
[2901] = {id=2901,backId=2905,wordId=102901,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=1,functionId=0,shield="dialog"},
[2902] = {id=2902,backId=2905,wordId=102902,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=600,functionId=111,shield="任务面板"},
[2903] = {id=2903,backId=2905,wordId=102903,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId="",functionId="",shield="休止，等待“任务”界面关闭"},
[2904] = {id=2904,backId=2905,wordId=102904,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=1,functionId=0,shield="dialog"},
[2905] = {id=2905,backId=2905,wordId=102905,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId="",functionId="",shield="休止"},
[3001] = {id=3001,backId=3001,wordId=103001,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=3003,functionId=108,shield="天梯开启"},
[3002] = {id=3002,backId=3001,wordId=103002,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=3003,functionId=108,shield="天梯面板"},
[3101] = {id=3101,backId=3001,wordId=103101,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=130,functionId=0,shield="寻找对手"},
[3102] = {id=3102,backId=3001,wordId=103102,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=105,functionId=0,shield="开始战斗"},
[3103] = {id=3103,backId=3302,wordId=103103,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=10,functionId=0,shield="关闭"},
[3201] = {id=3201,backId=3001,wordId=103201,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=1,functionId=0,shield="天梯面板"},
[3301] = {id=3301,backId=3302,wordId=103301,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=150,functionId=0,shield="关闭"},
[3302] = {id=3302,backId=3302,wordId=103302,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId="",functionId="",shield="休止"},
[3401] = {id=3401,backId=3401,wordId=103401,maskRadius="",bShowMask="",animation="",picFilename="junmoxiao.png",npcName="叶修",tagId=2001,functionId=105,shield="卡牌突破开启"},
[3402] = {id=3402,backId=3401,wordId=103402,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=90000001,functionId="",shield="获取指定任务状态"},
[3501] = {id=3501,backId=3401,wordId=103501,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=600,functionId=90000001,shield="任务面板"},
[3502] = {id=3502,backId=3401,wordId=103502,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=90000001,functionId="",shield="领取"},
[3503] = {id=3503,backId=3402,wordId=103503,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=102,functionId="",shield="关闭"},
[3601] = {id=3601,backId=3401,wordId=103601,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=1001,functionId="",shield="角色面板"},
[3602] = {id=3602,backId=3401,wordId=103602,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=31304,functionId="",shield="指定卡牌"},
[3603] = {id=3603,backId=3401,wordId=103603,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId="",functionId="",shield="滚动操作"},
[3604] = {id=3604,backId=3401,wordId=103604,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=506,functionId="",shield="突破"},
[3605] = {id=3605,backId=3401,wordId=103605,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=103,functionId="",shield="空槽位"},
[3606] = {id=3606,backId=3401,wordId=103606,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=32104,functionId="",shield="陪练卡"},
[3607] = {id=3607,backId=3401,wordId=103607,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=111,functionId="",shield="确认"},
[3608] = {id=3608,backId=3401,wordId=103608,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId=110,functionId="",shield="突破"},
[3609] = {id=3609,backId=3609,wordId=103609,maskRadius="",bShowMask="",animation="",picFilename="",npcName="",tagId="",functionId="",shield="休止"},
}
return newhand