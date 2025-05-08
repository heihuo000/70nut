
//swordman
function drawCustomUI_Swordman(obj)
{
    setCharacterComboUiAppendage(obj);
    drawCurrentSkillCoolTimeUI(obj);//技?冷卻
    drawCustomUI_DeBug(obj); 
}

function setState_Swordman(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_ATFighter(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}

//at fighter
function drawCustomUI_ATFighter(obj)
{
    setCharacterComboUiAppendage(obj);
    drawCurrentSkillCoolTimeUI(obj);//技?冷卻
    drawCustomUI_DeBug(obj); 
}
function setState_ATFighter(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_ATFighter(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}

//Fighter
function drawCustomUI_Fighter(obj)
{
    setCharacterComboUiAppendage(obj);
    drawCurrentSkillCoolTimeUI(obj);//技?冷卻
    drawCustomUI_DeBug(obj); 
  //  drawMonsterBlood(obj);//怪物?條
}
function setState_Fighter(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_Fighter(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}


//ATGunner
function drawCustomUI_ATGunner(obj)
{
    setCharacterComboUiAppendage(obj);
    drawCurrentSkillCoolTimeUI(obj);//技?冷卻
    drawCustomUI_DeBug(obj); 
  //  drawMonsterBlood(obj);//怪物?條
}
function setState_ATGunner(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_ATGunner(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}



//Gunner
function drawCustomUI_Gunner(obj)
{
    setCharacterComboUiAppendage(obj);
    drawCurrentSkillCoolTimeUI(obj);//技?冷卻
    drawCustomUI_DeBug(obj); 
  //  drawMonsterBlood(obj);//怪物?條
}
function setState_Gunner(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_Gunner(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}


//ATMage
function drawCustomUI_ATMage(obj)
{
    setCharacterComboUiAppendage(obj);
    drawCurrentSkillCoolTimeUI(obj);//技?冷卻
    drawCustomUI_DeBug(obj); 
  //  drawMonsterBlood(obj);//怪物?條
}
function setState_ATMage(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_ATMage(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}



//Mage
function drawCustomUI_Mage(obj)
{
    setCharacterComboUiAppendage(obj);
    drawCurrentSkillCoolTimeUI(obj);//技?冷卻
  //  drawMonsterBlood(obj);//怪物?條
  drawCustomUI_DeBug(obj); 
}
function setState_Mage(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_Mage(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}


//Priest
function drawCustomUI_Priest(obj)
{
    setCharacterComboUiAppendage(obj);
    drawCurrentSkillCoolTimeUI(obj);//技?冷卻
  //  drawMonsterBlood(obj);//怪物?條
  drawCustomUI_DeBug(obj); 
}
function setState_Priest(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_Priest(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}



//Thief
function drawCustomUI_Thief(obj)
{
    setCharacterComboUiAppendage(obj);
    drawCurrentSkillCoolTimeUI(obj);//技?冷卻
  //  drawMonsterBlood(obj);//怪物?條
  drawCustomUI_DeBug(obj); 
}
function setState_Thief(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_Thief(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}

//DemonicSwordman
function drawCustomUI_DemonicSwordman(obj)
{
    setCharacterComboUiAppendage(obj);
    drawCurrentSkillCoolTimeUI(obj);//技?冷卻
    drawCustomUI_DeBug(obj); 
  //  drawMonsterBlood(obj);//怪物?條
}
function setState_DemonicSwordman(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_DemonicSwordman(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}

//common
function setState_AllGrowJob(obj, state, datas, isResetTimer) {
	if (!obj) return -1;
	//AllJobBuffNeo(obj); //jobBuff
	addSubState(obj, state, datas);   //debug
	return ;
}

function drawMainCustomUI_AllGrowJob(obj) {
	if (!obj) return;
	dofile("Plugin/debug.c");  //魤鷍debug
	/*
    local objectManager = obj.getObjectManager();
    if (!objectManager) return;
    local CollisionObjectNumber = objectManager.getCollisionObjectNumber();
    for (local i = 0; i < CollisionObjectNumber; i += 1) {
        local object = objectManager.getCollisionObject(i);
        if (object && object.isObjectType(OBJECTTYPE_ACTIVE) && obj.isEnemy(object) && object.isInDamagableState(obj) && object.getTeam() != 0) {
            if (!CNSquirrelAppendage.sq_IsAppendAppendage(object, "appendage/character/ap_mob_effect.nut")) {
                local append = CNSquirrelAppendage.sq_AppendAppendage(object, obj, -1, true, "appendage/character/ap_mob_effect.nut", false);
                CNSquirrelAppendage.sq_AppendAppendageID(append, object, obj, 255, false);
            }
        }
    }
    */
}




function procAppend_Gunner(obj)
{
	if(!obj) return;
		local open_suck = obj.sq_GetIntData(51, 22);
		if(open_suck){
			qq1741449942_doublegunhawk(obj);
		}
}

function procAppend_ATGunner(obj)
{
	if(!obj) return;
		local open_suck = obj.sq_GetIntData(51, 22);
		if(open_suck){
			qq1741449942_doublegunhawk(obj);
		}
}

function procAppend_Mage(obj)
{
	if(!obj) return;
	local can_use = obj.sq_GetIntData(116, 0);
	if(can_use){
		useBuffSkills1(obj);//簳觛巃��
	}
}
