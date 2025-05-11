// 定义一个名为 onProc_swordman_illusionSlash 的函数，该函数接受一个参数 obj
function onProc_swordman_illusionSlash(obj)
{
    // 如果传入的 obj 为假（例如 null 或 undefined），则直接返回，终止函数执行
    if(!obj) return;
    // 调用 sq_GetLevelData 函数，根据 obj 的技能等级（技能 ID 为 73）获取一个尺寸比率值 sizeRate1
    local sizeRate1 = sq_GetLevelData(obj, 73, 3,sq_GetSkillLevel(obj, 73));
    // 如果 sizeRate1 不等于 100，则执行以下操作
    if(sizeRate1 != 100){
        // 调用 SkillSizeSettings 函数，设置 obj 的技能 20033 的尺寸为 sizeRate1
        SkillSizeSettings(obj , 20033 , sizeRate1);
        // 调用 SkillSizeSettings 函数，设置 obj 的技能 20034 的尺寸为 sizeRate1
        SkillSizeSettings(obj , 20034 , sizeRate1);
        // 调用 SkillSizeSettings 函数，设置 obj 的技能 20035 的尺寸为 sizeRate1
        SkillSizeSettings(obj , 20035 , sizeRate1);
        // 调用 SkillSizeSettings 函数，设置 obj 的技能 20036 的尺寸为 sizeRate1
        SkillSizeSettings(obj , 20036 , sizeRate1);
    }
    // 调用 sq_GetLevelData 函数，根据 obj 的技能等级（技能 ID 为 73）获取另一个尺寸比率值 sizeRate2
    local sizeRate2 = sq_GetLevelData(obj, 73, 4,sq_GetSkillLevel(obj, 73));
    // 如果 sizeRate2 不等于 100，则执行以下操作
    if(sizeRate2 != 100){
        // 调用 SkillSizeSettings 函数，设置 obj 的技能 20037 的尺寸为 sizeRate2
        SkillSizeSettings(obj , 20037 , sizeRate2);
    }

}
