
// ���뽺ų �����͸�忡�� ���������� �����մϴ�. �����͸�� Ȥ�� �ٸ� ��ų���� ����������Ʈ�� �����Ҷ� �̰����� ������ �մϴ�.
function getCurrentModuleDamageRate(obj)
{	
	if (!obj)
		return 1.0;

	local rate = 1.0;
	
		if (sq_getJob(obj) == 7) {
		local rate_atfighter = 100;
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_1.nut")) {

		local skillLevel = sq_GetSkillLevel(obj, 41);
		local addRate = sq_GetLevelData(obj, 41, 9, skillLevel);
		local pSkillIndex = obj.getCurrentSkillIndex();
		if (pSkillIndex == 82) 
		rate_atfighter = rate_atfighter * (100 + addRate) / 100;
	}
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