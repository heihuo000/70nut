
function onProcCon_swordman_momentaryslashex(obj)
{
	if(!obj) return;

	local state = obj.sq_GetState();
	local frameIndex = obj.getCurrentAnimation().GetCurrentFrameIndex();
	if(!sq_GetSkill(obj, 9).isInCoolTime() && frameIndex >= 5)
	{
		obj.setSkillCommandEnable(9, true);
		if(obj.sq_IsEnterSkill(9) != -1 && obj.isMyControlObject())
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(0);
			obj.sq_AddSetStatePacket(23, STATE_PRIORITY_IGNORE_FORCE, true);
		}
	}
	if (state == 56)
	{
		local Count = obj.getMyPassiveObjectCount(20064);
		for(local i=0;i<Count;++i)
		{
			local jianqi = obj.getMyPassiveObject(20064,i);
			if(jianqi)
			{
				local atk = sq_GetCurrentAttackInfo(obj);
				sq_SetCurrentAttackInfo(jianqi, atk)
				local attackRate = obj.sq_GetBonusRateWithPassive(97, -1, 7, 1.0);
				local BonusRate = sq_GetCurrentAttackBonusRate(obj);
				sq_SetCurrentAttackBonusRate(atk, attackRate);
			}
		}
	}
}

