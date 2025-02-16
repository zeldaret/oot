#ifndef Z64SAVE_H
#define Z64SAVE_H

#include "ultra64.h"
#include "versions.h"
#include "z64inventory.h"
#include "z64math.h"

typedef enum SoundSetting {
    /* 0 */ SOUND_SETTING_STEREO,
    /* 1 */ SOUND_SETTING_MONO,
    /* 2 */ SOUND_SETTING_HEADSET,
    /* 3 */ SOUND_SETTING_SURROUND
} SoundSetting;

typedef enum ZTargetSetting {
    /* 0 */ Z_TARGET_SETTING_SWITCH,
    /* 1 */ Z_TARGET_SETTING_HOLD
} ZTargetSetting;

typedef enum Language {
#if OOT_NTSC
    /* 0 */ LANGUAGE_JPN,
    /* 1 */ LANGUAGE_ENG,
#else
    /* 0 */ LANGUAGE_ENG,
    /* 1 */ LANGUAGE_GER,
    /* 2 */ LANGUAGE_FRA,
#endif
    /*   */ LANGUAGE_MAX
} Language;

// `_FORCE` means that this request will respond to `forceRisingButtonAlphas`.
// If set, the buttons will also raise alphas but will also account for disabled buttons

typedef enum HudVisibilityMode {
    /*  0 */ HUD_VISIBILITY_NO_CHANGE,
    /*  1 */ HUD_VISIBILITY_NOTHING,
    /*  2 */ HUD_VISIBILITY_NOTHING_ALT, // Identical to HUD_VISIBILITY_NOTHING
    /*  3 */ HUD_VISIBILITY_HEARTS_FORCE, // See above
    /*  4 */ HUD_VISIBILITY_A,
    /*  5 */ HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE, // See above
    /*  6 */ HUD_VISIBILITY_A_HEARTS_MAGIC_MINIMAP_FORCE, // See above
    /*  7 */ HUD_VISIBILITY_ALL_NO_MINIMAP_BY_BTN_STATUS, // Only raises button alphas if not disabled
    /*  8 */ HUD_VISIBILITY_B,
    /*  9 */ HUD_VISIBILITY_HEARTS_MAGIC,
    /* 10 */ HUD_VISIBILITY_B_ALT, // Identical to HUD_VISIBILITY_B
    /* 11 */ HUD_VISIBILITY_HEARTS,
    /* 12 */ HUD_VISIBILITY_A_B_MINIMAP,
    /* 13 */ HUD_VISIBILITY_HEARTS_MAGIC_FORCE, // See above
    /* 50 */ HUD_VISIBILITY_ALL = 50, // Only raises button alphas if not disabled
    /* 52 */ HUD_VISIBILITY_NOTHING_INSTANT = 52
} HudVisibilityMode;

typedef enum MagicState {
    /* 0x0 */ MAGIC_STATE_IDLE, // Regular gameplay
    /* 0x1 */ MAGIC_STATE_CONSUME_SETUP, // Sets the speed at which magic border flashes
    /* 0x2 */ MAGIC_STATE_CONSUME, // Consume magic until target is reached or no more magic is available
    /* 0x3 */ MAGIC_STATE_METER_FLASH_1, // Flashes border and freezes Dark Link
    /* 0x4 */ MAGIC_STATE_METER_FLASH_2, // Flashes border and draws yellow magic to preview target consumption
    /* 0x5 */ MAGIC_STATE_RESET, // Reset colors and return to idle
    /* 0x6 */ MAGIC_STATE_METER_FLASH_3, // Flashes border with no additional behaviour
    /* 0x7 */ MAGIC_STATE_CONSUME_LENS, // Magic slowly consumed by lens.
    /* 0x8 */ MAGIC_STATE_STEP_CAPACITY, // Step `magicCapacity` to full capacity
    /* 0x9 */ MAGIC_STATE_FILL, // Add magic until magicFillTarget is reached.
    /* 0xA */ MAGIC_STATE_ADD // Add requested magic
} MagicState;

typedef enum MagicChangeType {
    /* 0 */ MAGIC_CONSUME_NOW, // Consume Magic immediately without preview
    /* 1 */ MAGIC_CONSUME_WAIT_NO_PREVIEW, // Sets consume target but waits to consume. No yellow magic preview to target consumption. Unused
    /* 2 */ MAGIC_CONSUME_NOW_ALT, // Identical behaviour to MAGIC_CONSUME_NOW. Unused
    /* 3 */ MAGIC_CONSUME_LENS, // Lens consumption
    /* 4 */ MAGIC_CONSUME_WAIT_PREVIEW, // Sets consume target but waits to consume. Draws yellow magic to target consumption
    /* 5 */ MAGIC_ADD // Sets a target to add magic
} MagicChangeType;

#define MAGIC_NORMAL_METER 0x30
#define MAGIC_DOUBLE_METER (2 * MAGIC_NORMAL_METER)

typedef struct ItemEquips {
    /* 0x00 */ u8 buttonItems[4];
    /* 0x04 */ u8 cButtonSlots[3];
    /* 0x08 */ u16 equipment; // a mask where each nibble corresponds to a type of equipment `EquipmentType`, and each nibble is a piece `EquipValue*`
} ItemEquips; // size = 0x0A

typedef struct Inventory {
    /* 0x00 */ u8 items[24];
    /* 0x18 */ s8 ammo[16];
    /* 0x28 */ u16 equipment; // a mask where each nibble corresponds to a type of equipment `EquipmentType`, and each bit to an owned piece `EquipInv*`
    /* 0x2C */ u32 upgrades;
    /* 0x30 */ u32 questItems;
    /* 0x34 */ u8 dungeonItems[20];
    /* 0x48 */ s8 dungeonKeys[19];
    /* 0x5B */ s8 defenseHearts;
    /* 0x5C */ s16 gsTokens;
} Inventory; // size = 0x5E

typedef struct Checksum {
    /* 0x00 */ u16 value;
} Checksum; // size = 0x02

typedef struct SavedSceneFlags {
    /* 0x00 */ u32 chest;
    /* 0x04 */ u32 swch;
    /* 0x08 */ u32 clear;
    /* 0x0C */ u32 collect;
    /* 0x10 */ u32 unk;
    /* 0x14 */ u32 rooms;
    /* 0x18 */ u32 floors;
} SavedSceneFlags; // size = 0x1C

typedef struct HorseData {
    /* 0x00 */ s16 sceneId;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ s16 angle;
} HorseData; // size = 0x0A

/**
 * The respawn mode names refer to the perceived player movement when respawning
 * "down": being on ground
 * "return": coming from the ground
 * "top": coming from the air
 */
typedef enum RespawnMode {
    /* 0x00 */ RESPAWN_MODE_DOWN,   /* Normal Void Outs */
    /* 0x01 */ RESPAWN_MODE_RETURN, /* Grotto Returnpoints */
    /* 0x02 */ RESPAWN_MODE_TOP,    /* Farore's Wind */
    /* 0x03 */ RESPAWN_MODE_MAX
} RespawnMode;

typedef struct RespawnData {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ s16 yaw;
    /* 0x0E */ s16 playerParams;
    /* 0x10 */ s16 entranceIndex;
    /* 0x12 */ u8 roomIndex;
    /* 0x13 */ s8 data;
    /* 0x14 */ u32 tempSwchFlags;
    /* 0x18 */ u32 tempCollectFlags;
} RespawnData; // size = 0x1C

typedef struct FaroresWindData {
    /* 0x00 */ Vec3i pos;
    /* 0x0C */ s32 yaw;
    /* 0x10 */ s32 playerParams;
    /* 0x14 */ s32 entranceIndex;
    /* 0x18 */ s32 roomIndex;
    /* 0x1C */ s32 set;
    /* 0x20 */ s32 tempSwchFlags;
    /* 0x24 */ s32 tempCollectFlags;
} FaroresWindData; // size = 0x28

typedef enum TimerState {
    /* 0x0 */ TIMER_STATE_OFF,
    /* 0x1 */ TIMER_STATE_ENV_HAZARD_INIT, // Init env timer that counts down, total time based on health, resets on void-out, kills at 0
    /* 0x2 */ TIMER_STATE_ENV_HAZARD_PREVIEW, // Display initial time, keep it fixed at the screen center
    /* 0x3 */ TIMER_STATE_ENV_HAZARD_MOVE, // Move to top-left corner
    /* 0x4 */ TIMER_STATE_ENV_HAZARD_TICK, // Counting down
    /* 0x5 */ TIMER_STATE_DOWN_INIT, // Init timer that counts down
    /* 0x6 */ TIMER_STATE_DOWN_PREVIEW, // Display initial time, keep it fixed at the screen center
    /* 0x7 */ TIMER_STATE_DOWN_MOVE, // Move to top-left corner
    /* 0x8 */ TIMER_STATE_DOWN_TICK, // Counting down
    /* 0xA */ TIMER_STATE_STOP = 10,
    /* 0xB */ TIMER_STATE_UP_INIT, // Init timer that counts up
    /* 0xC */ TIMER_STATE_UP_PREVIEW, // Display initial time, keep it fixed at the screen center
    /* 0xD */ TIMER_STATE_UP_MOVE, // Move to top-left corner
    /* 0xE */ TIMER_STATE_UP_TICK, // Counting up
    /* 0xF */ TIMER_STATE_UP_FREEZE  // Stop counting the timer
} TimerState;

typedef enum SubTimerState {
    /* 0x0 */ SUBTIMER_STATE_OFF,
    /* 0x1 */ SUBTIMER_STATE_DOWN_INIT, // Init timer that counts down
    /* 0x2 */ SUBTIMER_STATE_DOWN_PREVIEW, // Display initial time, keep it fixed at the screen center
    /* 0x3 */ SUBTIMER_STATE_DOWN_MOVE, // Move to top-left corner
    /* 0x4 */ SUBTIMER_STATE_DOWN_TICK, // Counting down
    /* 0x5 */ SUBTIMER_STATE_RESPAWN, // Time is up, trigger a transition, reset button items, spoil trade quest items
    /* 0x6 */ SUBTIMER_STATE_STOP, // Time is up, stop counting
    /* 0x7 */ SUBTIMER_STATE_UP_INIT, // Init timer that counts up
    /* 0x8 */ SUBTIMER_STATE_UP_PREVIEW, // Display initial time, keep it fixed at the screen center
    /* 0x9 */ SUBTIMER_STATE_UP_MOVE, // Move to top-left corner
    /* 0xA */ SUBTIMER_STATE_UP_TICK // Counting up
} SubTimerState;

typedef enum TimerId {
    /* 0 */ TIMER_ID_MAIN, // Takes priority in both counting and drawing. See `timerState` and `timerSeconds`
    /* 1 */ TIMER_ID_SUB, // See `subTimerState` and `subTimerSeconds`
    /* 2 */ TIMER_ID_MAX
} TimerId;

#define MARATHON_TIME_LIMIT 240 // 4 minutes

#define ENV_HAZARD_TEXT_TRIGGER_HOTROOM (1 << 0)
#define ENV_HAZARD_TEXT_TRIGGER_UNDERWATER (1 << 1)

typedef enum WorldMapArea {
    /*  0 */ WORLD_MAP_AREA_HYRULE_FIELD,
    /*  1 */ WORLD_MAP_AREA_KAKARIKO_VILLAGE,
    /*  2 */ WORLD_MAP_AREA_GRAVEYARD,
    /*  3 */ WORLD_MAP_AREA_ZORAS_RIVER,
    /*  4 */ WORLD_MAP_AREA_KOKIRI_FOREST,
    /*  5 */ WORLD_MAP_AREA_SACRED_FOREST_MEADOW,
    /*  6 */ WORLD_MAP_AREA_LAKE_HYLIA,
    /*  7 */ WORLD_MAP_AREA_ZORAS_DOMAIN,
    /*  8 */ WORLD_MAP_AREA_ZORAS_FOUNTAIN,
    /*  9 */ WORLD_MAP_AREA_GERUDO_VALLEY,
    /* 10 */ WORLD_MAP_AREA_LOST_WOODS,
    /* 11 */ WORLD_MAP_AREA_DESERT_COLOSSUS,
    /* 12 */ WORLD_MAP_AREA_GERUDOS_FORTRESS,
    /* 13 */ WORLD_MAP_AREA_HAUNTED_WASTELAND,
    /* 14 */ WORLD_MAP_AREA_MARKET,
    /* 15 */ WORLD_MAP_AREA_HYRULE_CASTLE,
    /* 16 */ WORLD_MAP_AREA_DEATH_MOUNTAIN_TRAIL,
    /* 17 */ WORLD_MAP_AREA_DEATH_MOUNTAIN_CRATER,
    /* 18 */ WORLD_MAP_AREA_GORON_CITY,
    /* 19 */ WORLD_MAP_AREA_LON_LON_RANCH,
    /* 20 */ WORLD_MAP_AREA_QUESTION_MARK, // Windmill/Dampé's Grave (and a Lon Lon Ranch cutscene). Labeled as "?"
    /* 21 */ WORLD_MAP_AREA_GANONS_CASTLE,
    /* 22 */ WORLD_MAP_AREA_MAX // also grottos and fairy's/great fairy's fountains (scenes with varying locations)
} WorldMapArea;

// offsets in SavePlayerData and SaveContext/Save
typedef struct SavePlayerData {
    /* 0x00  0x001C */ char newf[6]; // string "ZELDAZ"
    /* 0x06  0x0022 */ u16 deaths;
    /* 0x08  0x0024 */ u8 playerName[8];
    /* 0x10  0x002C */ s16 n64ddFlag;
    /* 0x12  0x002E */ s16 healthCapacity; // "max_life"
    /* 0x14  0x0030 */ s16 health; // "now_life"
    /* 0x16  0x0032 */ s8 magicLevel; // 0 for no magic/new load, 1 for magic, 2 for double magic
    /* 0x17  0x0033 */ s8 magic; // current magic available for use
    /* 0x18  0x0034 */ s16 rupees;
    /* 0x1A  0x0036 */ u16 swordHealth;
    /* 0x1C  0x0038 */ u16 naviTimer;
    /* 0x1E  0x003A */ u8 isMagicAcquired;
    /* 0x1F  0x003B */ char unk_3B[0x01];
    /* 0x20  0x003C */ u8 isDoubleMagicAcquired;
    /* 0x21  0x003D */ u8 isDoubleDefenseAcquired;
    /* 0x22  0x003E */ u8 bgsFlag;
    /* 0x23  0x003F */ u8 ocarinaGameRoundNum;
    /* 0x24  0x0040 */ ItemEquips childEquips;
    /* 0x2E  0x004A */ ItemEquips adultEquips;
    /* 0x38  0x0054 */ u32 unk_54; // this may be incorrect, currently used for alignment
    /* 0x3C  0x0058 */ char unk_58[0x0E];
    /* 0x4A  0x0066 */ s16 savedSceneId;
} SavePlayerData;

// offsets in SaveInfo and SaveContext/Save
typedef struct SaveInfo {
    /* 0x0000  0x001C */ SavePlayerData playerData; // "S_Private"
    /* 0x004C  0x0068 */ ItemEquips equips;
    /* 0x0058  0x0074 */ Inventory inventory;
    /* 0x00B8  0x00D4 */ SavedSceneFlags sceneFlags[124];
    /* 0x0E48  0x0E64 */ FaroresWindData fw;
    /* 0x0E70  0x0E8C */ char unk_E8C[0x10];
    /* 0x0E80  0x0E9C */ s32 gsFlags[6];
    /* 0x0E98  0x0EB4 */ char unk_EB4[0x4];
    /* 0x0E9C  0x0EB8 */ s32 highScores[7];
    /* 0x0EB8  0x0ED4 */ u16 eventChkInf[14]; // "event_chk_inf"
    /* 0x0ED4  0x0EF0 */ u16 itemGetInf[4]; // "item_get_inf"
    /* 0x0EDC  0x0EF8 */ u16 infTable[30]; // "inf_table"
    /* 0x0F18  0x0F34 */ char unk_F34[0x04];
    /* 0x0F1C  0x0F38 */ u32 worldMapAreaData; // "area_arrival"
    /* 0x0F20  0x0F3C */ char unk_F3C[0x4];
    /* 0x0F24  0x0F40 */ u8 scarecrowLongSongSet;
    /* 0x0F25  0x0F41 */ u8 scarecrowLongSong[0x360];
    /* 0x1285  0x12A1 */ char unk_12A1[0x24];
    /* 0x12A9  0x12C5 */ u8 scarecrowSpawnSongSet;
    /* 0x12AA  0x12C6 */ u8 scarecrowSpawnSong[0x80];
    /* 0x132A  0x1346 */ char unk_1346[0x02];
    /* 0x132C  0x1348 */ HorseData horseData;
    /* 0x1336  0x1352 */ Checksum checksum; // "check_sum"
} SaveInfo;

typedef struct Save {
    /* 0x00 */ s32 entranceIndex;
    /* 0x04 */ s32 linkAge; // 0: Adult; 1: Child (see enum `LinkAge`)
    /* 0x08 */ s32 cutsceneIndex;
    /* 0x0C */ u16 dayTime; // "zelda_time"
    /* 0x10 */ s32 nightFlag;
    /* 0x14 */ s32 totalDays;
    /* 0x18 */ s32 bgsDayCount; // increments with totalDays, can be cleared with `Environment_ClearBgsDayCount`
    /* 0x1C */ SaveInfo info; // "information"
} Save;

typedef struct SaveContext {
    /* 0x0000 */ Save save; // "memory"
    /* 0x1354 */ s32 fileNum; // "file_no"
    /* 0x1358 */ char unk_1358[0x0004];
    /* 0x135C */ s32 gameMode;
    /* 0x1360 */ s32 sceneLayer; // "counter"
    /* 0x1364 */ s32 respawnFlag; // "restart_flag"
    /* 0x1368 */ RespawnData respawn[RESPAWN_MODE_MAX]; // "restart_data"
    /* 0x13BC */ f32 entranceSpeed;
    /* 0x13C0 */ u16 entranceSound;
    /* 0x13C2 */ char unk_13C2[0x0001];
    /* 0x13C3 */ u8 retainWeatherMode;
    /* 0x13C4 */ s16 dogParams;
    /* 0x13C6 */ u8 envHazardTextTriggerFlags;
    /* 0x13C7 */ u8 showTitleCard;
    /* 0x13C8 */ s16 nayrusLoveTimer;
    /* 0x13CA */ char unk_13CA[0x0002];
    /* 0x13CC */ s16 rupeeAccumulator;
    /* 0x13CE */ s16 timerState; // See `TimerState`
    /* 0x13D0 */ s16 timerSeconds;
    /* 0x13D2 */ s16 subTimerState; // See `SubTimerState`
    /* 0x13D4 */ s16 subTimerSeconds;
    /* 0x13D6 */ s16 timerX[TIMER_ID_MAX];
    /* 0x13DA */ s16 timerY[TIMER_ID_MAX];
    /* 0x13DE */ char unk_13DE[0x0002];
    /* 0x13E0 */ u8 seqId;
    /* 0x13E1 */ u8 natureAmbienceId;
    /* 0x13E2 */ u8 buttonStatus[5];
    /* 0x13E7 */ u8 forceRisingButtonAlphas; // if btn alphas are updated through Interface_DimButtonAlphas, instead update them through Interface_RaiseButtonAlphas
    /* 0x13E8 */ u16 nextHudVisibilityMode; // triggers the hud to change visibility mode to the requested value. Reset to HUD_VISIBILITY_NO_CHANGE when target is reached
    /* 0x13EA */ u16 hudVisibilityMode; // current hud visibility mode
    /* 0x13EC */ u16 hudVisibilityModeTimer; // number of frames in the transition to a new hud visibility mode. Used to step alpha
    /* 0x13EE */ u16 prevHudVisibilityMode; // used to store and recover hud visibility mode for pause menu and text boxes
    /* 0x13F0 */ s16 magicState; // determines magic meter behavior on each frame
    /* 0x13F2 */ s16 prevMagicState; // used to resume the previous state after adding or filling magic
    /* 0x13F4 */ s16 magicCapacity; // maximum magic available
    /* 0x13F6 */ s16 magicFillTarget; // target used to fill magic. Target can either be full capacity (Magic_Fill, magic upgrades), or the saved magic amount (loading a file, game over)
    /* 0x13F8 */ s16 magicTarget; // target for magic to step to when adding or consuming magic
    /* 0x13FA */ u16 eventInf[4]; // "event_inf"
    /* 0x1402 */ u16 mapIndex; // intended for maps/minimaps but commonly used as the dungeon index
    /* 0x1404 */ u16 minigameState;
    /* 0x1406 */ u16 minigameScore; // "yabusame_total"
    /* 0x1408 */ char unk_1408[0x0001];
    /* 0x1409 */ u8 language; // NTSC 0: Japanese; 1: English | PAL 0: English; 1: German; 2: French (see enum `Language`)
    /* 0x140A */ u8 soundSetting; // 0: Stereo; 1: Mono; 2: Headset; 3: Surround (see enum `SoundSetting`)
    /* 0x140B */ char unk_140B[0x0001];
    /* 0x140C */ u8 zTargetSetting; // 0: Switch; 1: Hold (see enum `ZTargetSetting`)
    /* 0x140E */ u16 forcedSeqId; // immediately start playing the sequence if set
    /* 0x1410 */ u8 cutsceneTransitionControl; // context dependent usage: can either trigger a delayed fade or control fill alpha
    /* 0x1411 */ char unk_1411[0x0001];
    /* 0x1412 */ u16 nextCutsceneIndex;
    /* 0x1414 */ u8 cutsceneTrigger;
    /* 0x1415 */ u8 chamberCutsceneNum;
    /* 0x1416 */ u16 nextDayTime; // "next_zelda_time"
    /* 0x1418 */ u8 transFadeDuration;
    /* 0x1419 */ u8 transWipeSpeed;
    /* 0x141A */ u16 skyboxTime;
    /* 0x141C */ u8 dogIsLost;
    /* 0x141D */ u8 nextTransitionType;
    /* 0x141E */ char unk_141E[0x0002];
    /* 0x1420 */ s16 worldMapArea;
    /* 0x1422 */ s16 sunsSongState; // controls the effects of suns song
    /* 0x1424 */ s16 healthAccumulator;
} SaveContext; // size = 0x1428

typedef enum ButtonStatus {
    /* 0x00 */ BTN_ENABLED,
    /* 0xFF */ BTN_DISABLED = 0xFF
} ButtonStatus;

typedef enum ChamberCutsceneNum {
    /* 0 */ CHAMBER_CS_FOREST,
    /* 1 */ CHAMBER_CS_FIRE,
    /* 2 */ CHAMBER_CS_WATER,
    /* 3 */ CHAMBER_CS_SPIRIT,
    /* 4 */ CHAMBER_CS_SHADOW,
    /* 5 */ CHAMBER_CS_LIGHT
} ChamberCutsceneNum;

typedef enum HighScores {
    /* 0x00 */ HS_HBA,          // horseback archery
    /* 0x01 */ HS_POE_POINTS,
    /* 0x02 */ HS_FISHING,
    /* 0x03 */ HS_HORSE_RACE,
    /* 0x04 */ HS_MARATHON,
    /* 0x05 */ HS_UNK_05,
    /* 0x06 */ HS_DAMPE_RACE
} HighScores;

// the score value for the fishing minigame also stores many flags.
#define HS_FISH_LENGTH_CHILD 0x7F // mask for record length of catch as child.
#define HS_FISH_LENGTH_ADULT 0x7F000000 // mask for record length of catch as adult.
#define HS_FISH_PLAYED_CHILD 0x100 // set when first talking to owner as child
#define HS_FISH_PLAYED_ADULT 0x200 // set when first talking to owner as adult
#define HS_FISH_PRIZE_CHILD 0x400 // won the Piece of Heart
#define HS_FISH_PRIZE_ADULT 0x800 // won the Golden Scale
#define HS_FISH_STOLE_HAT 0x1000 // Pond owner is visibly bald as Adult Link.
#define HS_FISH_CHEAT_CHILD 0x80 // used Sinking Lure as child to catch record fish
#define HS_FISH_CHEAT_ADULT 0x80000000 // used Sinking Lure as adult to catch record fish
#define HS_FISH_PLAYED 0x10000 // incremented for every play. controls weather.

typedef enum SunsSongState {
    /* 0 */ SUNSSONG_INACTIVE,
    /* 1 */ SUNSSONG_START, // the suns ocarina effect signals that the song has finished playing
    /* 2 */ SUNSSONG_SPEED_TIME, // suns was played where time passes, speed up the advancement of time
    /* 3 */ SUNSSONG_SPECIAL // time does not advance, but signals the song was played. used for freezing redeads
} SunsSongState;

typedef enum GameMode {
    /* 0 */ GAMEMODE_NORMAL,
    /* 1 */ GAMEMODE_TITLE_SCREEN,
    /* 2 */ GAMEMODE_FILE_SELECT, // Note: only instance type transitions swap to file select
    /* 3 */ GAMEMODE_END_CREDITS
} GameMode;

typedef enum SceneLayer {
    /* 0 */ SCENE_LAYER_CHILD_DAY,
    /* 1 */ SCENE_LAYER_CHILD_NIGHT,
    /* 2 */ SCENE_LAYER_ADULT_DAY,
    /* 3 */ SCENE_LAYER_ADULT_NIGHT,
    /* 4 */ SCENE_LAYER_CUTSCENE_FIRST
} SceneLayer;

#define IS_CUTSCENE_LAYER (gSaveContext.sceneLayer >= SCENE_LAYER_CUTSCENE_FIRST)

typedef enum LinkAge {
    /* 0 */ LINK_AGE_ADULT,
    /* 1 */ LINK_AGE_CHILD
} LinkAge;


#define LINK_IS_ADULT (gSaveContext.save.linkAge == LINK_AGE_ADULT)
#define LINK_IS_CHILD (gSaveContext.save.linkAge == LINK_AGE_CHILD)

#define YEARS_CHILD 5
#define YEARS_ADULT 17
#define LINK_AGE_IN_YEARS (!LINK_IS_ADULT ? YEARS_CHILD : YEARS_ADULT)

#define CLOCK_TIME(hr, min) ((s32)(((hr) * 60 + (min)) * (f32)0x10000 / (24 * 60) + 0.5f))

#define IS_DAY (gSaveContext.save.nightFlag == 0)
#define IS_NIGHT (gSaveContext.save.nightFlag == 1)

#define SLOT(item) gItemSlots[item]
#define INV_CONTENT(item) gSaveContext.save.info.inventory.items[SLOT(item)]
#define AMMO(item) gSaveContext.save.info.inventory.ammo[SLOT(item)]
#define BEANS_BOUGHT AMMO(ITEM_MAGIC_BEAN + 1)

#define ALL_EQUIP_VALUE(equip) ((s32)(gSaveContext.save.info.inventory.equipment & gEquipMasks[equip]) >> gEquipShifts[equip])
#define CUR_EQUIP_VALUE(equip) ((s32)(gSaveContext.save.info.equips.equipment & gEquipMasks[equip]) >> gEquipShifts[equip])
#define OWNED_EQUIP_FLAG(equip, value) (gBitFlags[value] << gEquipShifts[equip])
#define OWNED_EQUIP_FLAG_ALT(equip, value) ((1 << (value)) << gEquipShifts[equip])
#define CHECK_OWNED_EQUIP(equip, value) (gSaveContext.save.info.inventory.equipment & OWNED_EQUIP_FLAG(equip, value))
#define CHECK_OWNED_EQUIP_ALT(equip, value) (gSaveContext.save.info.inventory.equipment & gBitFlags[(value) + (equip) * 4])

#define SWORD_EQUIP_TO_PLAYER(swordEquip) (swordEquip)
#define SHIELD_EQUIP_TO_PLAYER(shieldEquip) (shieldEquip)
#define TUNIC_EQUIP_TO_PLAYER(tunicEquip) ((tunicEquip) - 1)
#define BOOTS_EQUIP_TO_PLAYER(bootsEquip) ((bootsEquip) - 1)

#define CUR_UPG_VALUE(upg) ((s32)(gSaveContext.save.info.inventory.upgrades & gUpgradeMasks[upg]) >> gUpgradeShifts[upg])
#define CAPACITY(upg, value) gUpgradeCapacities[upg][value]
#define CUR_CAPACITY(upg) CAPACITY(upg, CUR_UPG_VALUE(upg))

#define CHECK_QUEST_ITEM(item) (gSaveContext.save.info.inventory.questItems & gBitFlags[item])
#define CHECK_DUNGEON_ITEM(item, dungeonIndex) (gSaveContext.save.info.inventory.dungeonItems[dungeonIndex] & gBitFlags[item])

#define GET_GS_FLAGS(index) \
    ((gSaveContext.save.info.gsFlags[(index) >> 2] & gGsFlagsMasks[(index) & 3]) >> gGsFlagsShifts[(index) & 3])
#define SET_GS_FLAGS(index, value) \
    (gSaveContext.save.info.gsFlags[(index) >> 2] |= (value) << gGsFlagsShifts[(index) & 3])

#define HIGH_SCORE(score) (gSaveContext.save.info.highScores[score])

#define B_BTN_ITEM ((gSaveContext.buttonStatus[0] == ITEM_NONE)                     \
                        ? ITEM_NONE                                                 \
                        : (gSaveContext.save.info.equips.buttonItems[0] == ITEM_GIANTS_KNIFE) \
                            ? ITEM_SWORD_BIGGORON                                   \
                            : gSaveContext.save.info.equips.buttonItems[0])

#define C_BTN_ITEM(button) ((gSaveContext.buttonStatus[(button) + 1] != BTN_DISABLED) \
                                ? gSaveContext.save.info.equips.buttonItems[(button) + 1]       \
                                : ITEM_NONE)


/*
 *
 * SaveContext flags
 *
 */


/*
 * SaveContext.eventChkInf
 */

#define EVENTCHKINF_INDEX(flag) ((flag) >> 4)
#define EVENTCHKINF_MASK(flag) (1 << ((flag) & 0xF))

#define GET_EVENTCHKINF(flag) (gSaveContext.save.info.eventChkInf[EVENTCHKINF_INDEX(flag)] & EVENTCHKINF_MASK(flag))
#define SET_EVENTCHKINF(flag) (gSaveContext.save.info.eventChkInf[EVENTCHKINF_INDEX(flag)] |= EVENTCHKINF_MASK(flag))
#define CLEAR_EVENTCHKINF(flag) (gSaveContext.save.info.eventChkInf[EVENTCHKINF_INDEX(flag)] &= ~EVENTCHKINF_MASK(flag))

// EVENTCHKINF 0x00-0x0F
#define EVENTCHKINF_INDEX_0 0
#define EVENTCHKINF_00_UNUSED 0x00 // flag is set in the debug save, but has no functionality
#define EVENTCHKINF_01_UNUSED 0x01 // flag is set in the debug save, but has no functionality
#define EVENTCHKINF_MIDO_DENIED_DEKU_TREE_ACCESS 0x02
#define EVENTCHKINF_03 0x03
#define EVENTCHKINF_04 0x04
#define EVENTCHKINF_05 0x05
#define EVENTCHKINF_07 0x07
#define EVENTCHKINF_09 0x09
#define EVENTCHKINF_0A 0x0A
#define EVENTCHKINF_0B 0x0B
#define EVENTCHKINF_0C 0x0C
#define EVENTCHKINF_0F 0x0F
#define EVENTCHKINF_TALKED_TO_MALON_FIRST_TIME 0x10
#define EVENTCHKINF_11 0x11
#define EVENTCHKINF_RECEIVED_WEIRD_EGG 0x12
#define EVENTCHKINF_TALON_WOKEN_IN_CASTLE 0x13
#define EVENTCHKINF_TALON_RETURNED_FROM_CASTLE 0x14
#define EVENTCHKINF_TALKED_TO_CHILD_MALON_AT_RANCH 0x15
#define EVENTCHKINF_CAN_LEARN_EPONAS_SONG 0x16
#define EVENTCHKINF_EPONA_OBTAINED 0x18
#define EVENTCHKINF_1B 0x1B
#define EVENTCHKINF_1C 0x1C
#define EVENTCHKINF_1D 0x1D
#define EVENTCHKINF_HORSE_RACE_COW_UNLOCK 0x1E
#define EVENTCHKINF_20 0x20
#define EVENTCHKINF_21 0x21
#define EVENTCHKINF_22 0x22
#define EVENTCHKINF_23 0x23
#define EVENTCHKINF_25 0x25
#define EVENTCHKINF_2A 0x2A
#define EVENTCHKINF_2B 0x2B
#define EVENTCHKINF_2C 0x2C
#define EVENTCHKINF_2D 0x2D
#define EVENTCHKINF_2F 0x2F
#define EVENTCHKINF_30 0x30
#define EVENTCHKINF_31 0x31
#define EVENTCHKINF_32 0x32
#define EVENTCHKINF_GAVE_LETTER_TO_KING_ZORA 0x33
#define EVENTCHKINF_37 0x37
#define EVENTCHKINF_38 0x38
#define EVENTCHKINF_39 0x39
#define EVENTCHKINF_OPENED_JABU_JABU 0x3A
#define EVENTCHKINF_3B 0x3B
#define EVENTCHKINF_DEFEATED_NABOORU_KNUCKLE 0x3C

// EVENTCHKINF 0x40
#define EVENTCHKINF_INDEX_40 EVENTCHKINF_INDEX(EVENTCHKINF_40)
#define EVENTCHKINF_40 0x40

#define EVENTCHKINF_41 0x41
#define EVENTCHKINF_42 0x42
#define EVENTCHKINF_43 0x43
#define EVENTCHKINF_45 0x45
#define EVENTCHKINF_48 0x48
#define EVENTCHKINF_49 0x49
#define EVENTCHKINF_4A 0x4A
#define EVENTCHKINF_OPENED_DOOR_OF_TIME 0x4B
#define EVENTCHKINF_4C 0x4C
#define EVENTCHKINF_CREATED_RAINBOW_BRIDGE 0x4D
#define EVENTCHKINF_CAUGHT_BY_CASTLE_GUARDS 0x4E // set but unused
#define EVENTCHKINF_REVEALED_MASTER_SWORD 0x4F // Cutscene in Temple of Time when entering the Master Sword chamber for the first time
#define EVENTCHKINF_50 0x50
#define EVENTCHKINF_51 0x51
#define EVENTCHKINF_52 0x52
#define EVENTCHKINF_54 0x54
#define EVENTCHKINF_55 0x55
#define EVENTCHKINF_59 0x59
#define EVENTCHKINF_5A 0x5A
#define EVENTCHKINF_5B 0x5B
#define EVENTCHKINF_5C 0x5C
#define EVENTCHKINF_65 0x65
#define EVENTCHKINF_DRAINED_WELL 0x67
#define EVENTCHKINF_68 0x68
#define EVENTCHKINF_RESTORED_LAKE_HYLIA 0x69
#define EVENTCHKINF_TALON_WOKEN_IN_KAKARIKO 0x6A

// EVENTCHKINF 0x6B
#define EVENTCHKINF_INDEX_TALON_RETURNED_FROM_KAKARIKO EVENTCHKINF_INDEX(EVENTCHKINF_TALON_RETURNED_FROM_KAKARIKO)
#define EVENTCHKINF_TALON_RETURNED_FROM_KAKARIKO 0x6B

#define EVENTCHKINF_6E 0x6E
#define EVENTCHKINF_6F 0x6F
#define EVENTCHKINF_BEGAN_GOHMA_BATTLE 0x70
#define EVENTCHKINF_BEGAN_KING_DODONGO_BATTLE 0x71
#define EVENTCHKINF_BEGAN_PHANTOM_GANON_BATTLE 0x72
#define EVENTCHKINF_BEGAN_VOLVAGIA_BATTLE 0x73
#define EVENTCHKINF_BEGAN_MORPHA_BATTLE 0x74
#define EVENTCHKINF_BEGAN_TWINROVA_BATTLE 0x75
#define EVENTCHKINF_BEGAN_BARINADE_BATTLE 0x76
#define EVENTCHKINF_BEGAN_BONGO_BONGO_BATTLE 0x77
#define EVENTCHKINF_BEGAN_GANONDORF_BATTLE 0x78
#define EVENTCHKINF_80 0x80
#define EVENTCHKINF_82 0x82
#define EVENTCHKINF_PAID_BACK_KEATON_MASK 0x8C
#define EVENTCHKINF_PAID_BACK_SKULL_MASK 0x8D
#define EVENTCHKINF_PAID_BACK_SPOOKY_MASK 0x8E
#define EVENTCHKINF_PAID_BACK_BUNNY_HOOD 0x8F

// EVENTCHKINF 0x90-0x93
// Carpenters rescued from Gerudo Fortress
#define EVENTCHKINF_INDEX_CARPENTERS_RESCUED 0x9
#define EVENTCHKINF_CARPENTER_0_RESCUED 0x90
#define EVENTCHKINF_CARPENTER_1_RESCUED 0x91
#define EVENTCHKINF_CARPENTER_2_RESCUED 0x92
#define EVENTCHKINF_CARPENTER_3_RESCUED 0x93

#define EVENTCHKINF_CARPENTERS_ALL_RESCUED_MASK                                                              \
    (EVENTCHKINF_MASK(EVENTCHKINF_CARPENTER_0_RESCUED) | EVENTCHKINF_MASK(EVENTCHKINF_CARPENTER_1_RESCUED) | \
     EVENTCHKINF_MASK(EVENTCHKINF_CARPENTER_2_RESCUED) | EVENTCHKINF_MASK(EVENTCHKINF_CARPENTER_3_RESCUED))

#define GET_EVENTCHKINF_CARPENTERS_ALL_RESCUED()                                             \
    CHECK_FLAG_ALL(gSaveContext.save.info.eventChkInf[EVENTCHKINF_INDEX_CARPENTERS_RESCUED], \
                   EVENTCHKINF_CARPENTERS_ALL_RESCUED_MASK)

#define GET_EVENTCHKINF_CARPENTERS_ALL_RESCUED2()                                             \
    CHECK_FLAG_ALL(gSaveContext.save.info.eventChkInf[EVENTCHKINF_INDEX_CARPENTERS_RESCUED] & \
                       (EVENTCHKINF_CARPENTERS_ALL_RESCUED_MASK | 0xF0),                      \
                   EVENTCHKINF_CARPENTERS_ALL_RESCUED_MASK)

#define ENDAIKU_CARPENTER_RESCUED_MASK(carpenterType) (1 << (carpenterType))

#define ENDAIKU_IS_CARPENTER_RESCUED(carpenterType)                            \
    gSaveContext.save.info.eventChkInf[EVENTCHKINF_INDEX_CARPENTERS_RESCUED] & \
        ENDAIKU_CARPENTER_RESCUED_MASK(carpenterType)

#define ENDAIKU_SET_CARPENTER_RESCUED(carpenterType)                            \
    gSaveContext.save.info.eventChkInf[EVENTCHKINF_INDEX_CARPENTERS_RESCUED] |= \
        ENDAIKU_CARPENTER_RESCUED_MASK((carpenterType))

#define GET_EVENTCHKINF_CARPENTERS_RESCUED_FLAGS() \
    gSaveContext.save.info.eventChkInf[EVENTCHKINF_INDEX_CARPENTERS_RESCUED] & EVENTCHKINF_CARPENTERS_ALL_RESCUED_MASK

#define EVENTCHKINF_94 0x94
#define EVENTCHKINF_95 0x95
#define EVENTCHKINF_96 0x96
#define EVENTCHKINF_9C 0x9C
#define EVENTCHKINF_A0 0xA0
#define EVENTCHKINF_A1 0xA1
#define EVENTCHKINF_A3 0xA3
#define EVENTCHKINF_A4 0xA4
#define EVENTCHKINF_A5 0xA5
#define EVENTCHKINF_A6 0xA6
#define EVENTCHKINF_A7 0xA7
#define EVENTCHKINF_A8 0xA8
#define EVENTCHKINF_A9 0xA9
#define EVENTCHKINF_AA 0xAA
#define EVENTCHKINF_AC 0xAC
#define EVENTCHKINF_AD 0xAD
#define EVENTCHKINF_B0 0xB0
#define EVENTCHKINF_B1 0xB1
#define EVENTCHKINF_B2 0xB2
#define EVENTCHKINF_B3 0xB3
#define EVENTCHKINF_B4 0xB4
#define EVENTCHKINF_B5 0xB5
#define EVENTCHKINF_B6 0xB6
#define EVENTCHKINF_B7 0xB7
#define EVENTCHKINF_B8 0xB8
#define EVENTCHKINF_B9 0xB9
#define EVENTCHKINF_BA 0xBA
#define EVENTCHKINF_BB 0xBB
#define EVENTCHKINF_BC 0xBC
#define EVENTCHKINF_BD 0xBD
#define EVENTCHKINF_BE 0xBE
#define EVENTCHKINF_BF 0xBF
#define EVENTCHKINF_C0 0xC0
#define EVENTCHKINF_C1 0xC1
#define EVENTCHKINF_C3 0xC3
#define EVENTCHKINF_C4 0xC4
#define EVENTCHKINF_C5 0xC5
#define EVENTCHKINF_C6 0xC6
#define EVENTCHKINF_C7 0xC7
#define EVENTCHKINF_C8 0xC8
#define EVENTCHKINF_C9 0xC9

// EVENTCHKINF 0xD0-0xD6
#define EVENTCHKINF_INDEX_SONGS_FOR_FROGS EVENTCHKINF_INDEX(EVENTCHKINF_SONGS_FOR_FROGS_CHOIR)
#define EVENTCHKINF_SONGS_FOR_FROGS_CHOIR  0xD0
#define EVENTCHKINF_SONGS_FOR_FROGS_ZL     0xD1
#define EVENTCHKINF_SONGS_FOR_FROGS_EPONA  0xD2
#define EVENTCHKINF_SONGS_FOR_FROGS_SUNS   0xD3
#define EVENTCHKINF_SONGS_FOR_FROGS_SARIA  0xD4
#define EVENTCHKINF_SONGS_FOR_FROGS_SOT    0xD5
#define EVENTCHKINF_SONGS_FOR_FROGS_STORMS 0xD6

// EVENTCHKINF 0xDA-0xDE
#define EVENTCHKINF_INDEX_SKULLTULA_REWARD 0xD
#define EVENTCHKINF_SKULLTULA_REWARD_10 0xDA
#define EVENTCHKINF_SKULLTULA_REWARD_20 0xDB
#define EVENTCHKINF_SKULLTULA_REWARD_30 0xDC
#define EVENTCHKINF_SKULLTULA_REWARD_40 0xDD
#define EVENTCHKINF_SKULLTULA_REWARD_50 0xDE


/*
 * SaveContext.itemGetInf
 */

#define ITEMGETINF_INDEX(flag) ((flag) >> 4)
#define ITEMGETINF_MASK(flag) (1 << ((flag) & 0xF))

#define GET_ITEMGETINF(flag) (gSaveContext.save.info.itemGetInf[ITEMGETINF_INDEX(flag)] & ITEMGETINF_MASK(flag))
#define SET_ITEMGETINF(flag) (gSaveContext.save.info.itemGetInf[ITEMGETINF_INDEX(flag)] |= ITEMGETINF_MASK(flag))

#define ITEMGETINF_TALON_BOTTLE 0x02
#define ITEMGETINF_03 0x03
#define ITEMGETINF_04 0x04
#define ITEMGETINF_05 0x05
#define ITEMGETINF_06 0x06
#define ITEMGETINF_07 0x07
#define ITEMGETINF_08 0x08
#define ITEMGETINF_09 0x09
#define ITEMGETINF_0A 0x0A
#define ITEMGETINF_DEKU_HEART_PIECE 0x0B
#define ITEMGETINF_0C 0x0C
#define ITEMGETINF_0D 0x0D
#define ITEMGETINF_0E 0x0E
#define ITEMGETINF_0F 0x0F
#define ITEMGETINF_10 0x10
#define ITEMGETINF_11 0x11
#define ITEMGETINF_12 0x12
#define ITEMGETINF_13 0x13
#define ITEMGETINF_15 0x15
#define ITEMGETINF_16 0x16
#define ITEMGETINF_17 0x17

// ITEMGETINF 0x18-0x1A
#define ITEMGETINF_INDEX_18_19_1A 1
#define ITEMGETINF_18 0x18
#define ITEMGETINF_19 0x19
#define ITEMGETINF_1A 0x1A

#define ITEMGETINF_1B 0x1B
#define ITEMGETINF_1C 0x1C
#define ITEMGETINF_1D 0x1D
#define ITEMGETINF_FOREST_STAGE_STICK_UPGRADE 0x1E
// This flag is shared by two events; It is set when obtaining the Deku Nut upgrade at the Forest Stage and when obtaining Poachers Saw.
// This will make obtaining the Deku Nut upgrade impossible if Poachers Saw is obtained first.
// This flag is never read for the Poachers Saw event, so the overlap only causes an issue for the Deku Nut Upgrade. It will not prevent obtaining Poachers Saw.
#define ITEMGETINF_FOREST_STAGE_NUT_UPGRADE 0x1F
#define ITEMGETINF_23 0x23
#define ITEMGETINF_24 0x24
#define ITEMGETINF_25 0x25
#define ITEMGETINF_26 0x26
#define ITEMGETINF_2A 0x2A
#define ITEMGETINF_2C 0x2C
#define ITEMGETINF_2E 0x2E
#define ITEMGETINF_30 0x30
#define ITEMGETINF_31 0x31
#define ITEMGETINF_38 0x38
#define ITEMGETINF_39 0x39
#define ITEMGETINF_3A 0x3A
#define ITEMGETINF_3B 0x3B
#define ITEMGETINF_3F 0x3F


/*
 * SaveContext.infTable
 */

#define INFTABLE_INDEX(flag) ((flag) >> 4)
#define INFTABLE_MASK(flag) (1 << ((flag) & 0xF))

#define GET_INFTABLE(flag) (gSaveContext.save.info.infTable[INFTABLE_INDEX(flag)] & INFTABLE_MASK(flag))
#define SET_INFTABLE(flag) (gSaveContext.save.info.infTable[INFTABLE_INDEX(flag)] |= INFTABLE_MASK(flag))
#define CLEAR_INFTABLE(flag) (gSaveContext.save.info.infTable[INFTABLE_INDEX(flag)] &= ~INFTABLE_MASK(flag))

// INFTABLE 0x0-0xF
#define INFTABLE_INDEX_0 0
#define INFTABLE_00 0x00
#define INFTABLE_01 0x01
#define INFTABLE_03 0x03
#define INFTABLE_05 0x05
#define INFTABLE_0C 0x0C
#define INFTABLE_0E 0x0E
#define INFTABLE_10 0x10
#define INFTABLE_15 0x15
#define INFTABLE_17 0x17
#define INFTABLE_19 0x19
#define INFTABLE_1E 0x1E
#define INFTABLE_22 0x22
#define INFTABLE_24 0x24
#define INFTABLE_26 0x26
#define INFTABLE_28 0x28
#define INFTABLE_2A 0x2A
#define INFTABLE_2B 0x2B
#define INFTABLE_2E 0x2E
#define INFTABLE_2F 0x2F
#define INFTABLE_30 0x30
#define INFTABLE_41 0x41
#define INFTABLE_47 0x47
#define INFTABLE_51 0x51
#define INFTABLE_59 0x59
#define INFTABLE_61 0x61
#define INFTABLE_66 0x66
#define INFTABLE_6A 0x6A
#define INFTABLE_6C 0x6C
#define INFTABLE_71 0x71
#define INFTABLE_76 0x76
#define INFTABLE_77 0x77
#define INFTABLE_TALKED_TO_TALON_IN_RANCH_HOUSE 0x7E
#define INFTABLE_TALKED_TO_MALON_FIRST_TIME 0x84
#define INFTABLE_TOLD_EPONA_IS_SCARED 0x85
#define INFTABLE_MALON_SPAWNED_AT_HYRULE_CASTLE 0x8B
#define INFTABLE_8C 0x8C
#define INFTABLE_8D 0x8D
#define INFTABLE_8E 0x8E
#define INFTABLE_94 0x94
#define INFTABLE_97 0x97
#define INFTABLE_9A 0x9A
#define INFTABLE_A2 0xA2
#define INFTABLE_AB 0xAB
#define INFTABLE_B0 0xB0
#define INFTABLE_B1 0xB1
#define INFTABLE_B4 0xB4
#define INFTABLE_B6 0xB6
#define INFTABLE_B7 0xB7
#define INFTABLE_B8 0xB8
#define INFTABLE_B9 0xB9
#define INFTABLE_BC 0xBC
#define INFTABLE_C0 0xC0
#define INFTABLE_C1 0xC1
#define INFTABLE_C2 0xC2
#define INFTABLE_C3 0xC3
#define INFTABLE_C4 0xC4
#define INFTABLE_C5 0xC5
#define INFTABLE_C6 0xC6
#define INFTABLE_C7 0xC7
#define INFTABLE_C8 0xC8
#define INFTABLE_C9 0xC9
#define INFTABLE_CA 0xCA
#define INFTABLE_CB 0xCB
#define INFTABLE_CC 0xCC
#define INFTABLE_CD 0xCD
#define INFTABLE_CE 0xCE
#define INFTABLE_D0 0xD0
#define INFTABLE_D2 0xD2
#define INFTABLE_D4 0xD4
#define INFTABLE_D6 0xD6
#define INFTABLE_D8 0xD8
#define INFTABLE_D9 0xD9
#define INFTABLE_E0 0xE0
#define INFTABLE_E3 0xE3
#define INFTABLE_E6 0xE6
#define INFTABLE_EB 0xEB
#define INFTABLE_F0 0xF0
#define INFTABLE_F4 0xF4
#define INFTABLE_F8 0xF8
#define INFTABLE_FC 0xFC
#define INFTABLE_109 0x109
#define INFTABLE_10A 0x10A
#define INFTABLE_10B 0x10B
#define INFTABLE_10C 0x10C
#define INFTABLE_10D 0x10D
#define INFTABLE_10E 0x10E
#define INFTABLE_10F 0x10F
#define INFTABLE_113 0x113
#define INFTABLE_11A 0x11A
#define INFTABLE_11E 0x11E
#define INFTABLE_124 0x124
#define INFTABLE_129 0x129
#define INFTABLE_12A 0x12A
#define INFTABLE_138 0x138
#define INFTABLE_139 0x139
#define INFTABLE_140 0x140
#define INFTABLE_141 0x141
#define INFTABLE_142 0x142
#define INFTABLE_143 0x143
#define INFTABLE_144 0x144
#define INFTABLE_145 0x145
#define INFTABLE_146 0x146
#define INFTABLE_147 0x147
#define INFTABLE_160 0x160
#define INFTABLE_161 0x161
#define INFTABLE_162 0x162
#define INFTABLE_163 0x163
#define INFTABLE_164 0x164
#define INFTABLE_166 0x166
#define INFTABLE_16A 0x16A
#define INFTABLE_16C 0x16C
#define INFTABLE_170 0x170
#define INFTABLE_171 0x171
#define INFTABLE_172 0x172
#define INFTABLE_176 0x176
#define INFTABLE_178 0x178
#define INFTABLE_17C 0x17C
#define INFTABLE_17F 0x17F
#define INFTABLE_190 0x190
#define INFTABLE_191 0x191
#define INFTABLE_HAS_DEKU_STICK_UPGRADE 0x192
#define INFTABLE_HAS_DEKU_NUT_UPGRADE 0x193
#define INFTABLE_195 0x195
#define INFTABLE_196 0x196
#define INFTABLE_197 0x197
#define INFTABLE_198 0x198

// INFTABLE 0x199-0x19F
#define INFTABLE_INDEX_199_19A_19B_19C_19D_19E_19F 25
#define INFTABLE_199 0x199
#define INFTABLE_19A 0x19A
#define INFTABLE_19B 0x19B
#define INFTABLE_19C 0x19C
#define INFTABLE_19D 0x19D
#define INFTABLE_19E 0x19E
#define INFTABLE_19F 0x19F

// INFTABLE 0x1A0-0x1AF
#define INFTABLE_INDEX_1AX 26
#define INFTABLE_1A0_SHIFT 0
#define INFTABLE_1A1_SHIFT 1
#define INFTABLE_1A2_SHIFT 2
#define INFTABLE_1A3_SHIFT 3
#define INFTABLE_1A4_SHIFT 4
#define INFTABLE_1A5_SHIFT 5
#define INFTABLE_1A6_SHIFT 6
#define INFTABLE_1A7_SHIFT 7
#define INFTABLE_1A8_SHIFT 8
#define INFTABLE_1A9_SHIFT 9
#define INFTABLE_1AB_SHIFT 11
#define INFTABLE_1AD_SHIFT 13

// INFTABLE 0x1D0-0x1DF
#define INFTABLE_INDEX_1DX INFTABLE_INDEX(INFTABLE_1D0)
#define INFTABLE_1D0 0x1D0


/*
 * SaveContext.eventInf
 */

#define EVENTINF_INDEX(flag) ((flag) >> 4)
#define EVENTINF_MASK(flag) (1 << ((flag) & 0xF))

#define GET_EVENTINF(flag) (gSaveContext.eventInf[EVENTINF_INDEX(flag)] & EVENTINF_MASK(flag))
#define SET_EVENTINF(flag) (gSaveContext.eventInf[EVENTINF_INDEX(flag)] |= EVENTINF_MASK(flag))
#define CLEAR_EVENTINF(flag) (gSaveContext.eventInf[EVENTINF_INDEX(flag)] &= ~EVENTINF_MASK(flag))

// EVENTINF 0x00-0x0F
// Ingo Race, Lon Lon Ranch minigames, and Horseback Archery minigame flags
#define EVENTINF_INDEX_HORSES 0
// EVENTINF 0x00-0x03 reserved for IngoRaceState
#define EVENTINF_INGO_RACE_STATE_MASK (0xF << 0x00)
typedef enum IngoRaceState {
    /* 0 */ INGO_RACE_STATE_OFFER_RENTAL,
    /* 1 */ INGO_RACE_STATE_HORSE_RENTAL_PERIOD,
    /* 2 */ INGO_RACE_STATE_RACING,
    /* 3 */ INGO_RACE_STATE_PLAYER_LOSE,
    /* 4 */ INGO_RACE_STATE_FIRST_WIN,
    /* 5 */ INGO_RACE_STATE_TRAPPED_WIN_UNUSED,
    /* 6 */ INGO_RACE_STATE_TRAPPED_WIN_EPONA, // Ingo Traps you in Lon Lon
    /* 7 */ INGO_RACE_STATE_REMATCH
} IngoRaceState;

#define EVENTINF_INGO_RACE_HORSETYPE 0x04
#define EVENTINF_INGO_RACE_LOST_ONCE 0x05
#define EVENTINF_INGO_RACE_SECOND_RACE 0x06
// Used in z_en_ta (Talon) to store Cucco game winning status
// and in z_en_ge1 (Gerudo) to store archery in-progress status
#define EVENTINF_HORSES_08 0x08
#define EVENTINF_CUCCO_GAME_WON EVENTINF_HORSES_08
// Used in z_en_ta (Talon) and z_en_ma3 (Malon) to store minigame finishing status
#define EVENTINF_HORSES_0A 0x0A
#define EVENTINF_CUCCO_GAME_FINISHED EVENTINF_HORSES_0A
#define EVENTINF_INGO_RACE_0F 0x0F // unused?

// "InRaceSeq"
#define GET_EVENTINF_INGO_RACE_STATE() (gSaveContext.eventInf[EVENTINF_INDEX_HORSES] & EVENTINF_INGO_RACE_STATE_MASK)

#define SET_EVENTINF_INGO_RACE_STATE(v)            \
    gSaveContext.eventInf[EVENTINF_INDEX_HORSES] = \
        (gSaveContext.eventInf[EVENTINF_INDEX_HORSES] & ~EVENTINF_INGO_RACE_STATE_MASK) | (v)

#define GET_EVENTINF_INGO_RACE_FLAG(flag) \
    ((gSaveContext.eventInf[EVENTINF_INDEX_HORSES] & EVENTINF_MASK(flag)) >> ((flag) & 0xF))

#define SET_EVENTINF_INGO_RACE_FLAG(flag)          \
    gSaveContext.eventInf[EVENTINF_INDEX_HORSES] = \
        (gSaveContext.eventInf[EVENTINF_INDEX_HORSES] & 0xFFFF) | EVENTINF_MASK(flag)

#define WRITE_EVENTINF_INGO_RACE_FLAG(flag, v)     \
    gSaveContext.eventInf[EVENTINF_INDEX_HORSES] = \
        (gSaveContext.eventInf[EVENTINF_INDEX_HORSES] & ~EVENTINF_MASK(flag)) | ((v) << ((flag) & 0xF))

#define GET_EVENTINF_INGO_RACE_HORSETYPE() GET_EVENTINF_INGO_RACE_FLAG(EVENTINF_INGO_RACE_HORSETYPE)
#define WRITE_EVENTINF_INGO_RACE_HORSETYPE(v) WRITE_EVENTINF_INGO_RACE_FLAG(EVENTINF_INGO_RACE_HORSETYPE, v)

#define WRITE_EVENTINF_INGO_RACE_0F(v) WRITE_EVENTINF_INGO_RACE_FLAG(EVENTINF_INGO_RACE_0F, v)

// Is the running man race active
#define EVENTINF_MARATHON_ACTIVE 0x10

// EVENTINF 0x20-0x24
#define EVENTINF_INDEX_HAGGLING_TOWNSFOLK 0x2
#define EVENTINF_HAGGLING_TOWNSFOLK_MESG_0 0x20
#define EVENTINF_HAGGLING_TOWNSFOLK_MESG_1 0x21
#define EVENTINF_HAGGLING_TOWNSFOLK_MESG_2 0x22
#define EVENTINF_HAGGLING_TOWNSFOLK_MESG_3 0x23
#define EVENTINF_HAGGLING_TOWNSFOLK_MESG_4 0x24

#define EVENTINF_HAGGLING_TOWNSFOLK_MASK                                                                     \
    (EVENTINF_MASK(EVENTINF_HAGGLING_TOWNSFOLK_MESG_0) | EVENTINF_MASK(EVENTINF_HAGGLING_TOWNSFOLK_MESG_1) | \
     EVENTINF_MASK(EVENTINF_HAGGLING_TOWNSFOLK_MESG_2) | EVENTINF_MASK(EVENTINF_HAGGLING_TOWNSFOLK_MESG_3) | \
     EVENTINF_MASK(EVENTINF_HAGGLING_TOWNSFOLK_MESG_4))

#define GET_EVENTINF_ENMU_TALK_FLAGS() \
    gSaveContext.eventInf[EVENTINF_INDEX_HAGGLING_TOWNSFOLK] & EVENTINF_HAGGLING_TOWNSFOLK_MASK

#define SET_EVENTINF_ENMU_TALK_FLAGS(talkFlags) \
    gSaveContext.eventInf[EVENTINF_INDEX_HAGGLING_TOWNSFOLK] |= (talkFlags);

#define RESET_EVENTINF_ENMU_TALK_FLAGS() \
    gSaveContext.eventInf[EVENTINF_INDEX_HAGGLING_TOWNSFOLK] &= ~(EVENTINF_HAGGLING_TOWNSFOLK_MASK);

#define EVENTINF_30 0x30


extern SaveContext gSaveContext;

#endif
