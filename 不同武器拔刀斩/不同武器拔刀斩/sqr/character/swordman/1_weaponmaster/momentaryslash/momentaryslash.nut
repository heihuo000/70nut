

function onSetState_swordman_momentaryslashre(obj, state, datas, isResetTimer)
{	
	if(!obj) return;

	local subState = obj.sq_GetVectorData(datas, 0);
	local weaponSubType = obj.sq_GetVectorData(datas, 1);
	obj.getVar().clear_vector();
	obj.getVar().push_vector(weaponSubType);
	obj.setSkillSubState(subState);
	obj.sq_StopMove();

	if(subState == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_MOMENTARYSLASHRE_READY);
		obj.getVar("extraEnterCount").setInt(0, sq_GetIntData(obj, 9, 7));
		obj.getVar("momentaryslashTarget").clear_obj_vector();
		obj.getVar().setBool(0, true);
		switch(weaponSubType)
		{
			case 3://齧�??�齧踝蕭
				obj.sq_IsEnterSkillLastKeyUnits(9);
			break;
		}
	}
	if(subState == 1)
	{
		obj.sq_PlaySound("SM_BAL_SHOT");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_MOMENTARYSLASHRE_ATTACK);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		local targetCount = obj.getVar("momentaryslashTarget").get_obj_vector_size();
		if(obj.sq_IsMyControlObject())
		{
			obj.sq_StartWrite();
			obj.sq_WriteDword(1);
			obj.sq_WriteDword(targetCount);
			obj.sq_SendCreatePassiveObjectPacket(243370, 0, 0, 0, 0);
		}
		switch(weaponSubType)
		{
			case 0://?�齧踝蕭
				if(obj.sq_IsMyControlObject())
				{
					obj.sq_StartWrite();
					obj.sq_WriteDword(4);
					obj.sq_WriteDword(targetCount);
					obj.sq_SendCreatePassiveObjectPacket(243370, 0, -100, -50, 0);
				}
			break;
		}
	}
	if(subState >= 2)
	{
		obj.sq_PlaySound("SM_BAL_SHOT");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_MOMENTARYSLASHRE_ATTACK);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		local targetCount = obj.getVar("momentaryslashTarget").get_obj_vector_size();
		switch(weaponSubType)
		{
			case 1://齧�??�齧踝蕭
				if(obj.sq_IsMyControlObject())
				{
					obj.sq_StartWrite();
					obj.sq_WriteDword(2);
					obj.sq_WriteDword(targetCount);
					obj.sq_SendCreatePassiveObjectPacket(243370, 0, 0, 0, 0);
				}
			break;
			case 3://齧�??�齧踝蕭
				local stateTime = obj.sq_GetVectorData(datas, 2);
				if(obj.sq_IsMyControlObject())
				{
					obj.sq_StartWrite();
					obj.sq_WriteDword(5);
					obj.sq_WriteDword(targetCount);
					obj.sq_WriteDword(stateTime);
					obj.sq_SendCreatePassiveObjectPacket(243370, 0, 0, 0, 0);
					removeAni(obj);
				}
			break;
			case 5://齧�??�齧踝蕭
				if(obj.sq_IsMyControlObject())
				{
					obj.sq_StartWrite();
					obj.sq_WriteDword(3);
					obj.sq_WriteDword(targetCount);
					obj.sq_SendCreatePassiveObjectPacket(243370, 0, 0, 0, 0);
				}
			break;
		}
	}
}



function onEndCurrentAni_swordman_momentaryslashre(obj)
{
	if(!obj || !obj.isMyControlObject()) return;

	local subState = obj.getSkillSubState();
	if(subState >= 1)
	{
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, true);
	}
}



function onProcCon_swordman_momentaryslashre(obj)
{
	if(!obj) return;

	local subState = obj.getSkillSubState();
	local weaponSubType = obj.getVar().get_vector(0);
	local frameIndex = obj.getCurrentAnimation().GetCurrentFrameIndex();
	local extraEnterCount = obj.getVar("extraEnterCount").getInt(0);
	if(subState == 0)
	{
		if(obj.sq_GetStateTimer() >= sq_GetIntData(obj, 9, 0))
		{
			if(weaponSubType == 3)
			{
				if(obj.getVar().getBool(0))
				{
					SMals_ani(obj, "character/swordman/effect/animation/momentaryslash/charge1.ani", 0, 0, 0, 100, 1.0, 0, 0, 0);
					obj.getVar().setBool(0, false);
				}
				if(!obj.isDownSkillLastKey() || obj.sq_GetStateTimer() >= (sq_GetIntData(obj, 9, 0) + sq_GetIntData(obj, 14, 8)))
				{
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(2);
					obj.sq_IntVectPush(obj.getWeaponSubType());
					obj.sq_IntVectPush(obj.sq_GetStateTimer());
					obj.sq_AddSetStatePacket(STATE_MOMENTARYSLASHRE, STATE_PRIORITY_IGNORE_FORCE, true);
				}
			}
			else
			{
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(1);
				obj.sq_IntVectPush(obj.getWeaponSubType());
				obj.sq_AddSetStatePacket(STATE_MOMENTARYSLASHRE, STATE_PRIORITY_IGNORE_FORCE, true);
			}
		}

		local objectManager = obj.getObjectManager();
		for(local i = 0; i < objectManager.getCollisionObjectNumber(); i ++)
		{
			local object = objectManager.getCollisionObject(i);
			local distance = sq_GetDistanceObject(object, obj, false);
			local range = 3 * sq_GetIntData(obj, 9, 6);
			if(object && obj.isEnemy(object) && distance <= range && object.isObjectType(OBJECTTYPE_ACTIVE))
				obj.getVar("momentaryslashTarget").push_obj_vector(object);
		}
	}
	if(subState == 1 && frameIndex >= 7 && (weaponSubType == 1 || weaponSubType == 5))
	{
		obj.setSkillCommandEnable(9, true);
		if(obj.sq_IsEnterSkill(9) != -1)
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_IntVectPush(obj.getWeaponSubType());
			obj.sq_AddSetStatePacket(STATE_MOMENTARYSLASHRE, STATE_PRIORITY_IGNORE_FORCE, true);
		}
	}
	if(subState >= 2 && frameIndex >= 7 && (weaponSubType == 1 || weaponSubType == 5) && extraEnterCount > 0)
	{
		obj.setSkillCommandEnable(9, true);
		if(obj.sq_IsEnterSkill(9) != -1)
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(subState + 1);
			obj.sq_IntVectPush(obj.getWeaponSubType());
			obj.sq_AddSetStatePacket(STATE_MOMENTARYSLASHRE, STATE_PRIORITY_IGNORE_FORCE, true);
			obj.getVar("extraEnterCount").setInt(0, extraEnterCount - 1);

		}
	}
}



function onSetState_swordman_momentaryslash(obj, state, datas, isResetTimer)
{	
	if(!obj) return;

	obj.sq_StopMove();
	obj.startSkillCoolTime(9, sq_GetSkillLevel(obj, 9), -1);
	obj.sq_IntVectClear();
	obj.sq_IntVectPush(0);
	obj.sq_IntVectPush(obj.getWeaponSubType());
	obj.sq_AddSetStatePacket(STATE_MOMENTARYSLASHRE, STATE_PRIORITY_IGNORE_FORCE, true);
}

function removeAni(obj) {
	local var = obj.getVar("aniobj");
	local aniObjCount = var.get_obj_vector_size();
	for (local i = 0; i < aniObjCount; i++) {
		local aniObj = var.get_obj_vector(i);
		if (aniObj) aniObj.setValid(false);
	}
	obj.getVar("aniobj").clear_obj_vector();
}
