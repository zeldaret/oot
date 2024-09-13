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

// Each page's background is made of a 3x5 grid of quads
#define PAGE_BG_COLS 3
#define PAGE_BG_ROWS 5
#define PAGE_BG_QUADS (PAGE_BG_COLS * PAGE_BG_ROWS)
#define PAGE_BG_QUAD_WIDTH 80
#define PAGE_BG_QUAD_HEIGHT 32
#define PAGE_BG_QUAD_TEX_WIDTH 80
#define PAGE_BG_QUAD_TEX_HEIGHT 32

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
