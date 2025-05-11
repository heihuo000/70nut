// 当剑豪的瞬间斩击强化状态被设置时调用的函数。处理状态设置时的相关逻辑，如获取子状态、武器子类型，设置技能子状态等。
function onSetState_swordman_momentaryslashre(obj, state, datas, isResetTimer) {
	if (!obj) return;

	// 从数据中获取子状态
	local subState = obj.sq_GetVectorData(datas, 0);
	// 从数据中获取武器子类型
	local weaponSubType = obj.sq_GetVectorData(datas, 1);
	// 清空对象变量的向量数据
	obj.getVar().clear_vector();
	// 将武器子类型添加到对象变量的向量中
	obj.getVar().push_vector(weaponSubType);
	// 设置技能的子状态
	obj.setSkillSubState(subState);
	// 停止对象的移动
	obj.sq_StopMove();

	// 当子状态为 0 时的处理逻辑
	if (subState == 0) {
		// 设置当前动画为 122
		obj.sq_SetCurrentAnimation(122);
		// 设置额外进入次数变量的值
		obj.getVar("extraEnterCount").setInt(0, sq_GetIntData(obj, 9, 7));
		// 清空瞬间斩击目标对象向量
		obj.getVar("momentaryslashTarget").clear_obj_vector();
		// 设置布尔变量为 true
		obj.getVar().setBool(0, true);
		// 根据武器子类型进行不同处理
		switch (weaponSubType) {
		case 3:
			// 检查是否进入技能最后按键单位
			obj.sq_IsEnterSkillLastKeyUnits(9);
			break;
		}
	}
	// 当子状态为 1 时的处理逻辑
	if (subState == 1) {
		// 播放音效 "SM_BAL_SHOT"
		obj.sq_PlaySound("SM_BAL_SHOT");
		// 设置当前动画为 123
		obj.sq_SetCurrentAnimation(123);
		// 设置静态速度信息
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		// 获取瞬间斩击目标对象的数量
		local targetCount = obj.getVar("momentaryslashTarget").get_obj_vector_size();
		// 如果是自己控制的对象
		if (obj.sq_IsMyControlObject()) {
			// 开始写入数据
			obj.sq_StartWrite();
			// 写入双字数据 1
			obj.sq_WriteDword(1);
			// 写入目标数量
			obj.sq_WriteDword(targetCount);
			// 发送创建被动对象的数据包
			obj.sq_SendCreatePassiveObjectPacket(24399, 0, 0, 0, 0);
		}
		// 根据武器子类型进行不同处理
		switch (weaponSubType) {
		case 0:
			// ӭ������
			if (obj.sq_IsMyControlObject()) {
				// 开始写入数据
				obj.sq_StartWrite();
				// 写入双字数据 4
				obj.sq_WriteDword(4);
				// 写入目标数量
				obj.sq_WriteDword(targetCount);
				// 发送创建被动对象的数据包
				obj.sq_SendCreatePassiveObjectPacket(24399, 0, -100, -50, 0);
			}
			break;
		}
	}
	// 当子状态大于等于 2 时的处理逻辑
	if (subState >= 2) {
		// 播放音效 "SM_BAL_SHOT"
		obj.sq_PlaySound("SM_BAL_SHOT");
		// 设置当前动画为 123
		obj.sq_SetCurrentAnimation(123);
		// 设置静态速度信息
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		// 获取瞬间斩击目标对象的数量
		local targetCount = obj.getVar("momentaryslashTarget").get_obj_vector_size();
		// 根据武器子类型进行不同处理
		switch (weaponSubType) {
		case 1:
			// ??��????��?
			if (obj.sq_IsMyControlObject()) {
				// 开始写入数据
				obj.sq_StartWrite();
				// 写入双字数据 2
				obj.sq_WriteDword(2);
				// 写入目标数量
				obj.sq_WriteDword(targetCount);
				// 发送创建被动对象的数据包
				obj.sq_SendCreatePassiveObjectPacket(24399, 0, 0, 0, 0);
			}
			break;
		case 3:
			// ??��????��?
			// 从数据中获取状态时间
			local stateTime = obj.sq_GetVectorData(datas, 2);
			if (obj.sq_IsMyControlObject()) {
				// 开始写入数据
				obj.sq_StartWrite();
				// 写入双字数据 5
				obj.sq_WriteDword(5);
				// 写入目标数量
				obj.sq_WriteDword(targetCount);
				// 写入状态时间
				obj.sq_WriteDword(stateTime);
				// 发送创建被动对象的数据包
				obj.sq_SendCreatePassiveObjectPacket(24399, 0, 0, 0, 0);
			}
			break;
		case 0:

	if (!obj) return;

	local subState = obj.sq_GetVectorData(datas, 0);
	local weaponSubType = obj.sq_GetVectorData(datas, 1);
	obj.getVar().clear_vector();
	obj.getVar().push_vector(weaponSubType);
	obj.setSkillSubState(subState);
	obj.sq_StopMove();

	if (subState == 0) {
		obj.sq_SetCurrentAnimation(122);
		obj.getVar("extraEnterCount").setInt(0, sq_GetIntData(obj, 9, 7));
		obj.getVar("momentaryslashTarget").clear_obj_vector();
		obj.getVar().setBool(0, true);
		switch (weaponSubType) {
		case 3:
			obj.sq_IsEnterSkillLastKeyUnits(9);
			break;
		}
	}
	if (subState == 1) {
		obj.sq_PlaySound("SM_BAL_SHOT");
		obj.sq_SetCurrentAnimation(123);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		local targetCount = obj.getVar("momentaryslashTarget").get_obj_vector_size();
		if (obj.sq_IsMyControlObject()) {
			obj.sq_StartWrite();
			obj.sq_WriteDword(1);
			obj.sq_WriteDword(targetCount);
			obj.sq_SendCreatePassiveObjectPacket(24399, 0, 0, 0, 0);
		}
		switch (weaponSubType) {
		case 0:
			//ӭ������
			if (obj.sq_IsMyControlObject()) {
				obj.sq_StartWrite();
				obj.sq_WriteDword(4);
				obj.sq_WriteDword(targetCount);
				obj.sq_SendCreatePassiveObjectPacket(24399, 0, -100, -50, 0);
			}
			break;
		}
	}
	if (subState >= 2) {
		obj.sq_PlaySound("SM_BAL_SHOT");
		obj.sq_SetCurrentAnimation(123);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		local targetCount = obj.getVar("momentaryslashTarget").get_obj_vector_size();
		switch (weaponSubType) {
		case 1:
			//??��????��?
			if (obj.sq_IsMyControlObject()) {
				obj.sq_StartWrite();
				obj.sq_WriteDword(2);
				obj.sq_WriteDword(targetCount);
				obj.sq_SendCreatePassiveObjectPacket(24399, 0, 0, 0, 0);
			}
			break;
		case 3:
			//??��????��?
			local stateTime = obj.sq_GetVectorData(datas, 2);
			if (obj.sq_IsMyControlObject()) {
				obj.sq_StartWrite();
				obj.sq_WriteDword(5);
				obj.sq_WriteDword(targetCount);
				obj.sq_WriteDword(stateTime);
				obj.sq_SendCreatePassiveObjectPacket(24399, 0, 0, 0, 0);
			}
			break;
		case 0:
		case 2:
		case 4:
		case 5:
			//??��????��?
			if (obj.sq_IsMyControlObject()) {
				obj.sq_StartWrite();
				obj.sq_WriteDword(3);
				obj.sq_WriteDword(targetCount);
				obj.sq_SendCreatePassiveObjectPacket(24399, 0, 0, 0, 0);
			}
			break;
		}
		RemoveAllAnimation(obj);
	}
}
// 剑豪瞬间斩击强化状态处理函数，在每个处理周期调用，用于处理状态相关逻辑
function onProcCon_swordman_momentaryslashre(obj) {
    // 如果对象为空，直接返回，避免后续操作出错
    if (!obj) return;

    // 获取当前技能的子状态
    local subState = obj.getSkillSubState();
    // 从对象变量中获取武器子类型
    local weaponSubType = obj.getVar().get_vector(0);
    // 获取当前动画的当前帧索引
    local frameIndex = obj.getCurrentAnimation().GetCurrentFrameIndex();
    // 从对象变量中获取额外进入次数
    local extraEnterCount = obj.getVar("extraEnterCount").getInt(0);

    // 当子状态为 0 时的处理逻辑
    if (subState == 0) {
        // 检查状态计时器是否达到指定值
        if (obj.sq_GetStateTimer() >= sq_GetIntData(obj, 9, 0)) {
            // 如果武器子类型为 3
            if (weaponSubType == 3) {
                // 检查对象变量中的布尔值是否为 true
                if (obj.getVar().getBool(0)) {
                    // 播放剑豪瞬间斩击充能动画
                    SMals_ani(obj, "character/swordman/effect/animation/momentaryslash/charge1.ani", 0, 0, 0, 100, 1.0, 0, 0, 0);
                    // 将对象变量中的布尔值设置为 false
                    obj.getVar().setBool(0, false);
                }
                // 检查是否未按下技能最后按键或者状态计时器超过指定值
                if (!obj.isDownSkillLastKey() || obj.sq_GetStateTimer() >= (sq_GetIntData(obj, 9, 0) + sq_GetIntData(obj, 14, 8))) {
                    // 清空对象的整数向量数据
                    obj.sq_IntVectClear();
                    // 向整数向量中添加值 2，可能表示新的子状态
                    obj.sq_IntVectPush(2);
                    // 向整数向量中添加对象的武器子类型
                    obj.sq_IntVectPush(obj.getWeaponSubType());
                    // 向整数向量中添加当前状态计时器的值
                    obj.sq_IntVectPush(obj.sq_GetStateTimer());
                    // 添加设置状态的数据包，将对象状态设置为 250，优先级为忽略强制状态，并且可能重置计时器
                    obj.sq_AddSetStatePacket(250, STATE_PRIORITY_IGNORE_FORCE, true);
                }
            }
            // 武器子类型不为 3 的情况
            else {
                // 清空对象的整数向量数据
                obj.sq_IntVectClear();
                // 向整数向量中添加值 1，可能表示新的子状态
                obj.sq_IntVectPush(1);
                // 向整数向量中添加对象的武器子类型
                obj.sq_IntVectPush(obj.getWeaponSubType());
                // 添加设置状态的数据包，将对象状态设置为 250，优先级为忽略强制状态，并且可能重置计时器
                obj.sq_AddSetStatePacket(250, STATE_PRIORITY_IGNORE_FORCE, true);
            }
        }

        // 获取对象的对象管理器
        local objectManager = obj.getObjectManager();
        // 遍历对象管理器中的所有碰撞对象
        for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++) {
            // 获取当前碰撞对象
            local object = objectManager.getCollisionObject(i);
            // 计算当前碰撞对象与目标对象之间的距离
            local distance = sq_GetDistanceObject(object, obj, false);
            // 计算攻击范围
            local range = 3 * sq_GetIntData(obj, 9, 6);
            // 检查对象是否满足条件：存在、是敌人、距离在攻击范围内且是活动对象类型
            if (object && obj.isEnemy(object) && distance <= range && object.isObjectType(OBJECTTYPE_ACTIVE)) {
                // 将满足条件的对象添加到瞬间斩击目标对象向量中
                obj.getVar("momentaryslashTarget").push_obj_vector(object);
            }
        }
    }

    // 当子状态为 1，当前帧索引大于等于 7，且武器子类型为 1 或 5 时的处理逻辑
    if (subState == 1 && frameIndex >= 7 && (weaponSubType == 1 || weaponSubType == 5)) {
        // 启用技能 9 的命令
        obj.setSkillCommandEnable(9, true);
        // 检查是否触发技能 9
        if (obj.sq_IsEnterSkill(9) != -1) {
            // 清空对象的整数向量数据
            obj.sq_IntVectClear();
            // 向整数向量中添加值 2，可能表示新的子状态
            obj.sq_IntVectPush(2);
            // 向整数向量中添加对象的武器子类型
            obj.sq_IntVectPush(obj.getWeaponSubType());
            // 添加设置状态的数据包，将对象状态设置为 250，优先级为忽略强制状态，并且可能重置计时器
            obj.sq_AddSetStatePacket(250, STATE_PRIORITY_IGNORE_FORCE, true);
        }
    }

    // 当子状态大于等于 2，当前帧索引大于等于 7，武器子类型为 1 或 5，且额外进入次数大于 0 时的处理逻辑
    if (subState >= 2 && frameIndex >= 7 && (weaponSubType == 1 || weaponSubType == 5) && extraEnterCount > 0) {
        // 启用技能 9 的命令
        obj.setSkillCommandEnable(9, true);
        // 检查是否触发技能 9
        if (obj.sq_IsEnterSkill(9) != -1) {
            // 清空对象的整数向量数据
            obj.sq_IntVectClear();
            // 向整数向量中添加子状态加 1 的值，可能表示新的子状态
            obj.sq_IntVectPush(subState + 1);
            // 向整数向量中添加对象的武器子类型
            obj.sq_IntVectPush(obj.getWeaponSubType());
            // 添加设置状态的数据包，将对象状态设置为 250，优先级为忽略强制状态，并且可能重置计时器
            obj.sq_AddSetStatePacket(250, STATE_PRIORITY_IGNORE_FORCE, true);
            // 将额外进入次数减 1 并更新到对象变量中
            obj.getVar("extraEnterCount").setInt(0, extraEnterCount - 1);
        }
    }
}

// 剑豪瞬间斩击强化状态下当前动画结束时调用的函数
function onEndCurrentAni_swordman_momentaryslashre(obj) {
    // 如果对象为空或者不是自己控制的对象，直接返回
    if (!obj || !obj.isMyControlObject()) return;

    // 获取当前技能的子状态
    local subState = obj.getSkillSubState();
    // 当子状态大于等于 1 时的处理逻辑
    if (subState >= 1) {
        // 清空对象的整数向量数据
        obj.sq_IntVectClear();
        // 添加设置状态的数据包，将对象状态设置为站立状态，优先级为忽略强制状态，并且可能重置计时器
        obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, true);
    }
}

// 剑豪瞬间斩击强化状态结束时调用的函数
function onEndState_swordman_momentaryslashre(obj, new_state){
    // 如果对象为空，直接返回
    if(!obj) return;
    // 如果新状态不是 250
    if(new_state != 250){
        // 移除对象的所有动画
        RemoveAllAnimation(obj);
    }
}

// 剑豪瞬间斩击状态设置时调用的函数。处理状态设置时的相关逻辑。
// 参数:
// obj: 对象实例，代表剑豪角色。
// state: 状态值，具体含义取决于游戏状态系统。
// datas: 状态相关的数据。
// isResetTimer: 布尔值，指示是否重置状态计时器。
function onSetState_swordman_momentaryslash(obj, state, datas, isResetTimer) {
    // 如果对象为空，则直接返回，避免后续操作出错
    if (!obj) return;

    // 停止对象的移动
    obj.sq_StopMove();
    // 启动技能 9 的冷却时间，冷却时间根据技能等级计算，-1 可能表示使用默认冷却时间计算方式
    obj.startSkillCoolTime(9, sq_GetSkillLevel(obj, 9), -1);
    // 清空对象的整数向量数据
    obj.sq_IntVectClear();
    // 向整数向量中添加值 0，可能表示子状态为 0
    obj.sq_IntVectPush(0);
    // 向整数向量中添加对象的武器子类型
    obj.sq_IntVectPush(obj.getWeaponSubType());
    // 添加设置状态的数据包，将对象状态设置为 250，优先级为忽略强制状态，并且可能重置计时器
    obj.sq_AddSetStatePacket(250, STATE_PRIORITY_IGNORE_FORCE, true);
}