
function drawCustomUI_DeBug(obj)
{
    if(DEBUG_FLAG == 0)return;
    objcount(obj);//ͤ???��ٸɺ
    stateinfo(obj);//ɬ?ӷ?��ٸɺ
    drawzi(obj);
}

function drawzi(obj){
	drawDebugText(obj,"debugtext2",80,8,250,20);//??3
	drawdebugnums(obj,"debugnums2",200,8,250,20);//??1
	drawDebugText(obj,"debugtext3",480,8,35,20);//??3
    drawdebugnums(obj,"debugnums3",600,8,35,20);//??3
    drawDebugText(obj,"debugtext4",680,8,35,20);//??4
    drawdebugnums(obj,"debugnums4",800,8,35,20);//??4
	drawDebugText(obj,"dsubstatetext",900,8,35,20);   
	drawdebugnums(obj,"dsubstate",900,8,50,20);//??5 ????ɺ?��??
}

function addSubState(obj, state, datas){
	if(DEBUG_SUBSTATE==1)obj.getVar("dsubstate").clear_vector();
	obj.getVar("dsubstatetext").clear_vector();
	obj.getVar("dsubstatetext").push_vector(5);
	for(local i=0;i<15;i++){
		local SubState = obj.sq_GetVectorData(datas, i);
		if(SubState==-1){
			return;
		}
		obj.getVar("dsubstate").push_vector(SubState);
	}
}

function stateinfo(obj){
    local stage = sq_GetGlobaludpModuleStage();
    local dungeon = sq_GetDungeonByStage(stage);
    local dungeonIndex = sq_GetDuegonIndex(dungeon);			
    local mapIndex = sq_GetMapIndex(stage);
    local skillIndex2 = obj.getThrowIndex();
    local attackIndex = obj.getAttackIndex();
    local buffSkillIndex = obj.getBuffSkillIndex();
    local throwState = obj.getThrowState();
    local state = obj.sq_GetState();
    local skillIndex = obj.getCurrentSkillIndex();
    local SubState = obj.getSkillSubState();

    obj.getVar("debugnums4").clear_vector();
	obj.getVar("debugtext4").clear_vector();
	obj.getVar("debugnums3").clear_vector();
	obj.getVar("debugtext3").clear_vector();
    obj.getVar("debugnums2").push_vector(dungeonIndex);//����ID
    obj.getVar("debugtext2").push_vector(1);
    obj.getVar("debugnums2").push_vector(mapIndex);//map����ID
	obj.getVar("debugtext2").push_vector(2);

    //obj.getVar("debugtext4").push_vector(sq_GetCurrentModuleType());//??ʫ?ٸ��
    //obj.getVar("debugtext4").push_vector(obj.sq_GetTeam());//??ξ?
    //obj.getVar("debugnums3").push_vector(buffSkillIndex);//17ɬ??��ɺ��?ID
    //obj.getVar("debugnums3").push_vector(skillIndex2);//13ɬ??��ɺ��?ID
    obj.getVar("debugnums4").push_vector(skillIndex);//??a??��ɺ��??ɬ?
	obj.getVar("debugtext4").push_vector(4);
	obj.getVar("debugnums4").push_vector(state);//??a?ɬ?
	obj.getVar("debugtext4").push_vector(3);
    obj.getVar("debugnums4").push_vector(SubState);//??a??��ɺ��??ɬ?
	obj.getVar("debugtext4").push_vector(5);
    obj.getVar("debugnums4").push_vector(throwState);//13ɬ??ɺ?ɬ?
	obj.getVar("debugtext4").push_vector(20);  
	obj.getVar("debugnums4").push_vector(attackIndex);//??8ɬ?��?ɬ??ɺ��?ID
    obj.getVar("debugtext4").push_vector(11);
    obj.getVar("debugnums3").push_vector(sq_getJob(obj));//????a?ٸ
	obj.getVar("debugtext3").push_vector(12);
    obj.getVar("debugnums3").push_vector(sq_getGrowType(obj));//??a? ?��ٸ��
	obj.getVar("debugtext3").push_vector(13);
    obj.getVar("debugnums3").push_vector(obj.getWeaponSubType());//a????��ɺ?��?ٸ
	obj.getVar("debugtext3").push_vector(14);
    obj.getVar("debugnums2").push_vector(obj.getXPos());
	obj.getVar("debugtext2").push_vector(6);
    obj.getVar("debugnums2").push_vector(obj.getYPos());
	obj.getVar("debugtext2").push_vector(7);
    obj.getVar("debugnums2").push_vector(obj.getZPos());
	obj.getVar("debugtext2").push_vector(8);
    obj.getVar("debugnums2").push_vector(IMouse.GetXPos());
	obj.getVar("debugtext2").push_vector(21);
    obj.getVar("debugnums2").push_vector(IMouse.GetYPos());
	obj.getVar("debugtext2").push_vector(22);	
    //???��??��?????????????��?��????
    if(obj.isCarryWeapon()){
        obj.getVar("debugnums3").push_vector(1);//?��??�� ??111
	}
    else{
        obj.getVar("debugnums3").push_vector(0);//?��??�� ??222
	}
	obj.getVar("debugtext3").push_vector(9);

	if(DEBUG_ANI==0) return;
    local ani = obj.sq_GetCurrentAni();//????ani
    for(local i=0;i<400;i++){//����300��
        if(sq_IsSameAni(ani,sq_GetCustomAni(obj, i))){//???��?���ɺ???ani??          
			obj.getVar("debugnums4").push_vector(i);//?????ɺ e?????�?????ani
			obj.getVar("debugtext4").push_vector(10);
			break;//??����
		}
	}
}

function objcount(obj)
{
    local objectManager = obj.getObjectManager();//??ͤ?��?��
    local objectcount = objectManager.getCollisionObjectNumber();//??ͤ?��?��??ɺ??
    obj.getVar("debugnums2").clear_vector();//?���??ɺ??ӷ?
	obj.getVar("debugtext2").clear_vector();
    local AiCharacter = 0;//?��
    local Monster = 0;//��ɫ
    local Character =0;//a?
    local PASSIVE = 0;//??
    for(local i=0;i<objectcount;i++)
    {
        local object = objectManager.getCollisionObject(i);//??ͤ?
        if(object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_MONSTER))
        {
            Monster++;
        }
        else if(object && sq_IsAiCharacter(sq_GetCNRDObjectToActiveObject(object)))
            AiCharacter++;
        else if(object && object.isObjectType(OBJECTTYPE_PASSIVE))
        {
            PASSIVE++;
        }
        else if(object && object.isObjectType(OBJECTTYPE_CHARACTER)&&!sq_IsAiCharacter(sq_GetCNRDObjectToActiveObject(object)))
        {
            Character++;
        }
    }

    obj.getVar("debugnums2").push_vector(objectcount);//��?ٸͤ???
    obj.getVar("debugtext2").push_vector(15);
	obj.getVar("debugnums2").push_vector(AiCharacter);//?��apc??
    obj.getVar("debugtext2").push_vector(16);
	obj.getVar("debugnums2").push_vector(Monster);//��ɫ??
    obj.getVar("debugtext2").push_vector(17);
	obj.getVar("debugnums2").push_vector(Character);//a???
    obj.getVar("debugtext2").push_vector(18);
	obj.getVar("debugnums2").push_vector(PASSIVE);//????
    obj.getVar("debugtext2").push_vector(19);
}

//?��?????�???????
function drawdebugnums(obj,vartext,xpos,xadd,ypos,yadd)
{
    local count = obj.getVar(vartext).size_vector();
    for(local a=0;a<count;a++)
    {
        local str = obj.getVar(vartext).get_vector(a).tostring();

        //���?��??
		for(local i=0;i<str.len();i++){
			local val = DEBUG_TEXT_INFO[str.slice(i,i+1)];
			local sprChar = obj.getVar().GetAnimationMap("sprChar", DEBUG_ANI_PATH);
			sq_SetAnimationFrameIndex( sprChar, val);
			sq_drawCurrentFrame(sprChar, xpos+i*xadd, ypos+a*yadd, false);
		}
    }
}

function drawDebugText(obj,vartext,xpos,xadd,ypos,yadd) {
	if(!obj) return;
	local count = obj.getVar(vartext).size_vector();
	for(local a=0;a<count;a++){
		local num = obj.getVar(vartext).get_vector(a);
		local str = DEBUG_KEY_INFO[num];
		for(local i=0;i<str.len();i+=1){
			local val = DEBUG_TEXT_INFO[str.slice(i,i+1)];
			local sprChar = obj.getVar().GetAnimationMap("sprChar", DEBUG_ANI_PATH);
			sq_SetAnimationFrameIndex(sprChar, val);
			sq_drawCurrentFrame(sprChar, xpos+i*xadd, ypos+a*yadd, false);
		}
	}
}

DEBUG_FLAG <- 0  //???
DEBUG_ANI <- 0	//ani??
DEBUG_SUBSTATE <- 1	//1?����substate

DEBUG_ANI_PATH <- "sqr/custom/debug/animation/zi.ani"
DEBUG_TEXT_INFO <- {
	["0"]=0,["1"]=1,["n"]=2,["o"]=3,["4"]=4,["5"]=5,["2"]=6,["3"]=7,["h"]=8,["i"]=9,
	["f"]=10,["g"]=11,["l"]=12,["-"]=13,["*"]=14,["+"]=15,["8"]=16,["9"]=17,["6"]=18,["7"]=19,
	["="]=20,["z"]=21,[";"]=22,["/"]=23,["."]=24,["'"]=25,["m"]=26,["t"]=27,["v"]=28,["r"]=29,
	["x"]=30,["k"]=31,["`"]=32,["a"]=33,["j"]=34,["s"]=35,["d"]=36,["e"]=37,["b"]=38,["c"]=39,
	["q"]=40,["p"]=41,["u"]=42,["y"]=43,["\\"]=44,["]"]=45,["w"]=46,["["]=47
}
DEBUG_KEY_INFO <- {
	[0]="=",[1]="dungeonindex",[2]="mapindex",[3]="state",[4]="skillindex",
	[5]="substate",[6]="xpos",[7]="ypos",[8]="zpos",[9]="carryweapon",
	[10]="curani",[11]="attackindex",[12]="job",[13]="growtype",[14]="weaponsubtype",
	[15]="objectcount",[16]="aicharacter",[17]="monster",[18]="character",[19]="passive",
	[20]="throwstate",[21]="mxpos",[22]="mypos"
}

