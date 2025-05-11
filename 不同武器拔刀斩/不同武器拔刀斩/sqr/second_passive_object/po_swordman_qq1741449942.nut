function setCustomData_po_swordman_qq1741449942(obj, receiveData)
{
	if(!obj) return;

	local id = receiveData.readDword();
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	obj.getVar("id").clear_vector();
	obj.getVar("id").push_vector(id);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());

	switch(id)
	{
				case 1:
					local ani = sq_CreateAnimation("","passiveobject/awakening_pass_obj/swordman/animation/1_weaponmaster/momentaryslash/drawingsword_none_under.ani");
					SMals_ani(obj, "passiveobject/awakening_pass_obj/swordman/animation/1_weaponmaster/momentaryslash/drawingsword_blue_ldodge_under.ani", 0, 0, 0, sq_GetIntData(parentChr, 9, 6), 1.0, 0, 0, 0);
					obj.sq_PlaySound("SWD_BAL_END");
					obj.setCurrentAnimation(ani);

					sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 1));
					local targetCount = receiveData.readDword();
					local damageBonus = 0;
					if(targetCount > 0 && targetCount <= 5)
						damageBonus = sq_GetIntData(parentChr, 9, targetCount);
					else
						damageBonus = 0;
					local attackBonusRate = parentChr.sq_GetBonusRateWithPassive(9, -1, 0, 1.0);
					attackBonusRate = attackBonusRate / 100.0 * (100 + damageBonus.tofloat());
					sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate.tointeger());

					local size = 1.0;
					local sizeRate = sq_GetIntData(parentChr, 9, 6);
					sizeRate = sizeRate.tofloat() / 100.0;
					ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
					ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
					sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
				break;
				case 2://?????? ????
					local ani = sq_CreateAnimation("","passiveobject/awakening_pass_obj/swordman/animation/1_weaponmaster/momentaryslash/drawingsword_none_under.ani");
					SMals_ani(obj, "passiveobject/awakening_pass_obj/swordman/animation/1_weaponmaster/momentaryslash/drawingsword_red_ldodge_under.ani", 0, 0, 0, sq_GetIntData(parentChr, 9, 6), 1.0, 0, 0, 0);
					obj.sq_PlaySound("SWD_BAL_END");
					obj.setCurrentAnimation(ani);

					sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 1));
					local attackBonusRate = parentChr.sq_GetBonusRateWithPassive(13, -1, 4, 1.0);
					sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);

					local size = 1.0;
					local sizeRate = sq_GetIntData(parentChr, 9, 6);
					sizeRate = sizeRate.tofloat() / 100.0;
					ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
					ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
					sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
				break;
				case 3://?????? ????
					local ani = sq_CreateAnimation("","passiveobject/awakening_pass_obj/swordman/animation/1_weaponmaster/momentaryslash/drawingsword_none_under.ani");
					SMals_ani(obj, "passiveobject/awakening_pass_obj/swordman/animation/1_weaponmaster/momentaryslash/drawingsword_white_ldodge_under.ani", 0, 0, 0, sq_GetIntData(parentChr, 9, 6), 1.0, 0, 0, 0);
					obj.sq_PlaySound("SWD_BAL_END");
					obj.setCurrentAnimation(ani);

					sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 1));
					local attackBonusRate = parentChr.sq_GetBonusRateWithPassive(4, -1, 8, 1.0);
					sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);

					local size = 1.0;
					local sizeRate = sq_GetIntData(parentChr, 9, 6);
					sizeRate = sizeRate.tofloat() / 100.0;
					ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
					ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
					sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

					local skill_level = sq_GetSkillLevel(parentChr, 4);
					local act_rate = sq_GetLevelData(parentChr, 4, 9, skill_level);
					local act_level = sq_GetLevelData(parentChr, 4, 10, skill_level);
					local act_time = sq_GetLevelData(parentChr, 4, 11, skill_level);
					local act_damage = sq_GetLevelData(parentChr, 4, 12, skill_level);
					sq_SetChangeStatusIntoAttackInfo(sq_GetCurrentAttackInfo(obj), 0, ACTIVESTATUS_LIGHTNING, act_rate, act_level, act_time, act_damage);
				break;
				case 4://?????? ??????
					local ani = sq_CreateAnimation("","passiveobject/character/swordman/animation/momentaryslash/start.ani");
					obj.setCurrentAnimation(ani);

					sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 1));
					local attackPower = parentChr.sq_GetPowerWithPassive(9, -1, 1, -1, 1.0);
					sq_SetCurrentAttackPower(sq_GetCurrentAttackInfo(obj), attackPower);

					local size = 1.0;
					local sizeRate = sq_GetIntData(parentChr, 9, 6);
					sizeRate = sizeRate.tofloat() / 100.0;
					ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
					ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
					sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

					if(obj.getDirection() == ENUM_DIRECTION_LEFT)
						sq_SetVelocity(obj, 0, -sq_GetIntData(parentChr, 12, 4).tofloat());
					if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
						sq_SetVelocity(obj, 0, sq_GetIntData(parentChr, 12, 4).tofloat());
				break;
				case 5://?????? ????
					local ani = sq_CreateAnimation("","passiveobject/awakening_pass_obj/swordman/animation/1_weaponmaster/momentaryslash/drawingsword_none_under.ani");
					SMals_ani(obj, "passiveobject/awakening_pass_obj/swordman/animation/1_weaponmaster/momentaryslash/drawingsword_blue_ldodge_under.ani", 0, 0, 0, sq_GetIntData(parentChr, 9, 6), 1.0, 0, 0, 0);
					obj.sq_PlaySound("SWD_BAL_END");
					obj.setCurrentAnimation(ani);

					sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 1));

					local targetCount = receiveData.readDword();
					local damageBonus = 0;
					if(targetCount > 0 && targetCount <= 5)
						damageBonus = sq_GetIntData(parentChr, 9, targetCount);
					else
						damageBonus = 0;

					local stateTime = receiveData.readDword();
					stateTime = stateTime - sq_GetIntData(parentChr, 9, 0);
					local heavySwordDamageBonus = sq_GetIntData(parentChr, 14, 7);
					local finalDamageBonus = sq_GetUniformVelocity(0, heavySwordDamageBonus, stateTime, sq_GetIntData(parentChr, 14, 8));

					local attackBonusRate = parentChr.sq_GetBonusRateWithPassive(9, -1, 0, 1.0);
					attackBonusRate = attackBonusRate / 100.0 * (100 + damageBonus.tofloat() + finalDamageBonus.tofloat());
					sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate.tointeger());

					local size = 1.0;
					local sizeRate = sq_GetIntData(parentChr, 9, 6);
					sizeRate = sizeRate.tofloat() / 100.0;
					ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
					ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
					sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
				break;
	}
}

function onEndCurrentAni_po_swordman_qq1741449942(obj)
{
	if(!obj) return;

	local id = obj.getVar("id").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	switch(id)
	{
				case 1://?????? ????
				case 2://?????? ????
				case 3://?????? ????
				case 5://?????? ????
					if(obj.isMyControlObject())
						sq_SendDestroyPacketPassiveObject(obj);
				break;
	}
}

function procAppend_po_swordman_qq1741449942(obj)
{
	if(!obj) return false;

	local id = obj.getVar("id").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());
	local pAni = obj.getCurrentAnimation();
	local currentT = sq_GetCurrentTime(pAni);
	if(!parentChr)
	{
		sq_SendDestroyPacketPassiveObject(obj);
		return;
	}

	switch(id)
	{
		case 4://?????? ??????
			if(currentT > 1500)
			sq_SendDestroyPacketPassiveObject(obj);
		break;
	}
}


function onAttack_po_swordman_qq1741449942(obj, damager, boundingBox, isStuck)
{
	if(!obj) return;

	local id = obj.getVar("id").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());

	switch(id)
	{
		case 1:
			switch(parentChr.getWeaponSubType())
			{
				case 0:
					obj.sq_PlaySound("R_MINERALSWDA_HIT");
				break;
				case 1:
					obj.sq_PlaySound("R_KATANAC_HIT");
				break;
				case 2:
					obj.sq_PlaySound("R_STICKA_HIT");
					if(!sq_IsFixture(damager))
					{
						local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, parentChr, 9, false, "character/swordman/1_weaponmaster/momentaryslash/ap_momentaryslash.nut", true);
					}
				break;
				case 3:
					obj.sq_PlaySound("R_SQUARESWDA_HIT");
				break;
				case 5:
					obj.sq_PlaySound("R_BEAMSWDA_HIT");
				break;
			}
		break;
	}
}

function SMals_ani(obj, aniFilename, x, y, z, imageSizeRate, SpeedRate, imageAngle, moveWithParent, imageLayer) {
	local ani = sq_CreateAnimation("", aniFilename);

	local pooledObj = sq_CreatePooledObject(ani, true);
	local distanceXPos = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), x);
	pooledObj.setCurrentPos(distanceXPos, obj.getYPos() + y, obj.getZPos() + z);
	pooledObj.setCurrentDirection(obj.getDirection());

	local size = 1.0;
	imageSizeRate = imageSizeRate.tofloat() / 100.0;
	ani.setImageRateFromOriginal(size * imageSizeRate, size * imageSizeRate);
	ani.setAutoLayerWorkAnimationAddSizeRate(size * imageSizeRate);

	ani.setSpeedRate(100.0 * SpeedRate);

	local angle = imageAngle;
	sq_SetfRotateAngle(ani, sq_ToRadian(-angle.tofloat()));

	if (moveWithParent == 1) {
		sq_moveWithParent(obj, pooledObj);
	}
	if (imageLayer == 2) {
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_COVER);
	}
	if (imageLayer == 1) {
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	}
	if (imageLayer == 0) {
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	}
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("aniobj").push_obj_vector(pooledObj);
}