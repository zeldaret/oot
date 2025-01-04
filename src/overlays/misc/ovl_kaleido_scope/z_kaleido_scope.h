#ifndef Z_KALEIDO_SCOPE_H
#define Z_KALEIDO_SCOPE_H

#include "ultra64.h"
#include "global.h"

extern u8 gAmmoItems[];
extern s16 gVtxPageMapWorldQuadsWidth[];
extern s16 gVtxPageMapWorldQuadsHeight[];
extern char gSlotAgeReqs[];
extern char gEquipAgeReqs[EQUIP_TYPE_MAX][4];
extern char gItemAgeReqs[];
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

// Each page's background is made of a 3x5 grid of quads
#define PAGE_BG_COLS 3
#define PAGE_BG_ROWS 5
#define PAGE_BG_QUADS (PAGE_BG_COLS * PAGE_BG_ROWS)
#define PAGE_BG_QUAD_WIDTH 80
#define PAGE_BG_QUAD_HEIGHT 32
#define PAGE_BG_QUAD_TEX_WIDTH 80
#define PAGE_BG_QUAD_TEX_HEIGHT 32

typedef enum QuestQuad {
    // 0 to 24 matches the `QuestItem` enum
    // Notes showing the correct song
    /* 25 */ QUEST_QUAD_SONG_NOTE_A1 = QUEST_HEART_PIECE + 1,
    /* 26 */ QUEST_QUAD_SONG_NOTE_A2,
    /* 27 */ QUEST_QUAD_SONG_NOTE_A3,
    /* 28 */ QUEST_QUAD_SONG_NOTE_A4,
    /* 29 */ QUEST_QUAD_SONG_NOTE_A5,
    /* 30 */ QUEST_QUAD_SONG_NOTE_A6,
    /* 31 */ QUEST_QUAD_SONG_NOTE_A7,
    /* 32 */ QUEST_QUAD_SONG_NOTE_A8,
    // Notes appearing when playing
    /* 33 */ QUEST_QUAD_SONG_NOTE_B1,
    /* 34 */ QUEST_QUAD_SONG_NOTE_B2,
    /* 35 */ QUEST_QUAD_SONG_NOTE_B3,
    /* 36 */ QUEST_QUAD_SONG_NOTE_B4,
    /* 37 */ QUEST_QUAD_SONG_NOTE_B5,
    /* 38 */ QUEST_QUAD_SONG_NOTE_B6,
    /* 39 */ QUEST_QUAD_SONG_NOTE_B7,
    /* 40 */ QUEST_QUAD_SONG_NOTE_B8,
    // Shadow for the amount of skulltula tokens
    /* 41 */ QUEST_QUAD_SKULL_TOKENS_DIGIT1_SHADOW,
    /* 42 */ QUEST_QUAD_SKULL_TOKENS_DIGIT2_SHADOW,
    /* 43 */ QUEST_QUAD_SKULL_TOKENS_DIGIT3_SHADOW,
    // Amount of skulltula tokens
    /* 44 */ QUEST_QUAD_SKULL_TOKENS_DIGIT1,
    /* 45 */ QUEST_QUAD_SKULL_TOKENS_DIGIT2,
    /* 46 */ QUEST_QUAD_SKULL_TOKENS_DIGIT3,
    /* 47 */ QUEST_QUAD_MAX
} QuestQuad;

// The world map image is split into a number of quad fragments for drawing
#define WORLD_MAP_IMAGE_WIDTH 216
#define WORLD_MAP_IMAGE_HEIGHT 128
#define WORLD_MAP_IMAGE_FRAG_HEIGHT ((TMEM_SIZE / 2) / (WORLD_MAP_IMAGE_WIDTH * G_IM_SIZ_8b_BYTES))
#define WORLD_MAP_IMAGE_FRAG_NUM (((WORLD_MAP_IMAGE_HEIGHT - 1) / WORLD_MAP_IMAGE_FRAG_HEIGHT) + 1)

// Clouds quads cover undiscovered areas.
// Point quads are location markers. They can also be highlighted as a hint of where to go.
typedef enum WorldMapQuad {
    /*  0 */ WORLD_MAP_QUAD_CLOUDS_SACRED_FOREST_MEADOW,
    /*  1 */ WORLD_MAP_QUAD_CLOUDS_HYRULE_FIELD,
    /*  2 */ WORLD_MAP_QUAD_CLOUDS_LON_LON_RANCH,
    /*  3 */ WORLD_MAP_QUAD_CLOUDS_MARKET,
    /*  4 */ WORLD_MAP_QUAD_CLOUDS_HYRULE_CASTLE,
    /*  5 */ WORLD_MAP_QUAD_CLOUDS_KAKARIKO_VILLAGE,
    /*  6 */ WORLD_MAP_QUAD_CLOUDS_GRAVEYARD,
    /*  7 */ WORLD_MAP_QUAD_CLOUDS_DEATH_MOUNTAIN_TRAIL,
    /*  8 */ WORLD_MAP_QUAD_CLOUDS_GORON_CITY,
    /*  9 */ WORLD_MAP_QUAD_CLOUDS_ZORAS_RIVER,
    /* 10 */ WORLD_MAP_QUAD_CLOUDS_ZORAS_DOMAIN,
    /* 11 */ WORLD_MAP_QUAD_CLOUDS_ZORAS_FOUNTAIN,
    /* 12 */ WORLD_MAP_QUAD_CLOUDS_GERUDO_VALLEY,
    /* 13 */ WORLD_MAP_QUAD_CLOUDS_GERUDOS_FORTRESS,
    /* 14 */ WORLD_MAP_QUAD_CLOUDS_DESERT_COLOSSUS,
    /* 15 */ WORLD_MAP_QUAD_CLOUDS_LAKE_HYLIA,
    /* 16 */ WORLD_MAP_QUAD_POINT_FIRST,
    // 16 to 27 follows the `WorldMapPoint` enum
    /* 27 */ WORLD_MAP_QUAD_POINT_LAST = WORLD_MAP_QUAD_POINT_FIRST + WORLD_MAP_POINT_MAX - 1,
    /* 28 */ WORLD_MAP_QUAD_28,
    /* 29 */ WORLD_MAP_QUAD_TRADE_QUEST_MARKER,
    /* 30 */ WORLD_MAP_QUAD_30,
    /* 31 */ WORLD_MAP_QUAD_31,
    /* 32 */ WORLD_MAP_QUAD_IMAGE_FIRST,
    /* 46 */ WORLD_MAP_QUAD_IMAGE_LAST = WORLD_MAP_QUAD_IMAGE_FIRST + WORLD_MAP_IMAGE_FRAG_NUM - 1
} WorldMapQuad;

typedef enum PromptQuad {
    /* 0 */ PROMPT_QUAD_MESSAGE,
    /* 1 */ PROMPT_QUAD_CURSOR_LEFT,
    /* 2 */ PROMPT_QUAD_CURSOR_RIGHT,
    /* 3 */ PROMPT_QUAD_CHOICE_YES,
    /* 4 */ PROMPT_QUAD_CHOICE_NO,
    /* 5 */ PROMPT_QUAD_MAX
} PromptQuad;

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

// Relative to the corresponding ITEM_QUAD_GRID_ quad
#define ITEM_AMMO_TENS_QUAD_OFFSET_X 0
#define ITEM_AMMO_TENS_QUAD_OFFSET_Y 22

// Relative to the ammo tens digit
#define ITEM_AMMO_ONES_QUAD_OFFSET_X 6
#define ITEM_AMMO_ONES_QUAD_OFFSET_Y 0

typedef enum ItemQuad {
    // 0 to 23 are the ITEM_GRID_ROWS*ITEM_GRID_COLS item grid
    // The values follow the `InventorySlot` enum
    /*  0 */ ITEM_QUAD_GRID_FIRST,
    /* 23 */ ITEM_QUAD_GRID_LAST = ITEM_GRID_ROWS * ITEM_GRID_COLS - 1,
    // Markers indicating the currently equipped items
    /* 24 */ ITEM_QUAD_GRID_SELECTED_C_LEFT,
    /* 25 */ ITEM_QUAD_GRID_SELECTED_C_DOWN,
    /* 26 */ ITEM_QUAD_GRID_SELECTED_C_RIGHT,
    // Digits for showing ammo count
    /* 27 */ ITEM_QUAD_AMMO_FIRST,
    /* 27 */ ITEM_QUAD_AMMO_STICK_TENS = ITEM_QUAD_AMMO_FIRST,
    /* 28 */ ITEM_QUAD_AMMO_STICK_ONES,
    /* 29 */ ITEM_QUAD_AMMO_NUT_TENS,
    /* 30 */ ITEM_QUAD_AMMO_NUT_ONES,
    /* 31 */ ITEM_QUAD_AMMO_BOMB_TENS,
    /* 32 */ ITEM_QUAD_AMMO_BOMB_ONES,
    /* 33 */ ITEM_QUAD_AMMO_BOW_TENS,
    /* 34 */ ITEM_QUAD_AMMO_BOW_ONES,
    /* 35 */ ITEM_QUAD_AMMO_SLINGSHOT_TENS,
    /* 36 */ ITEM_QUAD_AMMO_SLINGSHOT_ONES,
    /* 37 */ ITEM_QUAD_AMMO_BOMBCHU_TENS,
    /* 38 */ ITEM_QUAD_AMMO_BOMBCHU_ONES,
    /* 39 */ ITEM_QUAD_AMMO_BEAN_TENS,
    /* 40 */ ITEM_QUAD_AMMO_BEAN_ONES,
    /* 41 */ ITEM_QUAD_MAX
} ItemQuad;

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
