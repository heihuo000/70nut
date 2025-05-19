
// 定义处理恶魔剑士被动技能的函数，接收对象、技能索引和技能等级作为参数
function ProcPassiveSkill_DemonicSwordman(obj, skill_index, skill_level)
{
    // 检查技能索引是否为 254
    if (skill_index == 254)
    {
        // 检查技能等级是否大于 0
        if(skill_level > 0)
        {
            // 调用 CNSquirrelAppendage 类的 sq_AppendAppendage 方法添加附属物，并将结果存储在局部变量 appendage 中
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/gunner/latentability/ap_latentability.nut", true);
        }
    }
    // 函数返回 true
    return true;
}
