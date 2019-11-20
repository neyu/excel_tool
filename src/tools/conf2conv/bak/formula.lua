local RANDBETWEEN = math.random
local min = math.min
local max = math.max
local ROUNDDOWN = math.floor
local ROUNDUP = math.ceil
local ROUND = function(x) ROUNDDOWN(x+0.5) end

local formula = {}

function formula.get_AtkHurt(me, ot, me_tp, ot_tp)
    return max(me:get_Atk()*0.6*(me_tp.AtkPer/10000)-ot:get_Def()*0.6+me:get_Atk()*RANDBETWEEN(1,33)*0.001+me_tp.AtkFixed/5,3)
end

function formula.get_MagicHurt(me, ot, me_tp, ot_tp)
    return max(me:get_Mag()*0.65*(me_tp.MagPer/10000)-ot:get_MagDef()*0.65+me:get_Mag()*RANDBETWEEN(1,55)*0.0001+me_tp.MagFixed/5,2)
end

function formula.get_AtkCrit(me, ot, me_tp, ot_tp)
    return min((me:get_AtkCrit()+me_tp.AtkCritFix*2)/(me:get_AtkCrit()+ot:get_AtkRes()*3+100),0.6)
end

function formula.get_MagicCrit(me, ot, me_tp, ot_tp)
    return min((me:get_MagCrit()+me_tp.MagCritFix*2)/(me:get_MagCrit()+ot:get_MagCrit()*3+100),0.6)
end

function formula.get_HitsFormula(me, ot, me_tp, ot_tp)
    return min((me:get_Hits()+me_tp.HitsFix+ot:get_Block()*3)/(ot:get_Block()*4),1)
end

function formula.get_HPReplyFormula(me, ot, me_tp, ot_tp)
    return 100*me:get_HPReply()*0.01
end

function formula.get_BUFFHurt(me, ot, me_tp, ot_tp)
    return me_tp.BUFFFix+me:get_Atk()*(me_tp.AtkPer/100)+me:get_Mag()*(me_tp.MagPer/100)
end

function formula.get_CombatAtk(me, ot, me_tp, ot_tp)
    return me:get_Atk()/10+me:get_Mag()/30+me:get_Def()/10+me:get_MagDef()/10+me:get_HP()/100+me:get_MP()+me:get_AtkCrit()/10+me:get_MagCrit()/40+me:get_AtkRes()/10+me:get_MagRes()/10+me:get_Block()/10+me:get_Dodge()/10+me:get_MPReply()/10+me:get_Hits()/10+me:get_HPReply()/10
end

function formula.get_CombatMagic(me, ot, me_tp, ot_tp)
    return me:get_Atk()/30+me:get_Mag()/10+me:get_Def()/10+me:get_MagDef()/10+me:get_HP()/100+me:get_MP()+me:get_AtkCrit()/40+me:get_MagCrit()/10+me:get_AtkRes()/10+me:get_MagRes()/10+me:get_Block()/10+me:get_Dodge()/10+me:get_MPReply()/10+me:get_Hits()/10+me:get_HPReply()/10
end

function formula.get_CombatDouble(me, ot, me_tp, ot_tp)
    return me:get_Atk()/20+me:get_Mag()/20+me:get_Def()/10+me:get_MagDef()/10+me:get_HP()/100+me:get_MP()+me:get_AtkCrit()/25+me:get_MagCrit()/25+me:get_AtkRes()/10+me:get_MagRes()/10+me:get_Block()/10+me:get_Dodge()/10+me:get_MPReply()/10+me:get_Hits()/10+me:get_HPReply()/10
end

function formula.get_DropGold(me, ot, me_tp, ot_tp)
    return (Gold_Drop/Gold_Number)/MAX((Monster_Number*RAND()),3)
end

function formula.get_Guaranteeing(me, ot, me_tp, ot_tp)
    return (SXHP/max(TMAtk+TMMag-SXDef-SXMagDef,1)*1.5)/(TMHP/max(SXAtk+SXMag-TMDef-TMMagDef,1))
end

function formula.get_MPReplyFormula(me, ot, me_tp, ot_tp)
    return me:get_MPReply()/80
end

function formula.get_MPReplyFormula2(me, ot, me_tp, ot_tp)
    return min(me:get_MPReply()/40,1)
end

function formula.get_ATKPercentage(me, ot, me_tp, ot_tp)
    return formula
end

function formula.get_ATKReal(me, ot, me_tp, ot_tp)
    return me_tp.AtkFixed+me_tp.MagFixed
end

function formula.get_BackAwardExp1(me, ot, me_tp, ot_tp)
    return me:get_NextExp()*(me:get_OffDay()-2)*300//3000
end

function formula.get_BackAwardExp2(me, ot, me_tp, ot_tp)
    return me:get_NextExp()*(me:get_OffDay()-2)*200//3000
end

function formula.get_BackAwardExp3(me, ot, me_tp, ot_tp)
    return me:get_NextExp()*(me:get_OffDay()-2)*100//3000
end

function formula.get_BackAwardExp4(me, ot, me_tp, ot_tp)
    return me:get_NextExp()*(me:get_OffDay()-2)*50//3000
end

function formula.get_BackAwardExp5(me, ot, me_tp, ot_tp)
    return me:get_NextExp()*(me:get_OffDay()-2)*25//3000
end

function formula.get_BackAwardExp6(me, ot, me_tp, ot_tp)
    return me:get_NextExp()*(me:get_OffDay()-2)*20//3000
end

function formula.get_BackAwardExp7(me, ot, me_tp, ot_tp)
    return me:get_NextExp()*(me:get_OffDay()-2)*10//3000
end

function formula.get_BackAwardGold(me, ot, me_tp, ot_tp)
    return 50+(me:get_OffDay()-2)*15
end

function formula.get_BackAwardCoin(me, ot, me_tp, ot_tp)
    return 5000+(me:get_OffDay()-2)*3000
end
return formula