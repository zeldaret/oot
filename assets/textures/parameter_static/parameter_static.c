#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "parameter_static.h"

u64 gHeartEmptyTex[] = {
#include "assets/textures/parameter_static/heart_empty.ia8.inc.c"
};

u64 gHeartQuarterTex[] = {
#include "assets/textures/parameter_static/heart_quarter.ia8.inc.c"
};

u64 gHeartHalfTex[] = {
#include "assets/textures/parameter_static/heart_half.ia8.inc.c"
};

u64 gHeartThreeQuarterTex[] = {
#include "assets/textures/parameter_static/heart_three_quarter.ia8.inc.c"
};

u64 gHeartFullTex[] = {
#include "assets/textures/parameter_static/heart_full.ia8.inc.c"
};

u64 gDefenseHeartEmptyTex[] = {
#include "assets/textures/parameter_static/defense_heart_empty.ia8.inc.c"
};

u64 gDefenseHeartQuarterTex[] = {
#include "assets/textures/parameter_static/defense_heart_quarter.ia8.inc.c"
};

u64 gDefenseHeartHalfTex[] = {
#include "assets/textures/parameter_static/defense_heart_half.ia8.inc.c"
};

u64 gDefenseHeartThreeQuarterTex[] = {
#include "assets/textures/parameter_static/defense_heart_three_quarter.ia8.inc.c"
};

u64 gDefenseHeartFullTex[] = {
#include "assets/textures/parameter_static/defense_heart_full.ia8.inc.c"
};

u64 gButtonBackgroundTex[] = {
#include "assets/textures/parameter_static/button_background.ia8.inc.c"
};

u64 gEquippedItemOutlineTex[] = {
#include "assets/textures/parameter_static/equipped_item_outline.ia8.inc.c"
};

u64 gEmptyCLeftArrowTex[] = {
#include "assets/textures/parameter_static/empty_c_left_arrow.ia8.inc.c"
};

u64 gEmptyCDownArrowTex[] = {
#include "assets/textures/parameter_static/empty_c_down_arrow.ia8.inc.c"
};

u64 gEmptyCRightArrowTex[] = {
#include "assets/textures/parameter_static/empty_c_right_arrow.ia8.inc.c"
};

u64 gSmallKeyCounterIconTex[] = {
#include "assets/textures/parameter_static/small_key_counter_icon.ia8.inc.c"
};

u64 gRupeeCounterIconTex[] = {
#include "assets/textures/parameter_static/rupee_counter_icon.ia8.inc.c"
};

u64 gClockIconTex[] = {
#include "assets/textures/parameter_static/clock_icon.ia8.inc.c"
};

u64 gCarrotIconTex[] = {
#include "assets/textures/parameter_static/carrot_icon.rgba32.inc.c"
};

u64 gMapDungeonEntranceIconTex[] = {
#include "assets/textures/parameter_static/map_dungeon_entrance_icon.rgba16.inc.c"
};

u64 gMapChestIconTex[] = {
#include "assets/textures/parameter_static/map_chest_icon.rgba16.inc.c"
};

u64 gArcheryScoreIconTex[] = {
#include "assets/textures/parameter_static/archery_score_icon.rgba16.inc.c"
};

u64 gMapBossIconTex[] = {
#include "assets/textures/parameter_static/map_boss_icon.ia8.inc.c"
};

u64 gOcarinaATex[] = {
#include "assets/textures/parameter_static/ocarina_a.ia8.inc.c"
};

u64 gOcarinaCDownTex[] = {
#include "assets/textures/parameter_static/ocarina_c_down.ia8.inc.c"
};

u64 gOcarinaCRightTex[] = {
#include "assets/textures/parameter_static/ocarina_c_right.ia8.inc.c"
};

u64 gOcarinaCLeftTex[] = {
#include "assets/textures/parameter_static/ocarina_c_left.ia8.inc.c"
};

u64 gOcarinaCUpTex[] = {
#include "assets/textures/parameter_static/ocarina_c_up.ia8.inc.c"
};

u64 gOcarinaTrebleClefTex[] = {
#include "assets/textures/parameter_static/ocarina_treble_clef.i4.inc.c"
};

u64 gNaviCUpJPTex[] = {
#include "assets/textures/parameter_static/navi_c_up_jp.ia4.inc.c"
};

u64 gNaviCUpENGTex[] = {
#include "assets/textures/parameter_static/navi_c_up_eng.ia4.inc.c"
};

u64 gCounterDigit0Tex[] = {
#include "assets/textures/parameter_static/counter_digit_0.i8.inc.c"
};

u64 gCounterDigit1Tex[] = {
#include "assets/textures/parameter_static/counter_digit_1.i8.inc.c"
};

u64 gCounterDigit2Tex[] = {
#include "assets/textures/parameter_static/counter_digit_2.i8.inc.c"
};

u64 gCounterDigit3Tex[] = {
#include "assets/textures/parameter_static/counter_digit_3.i8.inc.c"
};

u64 gCounterDigit4Tex[] = {
#include "assets/textures/parameter_static/counter_digit_4.i8.inc.c"
};

u64 gCounterDigit5Tex[] = {
#include "assets/textures/parameter_static/counter_digit_5.i8.inc.c"
};

u64 gCounterDigit6Tex[] = {
#include "assets/textures/parameter_static/counter_digit_6.i8.inc.c"
};

u64 gCounterDigit7Tex[] = {
#include "assets/textures/parameter_static/counter_digit_7.i8.inc.c"
};

u64 gCounterDigit8Tex[] = {
#include "assets/textures/parameter_static/counter_digit_8.i8.inc.c"
};

u64 gCounterDigit9Tex[] = {
#include "assets/textures/parameter_static/counter_digit_9.i8.inc.c"
};

u64 gCounterColonTex[] = {
#include "assets/textures/parameter_static/counter_colon.i8.inc.c"
};

u64 gAmmoDigit0Tex[] = {
#include "assets/textures/parameter_static/ammo_digit_0.ia8.inc.c"
};

u64 gAmmoDigit1Tex[] = {
#include "assets/textures/parameter_static/ammo_digit_1.ia8.inc.c"
};

u64 gAmmoDigit2Tex[] = {
#include "assets/textures/parameter_static/ammo_digit_2.ia8.inc.c"
};

u64 gAmmoDigit3Tex[] = {
#include "assets/textures/parameter_static/ammo_digit_3.ia8.inc.c"
};

u64 gAmmoDigit4Tex[] = {
#include "assets/textures/parameter_static/ammo_digit_4.ia8.inc.c"
};

u64 gAmmoDigit5Tex[] = {
#include "assets/textures/parameter_static/ammo_digit_5.ia8.inc.c"
};

u64 gAmmoDigit6Tex[] = {
#include "assets/textures/parameter_static/ammo_digit_6.ia8.inc.c"
};

u64 gAmmoDigit7Tex[] = {
#include "assets/textures/parameter_static/ammo_digit_7.ia8.inc.c"
};

u64 gAmmoDigit8Tex[] = {
#include "assets/textures/parameter_static/ammo_digit_8.ia8.inc.c"
};

u64 gAmmoDigit9Tex[] = {
#include "assets/textures/parameter_static/ammo_digit_9.ia8.inc.c"
};

u64 gUnusedAmmoDigitHalfTex[] = {
#include "assets/textures/parameter_static/unused_ammo_digit_half.ia8.inc.c"
};

u64 gMagicMeterEndTex[] = {
#include "assets/textures/parameter_static/magic_meter_end.ia8.inc.c"
};

u64 gMagicMeterMidTex[] = {
#include "assets/textures/parameter_static/magic_meter_mid.ia8.inc.c"
};

u64 gMagicMeterFillTex[] = {
#include "assets/textures/parameter_static/magic_meter_fill.ia8.inc.c"
};

