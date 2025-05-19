// 此文件用于定义 squirrel 脚本的枚举常量，以方便后续使用和转换。
// 如果在编写脚本时需要添加新的常量，请在这个 _header.nut 文件中进行添加。
// 陆地类型枚举
LANDTYPE_GRASS <- 0 		  //  草地
LANDTYPE_WETGRASS <- 1 		  //  湿润草地
LANDTYPE_SWAMP <- 2 		  //  沼泽
LANDTYPE_POISONSWAMP <- 3 		  //  毒沼泽
LANDTYPE_BROWNDIRT <- 4 		  //  棕色泥土
LANDTYPE_BLUEDIRT <- 5 		  //  蓝色泥土
LANDTYPE_BONEYARD <- 6 		  //  骨场
LANDTYPE_WATER <- 7 		  //  水
LANDTYPE_MAGMA <- 8 		  //  岩浆
LANDTYPE_SNOW <- 9 		  //  雪
LANDTYPE_RED_SWAMP <- 10       //  红色沼泽
LANDTYPE_PURPLE_POISONSWAMP <- 11 		  //  紫色毒沼泽

// 陆地粒子枚举
LANDPARTICLE_DOWNLARGE <- 0    //  大粒子下落
LANDPARTICLE_DOWNSMALL <- 1    //  小粒子下落
LANDPARTICLE_MOVE <- 2         //  粒子移动

// 陆地音效枚举
LANDSOUND_JUMPSTART <- 0       //  跳跃开始音效
LANDSOUND_JUMPLAND <- 1        //  跳跃落地音效
LANDSOUND_MOVE <- 2            //  移动音效
LANDSOUND_DASH <- 3            //  冲刺音效
LANDSOUND_BACKSTEP <- 4        //  后退音效
LANDSOUND_FASTTHROUGH <- 5     //  快速穿过音效

CATEGORY_TRIBE_HUMAN <- 0 		  //  人类部落分类
CATEGORY_TRIBE_BEAST <- 1 		  //  野兽部落分类
CATEGORY_TRIBE_PLANT <- 2 		  //  植物部落分类
CATEGORY_TRIBE_INSECT <- 3 		  //  昆虫部落分类
CATEGORY_TRIBE_MACHINE <- 4 		  //  机械部落分类
CATEGORY_TRIBE_ORGANIC <- 5 		  //  有机生物部落分类
CATEGORY_TRIBE_HYBRID <- 6 		  //  混合生物部落分类
CATEGORY_TRIBE_UNDEAD <- 7 		  //  不死族部落分类
CATEGORY_TRIBE_DEVIL <- 8 		  //  恶魔部落分类
CATEGORY_TRIBE_SPIRIT <- 9 		  //  灵魂部落分类
CATEGORY_TRIBE_DRAGON <- 10 		  //  龙族部落分类
CATEGORY_AI_MELEE_ATTACK <- 11 		  //  AI 近战攻击分类
CATEGORY_AI_RANGE_ATTACK <- 12 		  //  AI 远程攻击分类
CATEGORY_AI_NEGATIVE <- 13 		  //  AI 消极行为分类
CATEGORY_AI_CAREFUL <- 14 		  //  AI 谨慎行为分类
CATEGORY_AI_FULLSUPERARMOR <- 15 		  //  AI 全超级护甲分类，AI 具有完整超级护甲状态（此分类用于判断 AI 的护甲状态），08 年 02 月 20 日确认
CATEGORY_AI_RASH <- 16 		  //  AI 鲁莽行为分类
CATEGORY_AI_MANACE <- 17 		  //  AI 威胁行为分类
CATEGORY_ARMOR_HUMAN <- 18 		  //  人类护甲分类（普通类型护甲）
CATEGORY_ARMOR_FORT <- 19 		  //  堡垒护甲分类（坚固类型护甲）
CATEGORY_ARMOR_DIVINE <- 20 		  //  神圣护甲分类（特殊强力护甲）
CATEGORY_ETC_GOBLIN <- 21 		  //  哥布林特殊分类
CATEGORY_ETC_TAU <- 22 		  //  牛头人特殊分类
CATEGORY_ETC_LUGARU <- 23 		  //  狼人特殊分类
CATEGORY_ETC_FIXTURE <- 24 		  //  固定装置特殊分类（场景中固定存在的物体）
CATEGORY_ETC_STAY <- 25 		  //  临时停留状态特殊分类
CATEGORY_PASSIVEOBJECT_TYPE_MELEE <- 26  //  被动物体近战类型分类
CATEGORY_PASSIVEOBJECT_TYPE_MISSILE <- 27  //  被动物体投射物类型分类
CATEGORY_PASSIVEOBJECT_TYPE_ENERGY <- 28  //  被动物体能量类型分类
CATEGORY_PASSIVEOBJECT_TYPE_PHYSICAL <- 29  //  被动物体物理类型分类
CATEGORY_PASSIVEOBJECT_TYPE_MAGICAL <- 30  //  被动物体魔法类型分类
CATEGORY_PASSIVEOBJECT_TYPE_BULLET <- 31  //  被动物体子弹类型分类
CATEGORY_PASSIVEOBJECT_TYPE_CANON <- 32  //  被动物体加农炮类型分类
CATEGORY_PASSIVEOBJECT_TYPE_EXPLOSION <- 33  //  被动物体爆炸类型分类
CATEGORY_PASSIVEOBJECT_TYPE_INFLAME <- 34  //  被动物体燃烧类型分类
CATEGORY_PASSIVEOBJECT_TYPE_NONINFLAME <- 35  //  被动物体非燃烧类型分类
CATEGORY_PASSIVEOBJECT_TYPE_LIGHT <- 36  //  被动物体光明类型分类
CATEGORY_PASSIVEOBJECT_TYPE_DARK <- 37  //  被动物体黑暗类型分类
CATEGORY_PASSIVEOBJECT_TYPE_WATER <- 38  //  被动物体水类型分类
CATEGORY_PASSIVEOBJECT_TYPE_FIRE <- 39  //  被动物体火类型分类
CATEGORY_PASSIVEOBJECT_TYPE_FORT <- 40  //  被动物体堡垒类型分类
CATEGORY_ETC_UNBEATABLE <- 41 		  //  无敌特殊分类，用于不可被击败的对象
CATEGORY_TRIBE_ANGEL <- 42 		  //  天使部落分类
CATEGORY_MAX <- 43  //  分类最大值，用于边界判断
DOWN_PARAM_TYPE_VALUE <- 0 		  //  �ߴ� ���̿� ������ �ӵ��� �ִ´�.
DOWN_PARAM_TYPE_FORCE <- 1 		  //  ���� �ִ´�.
DOWN_PARAM_TYPE_BOUNCE_VALUE <- 2 		  //  �ٿ. ���� ������ �ٷ� ���� �ʰ� ���� Ƣ�� �� ����.
DOWN_PARAM_TYPE_BOUNCE_FORCE <- 3 		  //  �ٿ. ���� ������ �ٷ� ���� �ʰ� ���� Ƣ�� �� ����.
DOWN_PARAM_TYPE_BOUNCE <- 4 		  //  �ٿ. ���� ������ �ٷ� ���� �ʰ� ���� Ƣ�� �� ����.

ENUM_DIRECTION_LEFT <- 0 
ENUM_DIRECTION_RIGHT <- 1 
ENUM_DIRECTION_UP <- 2 
ENUM_DIRECTION_DOWN <- 3 
ENUM_DIRECTION_NEUTRAL <- 4 
ENUM_DIRECTION_MAX <- 5 

GRAPHICEFFECT_NONE <- 0 		  //  ����
GRAPHICEFFECT_DODGE <- 1 		  //  ����
GRAPHICEFFECT_LINEARDODGE <- 2 		  //  ���Ͼ� ����
GRAPHICEFFECT_DARK <- 3 		  //  ��ũ
GRAPHICEFFECT_XOR <- 4 		  //  XOR
GRAPHICEFFECT_MONOCHROME <- 5 		  //  �ܻ�
GRAPHICEFFECT_SPACE_DISTORT <- 6 		  //  �����ܰ�
GRAPHICEFFECT_MAX <- 7 

ENUM_DRAWLAYER_CONTACT <- 0 		  //  ���� ���̾�
ENUM_DRAWLAYER_NORMAL <- 1 		  //  �Ϲ� ���̾�
ENUM_DRAWLAYER_BOTTOM <- 2 		  //  �ٴ� ���̾�
ENUM_DRAWLAYER_CLOSEBACK <- 3 		  //  �ٰ� ���̾�
ENUM_DRAWLAYER_MIDDLEBACK <- 4 		  //  �߰� ���̾�
ENUM_DRAWLAYER_DISTANTBACK <- 5 		  //  ���� ���̾�
ENUM_DRAWLAYER_COVER <- 6 		  //  ȭ���� ���� ���̾� ex : Blind
ENUM_DRAWLAYER_MAX <- 7 

STATE_STAND <- 0 		  //  ���ֱ�, �̵�
STATE_SIT <- 1 		  //  �ɱ� (�Ͼ�� ��)
STATE_SIT_FOREVER <- 2 		  //  �ɾ��ֱ�
STATE_DAMAGE <- 3 		  //  �±�
STATE_DOWN <- 4 		  //  �ٿ� 
STATE_DIE <- 5 		  //  �ױ�
STATE_JUMP <- 6 		  //  ����
STATE_JUMP_ATTACK <- 7 		  //  ����
STATE_ATTACK <- 8 		  //  ����
STATE_HOLD <- 9 		  //  ���� �Ҵ� ����
STATE_SUMMONSTART <- 10 		  //  ��ȯ ����
STATE_SUMMONEND <- 11 		  //  ��ȯ �Ϸ�
STATE_UNSUMMON <- 12 		  //  ����ȯ�Ǽ� �����
STATE_THROW <- 13 		  //  ��ô
STATE_DASH <- 14 		  //  �뽬 
STATE_DASH_ATTACK <- 15 		  //  �뽬 ����
STATE_GET_ITEM <- 16 		  //  ������ �ݱ�
STATE_BUFF <- 17 		  //  ����
STATE_QUICK_STANDING <- 18 		  //  �����ĵ�							
STATE_CROUCH <- 19 		  //  ũ���ġ
STATE_CROUCH_ATTACK <- 20 		  //  ũ���ġ ���ġ��
STATE_LOW_KICK <- 21 		  //  ��ű, �� ũ����, ���ű
STATE_TRY_GRAB <- 22 		  //  ��� �õ�
STATE_SUPLEX <- 23 		  //  ���÷���
STATE_JUMP_SUPLEX <- 24 		  //  �����̾�
STATE_JUMP_SUPLEX_LARIAT <- 25 		  //  �����̾� ȸ�� �߰�Ÿ
STATE_MOUNT_TRY <- 26 		  //  ����Ʈ �õ�
STATE_MOUNT <- 27 		  //  ����Ʈ
STATE_STOMP <- 28 		  //  ���
STATE_CLOSE_PUNCH <- 29 		  //  ����ġ ��ġ
STATE_LIFT_UPPER <- 30 		  //  ���� ����
STATE_GRAB_EXPLOSION <- 31 		  //  �Ϲ�ȭ�༺
STATE_VIRTUAL_ATTACK <- 32 		  //  �Ϲ� ���� -> �ظ�ű ���� ���� ���� STATE
STATE_SHOULDER_TACKLE <- 33 		  //  ��� ��Ŭ
STATE_WHIRL_WIND_KICK <- 34 		  //  ��ǳ��
STATE_BLOCK_BUSTER <- 35 		  //  ���� ������
STATE_TRY_LEG_SUPLEX <- 36 		  //  ���Ÿ�̳� �õ�
STATE_LEG_SUPLEX <- 37 		  //  ���Ÿ�̳� ����
STATE_LIGHTNING_DANCE <- 38 		  //  ����Ʈ�� ����
STATE_THROW_WEB <- 39 		  //  õ������
STATE_HIDDEN_STING <- 40 		  //  �ٴ� ����(���罺��)
STATE_VENOM_MINE <- 41 		  //  ������
STATE_JUNK_SPIN <- 42 		  //  ��ũ����
STATE_SHOULDER_CHARGE <- 43 		  //  ö���
STATE_SINGLE_KICK <- 44 		  //  �ظ�ű
STATE_NEN_FLOWER <- 45 		  //  ��ȭ
STATE_THROW_ENEMY <- 46 		  //  ���ø�
STATE_DASH_PUNCH <- 47 		  //  ���� ���
STATE_PUNCH_AFTER_RETURN <- 48 		  //  Ÿ���� �ڷε�����
STATE_RANDOM_KICK <- 49 		  //  �鿭�� ��Ÿ
STATE_RISING_UPPER <- 50 		  //  �·��
STATE_DASH_AFTER_DASH <- 51 		  //  ȣ�ſ���
STATE_EARTH_BREAK <- 52 		  //  �ݰ���
STATE_HOLD_UP <- 53 		  //  Ȧ���
STATE_WILD_CANNON_SPIKE <- 54 		  //  ���ϵ� ĳ�� ������ũ
STATE_SUPLEX_CYCLONE <- 55 		  //  ���÷��� ����Ŭ��
STATE_LIGHTNING_DRAGON <- 56 		  //  ����뵵
STATE_STRONGEST_LOW_KICK <- 57 		  //  ��� �ְ��� ��ű
STATE_GROUND_KICK <- 58 		  //  �׶���ű
STATE_FAST_DASH <- 59 		  //  ����
STATE_DESTROY_EARTH_SKY_DROP <- 60 		  //  ��Ʈ��Ʈ ������ ������ - õ������
STATE_TYPHOON <- 61 		  //  �׷��÷� ������
STATE_FLAME_LEGS <- 62 		  //  ��Ʈ����Ŀ ������ - ȭ���ǰ�
STATE_THROW_SAND <- 63 		  //  ���ͽ��I��
STATE_ENCHANT_POISON <- 64 		  //  ������
STATE_SPIRAL_NEN_SHOOT <- 65 		  //  ������ �� : ��
STATE_NEN_SPEAR_EX <- 66 		  //  �� ���Ǿ�(Ư��) proc���� �÷���1�� �� ��������,ȭ�� �÷���    �÷���2 �� ������ ������� ��ȯ 
STATE_HURRICANE_SPEAR <- 67 		  //  �㸮���� ���Ǿ� (Ư��)
STATE_CRASH_ROPE <- 68 		  //  �������� (Ư��)
STATE_CHARGE_SPEAR_EX <- 69 		  //  ���� ���Ǿ�(Ư��)
STATE_SPIRAL_COLUMN_EX <- 70 		  //  ����ȯ(Ư��)
STATE_GLUEY_FRUIT_EX <- 71 		  //  �������� ����(Ư��)
STATE_CHAIN_KICK_EX <- 72 		  //  ��ȯ�� (Ư��)
STATE_108_STAIRS_EX <- 73 		  //  108��� (Ư��)
STATE_INHERIT_START <- 74 
STATE_MAX <- 75 

SKILL_SHOULDER_CHARGE <- 1 		  //  001.ö���
SKILL_CROUCH <- 2 		  //  002.ũ���ġ
SKILL_GRAB_EXPLOSION <- 3 		  //  003.�Ϲ�ȭ�༺
SKILL_CRASH_LOW_KICK <- 4 		  //  004.�� ũ����
SKILL_LIFT_UPPER <- 5 		  //  005.���� ����
SKILL_DAMAGE_LOW_KICK <- 6 		  //  006.��ű
SKILL_PHYSICAL_DEFENSE_UP <- 7 		  //  007.ö�ݰ�
SKILL_CREATE_ILLUSION <- 8 		  //  008.�н�
SKILL_SUPLEX <- 9 		  //  009.���÷���
SKILL_BACK_SUPLEX <- 10 		  //  010.��극��Ŀ
SKILL_THUNDER_SUPLEX <- 11 		  //  011.���÷��� ���
SKILL_ENERGY_BALL <- 12 		  //  012.��ź
SKILL_THROW_SAND <- 13 		  //  013.���� ������
SKILL_MOUNT <- 14 		  //  014.����Ʈ
SKILL_ROAR_STUN <- 15 		  //  015.������
SKILL_ENERGY_FIELD <- 16 		  //  016.�����
SKILL_STOMP <- 17 		  //  017.���� ���
SKILL_JUMP_SUPLEX <- 18 		  //  018.�����̾�
SKILL_CLOSE_PUNCH <- 19 		  //  019.����ġ ��ġ
SKILL_SUPER_ARMOR <- 20 		  //  020.���۾Ƹ�
SKILL_CANCEL_ENERGY_BALL <- 21 		  //  021.ĵ�� ��ź
SKILL_SUPLEX_SUB_POWER_UP <- 22 		  //  022.������ ����ũ �ٿ�
SKILL_CANCEL_LIFT_UPPER <- 23 		  //  023.ĵ�� ���� ����
SKILL_CANCEL_LOW_KICK <- 24 		  //  024.ĵ�� ��ű
SKILL_CANCEL_THROW_SAND <- 25 		  //  025.ĵ�� ���� ������
SKILL_CANCEL_CLOSE_PUNCH <- 26 		  //  026.ĵ�� ����ġ ��ġ
SKILL_CANCEL_SUPLEX <- 27 		  //  027.ĵ�� ���÷���
SKILL_CANCEL_JUMP_SUPLEX <- 28 		  //  028.ĵ�� �����̾�
SKILL_LIGHT_FRIENDSHIP <- 29 		  //  029.���� ģȭ
SKILL_LIGHT_ENCHANT_WEAPON <- 30 		  //  030.ī��
SKILL_ATTACK_SPEED_UP <- 31 		  //  031.Ȱ��ȭ ����
SKILL_POISON_TOLERANCE_UP <- 32 		  //  032.���� �ͼ���
SKILL_STUN_ON_USE_SKILL <- 33 		  //  033.��ȭ�Ը�
SKILL_EQUIP_BOXING_GLOVE <- 34 		  //  034.�����۷��� ��� ����
SKILL_BLIND_TOLERANCE_UP <- 35 		  //  035.������ ������
SKILL_LIGHT_TOLERANCE_UP <- 36 		  //  036.�¾��� Ŀư
SKILL_SLOW_DOWN_POWER_UP <- 37 		  //  037.����
SKILL_ENCHANT_POISON <- 38 		  //  038.�� ����(���ٸ���)
SKILL_AIM_VITAL_POINT <- 39 		  //  039.�޼� ����
SKILL_SPIRAL_NEN <- 40 		  //  040.������ ��
SKILL_FLAME_LEGS <- 41 		  //  041.��Ʈ����Ŀ ������ - ȭ���ǰ�
SKILL_NEN_GUARD <- 42 		  //  042.�ٰ���
SKILL_DOUBLE_THROW <- 43 		  //  043.���� ��ô
SKILL_PROVOCATION <- 44 		  //  044.����
SKILL_CLAW_MASTERY <- 45 		  //  045.Ŭ�� �����͸�
SKILL_SINGLE_KICK <- 46 		  //  046.�ظ� ű
SKILL_CANCEL_SINGLE_KICK <- 47 		  //  047.ĵ�� �ظ� ű
SKILL_CANCEL_GRAB_EXPLOSION <- 48 		  //  048.ĵ�� �Ϲ�ȭ�༺
SKILL_THROW_ENEMY <- 49 		  //  049.���ø�
SKILL_DEFINITE_GRAB <- 50 		  //  050.�ݵ�� ��´�!
SKILL_SLIDE_GRAB <- 51 		  //  051.�����̵� �׷�
SKILL_THROW_WEB <- 52 		  //  052.õ������
SKILL_CANCEL_THROW_ENEMY <- 53 		  //  053.ĵ�� ���ø�
SKILL_SHOULDER_TACKLE <- 54 		  //  054.��� ��Ŭ
SKILL_GRAB_CANNON <- 55 		  //  055.�׷� ĳ��
SKILL_ARMOR_MASTERY_LIGHT_SK <- 56 		  //  056.��ġ�� ���� �氩 �����͸�
SKILL_ARMOR_MASTERY_LIGHT_GP <- 57 		  //  057.������ �ټ��� �氩 �����͸�
SKILL_WHIRL_WIND_KICK <- 58 		  //  058.��ǳ��
SKILL_CANCEL_WHIRL_WIND_KICK <- 59 		  //  059.ĵ�� ��ǳ��
SKILL_BLOCK_BUSTER <- 60 		  //  060.���� ������
SKILL_CANCEL_THROW <- 61 		  //  061.ĵ�� ��ô
SKILL_LEG_SUPLEX <- 62 		  //  062.���Ÿ�̳�
SKILL_TYPHOON <- 63 		  //  063.�׷��÷� ������
SKILL_DUMMY <- 64 		  //  064.������� ����.
SKILL_EFFICIENT_BURN <- 65 		  //  065.��Ʈ������ ���� �нú� - ȿ������ ����
SKILL_GRAB_MASTERY <- 66 		  //  066.��� �����͸�
SKILL_NEN_FLOWER <- 67 		  //  067.��ȭ
SKILL_LIGHTNING_DANCE <- 68 		  //  068.����Ʈ�� ����
SKILL_ILLUSION_BOMB <- 69 		  //  069.ȯ������
SKILL_POWER_UP_ON_DASH <- 70 		  //  070.�����ǵ�
SKILL_STRONGEST_LOW_KICK <- 71 		  //  071.����ְ��� ��ű
SKILL_NEN_SHIELD <- 72 		  //  072.�𳯸��� õ��ȭ
SKILL_ARMOR_MASTERY_HEAVY_SP <- 73 		  //  073.�߰� �����͸�
SKILL_CRAZY_MOUNT <- 74 		  //  074.���� ����Ʈ
SKILL_HIDDEN_STING <- 75 		  //  075.���罺��
SKILL_VENOM_MINE <- 76 		  //  076.������
SKILL_JUNK_SPIN <- 77 		  //  077.��ũ����
SKILL_ENERGY_BALL_CHARGE <- 78 		  //  078.��ź ��ƽ��
SKILL_NEN_MONSTER_WHITE_TIGER <- 79 		  //  079.�ټ� : ��ȣ
SKILL_DASH_PUNCH <- 80 		  //  080.�������
SKILL_PUNCH_AFTER_RETURN <- 81 		  //  081.Ÿ���� �ڷε�����
SKILL_RANDOM_KICK <- 82 		  //  082.�鿭�� ��Ÿ
SKILL_RISING_UPPER <- 83 		  //  083.�·��
SKILL_DASH_AFTER_DASH <- 84 		  //  084.ȣ�ſ���
SKILL_DASH_AFTER_DASH_EXTENSION <- 85 		  //  085.ȣ��
SKILL_EARTH_BREAK <- 86 		  //  086.�ݰ���
SKILL_HOLD_UP <- 87 		  //  087.Ȧ���
SKILL_WILD_CANNON_SPIKE <- 88 		  //  088.���ϵ� ĳ�� ������ũ
SKILL_SUPLEX_CYCLONE <- 89 		  //  089.���÷��� ����Ŭ��
SKILL_LIGHTNING_DRAGON <- 90 		  //  090.����뵵
SKILL_MUSCLE_SHIFT <- 91 		  //  091.�ӽ� ����Ʈ	
SKILL_CANCEL_EARTH_BREAK <- 92 		  //  092.ĵ�� �ݰ���
SKILL_CANCEL_DASH_PUNCH <- 93 		  //  093.ĵ�� �ر�
SKILL_CANCEL_SHOULDER_CHARGE <- 94 		  //  094.ĵ�� ö���
SKILL_CANCEL_PUNCH_AFTER_RETURN <- 95 		  //  095.ĵ�� Ÿ���� �ڷε�����
SKILL_CANCEL_SUPLEX_CYCLONE <- 96 		  //  096.ĵ�� ���÷��� ����Ŭ��
SKILL_ARMOR_MASTERY_CLOTH_NM <- 97 		  //  097.õ �����͸�:�ٸ�����
SKILL_CANCEL_NEN_GUARD <- 98 		  //  098.ĵ�� �ٰ���
SKILL_CANCEL_ROAR_STUN <- 99 		  //  099.ĵ�� ������
SKILL_CANCEL_ENERGY_FIELD <- 100 		  //  100.ĵ�� �����
SKILL_CANCEL_ENCHANT_POISON <- 101 		  //  101.������� ����.
SKILL_CANCEL_VENOM_MINE <- 102 		  //  102.ĵ�� ������
SKILL_CANCEL_RANDOM_KICK <- 103 		  //  103.ĵ�� ��Ʈ����̺�
SKILL_BLOCK_BUSTER_EX <- 104 		  //  104.���� ������[��ȭ]
SKILL_DESTROY_EARTH_SKY_DROP <- 105 		  //  105.��Ʈ��Ʈ ������ ������ - õ������
SKILL_GROUND_KICK <- 106 		  //  106.�׶���ű
SKILL_CANCEL_GROUND_KICK <- 107 		  //  107.ĵ�� �׶���ű
SKILL_FAST_DASH <- 108 		  //  108.����
SKILL_SMART_THROW <- 109 		  //  ������ô �ҽ� �۾� - ������
SKILL_AUTO_LOAD <- 110 		  //  110.�ڵ�����
SKILL_SPIRAL_NEN_SHOOT <- 111 		  //  111.������ �� : ��
SKILL_SPIRAL_NEN_SPIN <- 112 		  //  112.������ �� : ��
SKILL_CANCEL_SPIRAL_NEN_SHOOT <- 113 		  //  113.ĵ�� ������ �� : ��
SKILL_NEN_POLE <- 114 		  //  114.���� ����
SKILL_TYPHOON_COUNTER_STRIKE <- 115 		  //  115.���� : �׷��÷� ������ �нú�
SKILL_1000HANDS_1000EYES <- 116 		  //  116.õ��õ�� : ���� ������ �нú�
SKILL_NEN_SPEAR_EX <- 117 		  //  117.�� ���Ǿ�(Ư��)
SKILL_CHARGE_SPEAR_EX <- 118 		  //  118.���� ���Ǿ�(Ư��)
SKILL_GLUEY_FRUIT_EX <- 119 		  //  119.������������ (Ư��)
SKILL_SPIRAL_COLUMN_EX <- 120 		  //  120.����ȯ(Ư��) ������
SKILL_108_STAIRS_EX <- 121 		  //  121.108��� (Ư��)
SKILL_HURRICANE_SPEAR <- 122 		  //  122.�㸮���� ���Ǿ� (Ư��)
SKILL_CRASH_ROPE <- 123 		  //  123.�������� (Ư��)
SKILL_CHAIN_KICK_EX <- 124 		  //  124.��ȯ�� (Ư��)

CUSTOM_ANI_CROUCH <- 0 		  //  ũ���ġ ����
CUSTOM_ANI_CRASH_LOW_KICK <- 1 		  //  �� ũ����
CUSTOM_ANI_LIFT_UPPER <- 2 		  //  ���� ����
CUSTOM_ANI_DAMAGE_LOW_KICK <- 3 		  //  ��ű
CUSTOM_ANI_TRY_SUPLEX <- 4 		  //  ���÷��� �õ�
CUSTOM_ANI_SUPLEX <- 5 		  //  ���÷���
CUSTOM_ANI_BACK_SUPLEX <- 6 		  //  ��극��Ŀ
CUSTOM_ANI_MOUNT_TRY <- 7 		  //  ����Ʈ �õ�
CUSTOM_ANI_MOUNT <- 8 		  //  ����Ʈ - ���� ������ ������ ������ ���
CUSTOM_ANI_MOUNT_PUNCH <- 9 		  //  ����Ʈ - ��ġ
CUSTOM_ANI_NOT_USE <- 10 		  //  ������� ����.
CUSTOM_ANI_STOMP <- 11 		  //  ���� ���
CUSTOM_ANI_TRY_JUMP_SUPLEX <- 12 		  //  �����̾� �õ�
CUSTOM_ANI_JUMP_SUPLEX <- 13 		  //  �����̾�
CUSTOM_ANI_JUMP_SUPLEX_LARIAT <- 14 		  //  �����̾� ȸ�� �߰�Ÿ
CUSTOM_ANI_CLOSE_PUNCH <- 15 		  //  ����ġ ��ġ
CUSTOM_ANI_GRAB_EXPLOSION <- 16 		  //  �Ϲ�ȭ�༺
CUSTOM_ANI_SHOULDER_TACKLE <- 17 		  //  ��� ��Ŭ
CUSTOM_ANI_WHIRL_WIND_KICK <- 18 		  //  ��ǳ��
CUSTOM_ANI_BLOCK_BUSTER_READY <- 19 		  //  ���� ������ - �غ� (��ȭ��ô ������ �϶��� �ߵ���)
CUSTOM_ANI_BLOCK_BUSTER_JUMP <- 20 		  //  ���� ������ - ���� (��ȭ��ô ������ �϶��� �ߵ���)
CUSTOM_ANI_BLOCK_BUSTER_SHOOT <- 21 		  //  ���� ������ - ���� (��ȭ��ô ������ �϶��� �ߵ���)
CUSTOM_ANI_BLOCK_BUSTER_NORMAL <- 22 		  //  ���� ������ - �Ϲ� ���� ������		
CUSTOM_ANI_TRY_LEG_SUPLEX <- 23 		  //  ���Ÿ�̳� �õ�
CUSTOM_ANI_LEG_SUPLEX_THROW <- 24 		  //  ���Ÿ�̳� : ������
CUSTOM_ANI_LEG_SUPLEX_KICK <- 25 		  //  ������� ű ���
CUSTOM_ANI_TYPHOON_GRAB <- 26 		  //  �׷��÷� ������ : ���
CUSTOM_ANI_TYPHOON_ATTACK1 <- 27 		  //  �׷��÷� ������ : 1Ÿ
CUSTOM_ANI_TYPHOON_ATTACK2 <- 28 		  //  �׷��÷� ������ : 2Ÿ
CUSTOM_ANI_TYPHOON_ATTACK3 <- 29 		  //  �׷��÷� ������ : 3Ÿ
CUSTOM_ANI_TYPHOON_KICKUP <- 30 		  //  �׷��÷� ������ : ���ø���
CUSTOM_ANI_TYPHOON_JUMP <- 31 		  //  �׷��÷� ������ : ����
CUSTOM_ANI_TYPHOON_LAST <- 32 		  //  �׷��÷� ������ : ��Ÿ		
CUSTOM_ANI_TYPHOON_STAY <- 33 		  //  �׷��÷� ������ : ��Ÿ �� ���
CUSTOM_ANI_CRAZY_MOUNT_START <- 34 		  //  ���� ����Ʈ
CUSTOM_ANI_CRAZY_MOUNT_PUNCH <- 35 		  //  ���� ����Ʈ �Ϲ� Ÿ��
CUSTOM_ANI_CRAZY_MOUNT_NOT_USE <- 36 		  //  ������� ����.
CUSTOM_ANI_CRAZY_MOUNT_END <- 37 		  //  ���� ����Ʈ ��Ÿ
CUSTOM_ANI_THROW_WEB <- 38 		  //  õ������
CUSTOM_ANI_HIDDEN_STING <- 39 		  //  ���罺��
CUSTOM_ANI_VENOM_MINE <- 40 		  //  ������
CUSTOM_ANI_FLAME_LEGS_CAST <- 41 		  //  ��Ʈ����Ŀ ������ - ȭ���ǰ�(����)
CUSTOM_ANI_JUNK_SPIN_LOOP <- 42 		  //  ��ũ����
CUSTOM_ANI_JUNK_SPIN_FINISH <- 43 
CUSTOM_ANI_MOUNT_END <- 44 		  //  ����Ʈ ������ ��ġ
CUSTOM_ANI_SHOULDER_CHARGE <- 45 		  //  ö���
CUSTOM_ANI_SINGLE_KICK <- 46 		  //  �ظ�ű
CUSTOM_ANI_NEN_FLOWER <- 47 		  //  ��ȭ
CUSTOM_ANI_TRY_THROW_ENEMY <- 48 		  //  ���ø� �õ�
CUSTOM_ANI_THROW_ENEMY_HOLD <- 49 		  //  ���ø� ����ֱ�
CUSTOM_ANI_THROW_ENEMY_THROW <- 50 		  //  ���ø� ������
CUSTOM_ANI_WHITE_TIGER_COMBO1 <- 51 		  //  �ټ�:��ȣ 1Ÿ
CUSTOM_ANI_WHITE_TIGER_COMBO2 <- 52 		  //  �ټ�:��ȣ 2Ÿ
CUSTOM_ANI_WHITE_TIGER_COMBO3 <- 53 		  //  �ټ�:��ȣ 3Ÿ
CUSTOM_ANI_WHITE_TIGER_COMBO4 <- 54 		  //  �ټ�:��ȣ 4Ÿ
CUSTOM_ANI_WHITE_TIGER_COMBO5 <- 55 		  //  �ټ�:��ȣ 5Ÿ
CUSTOM_ANI_WHITE_TIGER_DASH_ATTACK <- 56 		  //  �ټ�:��ȣ �뽬����
CUSTOM_ANI_WHITE_TIGER_JUMP_ATTACK <- 57 		  //  �ټ�:��ȣ ��������
CUSTOM_ANI_DASH_PUNCH <- 58 		  //  ���� ���
CUSTOM_ANI_PUNCH_AFTER_RETURN <- 59 		  //  Ÿ���� �ڷε�����
CUSTOM_ANI_RANDOM_KICK1 <- 60 		  //  ��Ʈ ����̺� 1Ÿ
CUSTOM_ANI_RANDOM_KICK2 <- 61 		  //  ��Ʈ ����̺� 2Ÿ
CUSTOM_ANI_RANDOM_KICK3 <- 62 		  //  ��Ʈ ����̺� 3Ÿ
CUSTOM_ANI_RANDOM_KICK_FINISH <- 63 		  //  ��Ʈ ����̺� ��Ÿ
CUSTOM_ANI_RISING_UPPER_DASH <- 64 		  //  �·�� : �뽬
CUSTOM_ANI_RISING_UPPER <- 65 		  //  �·�� : ����
CUSTOM_ANI_DASH_AFTER_DASH_COMBO1 <- 66 		  //  ȣ�ſ��� : 1Ÿ
CUSTOM_ANI_DASH_AFTER_DASH_COMBO2 <- 67 		  //  ȣ�ſ��� : 2Ÿ
CUSTOM_ANI_DASH_AFTER_DASH_COMBO3 <- 68 		  //  ȣ�ſ��� : 3Ÿ - ���ݰ��� ȣ�ſ��� 3Ÿ ���� 
CUSTOM_ANI_DASH_AFTER_DASH_COMBO4 <- 69 		  //  ȣ�ſ��� : 4Ÿ - ���ݰ��� ȣ�ſ��� 4Ÿ ���� 
CUSTOM_ANI_EARTH_BREAK <- 70 		  //  �ݰ���
CUSTOM_ANI_HOLD_UP_TRY <- 71 		  //  Ȧ��� : �õ�
CUSTOM_ANI_HOLD_UP_HOLD <- 72 		  //  Ȧ��� : ���
CUSTOM_ANI_HOLD_UP_HIT <- 73 		  //  Ȧ��� : ������
CUSTOM_ANI_WILD_CANNON_SPIKE_CHARGE <- 74 		  //  ���ϵ� ĳ�� ������ũ : ����
CUSTOM_ANI_WILD_CANNON_SPIKE_FALL <- 75 		  //  ���ϵ� ĵ�� ������ũ : ��������
CUSTOM_ANI_THROW_SAND <- 76 		  //  ���ͽ�����
CUSTOM_ANI_THROW_SAND_DOUBLE <- 77 		  //  ���ͽ����� (������ô)
CUSTOM_ANI_TRY_SUPLEX_CYCLONE <- 78 		  //  ���÷��� ����Ŭ�� : �õ�
CUSTOM_ANI_TURN_SUPLEX_CYCLONE <- 79 		  //  ���÷��� ����Ŭ�� : �������
CUSTOM_ANI_WILD_CANNON_SPIKE_EXP <- 80 		  //  ���ϵ� ĳ�� ������ũ : ��Ÿ
CUSTOM_ANI_FINISH_SUPLEX_CYCLONE <- 81 		  //  ������� ����.
CUSTOM_ANI_LIGHTNING_DRAGON <- 82 		  //  ����뵵 ����
CUSTOM_ANI_DESTROY_EARTH_SKY_DROP_START <- 83 		  //  ��Ʈ��Ʈ ������ ������ - õ������ ����
CUSTOM_ANI_DESTROY_EARTH_SKY_DROP_ON_SKY <- 84 		  //  ��Ʈ��Ʈ ������ ������ - õ������ : ���߸��
CUSTOM_ANI_DESTROY_EARTH_SKY_DROP_FINISH <- 85 		  //  ��ȭ ���Ÿ�̳� 1�� ���
CUSTOM_ANI_TRY_LEG_SUPLEX_EX_SECOND <- 86 		  //  ��ȭ ���Ÿ�̳� 2�� �õ��Ϸ� ����
CUSTOM_ANI_LEG_SUPLEX_EX_2 <- 87 		  //  ��ȭ ���Ÿ�̳� 2�� ���
CUSTOM_ANI_RISING_UPPER_EX_START <- 88 		  //  ��ȭ ����¡ ��Ŭ ����
CUSTOM_ANI_RISING_UPPER_EX <- 89 		  //  ��ȭ ����¡ ��Ŭ
CUSTOM_ANI_RISING_UPPER_EX_FINISH <- 90 		  //  ��ȭ ����¡ ��Ŭ ��Ÿ
CUSTOM_ANI_BLOCK_BUSTER_EX_TRY <- 91 		  //  ��ȭ ���� ������ ����
CUSTOM_ANI_BLOCK_BUSTER_EX_JUMP <- 92 		  //  ��ȭ ���� ������ ����
CUSTOM_ANI_BLOCK_BUSTER_EX_FINISH <- 93 		  //  ��ȭ ���� ������ ��Ÿ
CUSTOM_ANI_SUPLEX_CYCLONE_JUMP_EX <- 94 		  //  ��ȭ ���÷��� ����Ŭ�� : ����
CUSTOM_ANI_SUPLEX_CYCLONE_SPIN_EX <- 95 		  //  ��ȭ ���÷��� ����Ŭ�� : ����
CUSTOM_ANI_DASH_PUNCH_EX <- 96 		  //  ��ȭ �ر�
CUSTOM_ANI_STOMP_FINISH <- 97 		  //  ���߹�� ��Ÿ
CUSTOM_ANI_GROUND_KICK_JUMP <- 98 		  //  �׶���ű - ����
CUSTOM_ANI_GROUND_KICK_ATTACK <- 99 		  //  �׶���ű - ����
CUSTOM_ANI_GROUND_KICK_FINISH <- 100 		  //  �׶���ű - �ǴϽ�
CUSTOM_ANI_FAST_DASH <- 101 		  //  ����
CUSTOM_ANI_CRASH_LOW_KICK_SECOND <- 102 		  //  �� ũ���� �ι�° Ÿ��
CUSTOM_ANI_THROW_ENEMY_SIDEKICK <- 103 		  //  ���� ���ø� ���̵�ű
CUSTOM_ANI_THROW_ENEMY_DOWNKICK <- 104 		  //  ���� ���ø� �������ű
CUSTOM_ANI_THROW_GRAB_CANNON_ENEMY_SIDEKICK <- 105 		  //  ���� ���ø� �׷�ĳ�� ���̵�ű
CUSTOM_ANI_SUPLEX_FINAL_ATTACK <- 106 		  //  ���� ���÷��� �׷�ĳ�� �������
CUSTOM_ANI_SUPLEX_THROW_FINAL_ATTACK <- 107 		  //  ���� ���÷��� �ö��� �������
CUSTOM_ANI_DOUBLE_THROW_WEB <- 108 		  //  ���� �׹���ô (������ô)
CUSTOM_ANI_LEG_SUPLEX_FIRST_KICK <- 109 		  //  ���� ���Ÿ�̳� �ʱ� ��� ���ݵ���
CUSTOM_ANI_JUMP_SUPLEX_HOLD_IMPRESSKICK <- 110 		  //  ���� �����̾� - ���Ұ��� - ������� ű ��� 
CUSTOM_ANI_LIGHTNING_DANCE_KICK <- 111 		  //  ���� ����Ʈ�� ���� ű
CUSTOM_ANI_LIGHTNING_DANCE_LAST_LOW_KICK <- 112 		  //  ���� ����Ʈ�� ���� ��Ÿ �ο�ű
CUSTOM_ANI_GRAB_EXPLOSION_KICK <- 113 		  //  ���� �Ϲ�ȭ�༺	- ��� ���� ����
CUSTOM_ANI_NEN_FLOWER_READY <- 114 		  //  �ٸ�����-���� ȣ���� Ÿ�� ����
CUSTOM_ANI_NEN_FLOWER_ATTACK <- 115 		  //  �ٸ�����-���� ȣ���� ����
CUSTOM_ANI_NEN_FLOWER_FINAL <- 116 		  //  �ٸ�����-���� ȣ���� ������ ����
CUSTOM_ANI_ENCHANT_POISON <- 117 		  //  ������ �߻�
CUSTOM_ANI_SPIRALNEN_SHOOT_PREPARE <- 118 		  //  ������ ��:�� �� �غ���
CUSTOM_ANI_SPIRALNEN_SHOOT <- 119 		  //  ������ ��:�� ��
CUSTOM_ANI_BLOCK_BUSTER_DOUBLE <- 120 		  //  ���� ������ - ������ô
CUSTOM_ANI_ENCHANT_POISON_DOUBLE <- 121 		  //  ������ - ������ô
CUSTOM_ANI_HIDDEN_STING_DOUBLE <- 122 		  //  �ٴ����� - ������ô
CUSTOM_ANI_DEFINITE_GRAB <- 123 		  //  �ݵ�� ��´� - Ư���׷� ����
CUSTOM_ANI_NEN_SPEAR <- 124 		  //  �� ���Ǿ� �ȱ�(Ư��)
CUSTOM_ANI_NEN_SPEAR_SUCCESS <- 125 		  //  �� ���Ǿ� �ȱ� ������(Ư��)
CUSTOM_ANI_HURRICANE_SPEAR <- 126 		  //  �������� Ư����ų - �㸮���� ���Ǿ�
CUSTOM_ANI_CHARGE_SPEAR_RECHARGE <- 127 		  //  �������Ǿ�(Ư��) ����		
CUSTOM_ANI_CHARGE_SPEAR_RUSH <- 128 		  //  �������Ǿ�(Ư��) ����
CUSTOM_ANI_CHARGE_SPEAR_END <- 129 		  //  �������Ǿ�(Ư��) ���� ��
CUSTOM_ANI_SPIRAL_COLUMN_EX <- 130 		  //  ����ȯ(Ư��)
CUSTOM_ANI_CRASH_ROPE <- 131 		  //  �������� (Ư��)
CUSTOM_ANI_GLUEY_FRUIT <- 132 		  //  �������� ����(Ư��)
CUSTOM_ANI_CHAIN_KICK <- 133 		  //  ��ȯ��(Ư��)
CUSTOM_ANI_108_STAIRS_TRY_EX <- 134 		  //  108���(Ư��)
CUSTOM_ANI_108_STAIRS_KICK_EX <- 135 		  //  108���(Ư��)
CUSTOM_ANI_108_STAIRS_PUNCH_EX <- 136 		  //  108���(Ư��)
CUSTOM_ANI_108_STAIRS_BLOW_EX <- 137 		  //  108���(Ư��)
CUSTOM_ANI_108_STAIRS_THROW_EX <- 138 		  //  108���(Ư��)
CUSTOM_ANI_108_STAIRS_FINAL_EX <- 139 		  //  108���(Ư��)

CUSTOM_ATTACKINFO_CRASH_LOW_KICK <- 0 		  //  �� ũ����
CUSTOM_ATTACKINFO_LIFT_UPPER <- 1 		  //  ���� ����
CUSTOM_ATTACKINFO_DAMAGE_LOW_KICK <- 2 		  //  ��ű
CUSTOM_ATTACKINFO_TRY_GRAB <- 3 		  //  ��� �õ�
CUSTOM_ATTACKINFO_SUPLEX <- 4 		  //  ���÷����� ���� ������
CUSTOM_ATTACKINFO_MOUNT <- 5 		  //  ����Ʈ ��ġ
CUSTOM_ATTACKINFO_STOMP <- 6 		  //  ���� ���
CUSTOM_ATTACKINFO_JUMP_SUPLEX <- 7 		  //  �����̾� (���� ű)
CUSTOM_ATTACKINFO_JUMP_SUPLEX_HEADING <- 8 		  //  �����̾� ������ ȸ��ű
CUSTOM_ATTACKINFO_JUMP_SUPLEX_LARIAT <- 9 		  //  �׷�ĳ�� �����̾� ������ ȸ��ű (���Ұ���)
CUSTOM_ATTACKINFO_CLOSE_PUNCH <- 10 		  //  ����ġ ��ġ
CUSTOM_ATTACKINFO_SHOULDER_CHARGE <- 11 		  //  ö���
CUSTOM_ATTACKINFO_SINGLE_KICK <- 12 		  //  �ظ� ű
CUSTOM_ATTACKINFO_GRAB_EXPLOSION <- 13 		  //  �Ϲ�ȭ�༺ Ÿ��
CUSTOM_ATTACKINFO_SHOULDER_TACKLE <- 14 		  //  ��� ��Ŭ
CUSTOM_ATTACKINFO_GRAB_CANNON <- 15 		  //  �׷� ĳ��
CUSTOM_ATTACKINFO_WHIRL_WIND_KICK <- 16 		  //  ��ǳ��
CUSTOM_ATTACKINFO_JUNK_SPIN <- 17 		  //  �ٴý��� (��ũ����)
CUSTOM_ATTACKINFO_LEG_SUPLEX_KICK <- 18 		  //  ���Ÿ�̳� : ����
CUSTOM_ATTACKINFO_LIGHTNING_DANCE <- 19 		  //  ����Ʈ�� ����
CUSTOM_ATTACKINFO_STRONGEST_LOW_KICK <- 20 		  //  ����ְ��� ��ű
CUSTOM_ATTACKINFO_CRAZY_MOUNT <- 21 		  //  ���� ����Ʈ
CUSTOM_ATTACKINFO_THROW_WEB <- 22 		  //  õ������
CUSTOM_ATTACKINFO_HIDDEN_STING <- 23 		  //  ���罺��
CUSTOM_ATTACKINFO_DASH_PUNCH <- 24 		  //  ���� ���
CUSTOM_ATTACKINFO_PUNCH_AFTER_RETURN <- 25 		  //  Ÿ���� �ڷε�����
CUSTOM_ATTACKINFO_RANDOM_KICK_1 <- 26 		  //  ��Ʈ ����̺� 1Ÿ
CUSTOM_ATTACKINFO_RANDOM_KICK_2 <- 27 		  //  ��Ʈ ����̺� 2Ÿ
CUSTOM_ATTACKINFO_RANDOM_KICK_3 <- 28 		  //  ��Ʈ ����̺� 3Ÿ
CUSTOM_ATTACKINFO_RANDOM_KICK_FINISH <- 29 		  //  ��Ʈ ����̺� ��Ÿ
CUSTOM_ATTACKINFO_DUMMY_4 <- 30 		  //  ������ �ʰ�����.
CUSTOM_ATTACKINFO_RISING_UPPER <- 31 		  //  �·�� : ����
CUSTOM_ATTACKINFO_DASH_AFTER_DASH_COMBO1 <- 32 		  // 	ȣ�ſ��� : 1Ÿ
CUSTOM_ATTACKINFO_DASH_AFTER_DASH_COMBO2 <- 33 		  // 	ȣ�ſ��� : 2Ÿ
CUSTOM_ATTACKINFO_VENOM_MINE <- 34 		  // 	������ ���ݷ�
CUSTOM_ATTACKINFO_DUMMY_2 <- 35 		  // 	������ �ʰ�����
CUSTOM_ATTACKINFO_HOLD_UP_TRY <- 36 		  //  Ȧ��� : �õ�
CUSTOM_ATTACKINFO_HOLD_UP_HIT <- 37 		  //  Ȧ��� : ������
CUSTOM_ATTACKINFO_WILD_CANNON_SPIKE_FALL <- 38 		  //  ���ϵ� ĳ�� ������ũ : ���߿��� ��������
CUSTOM_ATTACKINFO_WILD_CANNON_SPIKE_HIT <- 39 		  //  ���ϵ� ĳ�� ������ũ : �ٴڿ��� ������ �������ٶ�
CUSTOM_ATTACKINFO_WHITE_TIGER_COMBO1 <- 40 		  //  �ټ�:��ȣ 1Ÿ
CUSTOM_ATTACKINFO_WHITE_TIGER_COMBO2 <- 41 		  //  �ټ�:��ȣ 2Ÿ
CUSTOM_ATTACKINFO_WHITE_TIGER_COMBO3 <- 42 		  //  �ټ�:��ȣ 3Ÿ
CUSTOM_ATTACKINFO_WHITE_TIGER_COMBO4 <- 43 		  //  �ټ�:��ȣ 4Ÿ
CUSTOM_ATTACKINFO_WHITE_TIGER_COMBO5 <- 44 		  //  �ټ�:��ȣ 5Ÿ
CUSTOM_ATTACKINFO_WHITE_TIGER_DASH_ATTACK <- 45 		  //  �ټ�:��ȣ �뽬����
CUSTOM_ATTACKINFO_WHITE_TIGER_JUMP_ATTACK <- 46 		  //  �ټ�:��ȣ ��������
CUSTOM_ATTACKINFO_SUPLEX_CYCLONE_CRASH <- 47 		  //  ���÷��� ����Ŭ�� : ������
CUSTOM_ATTACKINFO_SUPLEX_CYCLONE_FINISH <- 48 		  //  ���÷��� ����Ŭ�� : ������ Ÿ��
CUSTOM_ATTACKINFO_LEG_SUPLEX_EX_SPIN <- 49 		  //  ��ȭ ���Ÿ�̳� ����
CUSTOM_ATTACKINFO_DASH_PUNCH_EX <- 50 		  //  ��ȭ �ر�
CUSTOM_ATTACKINFO_BLOCK_BUSTER_FINISH_EX <- 51 		  //  ��ȭ ���� ������ ��Ÿ
CUSTOM_ATTACKINFO_RISING_UPPER_START_EX <- 52 		  //  ��ȭ �·�� : ����
CUSTOM_ATTACKINFO_RISING_UPPER_EX <- 53 		  //  ��ȭ �·�� : ����
CUSTOM_ATTACKINFO_RISING_UPPER_FINISH_EX <- 54 		  //  ��ȭ �·�� : �ǴϽ�
CUSTOM_ATTACKINFO_SUPLEX_CYCLONE_EX <- 55 		  //  ��ȭ ���÷��� ����Ŭ��
CUSTOM_ATTACKINFO_SUPLEX_CYCLONE_SPIN_EX <- 56 		  //  ��ȭ ���÷��� ����Ŭ�� : ȸ��	
CUSTOM_ATTACKINFO_STOMP_FINISH <- 57 		  //  ���߹�� ��Ÿ
CUSTOM_ATTACKINFO_GROUND_KICK <- 58 		  //  �׶���ű
CUSTOM_ATTACKINFO_LIGHTNING_DRAGON <- 59 		  //  ����뵵
CUSTOM_ATTACKINFO_CRASH_LOW_KICK_SECOND <- 60 		  //  �� ũ���� �ι�° Ÿ��
CUSTOM_ATTACKINFO_THROW_ENEMY_UPKICK <- 61 		  //  ���� ���ø� UPű
CUSTOM_ATTACKINFO_THROW_ENEMY_SIDEKICK <- 62 		  //  ���� ���ø� SIDEű
CUSTOM_ATTACKINFO_THROW_ENEMY_DOWNKICK <- 63 		  //  ���� ���ø� DOWNű
CUSTOM_ATTACKINFO_TRY_GRAB_THROW_ENEMY <- 64 		  //  ��Ǯ�� 
CUSTOM_ATTACKINFO_THROW_WEB_DOUBLE <- 65 		  //  �׹���ô (������ô�϶�)
CUSTOM_ATTACKINFO_LIGHTNING_LOW_KICK <- 66 		  //  �׹���ô (������ô�϶�)
CUSTOM_ATTACKINFO_SUPLEX_GRABCANNON <- 67 		  //  ���÷��� �׷�ĳ�� 
CUSTOM_ATTACKINFO_NEN_FLOWER <- 68 		  //  �ٸ�����-����
CUSTOM_ATTACKINFO_TYPHOON <- 69 		  //  �׷��÷� ������
CUSTOM_ATTACKINFO_TYPHOON_LAST <- 70 		  //  �׷��÷� ������
CUSTOM_ATTACKINFO_SPIRAL_NEN_SHOOT <- 71 		  //  ������ ��:��
CUSTOM_ATTACKINFO_NEN_SPEAR <- 72 		  //  �ٽ��Ǿ�(Ư��)	
CUSTOM_ATTACKINFO_CHARGE_SPEAR <- 73 		  //  �������Ǿ�(Ư��)	
CUSTOM_ATTACKINFO_HURRICANE_SPEAR <- 74 		  // 	�㸮���� ���Ǿ� (Ư��)
CUSTOM_ATTACKINFO_CRASH_ROPE <- 75 		  //  �������� (Ư��)
CUSTOM_ATTACKINFO_CHAIN_KICK1 <- 76 		  //  ��ȯ�� 1Ÿ(Ư��)
CUSTOM_ATTACKINFO_CHAIN_KICK2 <- 77 		  //  ��ȯ�� 2Ÿ(Ư��)
CUSTOM_ATTACKINFO_CHAIN_KICK3 <- 78 		  //  ��ȯ�� 3Ÿ(Ư��)
CUSTOM_ATTACKINFO_108_STAIRS_KICK_EX <- 79 		  //  108���(Ư��)
CUSTOM_ATTACKINFO_108_STAIRS_PUNCH_EX <- 80 		  //  108���(Ư��)
CUSTOM_ATTACKINFO_108_STAIRS_BLOW_1_EX <- 81 		  //  108���(Ư��)
CUSTOM_ATTACKINFO_108_STAIRS_BLOW_2_EX <- 82 		  //  108���(Ư��)
CUSTOM_ATTACKINFO_108_STAIRS_BLOW_3_EX <- 83 		  //  108���(Ư��)

WEAPON_SUBTYPE_KNUCKLE <- 0 		  //  ��Ŭ
WEAPON_SUBTYPE_GAUNTLET <- 1 		  //  ��Ʋ��
WEAPON_SUBTYPE_CLAW <- 2 		  //  Ŭ��
WEAPON_SUBTYPE_BOXING_GLOVE <- 3 		  //  �����۷���
WEAPON_SUBTYPE_DUMMY <- 4 		  //  UNKNOWN
WEAPON_SUBTYPE_TONFA <- 5 		  //  ����
WEAPON_SUBTYPE_MAX <- 6 

SOUND_ID_STATIC <- 0 		  //  �ʿ� �ִ� ���� ��� �÷���
SOUND_ID_MOVE <- 1 		  //  �ȴ� �Ҹ�
SOUND_ID_ACTIVESTATUS_POISON <- 2 		  //  ������ �ɷ��� ��
SOUND_ID_ACTIVESTATUS_BURN <- 3 		  //  �� �ɷ��� ��
SOUND_ID_ACTIVESTATUS_LIGHTNING <- 4 		  //  ����Ʈ�� �ɷ��� ��
SOUND_ID_AURA_SHIELD <- 5 		  //  Appendage : ���� �ǵ�
SOUND_ID_MAGICAL_TEMPO_UP <- 6 		  //  Appendage : ��Ÿ��
SOUND_ID_DOT_AREA <- 7 		  //  Appendage : ������
SOUND_ID_DOT_AREA_DAMAGE <- 8 		  //  Appendage : ������ �ǰ�
SOUND_ID_DIVINE_LIGHT <- 9 		  //  Appendage : �ż��� ��
SOUND_ID_SHADOW_BOXER <- 10 		  //  Appendage : ������ �ڼ�
SOUND_ID_GUARD <- 11 		  //  ���� �����϶�
SOUND_ID_CHAKRA_OF_PASSION <- 12 		  //  Appendage : ������ íũ��
SOUND_ID_CHAKRA_OF_CALMNESS <- 13 		  //  Appendage : ������ íũ��
SOUND_ID_WAVE_MARK <- 14 		  //  Appendage : �ĵ���
SOUND_ID_KEIGA <- 15 		  //  Appendage : �ܿ��� ���̰�
SOUND_ID_END <- 16 

STATE_PRIORITY_AUTO <- 0 		  //  �ð��̳� ���ǿ� ���� �ڵ����� �Ǵ� �͵� (���� ����, �߻� -> ���� ���)
STATE_PRIORITY_USER <- 1 		  //  ������ Ŀ�ǵ忡 ���� ������ �͵� (��ų, ���� ��)
STATE_PRIORITY_HALF_FORCE <- 2 		  //  ���ؼ� ������ ���� �ƴ�����, ���� �������ٴ� ���� �͵�. (�̸� ������ ��)
STATE_PRIORITY_FORCE <- 3 		  //  ������ �ϰ� �Ǵ� �͵�. (�ٿ�, ������, ���, Ȧ�� ��)
STATE_PRIORITY_IGNORE_FORCE <- 4 		  //  ���� ������ �����ϴ� �͵�. (���÷����� ��� ��� ��)

STATE_VIRTUAL_ATTACK <- 19 		  //  �Ϲ� ���� -> ���ݽ�ų ���� ���� ���� STATE
STATE_ANTIAIR_UPPER <- 20 		  //  ����
STATE_DUCKING <- 21 		  //  ��ŷ
STATE_SWAY <- 22 		  //  ������
STATE_GIANT_SWING <- 23 		  //  ��ȸ����
STATE_REPEATED_SMASH <- 24 		  //  ����
STATE_SMASHER <- 25 		  //  ���ż�
STATE_QUAKE_AREA <- 26 		  //  ������
STATE_WILL_DRIVER <- 27 		  //  �� ����̹�
STATE_DUCKING_SKILL <- 28 		  //  ��ŷ������ ��ų�� Ȯ��
STATE_LUCKY_STRAIGHT <- 29 		  //  ��Ű ��Ʈ����Ʈ
STATE_SECOND_UPPER <- 30 		  //  ���������
STATE_HOLY_COUNTER <- 31 		  //  Ȧ�� ī����
STATE_GORGEOUS_COMBINATION <- 32 		  //  ������ �ĺ���̼�
STATE_CHOPPING_HAMMER <- 33 		  //  ���� �ظ�
STATE_HURRICANE_OF_JUDGEMENT <- 34 		  //  ������ ȸ����
STATE_HOME_RUN <- 35 		  //  Ȩ��
STATE_BLADE_OF_PURE_WHITE <- 36 		  //  ������ Į��
STATE_HURRICANE_ROLL <- 37 		  //  �㸮���� ��
STATE_THROW_WEAPON <- 38 		  //  �ż�ǳ
STATE_DEFLECT_WALL <- 39 		  //  ���÷�Ʈ ��
STATE_SPEAR_OF_VICTORY <- 40 		  //  �¸��� â
STATE_HAMMER_OF_CONTRITION <- 41 		  //  ��ȸ�� ��ġ
STATE_HEAVENLY_COMBINATION <- 42 		  //  ��츮 �ĺ���̼�
STATE_DIVINE_CRUSH <- 43 		  //  ����� ũ����
STATE_SIDEWIND <- 44 		  //  ���̵���ε�
STATE_MACHINE_GUN_JAB <- 45 		  //  �ӽŰ� ��
STATE_THROW_TALISMAN <- 46 		  //  ����
STATE_APOCALYPSE <- 47 		  //  ����Į����
STATE_GALE_SMASH <- 48 		  //  ��ǳŸ
STATE_ATOMIC_SMASH <- 49 		  //  ���ְ�
STATE_BIG_BANG_PUNCH <- 50 		  //  ��� ��ġ
STATE_BLUE_DRAGON <- 51 		  //  â���
STATE_HEAL_WIND <- 52 		  //  �� ����
STATE_CUTTING_DARKNESS <- 53 		  //  ��Ұ�����
STATE_MACHINE_GUN_JAB_EX <- 54 		  //  ��ȭ �ӽŰ� ��
STATE_HEAVENLY_COMBINATION_EX <- 55 		  //  ��츮 �ĺ���̼�[��ȭ]
STATE_REPEATED_SMASH_EX <- 56 		  //  ��ȭ ����
STATE_DEFLECT_WALL_EX <- 57 		  //  ���÷�Ʈ ��[��ȭ]

SKILL_ANTIAIR_UPPER <- 1 		  //  ����Ÿ
SKILL_DUCKING <- 2 		  //  ��ŷ ���
SKILL_SWAY <- 3 		  //  ������
SKILL_HURRICANE_ROLL <- 4 		  //  �㸮���� ��
SKILL_GIANT_SWING <- 5 		  //  ��ȸ����
SKILL_CANCEL_ANTIAIR_UPPER <- 6 		  //  ĵ�� ����Ÿ
SKILL_STRIKING <- 7 		  //  ��Ʈ����ŷ
SKILL_SMASHER <- 8 		  //  ���ż�
SKILL_CANCEL_SMASHER <- 9 		  //  ĵ�� ���ż�
SKILL_CHANGE_HP_TO_MP <- 10 		  // 	������ ��
SKILL_QUAKE_AREA <- 11 		  //  ������
SKILL_CANCEL_QUAKE_AREA <- 12 		  //  ĵ�� ������
SKILL_WILL_DRIVER <- 13 		  //  �� ����̹�
SKILL_TECHNICAL_MASTERY <- 14 		  //  ��ũ���� �����͸�
SKILL_BATTLE_AURA_MASTERY <- 15 		  //  ��Ʋ ���� �����͸�
SKILL_CORKSCREW_MASTERY <- 16 		  //  ��ũ��ũ�� �����͸�
SKILL_COMBINATION_MASTERY <- 17 		  //  �ĺ���̼� �����͸�
SKILL_HARD_PUNCH_MASTERY <- 18 		  //  �ϵ� ��ġ �����͸�
SKILL_HP_MAX_UP_PERSONAL <- 19 		  //  õ���� ��ε�
SKILL_EMBLEM_OF_SAFEGUARD <- 20 		  //  ��ȣ�� ¡ǥ
SKILL_FOUNTAIN_OF_LIFE <- 21 		  //  ������ ��õ
SKILL_DIVINE_LIGHT <- 22 		  //  �ż��� ��
SKILL_REVENGE_OF_LIGHT <- 23 		  //  ���� ����
SKILL_HP_MAX_UP_PARTY <- 24 		  //  õ���� �ϸ��
SKILL_SACRIFICE_OF_SOUL <- 25 		  //  ��ȥ�� ���
SKILL_HEAL_WIND <- 26 		  //  �� ����
SKILL_DEFLECT_WALL <- 27 		  //  ���÷�Ʈ ��
SKILL_FLASH_GLOBE <- 28 		  //  �÷��� �۷κ�
SKILL_EXTENDED_PUNCH <- 29 		  //  �Ǳ����
SKILL_HOLY_COUNTER <- 30 		  //  Ȧ�� ī����
SKILL_GORGEOUS_COMBINATION <- 31 		  //  ������ �ĺ���̼�
SKILL_CANCEL_GORGEOUS_COMBINATION <- 32 		  //  ĵ�� ������ �ĺ���̼�
SKILL_CHOPPING_HAMMER <- 33 		  //  ���� �ظ�
SKILL_ARMOR_MASTERY_PLATE_CS <- 34 		  //  ũ�缼�̴� �Ǳ� �����͸�
SKILL_SHADOW_BOXER <- 35 		  //  ������ �ڼ�
SKILL_DOUBLE_SHADOW_BOXER <- 36 		  //  ���� ������ �ڼ�
SKILL_HURRICANE_OF_JUDGEMENT <- 37 		  //  ������ ȸ����
SKILL_ENTERING_NIRVANA <- 38 		  //  ����
SKILL_OPPRESSION_TALISMAN <- 39 		  //  ���к� (����Ʈ)
SKILL_THUNDERBOLT_TALISMAN <- 40 		  //  ���ں� (����Ʈ)
SKILL_HOME_RUN <- 41 		  //  �� �ϴ��� ��
SKILL_QUICK_PARRY <- 42 		  //  �� �и�
SKILL_BLADE_OF_PURE_WHITE <- 43 		  //  ������ Į��
SKILL_CANCEL_BLADE_OF_PURE_WHITE <- 44 		  //  ĵ�� ������ Į��
SKILL_GLORIOUS_BLESS <- 45 		  //  ������ �ູ
SKILL_CANCEL_HURRICANE_ROLL <- 46 		  //  ĵ�� �㸮���� ��
SKILL_CHAKRA_OF_PASSION <- 47 		  //  ������ íũ��
SKILL_CHAKRA_OF_CALMNESS <- 48 		  //  ������ íũ��
SKILL_REPEATED_SMASH <- 49 		  //  ����
SKILL_THROW_WEAPON <- 50 		  //  �ż�ǳ
SKILL_SLOW_HEAL <- 51 		  //  ���ο� ��
SKILL_CURE <- 52 		  //  ť��
SKILL_BLESS <- 53 		  //  ������ �ູ
SKILL_GRACE_OF_GOD <- 54 		  //  ���� ����
SKILL_FAST_HEAL <- 55 		  //  �н�Ʈ ��
SKILL_DUCKING_STRAIGHT <- 56 		  //  ��ŷ ��Ʈ����Ʈ
SKILL_DUCKING_BODYBLOW <- 57 		  //  ��ŷ �������
SKILL_DUCKING_UPPER <- 58 		  //  ��ŷ ����
SKILL_CANCEL_DUCKING <- 59 		  //  ĵ�� ��ŷ
SKILL_CANCEL_SWAY <- 60 		  //  ĵ�� ������
SKILL_LUCKY_STRAIGHT <- 61 		  //  ��Ű ��Ʈ����Ʈ
SKILL_CANCEL_LUCKY_STRAIGHT <- 62 		  //  ĵ�� ��Ű ��Ʈ����Ʈ
SKILL_SECOND_UPPER <- 63 		  //  ������ ����
SKILL_GRASP_HAND_OF_ANGER <- 64 		  //  �г��� ������
SKILL_CANCEL_GRASP_HAND_OF_ANGER <- 65 		  //  ĵ�� �г��� ������
SKILL_CHARGE_WEAPON <- 66 		  //  ���
SKILL_FORCE_OF_EXORCISM <- 67 		  //  ���� ���
SKILL_ARMOR_MASTERY_CLOTH_EC <- 68 
SKILL_HYUN_MOO <- 69 		  //  ���� �Ľ� - ����
SKILL_BAEK_HO <- 70 		  //  ���� �Ľ� - ��ȣ
SKILL_CANCEL_REPEATED_SMASH <- 71 		  //  ĵ�� ����
SKILL_CANCEL_HOME_RUN <- 72 		  //  ĵ�� Ȩ��
SKILL_SPEAR_OF_VICTORY <- 73 		  //  �¸��� â
SKILL_HAMMER_OF_CONTRITION <- 74 		  //  ��ȸ�� ��ġ
SKILL_HEAVENLY_COMBINATION <- 75 		  //  ��츮 �ĺ���̼�
SKILL_DIVINE_CRUSH <- 76 		  //  ����� ũ����
SKILL_SIDEWIND <- 77 		  //  ���̵���ε�
SKILL_MACHINE_GUN_JAB <- 78 		  //  �ӽŰ� ��
SKILL_CANCEL_SIDEWIND <- 79 		  //  ĵ�� ���̵���ε�
SKILL_CANCEL_MACHINE_GUN_JAB <- 80 		  //  ĵ�� �ӽŰ� ��
SKILL_JUDGEMENT <- 81 		  //  ������ ����
SKILL_BIG_WEAPON_MASTERY <- 82 		  //  �ź������͸� ����
SKILL_BATTLE_AXE_MASTERY <- 83 		  //  ��Ʋ�׽� �����͸�
SKILL_APOCALYPSE <- 84 		  //  ����Į����
SKILL_GALE_SMASH <- 85 		  //  ��ǳŸ
SKILL_AURA_OF_FAITH <- 86 		  //  �ų��� ����
SKILL_DRYOUT <- 87 		  //  ����̾ƿ�
SKILL_ATOMIC_SMASH <- 88 		  //  ���ְ�
SKILL_RADIATE_FIGHTING_AURA <- 89 		  //  ���� �߻�
SKILL_BIG_BANG_PUNCH <- 90 		  //  ��� ��ġ
SKILL_ARMOR_MASTERY_LIGHT_IF <- 91 		  //  �氩 �����͸�:��������
SKILL_ARMOR_MASTERY_PLATE_EC <- 92 		  //  �Ǳ� �����͸�:�𸶻�
SKILL_BLUE_DRAGON <- 93 		  //  â���
SKILL_CANCEL_ENTERING_NIRVANA <- 94 		  //  ĵ�� ����
SKILL_CANCEL_GALE_SMASH <- 95 		  //  ĵ�� ��ǳŸ
SKILL_ARMOR_MASTERY_HEAVY_EC <- 96 		  //  �߰� �����͸�:�𸶻�
SKILL_GRACE_OF_COURAGE <- 97 		  //  ����� ����
SKILL_GRACE_OF_PROTECTION <- 98 		  //  ��ȣ�� ����
SKILL_RISING_AREA <- 99 		  //  ��õ��
SKILL_CUTTING_DARKNESS <- 100 		  //  ��Ұ�����
SKILL_SHIKIGAMI <- 101 		  //  �Ľ��� ��
SKILL_CANCEL_RISING_AREA <- 102 		  //  ĵ�� ��õ��
SKILL_MACHINE_GUN_JAB_EX <- 103 		  //  ��ȭ �ӽŰ� ��
SKILL_HEAVENLY_COMBINATION_EX <- 104 		  //  ��츮 �ĺ�׹̼�[��ȭ]
SKILL_REPEATED_SMASH_EX <- 105 		  //  ��ȭ ����
SKILL_VERMILIONBIRD_TALISMAN <- 106 		  //  ���ۺ�
SKILL_CROSS_CRASH <- 107 		  //  ũ�ν� ũ����, ���߸� : �߰ſ� ���ڰ�, HotCross ��
SKILL_FLASH_GLOBE_EX <- 108 		  //  �÷��� �۷κ�[��ȭ]
SKILL_DEFLECT_WALL_EX <- 109 		  //  ���÷�Ʈ ��[��ȭ]
SKILL_HYUN_MOO_EX <- 110 		  //  ����[��ȭ]
SKILL_GROUND_CRASH <- 111 		  //  �׶��� ���Ž�, ���߸� ox crash (�ѿ쵹��)
SKILL_CANCEL_GROUND_CRASH <- 112 		  //  ĵ�� �׶��� ���Ž�
SKILL_SLOW_HEAL_EX <- 140 		  //  ���ο� �� �нú�
SKILL_LUCKY_STRAIGHT_EX <- 141 		  //  ��Ű ��Ʈ����Ʈ �нú�
SKILL_QUAKE_AREA_EX <- 142 		  //  ������ �нú�
SKILL_GRASP_HAND_OF_ANGER_EX <- 143 		  //  �г��� ������
SKILL_SPEAR_OF_VICTORY_EX <- 144 		  //  �¸��� â �нú�
SKILL_REVENGE_OF_LIGHT_EX <- 145 		  //  ���� ���� �нú�
SKILL_DUCKING_STRAIGHT_EX <- 146 		  //  ��ŷ ��Ʈ����Ʈ �нú�
SKILL_WILL_DRIVER_EX <- 147 		  //  �� ����̹� �нú�
SKILL_OPPRESSION_TALISMAN_EX <- 148 		  //  ���к� �нú�
SKILL_THROW_WEAPON_EX <- 149 		  //  �ż�ǳ �нú�

CUSTOM_ANI_JUMP_PUNCH <- 0 		  //  ���� ��ġ (�ź� ������ ��������)
CUSTOM_ANI_ANTIAIR_UPPER <- 1 		  //  ����
CUSTOM_ANI_DUCKING <- 2 		  //  ��ŷ
CUSTOM_ANI_SWAY <- 3 		  //  ������
CUSTOM_ANI_GIANT_SWING_READY <- 4 		  //  ��ȸ���� : �غ�
CUSTOM_ANI_GIANT_SWING <- 5 		  //  ��ȸ���� : ȸ��
CUSTOM_ANI_GIANT_SWING_FINAL <- 6 		  //  ��ȸ���� : ��Ÿ
CUSTOM_ANI_SMASHER_TRY_GRAB <- 7 		  //  ���ż� : ��� �⵵
CUSTOM_ANI_SMASHER_SUCCESS_GRAB <- 8 		  //  ���ż� : ��� ����
CUSTOM_ANI_SMASHER_DASH <- 9 		  //  ���ż� : ��� �� ������
CUSTOM_ANI_DUCKING_BODYBLOW <- 10 		  //  �������
CUSTOM_ANI_QUAKE_AREA <- 11 		  //  ������
CUSTOM_ANI_WILL_DRIVER <- 12 		  //  �� ����̹�
CUSTOM_ANI_WILL_DRIVER_SECOND <- 13 		  //  �� ����̹� : �̹� ���� ����
CUSTOM_ANI_LUCKY_STRAIGHT <- 14 		  //  ��Ű��Ʈ����Ʈ
CUSTOM_ANI_DUCKING_STRAIGHT <- 15 		  //  ��ŷ ��Ʈ����Ʈ
CUSTOM_ANI_SECOND_UPPER <- 16 		  //  ������ ����
CUSTOM_ANI_DUCKING_UPPER <- 17 		  //  ��ŷ ����
CUSTOM_ANI_HOLY_COUNTER_PRAY <- 18 		  //  Ȧ�� ī���� : �⵵
CUSTOM_ANI_HOLY_COUNTER_BODYBLOW <- 19 		  //  Ȧ�� ī���� : �ٵ����
CUSTOM_ANI_GORGEOUS_COMBINATION <- 20 		  //  ������ �ĺ���̼�
CUSTOM_ANI_CHOPPING_HAMMER <- 21 		  //  ���� �ظ�
CUSTOM_ANI_HURRICANE_OF_JUDGEMENT <- 22 		  //  ������ ȸ����
CUSTOM_ANI_HURRICANE_OF_JUDGEMENT2 <- 23 		  //  ������ ȸ���� 2Ÿ
CUSTOM_ANI_HOME_RUN_GRAB <- 24 		  //  Ȩ�� : ��� �õ�
CUSTOM_ANI_HOME_RUN_CHARGE <- 25 		  //  Ȩ�� : ��� & ����
CUSTOM_ANI_HOME_RUN_SMASH <- 26 		  //  Ȩ�� : ����
CUSTOM_ANI_BLADE_OF_PURE_WHITE <- 27 		  //  ������ Į��
CUSTOM_ANI_HURRICANE_ROLL_HOOK <- 28 		  //  �㸮���� �� : ��
CUSTOM_ANI_HURRICANE_ROLL_UPPER <- 29 		  //  �㸮���� �� : ����
CUSTOM_ANI_REPEATED_SMASH_START <- 30 		  //  ���� : ùŸ
CUSTOM_ANI_REPEATED_SMASH <- 31 		  //  ���� : ��Ÿ
CUSTOM_ANI_REPEATED_SMASH_FINAL <- 32 		  //  ���� : ��Ÿ
CUSTOM_ANI_THROW_WEAPON_READY <- 33 		  //  �ż�ǳ : �غ�
CUSTOM_ANI_THROW_WEAPON_SWING <- 34 		  //  �ż�ǳ : ȸ�� (Ǯ������ 1ȸ�� �߰� ���)
CUSTOM_ANI_THROW_WEAPON_THROW <- 35 		  //  �ż�ǳ : ��ô (Ǯ������ �ƴϸ� �غ� -> ��ô)
CUSTOM_ANI_DEFLECT_WALL <- 36 		  //  ���÷�Ʈ ��
CUSTOM_ANI_SPEAR_OF_VICTORY_READY <- 37 		  //  �¸��� â : �غ�&����
CUSTOM_ANI_SPEAR_OF_VICTORY_THROW <- 38 		  //  �¸��� â : ��ô
CUSTOM_ANI_HAMMER_OF_CONTRITION <- 39 		  //  ��ȸ�� ��ġ
CUSTOM_ANI_HEAVENLY_COMBINATION <- 40 		  //  ��츮 �ĺ���̼�
CUSTOM_ANI_DIVINE_CRUSH <- 41 		  //  ����� ũ����
CUSTOM_ANI_INFIGHTER_ATTACK12 <- 42 		  //  �������� ��Ÿ 1,2Ÿ
CUSTOM_ANI_INFIGHTER_ATTACK3 <- 43 		  //  �������� ��Ÿ 3Ÿ
CUSTOM_ANI_INFIGHTER_ATTACK4 <- 44 		  //  �������� ��Ÿ 4Ÿ
CUSTOM_ANI_INFIGHTER_ATTACK5 <- 45 		  //  �������� ��Ÿ 5Ÿ
CUSTOM_ANI_EXORCIST_ATTACK1 <- 46 		  //  �𸶻� ��Ÿ 1Ÿ
CUSTOM_ANI_EXORCIST_ATTACK2 <- 47 		  //  �𸶻� ��Ÿ 2Ÿ
CUSTOM_ANI_EXORCIST_ATTACK3 <- 48 		  //  �𸶻� ��Ÿ 3Ÿ
CUSTOM_ANI_SIDEWIND <- 49 		  //  ���̵���ε� �⺻
CUSTOM_ANI_SIDEWIND_SECOND <- 50 		  //  ���̵���ε� �߰�Ÿ
CUSTOM_ANI_MACHINE_GUN_JAB <- 51 		  //  �ӽŰ� �� : ��Ÿ
CUSTOM_ANI_MACHINE_GUN_JAB_FINISH <- 52 		  //  �ӽŰ� �� : �ǴϽ�
CUSTOM_ANI_MACHINE_GUN_JAB_APPEND <- 53 		  //  �ӽŰ� �� : �߰�Ÿ
CUSTOM_ANI_THROW_TALISMAN1 <- 54 		  //  ���� : ������1
CUSTOM_ANI_THROW_TALISMAN2 <- 55 		  //  ���� : ������2
CUSTOM_ANI_APOCALYPSE <- 56 		  //  ����Į����
CUSTOM_ANI_GALE_SMASH1 <- 57 		  //  ��ǳŸ : ���ġ��
CUSTOM_ANI_GALE_SMASH2 <- 58 		  //  ��ǳŸ : �ֵθ���
CUSTOM_ANI_ATOMIC_SMASH <- 59 		  //  ���ְ�
CUSTOM_ANI_BIG_BANG_PUNCH_READY <- 60 		  //  ��� ��ġ : �غ�
CUSTOM_ANI_BIG_BANG_PUNCH1 <- 61 		  //  ��� ��ġ : 1Ÿ
CUSTOM_ANI_BIG_BANG_PUNCH2 <- 62 		  //  ��� ��ġ : 2Ÿ
CUSTOM_ANI_BIG_BANG_PUNCH3 <- 63 		  //  ��� ��ġ : 3Ÿ
CUSTOM_ANI_BIG_BANG_PUNCH4 <- 64 		  //  ��� ��ġ : 4Ÿ
CUSTOM_ANI_HEAL_WIND_CAST <- 65 		  //  �� ���� : ĳ����
CUSTOM_ANI_HEAL_WIND_BLAST <- 66 		  //  �� ���� : �ߵ�
CUSTOM_ANI_BLUE_DRAGON1 <- 67 		  //  â��� : ����
CUSTOM_ANI_BLUE_DRAGON2 <- 68 		  //  â��� : ��ô�غ�
CUSTOM_ANI_BLUE_DRAGON3 <- 69 		  //  â��� : ��ô
CUSTOM_ANI_CUTTING_DARKNESS_CHARGE <- 70 		  //  ��Ұ����� : ����
CUSTOM_ANI_CUTTING_DARKNESS_SMASH <- 71 		  //  ��Ұ����� : �ֵθ���
CUSTOM_ANI_CUTTING_DARKNESS_FULL_SMASH <- 72 		  //  ��� ������ : ���� �ֵθ���
CUSTOM_ANI_MACHINE_GUN_JAB_EX_LEFT <- 73 		  //  ��ȭ �ӽŰ� �� ��Ÿ ��
CUSTOM_ANI_MACHINE_GUN_JAB_EX_RIGHT <- 74 		  //  ��ȭ �ӽŰ� �� ��Ÿ ��
CUSTOM_ANI_MACHINE_GUN_JAB_EX_FINISH <- 75 		  //  ��ȭ �ӽŰ� �� �ǴϽ�
CUSTOM_ANI_HEAVENLY_COMBINATION_EX <- 76 		  //  ��츮 �ĺ���̼�[��ȭ]
CUSTOM_ANI_REPEATED_SMASH_EX_FINISH <- 77 		  //  ��ȭ ���� ������
CUSTOM_ANI_GROUND_CRASH <- 78 		  //  �׶��� ���Ž�

CUSTOM_ATTACKINFO_JUMP_PUNCH <- 0 		  //  ���� ��ġ (���� ������ ��������)
CUSTOM_ATTACKINFO_DASH_ATTACK_SMASH <- 1 		  //  ��� ���� 2Ÿ°
CUSTOM_ATTACKINFO_ANTIAIR_UPPER <- 2 		  //  ����Ÿ
CUSTOM_ATTACKINFO_GIANT_SWING <- 3 		  //  ��ȸ���� : ȸ��
CUSTOM_ATTACKINFO_GIANT_SWING_FINAL <- 4 		  //  ��ȸ���� : ��Ÿ
CUSTOM_ATTACKINFO_SMASHER_TRY <- 5 		  //  ���ż� ��� �õ�
CUSTOM_ATTACKINFO_SMASHER_DASH <- 6 		  //  ���ż� ���
CUSTOM_ATTACKINFO_SMASHER_THROW <- 7 		  //  ���ż� ������
CUSTOM_ATTACKINFO_QUAKE_AREA <- 8 		  //  ������
CUSTOM_ATTACKINFO_LUCKY_STRAIGHT <- 9 		  //  ��Ű ��Ʈ����Ʈ
CUSTOM_ATTACKINFO_SECOND_UPPER <- 10 		  //  ������ ����
CUSTOM_ATTACKINFO_DUCKING_STRAIGHT <- 11 		  //  ��ŷ ��Ʈ����Ʈ
CUSTOM_ATTACKINFO_DUCKING_BODYBLOW <- 12 		  //  ��ŷ �������
CUSTOM_ATTACKINFO_DUCKING_UPPER <- 13 		  //  ��ŷ ����
CUSTOM_ATTACKINFO_HOLY_COUNTER <- 14 		  //  Ȧ�� ī����
CUSTOM_ATTACKINFO_GORGEOUS_COMBINATION1 <- 15 		  //  ������ �ĺ���̼� : ��
CUSTOM_ATTACKINFO_GORGEOUS_COMBINATION2 <- 16 		  //  ������ �ĺ���̼� : ��Ʈ����Ʈ
CUSTOM_ATTACKINFO_GORGEOUS_COMBINATION3 <- 17 		  //  ������ �ĺ���̼� : ��
CUSTOM_ATTACKINFO_CHOPPING_HAMMER <- 18 		  //  ���� �ظ�
CUSTOM_ATTACKINFO_HURRICANE_OF_JUDGEMENT <- 19 		  //  ������ ȸ����
CUSTOM_ATTACKINFO_HOME_RUN_GRAB <- 20 		  //  Ȩ�� : ��� �õ�
CUSTOM_ATTACKINFO_HOME_RUN_HIT <- 21 		  //  Ȩ�� : ��� ���� �� 1Ÿ
CUSTOM_ATTACKINFO_HOME_RUN_SMASH <- 22 		  //  Ȩ�� : �ֵθ���
CUSTOM_ATTACKINFO_BLADE_OF_PURE_WHITE <- 23 		  //  ������ Į��
CUSTOM_ATTACKINFO_HURRICANE_ROLL_HOOK <- 24 		  //  �㸮���� �� : ��
CUSTOM_ATTACKINFO_HURRICANE_ROLL_UPPER <- 25 		  //  �㸮���� �� : ����
CUSTOM_ATTACKINFO_REPEATED_SMASH <- 26 		  //  ���� : ��Ÿ
CUSTOM_ATTACKINFO_REPEATED_SMASH_FINAL <- 27 		  //  ���� : ��Ÿ
CUSTOM_ATTACKINFO_THROW_WEAPON <- 28 		  //  �ż�ǳ : �ٰŸ� Ÿ��
CUSTOM_ATTACKINFO_HAMMER_OF_CONTRITION <- 29 		  //  ��ȸ�� ��ġ
CUSTOM_ATTACKINFO_HEAVENLY_COMBINATION1 <- 30 		  //  ��츮 �ĺ���̼� : 1Ÿ
CUSTOM_ATTACKINFO_HEAVENLY_COMBINATION2 <- 31 		  //  ��츮 �ĺ���̼� : 2Ÿ
CUSTOM_ATTACKINFO_HEAVENLY_COMBINATION3 <- 32 		  //  ��츮 �ĺ���̼� : 3Ÿ
CUSTOM_ATTACKINFO_DIVINE_CRUSH <- 33 		  //  ����� ũ����
CUSTOM_ATTACKINFO_INFIGHTER_ATTACK1 <- 34 		  //  �������� ��Ÿ 1Ÿ
CUSTOM_ATTACKINFO_INFIGHTER_ATTACK2 <- 35 		  //  �������� ��Ÿ 2Ÿ
CUSTOM_ATTACKINFO_INFIGHTER_ATTACK3 <- 36 		  //  �������� ��Ÿ 3Ÿ
CUSTOM_ATTACKINFO_INFIGHTER_ATTACK4 <- 37 		  //  �������� ��Ÿ 4Ÿ
CUSTOM_ATTACKINFO_INFIGHTER_ATTACK5 <- 38 		  //  �������� ��Ÿ 5Ÿ
CUSTOM_ATTACKINFO_EXORCIST_ATTACK1 <- 39 		  //  �𸶻� ��Ÿ 1Ÿ
CUSTOM_ATTACKINFO_EXORCIST_ATTACK2 <- 40 		  //  �𸶻� ��Ÿ 2Ÿ
CUSTOM_ATTACKINFO_EXORCIST_ATTACK3 <- 41 		  //  �𸶻� ��Ÿ 3Ÿ
CUSTOM_ATTACKINFO_SIDEWIND <- 42 		  //  ���̵���ε�
CUSTOM_ATTACKINFO_SIDEWIND_SECOND <- 43 		  //  ���̵���ε� �߰�Ÿ
CUSTOM_ATTACKINFO_MACHINE_GUN_JAB <- 44 		  //  �ӽŰ� �� : ��Ÿ
CUSTOM_ATTACKINFO_MACHINE_GUN_JAB_FINISH <- 45 		  //  �ӽŰ� �� : �ǴϽ�
CUSTOM_ATTACKINFO_MACHINE_GUN_JAB_APPEND <- 46 		  //  �ӽŰ� �� : �߰�Ÿ
CUSTOM_ATTACKINFO_THROW_TALISMAN1 <- 47 		  //  ���� : ������1
CUSTOM_ATTACKINFO_THROW_TALISMAN2 <- 48 		  //  ���� : ������2
CUSTOM_ATTACKINFO_GALE_SMASH1 <- 49 		  //  ��ǳŸ : ���ġ��
CUSTOM_ATTACKINFO_GALE_SMASH2 <- 50 		  //  ��ǳŸ : �ֵθ���
CUSTOM_ATTACKINFO_ATOMIC_SMASH_SWING <- 51 		  //  ���ְ� : �ֵθ���
CUSTOM_ATTACKINFO_ATOMIC_SMASH_SMASH <- 52 		  //  ���ְ� : ����ġ��
CUSTOM_ATTACKINFO_BIG_BANG_PUNCH_READY <- 53 		  //  ��� ��ġ : �غ�
CUSTOM_ATTACKINFO_BIG_BANG_PUNCH1 <- 54 		  //  ��� ��ġ : 1Ÿ
CUSTOM_ATTACKINFO_BIG_BANG_PUNCH2 <- 55 		  //  ��� ��ġ : 2Ÿ
CUSTOM_ATTACKINFO_BIG_BANG_PUNCH3 <- 56 		  //  ��� ��ġ : 3Ÿ
CUSTOM_ATTACKINFO_BIG_BANG_PUNCH4 <- 57 		  //  ��� ��ġ : 4Ÿ
CUSTOM_ATTACKINFO_BLUE_DRAGON <- 58 		  //  â���
CUSTOM_ATTACKINFO_CUTTING_DARKNESS <- 59 		  //  ��Ұ�����
CUSTOM_ATTACKINFO_MACHINE_GUN_JAB_EX <- 60 		  //  ��ȭ �ӽŰ� �� : ��Ÿ
CUSTOM_ATTACKINFO_MACHINE_GUN_JAB_EX_FINISH <- 61 		  //  ��ȭ �ӽŰ� �� : �ǴϽ�
CUSTOM_ATTACKINFO_HEAVENLY_COMBINATION_EX2 <- 62 		  //  ��츮 �ĺ���̼� : 2Ÿ
CUSTOM_ATTACKINFO_HEAVENLY_COMBINATION_EX3 <- 63 		  //  ��츮 �ĺ���̼� : 3Ÿ
CUSTOM_ATTACKINFO_HEAVENLY_COMBINATION_EX4 <- 64 		  //  ��츮 �ĺ���̼� : 4Ÿ
CUSTOM_ATTACKINFO_HEAVENLY_COMBINATION_EX5 <- 65 		  //  ��츮 �ĺ���̼� : 5Ÿ
CUSTOM_ATTACKINFO_REPEATED_SMASH_EX_LIFT <- 66 		  //  ��ȭ ���� ����
CUSTOM_ATTACKINFO_REPEATED_SMASH_EX_FINAL <- 67 		  //  ��ȭ ���� ������
CUSTOM_ATTACKINFO_GROUND_CRASH1 <- 68 		  //  �׶��� ���Ž� 1Ÿ
CUSTOM_ATTACKINFO_GROUND_CRASH2 <- 69 		  //  �׶��� ���Ž� 2Ÿ


ATTACK_DIRECTION_UP <- 0 		  //  �÷�ġ��
ATTACK_DIRECTION_HORIZON <- 1 		  //  ����ġ��
ATTACK_DIRECTION_DOWN <- 2 		  //  ����ġ��
ATTACK_DIRECTION_MAX <- 3 

ATTACKTYPE_PHYSICAL <- 0 		  //  ���� ���� ����
ATTACKTYPE_MAGICAL <- 1 		  //  ���� ���� ����  
ATTACKTYPE_ABSOLUTE <- 2 		  //  ��� ���� ����
ATTACKTYPE_MAX <- 3 

ATTACKTARGET_OWN <- 0 		  //  �ڽ�
ATTACKTARGET_FRIEND <- 1 		  //  �Ʊ�
ATTACKTARGET_ENEMY <- 2 		  //  (�ڽŰ� �Ʊ� �̿���) ��

DAMAGEACT_NONE <- 0 		  //  ���� ����
DAMAGEACT_DAMAGE <- 1 		  //  ������ ���
DAMAGEACT_DOWN <- 2 		  //  �ٿ�
DAMAGEACT_DAMAGE_EXCEPT_HUMAN <- 3 		  //  �⺻ ������, �޸վƸӴ� ��������

KNOCK_BACK_TYPE_NORMAL <- 0 		  //  �Ϲ�
KNOCK_BACK_TYPE_KNOCK_BACK <- 1 		  //  �ڷ� ���� �и� (�˹�)
KNOCK_BACK_TYPE_SHORT_KNOCK_BACK_ <- 2 		  //  �ڷ� �ణ �и� (�˹�)
KNOCK_BACK_TYPE_PIXEL_WITHOUT_DAMAGE_TIME <- 3 		  //  NORMAL_DAMAGE_BACK_TIME �ð����� ������ �ȼ���ŭ �ڷ� �и�, �̵��� ������ Ǯ���� �̵��� ����
KNOCK_BACK_TYPE_NOT_BACK <- -1 		  //  �ڷ� �ȹи�

HIT_DIRECTION_AUTO <- 0 		  //  �ڵ� �Ǻ�
HIT_DIRECTION_FRONT <- 1 		  //  ������
HIT_DIRECTION_BACK <- 2 		  //  �ڷ�
HIT_DIRECTION_OUTER <- 3 		  //  �ٱ�������
HIT_DIRECTION_INNER <- 4 		  //  ��������

WEAPON_SUBTYPE_CROSS <- 0 		  //  ���ڰ�
WEAPON_SUBTYPE_ROSARY <- 1 		  //  ����
WEAPON_SUBTYPE_TOTEM <- 2 		  //  ����
WEAPON_SUBTYPE_SCYTHE <- 3 		  //  ��
WEAPON_SUBTYPE_BATTLE_AXE <- 4 		  //  ��Ʋ �׽�
WEAPON_SUBTYPE_MAX <- 5 

GROW_TYPE_PRIEST <- 0 		  //  ������Ʈ
GROW_TYPE_CRUSADER <- 1 		  //  ũ�缼�̴�
GROW_TYPE_INFIGHTER <- 2 		  //  ��������
GROW_TYPE_EXORCIST <- 3 		  //  �𸶻�
GROW_TYPE_AVENGER <- 4 		  //  ���
GROW_TYPE_PRIEST_G <- 5 		  //  ������ƮG

EXTENDED_PUNCH_MOTION_DASH_ATTACK <- 0 		  //  ��� ����
EXTENDED_PUNCH_MOTION_SECOND_UPPER <- 1 		  //  ������ ����
EXTENDED_PUNCH_MOTION_MAX <- 2 

BASE_ATTACK_TYPE_DEFAULT <- 0 		  //  �⺻
BASE_ATTACK_TYPE_INFIGHTER <- 1 		  //  �������� �ָ�
BASE_ATTACK_TYPE_EXORCIST <- 2 		  //  �𸶻� �ź�

BATTLE_AURA_MOTION_ATTACK_12 <- 0 		  //  ��Ÿ1,2 (��)
BATTLE_AURA_MOTION_ATTACK_3 <- 1 		  //  ��Ÿ3 (��Ʈ����Ʈ)
BATTLE_AURA_MOTION_ATTACK_4 <- 2 		  //  ��Ÿ4 (����)
BATTLE_AURA_MOTION_ATTACK_5 <- 3 		  //  ��Ÿ5 (�������)
BATTLE_AURA_MOTION_GORGEOUS_COMBINATION <- 4 		  //  ������ �ĺ���̼�
BATTLE_AURA_MOTION_SIDEWIND <- 5 		  //  ���̵���ε�
BATTLE_AURA_MOTION_SIDEWIND_SECOND <- 6 		  //  ���̵���ε� �߰�Ÿ
BATTLE_AURA_MOTION_MAX <- 7 


CHANGE_STATUS_TYPE_PHYSICAL_ATTACK <- 0 		  //  物理攻击
CHANGE_STATUS_TYPE_MAGICAL_ATTACK <- 1 		  //  魔法攻击
CHANGE_STATUS_TYPE_MAGICAL_DEFENSE <- 2 		  //  魔法防御
CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE <- 3 		  //  物理防御
CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK <- 4 		  //  装备物理攻击
CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_DEFENSE <- 5 		  //  装备物理防御
CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS <- 6 		  //  物理攻击加成
CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS <- 7 		  //  魔法攻击加成
CHANGE_STATUS_TYPE_JUMP_POWER <- 8 		  //  跳跃力量
CHANGE_STATUS_TYPE_JUMP_SPEED_RATE <- 9 		  //  跳跃速度比率
CHANGE_STATUS_TYPE_ATTACK_SPEED <- 10 		  //  攻击速度
CHANGE_STATUS_TYPE_MOVE_SPEED <- 11 		  //  移动速度
CHANGE_STATUS_TYPE_CAST_SPEED <- 12 		  //  施法速度
CHANGE_STATUS_TYPE_HP_MAX <- 13 		  //  最大生命值
CHANGE_STATUS_TYPE_HP_REGEN_RATE <- 14 		  //  生命值恢复速率
CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE <- 15 		  //  物理暴击率
CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE <- 16 		  //  魔法暴击率
CHANGE_STATUS_TYPE_PHYSICAL_BACK_ATTACK_CRITICAL <- 17 		  //  物理背击暴击率
CHANGE_STATUS_TYPE_MAGICAL_BACK_ATTACK_CRITICAL <- 18 		  //  魔法背击暴击率
CHANGE_STATUS_TYPE_CRITICAL_TOLERANCE_RATE <- 19 		  //  暴击抗性
CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_FIRE <- 20 		  //  火元素抗性
CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_WATER <- 21 		  //  水元素抗性
CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_DARK <- 22 		  //  暗元素抗性
CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_LIGHT <- 23 		  //  光元素抗性
CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_ALL <- 24 		  //  所有元素抗性
CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_ZERO <- 25 		  //  元素抗性归零
CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL <- 26 		  //  所有状态抗性
CHANGE_STATUS_TYPE_ACTIVEPROPERTY_STUCK <- 27 		  //  硬直（状态）
CHANGE_STATUS_TYPE_BACK_ATTACK_STUCK_TOLERANCE <- 28 		  //  背击硬直抗性 [伤害减免] (% 数值)
CHANGE_STATUS_TYPE_MP_REGEN_RATE <- 29 		  //  魔法值恢复速率
CHANGE_STATUS_TYPE_EXTRA_SPEED_RATE <- 30 		  //  额外速度比率
CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK <- 31 		  //  装备魔法攻击
CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_DEFENSE <- 32 		  //  装备魔法防御
CHANGE_STATUS_TYPE_STUCK <- 33 		  //  硬直 [伤害减免]（数值）
CHANGE_STATUS_TYPE_HIT_RECOVERY <- 34 		  //  受击恢复
CHANGE_STATUS_TYPE_MELEE_HIT_DELAY <- 35 		  //  近战受击延迟时间
CHANGE_STATUS_TYPE_EQUIPMENT_ALL_STAT <- 36 		  //  装备所有属性提升类型。
CHANGE_STATUS_TYPE_CUSTOM <- 37 
CHANGE_STATUS_TYPE_EXP_DOUBLE <- 38 		  //  经验值加倍
CHANGE_STATUS_TYPE_EVIL_UP <- 39 		  //  邪恶值提升
CHANGE_STATUS_TYPE_EVIL_DOWN <- 40 		  //  邪恶值降低 
CHANGE_STATUS_TYPE_RIGIDITY <- 41 		  //  刚性
CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE <- 42 		  //  火元素攻击强化
CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER <- 43 		  //  水元素攻击强化
CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK <- 44 		  //  暗元素攻击强化
CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT <- 45 		  //  光元素攻击强化
CHANGE_STATUS_TYPE_ELEMENT_ATTACK_ALL <- 46 		  //  所有元素攻击强化
CHANGE_STATUS_TYPE_DISEASE <- 47 		  //  疾病
CHANGE_STATUS_TYPE_MP_MAX <- 48 		  //  最大魔法值
CHANGE_STATUS_TYPE_COOLTIME_DECLINE <- 49 		  //  技能冷却时间减少
CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE <- 50 		  //  物理暴击伤害比率
CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE <- 51 		  //  魔法暴击伤害比率
CHANGE_STATUS_TYPE_BLOODWAR_GROW_ABILITY <- 52 		  //  血之战争成长能力（血之塔） 
CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK <- 53 		  //  物理真实伤害额外加成
CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK <- 54 		  //  魔法真实伤害额外加成
CHANGE_STATUS_TYPE_SUMMON_SKILL_POWER_BONUS_RATE <- 55 		  //  召唤技能威力额外加成比率
CHANGE_STATUS_TYPE_ANTIEVIL <- 56 		  //  反邪恶值提升
CHANGE_STATUS_TYPE_PHYSICAL_ABSOLUTE_DAMAGE <- 57 		  //  物理绝对伤害或固定伤害
CHANGE_STATUS_GHOST_TRAIN_NO_BREATH_TIME <- 58 		  //  幽灵列车无息时间
CHANGE_STATUS_CHARACTER_LINK <- 59 		  //  角色链接
CHANGE_STATUS_GOLD_INCREASE <- 60 
CHANGE_STATUS_TYPE_MAX <- 61

OBJECTTYPE_OBJECT <- 0 		  //  普通对象
OBJECTTYPE_COLLISION <- 1 		  //  碰撞对象 (继承自 OBJECTTYPE_OBJECT)
OBJECTTYPE_ACTIVE <- 17 		  //  激活对象 (继承自 OBJECTTYPE_COLLISION)
OBJECTTYPE_CHARACTER <- 273 		  //  角色对象 (继承自 OBJECTTYPE_ACTIVE)
OBJECTTYPE_MONSTER <- 529 		  //  怪物对象 (继承自 OBJECTTYPE_ACTIVE)
OBJECTTYPE_RIDABLEOBJECT <- 4625 		  //  可骑乘对象 (继承自 OBJECTTYPE_MONSTER)
OBJECTTYPE_PASSIVE <- 33 		  //  被动对象 (继承自 OBJECTTYPE_COLLISION)
OBJECTTYPE_ITEM <- 289 		  //  物品对象 (继承自 OBJECTTYPE_PASSIVE)
OBJECTTYPE_TRAP <- 545 		  //  陷阱对象 (继承自 OBJECTTYPE_PASSIVE)
OBJECTTYPE_BREAKABLE <- 1057 		  //  可破坏对象(例如可破坏的场景物件) (继承自 OBJECTTYPE_PASSIVE)
OBJECTTYPE_PET <- 65 		  //  宠物 (继承自 OBJECTTYPE_COLLISION)
OBJECTTYPE_CREATURE <- 129 		  //  生物 (继承自 OBJECTTYPE_COLLISION)
OBJECTTYPE_DRAWONLY <- 2 		  //  仅绘制对象 (继承自 OBJECTTYPE_OBJECT)
OBJECTTYPE_VIRTUALCHARACTER <- 18 		  //  虚拟角色 (继承自 OBJECTTYPE_DRAWONLY)
OBJECTTYPE_NPC <- 34 		  //  非玩家角色 (继承自 OBJECTTYPE_DRAWONLY)
OBJECTTYPE_DONKEY <- 66 		  //  驴子 (继承自 OBJECTTYPE_DRAWONLY)
OBJECTTYPE_VIRTUALCREATURE <- 130 		  //  虚拟生物 (继承自 OBJECTTYPE_DRAWONLY)
OBJECTTYPE_DISJOINTSHOP <- 258 		  //  分离商店对象 (继承自 OBJECTTYPE_DRAWONLY)
OBJECTTYPE_VIRTUALMONSTER <- 514 		  //  虚拟怪物 (继承自 OBJECTTYPE_DRAWONLY)
OBJECTTYPE_NONE_DELETE <- 1026 		  //  不会被删除的对象 (继承自 OBJECTTYPE_DRAWONLY) 
OBJECTTYPE_DEFINE_END <- 61440

CONVERT_TABLE_TYPE_DAMAGE <- 0 		  //  ������
CONVERT_TABLE_TYPE_DEFENSE <- 1 		  //  ����
CONVERT_TABLE_TYPE_HP <- 2 		  //  HP MAX
CONVERT_TABLE_TYPE_PHYSICAL_ATTACK <- 3 		  //  ��
CONVERT_TABLE_TYPE_PHYSICAL_DEFENSE <- 4 		  //  ü��
CONVERT_TABLE_TYPE_MAGICAL_ATTACK <- 5 		  //  ����
CONVERT_TABLE_TYPE_MAGICAL_DEFENSE <- 6 		  //  ���ŷ�
CONVERT_TABLE_TYPE_PHYSICAL_ABSOLUTE_DAMAGE <- 7 		  //  ���� ���� ������
CONVERT_TABLE_TYPE_PHYSICAL_DAMAGE_REDUCE <- 8 		  //  ���� ������ ����
CONVERT_TABLE_TYPE_MAGICAL_ABSOLUTE_DAMAGE <- 9 		  //  ���� ���� ������
CONVERT_TABLE_TYPE_MAGICAL_DAMAGE_REDUCE <- 10 		  //  ���� ������ ����
CONVERT_TABLE_TYPE_ACTIVESTATUS_DAMAGE_REDUCE <- 11 		  //  �����̻� ������ ����.
CONVERT_TABLE_TYPE_MP <- 12 		  //  MP MAX
CONVERT_TABLE_TYPE_SKILL_POWER <- 13 		  //  ��ų ����������
CONVERT_TABLE_TYPE_MAX <- 14 

ENUM_EQUIPMENTTYPE_AVATAR_HEADGEAR <- 0 		  //  ���� �ƹ�Ÿ
ENUM_EQUIPMENTTYPE_AVATAR_HAIR <- 1 		  //  �Ӹ� �ƹ�Ÿ
ENUM_EQUIPMENTTYPE_AVATAR_FACE <- 2 		  //  �� �ƹ�Ÿ
ENUM_EQUIPMENTTYPE_AVATAR_JACKET <- 3 		  //  ���� �ƹ�Ÿ
ENUM_EQUIPMENTTYPE_AVATAR_PANTS <- 4 		  //  ���� �ƹ�Ÿ
ENUM_EQUIPMENTTYPE_AVATAR_SHOES <- 5 		  //  �Ź� �ƹ�Ÿ
ENUM_EQUIPMENTTYPE_AVATAR_BREAST <- 6 		  //  �񰡽� �ƹ�Ÿ
ENUM_EQUIPMENTTYPE_AVATAR_WAIST <- 7 		  //  �㸮 �ƹ�Ÿ
ENUM_EQUIPMENTTYPE_AVATAR_SKIN <- 8 		  //  ������ �ƹ�Ÿ
ENUM_EQUIPMENTTYPE_AVATAR_AURORA <- 9 		  //  ���ζ� �ƹ�Ÿ
ENUM_EQUIPMENTTYPE_WEAPON <- 10 		  //  ����
ENUM_EQUIPMENTTYPE_TITLE <- 11 		  //  Īȣ
ENUM_EQUIPMENTTYPE_JACKET <- 12 		  //  ����
ENUM_EQUIPMENTTYPE_SHOULDER <- 13 		  //  ���
ENUM_EQUIPMENTTYPE_PANTS <- 14 		  //  ����
ENUM_EQUIPMENTTYPE_SHOES <- 15 		  //  �Ź�
ENUM_EQUIPMENTTYPE_WAIST <- 16 		  //  �㸮
ENUM_EQUIPMENTTYPE_AMULET <- 17 		  //  �����
ENUM_EQUIPMENTTYPE_WRIST <- 18 		  //  ����
ENUM_EQUIPMENTTYPE_RING <- 19 		  //  ����
ENUM_EQUIPMENTTYPE_SUPPORT <- 20 		  //  ����
ENUM_EQUIPMENTTYPE_MAGIC_STONE <- 21 		  //  ������
ENUM_EQUIPMENTTYPE_MAX <- 22 
ENUM_EQUIPMENTTYPE_AVATAR_START <- 0 		  //  �ƹ�Ÿ ����
ENUM_EQUIPMENTTYPE_AVATAR_END <- 8 		  //  �ƹ�Ÿ ��
ENUM_EQUIPMENTTYPE_AVATAR_SELL_END <- 8 		  //  ���� �Ǹ� �ƹ�Ÿ ��
ENUM_EQUIPMENTTYPE_AVATAR_MAX <- 9 		  //  �ƹ�Ÿ ����
ENUM_EQUIPMENTTYPE_ITEM_START <- 10 		  //  (�ƹ�Ÿ�� �ƴ�) ������ ����
ENUM_EQUIPMENTTYPE_VISIBLE_END <- 11 		  //  ���� ��ȭ ��� ��
ENUM_EQUIPMENTTYPE_CREATURE <- 22 		  //  ũ����
ENUM_EQUIPMENTTYPE_ARTIFACT_RED <- 23 		  //  ��Ƽ��Ʈ ù��° ����
ENUM_EQUIPMENTTYPE_ARTIFACT_BLUE <- 24 		  //  ��Ƽ��Ʈ �ι�° ����
ENUM_EQUIPMENTTYPE_ARTIFACT_GREEN <- 25 		  //  ��Ƽ��Ʈ ����° ����
ENUM_EQUIPMENTTYPE_ARTIFACT_END <- 26 
ENUM_EQUIPMENTTYPE_CREATURE_END <- 25 
ENUM_EQUIPMENTTYPE_CREATURE_MAX <- 24 
ENUM_EQUIPMENTTYPE_ARTIFACT <- 0 		  //  ��Ƽ��Ʈ ��ǥ�ε���
ENUM_EQUIPMENTTYPE_TOTAL_MAX <- 24 
ENUM_EQUIPMENTTYPE_VISIBLE_MAX <- 13 		  //  ���� ��ȭ ��� ����
ENUM_EQUIPMENTTYPE_ARMOR_START <- 12 
ENUM_EQUIPMENTTYPE_ARMOR_END <- 21 
ENUM_EQUIPMENTTYPE_ARMOR_NUM <- 10 
ENUM_EQUIPMENTTYPE_EXPAND_EQUIPSLOT_REVISE <- 10 		  //  �Ϲ����� ���԰� �������� ���԰��� ����ġ

SKILL_BACK_STEP <- 169 		  // 后退技能
SKILL_CANCEL_BACK_STEP <- 170 		  // 取消后退技能
SKILL_CANCEL_THROW_ITEM <- 171 		  // 取消投掷物品技能
SKILL_ARMOR_MASTERY_LIGHT <- 172 		  // 轻型护甲精通技能
SKILL_ARMOR_MASTERY_HEAVY <- 173 		  // 重型护甲精通技能
SKILL_BASIC_ATTACK_UP <- 174 		  // 基础攻击强化技能
SKILL_JUMP_POWER_UP <- 175 		  // 跳跃能力提升技能
SKILL_MAGICAL_ATTACK_UP <- 176 		  // 魔法攻击提升技能
SKILL_THROW_MASTERY <- 177 		  // 投掷精通技能
SKILL_PHYSICAL_BACK_ATTACK_CRITICAL <- 178 		  // 物理背击暴击技能
SKILL_DISJOINT_ITEM <- 179 		  // 分解物品技能
SKILL_SUPER_ARMOR_ON_CAST <- 180 		  // 施法时获得超级护甲技能
SKILL_COMPOUND_CRAFT <- 181 		  // 复合制作技能
SKILL_COMPOUND_WEAVING <- 182 		  // 复合编织技能
SKILL_COMPOUND_MACHINE <- 183 		  // 复合机械技能
SKILL_COMPOUND_CHEMISTRY <- 184 		  // 复合化学技能
SKILL_ARMOR_MASTERY_LEATHER <- 185 		  // 皮革护甲精通技能
SKILL_PHYSICAL_CRITICAL_HIT_UP <- 186 		  // 物理暴击提升技能
SKILL_ARMOR_MASTERY_CLOTH <- 187 		  // 布甲护甲精通技能
SKILL_MAGICAL_CRITICAL_HIT_UP <- 188 		  // 魔法暴击提升技能
SKILL_MAGICAL_BACK_ATTACK_CRITICAL <- 189 		  // 魔法背击暴击技能
SKILL_QUICK_STANDING <- 190 		  // 快速起身技能
SKILL_BASIC_HP_MAX_UP <- 195 		  // 基础最大生命值提升技能
SKILL_ARMOR_MASTERY_PLATE <- 196 		  // 板甲护甲精通技能
SKILL_GUILD_STATUS_UP <- 200 		  // 公会状态提升技能
SKILL_FEATURE_STAT_PHYSICAL_ATTACK_UP <- 210 		  // 特色物理攻击提升属性技能
SKILL_FEATURE_STAT_PHYSICAL_DEFENCE_UP <- 211 		  // 特色物理防御提升属性技能
SKILL_FEATURE_STAT_MAGICAL_ATTACK_UP <- 212 		  // 特色魔法攻击提升属性技能
SKILL_FEATURE_STAT_MAGICAL_DEFENCE_UP <- 213 		  // 特色魔法防御提升属性技能
SKILL_FEATURE_STAT_STUCK_UP <- 214 		  // 特色硬直提升属性技能
SKILL_FEATURE_STAT_ACTIVEPROPERTY_STUCK_UP <- 215 		  // 特色主动属性硬直提升技能
SKILL_FEATURE_STAT_HP_REGEN_RATE_UP <- 216 		  // 特色生命值恢复速率提升属性技能
SKILL_FEATURE_STAT_MP_REGEN_RATE_UP <- 217 		  // 特色魔法值恢复速率提升属性技能
SKILL_FEATURE_STAT_ELEMENT_ATTACK_ALL_UP <- 218 		  // 特色全元素攻击强化属性技能
SKILL_FEATURE_STAT_ELEMENT_TOLERANCE_ALL_UP <- 219 		  // 特色全元素抗性提升属性技能
SKILL_MAX <- 220 
SKILL_FEATURE_STAT_START <- 210 
SKILL_FEATURE_STAT_MAX <- 10 		  // 特色属性技能数量上限

ACTIVESTATUS_SLOW <- 0 		  //  ���ο�
ACTIVESTATUS_FREEZE <- 1 		  //  ������
ACTIVESTATUS_POISON <- 2 		  //  ������
ACTIVESTATUS_STUN <- 3 		  //  ����
ACTIVESTATUS_CURSE <- 4 		  //  Ŀ��
ACTIVESTATUS_BLIND <- 5 		  //  �����ε�
ACTIVESTATUS_LIGHTNING <- 6 		  //  ����Ʈ��
ACTIVESTATUS_STONE <- 7 		  //  ����
ACTIVESTATUS_SLEEP <- 8 		  //  ����
ACTIVESTATUS_BURN <- 9 		  //  ȭ��
ACTIVESTATUS_WEAPON_BREAK <- 10 		  //  ���� �ı�
ACTIVESTATUS_BLEEDING <- 11 		  //  ������
ACTIVESTATUS_HASTE <- 12 		  //  ���̽�Ʈ
ACTIVESTATUS_BLESS <- 13 		  //  ������
ACTIVESTATUS_ELEMENT <- 14 		  //  ������Ʈ
ACTIVESTATUS_CONFUSE <- 15 		  //  ȥ��
ACTIVESTATUS_HOLD <- 16 		  //  Ȧ��
ACTIVESTATUS_ARMOR_BREAK <- 17 		  //  ���� �ı�
ACTIVESTATUS_MAX <- 18 


GROW_TYPE_PRIEST <- 0		/// ������Ʈ
GROW_TYPE_CRUSADER <- 1		/// ũ�缼�̴�
GROW_TYPE_INFIGHTER <- 2	/// ��������
GROW_TYPE_EXORCIST <- 3		/// �𸶻�
GROW_TYPE_AVENGER <- 4		/// ���


ENUM_CHARACTERJOB_SWORDMAN <- 0     /// 剑士
ENUM_CHARACTERJOB_FIGHTER <- 1      /// 格斗家
ENUM_CHARACTERJOB_GUNNER <- 2       /// 神枪手
ENUM_CHARACTERJOB_MAGE <- 3			/// 魔法师
ENUM_CHARACTERJOB_PRIEST <- 4		/// 圣职者
ENUM_CHARACTERJOB_AT_GUNNER <- 5	/// 暗夜神枪手
ENUM_CHARACTERJOB_THIEF <- 6		/// 盗贼
ENUM_CHARACTERJOB_AT_FIGHTER <- 7	/// 暗夜格斗家
ENUM_CHARACTERJOB_AT_MAGE <- 8		/// 暗夜魔法师
ENUM_CHARACTERJOB_DEMONIC_SWORDMAN <- 9	/// 魔剑士
ENUM_CHARACTERJOB_CREATOR_MAGE <- 10	/// 缔造者魔法师
ENUM_CHARACTERJOB_MAX <- 11	/// 角色职业枚举最大值


ENUM_IS_REVERSE <- 0
ENUM_IS_START <- 1
ENUM_IS_PAUSE <- 2
ENUM_IS_END <- 3
ENUM_IS_INTERPOLATE_ATTACKBOX <- 4
ENUM_NEVER_APPLY_ANOTHER_PLAYERS_EFFECT_ALPHA_RATE <- 5
ENUM_IS_APPLY_ANOTHER_PLAYERS_EFFECT_ALPHA_RATE <- 6
ENUM_ANIMATION_BOOL_MAX <- 7


MODULE_TYPE_NONE <- -1
MODULE_TYPE_ENTRANCE <- 0
MODULE_TYPE_ROOM_LIST <- 1	// ����
MODULE_TYPE_SELECT_DUNGEON <- 2				// ���� ����ȭ��
MODULE_TYPE_MAIN_GAME <- 3					// �Ϲݴ���(�̰� ����)
MODULE_TYPE_PVP <- 4						// ����
MODULE_TYPE_FAIR_PVP <- 5					// ����
//MODULE_TYPE_LABYRINTH <- 7				// �����
MODULE_TYPE_SELECT_CHANNEL <- 6             
MODULE_TYPE_WARROOM <- 7					// ��������
//MODULE_TYPE_CHAOS <- 8					
MODULE_TYPE_LOGIN <- 8
MODULE_TYPE_ASSAULT <- 9					// �ο���
MODULE_TYPE_DEAD_TOWER <- 10					// ��ž
MODULE_TYPE_BLOOD_SYSTEM <- 11				// ������ ����
MODULE_TYPE_DESPAIR_TOWER <- 12			//������ž

// �۷ι��� ������
MODULE_TYPE_BOSS_TOWER <- 13			//�ɿ��� ������
MODULE_TYPE_ADVANCE_ALTAR <- 14			//������ ����

MODULE_TYPE_LOAD <- 15  // 模块类型：加载模块，用于处理游戏中的加载相关操作
MODULE_TYPE_TOURNAMENT <- 16  // 模块类型：锦标赛模块，用于处理锦标赛相关的功能
MODULE_TYPE_MAX <- 17  // 模块类型的最大值，用于边界判断
MODULE_TYPE_PVP_TYPE <- 18  // 模块类型：PVP类型，包括对战、决斗、竞技场等PVP相关场景
MODULE_TYPE_DUNGEON_TYPE <- 19  // 模块类型：地下城类型，包括副本、迷宫、洞穴等地下城相关场景
MODULE_TYPE_ALL <- 20  // 模块类型：所有类型，代表包含所有模块类型的集合
//MODULE_TYPE_LOAD <- 13
//MODULE_TYPE_TOURNAMENT <- 14
//MODULE_TYPE_MAX <- 15
//MODULE_TYPE_PVP_TYPE <- 16			// ������, �ο���, ���������� ���� ��Ī
//MODULE_TYPE_DUNGEON_TYPE <- 17		// ����, ��ž, ������ ���� ��Ī
//MODULE_TYPE_ALL <- 18				// ��� ����� ��Ī


ATTACKTYPE_PHYSICAL <- 0		/// ���� ���� ����
ATTACKTYPE_MAGICAL  <- 1       /// ���� ���� ����  
ATTACKTYPE_ABSOLUTE <- 2      /// ��� ���� ����
ATTACKTYPE_LIGHT	<- 3
ATTACKTYPE_DARK		<- 4
ATTACKTYPE_WATER	<- 5
ATTACKTYPE_FIRE		<- 6
ATTACKTYPE_MAX		<- 7

BUFF_CAUSE_NORMAL <- 0// �Ϲ� ������� ���� Ÿ��
BUFF_CAUSE_ACTIVE_STATUS <- 1// �����̻�
BUFF_CAUSE_SKILL <- 2		// ��ų
BUFF_CAUSE_EXCEPTIONAL <- 3	// ����ó���� ����(���������� �����Ǵ� ���� ������ ���� ��)
BUFF_NONE <- 4				// �ƹ����͵� ���� ����
BUFF_CAUSE_MAX <- 5



PAUSETYPE_NONE		<- 0	/// �Ͻ����� ����
PAUSETYPE_OBJECT	<- 1	/// ������Ʈ�� �Ͻ����� (Appendage, ���� ��ȭ, ����Ʈ�� ��� ���ư�, �߷� ������)
PAUSETYPE_WORLD		<- 2	/// �� ���谡 �Ͻ����� (Appendage, ���� ��ȭ, ����Ʈ�� ����)

ENUM_ELEMENT_FIRE	<- 0	/// ȭ
ENUM_ELEMENT_WATER	<- 1	/// ��
ENUM_ELEMENT_DARK	<- 2	/// ��
ENUM_ELEMENT_LIGHT	<- 3	/// ��
ENUM_ELEMENT_NONE	<- 4	/// ��
ENUM_ELEMENT_MAX	<- 4	/// == ENUM_ELEMENT_NONE


//  ������ ����� Ÿ��
THROW_TYPE_SKILL	<- 0	/// ��ų
THROW_TYPE_ITEM		<- 1	/// ��ô ������
SETUP_TYPE_ITEM		<- 2	/// ��ġ ������

SPEED_TYPE_CONST						<- 0	/// �����. �����ص� setStaticSpeedInfo�� ��ȣ���ϱ� �������� ���� �ȵ�
SPEED_TYPE_MOVE_SPEED					<- 1	/// �̵� �ӵ�
SPEED_TYPE_ATTACK_SPEED					<- 2	/// ���� �ӵ�
SPEED_TYPE_EXCEPT_WEAPON_ATTACK_SPEED	<- 3	/// ���� ���� ���� �ӵ�
SPEED_TYPE_CAST_SPEED					<- 4	/// ĳ��Ʈ �ӵ�

Z_ACCEL_TYPE_CONST				<- 0	/// ������ ���
Z_ACCEL_TYPE_GRAVITY_WORLD		<- 1	/// �߷� : ������ ���� �߷�
Z_ACCEL_TYPE_GRAVITY_OBJECT		<- 2	/// �߷� : ĳ���ͺ� �߷�
Z_ACCEL_TYPE_ANTIGRAVITY_OBJECT	<- 3	/// ���߷� : �߷¿� �ݴ�Ǵ� ��. �Ǵ� ���.

STATICINFO_DEPTH				<- 4	/// Static Info�� �ִ� ���� ����. (�⺻ -> ��� ���� -> ���º�ȭ ���� -> ������, ��ų ����)
X_NORMALMOVE_VELOCITY			<- 143	/// ���� �̵��� ���η� 1�ʵ��� �̵� �ȼ� ��
X_SLANTMOVE_VELOCITY			<- 119	/// �밢�� �̵��� ���η� 1�ʵ��� �̵� �ȼ� ��
Y_NORMALMOVE_VELOCITY			<- 114	/// ���� �̵��� ���η� 1�ʵ��� �̵� �ȼ� ��
Y_SLANTMOVE_VELOCITY			<- 95	/// �밢�� �̵��� ���η� 1�ʵ��� �̵� �ȼ� ��
FORCE_TO_VELOCITY_CONST			<- 4000	/// ���� ���� �ӵ��� ����ϴ� ���. �ӵ� = ��� * �� / ����
SPEED_VALUE_DEFAULT				<- 1000	/// �̵� �ӵ�, ���� �ӵ����� �ӵ��� �⺻ġ. �� ���̸� 100%��.
LIGHT_OBJECT_MAX_WEIGHT			<- 60000	/// ȿ�������� ������ ������ ���Ѽ�
MIDDLE_OBJECT_MAX_WEIGHT		<- 100000	/// ȿ�������� �߰� ������ ���Ѽ�
DEFAULT_GRAVITY_ACCEL			<- -1500	/// �⺻ �߷� ���ӵ�


OBJECT_MESSAGE_INVINCIBLE		<- 0
OBJECT_MESSAGE_GHOST			<- 1
OBJECT_MESSAGE_SUPERARMOR		<- 2
OBJECT_MESSAGE_UNBREAKABLE		<- 3
OBJECT_MESSAGE_END				<- 4

RECOVER_TYPE_HP					<- 0
RECOVER_TYPE_MP					<- 1
RECOVER_TYPE_HP_MP				<- 2
RECOVER_TYPE_MAX				<- 3

REASON_NONE						<- 0
REASON_DEATH					<- 1
REASON_MOVING_VILLAGE			<- 2
REASON_LOGIN					<- 3
REASON_ALL						<- 4

OPTION_HOTKEY_MOVE_UP 	<- 0
OPTION_HOTKEY_MOVE_DOWN <- 2
OPTION_HOTKEY_MOVE_LEFT <- 1
OPTION_HOTKEY_MOVE_RIGHT <- 3
ENUM_SUBKEY_TYPE_ALL <- 7


GROW_TYPE_AT_MAGE			<- 0	//  ������
GROW_TYPE_ELEMENTAL_BOMBER	<- 1	//  ������Ż �ٸ�
GROW_TYPE_GRACIAL_MASTER	<- 2	//  �����

PARTICLE_CREATER_LARGE_HIT			<- 0		/// ū Ÿ�ݿ�
PARTICLE_CREATER_SMALL_HIT			<- 1		/// ���� Ÿ�ݿ�
PARTICLE_CREATER_FIRE_HIT			<- 2		/// ȭ �Ӽ� Ÿ�ݿ�
PARTICLE_CREATER_FIRE_HIT_LIGHT		<- 3		/// ȭ �Ӽ� Ÿ�ݿ�
PARTICLE_CREATER_WATER_HIT			<- 4		/// �� �Ӽ� Ÿ�ݿ�
PARTICLE_CREATER_WATER_HIT_LIGHT	<- 5		/// �� �Ӽ� Ÿ�ݿ�
PARTICLE_CREATER_WATER_HIT_ICE		<- 6		/// �� �Ӽ� Ÿ�ݿ�

OPTION_HOTKEY__UNDEFINED <- -1 		  //  ���ǵ��� ����
OPTION_HOTKEY_MOVE_UP <- 0 		  //  (Up arrow)
OPTION_HOTKEY_MOVE_LEFT <- 1 		  //  (Left arrow)
OPTION_HOTKEY_MOVE_DOWN <- 2 		  //  (Down arrow)
OPTION_HOTKEY_MOVE_RIGHT <- 3 		  //  (Right arrow)
OPTION_HOTKEY_ATTACK <- 4 		  //  (X)
OPTION_HOTKEY_JUMP <- 5 		  //  (C)
OPTION_HOTKEY_SKILL <- 6 		  //  (Z)
OPTION_HOTKEY_SKILL2 <- 7 		  //  buff�� Ű(space)
OPTION_HOTKEY_CREATURE_SKILL <- 8 		  //  (V)
OPTION_HOTKEY_STATUS_WINDOW <- 9 		  //  (M)
OPTION_HOTKEY_SKILL_WINDOW <- 10 		  //  (K)
OPTION_HOTKEY_ITEM_INVENTORY <- 11 		  //  (I)
OPTION_HOTKEY_OPTION_WINDOW <- 12 		  //  (O)
OPTION_HOTKEY_NORMAL_QUEST_WINDOW <- 13 		  //  (Q)
OPTION_HOTKEY_AVATAR_INVENTORY <- 14 		  //  (U)
OPTION_HOTKEY_CERASHOP <- 15 		  //  (T)
OPTION_HOTKEY_MINIMAP <- 16 		  // ���� �̴ϸ�(N)
OPTION_HOTKEY_CREATURE_WINDOW <- 17 		  //  (Y)
OPTION_HOTKEY_TOOLTIP_ <- 18 		  // �󼼺��� ��ȯŰ(R)
OPTION_HOTKEY_EPIC_QUEST_WINDOW <- 19 		  //  (W)
OPTION_HOTKEY_QUICK_SKILL1 <- 20 		  //  ��ų ����(A, S, D, F, G, H)
OPTION_HOTKEY_QUICK_SKILL2 <- 21 
OPTION_HOTKEY_QUICK_SKILL3 <- 22 
OPTION_HOTKEY_QUICK_SKILL4 <- 23 
OPTION_HOTKEY_QUICK_SKILL5 <- 24 
OPTION_HOTKEY_QUICK_SKILL6 <- 25 
OPTION_HOTKEY_EXSKILL1 <- 26 		  //  Ȯ�彺ų ����(F1 - F6)
OPTION_HOTKEY_EXSKILL2 <- 27 
OPTION_HOTKEY_EXSKILL3 <- 28 
OPTION_HOTKEY_EXSKILL4 <- 29 
OPTION_HOTKEY_EXSKILL5 <- 30 
OPTION_HOTKEY_EXSKILL6 <- 31 
OPTION_HOTKEY_ITEM_QUICKSLOT1 <- 32 		  //  ������ �� ����(1 - 6)
OPTION_HOTKEY_ITEM_QUICKSLOT2 <- 33 
OPTION_HOTKEY_ITEM_QUICKSLOT3 <- 34 
OPTION_HOTKEY_ITEM_QUICKSLOT4 <- 35 
OPTION_HOTKEY_ITEM_QUICKSLOT5 <- 36 
OPTION_HOTKEY_ITEM_QUICKSLOT6 <- 37 
OPTION_HOTKEY_TOGGLE_ITEM_NAME_IN_DUNGEON <- 38 		  //  �������� ������ �̸�����(ctrl)
OPTION_HOTKEY_HIDE_MAIN_HUD <- 39 		  //  �������̽� �����(Tab)
OPTION_HOTKEY_TOGGLE_TITLE_ANIMATION <- 40 		  //  �г��� ���� ��� ��ȯ(E)
OPTION_HOTKEY_TOGGLE_SKILL_INFORMATION <- 41 		  //  ��ų ���� ���� ��� ��ȯ(F7)
OPTION_HOTKEY_PAUSE_IN_TOWER <- 42 		  //  ����� ž �Ͻ�����
OPTION_HOTKEY_CAPTURE_MOVING_PICTURE <- 43 		  //  ������ ĸ��(Pause)
OPTION_HOTKEY_MENU_MY_INFO <- 44 		  //  �������� �޴�(7)
OPTION_HOTKEY_MENU_COMMUNITY <- 45 		  //  Ŀ�´�Ƽ �޴�(8)
OPTION_HOTKEY_MENU_CONTENTS <- 46 		  //  ������ �޴�(9)
OPTION_HOTKEY_MENU_SERVICE <- 47 		  //  ���� �޴�(0)
OPTION_HOTKEY_MENU_SYSTEM__CLOSE_ALL_WINDOW <- 48 		  // ���â�ݱ�(Esc)
OPTION_HOTKEY_PVP <- 49 		  //  ������(P)
OPTION_HOTKEY_RECOMMEND_USER <- 50 		  //  ��õ����([)
OPTION_HOTKEY_PARTY_MATCHING <- 51 		  //  ��Ƽ��Ī(])
OPTION_HOTKEY_FRIEND <- 52 		  //  ģ��(L)
OPTION_HOTKEY_GUILD <- 53 		  //  ���(;)
OPTION_HOTKEY_MEMBER <- 54 		  //  ���(')
OPTION_HOTKEY_BLACKLIST <- 55 		  //  ����
OPTION_HOTKEY_PVP_BUDDY <- 56 		  //  ����ģ��
OPTION_HOTKEY_WAR_AREA_LIST <- 57 		  //  �����������â(,)
OPTION_HOTKEY_AUCTION_WINDOW <- 58 		  //  �����(B)
OPTION_HOTKEY_GOBLIN_PAD <- 59 		  //  �������е�
OPTION_HOTKEY_HOTKEY_SETTING_WINDOW <- 60 		  //  ����Ű ����â
OPTION_HOTKEY_WAR_AREA_INFORMATION <- 61 		  //  �������� ����â(End)
OPTION_HOTKEY_HELLMODE_INFORMATION <- 62 		  //  �� �̻� ������ ����
OPTION_HOTKEY_FAVOR_CHECK_WINDOW <- 63 		  //  �� �̻� ������ ����
OPTION_HOTKEY_EXPERT_JOB <- 64 		  //  �������� ���
OPTION_HOTKEY_EMOTION_EXPRESSION <- 65 		  //  ����ǥ�� ���
OPTION_HOTKEY_EVENT <- 66 		  //  �̺�ƮŰ(shift)
OPTION_HOTKEY_PVP_MSSION <- 67 		  //  �̼�������
OPTION_HOTKEY_PVP_RECORD <- 68 		  //  ��������â
OPTION_HOTKEY_QUICK_CHAT_0 <- 69 
OPTION_HOTKEY_QUICK_CHAT_1 <- 70 
OPTION_HOTKEY_QUICK_CHAT_2 <- 71 
OPTION_HOTKEY_QUICK_CHAT_3 <- 72 
OPTION_HOTKEY_QUICK_CHAT_4 <- 73 
OPTION_HOTKEY_QUICK_CHAT_5 <- 74 
OPTION_HOTKEY_QUICK_CHAT_6 <- 75 
OPTION_HOTKEY_QUICK_CHAT_7 <- 76 
OPTION_HOTKEY_QUICK_CHAT_8 <- 77 
OPTION_HOTKEY_QUICK_CHAT_9 <- 78 
OPTION_HOTKEY_TOGGLE_ITEMINFO_COMPARE <- 79 		  //  ������ ��â ��ȯŰ (Default: F8)
OPTION_HOTKEY_TITLEBOOK <- 80 		  //  Īȣ��
OPTION_HOTKEY_THIS_DUNGEON <- 81 		  //  �絵��
OPTION_HOTKEY_ANOTHER_DUNGEON <- 82 		  //  �ٸ� ���� ����
OPTION_HOTKEY_RETURN_TO_TOWN <- 83 		  //  ������ ���ư���
OPTION_HOTKEY_MERCENARY_SYSTEM <- 84 		  //  �뺴 �ý���
OPTION_HOTKEY_ITEM_DICTIONARY <- 85 
OPTION_HOTKEY_QUICK_PARTY_REGISTER <- 86 		  //  ���� ��Ƽ ��� ��û


STATE_BURSTER				<- 100	// ���뽺ų state ������
// ���� skill���� �κ��Դϴ�.
// 198	`ATMage/Buster.skl`				// ������
SKILL_BURSTER				<- 198	// ���뽺ų ������


SKILL_LATENTABILITY				<- 254

STATE_LIE_YAN_FEN_BU_ZHUI_JIA						<- 248
GLOBAL_IS_LOCK_SHAKE_EFFECT	<- 0
