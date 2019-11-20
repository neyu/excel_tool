local payprice = {
[101] = {id=101,type=1,start=1,stop=3,money_tpye=0,number=5},
[102] = {id=102,type=1,start=4,stop=5,money_tpye=0,number=10},
[103] = {id=103,type=1,start=6,stop=7,money_tpye=0,number=10},
[104] = {id=104,type=1,start=8,stop=9,money_tpye=0,number=10},
[105] = {id=105,type=1,start=10,stop=12,money_tpye=0,number=15},
[106] = {id=106,type=1,start=13,stop=16,money_tpye=0,number=15},
[107] = {id=107,type=1,start=17,stop=25,money_tpye=0,number=15},
[108] = {id=108,type=1,start=26,stop=40,money_tpye=0,number=20},
[109] = {id=109,type=1,start=41,stop=80,money_tpye=0,number=50},
[110] = {id=110,type=1,start=81,stop=99999,money_tpye=0,number=100},
[200] = {id=200,type=2,start=1,stop=1,money_tpye=1,number=0},
[201] = {id=201,type=2,start=2,stop=3,money_tpye=1,number=10},
[202] = {id=202,type=2,start=4,stop=5,money_tpye=1,number=15},
[203] = {id=203,type=2,start=6,stop=7,money_tpye=1,number=20},
[204] = {id=204,type=2,start=8,stop=9,money_tpye=1,number=25},
[205] = {id=205,type=2,start=10,stop=12,money_tpye=1,number=30},
[206] = {id=206,type=2,start=13,stop=16,money_tpye=1,number=100},
[207] = {id=207,type=2,start=17,stop=99999,money_tpye=1,number=300},
[301] = {id=301,type=3,start=1,stop=3,money_tpye=0,number=10},
[302] = {id=302,type=3,start=4,stop=5,money_tpye=0,number=20},
[303] = {id=303,type=3,start=6,stop=7,money_tpye=0,number=30},
[304] = {id=304,type=3,start=8,stop=9,money_tpye=0,number=40},
[305] = {id=305,type=3,start=10,stop=12,money_tpye=0,number=50},
[306] = {id=306,type=3,start=13,stop=16,money_tpye=0,number=60},
[307] = {id=307,type=3,start=17,stop=20,money_tpye=0,number=80},
[308] = {id=308,type=3,start=21,stop=24,money_tpye=0,number=100},
[309] = {id=309,type=3,start=25,stop=29,money_tpye=0,number=150},
[310] = {id=310,type=3,start=30,stop=34,money_tpye=0,number=200},
[311] = {id=311,type=3,start=35,stop=45,money_tpye=0,number=250},
[312] = {id=312,type=3,start=46,stop=99999,money_tpye=0,number=500},
[400] = {id=400,type=4,start=1,stop=10,money_tpye=0,number=10},
[401] = {id=401,type=4,start=11,stop=20,money_tpye=0,number=20},
[402] = {id=402,type=4,start=21,stop=30,money_tpye=0,number=30},
[403] = {id=403,type=4,start=31,stop=50,money_tpye=0,number=50},
[404] = {id=404,type=4,start=51,stop=100,money_tpye=0,number=100},
[405] = {id=405,type=4,start=101,stop=150,money_tpye=0,number=200},
[406] = {id=406,type=4,start=151,stop=200,money_tpye=0,number=300},
[407] = {id=407,type=4,start=201,stop=99999,money_tpye=0,number=1000},
[501] = {id=501,type=5,start=1,stop=2,money_tpye=0,number=50},
[502] = {id=502,type=5,start=3,stop=4,money_tpye=0,number=100},
[503] = {id=503,type=5,start=5,stop=6,money_tpye=0,number=150},
[504] = {id=504,type=5,start=7,stop=7,money_tpye=0,number=200},
[505] = {id=505,type=5,start=8,stop=8,money_tpye=0,number=250},
[506] = {id=506,type=5,start=9,stop=9,money_tpye=0,number=300},
[507] = {id=507,type=5,start=10,stop=10,money_tpye=0,number=350},
[508] = {id=508,type=5,start=11,stop=11,money_tpye=0,number=400},
[509] = {id=509,type=5,start=12,stop=12,money_tpye=0,number=450},
[510] = {id=510,type=5,start=13,stop=13,money_tpye=0,number=500},
[511] = {id=511,type=5,start=14,stop=14,money_tpye=0,number=550},
[512] = {id=512,type=5,start=15,stop=15,money_tpye=0,number=600},
[600] = {id=600,type=6,start=1,stop=1,money_tpye=0,number=0},
[601] = {id=601,type=6,start=2,stop=2,money_tpye=0,number=50},
[602] = {id=602,type=6,start=3,stop=5,money_tpye=0,number=100},
[603] = {id=603,type=6,start=6,stop=10,money_tpye=0,number=400},
[604] = {id=604,type=6,start=11,stop=99999,money_tpye=0,number=1000},
[605] = {id=605,type=6,start=1,stop=1,money_tpye=0,number=0},
[700] = {id=700,type=7,start=1,stop=10,money_tpye=0,number=5},
[701] = {id=701,type=7,start=11,stop=20,money_tpye=0,number=10},
[702] = {id=702,type=7,start=21,stop=30,money_tpye=0,number=10},
[703] = {id=703,type=7,start=31,stop=50,money_tpye=0,number=15},
[704] = {id=704,type=7,start=51,stop=60,money_tpye=0,number=15},
[705] = {id=705,type=7,start=61,stop=70,money_tpye=0,number=15},
[706] = {id=706,type=7,start=71,stop=80,money_tpye=0,number=20},
[707] = {id=707,type=7,start=81,stop=90,money_tpye=0,number=20},
[708] = {id=708,type=7,start=91,stop=100,money_tpye=0,number=20},
[709] = {id=709,type=7,start=101,stop=110,money_tpye=0,number=25},
[710] = {id=710,type=7,start=111,stop=120,money_tpye=0,number=25},
[711] = {id=711,type=7,start=121,stop=130,money_tpye=0,number=30},
[712] = {id=712,type=7,start=131,stop=140,money_tpye=0,number=30},
[713] = {id=713,type=7,start=141,stop=150,money_tpye=0,number=35},
[714] = {id=714,type=7,start=151,stop=160,money_tpye=0,number=35},
[715] = {id=715,type=7,start=161,stop=170,money_tpye=0,number=40},
[716] = {id=716,type=7,start=171,stop=180,money_tpye=0,number=40},
[717] = {id=717,type=7,start=181,stop=200,money_tpye=0,number=45},
[718] = {id=718,type=7,start=201,stop=220,money_tpye=0,number=45},
[719] = {id=719,type=7,start=221,stop=240,money_tpye=0,number=50},
[801] = {id=801,type=11,start=1,stop=20,money_tpye=0,number=10},
[802] = {id=802,type=11,start=21,stop=40,money_tpye=0,number=12},
[803] = {id=803,type=11,start=41,stop=60,money_tpye=0,number=15},
[804] = {id=804,type=11,start=61,stop=80,money_tpye=0,number=20},
[805] = {id=805,type=11,start=81,stop=100,money_tpye=0,number=25},
[806] = {id=806,type=11,start=101,stop=140,money_tpye=0,number=30},
[807] = {id=807,type=11,start=141,stop=200,money_tpye=0,number=40},
[808] = {id=808,type=11,start=201,stop=300,money_tpye=0,number=50},
[809] = {id=809,type=11,start=301,stop=500,money_tpye=0,number=100},
[810] = {id=810,type=11,start=501,stop=99999,money_tpye=0,number=500},
[811] = {id=811,type=9,start=1,stop=1,money_tpye=2,number=2000},
[812] = {id=812,type=10,start=1,stop=1,money_tpye=2,number=1000},
[901] = {id=901,type=8,start=1,stop=3,money_tpye=0,number=10},
[902] = {id=902,type=8,start=4,stop=5,money_tpye=0,number=10},
[903] = {id=903,type=8,start=6,stop=7,money_tpye=0,number=10},
[904] = {id=904,type=8,start=8,stop=9,money_tpye=0,number=10},
[905] = {id=905,type=8,start=10,stop=12,money_tpye=0,number=10},
[906] = {id=906,type=8,start=13,stop=16,money_tpye=0,number=10},
[907] = {id=907,type=8,start=17,stop=25,money_tpye=0,number=10},
[908] = {id=908,type=8,start=26,stop=40,money_tpye=0,number=10},
[909] = {id=909,type=8,start=41,stop=80,money_tpye=0,number=10},
[910] = {id=910,type=8,start=81,stop=99999,money_tpye=0,number=10},
}
return payprice
