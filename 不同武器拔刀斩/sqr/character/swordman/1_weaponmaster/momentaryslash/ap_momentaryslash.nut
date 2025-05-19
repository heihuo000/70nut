//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////








function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_momentaryslash")
	appendage.sq_AddFunctionName("proc", "proc_appendage_momentaryslash")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_momentaryslash")
}



function onStart_appendage_momentaryslash(appendage)
{
	if(!appendage) return;

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	if(!sourceObj || !parentObj)
	{
		appendage.setValid(false);
		return;
	}

	appendage.sq_AddEffectFront("passiveobject/awakening_pass_obj/swordman/animation/1_weaponmaster/momentaryslash/roate.ani");
}



function proc_appendage_momentaryslash(appendage)
{
	if(!appendage) return;

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	if(!sourceObj || !parentObj)
	{
		appendage.setValid(false);
		return;
	}

	local t = appendage.getTimer().Get();
	if(t <= 550 && t > 0)
	{
		local accel = sq_GetAccel(0, 150, t, 450, true);
		if(accel < 150)
			sq_setCurrentAxisPos(parentObj, 2, accel);
	}
	else
	{
		if(t > 250 && parentObj.getZPos() == 0)
		{
			sq_SetCustomRotate(parentObj, 0.0);
			local activeObj = sq_GetCNRDObjectToActiveObject(parentObj);
			sq_IntVectorClear(sq_GetGlobalIntVector());
			sq_IntVectorPush(sq_GetGlobalIntVector(), activeObj.getDirection());
			sq_IntVectorPush(sq_GetGlobalIntVector(), 0);
			sq_IntVectorPush(sq_GetGlobalIntVector(), DOWN_PARAM_TYPE_FORCE);
			sq_IntVectorPush(sq_GetGlobalIntVector(), 0);
			sq_IntVectorPush(sq_GetGlobalIntVector(), 250);
			sq_AddSetStatePacketActiveObject(activeObj, STATE_DOWN, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE);
			appendage.setValid(false);
		}
	}

	if(parentObj.getZPos() >= 10)
	{
		local rotate = (t * 2) % 400;
		if (rotate < 100)
			sq_SetCustomRotate(parentObj, sq_ToRadian(rotate/100.0 * 90.0));
		else if (rotate < 200)
			sq_SetCustomRotate(parentObj, sq_ToRadian(rotate/200.0 * 180.0));
		else if (rotate < 300)
			sq_SetCustomRotate(parentObj, sq_ToRadian(rotate/300.0 * 270.0));
		else if (rotate < 400)
			sq_SetCustomRotate(parentObj, sq_ToRadian(rotate/400.0 * 360.0));
	}
	else
		sq_SetCustomRotate(parentObj, 0.0);
}



function onEnd_appendage_momentaryslash(appendage)
{
	if(!appendage) return;

	appendage.sq_DeleteEffectFront();
	appendage.sq_DeleteAppendages();
}

