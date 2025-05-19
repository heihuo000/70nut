


function drawCurrentSkillCoolTimeUI(obj)
{


	local skillmgr = obj.getSkillManager();
	local apd = getComboUiAppendage(obj);
	if (!apd)
		return false;
		
	local currentT = apd.getTimer().Get();
	local offsetX = 0;
	local offsetY = 0;
	
	if (apd.getVar("saveSkillOkTime").size_vector() == 0)
	{
		apd.getVar("saveSkillOkTime").clear_vector();
		for (local i = 0;i < 255;i++)
			apd.getVar("saveSkillOkTime").push_vector(-1);

		apd.getVar("saveCurrentSklTime").clear_vector();
		for (local i = 0;i < 255;i++)
			apd.getVar("saveCurrentSklTime").push_vector(-1);
	}
	
	for (local i = 0;i < 255;i++)
	{
		local skl = sq_GetSkill(obj,i);
		if (skl)
		{
			local isCool = skl.isInCoolTime();
			if (isCool)
			{
				if (apd.getVar("saveSkillOkTime").get_vector(i) == -1)
				{
					apd.getVar("saveSkillOkTime").set_vector(i,currentT);
					apd.getVar("saveCurrentSklTime").set_vector(i,skl.getCoolTime(obj, -1) );
				}else
				{
					local id = skillmgr.getSlotindex(i);
					if ((id >= 0 && id <= 7))
					{
					
						local coolTime = apd.getVar("saveCurrentSklTime").get_vector(i);
						local curCoolTime = coolTime - (currentT - apd.getVar("saveSkillOkTime").get_vector(i));
						if (curCoolTime >= 10000)
							drawSirocoUINumberWithPos(obj,550 + id * 30,570,curCoolTime / 1000);
						else
							drawSirocoUINumberWithPosPoint(obj,550 + id * 30,570,curCoolTime / 100);
					}else if ((id >= 198 && id <= 203))
					{
						local id = id - 198;
						local coolTime = apd.getVar("saveCurrentSklTime").get_vector(i);
						local curCoolTime = coolTime - (currentT - apd.getVar("saveSkillOkTime").get_vector(i));
						if (curCoolTime >= 10000)
							drawSirocoUINumberWithPos(obj,550 + id * 30,532,curCoolTime / 1000);
						else
							drawSirocoUINumberWithPosPoint(obj,550 + id * 30,532,curCoolTime / 100);
					}else{
					
						local coolTime = apd.getVar("saveCurrentSklTime").get_vector(i);
						local curCoolTime = coolTime - (currentT - apd.getVar("saveSkillOkTime").get_vector(i));
					
						local lastX = 520 + offsetX;
						local lastY = 485 + offsetY;
						sq_DrawSkillIcon(skl, lastX, lastY, sq_ALPHA(100) );

						if (curCoolTime >= 10000)
							drawSirocoUINumberWithPos(obj,lastX + 11,lastY + 10,curCoolTime / 1000);
						else
							drawSirocoUINumberWithPosPoint(obj,lastX + 11,lastY + 10,curCoolTime / 100);

						if (offsetX <= 150)
							offsetX += 30;
						else
						{
							offsetX = 0;
							offsetY -= 30;
						}
					}
				
				}
			}else
			{
				if (apd.getVar("saveSkillOkTime").get_vector(i) != -1)
				{
					apd.getVar("saveSkillOkTime").set_vector(i,-1);
				}else
				{
				
				}
			
			}	
			
		}
	}
		
	//outPutEx("dummy/dummy.txt","id = " + id + "\n");
	//local skl = skillmgr.getSlot(0);
	//if (skl)
	//	skl.getCoolTime(obj, -1);
}





function drawSirocoUINumberWithPos(obj,x,y,var)
{

    if (var == 0)
    {
        local ani = getSirocoUINumber(obj,0);
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani,x, y, false);
        return false;
    }

    local saveVar = var;
    local saveVar2 = var;
    local offsetX = 0;
  
    local centerX = 0;
  
  
    while (saveVar2 > 0)
    {
        saveVar2 = saveVar2 / 10;
        centerX += 5;
    }
  
    while (saveVar > 0)
    {
        local v = saveVar % 10;
        local ani = getSirocoUINumber(obj,v);
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani,x + offsetX, y, false);
        offsetX = offsetX - 5;
        saveVar = saveVar / 10;
  
    }



}





function drawSirocoUINumberWithPosPoint(obj,x,y,var)
{

    if (var < 0)
    {
        return false;
    }

    local offsetX = 0;

    local centerX = 0;
  
	
	local shi = var / 10;
	local ge = var % 10;
  
    local ani = getSirocoUINumber(obj,ge);
    sq_AnimationProc(ani);
    sq_drawCurrentFrame(ani,x + offsetX, y, false);
    offsetX = offsetX - 7;

    ani = getSirocoUINumber(obj,shi);
    sq_AnimationProc(ani);
    sq_drawCurrentFrame(ani,x + offsetX, y, false);
  
  /*
    while (saveVar > 0)
    {
        local v = saveVar % 10;
        local ani = getSirocoUINumber(obj,v);
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani,x + offsetX, y, false);
        offsetX = offsetX - 7;
        saveVar = saveVar / 10;
  
    }
   */

}



// 该函数用于获取 Siroco UI 数字动画。
// 参数 obj：表示一个对象，通常用于获取变量。
// 参数 var：表示要获取的数字，函数会将其取模 10 以确保在 0 - 9 范围内。
// 返回值：返回一个动画对象，该对象对应于指定数字的 Siroco UI 数字动画。
function getSirocoUINumber(obj,var)
{
    // 初始化一个变量 numImage 用于存储最终的动画对象，初始值为 null。
    local numImage = null;
    // 从传入的 obj 对象中获取变量集合，存储在 sq_var 中。
    local sq_var = obj.getVar();
    // 将传入的 var 参数取模 10，确保其值在 0 - 9 之间。
    var = var % 10;

    // 从变量集合 sq_var 中获取动画映射，键为 "SirocoUINumber" 加上取模后的 var，
    // 动画文件路径为 "common/newstylecomboui/siroco_ui/number/" 加上取模后的 var 再加上 ".ani"。
    // 将获取到的动画对象存储在 numImage 中。
    numImage = sq_var.GetAnimationMap("SirocoUINumber" + var, 
    "common/newstylecomboui/siroco_ui/number/" + var + ".ani");

    // 返回获取到的动画对象。
    return numImage;
}

























///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////







// 定义一个名为 setCharacterComboUiAppendage 的函数，该函数接受一个对象参数 obj。
// 其主要功能是检查指定的附加脚本是否已经附加到对象上，如果没有则进行附加操作。
function setCharacterComboUiAppendage(obj)
{
    // 使用 CNSquirrelAppendage.sq_IsAppendAppendage 方法检查 obj 对象是否已经附加了 "ui/ap_ui.nut" 这个附加脚本。
    // 如果没有附加，条件判断为真，进入 if 代码块。
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "ui/ap_ui.nut"))
    {
        // 调用 CNSquirrelAppendage.sq_AppendAppendage 方法将 "ui/ap_ui.nut" 附加到 obj 对象上。
        // 该方法的参数依次为：目标对象、附加到的对象、共振类型（这里是 SKILL_RESONANCE）、是否立即执行、附加脚本的路径、是否覆盖已有附加脚本。
        // 并将返回的附加脚本对象存储在局部变量 appendage 中。
        local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_RESONANCE, false,
        "ui/ap_ui.nut", true);

    }

}

function getComboUiAppendage(obj)
{
    return obj.GetSquirrelAppendage("ui/ap_ui.nut");
}


/////////////



/////////////



/////////////


/////////////


/////////////













