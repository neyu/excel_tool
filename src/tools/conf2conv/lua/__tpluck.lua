local luck = {
[1] = {luckID=1,ID=1,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=1},
[2] = {luckID=2,ID=1,name="Ѫ֮��Ϣ",luck=0,attribute={{1,100}},description="����ֵ+100%",location=2},
[3] = {luckID=3,ID=1,name="������ʯ",luck=0,attribute={{5,100}},description="��������+100%",location=3},
[4] = {luckID=4,ID=1,name="��������",luck=0,attribute={{7,100}},description="ħ������+100%",location=4},
[5] = {luckID=5,ID=1,name="Ѫ֮����",luck=0,attribute={{12,100}},description="��������+100%",location=5},
[6] = {luckID=6,ID=1,name="ɽ��֮��",luck=0,attribute={{9,100},{10,100}},description="\"����������+100%,ħ��������+100%\"",location=6},
[7] = {luckID=7,ID=1,name="�������",luck=0,attribute={{14,39},{16,100}},description="\"����+39%,������+100%\"",location=7},
[8] = {luckID=8,ID=2,name="�޼᲻��",luck=0,attribute={{6,100}},description="ħ������+100%",location=1},
[9] = {luckID=9,ID=2,name="Ѫ֮��Ϣ",luck=0,attribute={{1,100}},description="����ֵ+100%",location=2},
[10] = {luckID=10,ID=2,name="������ʯ",luck=0,attribute={{5,100}},description="��������+100%",location=3},
[11] = {luckID=11,ID=2,name="��������",luck=0,attribute={{7,100}},description="ħ������+100%",location=4},
[12] = {luckID=12,ID=2,name="Ѫ֮����",luck=0,attribute={{13,100}},description="ħ������+100%",location=5},
[13] = {luckID=13,ID=2,name="ɽ��֮��",luck=0,attribute={{9,100},{10,100}},description="\"����������+100%,ħ��������+100%\"",location=6},
[14] = {luckID=14,ID=2,name="�������",luck=0,attribute={{14,39},{16,100}},description="\"����+39%,������+100%\"",location=7},
[15] = {luckID=15,ID=3,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=1},
[16] = {luckID=16,ID=3,name="Ѫ֮��Ϣ",luck=0,attribute={{1,100}},description="����ֵ+100%",location=2},
[17] = {luckID=17,ID=3,name="������ʯ",luck=0,attribute={{5,100}},description="��������+100%",location=3},
[18] = {luckID=18,ID=3,name="��������",luck=0,attribute={{7,100}},description="ħ������+100%",location=4},
[19] = {luckID=19,ID=3,name="Ѫ֮����",luck=0,attribute={{12,100}},description="��������+100%",location=5},
[20] = {luckID=20,ID=3,name="ɽ��֮��",luck=0,attribute={{9,100},{10,100}},description="\"����������+100%,ħ��������+100%\"",location=6},
[21] = {luckID=21,ID=3,name="�������",luck=0,attribute={{14,39},{16,100}},description="\"����+39%,������+100%\"",location=7},
[22] = {luckID=22,ID=12002,name="�޼᲻��",luck=0,attribute={{6,100}},description="ħ������+100%",location=""},
[23] = {luckID=23,ID=12002,name="˫���뷢",luck={1,12002,22004},attribute={{16,100}},description="Ǿޱ��֦�봹��պ��һ������������+100%",location=""},
[24] = {luckID=24,ID=12003,name="�޼᲻��",luck=0,attribute={{6,100}},description="ħ������+100%",location=""},
[25] = {luckID=25,ID=12003,name="ս����ǿ",luck={1,12003,22004},attribute={{16,100}},description="ӭ������봹��պ��һ������������+100%",location=""},
[26] = {luckID=26,ID=12102,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[27] = {luckID=27,ID=12102,name="ʵ���Կ�",luck={1,12102,21102},attribute={{16,100}},description="Ѫ����ʹ������һ������������+100%",location=""},
[28] = {luckID=28,ID=11007,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[29] = {luckID=29,ID=22103,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[30] = {luckID=30,ID=22103,name="������֯",luck={1,22103,21303},attribute={{12,100}},description="�ڲ���������ɫһ��������������+100%",location=""},
[31] = {luckID=31,ID=21202,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[32] = {luckID=32,ID=21202,name="���ؼ汸",luck={1,21202,32104},attribute={{7,100}},description="���缫ҹ�뻨����һ������ħ������+100%",location=""},
[33] = {luckID=33,ID=21302,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[34] = {luckID=34,ID=21302,name="�񾭴���",luck={1,21302,41305},attribute={{1,100}},description="��Թ������������һ����������ֵ+100%",location=""},
[35] = {luckID=35,ID=21302,name="Ŀ������",luck={1,21302,22004},attribute={{16,100}},description="��Թ���봹��պ��һ������������+100%",location=""},
[36] = {luckID=36,ID=21102,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[37] = {luckID=37,ID=21102,name="�̵��з�",luck={1,21102,34305},attribute={{5,100}},description="���������չ���һ��������������+100%",location=""},
[38] = {luckID=38,ID=21303,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[39] = {luckID=39,ID=21303,name="������֯",luck={1,21303,22103},attribute={{9,100},{10,100}},description="����ɫ��ڲ���һ����������������+100%��ħ��������+100%",location=""},
[40] = {luckID=40,ID=22004,name="�޼᲻��",luck=0,attribute={{6,100}},description="ħ������+100%",location=""},
[41] = {luckID=41,ID=22004,name="˫������",luck={1,22004,52008},attribute={{1,100}},description="����պ������ѩ����һ����������ֵ+100%",location=""},
[42] = {luckID=42,ID=24004,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[43] = {luckID=43,ID=24004,name="��������",luck={1,24004,31008},attribute={{5,100}},description="�������Ϫһ��������������+100%",location=""},
[44] = {luckID=44,ID=24304,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[45] = {luckID=45,ID=24304,name="�޾����",luck={1,24304,34305},attribute={{5,100}},description="ƽ��ǰ�����չ���һ��������������+100%",location=""},
[46] = {luckID=46,ID=34305,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[47] = {luckID=47,ID=34305,name="����ֱǰ",luck={1,34305,44003},attribute={{1,100}},description="���չ�����������һ����������ֵ+100%",location=""},
[48] = {luckID=48,ID=34305,name="�̵��з�",luck={1,34305,21102},attribute={{9,100},{10,100}},description="���չ���������һ����������������+100%��ħ��������+100%",location=""},
[49] = {luckID=49,ID=32005,name="�޼᲻��",luck=0,attribute={{6,100}},description="ħ������+100%",location=""},
[50] = {luckID=50,ID=32005,name="����֮��",luck={1,32005,42006},attribute={{1,100}},description="��ǹ������ʩһ����������ֵ+100%",location=""},
[51] = {luckID=51,ID=32005,name="ǿ�Ʒ���",luck={1,32005,31304},attribute={{7,100}},description="��ǹ�����˪һ������ħ������+100%",location=""},
[52] = {luckID=52,ID=32104,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[53] = {luckID=53,ID=32104,name="���ط���",luck={1,32104,41204},attribute={{1,100}},description="���������ľ���һ����������ֵ+100%",location=""},
[54] = {luckID=54,ID=32202,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[55] = {luckID=55,ID=32202,name="ǰ������",luck={1,32202,52205},attribute={{1,100}},description="ǳ��������ǧҶ�׷�һ����������ֵ+100%",location=""},
[56] = {luckID=56,ID=32202,name="��������",luck={1,32202,31002},attribute={{5,100}},description="ǳ���������ľһ��������������+100%",location=""},
[57] = {luckID=57,ID=31304,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[58] = {luckID=58,ID=31304,name="ǿ�Ʒ���",luck={1,31304,32005},attribute={{5,100}},description="����˪���ǹһ��������������+100%",location=""},
[59] = {luckID=59,ID=31002,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[60] = {luckID=60,ID=31002,name="˫������",luck={1,31002,51005},attribute={{1,100}},description="��ľ���į����һ����������ֵ+100%",location=""},
[61] = {luckID=61,ID=31002,name="ǿ������",luck={1,31002,44003},attribute={{5,100}},description="��ľ��������һ��������������+100%",location=""},
[62] = {luckID=62,ID=31002,name="�ڻ�����",luck={1,31002,42006},attribute={{7,100}},description="��ľ������ʩһ������ħ������+100%",location=""},
[63] = {luckID=63,ID=31002,name="Σ�����",luck={1,31002,22004},attribute={{16,100}},description="��ľ�봹��պ��һ������������+100%",location=""},
[64] = {luckID=64,ID=31008,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[65] = {luckID=65,ID=31008,name="��·���",luck={1,31008,44003,43102},attribute={{1,100}},description="�Ϫ�������ᡢ����һ����������ֵ+100%",location=""},
[66] = {luckID=66,ID=31008,name="Զ�̲ٿ�",luck={1,31008,41004},attribute={{5,100}},description="�Ϫ������һ��������������+100%",location=""},
[67] = {luckID=67,ID=31008,name="��������",luck={1,31008,31002},attribute={{7,100}},description="�Ϫ���ľһ������ħ������+100%",location=""},
[68] = {luckID=68,ID=31008,name="������ʧ",luck={1,31008,24304},attribute={{9,100},{10,100}},description="�Ϫ��ƽ��ǰһ����������������+100%��ħ��������+100%",location=""},
[69] = {luckID=69,ID=41103,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[70] = {luckID=70,ID=41103,name="�����ط�",luck={1,41103,52205},attribute={{1,100}},description="����һ����ǧҶ�׷�һ����������ֵ+100%",location=""},
[71] = {luckID=71,ID=41103,name="˭������",luck={1,41103,54002},attribute={{5,100}},description="����һ����һҶ֪��һ��������������+100%",location=""},
[72] = {luckID=72,ID=41103,name="ǿ����Ԯ",luck={1,41103,41104},attribute={{7,100}},description="����һ����̤���ǳ�һ������ħ������+100%",location=""},
[73] = {luckID=73,ID=41203,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[74] = {luckID=74,ID=41203,name="˫������",luck={1,41203,51206},attribute={{1,100}},description="������������һ����������ֵ+100%",location=""},
[75] = {luckID=75,ID=41203,name="����֮��",luck={1,41203,41205},attribute={{5,100}},description="�����˼����һ��������������+100%",location=""},
[76] = {luckID=76,ID=41203,name="������",luck={1,41203,42203},attribute={{7,100}},description="�����ȫ����һ������ħ������+100%",location=""},
[77] = {luckID=77,ID=41203,name="����ǿ��",luck={1,41203,42007},attribute={{12,100},{13,100}},description="�������ڵ�һ��������������+100%��ħ������+100%",location=""},
[78] = {luckID=78,ID=42006,name="�޼᲻��",luck=0,attribute={{6,100}},description="ħ������+100%",location=""},
[79] = {luckID=79,ID=42006,name="����Ů����",luck={1,42006,52008},attribute={{1,100}},description="����ʩ����ѩ����һ����������ֵ+100%",location=""},
[80] = {luckID=80,ID=42006,name="ǹ��õ��",luck={1,42006,44003},attribute={{5,100}},description="����ʩ��������һ��������������+100%",location=""},
[81] = {luckID=81,ID=42006,name="���޽���",luck={1,42006,43102},attribute={{7,100}},description="����ʩ�����һ������ħ������+100%",location=""},
[82] = {luckID=82,ID=43102,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[83] = {luckID=83,ID=43102,name="����å���",luck={1,43102,53203},attribute={{1,100}},description="���������޼�һ����������ֵ+100%",location=""},
[84] = {luckID=84,ID=43102,name="�Ҵ�һ��",luck={1,43102,53103},attribute={{5,100}},description="�������˴����һ��������������+100%",location=""},
[85] = {luckID=85,ID=43102,name="С�����",luck={1,43102,44003},attribute={{7,100}},description="������������һ������ħ������+100%",location=""},
[86] = {luckID=86,ID=43202,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[87] = {luckID=87,ID=43202,name="����һ��",luck={1,43202,53002,54002,56102},attribute={{1,100}},description="����ɽ�����Į��ѩ��һҶ֪���Ъ�˶�һ����������ֵ+100%",location=""},
[88] = {luckID=88,ID=43202,name="��å�Ļ�",luck={1,43202,53103},attribute={{5,100}},description="����ɽ�����˴����һ��������������+100%",location=""},
[89] = {luckID=89,ID=43202,name="��������",luck={1,43202,52008},attribute={{7,100}},description="����ɽ������ѩ����һ������ħ������+100%",location=""},
[90] = {luckID=90,ID=43202,name="����֮��",luck={1,43202,41305},attribute={{12,100},{13,100}},description="����ɽ������������һ��������������+100%��ħ������+100%",location=""},
[91] = {luckID=91,ID=44003,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[92] = {luckID=92,ID=44003,name="ǿǿ��ײ",luck={1,44003,54002},attribute={{1,100}},description="��������һҶ֪��һ����������ֵ+100%",location=""},
[93] = {luckID=93,ID=44003,name="С�����",luck={1,44003,43102},attribute={{5,100}},description="�����������һ��������������+100%",location=""},
[94] = {luckID=94,ID=44003,name="ǹ��õ��",luck={1,44003,42006},attribute={{7,100}},description="������������ʩһ������ħ������+100%",location=""},
[95] = {luckID=95,ID=51005,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[96] = {luckID=96,ID=51005,name="ǹ����ʥ",luck={1,51005,52110},attribute={{1,100}},description="��į����������ƽ��һ����������ֵ+100%",location=""},
[97] = {luckID=97,ID=51005,name="����һ��",luck={1,51005,54302},attribute={{5,100}},description="��į��������ͷ����һ��������������+100%",location=""},
[98] = {luckID=98,ID=51005,name="��������",luck={1,51005,56102},attribute={{7,100}},description="��į��������Ъ�˶�һ������ħ������+100%",location=""},
[99] = {luckID=99,ID=51005,name="˫������",luck={1,51005,51006},attribute={{12,100}},description="��į������̶��һ��������������+100%",location=""},
[100] = {luckID=100,ID=51005,name="��������",luck={1,51005,41004},attribute={{9,100},{10,100}},description="��į����������һ����������������+100%��ħ��������+100%",location=""},
[101] = {luckID=101,ID=51006,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[102] = {luckID=102,ID=51006,name="ħ���ɽ�",luck={1,51006,54302},attribute={{1,100}},description="̶������ͷ����һ����������ֵ+100%",location=""},
[103] = {luckID=103,ID=51006,name="˫�����",luck={1,51006,51005},attribute={{5,100}},description="̶�����į����һ��������������+100%",location=""},
[104] = {luckID=104,ID=51006,name="Ψ�첻��",luck={1,51006,41004},attribute={{7,100}},description="̶��������һ������ħ������+100%",location=""},
[105] = {luckID=105,ID=52205,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[106] = {luckID=106,ID=52205,name="�Ͻ����",luck={1,52205,53002},attribute={{1,100}},description="ǧҶ�׷����Į��ѩһ����������ֵ+100%",location=""},
[107] = {luckID=107,ID=52205,name="�ػ�֮��",luck={1,52205,55002,56102,43202},attribute={{5,100}},description="ǧҶ�׷��뽭ˮ�ڡ���Ъ�˶�������ɽ��һ��������������+100%",location=""},
[108] = {luckID=108,ID=52205,name="�����ط�",luck={1,52205,41103},attribute={{7,100}},description="ǧҶ�׷�������һ��һ������ħ������+100%",location=""},
[109] = {luckID=109,ID=53002,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[110] = {luckID=110,ID=53002,name="����һ��",luck={1,53002,54002},attribute={{1,100}},description="��Į��ѩ��һҶ֪��һ����������ֵ+100%",location=""},
[111] = {luckID=111,ID=53002,name="�Ͻ����",luck={1,53002,52205,56102,43202},attribute={{5,100}},description="��Į��ѩ��ǧҶ�׷ɡ���Ъ�˶�������ɽ��һ��������������+100%",location=""},
[112] = {luckID=112,ID=53002,name="�ػ�֮��",luck={1,53002,55002,51307},attribute={{7,100}},description="��Į��ѩ�뽭ˮ�ڡ�����һ������ħ������+100%",location=""},
[113] = {luckID=113,ID=54002,name="���޲���",luck=0,attribute={{4,100}},description="��������+100%",location=""},
[114] = {luckID=114,ID=54002,name="����һ��",luck={1,54002,53002},attribute={{1,100}},description="һҶ֪�����Į��ѩһ����������ֵ+100%",location=""},
[115] = {luckID=115,ID=54002,name="��ǿ������",luck={1,54002,52110},attribute={{5,100}},description="һҶ֪��������ƽ��һ��������������+100%",location=""},
[116] = {luckID=116,ID=54002,name="����ʥ",luck={1,54002,51005},attribute={{7,100}},description="һҶ֪�����į����һ������ħ������+100%",location=""},
[117] = {luckID=117,ID=54002,name="��Ѵ",luck={1,54002,52008},attribute={{12,100}},description="һҶ֪������ѩ����һ��������������+100%",location=""},
[118] = {luckID=118,ID=54102,name="�޼᲻��",luck=0,attribute={{6,100}},description="ħ������+100%",location=""},
[119] = {luckID=119,ID=54102,name="Ԫ�س�ײ",luck={1,54102,54103},attribute={{1,100}},description="ԧƮ˪��뻨ʱ����һ����������ֵ+100%",location=""},
[120] = {luckID=120,ID=54102,name="����ר��",luck={1,54102,56102},attribute={{5,100}},description="ԧƮ˪�����Ъ�˶�һ��������������+100%",location=""},
[121] = {luckID=121,ID=54102,name="ħ������",luck={1,54102,51006},attribute={{7,100}},description="ԧƮ˪���̶��һ������ħ������+100%",location=""},
[122] = {luckID=122,ID=54102,name="��ǹ֮Ԫ",luck={1,54102,42107},attribute={{13,100}},description="ԧƮ˪������Ƕ���һ������ħ������+100%",location=""},
[123] = {luckID=123,ID=42203,name="���޲���",luck=0,attribute={{4,100},{6,100}},description="��������+100%��ħ������+100%",location=""},
[124] = {luckID=124,ID=42203,name="����Э��",luck={1,42203,51206},attribute={{1,100}},description="ȫ�������������һ����������ֵ+100%",location=""},
[125] = {luckID=125,ID=42203,name="������",luck={1,42203,41203},attribute={{5,100}},description="ȫ���������һ��������������+100%",location=""},
[126] = {luckID=126,ID=42203,name="͸�����",luck={1,42203,42007},attribute={{7,100}},description="ȫ��������ڵ�һ������ħ������+100%",location=""},
[127] = {luckID=127,ID=52302,name="�޼᲻��",luck=0,attribute={{6,100}},description="ħ������+100%",location=""},
[128] = {luckID=128,ID=52302,name="ս����ʦ",luck={1,52302,55002,56102},attribute={{1,100}},description="������뽭ˮ�ڡ���Ъ�˶�һ����������ֵ+100%",location=""},
[129] = {luckID=129,ID=52302,name="ò������",luck={1,52302,54002},attribute={{5,100}},description="�������һҶ֪��һ��������������+100%",location=""},
[130] = {luckID=130,ID=52302,name="ǿ�߳��",luck={1,52302,54102},attribute={{7,100}},description="�������ԧƮ˪�һ������ħ������+100%",location=""},
[131] = {luckID=131,ID=52302,name="��������",luck={1,52302,42107},attribute={{13,100}},description="����������Ƕ���һ������ħ������+100%",location=""},
[132] = {luckID=132,ID=41306,name="ħ���ӵ�",luck={1,41306,42109},attribute={{4,100},{6,100}},description="÷����������һ��������������+100%��ħ������+100%",location=""},
[133] = {luckID=133,ID=41306,name="���Է���",luck=0,attribute={{5,100},{7,100}},description="������������100%;ħ������100%",location=""},
[134] = {luckID=134,ID=42107,name="���Ų���",luck={1,42107,54103},attribute={{5,100}},description="���Ƕ����뻨ʱ����һ��������������100%��",location=""},
[135] = {luckID=135,ID=42107,name="��������",luck={1,42107,52302},attribute={{7,100}},description="���Ƕ����������һ������ħ������100%",location=""},
[136] = {luckID=136,ID=42107,name="ǿ������",luck={1,42107,42106,42105},attribute={{12,100}},description="���Ƕ�����ʱ���޺ۡ���̻���һ��������������+100%",location=""},
[137] = {luckID=137,ID=42107,name="ȫ����ɱ",luck={1,42107,54102},attribute={{9,100},{10,100}},description="\"���Ƕ�����ԧƮ˪�һ������,����������+100%,ħ��������+100%\"",location=""},
[138] = {luckID=138,ID=42107,name="���Է���",luck=0,attribute={{4,100}},description="������������+100%",location=""},
[139] = {luckID=139,ID=4,name="���޲���",luck=0,attribute={{4,100},{9,100}},description="\"��������+100%,����������+100%\"",location=1},
[140] = {luckID=140,ID=4,name="�޼᲻��",luck=0,attribute={{6,100},{10,100}},description="\"ħ������+100%,ħ��������+100%\"",location=2},
[141] = {luckID=141,ID=4,name="Ѫ֮��Ϣ",luck=0,attribute={{1,100}},description="����ֵ+100%",location=3},
[142] = {luckID=142,ID=4,name="������ʯ",luck=0,attribute={{5,100}},description="��������+100%",location=4},
[143] = {luckID=143,ID=4,name="��������",luck=0,attribute={{7,100}},description="ħ������+100%",location=5},
[144] = {luckID=144,ID=4,name="Ѫ֮����",luck=0,attribute={{12,100},{13,100}},description="\"��������+100%,ħ������+100%\"",location=6},
[145] = {luckID=145,ID=4,name="�������",luck=0,attribute={{14,39},{16,100}},description="\"����+39%,������+100%\"",location=7},
}
return luck