local vip = {
[1] = {id=1,vip_level=0,exp=0,turn_card=0,vip_card=0,clearall_card=0,mystery_shop_time=0,normal_shop=30,pay_Ladder=20,change_enemy=0,club_refresh=1,EndlessTower=0,ExpTower=0,MoneyTower=0,pay_power=1,power_reward="",card_bag=0,Wash=0,buygold=40,Autofight=0,gift_treasure="",price="",sale="",description1="",description2="每日普通商店可刷新30次;每日可购买天梯赛挑战次数20次;每日俱乐部可免费刷新1次;每日体力值购买1次;每日使用摇钱树40次;"},
[2] = {id=2,vip_level=1,exp=10,turn_card=1,vip_card=0,clearall_card=20,mystery_shop_time=20,normal_shop=50,pay_Ladder=30,change_enemy=0,club_refresh=2,EndlessTower=0,ExpTower=0,MoneyTower=0,pay_power=2,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=5,Wash=0,buygold=80,Autofight=0,gift_treasure={{4,1,10000},{1,71000001,200},{1,72000001,100},{1,1000,15}},price=500,sale=18,description1="开启VIP翻牌",description2="每日可领取扫荡券20个;神秘商店存在时间延长20s;每日普通商店可刷新50次;每日可购买天梯赛挑战次数30次;每日俱乐部可免费刷新2次;每日体力值购买2次;卡牌背包容量提升至55格;每日使用摇钱树80次;"},
[3] = {id=3,vip_level=2,exp=300,turn_card=1,vip_card=0,clearall_card=30,mystery_shop_time=40,normal_shop=60,pay_Ladder=35,change_enemy=0,club_refresh=3,EndlessTower=0,ExpTower=0,MoneyTower=0,pay_power=3,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=5,Wash=0,buygold=120,Autofight=1,gift_treasure={{4,1,20000},{1,72000001,100},{1,73000001,100},{1,1000,20}},price=600,sale=38,description1="领取体力额外获得奖励",description2="每日可领取扫荡券30个;神秘商店存在时间延长40s;每日普通商店可刷新60次;每日可购买天梯赛挑战次数35次;每日俱乐部可免费刷新3次;每日体力值购买3次;卡牌背包容量提升至55格;每日使用摇钱树120次;"},
[4] = {id=4,vip_level=3,exp=500,turn_card=1,vip_card=0,clearall_card=40,mystery_shop_time=60,normal_shop=70,pay_Ladder=40,change_enemy=0,club_refresh=4,EndlessTower=0,ExpTower=0,MoneyTower=0,pay_power=4,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=10,Wash=0,buygold=160,Autofight=1,gift_treasure={{4,1,30000},{1,73000001,100},{1,74000001,40},{1,20000008,30}},price=1000,sale=58,description1="开启自动战斗",description2="每日可领取扫荡券40个;神秘商店存在时间延长60s;每日普通商店可刷新70次;每日可购买天梯赛挑战次数40次;每日俱乐部可免费刷新4次;每日体力值购买4次;卡牌背包容量提升至60格;每日使用摇钱树160次;"},
[5] = {id=5,vip_level=4,exp=1000,turn_card=1,vip_card=0,clearall_card=50,mystery_shop_time=80,normal_shop=80,pay_Ladder=45,change_enemy=0,club_refresh=5,EndlessTower=0,ExpTower=0,MoneyTower=0,pay_power=5,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=10,Wash=0,buygold=200,Autofight=1,gift_treasure={{4,1,40000},{1,74000001,40},{1,20000003,10},{1,2000,10}},price=1200,sale=88,description1="",description2="每日可领取扫荡券50个;神秘商店存在时间延长80s;每日普通商店可刷新80次;每日可购买天梯赛挑战次数45次;每日俱乐部可免费刷新5次;每日体力值购买5次;卡牌背包容量提升至60格;每日使用摇钱树200次;"},
[6] = {id=6,vip_level=5,exp=2000,turn_card=1,vip_card=0,clearall_card=60,mystery_shop_time=100,normal_shop=90,pay_Ladder=50,change_enemy=0,club_refresh=6,EndlessTower=0,ExpTower=0,MoneyTower=0,pay_power=6,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=15,Wash=1,buygold=240,Autofight=1,gift_treasure={{2,31099,5},{1,75000001,40},{1,72000004,5},{1,72000003,3}},price=1500,sale=128,description1="开启钻石洗练",description2="每日可领取扫荡券60个;神秘商店存在时间延长100s;每日普通商店可刷新90次;每日可购买天梯赛挑战次数50次;每日俱乐部可免费刷新6次;每日体力值购买6次;卡牌背包容量提升至65格;每日使用摇钱树240次;"},
[7] = {id=7,vip_level=6,exp=3000,turn_card=1,vip_card=0,clearall_card=80,mystery_shop_time=120,normal_shop=100,pay_Ladder=55,change_enemy=0,club_refresh=7,EndlessTower=0,ExpTower=0,MoneyTower=0,pay_power=7,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=15,Wash=1,buygold=280,Autofight=1,gift_treasure={{2,41099,3},{1,73000003,4},{1,91000006,4},{1,2000,15}},price=2000,sale=208,description1="",description2="每日可领取扫荡券80个;神秘商店存在时间延长120s;每日普通商店可刷新100次;每日可购买天梯赛挑战次数55次;每日俱乐部可免费刷新7次;每日体力值购买7次;卡牌背包容量提升至65格;每日使用摇钱树280次;"},
[8] = {id=8,vip_level=7,exp=5000,turn_card=1,vip_card=0,clearall_card=100,mystery_shop_time=140,normal_shop=110,pay_Ladder=60,change_enemy=0,club_refresh=8,EndlessTower=0,ExpTower=0,MoneyTower=1,pay_power=8,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=20,Wash=1,buygold=320,Autofight=1,gift_treasure={{2,41099,4},{1,74000003,3},{1,91000007,2},{1,20000010,10}},price=2500,sale=308,description1="开启极限挑战重置",description2="每日可领取扫荡券100个;神秘商店存在时间延长140s;每日普通商店可刷新110次;每日可购买天梯赛挑战次数60次;每日俱乐部可免费刷新8次;每日体力值购买8次;卡牌背包容量提升至70格;每日使用摇钱树320次;"},
[9] = {id=9,vip_level=8,exp=7000,turn_card=1,vip_card=0,clearall_card=120,mystery_shop_time=160,normal_shop=120,pay_Ladder=65,change_enemy=0,club_refresh=9,EndlessTower=0,ExpTower=0,MoneyTower=1,pay_power=9,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=20,Wash=1,buygold=360,Autofight=1,gift_treasure={{2,41099,5},{1,91000008,2},{1,20000011,10}},price=3000,sale=408,description1="",description2="每日可领取扫荡券120个;神秘商店存在时间延长160s;每日普通商店可刷新120次;每日可购买天梯赛挑战次数65次;每日俱乐部可免费刷新9次;每日体力值购买9次;卡牌背包容量提升至70格;每日使用摇钱树360次;"},
[10] = {id=10,vip_level=9,exp=10000,turn_card=1,vip_card=0,clearall_card=140,mystery_shop_time=180,normal_shop=130,pay_Ladder=70,change_enemy=0,club_refresh=10,EndlessTower=0,ExpTower=1,MoneyTower=1,pay_power=10,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=25,Wash=1,buygold=400,Autofight=1,gift_treasure={{2,51099,2},{1,75000003,3},{1,91000009,1},{1,20000011,10}},price=3500,sale=508,description1="开启极速时刻重置",description2="每日可领取扫荡券140个;神秘商店存在时间延长180s;每日普通商店可刷新130次;每日可购买天梯赛挑战次数70次;每日俱乐部可免费刷新10次;每日体力值购买10次;卡牌背包容量提升至75格;每日使用摇钱树400次;"},
[11] = {id=11,vip_level=10,exp=15000,turn_card=1,vip_card=0,clearall_card=160,mystery_shop_time=200,normal_shop=140,pay_Ladder=75,change_enemy=0,club_refresh=11,EndlessTower=0,ExpTower=1,MoneyTower=1,pay_power=11,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=25,Wash=1,buygold=440,Autofight=1,gift_treasure={{2,51099,3},{1,73000004,2},{1,91000009,2},{1,20000012,10}},price=4000,sale=608,description1="",description2="每日可领取扫荡券160个;神秘商店存在时间延长200s;每日普通商店可刷新140次;每日可购买天梯赛挑战次数75次;每日俱乐部可免费刷新11次;每日体力值购买11次;卡牌背包容量提升至75格;每日使用摇钱树440次;"},
[12] = {id=12,vip_level=11,exp=20000,turn_card=1,vip_card=0,clearall_card=180,mystery_shop_time=220,normal_shop=160,pay_Ladder=80,change_enemy=0,club_refresh=12,EndlessTower=1,ExpTower=1,MoneyTower=1,pay_power=12,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=30,Wash=1,buygold=480,Autofight=1,gift_treasure={{2,51099,4},{1,91000010,1},{1,20000012,15}},price=5000,sale=708,description1="开启无尽回廊重置",description2="每日可领取扫荡券180个;神秘商店存在时间延长220s;每日普通商店可刷新160次;每日可购买天梯赛挑战次数80次;每日俱乐部可免费刷新12次;每日体力值购买12次;卡牌背包容量提升至80格;每日使用摇钱树480次;"},
[13] = {id=13,vip_level=12,exp=40000,turn_card=1,vip_card=1,clearall_card=200,mystery_shop_time=240,normal_shop=180,pay_Ladder=85,change_enemy=0,club_refresh=13,EndlessTower=1,ExpTower=1,MoneyTower=1,pay_power=13,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=30,Wash=1,buygold=520,Autofight=1,gift_treasure={{2,51099,5},{1,74000004,1},{1,91000010,2},{1,20000012,20}},price=7000,sale=808,description1="开启VIP抽卡",description2="每日可领取扫荡券200个;神秘商店存在时间延长240s;每日普通商店可刷新180次;每日可购买天梯赛挑战次数85次;每日俱乐部可免费刷新13次;每日体力值购买13次;卡牌背包容量提升至80格;每日使用摇钱树520次;"},
[14] = {id=14,vip_level=13,exp=80000,turn_card=1,vip_card=1,clearall_card=220,mystery_shop_time=260,normal_shop=200,pay_Ladder=90,change_enemy=0,club_refresh=14,EndlessTower=1,ExpTower=1,MoneyTower=1,pay_power=14,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=35,Wash=1,buygold=560,Autofight=1,gift_treasure={{2,54002,1},{1,91000011,1},{1,20000012,25}},price=10000,sale=908,description1="",description2="每日可领取扫荡券220个;神秘商店存在时间延长260s;每日普通商店可刷新200次;每日可购买天梯赛挑战次数90次;每日俱乐部可免费刷新14次;每日体力值购买14次;卡牌背包容量提升至85格;每日使用摇钱树560次;"},
[15] = {id=15,vip_level=14,exp=150000,turn_card=1,vip_card=1,clearall_card=240,mystery_shop_time=280,normal_shop=220,pay_Ladder=95,change_enemy=0,club_refresh=15,EndlessTower=1,ExpTower=1,MoneyTower=1,pay_power=15,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=35,Wash=1,buygold=600,Autofight=1,gift_treasure={{2,53002,1},{1,75000004,1},{1,91000011,2},{1,20000012,30}},price=15000,sale=1008,description1="",description2="每日可领取扫荡券240个;神秘商店存在时间延长280s;每日普通商店可刷新220次;每日可购买天梯赛挑战次数95次;每日俱乐部可免费刷新15次;每日体力值购买15次;卡牌背包容量提升至85格;每日使用摇钱树600次;"},
[16] = {id=16,vip_level=15,exp=300000,turn_card=1,vip_card=1,clearall_card=260,mystery_shop_time=300,normal_shop=240,pay_Ladder=100,change_enemy=1,club_refresh=16,EndlessTower=1,ExpTower=1,MoneyTower=1,pay_power=16,power_reward={{1,20},{2,5000},{3,10},{4,1}},card_bag=40,Wash=1,buygold=640,Autofight=1,gift_treasure={{2,51005,1},{1,91000012,1},{1,20000012,35}},price=25000,sale=1108,description1="开启天梯刷新对手功能",description2="每日可领取扫荡券260个;神秘商店存在时间延长300s;每日普通商店可刷新240次;每日可购买天梯赛挑战次数100次;每日俱乐部可免费刷新16次;每日体力值购买16次;卡牌背包容量提升至90格;每日使用摇钱树640次;"},
}
return vip
