
// 获取当前模块的伤害倍率。如果使用了其他模块，也会考虑其影响。
function getCurrentModuleDamageRate(obj)
{	
	// 如果对象为空，返回默认伤害倍率 1.0
	if (!obj)
		return 1.0;

	// 初始化伤害倍率为 1.0
	local rate = 1.0;
	
	// 如果角色职业为 7
	if (sq_getJob(obj) == 7) {
		// 初始化战斗职业的伤害倍率为 100
		local rate_atfighter = 100;
		// 检查是否附加了特定的附属模块
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_1.nut")) {
			// 获取技能等级
			local skillLevel = sq_GetSkillLevel(obj, 41);
			// 根据技能等级获取附加倍率
			local addRate = sq_GetLevelData(obj, 41, 9, skillLevel);
			// 获取当前使用的技能索引
			local pSkillIndex = obj.getCurrentSkillIndex();
			// 如果当前技能索引为 82，则调整战斗职业的伤害倍率
			if (pSkillIndex == 82) 
				rate_atfighter = rate_atfighter * (100 + addRate) / 100;
		}
		// 更新总伤害倍率
		rate = rate * rate_atfighter.tofloat() / 100.0;

	}

/*	local appendage = obj.GetSquirrelAppendage("Character/Common/Burster/ap_Common_Burster.nut");

	if (appendage)
	{
		if (appendage.isValid())
		{
			local skillIndex = obj.getCurrentSkillIndex();

			// �����͸�忡 �ش��ϴ� �����̶�� ���������� ���ߵ��� ���� ���ɴϴ�.
			if (isEnableBursterSkill(obj, skillIndex))
			{
				local level = sq_GetSkillLevel(obj, SKILL_BURSTER);
				// (4) �������� (%) (100%�� �⺻)
				local value = obj.sq_GetLevelData(SKILL_BURSTER, SKL_LVL_COLUMN_IDX_4, level);

				rate = value.tofloat() / 100.0;

				print(" burst level:" + level + " value:" + value + " getCurrentModuleDamageRate:" + rate.tofloat());
			}
		}
	}*/

	return rate.tofloat();
}