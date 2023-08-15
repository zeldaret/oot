#ifndef Z_KALEIDO_SCOPE_H
#define Z_KALEIDO_SCOPE_H

#include "ultra64.h"
#include "global.h"

extern u8 gAmmoItems[];
extern s16 gVtxPageMapWorldQuadsWidth[];
extern s16 gVtxPageMapWorldQuadsHeight[];
extern u8 gSlotAgeReqs[];
extern u8 gEquipAgeReqs[EQUIP_TYPE_MAX][4];
extern u8 gItemAgeReqs[];
extern u8 gAreaGsFlags[];

#define AGE_REQ_ADULT LINK_AGE_ADULT
#define AGE_REQ_CHILD LINK_AGE_CHILD
#define AGE_REQ_NONE 9

#define CHECK_AGE_REQ_SLOT(slot) \
    ((gSlotAgeReqs[slot] == AGE_REQ_NONE) || gSlotAgeReqs[slot] == ((void)0, gSaveContext.save.linkAge))
#define CHECK_AGE_REQ_EQUIP(y, x) \
    ((gEquipAgeReqs[y][x] == AGE_REQ_NONE) || (gEquipAgeReqs[y][x] == ((void)0, gSaveContext.save.linkAge)))
#define CHECK_AGE_REQ_ITEM(item) \
    ((gItemAgeReqs[item] == AGE_REQ_NONE) || (gItemAgeReqs[item] == ((void)0, gSaveContext.save.linkAge)))

#define PAGE_BG_COLS 3
#define PAGE_BG_ROWS 5
#define PAGE_BG_QUADS (PAGE_BG_COLS * PAGE_BG_ROWS)
#define PAGE_BG_QUAD_WIDTH 80
#define PAGE_BG_QUAD_HEIGHT 32
#define PAGE_BG_QUAD_TEX_WIDTH 80
#define PAGE_BG_QUAD_TEX_HEIGHT 32

typedef enum {
    // 0 to 24 matches the `QuestItem` enum
    // Notes showing the correct song
    /* 25 */ QUAD_QUEST_SONG_NOTE_A1 = QUEST_HEART_PIECE + 1,
    /* 26 */ QUAD_QUEST_SONG_NOTE_A2,
    /* 27 */ QUAD_QUEST_SONG_NOTE_A3,
    /* 28 */ QUAD_QUEST_SONG_NOTE_A4,
    /* 29 */ QUAD_QUEST_SONG_NOTE_A5,
    /* 30 */ QUAD_QUEST_SONG_NOTE_A6,
    /* 31 */ QUAD_QUEST_SONG_NOTE_A7,
    /* 32 */ QUAD_QUEST_SONG_NOTE_A8,
    // Notes appearing when playing
    /* 33 */ QUAD_QUEST_SONG_NOTE_B1,
    /* 34 */ QUAD_QUEST_SONG_NOTE_B2,
    /* 35 */ QUAD_QUEST_SONG_NOTE_B3,
    /* 36 */ QUAD_QUEST_SONG_NOTE_B4,
    /* 37 */ QUAD_QUEST_SONG_NOTE_B5,
    /* 38 */ QUAD_QUEST_SONG_NOTE_B6,
    /* 39 */ QUAD_QUEST_SONG_NOTE_B7,
    /* 40 */ QUAD_QUEST_SONG_NOTE_B8,
    // Shadow for the amount of skulltula tokens
    /* 41 */ QUAD_QUEST_SKULL_TOKENS_DIGIT1_SHADOW,
    /* 42 */ QUAD_QUEST_SKULL_TOKENS_DIGIT2_SHADOW,
    /* 43 */ QUAD_QUEST_SKULL_TOKENS_DIGIT3_SHADOW,
    // Amount of skulltula tokens
    /* 44 */ QUAD_QUEST_SKULL_TOKENS_DIGIT1,
    /* 45 */ QUAD_QUEST_SKULL_TOKENS_DIGIT2,
    /* 46 */ QUAD_QUEST_SKULL_TOKENS_DIGIT3,
    /* 47 */ QUAD_QUEST_MAX
} QuestQuad;

#define EQUIP_CURSOR_X_UPG 0
#define EQUIP_CURSOR_Y_BULLETBAG_QUIVER 0

#define EQUIP_GRID_CELL_WIDTH 32
#define EQUIP_GRID_CELL_HEIGHT 32
#define EQUIP_GRID_QUAD_MARGIN 2
#define EQUIP_GRID_QUAD_WIDTH (EQUIP_GRID_CELL_WIDTH - (2 * EQUIP_GRID_QUAD_MARGIN))
#define EQUIP_GRID_QUAD_HEIGHT (EQUIP_GRID_CELL_HEIGHT - (2 * EQUIP_GRID_QUAD_MARGIN))
#define EQUIP_GRID_QUAD_TEX_SIZE 32 // both width and height

#define EQUIP_GRID_SELECTED_QUAD_MARGIN (-2)
#define EQUIP_GRID_SELECTED_QUAD_WIDTH (EQUIP_GRID_QUAD_WIDTH - (2 * EQUIP_GRID_SELECTED_QUAD_MARGIN))
#define EQUIP_GRID_SELECTED_QUAD_HEIGHT (EQUIP_GRID_QUAD_HEIGHT - (2 * EQUIP_GRID_SELECTED_QUAD_MARGIN))
#define EQUIP_GRID_SELECTED_QUAD_TEX_SIZE 32 // both width and height

typedef enum {
    // Grid of upgrades and equips, left column is upgrades, others are equips, with one row per equip type
    // Row 0
    /*  0 */ QUAD_EQUIP_UPG_BULLETBAG_QUIVER,
    /*  1 */ QUAD_EQUIP_SWORD_KOKIRI,
    /*  2 */ QUAD_EQUIP_SWORD_MASTER,
    /*  3 */ QUAD_EQUIP_SWORD_BIGGORON,
    // Row 1
    /*  4 */ QUAD_EQUIP_UPG_BOMB_BAG,
    /*  5 */ QUAD_EQUIP_SHIELD_DEKU,
    /*  6 */ QUAD_EQUIP_SHIELD_HYLIAN,
    /*  7 */ QUAD_EQUIP_SHIELD_MIRROR,
    // Row 2
    /*  8 */ QUAD_EQUIP_UPG_STRENGTH,
    /*  9 */ QUAD_EQUIP_TUNIC_KOKIRI,
    /* 10 */ QUAD_EQUIP_TUNIC_GORON,
    /* 11 */ QUAD_EQUIP_TUNIC_ZORA,
    // Row 3
    /* 12 */ QUAD_EQUIP_UPG_SCALE,
    /* 13 */ QUAD_EQUIP_BOOTS_KOKIRI,
    /* 14 */ QUAD_EQUIP_BOOTS_IRON,
    /* 15 */ QUAD_EQUIP_BOOTS_HOVER,
    // Markers indicating the currently selected equip
    /* 16 */ QUAD_EQUIP_SELECTED_SWORD,
    /* 17 */ QUAD_EQUIP_SELECTED_SHIELD,
    /* 18 */ QUAD_EQUIP_SELECTED_TUNIC,
    /* 19 */ QUAD_EQUIP_SELECTED_BOOTS,
    // Player prerender
    /* 20 */ QUAD_EQUIP_PLAYER_FIRST,
    /* 23 */ QUAD_EQUIP_PLAYER_LAST = QUAD_EQUIP_PLAYER_FIRST + PAUSE_EQUIP_PLAYER_FRAG_NUM - 1,
    // 24..27 are unused, probably meant for player prerender
    /* 28 */ QUAD_EQUIP_MAX = QUAD_EQUIP_PLAYER_LAST + 4 + 1
} EquipQuad;

#define WORLD_MAP_IMAGE_WIDTH 216
#define WORLD_MAP_IMAGE_HEIGHT 128
#define WORLD_MAP_IMAGE_FRAG_HEIGHT ((TMEM_SIZE / 2) / (WORLD_MAP_IMAGE_WIDTH * G_IM_SIZ_8b_BYTES))
#define WORLD_MAP_IMAGE_FRAG_NUM (((WORLD_MAP_IMAGE_HEIGHT - 1) / WORLD_MAP_IMAGE_FRAG_HEIGHT) + 1)

typedef enum {
    /*  0 */ QUAD_MAP_WORLD_CLOUDS_SACRED_FOREST_MEADOW,
    /*  1 */ QUAD_MAP_WORLD_CLOUDS_HYRULE_FIELD,
    /*  2 */ QUAD_MAP_WORLD_CLOUDS_LON_LON_RANCH,
    /*  3 */ QUAD_MAP_WORLD_CLOUDS_MARKET,
    /*  4 */ QUAD_MAP_WORLD_CLOUDS_HYRULE_CASTLE,
    /*  5 */ QUAD_MAP_WORLD_CLOUDS_KAKARIKO_VILLAGE,
    /*  6 */ QUAD_MAP_WORLD_CLOUDS_GRAVEYARD,
    /*  7 */ QUAD_MAP_WORLD_CLOUDS_DEATH_MOUNTAIN_TRAIL,
    /*  8 */ QUAD_MAP_WORLD_CLOUDS_GORON_CITY,
    /*  9 */ QUAD_MAP_WORLD_CLOUDS_ZORAS_RIVER,
    /* 10 */ QUAD_MAP_WORLD_CLOUDS_ZORAS_DOMAIN,
    /* 11 */ QUAD_MAP_WORLD_CLOUDS_ZORAS_FOUNTAIN,
    /* 12 */ QUAD_MAP_WORLD_CLOUDS_GERUDO_VALLEY,
    /* 13 */ QUAD_MAP_WORLD_CLOUDS_GERUDOS_FORTRESS,
    /* 14 */ QUAD_MAP_WORLD_CLOUDS_DESERT_COLOSSUS,
    /* 15 */ QUAD_MAP_WORLD_CLOUDS_LAKE_HYLIA,
    /* 16 */ QUAD_MAP_WORLD_POINT_FIRST,
    // 16 to 27 follows the `WorldMapPoint` enum
    /* 27 */ QUAD_MAP_WORLD_POINT_LAST = QUAD_MAP_WORLD_POINT_FIRST + WORLD_MAP_POINT_MAX - 1,
    /* 28 */ QUAD_MAP_28,
    /* 29 */ QUAD_MAP_29,
    /* 30 */ QUAD_MAP_30,
    /* 31 */ QUAD_MAP_31,
    /* 32 */ QUAD_MAP_WORLD_IMAGE_FIRST,
    /* 46 */ QUAD_MAP_WORLD_IMAGE_LAST = QUAD_MAP_WORLD_IMAGE_FIRST + WORLD_MAP_IMAGE_FRAG_NUM - 1
} MapQuad;

#define ITEM_GRID_ROWS 4
#define ITEM_GRID_COLS 6
#define ITEM_GRID_CELL_WIDTH 32
#define ITEM_GRID_CELL_HEIGHT 32
#define ITEM_GRID_QUAD_MARGIN 2
#define ITEM_GRID_QUAD_WIDTH (ITEM_GRID_CELL_WIDTH - (2 * ITEM_GRID_QUAD_MARGIN))
#define ITEM_GRID_QUAD_HEIGHT (ITEM_GRID_CELL_HEIGHT - (2 * ITEM_GRID_QUAD_MARGIN))
#define ITEM_GRID_QUAD_TEX_SIZE 32 // both width and height
#define ITEM_GRID_QUAD_ENLARGE_OFFSET 2

#define ITEM_GRID_SELECTED_QUAD_MARGIN (-2)
#define ITEM_GRID_SELECTED_QUAD_WIDTH (ITEM_GRID_QUAD_WIDTH - (2 * ITEM_GRID_SELECTED_QUAD_MARGIN))
#define ITEM_GRID_SELECTED_QUAD_HEIGHT (ITEM_GRID_QUAD_HEIGHT - (2 * ITEM_GRID_SELECTED_QUAD_MARGIN))
#define ITEM_GRID_SELECTED_QUAD_TEX_SIZE 32 // both width and height

#define ITEM_AMMO_DIGIT_QUAD_WIDTH 8
#define ITEM_AMMO_DIGIT_QUAD_HEIGHT 8
#define ITEM_AMMO_DIGIT_QUAD_TEX_SIZE 8

// Relative to the corresponding QUAD_ITEM_GRID_ quad
#define ITEM_AMMO_TENS_QUAD_OFFSET_X 0
#define ITEM_AMMO_TENS_QUAD_OFFSET_Y 22

// Relative to the ammo tens digit
#define ITEM_AMMO_UNITS_QUAD_OFFSET_X 6
#define ITEM_AMMO_UNITS_QUAD_OFFSET_Y 0

typedef enum {
    // 0..23 are the ITEM_GRID_ROWS*ITEM_GRID_COLS item grid
    // The values follow the `InventorySlot` enum
    /*  0 */ QUAD_ITEM_GRID_FIRST,
    /* 23 */ QUAD_ITEM_GRID_LAST = ITEM_GRID_ROWS * ITEM_GRID_COLS - 1,
    // Markers indicating the currently equipped items
    /* 24 */ QUAD_ITEM_GRID_SELECTED_C_LEFT,
    /* 25 */ QUAD_ITEM_GRID_SELECTED_C_DOWN,
    /* 26 */ QUAD_ITEM_GRID_SELECTED_C_RIGHT,
    // Digits for showing ammo count
    /* 27 */ QUAD_ITEM_AMMO_FIRST,
    /* 27 */ QUAD_ITEM_AMMO_STICK_TENS = QUAD_ITEM_AMMO_FIRST,
    /* 28 */ QUAD_ITEM_AMMO_STICK_UNITS,
    /* 29 */ QUAD_ITEM_AMMO_NUT_TENS,
    /* 30 */ QUAD_ITEM_AMMO_NUT_UNITS,
    /* 31 */ QUAD_ITEM_AMMO_BOMB_TENS,
    /* 32 */ QUAD_ITEM_AMMO_BOMB_UNITS,
    /* 33 */ QUAD_ITEM_AMMO_BOW_TENS,
    /* 34 */ QUAD_ITEM_AMMO_BOW_UNITS,
    /* 35 */ QUAD_ITEM_AMMO_SLINGSHOT_TENS,
    /* 36 */ QUAD_ITEM_AMMO_SLINGSHOT_UNITS,
    /* 37 */ QUAD_ITEM_AMMO_BOMBCHU_TENS,
    /* 38 */ QUAD_ITEM_AMMO_BOMBCHU_UNITS,
    /* 39 */ QUAD_ITEM_AMMO_BEAN_TENS,
    /* 40 */ QUAD_ITEM_AMMO_BEAN_UNITS,
    /* 41 */ QUAD_ITEM_AMMO_MAX,
    /* 40 */ QUAD_ITEM_AMMO_LAST = QUAD_ITEM_AMMO_MAX - 1,
    /* 41 */ QUAD_ITEM_MAX
} ItemQuad;

typedef enum {
    /* 0 */ QUAD_PROMPT_MESSAGE,
    /* 1 */ QUAD_PROMPT_CURSOR_LEFT,
    /* 2 */ QUAD_PROMPT_CURSOR_RIGHT,
    /* 3 */ QUAD_PROMPT_CHOICE_YES,
    /* 4 */ QUAD_PROMPT_CHOICE_NO,
    /* 5 */ QUAD_PROMPT_MAX
} PromptQuad;

void KaleidoScope_DrawQuestStatus(PlayState* play, GraphicsContext* gfxCtx);
s32 KaleidoScope_UpdateQuestStatusPoint(PauseContext* pauseCtx, s32 point);
void KaleidoScope_DrawDebugEditor(PlayState* play);
void KaleidoScope_DrawPlayerWork(PlayState* play);
void KaleidoScope_DrawEquipment(PlayState* play);
void KaleidoScope_SetCursorPos(PauseContext* pauseCtx, u16 index, Vtx* vtx);
void KaleidoScope_DrawItemSelect(PlayState* play);
void KaleidoScope_UpdateItemEquip(PlayState* play);
void KaleidoScope_DrawDungeonMap(PlayState* play, GraphicsContext* gfxCtx);
void KaleidoScope_DrawWorldMap(PlayState* play, GraphicsContext* gfxCtx);
void KaleidoScope_UpdatePrompt(PlayState* play);
Gfx* KaleidoScope_QuadTextureIA4(Gfx* gfx, void* texture, s16 width, s16 height, u16 point);
Gfx* KaleidoScope_QuadTextureIA8(Gfx* gfx, void* texture, s16 width, s16 height, u16 point);
void KaleidoScope_MoveCursorToSpecialPos(PlayState* play, u16 specialPos);
void KaleidoScope_DrawQuadTextureRGBA32(GraphicsContext* gfxCtx, void* texture, u16 width, u16 height, u16 point);
void KaleidoScope_ProcessPlayerPreRender();
void KaleidoScope_SetupPlayerPreRender(PlayState* play);
void KaleidoScope_DrawCursor(PlayState* play, u16 pageIndex);
void KaleidoScope_UpdateDungeonMap(PlayState* play);

void PauseMapMark_Draw(PlayState* play);

#endif
