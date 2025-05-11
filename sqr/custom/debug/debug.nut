// 绘制自定义调试用户界面的函数
function drawCustomUI_DeBug(obj)
{
    // 如果调试标志为 0，则不进行后续操作，直接返回
    if(DEBUG_FLAG  <> 0)return;
    // 调用 objcount 函数统计对象数量并存储相关信息
    objcount(obj);
    // 调用 stateinfo 函数获取对象状态信息并存储
    stateinfo(obj);
    // 调用 drawzi 函数绘制调试文本和数字
    drawzi(obj);
}

// 绘制调试文本和数字的函数
function drawzi(obj){
    // 绘制 debugtext2 对应的调试文本
    drawDebugText(obj,"debugtext2",80,8,250,20);
    // 绘制 debugnums2 对应的调试数字
    drawdebugnums(obj,"debugnums2",200,8,250,20);
    // 绘制 debugtext3 对应的调试文本
    drawDebugText(obj,"debugtext3",480,8,35,20);
    // 绘制 debugnums3 对应的调试数字
    drawdebugnums(obj,"debugnums3",600,8,35,20);
    // 绘制 debugtext4 对应的调试文本
    drawDebugText(obj,"debugtext4",680,8,35,20);
    // 绘制 debugnums4 对应的调试数字
    drawdebugnums(obj,"debugnums4",800,8,35,20);
    // 绘制 dsubstatetext 对应的调试文本
    drawDebugText(obj,"dsubstatetext",900,8,35,20);   
    // 绘制 dsubstate 对应的调试数字
    drawdebugnums(obj,"dsubstate",900,8,50,20);
}

// 添加子状态信息的函数
function addSubState(obj, state, datas){
    // 如果调试子状态标志为 1，则清空 dsubstate 向量
    if(DEBUG_SUBSTATE==1)obj.getVar("dsubstate").clear_vector();
    // 清空 dsubstatetext 向量
    obj.getVar("dsubstatetext").clear_vector();
    // 向 dsubstatetext 向量中添加值 5
    obj.getVar("dsubstatetext").push_vector(5);
    // 遍历 datas 中的前 15 个数据
    for(local i=0;i<15;i++){
        // 获取 datas 中第 i 个位置的子状态信息
        local SubState = obj.sq_GetVectorData(datas, i);
        // 如果子状态信息为 -1，则停止遍历
        if(SubState==-1){
            return;
        }
        // 将子状态信息添加到 dsubstate 向量中
        obj.getVar("dsubstate").push_vector(SubState);
    }
}

// 获取对象状态信息并存储的函数
function stateinfo(obj){
    // 获取全局更新模块的阶段信息
    local stage = sq_GetGlobaludpModuleStage();
    // 根据阶段信息获取地下城信息
    local dungeon = sq_GetDungeonByStage(stage);
    // 获取地下城的索引
    local dungeonIndex = sq_GetDuegonIndex(dungeon);			
    // 获取地图的索引
    local mapIndex = sq_GetMapIndex(stage);
    // 获取对象的投掷索引
    local skillIndex2 = obj.getThrowIndex();
    // 获取对象的攻击索引
    local attackIndex = obj.getAttackIndex();
    // 获取对象的增益技能索引
    local buffSkillIndex = obj.getBuffSkillIndex();
    // 获取对象的投掷状态
    local throwState = obj.getThrowState();
    // 获取对象的当前状态
    local state = obj.sq_GetState();
    // 获取对象的当前技能索引
    local skillIndex = obj.getCurrentSkillIndex();
    // 获取对象的技能子状态
    local SubState = obj.getSkillSubState();

    // 清空 debugnums4 向量
    obj.getVar("debugnums4").clear_vector();
    // 清空 debugtext4 向量
    obj.getVar("debugtext4").clear_vector();
    // 清空 debugnums3 向量
    obj.getVar("debugnums3").clear_vector();
    // 清空 debugtext3 向量
    obj.getVar("debugtext3").clear_vector();
    // 将地下城索引添加到 debugnums2 向量中
    obj.getVar("debugnums2").push_vector(dungeonIndex);
    // 将值 1 添加到 debugtext2 向量中，用于标识地下城索引
    obj.getVar("debugtext2").push_vector(1);
    // 将地图索引添加到 debugnums2 向量中
    obj.getVar("debugnums2").push_vector(mapIndex);
    // 将值 2 添加到 debugtext2 向量中，用于标识地图索引
	obj.getVar("debugtext2").push_vector(2);

    //obj.getVar("debugtext4").push_vector(sq_GetCurrentModuleType());// 注释掉的代码，可能用于获取当前模块类型
    //obj.getVar("debugtext4").push_vector(obj.sq_GetTeam());// 注释掉的代码，可能用于获取对象所在队伍信息
    //obj.getVar("debugnums3").push_vector(buffSkillIndex);// 注释掉的代码，可能用于存储增益技能索引
    //obj.getVar("debugnums3").push_vector(skillIndex2);// 注释掉的代码，可能用于存储投掷索引
    // 将当前技能索引添加到 debugnums4 向量中
    obj.getVar("debugnums4").push_vector(skillIndex);
    // 将值 4 添加到 debugtext4 向量中，用于标识当前技能索引
	obj.getVar("debugtext4").push_vector(4);
    // 将对象当前状态添加到 debugnums4 向量中
	obj.getVar("debugnums4").push_vector(state);
    // 将值 3 添加到 debugtext4 向量中，用于标识对象当前状态
	obj.getVar("debugtext4").push_vector(3);
    // 将技能子状态添加到 debugnums4 向量中
    obj.getVar("debugnums4").push_vector(SubState);
    // 将值 5 添加到 debugtext4 向量中，用于标识技能子状态
	obj.getVar("debugtext4").push_vector(5);
    // 将投掷状态添加到 debugnums4 向量中
    obj.getVar("debugnums4").push_vector(throwState);
    // 将值 20 添加到 debugtext4 向量中，用于标识投掷状态
	obj.getVar("debugtext4").push_vector(20);  
    // 将攻击索引添加到 debugnums4 向量中
	obj.getVar("debugnums4").push_vector(attackIndex);
    // 将值 11 添加到 debugtext4 向量中，用于标识攻击索引
    obj.getVar("debugtext4").push_vector(11);
    // 将对象的职业信息添加到 debugnums3 向量中
    obj.getVar("debugnums3").push_vector(sq_getJob(obj));
    // 将值 12 添加到 debugtext3 向量中，用于标识职业信息
	obj.getVar("debugtext3").push_vector(12);
    // 将对象的成长类型信息添加到 debugnums3 向量中
    obj.getVar("debugnums3").push_vector(sq_getGrowType(obj));
    // 将值 13 添加到 debugtext3 向量中，用于标识成长类型信息
	obj.getVar("debugtext3").push_vector(13);
    // 将对象武器的子类型信息添加到 debugnums3 向量中
    obj.getVar("debugnums3").push_vector(obj.getWeaponSubType());
    // 将值 14 添加到 debugtext3 向量中，用于标识武器子类型信息
	obj.getVar("debugtext3").push_vector(14);
    // 将对象的 X 坐标添加到 debugnums2 向量中
    obj.getVar("debugnums2").push_vector(obj.getXPos());
    // 将值 6 添加到 debugtext2 向量中，用于标识 X 坐标
	obj.getVar("debugtext2").push_vector(6);
    // 将对象的 Y 坐标添加到 debugnums2 向量中
    obj.getVar("debugnums2").push_vector(obj.getYPos());
    // 将值 7 添加到 debugtext2 向量中，用于标识 Y 坐标
	obj.getVar("debugtext2").push_vector(7);
    // 将对象的 Z 坐标添加到 debugnums2 向量中
    obj.getVar("debugnums2").push_vector(obj.getZPos());
    // 将值 8 添加到 debugtext2 向量中，用于标识 Z 坐标
	obj.getVar("debugtext2").push_vector(8);
    // 将鼠标的 X 坐标添加到 debugnums2 向量中
    obj.getVar("debugnums2").push_vector(IMouse.GetXPos());
    // 将值 21 添加到 debugtext2 向量中，用于标识鼠标 X 坐标
	obj.getVar("debugtext2").push_vector(21);
    // 将鼠标的 Y 坐标添加到 debugnums2 向量中
    obj.getVar("debugnums2").push_vector(IMouse.GetYPos());
    // 将值 22 添加到 debugtext2 向量中，用于标识鼠标 Y 坐标
	obj.getVar("debugtext2").push_vector(22);	
    // 判断对象是否携带武器
    if(obj.isCarryWeapon()){
        // 如果携带武器，将值 1 添加到 debugnums3 向量中
        obj.getVar("debugnums3").push_vector(1);
	}
    else{
        // 如果未携带武器，将值 0 添加到 debugnums3 向量中
        obj.getVar("debugnums3").push_vector(0);
	}
    // 将值 9 添加到 debugtext3 向量中，用于标识是否携带武器
	obj.getVar("debugtext3").push_vector(9);

    // 如果动画调试标志为 0，则不进行后续动画相关操作，直接返回
	if(DEBUG_ANI==0) return;
    // 获取对象当前的动画信息
    local ani = obj.sq_GetCurrentAni();
    // 遍历 400 个自定义动画
    for(local i=0;i<400;i++){
        // 判断当前动画是否与第 i 个自定义动画相同
        if(sq_IsSameAni(ani,sq_GetCustomAni(obj, i))){          
            // 如果相同，将动画索引添加到 debugnums4 向量中
			obj.getVar("debugnums4").push_vector(i);
            // 将值 10 添加到 debugtext4 向量中，用于标识当前动画索引
			obj.getVar("debugtext4").push_vector(10);
            // 找到相同动画后，停止遍历
			break;
		}
	}
}

// 统计对象数量并存储相关信息的函数
function objcount(obj)
{
    // 获取对象的对象管理器
    local objectManager = obj.getObjectManager();
    // 获取对象管理器中碰撞对象的数量
    local objectcount = objectManager.getCollisionObjectNumber();
    // 清空 debugnums2 向量
    obj.getVar("debugnums2").clear_vector();
    // 清空 debugtext2 向量
	obj.getVar("debugtext2").clear_vector();
    // 初始化 AI 角色数量为 0
    local AiCharacter = 0;
    // 初始化怪物数量为 0
    local Monster = 0;
    // 初始化角色数量为 0
    local Character =0;
    // 初始化被动对象数量为 0
    local PASSIVE = 0;
    // 遍历所有碰撞对象
    for(local i=0;i<objectcount;i++)
    {
        // 获取第 i 个碰撞对象
        local object = objectManager.getCollisionObject(i);
        // 判断对象是否存在，是否为敌人，是否为怪物类型
        if(object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_MONSTER))
        {
            // 如果满足条件，怪物数量加 1
            Monster++;
        }
        // 判断对象是否存在，是否为 AI 角色
        else if(object && sq_IsAiCharacter(sq_GetCNRDObjectToActiveObject(object)))
            // 如果满足条件，AI 角色数量加 1
            AiCharacter++;
        // 判断对象是否存在，是否为被动对象类型
        else if(object && object.isObjectType(OBJECTTYPE_PASSIVE))
        {
            // 如果满足条件，被动对象数量加 1
            PASSIVE++;
        }
        // 判断对象是否存在，是否为角色类型且不是 AI 角色
        else if(object && object.isObjectType(OBJECTTYPE_CHARACTER)&&!sq_IsAiCharacter(sq_GetCNRDObjectToActiveObject(object)))
        {
            // 如果满足条件，角色数量加 1
            Character++;
        }
    }

    // 将碰撞对象总数添加到 debugnums2 向量中
    obj.getVar("debugnums2").push_vector(objectcount);
    // 将值 15 添加到 debugtext2 向量中，用于标识碰撞对象总数
    obj.getVar("debugtext2").push_vector(15);
    // 将 AI 角色数量添加到 debugnums2 向量中
	obj.getVar("debugnums2").push_vector(AiCharacter);
    // 将值 16 添加到 debugtext2 向量中，用于标识 AI 角色数量
    obj.getVar("debugtext2").push_vector(16);
    // 将怪物数量添加到 debugnums2 向量中
	obj.getVar("debugnums2").push_vector(Monster);
    // 将值 17 添加到 debugtext2 向量中，用于标识怪物数量
    obj.getVar("debugtext2").push_vector(17);
    // 将角色数量添加到 debugnums2 向量中
	obj.getVar("debugnums2").push_vector(Character);
    // 将值 18 添加到 debugtext2 向量中，用于标识角色数量
    obj.getVar("debugtext2").push_vector(18);
    // 将被动对象数量添加到 debugnums2 向量中
	obj.getVar("debugnums2").push_vector(PASSIVE);
    // 将值 19 添加到 debugtext2 向量中，用于标识被动对象数量
    obj.getVar("debugtext2").push_vector(19);
}

// 绘制调试数字的函数
function drawdebugnums(obj,vartext,xpos,xadd,ypos,yadd)
{
    // 获取 vartext 对应的向量的大小
    local count = obj.getVar(vartext).size_vector();
    // 遍历向量中的每个元素
    for(local a=0;a<count;a++)
    {
        // 将向量中的元素转换为字符串
        local str = obj.getVar(vartext).get_vector(a).tostring();

        // 遍历字符串中的每个字符
		for(local i=0;i<str.len();i++){
            // 根据字符获取对应的动画帧索引
			local val = DEBUG_TEXT_INFO[str.slice(i,i+1)];
            // 获取动画映射对象
			local sprChar = obj.getVar().GetAnimationMap("sprChar", DEBUG_ANI_PATH);
            // 设置动画帧索引
			sq_SetAnimationFrameIndex( sprChar, val);
            // 绘制当前动画帧
			sq_drawCurrentFrame(sprChar, xpos+i*xadd, ypos+a*yadd, false);
		}
    }
}

// 绘制调试文本的函数
function drawDebugText(obj,vartext,xpos,xadd,ypos,yadd) {
    // 如果对象不存在，则不进行后续操作，直接返回
	if(!obj) return;
    // 获取 vartext 对应的向量的大小
	local count = obj.getVar(vartext).size_vector();
    // 遍历向量中的每个元素
	for(local a=0;a<count;a++){
        // 获取向量中的元素
		local num = obj.getVar(vartext).get_vector(a);
        // 根据元素值从 DEBUG_KEY_INFO 中获取对应的字符串
		local str = DEBUG_KEY_INFO[num];
        // 遍历字符串中的每个字符
		for(local i=0;i<str.len();i+=1){
            // 根据字符获取对应的动画帧索引
			local val = DEBUG_TEXT_INFO[str.slice(i,i+1)];
            // 获取动画映射对象
			local sprChar = obj.getVar().GetAnimationMap("sprChar", DEBUG_ANI_PATH);
            // 设置动画帧索引
			sq_SetAnimationFrameIndex(sprChar, val);
            // 绘制当前动画帧
			sq_drawCurrentFrame(sprChar, xpos+i*xadd, ypos+a*yadd, false);
		}
	}
}

// 调试标志，0 表示关闭调试，1 表示开启调试
DEBUG_FLAG <- 0  
// 动画调试标志，0 表示关闭动画调试，1 表示开启动画调试
DEBUG_ANI <- 0	
// 子状态调试标志，1 表示开启子状态调试
DEBUG_SUBSTATE <- 1	

// 调试动画文件的路径
DEBUG_ANI_PATH <- "sqr/custom/debug/animation/zi.ani"
// 字符与动画帧索引的映射表
DEBUG_TEXT_INFO <- {
	["0"]=0,["1"]=1,["n"]=2,["o"]=3,["4"]=4,["5"]=5,["2"]=6,["3"]=7,["h"]=8,["i"]=9,
	["f"]=10,["g"]=11,["l"]=12,["-"]=13,["*"]=14,["+"]=15,["8"]=16,["9"]=17,["6"]=18,["7"]=19,
	["="]=20,["z"]=21,[";"]=22,["/"]=23,["."]=24,["'"]=25,["m"]=26,["t"]=27,["v"]=28,["r"]=29,
	["x"]=30,["k"]=31,["`"]=32,["a"]=33,["j"]=34,["s"]=35,["d"]=36,["e"]=37,["b"]=38,["c"]=39,
	["q"]=40,["p"]=41,["u"]=42,["y"]=43,["\\"]=44,["]"]=45,["w"]=46,["["]=47
}
// 键值与调试文本的映射表
DEBUG_KEY_INFO <- {
	[0]="=",
    [1]="dungeonindex",
    [2]="mapindex",
    [3]="state",
    [4]="skillindex",
	[5]="substate",
    [6]="xpos",
    [7]="ypos",
    [8]="zpos",
    [9]="carryweapon",
	[10]="curani",
    [11]="attackindex",
    [12]="job",
    [13]="growtype",
    [14]="weaponsubtype",
	[15]="objectcount",
    [16]="aicharacter",
    [17]="monster",
    [18]="character",
    [19]="passive",
	[20]="throwstate",
    [21]="mxpos",
    [22]="mypos"
}
