DEBUG_ANI <- 0	//ani??
DEBUG_SUBSTATE <- 1	//1?����substate

function addSubState(obj, state, datas){
	if(DEBUG_SUBSTATE==1)obj.getVar("allSubState").clear_vector();
	for(local i=0;i<15;i++){
		local SubState = obj.sq_GetVectorData(datas, i);
		if(SubState==-1){
			return;
		}
		obj.getVar("allSubState").push_vector(SubState);
	}
}

function drwaMainCustomUI_DeBug(obj){
	// 此函数在以下情况下起效果：当前用户是GM，并且当前模块类型是房间列表模块
	if(sqx_isGM() == 0)return;
	if(sq_GetCurrentModuleType() == MODULE_TYPE_ROOM_LIST){
		local x = 310;
		sqx_draw_text(x,5,-16717313,"TownId: "+sqx_get_townId());
		sqx_draw_text(x+80*1,5,-16717313,"MapId: "+sqx_get_MapId());
		sqx_draw_text(x+80*2,5,-16717313,"XPos: "+sqx_getPos("x"));
		sqx_draw_text(x+80*3,5,-16717313,"YPos: "+sqx_getPos("y"));
		sqx_draw_text(x+80*4,5,-16717313,"MouseX: "+sq_GetMouseXPos());
		sqx_draw_text(x+80*5,5,-16717313," MouseY: "+sq_GetMouseYPos());
	}
}

function drawCustomUI_DeBug(obj){
	// 此函数在以下情况下起效果：当前用户是GM
	if(sqx_isGM() == 0)return;
	local stage = sq_GetGlobaludpModuleStage();
	local dungeon = sq_GetDungeonByStage(stage);
	local x = 20;
	local y = 5;
	local count = obj.getVar("allSubState").size_vector();
	local SubState = "-1";
	for(local i=0;i<count;i++){
		local str = obj.getVar("allSubState").get_vector(i).tostring();
		SubState = SubState + " " + str + " ";
	}
	sqx_draw_text(x+10,y,-16717313,"DungeonIndex: "+ sq_GetDuegonIndex(dungeon));
	sqx_draw_text(x+110,y,-16717313," MapIndex: "+sq_GetMapIndex(stage));
	sqx_draw_text(x+200,y,-16717313,"Job: "+sq_getJob(obj)+" GrowType: "+sq_getGrowType(obj)+" WeaponSubType: "+obj.getWeaponSubType());
	sqx_draw_text(x+400,y,-16717313,"MouseZPos: "+sq_GetMouseXPos());
	sqx_draw_text(x+485,y,-16717313,"MouseYPos: "+sq_GetMouseYPos());
	sqx_draw_text(x+575,y,-16717313,"MyXPos: "+obj.getXPos());
	sqx_draw_text(x+645,y,-16717313,"MyYPos: "+obj.getYPos());
	sqx_draw_text(x+715,y,-16717313,"MyZPos: "+obj.getZPos());
	
	sqx_draw_text(x,y+410+20*1,-16717313,"CurrentSkillIndex: "+obj.getCurrentSkillIndex());
	sqx_draw_text(x,y+410+20*2,-16717313,"State: "+obj.sq_GetState());
	sqx_draw_text(x,y+410+20*3,-16717313,"SubState: "+SubState);
	sqx_draw_text(x,y+410+20*4,-16717313,"SkillSubState: "+obj.getSkillSubState());
	sqx_draw_text(x,y+410+20*5,-16717313,"ThrowState: "+obj.getThrowState());
	sqx_draw_text(x,y+410+20*6,-16717313,"ThrowIndex: "+obj.getThrowIndex());
	sqx_draw_text(x,y+410+20*7,-16717313,"BuffSkillIndex: "+obj.getBuffSkillIndex());
	sqx_draw_text(x,y+410+20*8,-16717313,"MyPassiveObj: "+obj.getVar("MyPassiveObj").get_vector(0).tostring());
	if(DEBUG_ANI==1){
		local ani = obj.sq_GetCurrentAni();	
		for(local i=0;i<400;i++){
			if(sq_IsSameAni(ani,sq_GetCustomAni(obj, i))){   
				sqx_draw_text(x,y+410+20*0,-16717313,"CurrentAni: "+i);
				break;
			}
		}
	}
}


function objcount(obj)
{
	// 此函数在调用时起效果，用于统计不同类型对象的数量
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
}