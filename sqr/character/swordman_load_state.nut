// 加载剑士被动技能脚本文件
IRDSQRCharacter.pushScriptFiles("character/swordman/passive_skill_swordman.nut");  
// 为剑士职业推送冲击波区域状态
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/shockwavearea/shockwavearea.nut", "swordman_shockwavearea", 31, -1);
// 为剑士职业推送百剑状态
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/HundredSword/HundredSword.nut", "swordman_hundredsword", 47, -1);//?����?����
// 为剑士职业推送地狱突进状态
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/hellbenter/hellbenter.nut", "hellbenter", 46, -1);//��?��??�

// 为剑士职业推送瞬斩状态
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/momentaryslash/momentaryslash.nut", "swordman_momentaryslash", 23, 9);
// 为剑士职业推送瞬斩恢复状态
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/momentaryslash/momentaryslash.nut", "swordman_momentaryslashre", 250, -1);  //��������
// 推送剑士的被动对象
IRDSQRCharacter.pushPassiveObj("baynk/po_swordman_baynk.nut", 24399);

// 为剑士职业推送血剑状态
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/BloodSword/BloodSword.nut", "swordman_bloodsword", 60, -1);
// 为剑士职业推送幻影斩状态
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/IllusionSlash/IllusionSlash.nut", "swordman_illusionSlash", 40, 73);


 