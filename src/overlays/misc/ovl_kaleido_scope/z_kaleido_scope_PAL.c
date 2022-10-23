#include "z_kaleido_scope.h"
#include "assets/textures/icon_item_static/icon_item_static.h"
#include "assets/textures/icon_item_24_static/icon_item_24_static.h"
#include "assets/textures/icon_item_nes_static/icon_item_nes_static.h"
#include "assets/textures/icon_item_ger_static/icon_item_ger_static.h"
#include "assets/textures/icon_item_fra_static/icon_item_fra_static.h"
#include "assets/textures/icon_item_gameover_static/icon_item_gameover_static.h"
#include "vt.h"

// French

static void* sEquipPageBgQuadsFRATexs[] = {
    // column 1
    gPauseEquipment00FRATex,
    gPauseEquipment01Tex,
    gPauseEquipment02Tex,
    gPauseEquipment03Tex,
    gPauseEquipment04Tex,
    // column 2
    gPauseEquipment10FRATex,
    gPauseEquipment11Tex,
    gPauseEquipment12Tex,
    gPauseEquipment13Tex,
    gPauseEquipment14Tex,
    // column 3
    gPauseEquipment20FRATex,
    gPauseEquipment21Tex,
    gPauseEquipment22Tex,
    gPauseEquipment23Tex,
    gPauseEquipment24Tex,
};
static void* sItemPageBgQuadsFRATexs[] = {
    // column 1
    gPauseSelectItem00FRATex,
    gPauseSelectItem01Tex,
    gPauseSelectItem02Tex,
    gPauseSelectItem03Tex,
    gPauseSelectItem04Tex,
    // column 2
    gPauseSelectItem10FRATex,
    gPauseSelectItem11Tex,
    gPauseSelectItem12Tex,
    gPauseSelectItem13Tex,
    gPauseSelectItem14Tex,
    // column 3
    gPauseSelectItem20FRATex,
    gPauseSelectItem21Tex,
    gPauseSelectItem22Tex,
    gPauseSelectItem23Tex,
    gPauseSelectItem24Tex,
};
static void* sMapPageBgQuadsFRATexs[] = {
    // column 1
    gPauseMap00Tex,
    gPauseMap01Tex,
    gPauseMap02Tex,
    gPauseMap03Tex,
    gPauseMap04Tex,
    // column 2
    gPauseMap10FRATex,
    gPauseMap11Tex,
    gPauseMap12Tex,
    gPauseMap13Tex,
    gPauseMap14Tex,
    // column 3
    gPauseMap20Tex,
    gPauseMap21Tex,
    gPauseMap22Tex,
    gPauseMap23Tex,
    gPauseMap24Tex,
};
static void* sQuestPageBgQuadsFRATexs[] = {
    // column 1
    gPauseQuestStatus00Tex,
    gPauseQuestStatus01Tex,
    gPauseQuestStatus02Tex,
    gPauseQuestStatus03Tex,
    gPauseQuestStatus04Tex,
    // column 2
    gPauseQuestStatus10FRATex,
    gPauseQuestStatus11Tex,
    gPauseQuestStatus12Tex,
    gPauseQuestStatus13Tex,
    gPauseQuestStatus14Tex,
    // column 3
    gPauseQuestStatus20Tex,
    gPauseQuestStatus21Tex,
    gPauseQuestStatus22Tex,
    gPauseQuestStatus23Tex,
    gPauseQuestStatus24Tex,
};
static void* sSavePromptBgQuadsFRATexs[] = {
    // column 1
    gPauseSave00FRATex,
    gPauseSave01Tex,
    gPauseSave02Tex,
    gPauseSave03Tex,
    gPauseSave04Tex,
    // column 2
    gPauseSave10FRATex,
    gPauseSave11Tex,
    gPauseSave12Tex,
    gPauseSave13Tex,
    gPauseSave14Tex,
    // column 3
    gPauseSave20FRATex,
    gPauseSave21Tex,
    gPauseSave22Tex,
    gPauseSave23Tex,
    gPauseSave24Tex,
};

// German

static void* sEquipPageBgQuadsGERTexs[] = {
    // column 1
    gPauseEquipment00GERTex,
    gPauseEquipment01Tex,
    gPauseEquipment02Tex,
    gPauseEquipment03Tex,
    gPauseEquipment04Tex,
    // column 2
    gPauseEquipment10GERTex,
    gPauseEquipment11Tex,
    gPauseEquipment12Tex,
    gPauseEquipment13Tex,
    gPauseEquipment14Tex,
    // column 3
    gPauseEquipment20GERTex,
    gPauseEquipment21Tex,
    gPauseEquipment22Tex,
    gPauseEquipment23Tex,
    gPauseEquipment24Tex,
};
static void* sItemPageBgQuadsGERTexs[] = {
    // column 1
    gPauseSelectItem00GERTex,
    gPauseSelectItem01Tex,
    gPauseSelectItem02Tex,
    gPauseSelectItem03Tex,
    gPauseSelectItem04Tex,
    // column 2
    gPauseSelectItem10GERTex,
    gPauseSelectItem11Tex,
    gPauseSelectItem12Tex,
    gPauseSelectItem13Tex,
    gPauseSelectItem14Tex,
    // column 3
    gPauseSelectItem20GERTex,
    gPauseSelectItem21Tex,
    gPauseSelectItem22Tex,
    gPauseSelectItem23Tex,
    gPauseSelectItem24Tex,
};
static void* sMapPageBgQuadsGERTexs[] = {
    // column 1
    gPauseMap00Tex,
    gPauseMap01Tex,
    gPauseMap02Tex,
    gPauseMap03Tex,
    gPauseMap04Tex,
    // column 2
    gPauseMap10GERTex,
    gPauseMap11Tex,
    gPauseMap12Tex,
    gPauseMap13Tex,
    gPauseMap14Tex,
    // column 3
    gPauseMap20Tex,
    gPauseMap21Tex,
    gPauseMap22Tex,
    gPauseMap23Tex,
    gPauseMap24Tex,
};
static void* sQuestPageBgQuadsGERTexs[] = {
    // column 1
    gPauseQuestStatus00Tex,
    gPauseQuestStatus01Tex,
    gPauseQuestStatus02Tex,
    gPauseQuestStatus03Tex,
    gPauseQuestStatus04Tex,
    // column 2
    gPauseQuestStatus10GERTex,
    gPauseQuestStatus11Tex,
    gPauseQuestStatus12Tex,
    gPauseQuestStatus13Tex,
    gPauseQuestStatus14Tex,
    // column 3
    gPauseQuestStatus20Tex,
    gPauseQuestStatus21Tex,
    gPauseQuestStatus22Tex,
    gPauseQuestStatus23Tex,
    gPauseQuestStatus24Tex,
};
static void* sSavePromptBgQuadsGERTexs[] = {
    // column 1
    gPauseSave00Tex,
    gPauseSave01Tex,
    gPauseSave02Tex,
    gPauseSave03Tex,
    gPauseSave04Tex,
    // column 2
    gPauseSave10GERTex,
    gPauseSave11Tex,
    gPauseSave12Tex,
    gPauseSave13Tex,
    gPauseSave14Tex,
    // column 3
    gPauseSave20GERTex,
    gPauseSave21Tex,
    gPauseSave22Tex,
    gPauseSave23Tex,
    gPauseSave24Tex,
};

// English

static void* sEquipPageBgQuadsENGTexs[] = {
    // column 1
    gPauseEquipment00Tex,
    gPauseEquipment01Tex,
    gPauseEquipment02Tex,
    gPauseEquipment03Tex,
    gPauseEquipment04Tex,
    // column 2
    gPauseEquipment10ENGTex,
    gPauseEquipment11Tex,
    gPauseEquipment12Tex,
    gPauseEquipment13Tex,
    gPauseEquipment14Tex,
    // column 3
    gPauseEquipment20Tex,
    gPauseEquipment21Tex,
    gPauseEquipment22Tex,
    gPauseEquipment23Tex,
    gPauseEquipment24Tex,
};
static void* sItemPageBgQuadsENGTexs[] = {
    // column 1
    gPauseSelectItem00ENGTex,
    gPauseSelectItem01Tex,
    gPauseSelectItem02Tex,
    gPauseSelectItem03Tex,
    gPauseSelectItem04Tex,
    // column 2
    gPauseSelectItem10ENGTex,
    gPauseSelectItem11Tex,
    gPauseSelectItem12Tex,
    gPauseSelectItem13Tex,
    gPauseSelectItem14Tex,
    // column 3
    gPauseSelectItem20ENGTex,
    gPauseSelectItem21Tex,
    gPauseSelectItem22Tex,
    gPauseSelectItem23Tex,
    gPauseSelectItem24Tex,
};
static void* sMapPageBgQuadsENGTexs[] = {
    // column 1
    gPauseMap00Tex,
    gPauseMap01Tex,
    gPauseMap02Tex,
    gPauseMap03Tex,
    gPauseMap04Tex,
    // column 2
    gPauseMap10ENGTex,
    gPauseMap11Tex,
    gPauseMap12Tex,
    gPauseMap13Tex,
    gPauseMap14Tex,
    // column 3
    gPauseMap20Tex,
    gPauseMap21Tex,
    gPauseMap22Tex,
    gPauseMap23Tex,
    gPauseMap24Tex,
};
static void* sQuestPageBgQuadsENGTexs[] = {
    // column 1
    gPauseQuestStatus00ENGTex,
    gPauseQuestStatus01Tex,
    gPauseQuestStatus02Tex,
    gPauseQuestStatus03Tex,
    gPauseQuestStatus04Tex,
    // column 2
    gPauseQuestStatus10ENGTex,
    gPauseQuestStatus11Tex,
    gPauseQuestStatus12Tex,
    gPauseQuestStatus13Tex,
    gPauseQuestStatus14Tex,
    // column 3
    gPauseQuestStatus20ENGTex,
    gPauseQuestStatus21Tex,
    gPauseQuestStatus22Tex,
    gPauseQuestStatus23Tex,
    gPauseQuestStatus24Tex,
};
static void* sSavePromptBgQuadsENGTexs[] = {
    // column 1
    gPauseSave00Tex,
    gPauseSave01Tex,
    gPauseSave02Tex,
    gPauseSave03Tex,
    gPauseSave04Tex,
    // column 2
    gPauseSave10ENGTex,
    gPauseSave11Tex,
    gPauseSave12Tex,
    gPauseSave13Tex,
    gPauseSave14Tex,
    // column 3
    gPauseSave20Tex,
    gPauseSave21Tex,
    gPauseSave22Tex,
    gPauseSave23Tex,
    gPauseSave24Tex,
};

static void* sGameOverTexs[] = {
    // column 1
    gPauseSave00Tex,
    gPauseSave01Tex,
    gPauseSave02Tex,
    gPauseSave03Tex,
    gPauseSave04Tex,
    // column 2
    gPauseGameOver10Tex,
    gPauseSave11Tex,
    gPauseSave12Tex,
    gPauseSave13Tex,
    gPauseSave14Tex,
    // column 3
    gPauseSave20Tex,
    gPauseSave21Tex,
    gPauseSave22Tex,
    gPauseSave23Tex,
    gPauseSave24Tex,
};

static void* sEquipPageBgQuadsTexs[] = {
    sEquipPageBgQuadsENGTexs,
    sEquipPageBgQuadsGERTexs,
    sEquipPageBgQuadsFRATexs,
};

static void* sItemPageBgQuadsTexs[] = {
    sItemPageBgQuadsENGTexs,
    sItemPageBgQuadsGERTexs,
    sItemPageBgQuadsFRATexs,
};

static void* sMapPageBgQuadsTexs[] = {
    sMapPageBgQuadsENGTexs,
    sMapPageBgQuadsGERTexs,
    sMapPageBgQuadsFRATexs,
};

static void* sQuestPageBgQuadsTexs[] = {
    sQuestPageBgQuadsENGTexs,
    sQuestPageBgQuadsGERTexs,
    sQuestPageBgQuadsFRATexs,
};

static void* sSavePromptBgQuadsTexs[] = {
    sSavePromptBgQuadsENGTexs,
    sSavePromptBgQuadsGERTexs,
    sSavePromptBgQuadsFRATexs,
};

s16 D_8082AAEC_width_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_[] = {
    32, 112, 32, 48, 32, 32, 32, 48, 32, 64, 32, 48, 48, 48, 48, 64, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 80, 64,
};

s16 D_8082AB2C_height_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_[] = {
    24, 72, 13, 22, 19, 20, 19, 27, 14, 26, 22, 21, 49, 32, 45, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 16, 32, 8,
};

static u8 gPageSwitchNextButtonStatus[][5] = {
    // PAUSE_ITEM  + SWITCH_PAGE_LEFT_PT
    //
    //  -> PAUSE_EQUIP
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_ENABLED },
    // PAUSE_MAP   + SWITCH_PAGE_LEFT_PT
    //
    //  -> PAUSE_ITEM
    { BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_DISABLED },
    // PAUSE_QUEST + SWITCH_PAGE_LEFT_PT
    // PAUSE_ITEM  + SWITCH_PAGE_RIGHT_PT
    //  -> PAUSE_MAP
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED },
    // PAUSE_EQUIP + SWITCH_PAGE_LEFT_PT
    // PAUSE_MAP   + SWITCH_PAGE_RIGHT_PT
    //  -> PAUSE_QUEST
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_ENABLED },
    //
    // PAUSE_QUEST + SWITCH_PAGE_RIGHT_PT
    //  -> PAUSE_EQUIP
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_ENABLED },
    //
    // PAUSE_EQUIP + SWITCH_PAGE_RIGHT_PT
    //  -> PAUSE_ITEM
    { BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_DISABLED },

};

static s16 sColor82ABRed_D_8082AB8C = 0;
static s16 sColor82ABGreen_D_8082AB90 = 0;
static s16 sColor82ABBlue_D_8082AB94 = 0;
static s16 sColor82ABGameOverPrimAlpha_D_8082AB98 = 255;

static s16 sDrawGameOverEnvColorRed_D_8082AB9C = 255;
static s16 sDrawGameOverEnvColorGreen_D_8082ABA0 = 0;
static s16 sDrawGameOverEnvColorBlue_D_8082ABA4 = 0;

static s16 sInDungeonScene = false;

static f32 sPageSwitchEyeDx[] = {
    -PAUSE_EYE_DIST * (PAUSE_MAP_X - PAUSE_ITEM_X) / 16,  // PAUSE_ITEM  right
    -PAUSE_EYE_DIST*(PAUSE_EQUIP_X - PAUSE_ITEM_X) / 16,  // PAUSE_ITEM  left
    -PAUSE_EYE_DIST*(PAUSE_QUEST_X - PAUSE_MAP_X) / 16,   // PAUSE_MAP   right
    -PAUSE_EYE_DIST*(PAUSE_ITEM_X - PAUSE_MAP_X) / 16,    // PAUSE_MAP   left
    -PAUSE_EYE_DIST*(PAUSE_EQUIP_X - PAUSE_QUEST_X) / 16, // PAUSE_QUEST right
    -PAUSE_EYE_DIST*(PAUSE_MAP_X - PAUSE_QUEST_X) / 16,   // PAUSE_QUEST left
    -PAUSE_EYE_DIST*(PAUSE_ITEM_X - PAUSE_EQUIP_X) / 16,  // PAUSE_EQUIP right
    -PAUSE_EYE_DIST*(PAUSE_QUEST_X - PAUSE_EQUIP_X) / 16, // PAUSE_EQUIP left
};

static f32 sPageSwitchEyeDz[] = {
    -PAUSE_EYE_DIST * (PAUSE_MAP_Z - PAUSE_ITEM_Z) / 16,  // PAUSE_ITEM  right
    -PAUSE_EYE_DIST*(PAUSE_EQUIP_Z - PAUSE_ITEM_Z) / 16,  // PAUSE_ITEM  left
    -PAUSE_EYE_DIST*(PAUSE_QUEST_Z - PAUSE_MAP_Z) / 16,   // PAUSE_MAP   right
    -PAUSE_EYE_DIST*(PAUSE_ITEM_Z - PAUSE_MAP_Z) / 16,    // PAUSE_MAP   left
    -PAUSE_EYE_DIST*(PAUSE_EQUIP_Z - PAUSE_QUEST_Z) / 16, // PAUSE_QUEST right
    -PAUSE_EYE_DIST*(PAUSE_MAP_Z - PAUSE_QUEST_Z) / 16,   // PAUSE_QUEST left
    -PAUSE_EYE_DIST*(PAUSE_ITEM_Z - PAUSE_EQUIP_Z) / 16,  // PAUSE_EQUIP right
    -PAUSE_EYE_DIST*(PAUSE_QUEST_Z - PAUSE_EQUIP_Z) / 16, // PAUSE_EQUIP left
};

static u16 sPageSwitchNextPageIndex[] = {
    PAUSE_MAP,   // PAUSE_ITEM  right
    PAUSE_EQUIP, // PAUSE_ITEM  left
    PAUSE_QUEST, // PAUSE_MAP   right
    PAUSE_ITEM,  // PAUSE_MAP   left
    PAUSE_EQUIP, // PAUSE_QUEST right
    PAUSE_MAP,   // PAUSE_QUEST left
    PAUSE_ITEM,  // PAUSE_EQUIP right
    PAUSE_QUEST, // PAUSE_EQUIP left
};

u8 gSlotAgeReqs[] = {
    AGE_REQ_CHILD, // SLOT_STICK
    AGE_REQ_NONE,  // SLOT_NUT
    AGE_REQ_NONE,  // SLOT_BOMB
    AGE_REQ_ADULT, // SLOT_BOW
    AGE_REQ_ADULT, // SLOT_ARROW_FIRE
    AGE_REQ_NONE,  // SLOT_DINS_FIRE
    AGE_REQ_CHILD, // SLOT_SLINGSHOT
    AGE_REQ_NONE,  // SLOT_OCARINA
    AGE_REQ_NONE,  // SLOT_BOMBCHU
    AGE_REQ_ADULT, // SLOT_HOOKSHOT
    AGE_REQ_ADULT, // SLOT_ARROW_ICE
    AGE_REQ_NONE,  // SLOT_FARORES_WIND
    AGE_REQ_CHILD, // SLOT_BOOMERANG
    AGE_REQ_NONE,  // SLOT_LENS
    AGE_REQ_CHILD, // SLOT_BEAN
    AGE_REQ_ADULT, // SLOT_HAMMER
    AGE_REQ_ADULT, // SLOT_ARROW_LIGHT
    AGE_REQ_NONE,  // SLOT_NAYRUS_LOVE
    AGE_REQ_NONE,  // SLOT_BOTTLE_1
    AGE_REQ_NONE,  // SLOT_BOTTLE_2
    AGE_REQ_NONE,  // SLOT_BOTTLE_3
    AGE_REQ_NONE,  // SLOT_BOTTLE_4
    AGE_REQ_ADULT, // SLOT_TRADE_ADULT
    AGE_REQ_CHILD, // SLOT_TRADE_CHILD
};

// Not sure EQUIP_TYPE_MAX is really EQUIP_TYPE_MAX
u8 gEquipAgeReqs[EQUIP_TYPE_MAX][4] = {
    {
        AGE_REQ_ADULT,
        AGE_REQ_CHILD,
        AGE_REQ_ADULT,
        AGE_REQ_ADULT,
    }, // EQUIP_TYPE_SWORD
    {
        AGE_REQ_NONE,
        AGE_REQ_CHILD,
        AGE_REQ_NONE,
        AGE_REQ_ADULT,
    }, // EQUIP_TYPE_SHIELD
    {
        AGE_REQ_ADULT,
        AGE_REQ_NONE,
        AGE_REQ_ADULT,
        AGE_REQ_ADULT,
    }, // EQUIP_TYPE_TUNIC
    {
        AGE_REQ_NONE,
        AGE_REQ_NONE,
        AGE_REQ_ADULT,
        AGE_REQ_ADULT,
    }, // EQUIP_TYPE_BOOTS
};

u8 gItemAgeReqs[] = {
    AGE_REQ_CHILD, // ITEM_STICK
    AGE_REQ_NONE,  // ITEM_NUT
    AGE_REQ_NONE,  // ITEM_BOMB
    AGE_REQ_ADULT, // ITEM_BOW
    AGE_REQ_ADULT, // ITEM_ARROW_FIRE
    AGE_REQ_NONE,  // ITEM_DINS_FIRE
    AGE_REQ_CHILD, // ITEM_SLINGSHOT
    AGE_REQ_NONE,  // ITEM_OCARINA_FAIRY
    AGE_REQ_NONE,  // ITEM_OCARINA_TIME
    AGE_REQ_NONE,  // ITEM_BOMBCHU
    AGE_REQ_ADULT, // ITEM_HOOKSHOT
    AGE_REQ_ADULT, // ITEM_LONGSHOT
    AGE_REQ_ADULT, // ITEM_ARROW_ICE
    AGE_REQ_NONE,  // ITEM_FARORES_WIND
    AGE_REQ_CHILD, // ITEM_BOOMERANG
    AGE_REQ_NONE,  // ITEM_LENS
    AGE_REQ_CHILD, // ITEM_BEAN
    AGE_REQ_ADULT, // ITEM_HAMMER
    AGE_REQ_ADULT, // ITEM_ARROW_LIGHT
    AGE_REQ_NONE,  // ITEM_NAYRUS_LOVE
    AGE_REQ_NONE,  // ITEM_BOTTLE
    AGE_REQ_NONE,  // ITEM_POTION_RED
    AGE_REQ_NONE,  // ITEM_POTION_GREEN
    AGE_REQ_NONE,  // ITEM_POTION_BLUE
    AGE_REQ_NONE,  // ITEM_FAIRY
    AGE_REQ_NONE,  // ITEM_FISH
    AGE_REQ_NONE,  // ITEM_MILK_BOTTLE
    AGE_REQ_NONE,  // ITEM_LETTER_RUTO
    AGE_REQ_NONE,  // ITEM_BLUE_FIRE
    AGE_REQ_NONE,  // ITEM_BUG
    AGE_REQ_NONE,  // ITEM_BIG_POE
    AGE_REQ_NONE,  // ITEM_MILK_HALF
    AGE_REQ_NONE,  // ITEM_POE
    AGE_REQ_CHILD, // ITEM_WEIRD_EGG
    AGE_REQ_CHILD, // ITEM_CHICKEN
    AGE_REQ_CHILD, // ITEM_LETTER_ZELDA
    AGE_REQ_CHILD, // ITEM_MASK_KEATON
    AGE_REQ_CHILD, // ITEM_MASK_SKULL
    AGE_REQ_CHILD, // ITEM_MASK_SPOOKY
    AGE_REQ_CHILD, // ITEM_MASK_BUNNY
    AGE_REQ_CHILD, // ITEM_MASK_GORON
    AGE_REQ_CHILD, // ITEM_MASK_ZORA
    AGE_REQ_CHILD, // ITEM_MASK_GERUDO
    AGE_REQ_CHILD, // ITEM_MASK_TRUTH
    AGE_REQ_CHILD, // ITEM_SOLD_OUT
    AGE_REQ_ADULT, // ITEM_POCKET_EGG
    AGE_REQ_ADULT, // ITEM_POCKET_CUCCO
    AGE_REQ_ADULT, // ITEM_COJIRO
    AGE_REQ_ADULT, // ITEM_ODD_MUSHROOM
    AGE_REQ_ADULT, // ITEM_ODD_POTION
    AGE_REQ_ADULT, // ITEM_SAW
    AGE_REQ_ADULT, // ITEM_SWORD_BROKEN
    AGE_REQ_ADULT, // ITEM_PRESCRIPTION
    AGE_REQ_ADULT, // ITEM_FROG
    AGE_REQ_ADULT, // ITEM_EYEDROPS
    AGE_REQ_ADULT, // ITEM_CLAIM_CHECK
    AGE_REQ_ADULT, // ITEM_BOW_ARROW_FIRE
    AGE_REQ_ADULT, // ITEM_BOW_ARROW_ICE
    AGE_REQ_ADULT, // ITEM_BOW_ARROW_LIGHT
    AGE_REQ_CHILD, // ITEM_SWORD_KOKIRI
    AGE_REQ_ADULT, // ITEM_SWORD_MASTER
    AGE_REQ_ADULT, // ITEM_SWORD_BGS
    AGE_REQ_CHILD, // ITEM_SHIELD_DEKU
    AGE_REQ_NONE,  // ITEM_SHIELD_HYLIAN
    AGE_REQ_ADULT, // ITEM_SHIELD_MIRROR
    AGE_REQ_NONE,  // ITEM_TUNIC_KOKIRI
    AGE_REQ_ADULT, // ITEM_TUNIC_GORON
    AGE_REQ_ADULT, // ITEM_TUNIC_ZORA
    AGE_REQ_NONE,  // ITEM_BOOTS_KOKIRI
    AGE_REQ_ADULT, // ITEM_BOOTS_IRON
    AGE_REQ_ADULT, // ITEM_BOOTS_HOVER
    AGE_REQ_CHILD, // ITEM_BULLET_BAG_30
    AGE_REQ_CHILD, // ITEM_BULLET_BAG_40
    AGE_REQ_CHILD, // ITEM_BULLET_BAG_50
    AGE_REQ_ADULT, // ITEM_QUIVER_30
    AGE_REQ_ADULT, // ITEM_QUIVER_40
    AGE_REQ_ADULT, // ITEM_QUIVER_50
    AGE_REQ_NONE,  // ITEM_BOMB_BAG_20
    AGE_REQ_NONE,  // ITEM_BOMB_BAG_30
    AGE_REQ_NONE,  // ITEM_BOMB_BAG_40
    AGE_REQ_CHILD, // ITEM_BRACELET
    AGE_REQ_ADULT, // ITEM_GAUNTLETS_SILVER
    AGE_REQ_ADULT, // ITEM_GAUNTLETS_GOLD
    AGE_REQ_NONE,  // ITEM_SCALE_SILVER
    AGE_REQ_NONE,  // ITEM_SCALE_GOLDEN
    AGE_REQ_ADULT, // ITEM_SWORD_KNIFE
};

u8 gAreaGsFlags[] = {
    0x0F, 0x1F, 0x0F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x07, 0x07, 0x03,
    0x0F, 0x07, 0x0F, 0x0F, 0xFF, 0xFF, 0xFF, 0x1F, 0x0F, 0x03, 0x0F,
};

static void* sCursorTexs[] = {
    gPauseMenuCursorTopLeftTex,
    gPauseMenuCursorTopRightTex,
    gPauseMenuCursorBottomLeftTex,
    gPauseMenuCursorBottomRightTex,
};

static s16 sCursorColors[][3] = {
    { 255, 255, 255 },
    { 255, 255, 0 },
    { 0, 255, 50 },
};

static void* sSavePromptMessageTexs[] = {
    gPauseSavePromptENGTex,
    gPauseSavePromptGERTex,
    gPauseSavePromptFRATex,
};

static void* sSaveConfirmationTexs[] = {
    gPauseSaveConfirmationENGTex,
    gPauseSaveConfirmationGERTex,
    gPauseSaveConfirmationFRATex,
};

static void* sContinuePromptTexs[] = {
    gContinuePlayingENGTex,
    gContinuePlayingGERTex,
    gContinuePlayingFRATex,
};

static void* sPromptChoiceTexs[][2] = {
    { gPauseYesENGTex, gPauseNoENGTex },
    { gPauseYesGERTex, gPauseNoGERTex },
    { gPauseYesFRATex, gPauseNoFRATex },
};

static u8 D_808321A8_savedButtonStatus[5];
static PreRender sPlayerPreRender;
static void* sPreRenderCvg;

void KaleidoScope_SetupPlayerPreRender(PlayState* play) {
    Gfx* gfx;
    Gfx* gfxRef;
    void* fbuf;

    fbuf = play->state.gfxCtx->curFrameBuffer;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 496);

    gfxRef = POLY_OPA_DISP;
    gfx = Graph_GfxPlusOne(gfxRef);
    gSPDisplayList(WORK_DISP++, gfx);

    PreRender_SetValues(&sPlayerPreRender, PAUSE_EQUIP_PLAYER_WIDTH, PAUSE_EQUIP_PLAYER_HEIGHT, fbuf, NULL);
    PreRender_SaveFramebuffer(&sPlayerPreRender, &gfx);
    PreRender_DrawCoverage(&sPlayerPreRender, &gfx);

    gSPEndDisplayList(gfx++);
    Graph_BranchDlist(gfxRef, gfx);
    POLY_OPA_DISP = gfx;

    R_GRAPH_TASKSET00_FLAGS |= 1;

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 509);
}

void KaleidoScope_ProcessPlayerPreRender(void) {
    Sleep_Msec(50);
    PreRender_ApplyFilters(&sPlayerPreRender);
    PreRender_Destroy(&sPlayerPreRender);
}

Gfx* KaleidoScope_QuadTextureIA4(Gfx* gfx, void* texture, s16 width, s16 height, u16 point) {
    gDPLoadTextureBlock_4b(gfx++, texture, G_IM_FMT_IA, width, height, 0, G_TX_NOMIRROR | G_TX_WRAP,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(gfx++, point, point + 2, point + 3, point + 1, 0);

    return gfx;
}

Gfx* KaleidoScope_QuadTextureIA8(Gfx* gfx, void* texture, s16 width, s16 height, u16 point) {
    gDPLoadTextureBlock(gfx++, texture, G_IM_FMT_IA, G_IM_SIZ_8b, width, height, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(gfx++, point, point + 2, point + 3, point + 1, 0);

    return gfx;
}

void KaleidoScope_OverridePalIndexCI4(u8* texture, s32 size, s32 targetIndex, s32 newIndex) {
    s32 i;

    targetIndex &= 0xF;
    newIndex &= 0xF;

    if ((size == 0) || (targetIndex == newIndex) || (texture == NULL)) {
        return;
    }

    for (i = 0; i < size; i++) {
        s32 index1;
        s32 index2;

        index1 = index2 = texture[i];

        index1 = (index1 >> 4) & 0xF;
        index2 = index2 & 0xF;

        if (index1 == targetIndex) {
            index1 = newIndex;
        }

        if (index2 == targetIndex) {
            index2 = newIndex;
        }

        texture[i] = (index1 << 4) | index2;
    }
}

void KaleidoScope_MoveCursorToSpecialPos(PlayState* play, u16 specialPos) {
    PauseContext* pauseCtx = &play->pauseCtx;

    pauseCtx->cursorSpecialPos = specialPos;
    pauseCtx->pageSwitchInputTimer = 0;

    Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultReverb);
}

void KaleidoScope_DrawQuadTextureRGBA32(GraphicsContext* gfxCtx, void* texture, u16 width, u16 height, u16 point) {
    OPEN_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 748);

    gDPLoadTextureBlock(POLY_OPA_DISP++, texture, G_IM_FMT_RGBA, G_IM_SIZ_32b, width, height, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, point, point + 2, point + 3, point + 1, 0);

    CLOSE_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 758);
}

void KaleidoScope_SetDefaultCursor(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 s;
    s16 i;

    switch (pauseCtx->pageIndex) {
        case PAUSE_ITEM:
            s = pauseCtx->cursorSlot[PAUSE_ITEM];
            if (gSaveContext.inventory.items[s] == ITEM_NONE) {
                i = s + 1;
                while (true) {
                    if (gSaveContext.inventory.items[i] != ITEM_NONE) {
                        break;
                    }
                    i++;
                    if (i >= 24) {
                        i = 0;
                    }
                    if (i == s) {
                        pauseCtx->cursorItem[PAUSE_ITEM] = pauseCtx->namedItem = PAUSE_ITEM_NONE;
                        return;
                    }
                }
                pauseCtx->cursorItem[PAUSE_ITEM] = gSaveContext.inventory.items[i];
                pauseCtx->cursorSlot[PAUSE_ITEM] = i;
            }
            break;
        case PAUSE_MAP:
        case PAUSE_QUEST:
        case PAUSE_EQUIP:
            break;
    }
}

#define SWITCH_PAGE_LEFT_PT 0
#define SWITCH_PAGE_RIGHT_PT 2

void KaleidoScope_SwitchPage(PauseContext* pauseCtx, u8 pt) {
    pauseCtx->mainState = PAUSE_MAIN_STATE_SWITCHING_PAGE;
    pauseCtx->switchPageTimer = 0;

    if (!pt) { // SWITCH_PAGE_LEFT_PT
        pauseCtx->nextPageMode = (pauseCtx->pageIndex * 2) + 1;
        Audio_PlaySfxGeneral(NA_SE_SY_WIN_SCROLL_LEFT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        pauseCtx->cursorSpecialPos = PAUSE_CURSOR_PAGE_RIGHT;
    } else { // SWITCH_PAGE_RIGHT_PT
        pauseCtx->nextPageMode = pauseCtx->pageIndex * 2;
        Audio_PlaySfxGeneral(NA_SE_SY_WIN_SCROLL_RIGHT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        pauseCtx->cursorSpecialPos = PAUSE_CURSOR_PAGE_LEFT;
    }

    gSaveContext.buttonStatus[1] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + pt][1];
    gSaveContext.buttonStatus[2] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + pt][2];
    gSaveContext.buttonStatus[3] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + pt][3];
    gSaveContext.buttonStatus[4] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + pt][4];

    osSyncPrintf("kscope->kscp_pos+pt = %d\n", pauseCtx->pageIndex + pt);

    gSaveContext.unk_13EA = 0;
    Interface_ChangeAlpha(50);
}

void KaleidoScope_HandlePageToggles(PauseContext* pauseCtx, Input* input) {
    if ((pauseCtx->debugState == 0) && CHECK_BTN_ALL(input->press.button, BTN_L)) {
        pauseCtx->debugState = 1;
        return;
    }

    if (CHECK_BTN_ALL(input->press.button, BTN_R)) {
        KaleidoScope_SwitchPage(pauseCtx, SWITCH_PAGE_RIGHT_PT);
        return;
    }

    if (CHECK_BTN_ALL(input->press.button, BTN_Z)) {
        KaleidoScope_SwitchPage(pauseCtx, SWITCH_PAGE_LEFT_PT);
        return;
    }

    if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
        if (pauseCtx->stickAdjX < -30) {
            pauseCtx->pageSwitchInputTimer++;
            if ((pauseCtx->pageSwitchInputTimer >= 10) || (pauseCtx->pageSwitchInputTimer == 0)) {
                KaleidoScope_SwitchPage(pauseCtx, SWITCH_PAGE_LEFT_PT);
            }
        } else {
            pauseCtx->pageSwitchInputTimer = -1;
        }
    } else if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_RIGHT) {
        if (pauseCtx->stickAdjX > 30) {
            pauseCtx->pageSwitchInputTimer++;
            if ((pauseCtx->pageSwitchInputTimer >= 10) || (pauseCtx->pageSwitchInputTimer == 0)) {
                KaleidoScope_SwitchPage(pauseCtx, SWITCH_PAGE_RIGHT_PT);
            }
        } else {
            pauseCtx->pageSwitchInputTimer = -1;
        }
    }
}

void KaleidoScope_DrawCursor(PlayState* play, u16 pageIndex) {
    PauseContext* pauseCtx = &play->pauseCtx;
    u16 temp;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 955);

    temp = pauseCtx->mainState; // fake?

    if ((((pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) || (temp == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) &&
         (pauseCtx->state == PAUSE_STATE_MAIN)) ||
        ((pauseCtx->pageIndex == PAUSE_QUEST) &&
         ((temp < PAUSE_MAIN_STATE_3) /* PAUSE_MAIN_STATE_IDLE, PAUSE_MAIN_STATE_SWITCHING_PAGE,
                                         PAUSE_MAIN_STATE_SONG_PLAYBACK */
          || (temp == PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING) || (temp == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)))) {

        if (pauseCtx->pageIndex == pageIndex) {
            s16 i;
            s16 j;

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sCursorColors[pauseCtx->cursorColorSet >> 2][0],
                            sCursorColors[pauseCtx->cursorColorSet >> 2][1],
                            sCursorColors[pauseCtx->cursorColorSet >> 2][2], 255);
            gDPSetEnvColor(POLY_OPA_DISP++, sColor82ABRed_D_8082AB8C, sColor82ABGreen_D_8082AB90,
                           sColor82ABBlue_D_8082AB94, 255);
            gSPVertex(POLY_OPA_DISP++, pauseCtx->cursorVtx, 16, 0);

            for (i = j = 0; i < 4; i++, j += 4) {
                gDPLoadTextureBlock_4b(POLY_OPA_DISP++, sCursorTexs[i], G_IM_FMT_IA, 16, 16, 0,
                                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                       G_TX_NOLOD, G_TX_NOLOD);
                gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
            }
        }

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 985);
}

#define PAGE_BG_COLS 3
#define PAGE_BG_ROWS 5
#define PAGE_BG_QUAD_WIDTH 80
#define PAGE_BG_QUAD_HEIGHT 32
#define PAGE_BG_QUAD_TEX_WIDTH 80
#define PAGE_BG_QUAD_TEX_HEIGHT 32

// Draw 15 quads with IA8 80x32 textures
Gfx* KaleidoScope_DrawPageSections(Gfx* gfx, Vtx* vertices, void** textures) {
    s32 i;
    s32 j;

    gSPVertex(gfx++, vertices, 32, 0);

    i = 0;

    j = 0;
    while (j < 32) {
        gDPPipeSync(gfx++);
        gDPLoadTextureBlock(gfx++, textures[i], G_IM_FMT_IA, G_IM_SIZ_8b, PAGE_BG_QUAD_TEX_WIDTH,
                            PAGE_BG_QUAD_TEX_HEIGHT, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(gfx++, j, j + 2, j + 3, j + 1, 0);

        j += 4;
        i++;
    }

    gSPVertex(gfx++, vertices + 32, 28, 0);

    j = 0;
    while (j < 28) {
        gDPPipeSync(gfx++);
        gDPLoadTextureBlock(gfx++, textures[i], G_IM_FMT_IA, G_IM_SIZ_8b, PAGE_BG_QUAD_TEX_WIDTH,
                            PAGE_BG_QUAD_TEX_HEIGHT, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(gfx++, j, j + 2, j + 3, j + 1, 0);

        j += 4;
        i++;
    }

    return gfx;
}

void KaleidoScope_DrawPages(PlayState* play, GraphicsContext* gfxCtx) {
    static s16 sCursorColors_D_8082ACF4[][3] = {
        // "white" ?
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        // yellow
        { 255, 255, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 255, 255, 0 },
        // green
        { 0, 255, 50 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 255, 50 },
    };
    static s16 sCursorColorBlinkTimer_D_8082AD3C = 20;
    static s16 sCursorColorBlinkOffset_D_8082AD40 = 0;

    static s16 sStickXRepeatTimer = 0;
    static s16 sStickYRepeatTimer = 0;
    static s16 sStickXRepeatState = 0;
    static s16 sStickYRepeatState = 0;

    PauseContext* pauseCtx = &play->pauseCtx;
    s16 stepR;
    s16 stepG;
    s16 stepB;

    OPEN_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 1100);

    if ((pauseCtx->state < PAUSE_STATE_8)
        /* PAUSE_STATE_OFF, PAUSE_STATE_WAIT_LETTERBOX, PAUSE_STATE_WAIT_BG_PRERENDER, PAUSE_STATE_INIT,
           PAUSE_STATE_OPENING_1, PAUSE_STATE_OPENING_2, PAUSE_STATE_MAIN, PAUSE_STATE_SAVE_PROMPT */
        || (pauseCtx->state >= PAUSE_STATE_CLOSING)
        /* PAUSE_STATE_CLOSING, PAUSE_STATE_UNPAUSE */
    ) {
        if (pauseCtx->state != PAUSE_STATE_SAVE_PROMPT) {
            stepR = ABS(sColor82ABRed_D_8082AB8C -
                        sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][0]) /
                    sCursorColorBlinkTimer_D_8082AD3C;
            stepG = ABS(sColor82ABGreen_D_8082AB90 -
                        sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][1]) /
                    sCursorColorBlinkTimer_D_8082AD3C;
            stepB = ABS(sColor82ABBlue_D_8082AB94 -
                        sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][2]) /
                    sCursorColorBlinkTimer_D_8082AD3C;
            if (sColor82ABRed_D_8082AB8C >=
                sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][0]) {
                sColor82ABRed_D_8082AB8C -= stepR;
            } else {
                sColor82ABRed_D_8082AB8C += stepR;
            }
            if (sColor82ABGreen_D_8082AB90 >=
                sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][1]) {
                sColor82ABGreen_D_8082AB90 -= stepG;
            } else {
                sColor82ABGreen_D_8082AB90 += stepG;
            }
            if (sColor82ABBlue_D_8082AB94 >=
                sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][2]) {
                sColor82ABBlue_D_8082AB94 -= stepB;
            } else {
                sColor82ABBlue_D_8082AB94 += stepB;
            }

            sCursorColorBlinkTimer_D_8082AD3C--;
            if (sCursorColorBlinkTimer_D_8082AD3C == 0) {
                sColor82ABRed_D_8082AB8C =
                    sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][0];
                sColor82ABGreen_D_8082AB90 =
                    sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][1];
                sColor82ABBlue_D_8082AB94 =
                    sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][2];
                sCursorColorBlinkTimer_D_8082AD3C = ZREG(28 + sCursorColorBlinkOffset_D_8082AD40);
                sCursorColorBlinkOffset_D_8082AD40++;
                if (sCursorColorBlinkOffset_D_8082AD40 >= 4) {
                    sCursorColorBlinkOffset_D_8082AD40 = 0;
                }
            }

            if (pauseCtx->stickAdjX < -30) {
                if (sStickXRepeatState == -1) {
                    sStickXRepeatTimer--;
                    if (sStickXRepeatTimer < 0) {
                        sStickXRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY;
                    } else {
                        pauseCtx->stickAdjX = 0;
                    }
                } else {
                    sStickXRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY_FIRST;
                    sStickXRepeatState = -1;
                }
            } else if (pauseCtx->stickAdjX > 30) {
                if (sStickXRepeatState == 1) {
                    sStickXRepeatTimer--;
                    if (sStickXRepeatTimer < 0) {
                        sStickXRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY;
                    } else {
                        pauseCtx->stickAdjX = 0;
                    }
                } else {
                    sStickXRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY_FIRST;
                    sStickXRepeatState = 1;
                }
            } else {
                sStickXRepeatState = 0;
            }

            if (pauseCtx->stickAdjY < -30) {
                if (sStickYRepeatState == -1) {
                    sStickYRepeatTimer--;
                    if (sStickYRepeatTimer < 0) {
                        sStickYRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY;
                    } else {
                        pauseCtx->stickAdjY = 0;
                    }
                } else {
                    sStickYRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY_FIRST;
                    sStickYRepeatState = -1;
                }
            } else if (pauseCtx->stickAdjY > 30) {
                if (sStickYRepeatState == 1) {
                    sStickYRepeatTimer--;
                    if (sStickYRepeatTimer < 0) {
                        sStickYRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY;
                    } else {
                        pauseCtx->stickAdjY = 0;
                    }
                } else {
                    sStickYRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY_FIRST;
                    sStickYRepeatState = 1;
                }
            } else {
                sStickYRepeatState = 0;
            }
        }

        // draw non-active pages?

        if (pauseCtx->pageIndex) { // pageIndex != PAUSE_ITEM
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate(0.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, -(f32)R_PAUSE_OFFSET_DEPTH / 100.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(-pauseCtx->rollRotPageItem / 100.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1173),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->itemPageVtx,
                                                          sItemPageBgQuadsTexs[gSaveContext.language]);

            KaleidoScope_DrawItemSelect(play);
        }

        if (pauseCtx->pageIndex != PAUSE_EQUIP) {
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate(-(f32)R_PAUSE_OFFSET_DEPTH / 100.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, 0.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(pauseCtx->rollRotPageEquip / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(1.57f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1196),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->equipPageVtx,
                                                          sEquipPageBgQuadsTexs[gSaveContext.language]);

            KaleidoScope_DrawEquipment(play);
        }

        if (pauseCtx->pageIndex != PAUSE_QUEST) {
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate(0.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, (f32)R_PAUSE_OFFSET_DEPTH / 100.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(pauseCtx->rollRotPageQuest / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(3.14f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1220),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->questPageVtx,
                                                          sQuestPageBgQuadsTexs[gSaveContext.language]);

            KaleidoScope_DrawQuestStatus(play, gfxCtx);
        }

        if (pauseCtx->pageIndex != PAUSE_MAP) {
            gDPPipeSync(POLY_OPA_DISP++);

            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate((f32)R_PAUSE_OFFSET_DEPTH / 100.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, 0.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(-pauseCtx->rollRotPageMap / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(-1.57f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1243),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->mapPageVtx,
                                                          sMapPageBgQuadsTexs[gSaveContext.language]);

            if (sInDungeonScene) {
                KaleidoScope_DrawDungeonMap(play, gfxCtx);
                Gfx_SetupDL_42Opa(gfxCtx);

                gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

                if (CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex)) {
                    PauseMapMark_Draw(play);
                }
            } else {
                KaleidoScope_DrawWorldMap(play, gfxCtx);
            }
        }

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

        switch (pauseCtx->pageIndex) {
            case PAUSE_ITEM:
                Matrix_Translate(0.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, -(f32)R_PAUSE_OFFSET_DEPTH / 100.0f,
                                 MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateX(-pauseCtx->rollRotPageItem / 100.0f, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1281),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

                POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->itemPageVtx,
                                                              sItemPageBgQuadsTexs[gSaveContext.language]);

                KaleidoScope_DrawItemSelect(play);
                break;

            case PAUSE_MAP:
                Matrix_Translate((f32)R_PAUSE_OFFSET_DEPTH / 100.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, 0.0f,
                                 MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateZ(-pauseCtx->rollRotPageMap / 100.0f, MTXMODE_APPLY);
                Matrix_RotateY(-1.57f, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1303),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

                POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->mapPageVtx,
                                                              sMapPageBgQuadsTexs[gSaveContext.language]);

                if (sInDungeonScene) {
                    KaleidoScope_DrawDungeonMap(play, gfxCtx);
                    Gfx_SetupDL_42Opa(gfxCtx);

                    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

                    if (pauseCtx->cursorSpecialPos == 0) {
                        KaleidoScope_DrawCursor(play, PAUSE_MAP);
                    }

                    if (CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex)) {
                        PauseMapMark_Draw(play);
                    }
                } else {
                    KaleidoScope_DrawWorldMap(play, gfxCtx);
                }
                break;

            case PAUSE_QUEST:
                gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);

                Matrix_Translate(0.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, (f32)R_PAUSE_OFFSET_DEPTH / 100.0f,
                                 MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateX(pauseCtx->rollRotPageQuest / 100.0f, MTXMODE_APPLY);
                Matrix_RotateY(3.14f, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1343),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

                POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->questPageVtx,
                                                              sQuestPageBgQuadsTexs[gSaveContext.language]);

                KaleidoScope_DrawQuestStatus(play, gfxCtx);

                if (pauseCtx->cursorSpecialPos == 0) {
                    KaleidoScope_DrawCursor(play, PAUSE_QUEST);
                }
                break;

            case PAUSE_EQUIP:
                Matrix_Translate(-(f32)R_PAUSE_OFFSET_DEPTH / 100.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, 0.0f,
                                 MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateZ(pauseCtx->rollRotPageEquip / 100.0f, MTXMODE_APPLY);
                Matrix_RotateY(1.57f, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1367),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

                POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->equipPageVtx,
                                                              sEquipPageBgQuadsTexs[gSaveContext.language]);

                KaleidoScope_DrawEquipment(play);

                if (pauseCtx->cursorSpecialPos == 0) {
                    KaleidoScope_DrawCursor(play, PAUSE_EQUIP);
                }
                break;
        }
    }

    Gfx_SetupDL_42Opa(gfxCtx);

    if ((pauseCtx->state == PAUSE_STATE_SAVE_PROMPT) ||
        ((pauseCtx->state >= PAUSE_STATE_8) && (pauseCtx->state < PAUSE_STATE_CLOSING)
         /* PAUSE_STATE_8, PAUSE_STATE_9, PAUSE_STATE_10, PAUSE_STATE_11, PAUSE_STATE_12, PAUSE_STATE_13,
            PAUSE_STATE_14, PAUSE_STATE_15, PAUSE_STATE_16, PAUSE_STATE_17 */
         )) {
        KaleidoScope_UpdatePrompt(play);

        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

        if (!pauseCtx->pageIndex) { // pageIndex == PAUSE_ITEM
            pauseCtx->rollRotPageItem = pauseCtx->rollRotSavePrompt_ + 314.0f;

            Matrix_Translate(0.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, -pauseCtx->savePromptOffsetDepth_ / 10.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(-pauseCtx->rollRotSavePrompt_ / 100.0f, MTXMODE_APPLY);
        } else if (pauseCtx->pageIndex == PAUSE_MAP) {
            pauseCtx->rollRotPageMap = pauseCtx->rollRotSavePrompt_ + 314.0f;

            Matrix_Translate(pauseCtx->savePromptOffsetDepth_ / 10.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, 0.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(-pauseCtx->rollRotSavePrompt_ / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(-1.57f, MTXMODE_APPLY);
        } else if (pauseCtx->pageIndex == PAUSE_QUEST) {
            pauseCtx->rollRotPageQuest = pauseCtx->rollRotSavePrompt_ + 314.0f;

            Matrix_Translate(0.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, pauseCtx->savePromptOffsetDepth_ / 10.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(pauseCtx->rollRotSavePrompt_ / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(3.14f, MTXMODE_APPLY);
        } else {
            pauseCtx->rollRotPageEquip = pauseCtx->rollRotSavePrompt_ + 314.0f;

            Matrix_Translate(-pauseCtx->savePromptOffsetDepth_ / 10.0f, (f32)R_PAUSE_OFFSET_VERTICAL / 100.0f, 0.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(pauseCtx->rollRotSavePrompt_ / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(1.57f, MTXMODE_APPLY);
        }

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1424),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        if (((pauseCtx->state >= PAUSE_STATE_8) && (pauseCtx->state < PAUSE_STATE_CLOSING)
             /* PAUSE_STATE_8, PAUSE_STATE_9, PAUSE_STATE_10, PAUSE_STATE_11, PAUSE_STATE_12, PAUSE_STATE_13,
                PAUSE_STATE_14, PAUSE_STATE_15, PAUSE_STATE_16, PAUSE_STATE_17 */
             )) {
            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->saveVtx, sGameOverTexs);
        } else { // PAUSE_STATE_SAVE_PROMPT
            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->saveVtx,
                                                          sSavePromptBgQuadsTexs[gSaveContext.language]);
        }

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->saveVtx[60], 32, 0);

        if (((pauseCtx->state == PAUSE_STATE_SAVE_PROMPT) &&
             (pauseCtx->savePromptSubState < PAUSE_SAVE_PROMPT_STATE_SAVED)
             /* PAUSE_SAVE_PROMPT_STATE_APPEARING, PAUSE_SAVE_PROMPT_STATE_WAIT_CHOICE, PAUSE_SAVE_PROMPT_STATE_CLOSING,
                PAUSE_SAVE_PROMPT_STATE_RETURN_TO_MENU */
             ) ||
            (pauseCtx->state == PAUSE_STATE_14)) {

            POLY_OPA_DISP =
                KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sSavePromptMessageTexs[gSaveContext.language], 152, 16, 0);

            gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0,
                              0, PRIMITIVE, 0);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 100, 255, 100, R_KALEIDO_PROMPT_CURSOR_ALPHA);

            if (pauseCtx->promptChoice == 0) {
                gSPDisplayList(POLY_OPA_DISP++, gPromptCursorLeftDL);
            } else {
                gSPDisplayList(POLY_OPA_DISP++, gPromptCursorRightDL);
            }

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

            POLY_OPA_DISP =
                KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][0], 48, 16, 12);

            POLY_OPA_DISP =
                KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][1], 48, 16, 16);
        } else if ((pauseCtx->state != PAUSE_STATE_SAVE_PROMPT) ||
                   (pauseCtx->savePromptSubState < PAUSE_SAVE_PROMPT_STATE_SAVED
                    /* PAUSE_SAVE_PROMPT_STATE_APPEARING, PAUSE_SAVE_PROMPT_STATE_WAIT_CHOICE,
                       PAUSE_SAVE_PROMPT_STATE_CLOSING, PAUSE_SAVE_PROMPT_STATE_RETURN_TO_MENU */
                    )) {

            if ((pauseCtx->state != PAUSE_STATE_15) &&
                ((pauseCtx->state == PAUSE_STATE_16) || (pauseCtx->state == PAUSE_STATE_17))) {

                POLY_OPA_DISP =
                    KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sContinuePromptTexs[gSaveContext.language], 152, 16, 0);

                gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0,
                                  TEXEL0, 0, PRIMITIVE, 0);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 100, 255, 100, R_KALEIDO_PROMPT_CURSOR_ALPHA);

                if (pauseCtx->promptChoice == 0) {
                    gSPDisplayList(POLY_OPA_DISP++, gPromptCursorLeftDL);
                } else {
                    gSPDisplayList(POLY_OPA_DISP++, gPromptCursorRightDL);
                }

                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

                POLY_OPA_DISP =
                    KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][0], 48, 16, 12);

                POLY_OPA_DISP =
                    KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][1], 48, 16, 16);
            }
        }

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        if ((pauseCtx->state != PAUSE_STATE_16) && (pauseCtx->state != PAUSE_STATE_17)) {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 0, pauseCtx->alpha);
            gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 1577);
}

void KaleidoScope_DrawInfoPanel(PlayState* play) {
    static void* D_8082AD54_toEquipTextTextures_[3] = {
        gPauseToEquipENGTex,
        gPauseToEquipGERTex,
        gPauseToEquipFRATex,
    };
    static void* D_8082AD60_toDecideTextTextures_[3] = {
        gPauseToDecideENGTex,
        gPauseToDecideGERTex,
        gPauseToDecideFRATex,
    };
    static void* D_8082AD6C_toPlayMelodyTextTextures_[3] = {
        gPauseToPlayMelodyENGTex,
        gPauseToPlayMelodyGERTex,
        gPauseToPlayMelodyFRATex,
    };
    static void* D_8082AD78_scrollLeftLabels_[][3] = {
        { gPauseToEquipmentENGTex, gPauseToEquipmentGERTex, gPauseToEquipmentFRATex },
        { gPauseToSelectItemENGTex, gPauseToSelectItemGERTex, gPauseToSelectItemFRATex },
        { gPauseToMapENGTex, gPauseToMapGERTex, gPauseToMapFRATex },
        { gPauseToQuestStatusENGTex, gPauseToQuestStatusGERTex, gPauseToQuestStatusFRATex },
    };
    static void* D_8082ADA8_scrollRightLabels_[][3] = {
        { gPauseToMapENGTex, gPauseToMapGERTex, gPauseToMapFRATex },
        { gPauseToQuestStatusENGTex, gPauseToQuestStatusGERTex, gPauseToQuestStatusFRATex },
        { gPauseToEquipmentENGTex, gPauseToEquipmentGERTex, gPauseToEquipmentFRATex },
        { gPauseToSelectItemENGTex, gPauseToSelectItemGERTex, gPauseToSelectItemFRATex },
    };
    static u16 D_8082ADD8_toEquipTextWidth_[3] = { 56, 88, 80 };
    static u16 D_8082ADE0_toDecideTextWidth_[3] = { 64, 88, 72 };
    static u16 D_8082ADE8_toPlayMelodyTextWidth_[3] = { 80, 104, 112 };
    static s16 sCursorLeftRightSelectedPrimColors[][4] = {
        { 180, 210, 255, 220 },
        { 100, 100, 150, 220 },
    };
    static s16 sCursorLeftRightSelectedPrimTimer = 20;
    static s16 sCursorLeftRightSelectedPrimState = 0;
    static s16 D_8082AE08[] = {
        10, 16, 16, 17, 12, 13, 18, 17, 17, 19, 13, 21, 20, 21, 14, 15, 15, 15, 11, 14,
    };
    static s16 D_8082AE30[] = {
        21, 20, 19, 18, 11, 14, 10, 15, 16, 13, 12, 17,
    };
    static s16 sCursorLeftRightSelectedPrimRed;
    static s16 sCursorLeftRightSelectedPrimGreen;
    static s16 sCursorLeftRightSelectedPrimBlue;
    static s16 sCursorLeftRightSelectedPrimAlpha;

    PauseContext* pauseCtx = &play->pauseCtx;
    s16 stepR;
    s16 stepG;
    s16 stepB;
    s16 stepA;
    s16 y;
    s16 i;
    s16 j;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 1676);

    stepR = ABS(sCursorLeftRightSelectedPrimRed -
                sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][0]) /
            sCursorLeftRightSelectedPrimTimer;
    stepG = ABS(sCursorLeftRightSelectedPrimGreen -
                sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][1]) /
            sCursorLeftRightSelectedPrimTimer;
    stepB = ABS(sCursorLeftRightSelectedPrimBlue -
                sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][2]) /
            sCursorLeftRightSelectedPrimTimer;
    stepA = ABS(sCursorLeftRightSelectedPrimAlpha -
                sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][3]) /
            sCursorLeftRightSelectedPrimTimer;
    if (sCursorLeftRightSelectedPrimRed >= sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][0]) {
        sCursorLeftRightSelectedPrimRed -= stepR;
    } else {
        sCursorLeftRightSelectedPrimRed += stepR;
    }
    if (sCursorLeftRightSelectedPrimGreen >= sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][1]) {
        sCursorLeftRightSelectedPrimGreen -= stepG;
    } else {
        sCursorLeftRightSelectedPrimGreen += stepG;
    }
    if (sCursorLeftRightSelectedPrimBlue >= sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][2]) {
        sCursorLeftRightSelectedPrimBlue -= stepB;
    } else {
        sCursorLeftRightSelectedPrimBlue += stepB;
    }
    if (sCursorLeftRightSelectedPrimAlpha >= sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][3]) {
        sCursorLeftRightSelectedPrimAlpha -= stepA;
    } else {
        sCursorLeftRightSelectedPrimAlpha += stepA;
    }

    sCursorLeftRightSelectedPrimTimer--;
    if (sCursorLeftRightSelectedPrimTimer == 0) {
        sCursorLeftRightSelectedPrimRed = sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][0];
        sCursorLeftRightSelectedPrimGreen = sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][1];
        sCursorLeftRightSelectedPrimBlue = sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][2];
        sCursorLeftRightSelectedPrimAlpha = sCursorLeftRightSelectedPrimColors[sCursorLeftRightSelectedPrimState][3];
        sCursorLeftRightSelectedPrimTimer = R_PAUSE_CURSOR_L_R_SELECTED_PRIM_TIMER;
        sCursorLeftRightSelectedPrimState ^= 1;
    }

    y = pauseCtx->infoPanelOffsetY - 76;
    for (j = 0, i = 0; i < 7; i++, j += 4) {
        pauseCtx->infoPanelVtx[j + 0].v.ob[0] = pauseCtx->infoPanelVtx[j + 2].v.ob[0] = -72;

        pauseCtx->infoPanelVtx[j + 1].v.ob[0] = pauseCtx->infoPanelVtx[j + 3].v.ob[0] = 0;

        pauseCtx->infoPanelVtx[j + 0].v.ob[1] = pauseCtx->infoPanelVtx[j + 1].v.ob[1] = y;

        pauseCtx->infoPanelVtx[j + 2].v.ob[1] = pauseCtx->infoPanelVtx[j + 3].v.ob[1] = y - 24;

        pauseCtx->infoPanelVtx[j + 0].v.ob[2] = pauseCtx->infoPanelVtx[j + 1].v.ob[2] =
            pauseCtx->infoPanelVtx[j + 2].v.ob[2] = pauseCtx->infoPanelVtx[j + 3].v.ob[2] = 0;

        pauseCtx->infoPanelVtx[j + 0].v.flag = pauseCtx->infoPanelVtx[j + 1].v.flag =
            pauseCtx->infoPanelVtx[j + 2].v.flag = pauseCtx->infoPanelVtx[j + 3].v.flag = 0;

        pauseCtx->infoPanelVtx[j + 0].v.tc[0] = pauseCtx->infoPanelVtx[j + 0].v.tc[1] =
            pauseCtx->infoPanelVtx[j + 1].v.tc[1] = pauseCtx->infoPanelVtx[j + 2].v.tc[0] = 0;

        pauseCtx->infoPanelVtx[j + 1].v.tc[0] = pauseCtx->infoPanelVtx[j + 3].v.tc[0] = 72 * (1 << 5);

        pauseCtx->infoPanelVtx[j + 2].v.tc[1] = pauseCtx->infoPanelVtx[j + 3].v.tc[1] = 24 * (1 << 5);

        pauseCtx->infoPanelVtx[j + 0].v.cn[0] = pauseCtx->infoPanelVtx[j + 2].v.cn[0] =
            pauseCtx->infoPanelVtx[j + 0].v.cn[1] = pauseCtx->infoPanelVtx[j + 2].v.cn[1] =
                pauseCtx->infoPanelVtx[j + 0].v.cn[2] = pauseCtx->infoPanelVtx[j + 2].v.cn[2] =
                    pauseCtx->infoPanelVtx[j + 1].v.cn[0] = pauseCtx->infoPanelVtx[j + 3].v.cn[0] =
                        pauseCtx->infoPanelVtx[j + 1].v.cn[1] = pauseCtx->infoPanelVtx[j + 3].v.cn[1] =
                            pauseCtx->infoPanelVtx[j + 1].v.cn[2] = pauseCtx->infoPanelVtx[j + 3].v.cn[2] = 200;

        pauseCtx->infoPanelVtx[j + 0].v.cn[3] = pauseCtx->infoPanelVtx[j + 2].v.cn[3] =
            pauseCtx->infoPanelVtx[j + 1].v.cn[3] = pauseCtx->infoPanelVtx[j + 3].v.cn[3] = pauseCtx->alpha;
    }

    pauseCtx->infoPanelVtx[4].v.ob[0] = pauseCtx->infoPanelVtx[6].v.ob[0] = pauseCtx->infoPanelVtx[0].v.ob[0] + 72;

    pauseCtx->infoPanelVtx[5].v.ob[0] = pauseCtx->infoPanelVtx[7].v.ob[0] = pauseCtx->infoPanelVtx[4].v.ob[0] + 72;

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE)) {
        pauseCtx->infoPanelVtx[8].v.ob[0] = pauseCtx->infoPanelVtx[10].v.ob[0] = R_PAUSE_CURSOR_LEFT_X;

        pauseCtx->infoPanelVtx[9].v.ob[0] = pauseCtx->infoPanelVtx[11].v.ob[0] = pauseCtx->infoPanelVtx[8].v.ob[0] + 24;

        pauseCtx->infoPanelVtx[8].v.ob[1] = pauseCtx->infoPanelVtx[9].v.ob[1] = R_PAUSE_CURSOR_LEFT_RIGHT_Y;

        pauseCtx->infoPanelVtx[10].v.ob[1] = pauseCtx->infoPanelVtx[11].v.ob[1] =
            pauseCtx->infoPanelVtx[8].v.ob[1] - 32;
    } else {
        pauseCtx->infoPanelVtx[8].v.ob[0] = pauseCtx->infoPanelVtx[10].v.ob[0] = R_PAUSE_CURSOR_LEFT_X + 3;

        pauseCtx->infoPanelVtx[9].v.ob[0] = pauseCtx->infoPanelVtx[11].v.ob[0] = pauseCtx->infoPanelVtx[8].v.ob[0] + 18;

        pauseCtx->infoPanelVtx[8].v.ob[1] = pauseCtx->infoPanelVtx[9].v.ob[1] = R_PAUSE_CURSOR_LEFT_RIGHT_Y - 3;

        pauseCtx->infoPanelVtx[10].v.ob[1] = pauseCtx->infoPanelVtx[11].v.ob[1] =
            pauseCtx->infoPanelVtx[8].v.ob[1] - 26;
    }

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_RIGHT) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE)) {
        pauseCtx->infoPanelVtx[12].v.ob[0] = pauseCtx->infoPanelVtx[14].v.ob[0] = R_PAUSE_CURSOR_RIGHT_X;

        pauseCtx->infoPanelVtx[13].v.ob[0] = pauseCtx->infoPanelVtx[15].v.ob[0] =
            pauseCtx->infoPanelVtx[12].v.ob[0] + 24;

        pauseCtx->infoPanelVtx[12].v.ob[1] = pauseCtx->infoPanelVtx[13].v.ob[1] = R_PAUSE_CURSOR_LEFT_RIGHT_Y;

        pauseCtx->infoPanelVtx[14].v.ob[1] = pauseCtx->infoPanelVtx[15].v.ob[1] =
            pauseCtx->infoPanelVtx[12].v.ob[1] - 32;
    } else {
        pauseCtx->infoPanelVtx[12].v.ob[0] = pauseCtx->infoPanelVtx[14].v.ob[0] = R_PAUSE_CURSOR_RIGHT_X + 3;

        pauseCtx->infoPanelVtx[13].v.ob[0] = pauseCtx->infoPanelVtx[15].v.ob[0] =
            pauseCtx->infoPanelVtx[12].v.ob[0] + 18;

        pauseCtx->infoPanelVtx[12].v.ob[1] = pauseCtx->infoPanelVtx[13].v.ob[1] = R_PAUSE_CURSOR_LEFT_RIGHT_Y - 3;

        pauseCtx->infoPanelVtx[14].v.ob[1] = pauseCtx->infoPanelVtx[15].v.ob[1] =
            pauseCtx->infoPanelVtx[12].v.ob[1] - 26;
    }

    pauseCtx->infoPanelVtx[9].v.tc[0] = pauseCtx->infoPanelVtx[11].v.tc[0] = pauseCtx->infoPanelVtx[13].v.tc[0] =
        pauseCtx->infoPanelVtx[15].v.tc[0] = 24 * (1 << 5);

    pauseCtx->infoPanelVtx[10].v.tc[1] = pauseCtx->infoPanelVtx[11].v.tc[1] = pauseCtx->infoPanelVtx[14].v.tc[1] =
        pauseCtx->infoPanelVtx[15].v.tc[1] = 32 * (1 << 5);

    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

    Matrix_Translate(0.0f, 0.0f, -144.0f, MTXMODE_NEW);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 1755),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 90, 100, 130, 255);
    gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[0], 16, 0);

    gSPDisplayList(POLY_OPA_DISP++, gItemNamePanelDL);

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE)) {
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sCursorLeftRightSelectedPrimRed, sCursorLeftRightSelectedPrimGreen,
                        sCursorLeftRightSelectedPrimBlue, sCursorLeftRightSelectedPrimAlpha);
    }

    gSPDisplayList(POLY_OPA_DISP++, gLButtonIconDL);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 180, 210, 255, 220);

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_RIGHT) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE)) {
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sCursorLeftRightSelectedPrimRed, sCursorLeftRightSelectedPrimGreen,
                        sCursorLeftRightSelectedPrimBlue, sCursorLeftRightSelectedPrimAlpha);
    }

    gSPDisplayList(POLY_OPA_DISP++, gRButtonIconDL);

    if (pauseCtx->cursorSpecialPos != 0) {
        j = (pauseCtx->cursorSpecialPos * 4) - 32;
        pauseCtx->cursorVtx[0].v.ob[0] = pauseCtx->infoPanelVtx[j].v.ob[0];
        pauseCtx->cursorVtx[0].v.ob[1] = pauseCtx->infoPanelVtx[j].v.ob[1];
        KaleidoScope_DrawCursor(play, pauseCtx->pageIndex);
    }

    y = pauseCtx->infoPanelOffsetY - 80;
    pauseCtx->infoPanelVtx[16].v.ob[1] = pauseCtx->infoPanelVtx[17].v.ob[1] = y;

    pauseCtx->infoPanelVtx[18].v.ob[1] = pauseCtx->infoPanelVtx[19].v.ob[1] = pauseCtx->infoPanelVtx[16].v.ob[1] - 16;

    pauseCtx->infoPanelVtx[18].v.tc[1] = pauseCtx->infoPanelVtx[19].v.tc[1] = 16 * (1 << 5);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetEnvColor(POLY_OPA_DISP++, 20, 30, 40, 0);

    if ((pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->namedItem != PAUSE_ITEM_NONE) &&
        (pauseCtx->nameDisplayTimer < R_PAUSE_NAME_DISPLAY_TIMER_THRESHOLD_) &&
        (!pauseCtx->mainState /* PAUSE_MAIN_STATE_IDLE */ || (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PLAYBACK) ||
         ((pauseCtx->mainState >= PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_INIT) &&
          (pauseCtx->mainState <= PAUSE_MAIN_STATE_7)
          /* PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_INIT, PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING,
             PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_DONE, PAUSE_MAIN_STATE_7 */
          ) ||
         (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) &&
        (pauseCtx->cursorSpecialPos == 0)) {

        if (!pauseCtx->mainState /* PAUSE_MAIN_STATE_IDLE */ ||
            (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PLAYBACK) ||
            ((pauseCtx->mainState >= PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_INIT) &&
             (pauseCtx->mainState <= PAUSE_MAIN_STATE_7)
             /* PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_INIT, PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING,
                PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_DONE, PAUSE_MAIN_STATE_7 */
             ) ||
            (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) {

            pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] = -63;

            pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                pauseCtx->infoPanelVtx[16].v.ob[0] + 128;

            pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 128 * (1 << 5);

            gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[16], 4, 0);

            if (pauseCtx->nameColorSet == 1) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 70, 70, 70, 255);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
            }

            POLY_OPA_DISP = KaleidoScope_QuadTextureIA4(POLY_OPA_DISP, pauseCtx->nameSegment, 128, 16, 0);
        }

        if (pauseCtx->pageIndex == PAUSE_MAP) {
            if (YREG(7) != 0) {
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("キンスタ数(%d) Get_KIN_STA=%x (%x)  (%x)\n", YREG(6), GET_GS_FLAGS(YREG(6)),
                             gAreaGsFlags[YREG(6)], gSaveContext.gsFlags[YREG(6) >> 2]);
                osSyncPrintf(VT_RST);

                YREG(7) = 0;
                SET_GS_FLAGS(D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]],
                             gAreaGsFlags[D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]]]);
            }
        }

        if ((pauseCtx->pageIndex == PAUSE_MAP) && !sInDungeonScene) {
            if (GET_GS_FLAGS(D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]]) ==
                gAreaGsFlags[D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]]]) {

                pauseCtx->infoPanelVtx[24].v.ob[0] = pauseCtx->infoPanelVtx[26].v.ob[0] = -74;

                pauseCtx->infoPanelVtx[25].v.ob[0] = pauseCtx->infoPanelVtx[27].v.ob[0] =
                    pauseCtx->infoPanelVtx[24].v.ob[0] + 19;

                pauseCtx->infoPanelVtx[24].v.ob[1] = pauseCtx->infoPanelVtx[25].v.ob[1] =
                    pauseCtx->infoPanelVtx[24].v.ob[1] - 2;

                pauseCtx->infoPanelVtx[26].v.ob[1] = pauseCtx->infoPanelVtx[27].v.ob[1] =
                    pauseCtx->infoPanelVtx[24].v.ob[1] - 19;

                pauseCtx->infoPanelVtx[25].v.tc[0] = pauseCtx->infoPanelVtx[27].v.tc[0] = 24 * (1 << 5);

                gDPPipeSync(POLY_OPA_DISP++);
                gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[24], 4, 0);

                gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                                  PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
                gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

                KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, gGoldSkulltulaIconTex, 24, 24, 0);
            }
        }
    } else if ((pauseCtx->mainState < PAUSE_MAIN_STATE_3) /* PAUSE_MAIN_STATE_IDLE, PAUSE_MAIN_STATE_SWITCHING_PAGE,
                                                                PAUSE_MAIN_STATE_SONG_PLAYBACK */
               || (pauseCtx->mainState == PAUSE_MAIN_STATE_7) ||
               (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) {
        pauseCtx->infoPanelVtx[20].v.ob[1] = pauseCtx->infoPanelVtx[21].v.ob[1] = y;

        pauseCtx->infoPanelVtx[22].v.ob[1] = pauseCtx->infoPanelVtx[23].v.ob[1] =
            pauseCtx->infoPanelVtx[20].v.ob[1] - 16;

        pauseCtx->infoPanelVtx[22].v.tc[1] = pauseCtx->infoPanelVtx[23].v.tc[1] = 16 * (1 << 5);

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[16], 8, 0);

        if (pauseCtx->state == PAUSE_STATE_SAVE_PROMPT) {
            pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] = WREG(61 + gSaveContext.language);

            pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                pauseCtx->infoPanelVtx[16].v.ob[0] + 24;

            pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                pauseCtx->infoPanelVtx[16].v.ob[0] + WREG(52 + gSaveContext.language);

            pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADE0_toDecideTextWidth_[gSaveContext.language];

            pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 24 * (1 << 5);

            pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] =
                D_8082ADE0_toDecideTextWidth_[gSaveContext.language] << 5;

            gSPDisplayList(POLY_OPA_DISP++, gAButtonIconDL);

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

            POLY_OPA_DISP =
                KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_8082AD60_toDecideTextTextures_[gSaveContext.language],
                                            D_8082ADE0_toDecideTextWidth_[gSaveContext.language], 16, 4);
        } else if (pauseCtx->cursorSpecialPos != 0) {
            if ((pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE)) {
                pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] = -63;

                pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + 128;

                pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 128 * (1 << 5);

                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 200, 0, 255);

                if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
                    POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(
                        POLY_OPA_DISP, D_8082AD78_scrollLeftLabels_[pauseCtx->pageIndex][gSaveContext.language], 128,
                        16, 0);
                } else {
                    POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(
                        POLY_OPA_DISP, D_8082ADA8_scrollRightLabels_[pauseCtx->pageIndex][gSaveContext.language], 128,
                        16, 0);
                }
            }
        } else {
            if (!pauseCtx->pageIndex) { // pageIndex == PAUSE_ITEM
                pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] =
                    WREG(49 + gSaveContext.language);

                pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + 48;

                pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + WREG(58 + gSaveContext.language);

                pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                    pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADD8_toEquipTextWidth_[gSaveContext.language];

                pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 48 * (1 << 5);

                pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] =
                    D_8082ADD8_toEquipTextWidth_[gSaveContext.language] << 5;

                gSPDisplayList(POLY_OPA_DISP++, gCButtonIconsDL);

                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

                POLY_OPA_DISP =
                    KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_8082AD54_toEquipTextTextures_[gSaveContext.language],
                                                D_8082ADD8_toEquipTextWidth_[gSaveContext.language], 16, 4);
            } else if ((pauseCtx->pageIndex == PAUSE_MAP) && sInDungeonScene) {

            } else if ((pauseCtx->pageIndex == PAUSE_QUEST) &&
                       (pauseCtx->cursorSlot[PAUSE_QUEST] >= QUEST_SONG_MINUET) &&
                       (pauseCtx->cursorSlot[PAUSE_QUEST] < QUEST_KOKIRI_EMERALD)) {
                if (pauseCtx->namedItem != PAUSE_ITEM_NONE) {
                    // The cursor is on a learned song

                    pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] =
                        WREG(55 + gSaveContext.language);

                    pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                        pauseCtx->infoPanelVtx[16].v.ob[0] + 24;

                    pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                        pauseCtx->infoPanelVtx[16].v.ob[0] + WREG(52 + gSaveContext.language);

                    if (gSaveContext.language == LANGUAGE_GER) {
                        pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                            pauseCtx->infoPanelVtx[16].v.ob[0] - 99;
                    }

                    pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                        pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADE8_toPlayMelodyTextWidth_[gSaveContext.language];

                    pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 24 * (1 << 5);

                    pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] =
                        D_8082ADE8_toPlayMelodyTextWidth_[gSaveContext.language] << 5;

                    gSPDisplayList(POLY_OPA_DISP++, gAButtonIconDL);

                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

                    POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(
                        POLY_OPA_DISP, D_8082AD6C_toPlayMelodyTextTextures_[gSaveContext.language],
                        D_8082ADE8_toPlayMelodyTextWidth_[gSaveContext.language], 16, 4);
                }
            } else if (pauseCtx->pageIndex == PAUSE_EQUIP) {
                pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] =
                    WREG(64 + gSaveContext.language);

                pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + 24;

                pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + WREG(52 + gSaveContext.language);

                pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                    pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADD8_toEquipTextWidth_[gSaveContext.language];

                pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 24 * (1 << 5);

                pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] =
                    D_8082ADD8_toEquipTextWidth_[gSaveContext.language] << 5;

                gSPDisplayList(POLY_OPA_DISP++, gAButtonIconDL);

                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

                POLY_OPA_DISP =
                    KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_8082AD54_toEquipTextTextures_[gSaveContext.language],
                                                D_8082ADD8_toEquipTextWidth_[gSaveContext.language], 16, 4);
            }
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 2032);
}

void KaleidoScope_UpdateNamePanel(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    u16 texIndex;

    if ((pauseCtx->namedItem != pauseCtx->cursorItem[pauseCtx->pageIndex]) ||
        ((pauseCtx->pageIndex == PAUSE_MAP) && (pauseCtx->cursorSpecialPos != 0))) {

        pauseCtx->namedItem = pauseCtx->cursorItem[pauseCtx->pageIndex];
        texIndex = pauseCtx->namedItem;

        osCreateMesgQueue(&pauseCtx->loadQueue, &pauseCtx->loadMsg, 1);

        if (pauseCtx->namedItem != PAUSE_ITEM_NONE) {
            if ((pauseCtx->pageIndex == PAUSE_MAP) && !sInDungeonScene) {
                if (gSaveContext.language) { // != LANGUAGE_ENG
                    texIndex += 12;
                }
                if (gSaveContext.language == LANGUAGE_FRA) {
                    texIndex += 12;
                }

                DmaMgr_SendRequest1(pauseCtx->nameSegment,
                                    (uintptr_t)_map_name_staticSegmentRomStart + (texIndex * 0x400), 0x400,
                                    "../z_kaleido_scope_PAL.c", 2093);
            } else {
                osSyncPrintf("zoom_name=%d\n", pauseCtx->namedItem);

                if (gSaveContext.language) { // != LANGUAGE_ENG
                    texIndex += 123;
                }
                if (gSaveContext.language == LANGUAGE_FRA) {
                    texIndex += 123;
                }

                osSyncPrintf("J_N=%d  point=%d\n", gSaveContext.language, texIndex);

                DmaMgr_SendRequest1(pauseCtx->nameSegment,
                                    (uintptr_t)_item_name_staticSegmentRomStart + (texIndex * 0x400), 0x400,
                                    "../z_kaleido_scope_PAL.c", 2120);
            }

            pauseCtx->nameDisplayTimer = 0;
        }
    } else if (pauseCtx->nameColorSet == 0) {
        if (((pauseCtx->pageIndex == PAUSE_QUEST) && (pauseCtx->cursorSlot[PAUSE_QUEST] >= QUEST_SONG_MINUET) &&
             (pauseCtx->cursorSlot[PAUSE_QUEST] < QUEST_KOKIRI_EMERALD) &&
             (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) ||
            (pauseCtx->pageIndex == PAUSE_ITEM) ||
            ((pauseCtx->pageIndex == PAUSE_EQUIP) && (pauseCtx->cursorX[PAUSE_EQUIP] != 0))) {
            if (pauseCtx->namedItem != ITEM_SOLD_OUT) {
                pauseCtx->nameDisplayTimer++;
                if (pauseCtx->nameDisplayTimer > R_PAUSE_NAME_DISPLAY_TIMER_MAX_) {
                    pauseCtx->nameDisplayTimer = 0;
                }
            }
        } else {
            pauseCtx->nameDisplayTimer = 0;
        }
    } else {
        pauseCtx->nameDisplayTimer = 0;
    }
}

void KaleidoScope_UpdateSwitchPage(PlayState* play, Input* input) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s32 frameAdvanceFreeze = false;
    s32 nextPageMode;

    if (R_PAUSE_SWITCH_PAGE_FRAME_ADVANCE_ON && !CHECK_BTN_ALL(input->press.button, BTN_L)) {
        frameAdvanceFreeze = true;
    }

    if (!frameAdvanceFreeze) {
        nextPageMode = pauseCtx->nextPageMode;
        pauseCtx->eye.x += sPageSwitchEyeDx[nextPageMode];
        pauseCtx->eye.z += sPageSwitchEyeDz[nextPageMode];

        if (pauseCtx->switchPageTimer < 32) {
            R_PAUSE_CURSOR_LEFT_X -= R_PAUSE_CURSOR_LEFT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
            R_PAUSE_CURSOR_RIGHT_X -= R_PAUSE_CURSOR_RIGHT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
        } else {
            R_PAUSE_CURSOR_LEFT_X += R_PAUSE_CURSOR_LEFT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
            R_PAUSE_CURSOR_RIGHT_X += R_PAUSE_CURSOR_RIGHT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
        }

        pauseCtx->switchPageTimer += 4;

        if (pauseCtx->switchPageTimer == (4 * 16)) {
            pauseCtx->switchPageTimer = 0;
            pauseCtx->pageIndex = sPageSwitchNextPageIndex[pauseCtx->nextPageMode];
            pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
        }
    }
}

void KaleidoScope_SetView(PauseContext* pauseCtx, f32 eyeX, f32 eyeY, f32 eyeZ) {
    Vec3f eye;
    Vec3f lookAt;
    Vec3f up;

    eye.x = eyeX;
    eye.y = eyeY;
    eye.z = eyeZ;
    lookAt.x = lookAt.y = lookAt.z = 0.0f;
    up.x = up.z = 0.0f;
    up.y = 1.0f;

    View_LookAt(&pauseCtx->view, &eye, &lookAt, &up);
    View_Apply(&pauseCtx->view,
               VIEW_ALL | VIEW_FORCE_VIEWING | VIEW_FORCE_VIEWPORT | VIEW_FORCE_PROJECTION_PERSPECTIVE);
}

static u8 D_8082AE48_red[][4] = {
    { 10, 70, 70, 10 },   // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    { 10, 90, 90, 10 },   // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    { 80, 140, 140, 80 }, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    { 80, 120, 120, 80 }, // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    { 80, 140, 140, 80 }, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    { 50, 110, 110, 50 }, // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};
static u8 D_8082AE60_green[][4] = {
    { 50, 100, 100, 50 }, // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    { 50, 100, 100, 50 }, // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    { 40, 60, 60, 40 },   // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    { 80, 120, 120, 80 }, // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    { 40, 60, 60, 40 },   // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    { 50, 110, 110, 50 }, // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};
static u8 D_8082AE78_blue[][4] = {
    { 80, 130, 130, 80 }, // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    { 40, 60, 60, 40 },   // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    { 30, 60, 60, 30 },   // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    { 50, 70, 70, 50 },   // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    { 30, 60, 60, 30 },   // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    { 50, 110, 110, 50 }, // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};

#define FUNC_80823A0C_ARG3_ITEM_PAGE_VTX 0
#define FUNC_80823A0C_ARG3_EQUIP_PAGE_VTX 0
#define FUNC_80823A0C_ARG3_MAP_PAGE_VTX_IN_DUNGEON_SCENE 17
#define FUNC_80823A0C_ARG3_QUEST_PAGE_VTX 0
#define FUNC_80823A0C_ARG3_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE 32
#define FUNC_80823A0C_ARG3_SAVE_VTX 5

// +1 because C doesn't allow 0-length arrays
static s16 D_8082AE90_x_ITEM_PAGE_VTX_[FUNC_80823A0C_ARG3_ITEM_PAGE_VTX + 1] = { 0 };
static s16 D_8082AE94_x_EQUIP_PAGE_VTX_[FUNC_80823A0C_ARG3_EQUIP_PAGE_VTX + 1] = { 0 };
static s16 D_8082AE98_x_MAP_PAGE_VTX_IN_DUNGEON_SCENE_[FUNC_80823A0C_ARG3_MAP_PAGE_VTX_IN_DUNGEON_SCENE] = {
    0xFFDC, 0x000C, 0xFFEE, 0x0046, 0x0046, 0x0046, 0xFFA8, 0xFFA8, 0xFFA8,
    0xFFA8, 0xFFA8, 0xFFA8, 0xFFA8, 0xFFA8, 0xFF96, 0xFFC2, 0xFFD8,
};
static s16 D_8082AEBC_x_QUEST_PAGE_VTX_[FUNC_80823A0C_ARG3_QUEST_PAGE_VTX + 1] = { 0 };
static s16 D_8082AEC0_x_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_[FUNC_80823A0C_ARG3_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE] = {
    0x002F, 0xFFCF, 0xFFEF, 0xFFF1, 0xFFF7, 0x0018, 0x002B, 0x000E, 0x0009, 0x0026, 0x0052,
    0x0047, 0xFFB4, 0xFFA9, 0xFF94, 0xFFCA, 0xFFA3, 0xFFBD, 0xFFC8, 0xFFDF, 0xFFF6, 0x0001,
    0x000E, 0x0018, 0x0023, 0x003A, 0x004A, 0x0059, 0x0000, 0xFFC6, 0x0013, 0x001C,
};
static s16 D_8082AF00_x_SAVE_VTX_[FUNC_80823A0C_ARG3_SAVE_VTX] = {
    0xFFB4, 0xFFC6, 0x000A, 0xFFC6, 0x000A,
};
static s16 D_8082AF0C_width_ITEM_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF10_width_EQUIP_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF14_width_MAP_PAGE_VTX_IN_DUNGEON_SCENE_[] = {
    0x0030, 0x0030, 0x0060, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018,
    0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0010, 0x0010, 0x0018, 0x0000,
};
static s16 D_8082AF38_width_QUEST_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF3C_width_SAVE_VTX_[] = {
    0x0098, 0x0030, 0x0030, 0x0030, 0x0030, 0x0000,
};
static s16 D_8082AF48_y_ITEM_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF4C_y_EQUIP_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF50_y_MAP_PAGE_VTX_IN_DUNGEON_SCENE_[] = {
    0x001C, 0x001C, 0x002E, 0x001C, 0xFFFE, 0xFFE0, 0x0032, 0x0024, 0x0016,
    0x0008, 0xFFFA, 0xFFEC, 0xFFDE, 0xFFD0, 0x0012, 0x0012, 0x0032, 0x0000,
};
static s16 D_8082AF74_y_QUEST_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF78_y_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_[] = {
    0x000F, 0x0028, 0x000B, 0x002D, 0x0034, 0x0025, 0x0024, 0x0039, 0x0036, 0x0021, 0x001F,
    0x002D, 0x0020, 0x002A, 0x0031, 0xFFF6, 0x001F, 0x001B, 0x000F, 0xFFCF, 0x0008, 0x0026,
    0x0007, 0x002F, 0x001E, 0x0001, 0xFFF7, 0x0019, 0x0000, 0x0001, 0xFFE0, 0xFFE6,
};
static s16 D_8082AFB8_y_SAVE_VTX_[] = {
    0x0024, 0x000A, 0x000A, 0xFFFA, 0xFFFA, 0x0000,
};
static s16 D_8082AFC4_height_ITEM_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AFC8_height_EQUIP_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AFCC_height_MAP_PAGE_VTX_IN_DUNGEON_SCENE_[] = {
    0x0055, 0x0055, 0x0010, 0x0018, 0x0018, 0x0018, 0x0010, 0x0010, 0x0010,
    0x0010, 0x0010, 0x0010, 0x0010, 0x0010, 0x0010, 0x0010, 0x0018, 0x0000,
};
static s16 D_8082AFF0_height_QUEST_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AFF4_height_SAVE_VTX_[] = {
    0x0010, 0x0030, 0x0030, 0x0010, 0x0010, 0x0000,
};

static s16* D_8082B000_x_[] = {
    D_8082AE90_x_ITEM_PAGE_VTX_,                     // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    D_8082AE94_x_EQUIP_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    D_8082AE98_x_MAP_PAGE_VTX_IN_DUNGEON_SCENE_,     // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    D_8082AEBC_x_QUEST_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    D_8082AEC0_x_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    D_8082AF00_x_SAVE_VTX_,                          // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};

static s16* D_8082B018_width_[] = {
    D_8082AF0C_width_ITEM_PAGE_VTX_,                     // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    D_8082AF10_width_EQUIP_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    D_8082AF14_width_MAP_PAGE_VTX_IN_DUNGEON_SCENE_,     // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    D_8082AF38_width_QUEST_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    D_8082AAEC_width_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    D_8082AF3C_width_SAVE_VTX_,                          // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};

static s16* D_8082B030_y_[] = {
    D_8082AF48_y_ITEM_PAGE_VTX_,                     // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    D_8082AF4C_y_EQUIP_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    D_8082AF50_y_MAP_PAGE_VTX_IN_DUNGEON_SCENE_,     // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    D_8082AF74_y_QUEST_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    D_8082AF78_y_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    D_8082AFB8_y_SAVE_VTX_,                          // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};

static s16* D_8082B048_height_[] = {
    D_8082AFC4_height_ITEM_PAGE_VTX_,                     // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    D_8082AFC8_height_EQUIP_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    D_8082AFCC_height_MAP_PAGE_VTX_IN_DUNGEON_SCENE_,     // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    D_8082AFF0_height_QUEST_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    D_8082AB2C_height_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    D_8082AFF4_height_SAVE_VTX_,                          // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};

static s16 D_8082B060_x_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[] = {
    0xFFC6, 0x000B, 0x001E, 0x001E, 0x000F, 0x0026, 0xFFC2, 0x003C, 0x003D, 0xFFB2, 0xFED4,
    0xFFAA, 0xFFBF, 0xFED4, 0xFED4, 0xFFEB, 0x000E, 0x000D, 0x0014, 0xFFDE, 0xFED4, 0x0000,
};

static s16 D_8082B08C_width_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[] = {
    0x0059, 0x0014, 0x000E, 0x0023, 0x0020, 0x0011, 0x0032, 0x0010, 0x0015, 0x0014, 0xFFFF,
    0x0020, 0x0010, 0xFFFF, 0xFFFF, 0x0013, 0x0013, 0x0015, 0x0010, 0x0014, 0xFFFF, 0x0000,
};

static s16 D_8082B0B8_y_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[] = {
    0x0001, 0x000F, 0x0014, 0x0009, 0xFFE2, 0xFFEF, 0xFFDE, 0x000F, 0x001E, 0x0001, 0xFED4,
    0x002A, 0x0007, 0xFED4, 0xFED4, 0x0018, 0x0024, 0x0035, 0x0025, 0xFFF3, 0xFED4, 0x0000,
};

static s16 D_8082B0E4_height_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[] = {
    0x0024, 0x000F, 0x0010, 0x0017, 0x0017, 0x0010, 0x0018, 0x000D, 0x0011, 0x0012, 0x0001,
    0x0019, 0x000D, 0x0001, 0x0001, 0x000D, 0x0015, 0x000F, 0x000D, 0x000C, 0x0001, 0x0000,
};

typedef enum {
    /* 0 */ FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX,
    /* 1 */ FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX,
    /* 2 */ FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE,
    /* 3 */ FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX,
    /* 4 */ FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE,
    /* 5 */ FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
} func_80823A0C_usage_arg2;

s16 func_80823A0C_makeVertices_(PlayState* play, Vtx* vtx, s16 usage_arg2, s16 arg3) {
    static s16 sTradeQuestVtxOffsetY__ = 0;
    static s16 sTradeQuestVtxOffsetTimer__ = 1;
    static s16 sTradeQuestVtxOffsetState__ = 0;
    PauseContext* pauseCtx = &play->pauseCtx;
    s16* ptr1_x_;
    s16* ptr2_width_;
    s16* ptr3_y_;
    s16* ptr4_height_;
    s16 bufI_afterFirstPartDone_;
    s16 pageBgQuadX;
    s16 pageBgQuadY;
    s16 i;
    s16 j;
    s16 bufI;

    // Vertices for KaleidoScope_DrawPageSections

    pageBgQuadX = 0 - (PAGE_BG_COLS * PAGE_BG_QUAD_WIDTH) / 2 - PAGE_BG_QUAD_WIDTH;

    // For each column
    for (bufI = 0, j = 0; j < PAGE_BG_COLS; j++) {
        pageBgQuadX += PAGE_BG_QUAD_WIDTH;

        // For each row
        for (pageBgQuadY = (PAGE_BG_ROWS * PAGE_BG_QUAD_HEIGHT) / 2, i = 0; i < PAGE_BG_ROWS;
             i++, bufI += 4, pageBgQuadY -= PAGE_BG_QUAD_HEIGHT) {
            vtx[bufI + 0].v.ob[0] = vtx[bufI + 2].v.ob[0] = pageBgQuadX;

            vtx[bufI + 1].v.ob[0] = vtx[bufI + 3].v.ob[0] = vtx[bufI + 0].v.ob[0] + PAGE_BG_QUAD_WIDTH;

            vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] = pageBgQuadY + pauseCtx->offsetY;

            vtx[bufI + 2].v.ob[1] = vtx[bufI + 3].v.ob[1] = vtx[bufI + 0].v.ob[1] - PAGE_BG_QUAD_HEIGHT;

            vtx[bufI + 0].v.ob[2] = vtx[bufI + 1].v.ob[2] = vtx[bufI + 2].v.ob[2] = vtx[bufI + 3].v.ob[2] = 0;

            vtx[bufI + 0].v.flag = 0;
            vtx[bufI + 1].v.flag = 0;
            vtx[bufI + 2].v.flag = 0;
            vtx[bufI + 3].v.flag = 0;

            vtx[bufI + 0].v.tc[0] = vtx[bufI + 0].v.tc[1] = vtx[bufI + 1].v.tc[1] = vtx[bufI + 2].v.tc[0] = 0;

            vtx[bufI + 1].v.tc[0] = vtx[bufI + 3].v.tc[0] = PAGE_BG_QUAD_TEX_WIDTH * (1 << 5);

            vtx[bufI + 2].v.tc[1] = vtx[bufI + 3].v.tc[1] = PAGE_BG_QUAD_TEX_HEIGHT * (1 << 5);

            vtx[bufI + 0].v.cn[0] = vtx[bufI + 2].v.cn[0] = D_8082AE48_red[usage_arg2][j + 0];

            vtx[bufI + 0].v.cn[1] = vtx[bufI + 2].v.cn[1] = D_8082AE60_green[usage_arg2][j + 0];

            vtx[bufI + 0].v.cn[2] = vtx[bufI + 2].v.cn[2] = D_8082AE78_blue[usage_arg2][j + 0];

            vtx[bufI + 1].v.cn[0] = vtx[bufI + 3].v.cn[0] = D_8082AE48_red[usage_arg2][j + 1];

            vtx[bufI + 1].v.cn[1] = vtx[bufI + 3].v.cn[1] = D_8082AE60_green[usage_arg2][j + 1];

            vtx[bufI + 1].v.cn[2] = vtx[bufI + 3].v.cn[2] = D_8082AE78_blue[usage_arg2][j + 1];

            vtx[bufI + 0].v.cn[3] = vtx[bufI + 2].v.cn[3] = vtx[bufI + 1].v.cn[3] = vtx[bufI + 3].v.cn[3] =
                pauseCtx->alpha;
        }
    }

    bufI_afterFirstPartDone_ = bufI;

    //

    if (arg3 != 0) {
        ptr1_x_ = D_8082B000_x_[usage_arg2];
        ptr2_width_ = D_8082B018_width_[usage_arg2];
        ptr3_y_ = D_8082B030_y_[usage_arg2];
        ptr4_height_ = D_8082B048_height_[usage_arg2];

        for (j = 0; j < arg3; j++, bufI += 4) {
            vtx[bufI + 2].v.ob[0] = vtx[bufI + 0].v.ob[0] = ptr1_x_[j];

            vtx[bufI + 1].v.ob[0] = vtx[bufI + 3].v.ob[0] = vtx[bufI + 0].v.ob[0] + ptr2_width_[j];

            if (!((pauseCtx->state >= PAUSE_STATE_8) && (pauseCtx->state < PAUSE_STATE_CLOSING))
        /* PAUSE_STATE_8, PAUSE_STATE_9, PAUSE_STATE_10, PAUSE_STATE_11, PAUSE_STATE_12,
           PAUSE_STATE_13, PAUSE_STATE_14, PAUSE_STATE_15, PAUSE_STATE_16, PAUSE_STATE_17 */) {
                vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] = ptr3_y_[j] + pauseCtx->offsetY;
            } else {
                vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] = YREG(60 + j) + pauseCtx->offsetY;
            }

            vtx[bufI + 2].v.ob[1] = vtx[bufI + 3].v.ob[1] = vtx[bufI + 0].v.ob[1] - ptr4_height_[j];

            vtx[bufI + 0].v.ob[2] = vtx[bufI + 1].v.ob[2] = vtx[bufI + 2].v.ob[2] = vtx[bufI + 3].v.ob[2] = 0;

            vtx[bufI + 0].v.flag = vtx[bufI + 1].v.flag = vtx[bufI + 2].v.flag = vtx[bufI + 3].v.flag = 0;

            vtx[bufI + 0].v.tc[0] = vtx[bufI + 0].v.tc[1] = vtx[bufI + 1].v.tc[1] = vtx[bufI + 2].v.tc[0] = 0;

            vtx[bufI + 1].v.tc[0] = vtx[bufI + 3].v.tc[0] = ptr2_width_[j] << 5;

            vtx[bufI + 2].v.tc[1] = vtx[bufI + 3].v.tc[1] = ptr4_height_[j] << 5;

            vtx[bufI + 0].v.cn[0] = vtx[bufI + 2].v.cn[0] = vtx[bufI + 0].v.cn[1] = vtx[bufI + 2].v.cn[1] =
                vtx[bufI + 0].v.cn[2] = vtx[bufI + 2].v.cn[2] = vtx[bufI + 1].v.cn[0] = vtx[bufI + 3].v.cn[0] =
                    vtx[bufI + 1].v.cn[1] = vtx[bufI + 3].v.cn[1] = vtx[bufI + 1].v.cn[2] = vtx[bufI + 3].v.cn[2] = 255;

            vtx[bufI + 0].v.cn[3] = vtx[bufI + 2].v.cn[3] = vtx[bufI + 1].v.cn[3] = vtx[bufI + 3].v.cn[3] =
                pauseCtx->alpha;
        }

        if (usage_arg2 == FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE) {
            bufI -= 12;

            j = gSaveContext.worldMapArea;

            vtx[bufI + 0].v.ob[0] = vtx[bufI + 2].v.ob[0] = D_8082B060_x_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[j];

            if (j) {}

            vtx[bufI + 1].v.ob[0] = vtx[bufI + 3].v.ob[0] =
                vtx[bufI + 0].v.ob[0] + D_8082B08C_width_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[j];

            vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] =
                D_8082B0B8_y_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[j] + pauseCtx->offsetY;

            vtx[bufI + 2].v.ob[1] = vtx[bufI + 3].v.ob[1] =
                vtx[bufI + 0].v.ob[1] - D_8082B0E4_height_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[j];

            bufI += 12;

            if (pauseCtx->tradeQuestLocation != 0xFF) {
                if (sTradeQuestVtxOffsetTimer__ == 0) {
                    sTradeQuestVtxOffsetState__++;
                    switch (sTradeQuestVtxOffsetState__) {
                        case 1:
                            sTradeQuestVtxOffsetY__ = 3;
                            sTradeQuestVtxOffsetTimer__ = 8;
                            break;
                        case 2:
                            sTradeQuestVtxOffsetY__ = 0;
                            sTradeQuestVtxOffsetTimer__ = 6;
                            sTradeQuestVtxOffsetState__ = 0;
                            break;
                    }
                } else {
                    sTradeQuestVtxOffsetTimer__--;
                }

                j = bufI_afterFirstPartDone_ + (pauseCtx->tradeQuestLocation * 4) + 64;
                i = bufI_afterFirstPartDone_ + 116;

                vtx[i + 0].v.ob[0] = vtx[i + 2].v.ob[0] = vtx[j + 0].v.ob[0];

                vtx[i + 1].v.ob[0] = vtx[i + 3].v.ob[0] = vtx[i + 0].v.ob[0] + 8;

                vtx[i + 0].v.ob[1] = vtx[i + 1].v.ob[1] = vtx[j + 0].v.ob[1] - sTradeQuestVtxOffsetY__ + 10;

                vtx[i + 0].v.ob[2] = vtx[i + 1].v.ob[2] = vtx[i + 2].v.ob[2] = vtx[i + 3].v.ob[2] = 0;

                vtx[i + 2].v.ob[1] = vtx[i + 3].v.ob[1] = vtx[i + 0].v.ob[1] - 8;

                vtx[i + 0].v.flag = vtx[i + 1].v.flag = vtx[i + 2].v.flag = vtx[i + 3].v.flag = 0;

                vtx[bufI].v.tc[0] = vtx[bufI].v.tc[1] = vtx[i + 1].v.tc[1] = vtx[i + 2].v.tc[0] = 0;

                vtx[i + 1].v.tc[0] = vtx[i + 3].v.tc[0] = 8 * (1 << 5);

                vtx[i + 2].v.tc[1] = vtx[i + 3].v.tc[1] = 8 * (1 << 5);

                vtx[i + 0].v.cn[0] = vtx[i + 2].v.cn[0] = vtx[i + 0].v.cn[1] = vtx[i + 2].v.cn[1] = vtx[i + 0].v.cn[2] =
                    vtx[i + 2].v.cn[2] = vtx[i + 1].v.cn[0] = vtx[i + 3].v.cn[0] = vtx[i + 1].v.cn[1] =
                        vtx[i + 3].v.cn[1] = vtx[i + 1].v.cn[2] = vtx[i + 3].v.cn[2] = 255;

                vtx[i + 0].v.cn[3] = vtx[i + 2].v.cn[3] = vtx[i + 1].v.cn[3] = vtx[i + 3].v.cn[3] = pauseCtx->alpha;
            }
        }
    }

    return bufI;
}

static s16 D_8082B11C[] = { 0, 4, 8, 12, 24, 32, 56 }; // itemVtx

static s16 D_8082B12C_x_equipVtx_[] = { -114, 12, 44, 76 };

static u8 D_8082B134[] = { 1, 5, 9, 13 }; // equipVtx

static s16 sQuestQuadsX[] = {
    74,   // QUEST_MEDALLION_FOREST
    74,   // QUEST_MEDALLION_FIRE
    46,   // QUEST_MEDALLION_WATER
    18,   // QUEST_MEDALLION_SPIRIT
    18,   // QUEST_MEDALLION_SHADOW
    46,   // QUEST_MEDALLION_LIGHT
    -108, // QUEST_SONG_MINUET
    -90,  // QUEST_SONG_BOLERO
    -72,  // QUEST_SONG_SERENADE
    -54,  // QUEST_SONG_REQUIEM
    -36,  // QUEST_SONG_NOCTURNE
    -18,  // QUEST_SONG_PRELUDE
    -108, // QUEST_SONG_LULLABY
    -90,  // QUEST_SONG_EPONA
    -72,  // QUEST_SONG_SARIA
    -54,  // QUEST_SONG_SUN
    -36,  // QUEST_SONG_TIME
    -18,  // QUEST_SONG_STORMS
    20,   // QUEST_KOKIRI_EMERALD
    46,   // QUEST_GORON_RUBY
    72,   // QUEST_ZORA_SAPPHIRE
    -110, // QUEST_STONE_OF_AGONY
    -86,  // QUEST_GERUDO_CARD
    -110, // QUEST_SKULL_TOKEN
    -54,  // QUEST_HEART_PIECE
    -98,  // QUAD_QUEST_SONG_NOTE_A1
    -86,  // QUAD_QUEST_SONG_NOTE_A2
    -74,  // QUAD_QUEST_SONG_NOTE_A3
    -62,  // QUAD_QUEST_SONG_NOTE_A4
    -50,  // QUAD_QUEST_SONG_NOTE_A5
    -38,  // QUAD_QUEST_SONG_NOTE_A6
    -26,  // QUAD_QUEST_SONG_NOTE_A7
    -14,  // QUAD_QUEST_SONG_NOTE_A8
    -98,  // QUAD_QUEST_SONG_NOTE_B1
    -86,  // QUAD_QUEST_SONG_NOTE_B2
    -74,  // QUAD_QUEST_SONG_NOTE_B3
    -62,  // QUAD_QUEST_SONG_NOTE_B4
    -50,  // QUAD_QUEST_SONG_NOTE_B5
    -38,  // QUAD_QUEST_SONG_NOTE_B6
    -26,  // QUAD_QUEST_SONG_NOTE_B7
    -14,  // QUAD_QUEST_SONG_NOTE_B8
    -88,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT1_SHADOW
    -81,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT2_SHADOW
    -72,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT3_SHADOW
    -90,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT1
    -83,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT2
    -74,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT3
};

static s16 sQuestQuadsY[] = {
    38,  // QUEST_MEDALLION_FOREST
    6,   // QUEST_MEDALLION_FIRE
    -12, // QUEST_MEDALLION_WATER
    6,   // QUEST_MEDALLION_SPIRIT
    38,  // QUEST_MEDALLION_SHADOW
    56,  // QUEST_MEDALLION_LIGHT
    -20, // QUEST_SONG_MINUET
    -20, // QUEST_SONG_BOLERO
    -20, // QUEST_SONG_SERENADE
    -20, // QUEST_SONG_REQUIEM
    -20, // QUEST_SONG_NOCTURNE
    -20, // QUEST_SONG_PRELUDE
    2,   // QUEST_SONG_LULLABY
    2,   // QUEST_SONG_EPONA
    2,   // QUEST_SONG_SARIA
    2,   // QUEST_SONG_SUN
    2,   // QUEST_SONG_TIME
    2,   // QUEST_SONG_STORMS
    -46, // QUEST_KOKIRI_EMERALD
    -46, // QUEST_GORON_RUBY
    -46, // QUEST_ZORA_SAPPHIRE
    58,  // QUEST_STONE_OF_AGONY
    58,  // QUEST_GERUDO_CARD
    34,  // QUEST_SKULL_TOKEN
    58,  // QUEST_HEART_PIECE
    -52, // QUAD_QUEST_SONG_NOTE_A1
    -52, // QUAD_QUEST_SONG_NOTE_A2
    -52, // QUAD_QUEST_SONG_NOTE_A3
    -52, // QUAD_QUEST_SONG_NOTE_A4
    -52, // QUAD_QUEST_SONG_NOTE_A5
    -52, // QUAD_QUEST_SONG_NOTE_A6
    -52, // QUAD_QUEST_SONG_NOTE_A7
    -52, // QUAD_QUEST_SONG_NOTE_A8
    -52, // QUAD_QUEST_SONG_NOTE_B1
    -52, // QUAD_QUEST_SONG_NOTE_B2
    -52, // QUAD_QUEST_SONG_NOTE_B3
    -52, // QUAD_QUEST_SONG_NOTE_B4
    -52, // QUAD_QUEST_SONG_NOTE_B5
    -52, // QUAD_QUEST_SONG_NOTE_B6
    -52, // QUAD_QUEST_SONG_NOTE_B7
    -52, // QUAD_QUEST_SONG_NOTE_B8
    34,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT1_SHADOW
    34,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT2_SHADOW
    34,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT3_SHADOW
    36,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT1
    36,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT2
    36,  // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT3
};

static s16 sQuestQuadsSize[] = {
    24, // QUEST_MEDALLION_FOREST
    24, // QUEST_MEDALLION_FIRE
    24, // QUEST_MEDALLION_WATER
    24, // QUEST_MEDALLION_SPIRIT
    24, // QUEST_MEDALLION_SHADOW
    24, // QUEST_MEDALLION_LIGHT
    24, // QUEST_SONG_MINUET
    24, // QUEST_SONG_BOLERO
    24, // QUEST_SONG_SERENADE
    24, // QUEST_SONG_REQUIEM
    24, // QUEST_SONG_NOCTURNE
    24, // QUEST_SONG_PRELUDE
    24, // QUEST_SONG_LULLABY
    24, // QUEST_SONG_EPONA
    24, // QUEST_SONG_SARIA
    24, // QUEST_SONG_SUN
    24, // QUEST_SONG_TIME
    24, // QUEST_SONG_STORMS
    24, // QUEST_KOKIRI_EMERALD
    24, // QUEST_GORON_RUBY
    24, // QUEST_ZORA_SAPPHIRE
    24, // QUEST_STONE_OF_AGONY
    24, // QUEST_GERUDO_CARD
    24, // QUEST_SKULL_TOKEN
    48, // QUEST_HEART_PIECE
    16, // QUAD_QUEST_SONG_NOTE_A1
    16, // QUAD_QUEST_SONG_NOTE_A2
    16, // QUAD_QUEST_SONG_NOTE_A3
    16, // QUAD_QUEST_SONG_NOTE_A4
    16, // QUAD_QUEST_SONG_NOTE_A5
    16, // QUAD_QUEST_SONG_NOTE_A6
    16, // QUAD_QUEST_SONG_NOTE_A7
    16, // QUAD_QUEST_SONG_NOTE_A8
    16, // QUAD_QUEST_SONG_NOTE_B1
    16, // QUAD_QUEST_SONG_NOTE_B2
    16, // QUAD_QUEST_SONG_NOTE_B3
    16, // QUAD_QUEST_SONG_NOTE_B4
    16, // QUAD_QUEST_SONG_NOTE_B5
    16, // QUAD_QUEST_SONG_NOTE_B6
    16, // QUAD_QUEST_SONG_NOTE_B7
    16, // QUAD_QUEST_SONG_NOTE_B8
    16, // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT1_SHADOW
    16, // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT2_SHADOW
    16, // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT3_SHADOW
    16, // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT1
    16, // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT2
    16, // QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT3
};

void KaleidoScope_InitVertices(PlayState* play, GraphicsContext* gfxCtx) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 vtx_x_;
    s16 i;
    s16 quadWidth;
    s16 j;
    s16 k;
    s16 vtx_y;

    pauseCtx->offsetY = 0;

    if ((pauseCtx->state == PAUSE_STATE_OPENING_1) ||
        (pauseCtx->state >= PAUSE_STATE_CLOSING
         /* PAUSE_STATE_CLOSING, PAUSE_STATE_UNPAUSE */) ||
        ((pauseCtx->state == PAUSE_STATE_SAVE_PROMPT) &&
         ((pauseCtx->savePromptSubState == PAUSE_SAVE_PROMPT_STATE_CLOSING) ||
          (pauseCtx->savePromptSubState == PAUSE_SAVE_PROMPT_STATE_CLOSING_AFTER_SAVED))) ||
        ((pauseCtx->state >= PAUSE_STATE_8) && (pauseCtx->state <= PAUSE_STATE_13)
         /* PAUSE_STATE_8, PAUSE_STATE_9, PAUSE_STATE_10, PAUSE_STATE_11, PAUSE_STATE_12, PAUSE_STATE_13 */)) {
        pauseCtx->offsetY = 80;
    }

    pauseCtx->itemPageVtx = Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_ITEM_PAGE_VTX) * 4) * sizeof(Vtx));
    func_80823A0C_makeVertices_(play, pauseCtx->itemPageVtx, FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX,
                                FUNC_80823A0C_ARG3_ITEM_PAGE_VTX);

    pauseCtx->equipPageVtx = Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_EQUIP_PAGE_VTX) * 4) * sizeof(Vtx));
    func_80823A0C_makeVertices_(play, pauseCtx->equipPageVtx, FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX,
                                FUNC_80823A0C_ARG3_EQUIP_PAGE_VTX);

    if (!sInDungeonScene) {
        pauseCtx->mapPageVtx =
            Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE + 15) * 4) * sizeof(Vtx));
        j = func_80823A0C_makeVertices_(play, pauseCtx->mapPageVtx,
                                        FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE,
                                        FUNC_80823A0C_ARG3_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE);

        for (i = 0, vtx_y = 58; i < 15; i++, j += 4, vtx_y -= 9) {
            pauseCtx->mapPageVtx[j + 0].v.ob[0] = pauseCtx->mapPageVtx[j + 2].v.ob[0] = -108;

            pauseCtx->mapPageVtx[j + 1].v.ob[0] = pauseCtx->mapPageVtx[j + 3].v.ob[0] =
                pauseCtx->mapPageVtx[j + 0].v.ob[0] + 216;

            pauseCtx->mapPageVtx[j + 0].v.ob[1] = pauseCtx->mapPageVtx[j + 1].v.ob[1] = vtx_y + pauseCtx->offsetY;

            pauseCtx->mapPageVtx[j + 2].v.ob[1] = pauseCtx->mapPageVtx[j + 3].v.ob[1] =
                pauseCtx->mapPageVtx[j + 0].v.ob[1] - 9;

            pauseCtx->mapPageVtx[j + 0].v.ob[2] = pauseCtx->mapPageVtx[j + 1].v.ob[2] =
                pauseCtx->mapPageVtx[j + 2].v.ob[2] = pauseCtx->mapPageVtx[j + 3].v.ob[2] = 0;

            pauseCtx->mapPageVtx[j + 0].v.flag = pauseCtx->mapPageVtx[j + 1].v.flag =
                pauseCtx->mapPageVtx[j + 2].v.flag = pauseCtx->mapPageVtx[j + 3].v.flag = 0;

            pauseCtx->mapPageVtx[j + 0].v.tc[0] = pauseCtx->mapPageVtx[j + 0].v.tc[1] =
                pauseCtx->mapPageVtx[j + 1].v.tc[1] = pauseCtx->mapPageVtx[j + 2].v.tc[0] = 0;

            pauseCtx->mapPageVtx[j + 1].v.tc[0] = pauseCtx->mapPageVtx[j + 3].v.tc[0] = 216 * (1 << 5);

            pauseCtx->mapPageVtx[j + 2].v.tc[1] = pauseCtx->mapPageVtx[j + 3].v.tc[1] = 9 * (1 << 5);

            pauseCtx->mapPageVtx[j + 0].v.cn[0] = pauseCtx->mapPageVtx[j + 2].v.cn[0] =
                pauseCtx->mapPageVtx[j + 0].v.cn[1] = pauseCtx->mapPageVtx[j + 2].v.cn[1] =
                    pauseCtx->mapPageVtx[j + 0].v.cn[2] = pauseCtx->mapPageVtx[j + 2].v.cn[2] =
                        pauseCtx->mapPageVtx[j + 1].v.cn[0] = pauseCtx->mapPageVtx[j + 3].v.cn[0] =
                            pauseCtx->mapPageVtx[j + 1].v.cn[1] = pauseCtx->mapPageVtx[j + 3].v.cn[1] =
                                pauseCtx->mapPageVtx[j + 1].v.cn[2] = pauseCtx->mapPageVtx[j + 3].v.cn[2] =
                                    pauseCtx->mapPageVtx[j + 0].v.cn[3] = pauseCtx->mapPageVtx[j + 2].v.cn[3] =
                                        pauseCtx->mapPageVtx[j + 1].v.cn[3] = pauseCtx->mapPageVtx[j + 3].v.cn[3] =
                                            pauseCtx->alpha;
        }

        pauseCtx->mapPageVtx[j - 2].v.ob[1] = pauseCtx->mapPageVtx[j - 1].v.ob[1] =
            pauseCtx->mapPageVtx[j - 4].v.ob[1] - 2;

        pauseCtx->mapPageVtx[j - 2].v.tc[1] = pauseCtx->mapPageVtx[j - 1].v.tc[1] = 2 * (1 << 5);
    } else {
        pauseCtx->mapPageVtx =
            Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_MAP_PAGE_VTX_IN_DUNGEON_SCENE) * 4) * sizeof(Vtx));
        func_80823A0C_makeVertices_(play, pauseCtx->mapPageVtx, FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE,
                                    FUNC_80823A0C_ARG3_MAP_PAGE_VTX_IN_DUNGEON_SCENE);
    }

    pauseCtx->questPageVtx = Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_QUEST_PAGE_VTX) * 4) * sizeof(Vtx));
    func_80823A0C_makeVertices_(play, pauseCtx->questPageVtx, FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX,
                                FUNC_80823A0C_ARG3_QUEST_PAGE_VTX);

    pauseCtx->cursorVtx = Graph_Alloc(gfxCtx, 20 * sizeof(Vtx));

    for (i = 0; i < 20; i++) {
        pauseCtx->cursorVtx[i].v.ob[0] = pauseCtx->cursorVtx[i].v.ob[1] = pauseCtx->cursorVtx[i].v.ob[2] = 0;

        pauseCtx->cursorVtx[i].v.flag = 0;

        pauseCtx->cursorVtx[i].v.tc[0] = pauseCtx->cursorVtx[i].v.tc[1] = 0;

        pauseCtx->cursorVtx[i].v.cn[0] = pauseCtx->cursorVtx[i].v.cn[1] = pauseCtx->cursorVtx[i].v.cn[2] =
            pauseCtx->cursorVtx[i].v.cn[3] = 255;
    }

    pauseCtx->cursorVtx[1].v.tc[0] = pauseCtx->cursorVtx[2].v.tc[1] = pauseCtx->cursorVtx[3].v.tc[0] =
        pauseCtx->cursorVtx[3].v.tc[1] = pauseCtx->cursorVtx[5].v.tc[0] = pauseCtx->cursorVtx[6].v.tc[1] =
            pauseCtx->cursorVtx[7].v.tc[0] = pauseCtx->cursorVtx[7].v.tc[1] = pauseCtx->cursorVtx[9].v.tc[0] =
                pauseCtx->cursorVtx[10].v.tc[1] = pauseCtx->cursorVtx[11].v.tc[0] = pauseCtx->cursorVtx[11].v.tc[1] =
                    pauseCtx->cursorVtx[13].v.tc[0] = pauseCtx->cursorVtx[14].v.tc[1] =
                        pauseCtx->cursorVtx[15].v.tc[0] = pauseCtx->cursorVtx[15].v.tc[1] = 16 * (1 << 5);

    pauseCtx->cursorVtx[17].v.tc[0] = pauseCtx->cursorVtx[18].v.tc[1] = pauseCtx->cursorVtx[19].v.tc[0] =
        pauseCtx->cursorVtx[19].v.tc[1] = 32 * (1 << 5);

    pauseCtx->itemVtx = Graph_Alloc(gfxCtx, ((4 * 6 + 3 + 7 * 2) * 4) * sizeof(Vtx));

    for (k = 0, i = 0, vtx_y = 58; k < 4; k++, vtx_y -= 32) {
        for (vtx_x_ = -96, j = 0; j < 6; j++, i += 4, vtx_x_ += 32) {
            pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] = vtx_x_ + 2;

            pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] =
                pauseCtx->itemVtx[i + 0].v.ob[0] + 0x1C;

            pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] = vtx_y + pauseCtx->offsetY - 2;

            pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] =
                pauseCtx->itemVtx[i + 0].v.ob[1] - 0x1C;

            pauseCtx->itemVtx[i + 0].v.ob[2] = pauseCtx->itemVtx[i + 1].v.ob[2] = pauseCtx->itemVtx[i + 2].v.ob[2] =
                pauseCtx->itemVtx[i + 3].v.ob[2] = 0;

            pauseCtx->itemVtx[i + 0].v.flag = pauseCtx->itemVtx[i + 1].v.flag = pauseCtx->itemVtx[i + 2].v.flag =
                pauseCtx->itemVtx[i + 3].v.flag = 0;

            pauseCtx->itemVtx[i + 0].v.tc[0] = pauseCtx->itemVtx[i + 0].v.tc[1] = pauseCtx->itemVtx[i + 1].v.tc[1] =
                pauseCtx->itemVtx[i + 2].v.tc[0] = 0;

            pauseCtx->itemVtx[i + 1].v.tc[0] = pauseCtx->itemVtx[i + 2].v.tc[1] = pauseCtx->itemVtx[i + 3].v.tc[0] =
                pauseCtx->itemVtx[i + 3].v.tc[1] = 32 * (1 << 5);

            pauseCtx->itemVtx[i + 0].v.cn[0] = pauseCtx->itemVtx[i + 1].v.cn[0] = pauseCtx->itemVtx[i + 2].v.cn[0] =
                pauseCtx->itemVtx[i + 3].v.cn[0] = pauseCtx->itemVtx[i + 0].v.cn[1] = pauseCtx->itemVtx[i + 1].v.cn[1] =
                    pauseCtx->itemVtx[i + 2].v.cn[1] = pauseCtx->itemVtx[i + 3].v.cn[1] =
                        pauseCtx->itemVtx[i + 0].v.cn[2] = pauseCtx->itemVtx[i + 1].v.cn[2] =
                            pauseCtx->itemVtx[i + 2].v.cn[2] = pauseCtx->itemVtx[i + 3].v.cn[2] = 255;

            pauseCtx->itemVtx[i + 0].v.cn[3] = pauseCtx->itemVtx[i + 1].v.cn[3] = pauseCtx->itemVtx[i + 2].v.cn[3] =
                pauseCtx->itemVtx[i + 3].v.cn[3] = 255;
        }
    }

    for (j = 1; j < 4; j++, i += 4) {
        if (gSaveContext.equips.cButtonSlots[j - 1] != ITEM_NONE) {
            k = gSaveContext.equips.cButtonSlots[j - 1] * 4;

            pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] = pauseCtx->itemVtx[k].v.ob[0] - 2;

            pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] = pauseCtx->itemVtx[i + 0].v.ob[0] + 32;

            pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] = pauseCtx->itemVtx[k].v.ob[1] + 2;

            pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] = pauseCtx->itemVtx[i + 0].v.ob[1] - 32;

            pauseCtx->itemVtx[i + 0].v.ob[2] = pauseCtx->itemVtx[i + 1].v.ob[2] = pauseCtx->itemVtx[i + 2].v.ob[2] =
                pauseCtx->itemVtx[i + 3].v.ob[2] = 0;

            pauseCtx->itemVtx[i + 0].v.flag = pauseCtx->itemVtx[i + 1].v.flag = pauseCtx->itemVtx[i + 2].v.flag =
                pauseCtx->itemVtx[i + 3].v.flag = 0;

            pauseCtx->itemVtx[i + 0].v.tc[0] = pauseCtx->itemVtx[i + 0].v.tc[1] = pauseCtx->itemVtx[i + 1].v.tc[1] =
                pauseCtx->itemVtx[i + 2].v.tc[0] = 0;

            pauseCtx->itemVtx[i + 1].v.tc[0] = pauseCtx->itemVtx[i + 2].v.tc[1] = pauseCtx->itemVtx[i + 3].v.tc[0] =
                pauseCtx->itemVtx[i + 3].v.tc[1] = 32 * (1 << 5);

            pauseCtx->itemVtx[i + 0].v.cn[0] = pauseCtx->itemVtx[i + 1].v.cn[0] = pauseCtx->itemVtx[i + 2].v.cn[0] =
                pauseCtx->itemVtx[i + 3].v.cn[0] = pauseCtx->itemVtx[i + 0].v.cn[1] = pauseCtx->itemVtx[i + 1].v.cn[1] =
                    pauseCtx->itemVtx[i + 2].v.cn[1] = pauseCtx->itemVtx[i + 3].v.cn[1] =
                        pauseCtx->itemVtx[i + 0].v.cn[2] = pauseCtx->itemVtx[i + 1].v.cn[2] =
                            pauseCtx->itemVtx[i + 2].v.cn[2] = pauseCtx->itemVtx[i + 3].v.cn[2] = 255;

            pauseCtx->itemVtx[i + 0].v.cn[3] = pauseCtx->itemVtx[i + 1].v.cn[3] = pauseCtx->itemVtx[i + 2].v.cn[3] =
                pauseCtx->itemVtx[i + 3].v.cn[3] = pauseCtx->alpha;
        } else {
            pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] = -300;

            pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] = pauseCtx->itemVtx[i + 0].v.ob[0] + 32;

            pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] = 300;

            pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] = pauseCtx->itemVtx[i + 0].v.ob[1] - 32;
        }
    }

    for (i = (4 * 6 + 3) * 4, j = 0; j < 7; j++) {
        k = D_8082B11C[j];

        pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] = pauseCtx->itemVtx[k].v.ob[0];

        pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] = pauseCtx->itemVtx[i + 0].v.ob[0] + 8;

        pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] = pauseCtx->itemVtx[k].v.ob[1] - 22;

        pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] = pauseCtx->itemVtx[i + 0].v.ob[1] - 8;

        pauseCtx->itemVtx[i + 4].v.ob[0] = pauseCtx->itemVtx[i + 6].v.ob[0] = pauseCtx->itemVtx[i + 0].v.ob[0] + 6;

        pauseCtx->itemVtx[i + 5].v.ob[0] = pauseCtx->itemVtx[i + 7].v.ob[0] = pauseCtx->itemVtx[i + 4].v.ob[0] + 8;

        pauseCtx->itemVtx[i + 4].v.ob[1] = pauseCtx->itemVtx[i + 5].v.ob[1] = pauseCtx->itemVtx[i + 0].v.ob[1];

        pauseCtx->itemVtx[i + 6].v.ob[1] = pauseCtx->itemVtx[i + 7].v.ob[1] = pauseCtx->itemVtx[i + 4].v.ob[1] - 8;

        for (k = 0; k < 2; k++, i += 4) {
            pauseCtx->itemVtx[i + 0].v.ob[2] = pauseCtx->itemVtx[i + 1].v.ob[2] = pauseCtx->itemVtx[i + 2].v.ob[2] =
                pauseCtx->itemVtx[i + 3].v.ob[2] = 0;

            pauseCtx->itemVtx[i + 0].v.flag = pauseCtx->itemVtx[i + 1].v.flag = pauseCtx->itemVtx[i + 2].v.flag =
                pauseCtx->itemVtx[i + 3].v.flag = 0;

            pauseCtx->itemVtx[i + 0].v.tc[0] = pauseCtx->itemVtx[i + 0].v.tc[1] = pauseCtx->itemVtx[i + 1].v.tc[1] =
                pauseCtx->itemVtx[i + 2].v.tc[0] = 0;

            pauseCtx->itemVtx[i + 1].v.tc[0] = pauseCtx->itemVtx[i + 2].v.tc[1] = pauseCtx->itemVtx[i + 3].v.tc[0] =
                pauseCtx->itemVtx[i + 3].v.tc[1] = 8 * (1 << 5);

            pauseCtx->itemVtx[i + 0].v.cn[0] = pauseCtx->itemVtx[i + 1].v.cn[0] = pauseCtx->itemVtx[i + 2].v.cn[0] =
                pauseCtx->itemVtx[i + 3].v.cn[0] = pauseCtx->itemVtx[i + 0].v.cn[1] = pauseCtx->itemVtx[i + 1].v.cn[1] =
                    pauseCtx->itemVtx[i + 2].v.cn[1] = pauseCtx->itemVtx[i + 3].v.cn[1] =
                        pauseCtx->itemVtx[i + 0].v.cn[2] = pauseCtx->itemVtx[i + 1].v.cn[2] =
                            pauseCtx->itemVtx[i + 2].v.cn[2] = pauseCtx->itemVtx[i + 3].v.cn[2] = 255;

            pauseCtx->itemVtx[i + 0].v.cn[3] = pauseCtx->itemVtx[i + 1].v.cn[3] = pauseCtx->itemVtx[i + 2].v.cn[3] =
                pauseCtx->itemVtx[i + 3].v.cn[3] = pauseCtx->alpha;
        }
    }

    pauseCtx->equipVtx = Graph_Alloc(gfxCtx, 112 * sizeof(Vtx));

    for (k = 0, i = 0, vtx_y = 58; i < 4; i++, vtx_y -= 32) {
        for (j = 0; j < 4; j++, k += 4) {
            pauseCtx->equipVtx[k + 0].v.ob[0] = pauseCtx->equipVtx[k + 2].v.ob[0] = D_8082B12C_x_equipVtx_[j] + 2;

            pauseCtx->equipVtx[k + 1].v.ob[0] = pauseCtx->equipVtx[k + 3].v.ob[0] =
                pauseCtx->equipVtx[k + 0].v.ob[0] + 28;

            pauseCtx->equipVtx[k + 0].v.ob[1] = pauseCtx->equipVtx[k + 1].v.ob[1] = vtx_y + pauseCtx->offsetY - 2;

            pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] =
                pauseCtx->equipVtx[k + 0].v.ob[1] - 28;

            pauseCtx->equipVtx[k + 0].v.ob[2] = pauseCtx->equipVtx[k + 1].v.ob[2] = pauseCtx->equipVtx[k + 2].v.ob[2] =
                pauseCtx->equipVtx[k + 3].v.ob[2] = 0;

            pauseCtx->equipVtx[k + 0].v.flag = pauseCtx->equipVtx[k + 1].v.flag = pauseCtx->equipVtx[k + 2].v.flag =
                pauseCtx->equipVtx[k + 3].v.flag = 0;

            pauseCtx->equipVtx[k + 0].v.tc[0] = pauseCtx->equipVtx[k + 0].v.tc[1] = pauseCtx->equipVtx[k + 1].v.tc[1] =
                pauseCtx->equipVtx[k + 2].v.tc[0] = 0;

            pauseCtx->equipVtx[k + 1].v.tc[0] = pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[0] =
                pauseCtx->equipVtx[k + 3].v.tc[1] = 32 * (1 << 5);

            pauseCtx->equipVtx[k + 0].v.cn[0] = pauseCtx->equipVtx[k + 1].v.cn[0] = pauseCtx->equipVtx[k + 2].v.cn[0] =
                pauseCtx->equipVtx[k + 3].v.cn[0] = pauseCtx->equipVtx[k + 0].v.cn[1] =
                    pauseCtx->equipVtx[k + 1].v.cn[1] = pauseCtx->equipVtx[k + 2].v.cn[1] =
                        pauseCtx->equipVtx[k + 3].v.cn[1] = pauseCtx->equipVtx[k + 0].v.cn[2] =
                            pauseCtx->equipVtx[k + 1].v.cn[2] = pauseCtx->equipVtx[k + 2].v.cn[2] =
                                pauseCtx->equipVtx[k + 3].v.cn[2] = 255;

            pauseCtx->equipVtx[k + 0].v.cn[3] = pauseCtx->equipVtx[k + 1].v.cn[3] = pauseCtx->equipVtx[k + 2].v.cn[3] =
                pauseCtx->equipVtx[k + 3].v.cn[3] = pauseCtx->alpha;
        }
    }

    for (j = 0; j < 4; j++, k += 4) {
        if (CUR_EQUIP_VALUE(j) != 0) {
            i = (CUR_EQUIP_VALUE(j) + D_8082B134[j] - 1) * 4;

            pauseCtx->equipVtx[k + 0].v.ob[0] = pauseCtx->equipVtx[k + 2].v.ob[0] = pauseCtx->equipVtx[i].v.ob[0] - 2;

            pauseCtx->equipVtx[k + 1].v.ob[0] = pauseCtx->equipVtx[k + 3].v.ob[0] =
                pauseCtx->equipVtx[k + 0].v.ob[0] + 32;

            pauseCtx->equipVtx[k + 0].v.ob[1] = pauseCtx->equipVtx[k + 1].v.ob[1] = pauseCtx->equipVtx[i].v.ob[1] + 2;

            pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] =
                pauseCtx->equipVtx[k + 0].v.ob[1] - 32;

            pauseCtx->equipVtx[k + 0].v.ob[2] = pauseCtx->equipVtx[k + 1].v.ob[2] = pauseCtx->equipVtx[k + 2].v.ob[2] =
                pauseCtx->equipVtx[k + 3].v.ob[2] = 0;

            pauseCtx->equipVtx[k + 0].v.flag = pauseCtx->equipVtx[k + 1].v.flag = pauseCtx->equipVtx[k + 2].v.flag =
                pauseCtx->equipVtx[k + 3].v.flag = 0;

            pauseCtx->equipVtx[k + 0].v.tc[0] = pauseCtx->equipVtx[k + 0].v.tc[1] = pauseCtx->equipVtx[k + 1].v.tc[1] =
                pauseCtx->equipVtx[k + 2].v.tc[0] = 0;

            pauseCtx->equipVtx[k + 1].v.tc[0] = pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[0] =
                pauseCtx->equipVtx[k + 3].v.tc[1] = 32 * (1 << 5);

            pauseCtx->equipVtx[k + 0].v.cn[0] = pauseCtx->equipVtx[k + 1].v.cn[0] = pauseCtx->equipVtx[k + 2].v.cn[0] =
                pauseCtx->equipVtx[k + 3].v.cn[0] = pauseCtx->equipVtx[k + 0].v.cn[1] =
                    pauseCtx->equipVtx[k + 1].v.cn[1] = pauseCtx->equipVtx[k + 2].v.cn[1] =
                        pauseCtx->equipVtx[k + 3].v.cn[1] = pauseCtx->equipVtx[k + 0].v.cn[2] =
                            pauseCtx->equipVtx[k + 1].v.cn[2] = pauseCtx->equipVtx[k + 2].v.cn[2] =
                                pauseCtx->equipVtx[k + 3].v.cn[2] = 255;

            pauseCtx->equipVtx[k + 0].v.cn[3] = pauseCtx->equipVtx[k + 1].v.cn[3] = pauseCtx->equipVtx[k + 2].v.cn[3] =
                pauseCtx->equipVtx[k + 3].v.cn[3] = pauseCtx->alpha;
        }
    }

    vtx_x_ = 112;
    vtx_y = 50;
    while (true) {
        pauseCtx->equipVtx[k + 0].v.ob[0] = pauseCtx->equipVtx[k + 2].v.ob[0] = -64;

        pauseCtx->equipVtx[k + 1].v.ob[0] = pauseCtx->equipVtx[k + 3].v.ob[0] = pauseCtx->equipVtx[k + 0].v.ob[0] + 64;

        pauseCtx->equipVtx[k + 0].v.ob[1] = pauseCtx->equipVtx[k + 1].v.ob[1] = vtx_y + pauseCtx->offsetY;

        pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] = pauseCtx->equipVtx[k + 0].v.ob[1] - 32;

        pauseCtx->equipVtx[k + 0].v.ob[2] = pauseCtx->equipVtx[k + 1].v.ob[2] = pauseCtx->equipVtx[k + 2].v.ob[2] =
            pauseCtx->equipVtx[k + 3].v.ob[2] = 0;

        pauseCtx->equipVtx[k + 0].v.flag = pauseCtx->equipVtx[k + 1].v.flag = pauseCtx->equipVtx[k + 2].v.flag =
            pauseCtx->equipVtx[k + 3].v.flag = 0;

        pauseCtx->equipVtx[k + 0].v.tc[0] = pauseCtx->equipVtx[k + 0].v.tc[1] = pauseCtx->equipVtx[k + 1].v.tc[1] =
            pauseCtx->equipVtx[k + 2].v.tc[0] = 0;

        pauseCtx->equipVtx[k + 1].v.tc[0] = pauseCtx->equipVtx[k + 3].v.tc[0] = 64 * (1 << 5);

        pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[1] = 32 * (1 << 5);

        pauseCtx->equipVtx[k + 0].v.cn[0] = pauseCtx->equipVtx[k + 1].v.cn[0] = pauseCtx->equipVtx[k + 2].v.cn[0] =
            pauseCtx->equipVtx[k + 3].v.cn[0] = pauseCtx->equipVtx[k + 0].v.cn[1] = pauseCtx->equipVtx[k + 1].v.cn[1] =
                pauseCtx->equipVtx[k + 2].v.cn[1] = pauseCtx->equipVtx[k + 3].v.cn[1] =
                    pauseCtx->equipVtx[k + 0].v.cn[2] = pauseCtx->equipVtx[k + 1].v.cn[2] =
                        pauseCtx->equipVtx[k + 2].v.cn[2] = pauseCtx->equipVtx[k + 3].v.cn[2] = 255;

        pauseCtx->equipVtx[k + 0].v.cn[3] = pauseCtx->equipVtx[k + 1].v.cn[3] = pauseCtx->equipVtx[k + 2].v.cn[3] =
            pauseCtx->equipVtx[k + 3].v.cn[3] = pauseCtx->alpha;

        vtx_x_ -= 32;
        vtx_y -= 32;
        if (vtx_x_ < 0) {
            pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] =
                pauseCtx->equipVtx[k + 0].v.ob[1] - 16;

            pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[1] = 16 * (1 << 5);
            break;
        }

        k += 4;
    }

    pauseCtx->questVtx = Graph_Alloc(gfxCtx, QUAD_QUEST_MAX * 4 * sizeof(Vtx));

    for (k = 0, j = 0; j < QUAD_QUEST_MAX; j++, k += 4) {
        quadWidth = sQuestQuadsSize[j];

        if ((j < QUEST_SONG_MINUET) || (j >= QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT1_SHADOW)) {
            pauseCtx->questVtx[k + 0].v.ob[0] = pauseCtx->questVtx[k + 2].v.ob[0] = sQuestQuadsX[j];

            pauseCtx->questVtx[k + 1].v.ob[0] = pauseCtx->questVtx[k + 3].v.ob[0] =
                pauseCtx->questVtx[k + 0].v.ob[0] + sQuestQuadsSize[j];

            pauseCtx->questVtx[k + 0].v.ob[1] = pauseCtx->questVtx[k + 1].v.ob[1] = sQuestQuadsY[j] + pauseCtx->offsetY;

            pauseCtx->questVtx[k + 2].v.ob[1] = pauseCtx->questVtx[k + 3].v.ob[1] =
                pauseCtx->questVtx[k + 0].v.ob[1] - sQuestQuadsSize[j];

            if (j >= QUAD_QUEST_SKULL_TOKENS_AMOUNT_DIGIT1_SHADOW) {
                pauseCtx->questVtx[k + 1].v.ob[0] = pauseCtx->questVtx[k + 3].v.ob[0] =
                    pauseCtx->questVtx[k + 0].v.ob[0] + 8;

                pauseCtx->questVtx[k + 0].v.ob[1] = pauseCtx->questVtx[k + 1].v.ob[1] =
                    sQuestQuadsY[j] + pauseCtx->offsetY - 6;

                pauseCtx->questVtx[k + 2].v.ob[1] = pauseCtx->questVtx[k + 3].v.ob[1] =
                    pauseCtx->questVtx[k + 0].v.ob[1] - 16;

                quadWidth = 8;
            }
        } else {
            if ((j >= QUEST_SONG_MINUET) && (j < QUEST_KOKIRI_EMERALD)) {
                quadWidth = 16;
            }

            pauseCtx->questVtx[k + 0].v.ob[0] = pauseCtx->questVtx[k + 2].v.ob[0] = sQuestQuadsX[j] + 2;

            pauseCtx->questVtx[k + 1].v.ob[0] = pauseCtx->questVtx[k + 3].v.ob[0] =
                pauseCtx->questVtx[k + 0].v.ob[0] + quadWidth - 4;

            pauseCtx->questVtx[k + 0].v.ob[1] = pauseCtx->questVtx[k + 1].v.ob[1] =
                sQuestQuadsY[j] + pauseCtx->offsetY - 2;

            pauseCtx->questVtx[k + 2].v.ob[1] = pauseCtx->questVtx[k + 3].v.ob[1] =
                pauseCtx->questVtx[k + 0].v.ob[1] - sQuestQuadsSize[j] + 4;
        }

        pauseCtx->questVtx[k + 0].v.ob[2] = pauseCtx->questVtx[k + 1].v.ob[2] = pauseCtx->questVtx[k + 2].v.ob[2] =
            pauseCtx->questVtx[k + 3].v.ob[2] = 0;

        pauseCtx->questVtx[k + 0].v.flag = pauseCtx->questVtx[k + 1].v.flag = pauseCtx->questVtx[k + 2].v.flag =
            pauseCtx->questVtx[k + 3].v.flag = 0;

        pauseCtx->questVtx[k + 0].v.tc[0] = pauseCtx->questVtx[k + 0].v.tc[1] = pauseCtx->questVtx[k + 1].v.tc[1] =
            pauseCtx->questVtx[k + 2].v.tc[0] = 0;

        pauseCtx->questVtx[k + 1].v.tc[0] = pauseCtx->questVtx[k + 3].v.tc[0] = quadWidth << 5;
        pauseCtx->questVtx[k + 2].v.tc[1] = pauseCtx->questVtx[k + 3].v.tc[1] = sQuestQuadsSize[j] << 5;

        pauseCtx->questVtx[k + 0].v.cn[0] = pauseCtx->questVtx[k + 1].v.cn[0] = pauseCtx->questVtx[k + 2].v.cn[0] =
            pauseCtx->questVtx[k + 3].v.cn[0] = pauseCtx->questVtx[k + 0].v.cn[1] = pauseCtx->questVtx[k + 1].v.cn[1] =
                pauseCtx->questVtx[k + 2].v.cn[1] = pauseCtx->questVtx[k + 3].v.cn[1] =
                    pauseCtx->questVtx[k + 0].v.cn[2] = pauseCtx->questVtx[k + 1].v.cn[2] =
                        pauseCtx->questVtx[k + 2].v.cn[2] = pauseCtx->questVtx[k + 3].v.cn[2] = 255;

        pauseCtx->questVtx[k + 0].v.cn[3] = pauseCtx->questVtx[k + 1].v.cn[3] = pauseCtx->questVtx[k + 2].v.cn[3] =
            pauseCtx->questVtx[k + 3].v.cn[3] = pauseCtx->alpha;
    }

    pauseCtx->infoPanelVtx = Graph_Alloc(gfxCtx, 28 * sizeof(Vtx));

    pauseCtx->saveVtx = Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_SAVE_VTX) * 4) * sizeof(Vtx));
    func_80823A0C_makeVertices_(play, pauseCtx->saveVtx, FUNC_80823A0C_USAGE_ARG2_SAVE_VTX,
                                FUNC_80823A0C_ARG3_SAVE_VTX);
}

void KaleidoScope_DrawGameOver(PlayState* play) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 3122);

    Gfx_SetupDL_39Opa(gfxCtx);

    gDPSetCycleType(POLY_OPA_DISP++, G_CYC_2CYCLE);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_PASS, G_RM_XLU_SURF2);
    gDPSetCombineLERP(POLY_OPA_DISP++, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT,
                      COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 80, sColor82ABRed_D_8082AB8C, sColor82ABGreen_D_8082AB90,
                    sColor82ABBlue_D_8082AB94, sColor82ABGameOverPrimAlpha_D_8082AB98);
    gDPSetEnvColor(POLY_OPA_DISP++, sDrawGameOverEnvColorRed_D_8082AB9C, sDrawGameOverEnvColorGreen_D_8082ABA0,
                   sDrawGameOverEnvColorBlue_D_8082ABA4, 255);

    VREG(89) -= 2;

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverP1Tex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                      G_TX_NOLOD);

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverMaskTex, 0x0100, 1, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, 5, G_TX_NOLOD, G_TX_NOLOD);

    gDPSetTileSize(POLY_OPA_DISP++, 1, 0, VREG(89) & 0x7F, 63 << 2, (31 << 2) + (VREG(89) & 0x7F));

    gSPTextureRectangle(POLY_OPA_DISP++, VREG(87) << 2, VREG(88) << 2, (VREG(87) + 64) << 2, (VREG(88) + 32) << 2,
                        G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverP2Tex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                      G_TX_NOLOD);

    gSPTextureRectangle(POLY_OPA_DISP++, (VREG(87) + 64) << 2, VREG(88) << 2, (VREG(87) + 128) << 2,
                        (VREG(88) + 32) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverP3Tex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                      G_TX_NOLOD);
    gSPTextureRectangle(POLY_OPA_DISP++, (VREG(87) + 128) << 2, VREG(88) << 2, (VREG(87) + 192) << 2,
                        (VREG(88) + 32) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

    CLOSE_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 3169);
}

void KaleidoScope_Draw(PlayState* play) {
    Input* input = &play->state.input[0];
    PauseContext* pauseCtx = &play->pauseCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 3188);

    pauseCtx->stickAdjX = input->rel.stick_x;
    pauseCtx->stickAdjY = input->rel.stick_y;

    gSPSegment(POLY_OPA_DISP++, 0x02, interfaceCtx->parameterSegment);
    gSPSegment(POLY_OPA_DISP++, 0x07, pauseCtx->playerSegment);
    gSPSegment(POLY_OPA_DISP++, 0x08, pauseCtx->iconItemSegment);
    gSPSegment(POLY_OPA_DISP++, 0x09, pauseCtx->iconItem24Segment);
    gSPSegment(POLY_OPA_DISP++, 0x0A, pauseCtx->nameSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0C, pauseCtx->iconItemAltSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0D, pauseCtx->iconItemLangSegment);

    if (pauseCtx->debugState == 0) {
        KaleidoScope_SetView(pauseCtx, pauseCtx->eye.x, pauseCtx->eye.y, pauseCtx->eye.z);

        Gfx_SetupDL_42Opa(play->state.gfxCtx);
        KaleidoScope_InitVertices(play, play->state.gfxCtx);
        KaleidoScope_DrawPages(play, play->state.gfxCtx);

        Gfx_SetupDL_42Opa(play->state.gfxCtx);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        KaleidoScope_SetView(pauseCtx, 0.0f, 0.0f, 64.0f);

        if (!((pauseCtx->state >= PAUSE_STATE_8) && (pauseCtx->state < PAUSE_STATE_CLOSING))
        /* PAUSE_STATE_8, PAUSE_STATE_9, PAUSE_STATE_10, PAUSE_STATE_11, PAUSE_STATE_12,
           PAUSE_STATE_13, PAUSE_STATE_14, PAUSE_STATE_15, PAUSE_STATE_16, PAUSE_STATE_17 */) {
            KaleidoScope_DrawInfoPanel(play);
        }
    }

    if ((pauseCtx->state >= PAUSE_STATE_11) && (pauseCtx->state <= PAUSE_STATE_17)
        /* PAUSE_STATE_11, PAUSE_STATE_12, PAUSE_STATE_13, PAUSE_STATE_14, PAUSE_STATE_15, PAUSE_STATE_16,
           PAUSE_STATE_17 */
    ) {
        KaleidoScope_DrawGameOver(play);
    }

    if ((pauseCtx->debugState == 1) || (pauseCtx->debugState == 2)) {
        KaleidoScope_DrawDebugEditor(play);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 3254);
}

void KaleidoScope_GrayOutTextureRGBA32(u32* texture, u16 pixelCount) {
    u32 rgb;
    u16 gray;
    u16 i;

    for (i = 0; i < pixelCount; i++) {
        if ((texture[i] & 0xFFFFFF00) != 0) {
            rgb = texture[i] >> 8;
            gray = ((((rgb & 0xFF0000) >> 16) + ((rgb & 0xFF00) >> 7) + (rgb & 0xFF)) / 7) & 0xFF;

            rgb = gray;
            rgb <<= 8;
            rgb |= gray;
            rgb <<= 8;
            rgb |= gray;

            texture[i] = (rgb << 8) | (texture[i] & 0xFF);
        }
    }
}

void KaleidoScope_UpdateOpening(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;

    pauseCtx->eye.x += sPageSwitchEyeDx[pauseCtx->nextPageMode] * ZREG(46);
    pauseCtx->eye.z += sPageSwitchEyeDz[pauseCtx->nextPageMode] * ZREG(46);
    pauseCtx->switchPageTimer += 4 * ZREG(46);

    if (pauseCtx->switchPageTimer == (4 * 16 * ZREG(47))) {
        // Finished opening

        func_80084BF4(play, 1);

        gSaveContext.buttonStatus[0] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + SWITCH_PAGE_LEFT_PT][0];
        gSaveContext.buttonStatus[1] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + SWITCH_PAGE_LEFT_PT][1];
        gSaveContext.buttonStatus[2] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + SWITCH_PAGE_LEFT_PT][2];
        gSaveContext.buttonStatus[3] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + SWITCH_PAGE_LEFT_PT][3];
        gSaveContext.buttonStatus[4] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + SWITCH_PAGE_LEFT_PT][4];

        pauseCtx->pageIndex = sPageSwitchNextPageIndex[pauseCtx->nextPageMode];

        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
        pauseCtx->state++; // PAUSE_STATE_MAIN

        pauseCtx->alpha = 255;
        Interface_LoadActionLabelB(play, DO_ACTION_SAVE);
    } else if (pauseCtx->switchPageTimer == (4 * 16 * 1)) {
        // `ZREG(47)` is always 1 so this normally never happens
        pauseCtx->pageIndex = sPageSwitchNextPageIndex[pauseCtx->nextPageMode];
        pauseCtx->nextPageMode = (u16)(pauseCtx->pageIndex * 2) + 1;
    }
}

void KaleidoScope_UpdateCursorSize(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s32 temp1;
    s32 temp2;
    s32 temp3;
    s32 temp4;

    if (pauseCtx->cursorSpecialPos == 0) {
        temp1 = -1;
        temp2 = 1;
        temp3 = 14;
        temp4 = 14;
        if (pauseCtx->pageIndex == PAUSE_MAP) {
            if (!sInDungeonScene) {
                temp1 = -6;
                temp2 = 6;
                temp3 = 4;
                temp4 = 4;
            } else if (pauseCtx->cursorSlot[pauseCtx->pageIndex] >= 3) {
                temp1 = -6;
                temp2 = 5;
                temp4 = 7;
                temp3 = 19;
            } else {
                temp1 = -3;
                temp2 = 3;
                temp3 = 13;
                temp4 = 13;
            }
        } else if (pauseCtx->pageIndex == PAUSE_QUEST) {
            temp1 = -4;
            temp2 = 4;
            temp3 = 12;
            temp4 = 12;
            if (pauseCtx->cursorSlot[pauseCtx->pageIndex] == QUEST_HEART_PIECE) {
                temp1 = -2;
                temp2 = 2;
                temp3 = 32;
                temp4 = 32;
            } else if (pauseCtx->cursorSlot[pauseCtx->pageIndex] == QUEST_SKULL_TOKEN) {
                temp1 = -4;
                temp2 = 4;
                temp4 = 13;
                temp3 = 34;
            } else if (pauseCtx->cursorSlot[pauseCtx->pageIndex] < QUEST_SONG_MINUET) {
                temp1 = -1;
                temp2 = 1;
                temp3 = 10;
                temp4 = 10;
            } else if ((pauseCtx->cursorSlot[pauseCtx->pageIndex] >= QUEST_SONG_MINUET) &&
                       (pauseCtx->cursorSlot[pauseCtx->pageIndex] < QUEST_KOKIRI_EMERALD)) {
                temp1 = -5;
                temp2 = 3;
                temp3 = 8;
                temp4 = 8;
            }
        }
    } else {
        temp1 = -4;
        temp2 = 4;
        temp3 = 16;
        temp4 = 16;
    }

    pauseCtx->cursorVtx[0].v.ob[0] = pauseCtx->cursorVtx[2].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + temp1;
    pauseCtx->cursorVtx[1].v.ob[0] = pauseCtx->cursorVtx[3].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + 16;
    pauseCtx->cursorVtx[0].v.ob[1] = pauseCtx->cursorVtx[1].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] + temp2;
    pauseCtx->cursorVtx[2].v.ob[1] = pauseCtx->cursorVtx[3].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] - 16;

    pauseCtx->cursorVtx[4].v.ob[0] = pauseCtx->cursorVtx[6].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + temp3;
    pauseCtx->cursorVtx[5].v.ob[0] = pauseCtx->cursorVtx[7].v.ob[0] = pauseCtx->cursorVtx[4].v.ob[0] + 16;
    pauseCtx->cursorVtx[4].v.ob[1] = pauseCtx->cursorVtx[5].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1];
    pauseCtx->cursorVtx[6].v.ob[1] = pauseCtx->cursorVtx[7].v.ob[1] = pauseCtx->cursorVtx[4].v.ob[1] - 16;

    pauseCtx->cursorVtx[8].v.ob[0] = pauseCtx->cursorVtx[10].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0];
    pauseCtx->cursorVtx[9].v.ob[0] = pauseCtx->cursorVtx[11].v.ob[0] = pauseCtx->cursorVtx[8].v.ob[0] + 16;
    pauseCtx->cursorVtx[8].v.ob[1] = pauseCtx->cursorVtx[9].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] - temp4;
    pauseCtx->cursorVtx[10].v.ob[1] = pauseCtx->cursorVtx[11].v.ob[1] = pauseCtx->cursorVtx[8].v.ob[1] - 16;

    pauseCtx->cursorVtx[12].v.ob[0] = pauseCtx->cursorVtx[14].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + temp3;
    pauseCtx->cursorVtx[13].v.ob[0] = pauseCtx->cursorVtx[15].v.ob[0] = pauseCtx->cursorVtx[12].v.ob[0] + 16;
    pauseCtx->cursorVtx[12].v.ob[1] = pauseCtx->cursorVtx[13].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] - temp4;
    pauseCtx->cursorVtx[14].v.ob[1] = pauseCtx->cursorVtx[15].v.ob[1] = pauseCtx->cursorVtx[12].v.ob[1] - 16;
}

void KaleidoScope_LoadDungeonMap(PlayState* play) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s32 pad;

    DmaMgr_SendRequest1(interfaceCtx->mapSegment,
                        (uintptr_t)_map_48x85_staticSegmentRomStart + (R_MAP_TEX_INDEX * 2040), 2040,
                        "../z_kaleido_scope_PAL.c", 3467);

    DmaMgr_SendRequest1(interfaceCtx->mapSegment + 0x800,
                        (uintptr_t)_map_48x85_staticSegmentRomStart + ((R_MAP_TEX_INDEX + 1) * 2040), 2040,
                        "../z_kaleido_scope_PAL.c", 3471);
}

void KaleidoScope_UpdateDungeonMap(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    osSyncPrintf("ＭＡＰ ＤＭＡ = %d\n", play->interfaceCtx.mapPaletteIndex);

    KaleidoScope_LoadDungeonMap(play);
    Map_SetFloorPalettesData(play, pauseCtx->dungeonMapSlot - 3);

    if ((play->sceneId >= SCENE_YDAN) && (play->sceneId <= SCENE_TAKARAYA)) {
        if ((VREG(30) + 3) == pauseCtx->cursorPoint[PAUSE_MAP]) {
            KaleidoScope_OverridePalIndexCI4(interfaceCtx->mapSegment, 2040, interfaceCtx->mapPaletteIndex, 14);
        }
    }

    if ((play->sceneId >= SCENE_YDAN) && (play->sceneId <= SCENE_TAKARAYA)) {
        if ((VREG(30) + 3) == pauseCtx->cursorPoint[PAUSE_MAP]) {
            KaleidoScope_OverridePalIndexCI4(interfaceCtx->mapSegment + 0x800, 2040, interfaceCtx->mapPaletteIndex, 14);
        }
    }
}

void KaleidoScope_Update(PlayState* play) {
    static s16 sMainStateAfterSongPlayerPlayingDone = PAUSE_MAIN_STATE_IDLE;
    static s16 sDelayTimer = 10;
    static s16 sTimer_ = 0;
    PauseContext* pauseCtx = &play->pauseCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    GameOverContext* gameOverCtx = &play->gameOverCtx;
    Player* player = GET_PLAYER(play);
    Input* input = &play->state.input[0];
    u32 size;
    u32 iconItemStaticSize;
    u32 playerSegmentDrawPauseSize;
    u32 size2;
    u16 i;
    s16 stepR;
    s16 stepG;
    s16 stepB;
    s16 stepA;
    s32 pad;

    if ((R_PAUSE_BG_PRERENDER_STATE >= PAUSE_BG_PRERENDER_DONE) &&
        (((pauseCtx->state >= PAUSE_STATE_OPENING_1) && (pauseCtx->state <= PAUSE_STATE_SAVE_PROMPT)
          /* PAUSE_STATE_OPENING_1, PAUSE_STATE_OPENING_2, PAUSE_STATE_MAIN, PAUSE_STATE_SAVE_PROMPT */
          ) ||
         ((pauseCtx->state >= PAUSE_STATE_10) && (pauseCtx->state <= PAUSE_STATE_CLOSING)
          /* PAUSE_STATE_10, PAUSE_STATE_11, PAUSE_STATE_12, PAUSE_STATE_13, PAUSE_STATE_14,
             PAUSE_STATE_15, PAUSE_STATE_16, PAUSE_STATE_17, PAUSE_STATE_CLOSING */
          ))) {

        if ((!pauseCtx->mainState /* PAUSE_MAIN_STATE_IDLE */ ||
             (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) &&
            (pauseCtx->state == PAUSE_STATE_MAIN)) {

            pauseCtx->stickAdjX = input->rel.stick_x;
            pauseCtx->stickAdjY = input->rel.stick_y;

            KaleidoScope_UpdateCursorSize(play);
            KaleidoScope_HandlePageToggles(pauseCtx, input);
        } else if ((pauseCtx->pageIndex == PAUSE_QUEST) &&
                   ((pauseCtx->mainState < PAUSE_MAIN_STATE_3
                     /* PAUSE_MAIN_STATE_IDLE, PAUSE_MAIN_STATE_SWITCHING_PAGE, PAUSE_MAIN_STATE_SONG_PLAYBACK */
                     ) ||
                    (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING))) {

            KaleidoScope_UpdateCursorSize(play);
        }

        if (pauseCtx->state == PAUSE_STATE_MAIN) {
            KaleidoScope_UpdateNamePanel(play);
        }
    }

    switch (pauseCtx->state) {
        case PAUSE_STATE_INIT:
            D_808321A8_savedButtonStatus[0] = gSaveContext.buttonStatus[0];
            D_808321A8_savedButtonStatus[1] = gSaveContext.buttonStatus[1];
            D_808321A8_savedButtonStatus[2] = gSaveContext.buttonStatus[2];
            D_808321A8_savedButtonStatus[3] = gSaveContext.buttonStatus[3];
            D_808321A8_savedButtonStatus[4] = gSaveContext.buttonStatus[4];

            pauseCtx->cursorX[PAUSE_MAP] = 0;
            pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_MAP] = pauseCtx->dungeonMapSlot =
                VREG(30) + 3;

            R_PAUSE_CURSOR_LEFT_X = -175;
            R_PAUSE_CURSOR_RIGHT_X = 155;

            pauseCtx->rollRotSavePrompt_ = -314.0f;

            //! @bug messed up alignment, should match `ALIGN64`
            pauseCtx->playerSegment = (void*)(((uintptr_t)play->objectCtx.spaceStart + 0x30) & ~0x3F);

            playerSegmentDrawPauseSize =
                Player_InitDrawPause(play, pauseCtx->playerSegment, &pauseCtx->playerSkelAnime);
            osSyncPrintf("プレイヤー size1＝%x\n", playerSegmentDrawPauseSize);

            pauseCtx->iconItemSegment = (void*)ALIGN16((uintptr_t)pauseCtx->playerSegment + playerSegmentDrawPauseSize);

            iconItemStaticSize =
                (uintptr_t)_icon_item_staticSegmentRomEnd - (uintptr_t)_icon_item_staticSegmentRomStart;
            osSyncPrintf("icon_item size0=%x\n", iconItemStaticSize);
            DmaMgr_SendRequest1(pauseCtx->iconItemSegment, (uintptr_t)_icon_item_staticSegmentRomStart,
                                iconItemStaticSize, "../z_kaleido_scope_PAL.c", 3662);

            gSegments[8] = VIRTUAL_TO_PHYSICAL(pauseCtx->iconItemSegment);

            for (i = 0; i < ARRAY_COUNTU(gItemAgeReqs); i++) {
                if (!CHECK_AGE_REQ_ITEM(i)) {
                    KaleidoScope_GrayOutTextureRGBA32(SEGMENTED_TO_VIRTUAL(gItemIcons[i]), 0x400);
                }
            }

            pauseCtx->iconItem24Segment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemSegment + iconItemStaticSize);

            size = (uintptr_t)_icon_item_24_staticSegmentRomEnd - (uintptr_t)_icon_item_24_staticSegmentRomStart;
            osSyncPrintf("icon_item24 size=%x\n", size);
            DmaMgr_SendRequest1(pauseCtx->iconItem24Segment, (uintptr_t)_icon_item_24_staticSegmentRomStart, size,
                                "../z_kaleido_scope_PAL.c", 3675);

            pauseCtx->iconItemAltSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItem24Segment + size);

            switch (play->sceneId) {
                case SCENE_YDAN:
                case SCENE_DDAN:
                case SCENE_BDAN:
                case SCENE_BMORI1:
                case SCENE_HIDAN:
                case SCENE_MIZUSIN:
                case SCENE_JYASINZOU:
                case SCENE_HAKADAN:
                case SCENE_HAKADANCH:
                case SCENE_ICE_DOUKUTO:
                case SCENE_YDAN_BOSS:
                case SCENE_DDAN_BOSS:
                case SCENE_BDAN_BOSS:
                case SCENE_MORIBOSSROOM:
                case SCENE_FIRE_BS:
                case SCENE_MIZUSIN_BS:
                case SCENE_JYASINBOSS:
                case SCENE_HAKADAN_BS:
                    sInDungeonScene = true;

                    size2 = (uintptr_t)_icon_item_dungeon_staticSegmentRomEnd -
                            (uintptr_t)_icon_item_dungeon_staticSegmentRomStart;
                    osSyncPrintf("icon_item_dungeon dungeon-size2=%x\n", size2);
                    DmaMgr_SendRequest1(pauseCtx->iconItemAltSegment,
                                        (uintptr_t)_icon_item_dungeon_staticSegmentRomStart, size2,
                                        "../z_kaleido_scope_PAL.c", 3712);

                    interfaceCtx->mapPalette[28] = 6;
                    interfaceCtx->mapPalette[29] = 99;
                    KaleidoScope_UpdateDungeonMap(play);
                    break;

                default:
                    sInDungeonScene = false;

                    size2 = (uintptr_t)_icon_item_field_staticSegmentRomEnd -
                            (uintptr_t)_icon_item_field_staticSegmentRomStart;
                    osSyncPrintf("icon_item_field field-size2=%x\n", size2);
                    DmaMgr_SendRequest1(pauseCtx->iconItemAltSegment, (uintptr_t)_icon_item_field_staticSegmentRomStart,
                                        size2, "../z_kaleido_scope_PAL.c", 3726);
                    break;
            }

            pauseCtx->iconItemLangSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemAltSegment + size2);

            if (gSaveContext.language == LANGUAGE_ENG) {
                size = (uintptr_t)_icon_item_nes_staticSegmentRomEnd - (uintptr_t)_icon_item_nes_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_nes_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 3739);
            } else if (gSaveContext.language == LANGUAGE_GER) {
                size = (uintptr_t)_icon_item_ger_staticSegmentRomEnd - (uintptr_t)_icon_item_ger_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_ger_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 3746);
            } else {
                size = (uintptr_t)_icon_item_fra_staticSegmentRomEnd - (uintptr_t)_icon_item_fra_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_fra_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 3753);
            }

            pauseCtx->nameSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemLangSegment + size);

            // This printf may have been used to compute the size used on playerSegment at one point,
            // but is missing the size of icon_item_24_static
            osSyncPrintf("サイズ＝%x\n", size2 + playerSegmentDrawPauseSize + iconItemStaticSize + size);
            osSyncPrintf("item_name I_N_PT=%x\n", 0x800);
            Interface_SetDoAction(play, DO_ACTION_DECIDE);
            osSyncPrintf("サイズ＝%x\n", size2 + playerSegmentDrawPauseSize + iconItemStaticSize + size + 0x800);

            if (((void)0, gSaveContext.worldMapArea) < 22) {
                if (gSaveContext.language == LANGUAGE_ENG) {
                    DmaMgr_SendRequest1(pauseCtx->nameSegment + 0x400,
                                        (uintptr_t)_map_name_staticSegmentRomStart +
                                            (((void)0, gSaveContext.worldMapArea) * 0xA00) + 0x9000,
                                        0xA00, "../z_kaleido_scope_PAL.c", 3776);
                } else if (gSaveContext.language == LANGUAGE_GER) {
                    DmaMgr_SendRequest1(pauseCtx->nameSegment + 0x400,
                                        (uintptr_t)_map_name_staticSegmentRomStart +
                                            (((void)0, gSaveContext.worldMapArea) * 0xA00) + 0x16C00,
                                        0xA00, "../z_kaleido_scope_PAL.c", 3780);
                } else {
                    DmaMgr_SendRequest1(pauseCtx->nameSegment + 0x400,
                                        (uintptr_t)_map_name_staticSegmentRomStart +
                                            (((void)0, gSaveContext.worldMapArea) * 0xA00) + 0x24800,
                                        0xA00, "../z_kaleido_scope_PAL.c", 3784);
                }
            }

            sPreRenderCvg = (void*)ALIGN16((uintptr_t)pauseCtx->nameSegment + 0x400 + 0xA00);

            PreRender_Init(&sPlayerPreRender);
            PreRender_SetValuesSave(&sPlayerPreRender, PAUSE_EQUIP_PLAYER_WIDTH, PAUSE_EQUIP_PLAYER_HEIGHT,
                                    pauseCtx->playerSegment, NULL, sPreRenderCvg);

            KaleidoScope_DrawPlayerWork(play);
            KaleidoScope_SetupPlayerPreRender(play);

            for (i = 0; i < ARRAY_COUNT(pauseCtx->worldMapPoints); i++) {
                pauseCtx->worldMapPoints[i] = 0;
            }

            if (CHECK_QUEST_ITEM(QUEST_GERUDO_CARD)) {
                pauseCtx->worldMapPoints[0] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SPIRIT)) {
                pauseCtx->worldMapPoints[0] = 1;
            }

            if (INV_CONTENT(ITEM_LONGSHOT) == ITEM_LONGSHOT) {
                pauseCtx->worldMapPoints[1] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_GERUDO_CARD)) {
                pauseCtx->worldMapPoints[1] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_B2)) {
                pauseCtx->worldMapPoints[2] = 1;
            }

            if (INV_CONTENT(ITEM_LONGSHOT) == ITEM_LONGSHOT) {
                pauseCtx->worldMapPoints[2] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_GERUDO_CARD)) {
                pauseCtx->worldMapPoints[2] = 1;
            }

            if (CUR_UPG_VALUE(UPG_SCALE)) {
                pauseCtx->worldMapPoints[3] = 1;
            }

            if (CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS, EQUIP_INV_BOOTS_IRON)) {
                pauseCtx->worldMapPoints[3] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_WATER)) {
                pauseCtx->worldMapPoints[3] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[4] = 1;
            }

            if (INV_CONTENT(ITEM_OCARINA_FAIRY) != ITEM_NONE) {
                pauseCtx->worldMapPoints[4] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_EPONA)) {
                pauseCtx->worldMapPoints[4] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_KAKARIKO)) {
                pauseCtx->worldMapPoints[4] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
                pauseCtx->worldMapPoints[4] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[5] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                pauseCtx->worldMapPoints[5] = 1;
            }

            if (INV_CONTENT(ITEM_OCARINA_TIME) == ITEM_OCARINA_TIME) {
                pauseCtx->worldMapPoints[5] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_45)) {
                pauseCtx->worldMapPoints[5] = 1;
            }

            if (INV_CONTENT(ITEM_ARROW_LIGHT) == ITEM_ARROW_LIGHT) {
                pauseCtx->worldMapPoints[5] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[6] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                pauseCtx->worldMapPoints[7] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_25)) {
                pauseCtx->worldMapPoints[7] = 1;
            }

            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[7] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_49)) {
                pauseCtx->worldMapPoints[7] = 1;
            }

            if (gBitFlags[1] & gSaveContext.worldMapAreaData) {
                pauseCtx->worldMapPoints[8] = 1;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_LULLABY)) {
                pauseCtx->worldMapPoints[8] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_SUN)) {
                pauseCtx->worldMapPoints[8] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_45)) {
                pauseCtx->worldMapPoints[8] = 2;
            }

            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[8] = 1;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_STORMS)) {
                pauseCtx->worldMapPoints[8] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_67)) {
                pauseCtx->worldMapPoints[8] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_AA)) {
                pauseCtx->worldMapPoints[8] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW)) {
                pauseCtx->worldMapPoints[8] = 1;
            }

            if (gBitFlags[10] & gSaveContext.worldMapAreaData) {
                pauseCtx->worldMapPoints[9] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_0F)) {
                pauseCtx->worldMapPoints[9] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_SARIA)) {
                pauseCtx->worldMapPoints[9] = 1;
            }

            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[9] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_48)) {
                pauseCtx->worldMapPoints[9] = 1;
            }

            pauseCtx->worldMapPoints[10] = 2;

            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[10] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_6E)) {
                pauseCtx->worldMapPoints[10] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_0F)) {
                pauseCtx->worldMapPoints[10] = 1;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_LULLABY)) {
                pauseCtx->worldMapPoints[11] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_25)) {
                pauseCtx->worldMapPoints[11] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_37)) {
                pauseCtx->worldMapPoints[11] = 1;
            }

            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[11] = 2;
            }

            if (CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS, EQUIP_INV_BOOTS_IRON)) {
                pauseCtx->worldMapPoints[11] = 1;
            }

            pauseCtx->tradeQuestLocation = 0xFF;

            i = INV_CONTENT(ITEM_TRADE_ADULT);
            if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
                if ((i <= ITEM_POCKET_CUCCO) || (i == ITEM_ODD_MUSHROOM)) {
                    pauseCtx->tradeQuestLocation = 8;
                }
                if ((i == ITEM_COJIRO) || (i == ITEM_ODD_POTION)) {
                    pauseCtx->tradeQuestLocation = 9;
                }
                if (i == ITEM_SAW) {
                    pauseCtx->tradeQuestLocation = 2;
                }
                if ((i == ITEM_SWORD_BROKEN) || (i == ITEM_EYEDROPS)) {
                    pauseCtx->tradeQuestLocation = 7;
                }
                if (i == ITEM_PRESCRIPTION) {
                    pauseCtx->tradeQuestLocation = 11;
                }
                if (i == ITEM_FROG) {
                    pauseCtx->tradeQuestLocation = 3;
                }
                if ((i == ITEM_CLAIM_CHECK) && (gSaveContext.bgsFlag == 0)) {
                    pauseCtx->tradeQuestLocation = 7;
                }
            }

            pauseCtx->state = PAUSE_STATE_OPENING_1;
            break;

        case PAUSE_STATE_OPENING_1:
            if (pauseCtx->rollRotPageItem == 160.0f) {
                // First frame in this state

                KaleidoScope_SetDefaultCursor(play);
                KaleidoScope_ProcessPlayerPreRender();
            }

            pauseCtx->rollRotPageItem = pauseCtx->rollRotPageEquip = pauseCtx->rollRotPageMap =
                pauseCtx->rollRotPageQuest -= 160.0f / R_PAUSE_UI_ANIMS_DURATION;
            pauseCtx->infoPanelOffsetY += 40 / R_PAUSE_UI_ANIMS_DURATION;
            interfaceCtx->startAlpha += 255 / R_PAUSE_UI_ANIMS_DURATION;
            R_PAUSE_CURSOR_LEFT_X += R_PAUSE_CURSOR_LEFT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
            R_PAUSE_CURSOR_RIGHT_X += R_PAUSE_CURSOR_RIGHT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
            XREG(5) += 150 / R_PAUSE_UI_ANIMS_DURATION;
            pauseCtx->alpha += (u16)(255 / (R_PAUSE_UI_ANIMS_DURATION + R_PAUSE_UI_ANIM_ALPHA_ADD_DURATION));

            if (pauseCtx->rollRotPageItem == 0) {
                interfaceCtx->startAlpha = 255;
                R_PAUSE_OFFSET_VERTICAL = 0;
                pauseCtx->state = PAUSE_STATE_OPENING_2;
            }

            KaleidoScope_UpdateOpening(play);
            break;

        case PAUSE_STATE_OPENING_2:
            pauseCtx->alpha += (u16)(255 / (R_PAUSE_UI_ANIMS_DURATION + R_PAUSE_UI_ANIM_ALPHA_ADD_DURATION));
            KaleidoScope_UpdateOpening(play);

            if (pauseCtx->state == PAUSE_STATE_MAIN) {
                KaleidoScope_UpdateNamePanel(play);
            }
            break;

        case PAUSE_STATE_MAIN:
            switch (pauseCtx->mainState) {
                case PAUSE_MAIN_STATE_IDLE:
                    if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        pauseCtx->state = PAUSE_STATE_CLOSING;
                        R_PAUSE_OFFSET_VERTICAL = -6240;
                        func_800F64E0(0);
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        pauseCtx->nextPageMode = 0;
                        pauseCtx->promptChoice = 0;
                        Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_DISABLED;
                        gSaveContext.buttonStatus[4] = BTN_ENABLED;
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(50);
                        pauseCtx->savePromptSubState = PAUSE_SAVE_PROMPT_STATE_APPEARING;
                        pauseCtx->state = PAUSE_STATE_SAVE_PROMPT;
                    }
                    break;

                case PAUSE_MAIN_STATE_SWITCHING_PAGE:
                    KaleidoScope_UpdateSwitchPage(play, &play->state.input[0]);
                    break;

                case PAUSE_MAIN_STATE_SONG_PLAYBACK:
                    pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                    if (pauseCtx->ocarinaStaff->state == 0) {
                        // Song playback is finished
                        pauseCtx->mainState = PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_INIT;
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                    }
                    break;

                case PAUSE_MAIN_STATE_3:
                    KaleidoScope_UpdateItemEquip(play);
                    break;

                case PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_INIT:
                    break;

                case PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING:
                    pauseCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();

                    if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        pauseCtx->state = PAUSE_STATE_CLOSING;
                        R_PAUSE_OFFSET_VERTICAL = -6240;
                        func_800F64E0(0);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                        break;
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                        pauseCtx->nextPageMode = 0;
                        pauseCtx->promptChoice = 0;
                        Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_DISABLED;
                        gSaveContext.buttonStatus[4] = BTN_ENABLED;
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(50);
                        pauseCtx->savePromptSubState = PAUSE_SAVE_PROMPT_STATE_APPEARING;
                        pauseCtx->state = PAUSE_STATE_SAVE_PROMPT;
                    } else if (pauseCtx->ocarinaStaff->state == pauseCtx->ocarinaSongIdx) {
                        // The player successfully played the song

                        Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                        sMainStateAfterSongPlayerPlayingDone = PAUSE_MAIN_STATE_IDLE;
                        sDelayTimer = 30;
                        pauseCtx->mainState = PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_DONE;
                    } else if (pauseCtx->ocarinaStaff->state == 0xFF) {
                        // The player failed to play the song

                        Audio_PlaySfxGeneral(NA_SE_SY_OCARINA_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                        sMainStateAfterSongPlayerPlayingDone = PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_INIT;
                        sDelayTimer = 20;
                        pauseCtx->mainState = PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_DONE;
                    }
                    break;

                case PAUSE_MAIN_STATE_SONG_PLAYER_PLAYING_DONE:
                    sDelayTimer--;
                    if (sDelayTimer == 0) {
                        pauseCtx->mainState = sMainStateAfterSongPlayerPlayingDone;
                        if (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) {
                            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        }
                    }
                    break;

                case PAUSE_MAIN_STATE_7:
                    break;

                case PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG:
                    if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        pauseCtx->state = PAUSE_STATE_CLOSING;
                        R_PAUSE_OFFSET_VERTICAL = -6240;
                        func_800F64E0(0);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                        pauseCtx->nextPageMode = 0;
                        pauseCtx->promptChoice = 0;
                        Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_DISABLED;
                        gSaveContext.buttonStatus[4] = BTN_ENABLED;
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(50);
                        pauseCtx->savePromptSubState = PAUSE_SAVE_PROMPT_STATE_APPEARING;
                        pauseCtx->state = PAUSE_STATE_SAVE_PROMPT;
                    }
                    break;

                case PAUSE_MAIN_STATE_SONG_PLAYBACK_START:
                    break;

                default:
                    pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                    break;
            }
            break;

        case PAUSE_STATE_SAVE_PROMPT:
            switch (pauseCtx->savePromptSubState) {
                case PAUSE_SAVE_PROMPT_STATE_APPEARING:
                    pauseCtx->rollRotSavePrompt_ -= 314.0f / R_PAUSE_UI_ANIMS_DURATION;
                    R_PAUSE_CURSOR_LEFT_X -= R_PAUSE_CURSOR_LEFT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
                    R_PAUSE_CURSOR_RIGHT_X -= R_PAUSE_CURSOR_RIGHT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;

                    if (pauseCtx->rollRotSavePrompt_ <= -628.0f) {
                        pauseCtx->rollRotSavePrompt_ = -628.0f;
                        pauseCtx->savePromptSubState = PAUSE_SAVE_PROMPT_STATE_WAIT_CHOICE;
                    }
                    break;

                case PAUSE_SAVE_PROMPT_STATE_WAIT_CHOICE:
                    if (CHECK_BTN_ALL(input->press.button, BTN_A)) {
                        if (pauseCtx->promptChoice != 0) {
                            Interface_SetDoAction(play, DO_ACTION_NONE);

                            gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                                gSaveContext.buttonStatus[3] = BTN_ENABLED;
                            gSaveContext.unk_13EA = 0;
                            Interface_ChangeAlpha(50);

                            pauseCtx->savePromptSubState = PAUSE_SAVE_PROMPT_STATE_CLOSING;
                            R_PAUSE_OFFSET_VERTICAL = -6240;
                            YREG(8) = pauseCtx->rollRotSavePrompt_;
                            func_800F64E0(0);
                        } else {
                            Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultReverb);

                            Play_SaveSceneFlags(play);
                            gSaveContext.savedSceneId = play->sceneId;
                            Sram_WriteSave(&play->sramCtx);

                            pauseCtx->savePromptSubState = PAUSE_SAVE_PROMPT_STATE_SAVED;
                            sDelayTimer = 3;
                        }
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_START) ||
                               CHECK_BTN_ALL(input->press.button, BTN_B)) {

                        Interface_SetDoAction(play, DO_ACTION_NONE);

                        pauseCtx->savePromptSubState = PAUSE_SAVE_PROMPT_STATE_CLOSING;
                        R_PAUSE_OFFSET_VERTICAL = -6240;
                        YREG(8) = pauseCtx->rollRotSavePrompt_;
                        func_800F64E0(0);

                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_ENABLED;
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(50);
                    }
                    break;

                case PAUSE_SAVE_PROMPT_STATE_SAVED:
                    if (CHECK_BTN_ALL(input->press.button, BTN_B) || CHECK_BTN_ALL(input->press.button, BTN_A) ||
                        CHECK_BTN_ALL(input->press.button, BTN_START) || (--sDelayTimer == 0)) {

                        Interface_SetDoAction(play, DO_ACTION_NONE);

                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_ENABLED;
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(50);

                        pauseCtx->savePromptSubState = PAUSE_SAVE_PROMPT_STATE_CLOSING_AFTER_SAVED;
                        R_PAUSE_OFFSET_VERTICAL = -6240;
                        YREG(8) = pauseCtx->rollRotSavePrompt_;
                        func_800F64E0(0);
                    }
                    break;

                case PAUSE_SAVE_PROMPT_STATE_RETURN_TO_MENU:
                case PAUSE_SAVE_PROMPT_STATE_RETURN_TO_MENU_ALT:
                    pauseCtx->rollRotSavePrompt_ += 314.0f / R_PAUSE_UI_ANIMS_DURATION;
                    R_PAUSE_CURSOR_LEFT_X += R_PAUSE_CURSOR_LEFT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
                    R_PAUSE_CURSOR_RIGHT_X += R_PAUSE_CURSOR_RIGHT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;

                    if (pauseCtx->rollRotSavePrompt_ >= -314.0f) {
                        pauseCtx->state = PAUSE_STATE_MAIN;
                        pauseCtx->savePromptSubState = PAUSE_SAVE_PROMPT_STATE_APPEARING;
                        pauseCtx->rollRotPageItem = pauseCtx->rollRotPageEquip = pauseCtx->rollRotPageMap =
                            pauseCtx->rollRotPageQuest = 0.0f;
                        pauseCtx->rollRotSavePrompt_ = -314.0f;
                    }
                    break;

                case PAUSE_SAVE_PROMPT_STATE_CLOSING:
                case PAUSE_SAVE_PROMPT_STATE_CLOSING_AFTER_SAVED:
                    if (pauseCtx->rollRotSavePrompt_ != (YREG(8) + 160.0f)) {
                        pauseCtx->rollRotPageItem = pauseCtx->rollRotPageEquip = pauseCtx->rollRotPageMap =
                            pauseCtx->rollRotPageQuest += 160.0f / R_PAUSE_UI_ANIMS_DURATION;
                        pauseCtx->rollRotSavePrompt_ += 160.0f / R_PAUSE_UI_ANIMS_DURATION;
                        pauseCtx->infoPanelOffsetY -= 40 / R_PAUSE_UI_ANIMS_DURATION;
                        R_PAUSE_CURSOR_LEFT_X -= R_PAUSE_CURSOR_LEFT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
                        R_PAUSE_CURSOR_RIGHT_X -= R_PAUSE_CURSOR_RIGHT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
                        XREG(5) -= 150 / R_PAUSE_UI_ANIMS_DURATION;
                        pauseCtx->alpha -= (u16)(255 / R_PAUSE_UI_ANIMS_DURATION);
                        if (pauseCtx->rollRotSavePrompt_ == (YREG(8) + 160.0f)) {
                            pauseCtx->alpha = 0;
                        }
                    } else {
                        pauseCtx->debugState = 0;
                        pauseCtx->state = PAUSE_STATE_UNPAUSE;
                        pauseCtx->rollRotPageItem = pauseCtx->rollRotPageEquip = pauseCtx->rollRotPageMap =
                            pauseCtx->rollRotPageQuest = 160.0f;
                        pauseCtx->namedItem = PAUSE_ITEM_NONE;
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                        pauseCtx->rollRotSavePrompt_ = -434.0f;
                    }
                    break;
            }
            break;

        case PAUSE_STATE_10:
            pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_MAP] = pauseCtx->dungeonMapSlot =
                VREG(30) + 3;
            R_PAUSE_CURSOR_LEFT_X = -175;
            R_PAUSE_CURSOR_RIGHT_X = 155;
            pauseCtx->rollRotSavePrompt_ = -434.0f;
            Interface_ChangeAlpha(1);

            //! @bug messed up alignment, should match `ALIGN64`
            pauseCtx->iconItemSegment = (void*)(((uintptr_t)play->objectCtx.spaceStart + 0x30) & ~0x3F);
            iconItemStaticSize =
                (uintptr_t)_icon_item_staticSegmentRomEnd - (uintptr_t)_icon_item_staticSegmentRomStart;
            osSyncPrintf("icon_item size0=%x\n", iconItemStaticSize);
            DmaMgr_SendRequest1(pauseCtx->iconItemSegment, (uintptr_t)_icon_item_staticSegmentRomStart,
                                iconItemStaticSize, "../z_kaleido_scope_PAL.c", 4356);

            pauseCtx->iconItem24Segment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemSegment + iconItemStaticSize);
            size = (uintptr_t)_icon_item_24_staticSegmentRomEnd - (uintptr_t)_icon_item_24_staticSegmentRomStart;
            osSyncPrintf("icon_item24 size=%x\n", size);
            DmaMgr_SendRequest1(pauseCtx->iconItem24Segment, (uintptr_t)_icon_item_24_staticSegmentRomStart, size,
                                "../z_kaleido_scope_PAL.c", 4363);

            pauseCtx->iconItemAltSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItem24Segment + size);
            size2 = (uintptr_t)_icon_item_gameover_staticSegmentRomEnd -
                    (uintptr_t)_icon_item_gameover_staticSegmentRomStart;
            osSyncPrintf("icon_item_dungeon gameover-size2=%x\n", size2);
            DmaMgr_SendRequest1(pauseCtx->iconItemAltSegment, (uintptr_t)_icon_item_gameover_staticSegmentRomStart,
                                size2, "../z_kaleido_scope_PAL.c", 4370);

            pauseCtx->iconItemLangSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemAltSegment + size2);

            if (gSaveContext.language == LANGUAGE_ENG) {
                size = (uintptr_t)_icon_item_nes_staticSegmentRomEnd - (uintptr_t)_icon_item_nes_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_nes_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 4379);
            } else if (gSaveContext.language == LANGUAGE_GER) {
                size = (uintptr_t)_icon_item_ger_staticSegmentRomEnd - (uintptr_t)_icon_item_ger_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_ger_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 4386);
            } else {
                size = (uintptr_t)_icon_item_fra_staticSegmentRomEnd - (uintptr_t)_icon_item_fra_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_fra_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 4393);
            }

            sColor82ABRed_D_8082AB8C = 255;
            sColor82ABGreen_D_8082AB90 = 130;
            sColor82ABBlue_D_8082AB94 = 0;
            sColor82ABGameOverPrimAlpha_D_8082AB98 = 0;
            sDrawGameOverEnvColorRed_D_8082AB9C = 30;
            sDrawGameOverEnvColorGreen_D_8082ABA0 = 0;
            sDrawGameOverEnvColorBlue_D_8082ABA4 = 0;
            sTimer_ = 30;
            VREG(88) = 98;
            pauseCtx->promptChoice = 0;
            pauseCtx->state++; // PAUSE_STATE_11
            break;

        case PAUSE_STATE_11:
            stepR = ABS(sColor82ABRed_D_8082AB8C - 30) / sTimer_;
            stepG = ABS(sColor82ABGreen_D_8082AB90) / sTimer_;
            stepB = ABS(sColor82ABBlue_D_8082AB94) / sTimer_;
            stepA = ABS(sColor82ABGameOverPrimAlpha_D_8082AB98 - 255) / sTimer_;
            if (sColor82ABRed_D_8082AB8C >= 30) {
                sColor82ABRed_D_8082AB8C -= stepR;
            } else {
                sColor82ABRed_D_8082AB8C += stepR;
            }
            if (sColor82ABGreen_D_8082AB90 >= 0) {
                sColor82ABGreen_D_8082AB90 -= stepG;
            } else {
                sColor82ABGreen_D_8082AB90 += stepG;
            }
            if (sColor82ABBlue_D_8082AB94 >= 0) {
                sColor82ABBlue_D_8082AB94 -= stepB;
            } else {
                sColor82ABBlue_D_8082AB94 += stepB;
            }
            if (sColor82ABGameOverPrimAlpha_D_8082AB98 >= 255) {
                sColor82ABGameOverPrimAlpha_D_8082AB98 -= stepA;
            } else {
                sColor82ABGameOverPrimAlpha_D_8082AB98 += stepA;
            }

            stepR = ABS(sDrawGameOverEnvColorRed_D_8082AB9C - 255) / sTimer_;
            stepG = ABS(sDrawGameOverEnvColorGreen_D_8082ABA0 - 130) / sTimer_;
            stepB = ABS(sDrawGameOverEnvColorBlue_D_8082ABA4) / sTimer_;
            if (sDrawGameOverEnvColorRed_D_8082AB9C >= 255) {
                sDrawGameOverEnvColorRed_D_8082AB9C -= stepR;
            } else {
                sDrawGameOverEnvColorRed_D_8082AB9C += stepR;
            }
            if (sDrawGameOverEnvColorGreen_D_8082ABA0 >= 130) {
                sDrawGameOverEnvColorGreen_D_8082ABA0 -= stepG;
            } else {
                sDrawGameOverEnvColorGreen_D_8082ABA0 += stepG;
            }
            if (sDrawGameOverEnvColorBlue_D_8082ABA4 >= 0) {
                sDrawGameOverEnvColorBlue_D_8082ABA4 -= stepB;
            } else {
                sDrawGameOverEnvColorBlue_D_8082ABA4 += stepB;
            }

            sTimer_--;
            if (sTimer_ == 0) {
                sColor82ABRed_D_8082AB8C = 30;
                sColor82ABGreen_D_8082AB90 = 0;
                sColor82ABBlue_D_8082AB94 = 0;
                sColor82ABGameOverPrimAlpha_D_8082AB98 = 255;

                sDrawGameOverEnvColorRed_D_8082AB9C = 255;
                sDrawGameOverEnvColorGreen_D_8082ABA0 = 130;
                sDrawGameOverEnvColorBlue_D_8082ABA4 = 0;

                pauseCtx->state++; // PAUSE_STATE_12
                sTimer_ = 40;
            }
            break;

        case PAUSE_STATE_12:
            sTimer_--;
            if (sTimer_ == 0) {
                pauseCtx->state = PAUSE_STATE_13;
            }
            break;

        case PAUSE_STATE_13:
            pauseCtx->rollRotPageItem = pauseCtx->rollRotPageEquip = pauseCtx->rollRotPageMap =
                pauseCtx->rollRotPageQuest = pauseCtx->rollRotSavePrompt_ -= 160.0f / R_PAUSE_UI_ANIMS_DURATION;
            pauseCtx->infoPanelOffsetY += 40 / R_PAUSE_UI_ANIMS_DURATION;
            interfaceCtx->startAlpha += 255 / R_PAUSE_UI_ANIMS_DURATION;
            VREG(88) -= 3;
            R_PAUSE_CURSOR_LEFT_X += R_PAUSE_CURSOR_LEFT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
            R_PAUSE_CURSOR_RIGHT_X += R_PAUSE_CURSOR_RIGHT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
            XREG(5) += 150 / R_PAUSE_UI_ANIMS_DURATION;
            pauseCtx->alpha += (u16)(255 / (R_PAUSE_UI_ANIMS_DURATION + R_PAUSE_UI_ANIM_ALPHA_ADD_DURATION));
            if (pauseCtx->rollRotSavePrompt_ < -628.0f) {
                pauseCtx->rollRotSavePrompt_ = -628.0f;
                interfaceCtx->startAlpha = 255;
                VREG(88) = 66;
                R_PAUSE_OFFSET_VERTICAL = 0;
                pauseCtx->alpha = 255;
                pauseCtx->state = PAUSE_STATE_14;
                gSaveContext.deaths++;
                if (gSaveContext.deaths > 999) {
                    gSaveContext.deaths = 999;
                }
            }
            osSyncPrintf("kscope->angle_s = %f\n", pauseCtx->rollRotSavePrompt_);
            break;

        case PAUSE_STATE_14:
            if (CHECK_BTN_ALL(input->press.button, BTN_A)) {
                if (pauseCtx->promptChoice != 0) {
                    pauseCtx->promptChoice = 0;
                    Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    pauseCtx->state = PAUSE_STATE_16;
                    gameOverCtx->state++;
                } else {
                    Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    pauseCtx->promptChoice = 0;
                    Play_SaveSceneFlags(play);
                    gSaveContext.savedSceneId = play->sceneId;
                    Sram_WriteSave(&play->sramCtx);
                    pauseCtx->state = PAUSE_STATE_15;
                    sDelayTimer = 3;
                }
            }
            break;

        case PAUSE_STATE_15:
            sDelayTimer--;
            if (sDelayTimer == 0) {
                pauseCtx->state = PAUSE_STATE_16;
                gameOverCtx->state++;
            } else if ((sDelayTimer <= 80) &&
                       (CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_START))) {
                pauseCtx->state = PAUSE_STATE_16;
                gameOverCtx->state++;
                func_800F64E0(0);
            }
            break;

        case PAUSE_STATE_16:
            if (CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_START)) {
                if (pauseCtx->promptChoice == 0) {
                    Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    Play_SaveSceneFlags(play);

                    switch (gSaveContext.entranceIndex) {
                        case ENTR_YDAN_0:
                        case ENTR_DDAN_0:
                        case ENTR_BDAN_0:
                        case ENTR_BMORI1_0:
                        case ENTR_HIDAN_0:
                        case ENTR_MIZUSIN_0:
                        case ENTR_JYASINZOU_0:
                        case ENTR_HAKADAN_0:
                        case ENTR_GANON_0:
                        case ENTR_MEN_0:
                        case ENTR_ICE_DOUKUTO_0:
                        case ENTR_GERUDOWAY_0:
                        case ENTR_HAKADANCH_0:
                        case ENTR_GANONTIKA_0:
                        case ENTR_GANON_SONOGO_0:
                            break;

                        case ENTR_YDAN_BOSS_0:
                            gSaveContext.entranceIndex = ENTR_YDAN_0;
                            break;

                        case ENTR_DDAN_BOSS_0:
                            gSaveContext.entranceIndex = ENTR_DDAN_0;
                            break;

                        case ENTR_BDAN_BOSS_0:
                            gSaveContext.entranceIndex = ENTR_BDAN_0;
                            break;

                        case ENTR_MORIBOSSROOM_0:
                            gSaveContext.entranceIndex = ENTR_BMORI1_0;
                            break;

                        case ENTR_FIRE_BS_0:
                            gSaveContext.entranceIndex = ENTR_HIDAN_0;
                            break;

                        case ENTR_MIZUSIN_BS_0:
                            gSaveContext.entranceIndex = ENTR_MIZUSIN_0;
                            break;

                        case ENTR_JYASINBOSS_0:
                            gSaveContext.entranceIndex = ENTR_JYASINZOU_0;
                            break;

                        case ENTR_HAKADAN_BS_0:
                            gSaveContext.entranceIndex = ENTR_HAKADAN_0;
                            break;

                        case ENTR_GANON_BOSS_0:
                            gSaveContext.entranceIndex = ENTR_GANON_0;
                            break;
                    }
                } else {
                    Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }

                pauseCtx->state = PAUSE_STATE_17;
            }
            break;

        case PAUSE_STATE_17:
            if (interfaceCtx->unk_244 != 255) {
                interfaceCtx->unk_244 += 10;
                if (interfaceCtx->unk_244 >= 255) {
                    interfaceCtx->unk_244 = 255;
                    pauseCtx->state = PAUSE_STATE_OFF;
                    R_UPDATE_RATE = 3;
                    R_PAUSE_BG_PRERENDER_STATE = PAUSE_BG_PRERENDER_OFF;
                    func_800981B8(&play->objectCtx);
                    func_800418D0(&play->colCtx, play);
                    if (pauseCtx->promptChoice == 0) {
                        Play_TriggerRespawn(play);
                        gSaveContext.respawnFlag = -2;
                        gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                        gSaveContext.health = 0x30;
                        SEQCMD_RESET_AUDIO_HEAP(0, 10);
                        gSaveContext.healthAccumulator = 0;
                        gSaveContext.magicState = MAGIC_STATE_IDLE;
                        gSaveContext.prevMagicState = MAGIC_STATE_IDLE;
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        osSyncPrintf("MAGIC_NOW=%d ", gSaveContext.magic);
                        osSyncPrintf("Z_MAGIC_NOW_NOW=%d   →  ", gSaveContext.magicFillTarget);
                        gSaveContext.magicCapacity = 0;
                        // Set the fill target to be the magic amount before game over
                        gSaveContext.magicFillTarget = gSaveContext.magic;
                        // Set `magicLevel` and `magic` to 0 so `magicCapacity` then `magic` grows from nothing
                        // to respectively the full capacity and `magicFillTarget`
                        gSaveContext.magicLevel = gSaveContext.magic = 0;
                        osSyncPrintf("MAGIC_NOW=%d ", gSaveContext.magic);
                        osSyncPrintf("Z_MAGIC_NOW_NOW=%d\n", gSaveContext.magicFillTarget);
                        osSyncPrintf(VT_RST);
                    } else {
                        play->state.running = false;
                        SET_NEXT_GAMESTATE(&play->state, TitleSetup_Init, TitleSetupState);
                    }
                }
            }
            break;

        case PAUSE_STATE_CLOSING:
            if (pauseCtx->rollRotPageItem != 160.0f) {
                pauseCtx->rollRotPageItem = pauseCtx->rollRotPageEquip = pauseCtx->rollRotPageMap =
                    pauseCtx->rollRotPageQuest += 160.0f / R_PAUSE_UI_ANIMS_DURATION;
                pauseCtx->infoPanelOffsetY -= 40 / R_PAUSE_UI_ANIMS_DURATION;
                interfaceCtx->startAlpha -= 255 / R_PAUSE_UI_ANIMS_DURATION;
                R_PAUSE_CURSOR_LEFT_X -= R_PAUSE_CURSOR_LEFT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
                R_PAUSE_CURSOR_RIGHT_X -= R_PAUSE_CURSOR_RIGHT_MOVE_OFFSET_X / R_PAUSE_UI_ANIMS_DURATION;
                XREG(5) -= 150 / R_PAUSE_UI_ANIMS_DURATION;
                pauseCtx->alpha -= (u16)(255 / R_PAUSE_UI_ANIMS_DURATION);
                if (pauseCtx->rollRotPageItem == 160.0f) {
                    pauseCtx->alpha = 0;
                }
            } else {
                pauseCtx->debugState = 0;
                pauseCtx->state = PAUSE_STATE_UNPAUSE;
                pauseCtx->rollRotPageItem = pauseCtx->rollRotPageEquip = pauseCtx->rollRotPageMap =
                    pauseCtx->rollRotPageQuest = 160.0f;
                pauseCtx->namedItem = PAUSE_ITEM_NONE;
                play->interfaceCtx.startAlpha = 0;
            }
            break;

        case PAUSE_STATE_UNPAUSE:
            pauseCtx->state = PAUSE_STATE_OFF;
            R_UPDATE_RATE = 3;
            R_PAUSE_BG_PRERENDER_STATE = PAUSE_BG_PRERENDER_OFF;

            func_800981B8(&play->objectCtx);
            func_800418D0(&play->colCtx, play);

            switch (play->sceneId) {
                case SCENE_YDAN:
                case SCENE_DDAN:
                case SCENE_BDAN:
                case SCENE_BMORI1:
                case SCENE_HIDAN:
                case SCENE_MIZUSIN:
                case SCENE_JYASINZOU:
                case SCENE_HAKADAN:
                case SCENE_HAKADANCH:
                case SCENE_ICE_DOUKUTO:
                case SCENE_YDAN_BOSS:
                case SCENE_DDAN_BOSS:
                case SCENE_BDAN_BOSS:
                case SCENE_MORIBOSSROOM:
                case SCENE_FIRE_BS:
                case SCENE_MIZUSIN_BS:
                case SCENE_JYASINBOSS:
                case SCENE_HAKADAN_BS:
                    Map_InitData(play, play->interfaceCtx.mapRoomNum);
                    break;
            }

            gSaveContext.buttonStatus[0] = D_808321A8_savedButtonStatus[0];
            gSaveContext.buttonStatus[1] = D_808321A8_savedButtonStatus[1];
            gSaveContext.buttonStatus[2] = D_808321A8_savedButtonStatus[2];
            gSaveContext.buttonStatus[3] = D_808321A8_savedButtonStatus[3];
            gSaveContext.buttonStatus[4] = D_808321A8_savedButtonStatus[4];

            interfaceCtx->unk_1FA = interfaceCtx->unk_1FC = 0;

            osSyncPrintf(VT_FGCOL(YELLOW));
            osSyncPrintf("i=%d  LAST_TIME_TYPE=%d\n", i, gSaveContext.unk_13EE);

            gSaveContext.unk_13EA = 0;
            Interface_ChangeAlpha(gSaveContext.unk_13EE);

            player->targetActor = NULL;
            Player_SetEquipmentData(play, player);

            osSyncPrintf(VT_RST);
            break;
    }
}
