#ifndef Z64_SKYBOX_H
#define Z64_SKYBOX_H

#include "ultra64/ultratypes.h"
#include "ultra64/gbi.h"

#include "z64math.h"
#include "z64dma.h" // for RomFile

struct GameState;
struct GraphicsContext;

typedef enum {
    /* 0x00 */ SKYBOX_NONE,
    /* 0x01 */ SKYBOX_NORMAL_SKY,
    /* 0x02 */ SKYBOX_BAZAAR,
    /* 0x03 */ SKYBOX_OVERCAST_SUNSET,
    /* 0x04 */ SKYBOX_MARKET_ADULT,
    /* 0x05 */ SKYBOX_CUTSCENE_MAP,
    /* 0x07 */ SKYBOX_HOUSE_LINK = 7,
    /* 0x09 */ SKYBOX_MARKET_CHILD_DAY = 9,
    /* 0x0A */ SKYBOX_MARKET_CHILD_NIGHT,
    /* 0x0B */ SKYBOX_HAPPY_MASK_SHOP,
    /* 0x0C */ SKYBOX_HOUSE_KNOW_IT_ALL_BROTHERS,
    /* 0x0E */ SKYBOX_HOUSE_OF_TWINS = 14,
    /* 0x0F */ SKYBOX_STABLES,
    /* 0x10 */ SKYBOX_HOUSE_KAKARIKO,
    /* 0x11 */ SKYBOX_KOKIRI_SHOP,
    /* 0x13 */ SKYBOX_GORON_SHOP = 19,
    /* 0x14 */ SKYBOX_ZORA_SHOP,
    /* 0x16 */ SKYBOX_POTION_SHOP_KAKARIKO = 22,
    /* 0x17 */ SKYBOX_POTION_SHOP_MARKET,
    /* 0x18 */ SKYBOX_BOMBCHU_SHOP,
    /* 0x1A */ SKYBOX_HOUSE_RICHARD = 26,
    /* 0x1B */ SKYBOX_HOUSE_IMPA,
    /* 0x1C */ SKYBOX_TENT,
    /* 0x1D */ SKYBOX_UNSET_1D,
    /* 0x20 */ SKYBOX_HOUSE_MIDO = 32,
    /* 0x21 */ SKYBOX_HOUSE_SARIA,
    /* 0x22 */ SKYBOX_HOUSE_ALLEY,
    /* 0x27 */ SKYBOX_UNSET_27 = 39
} SkyboxId;

typedef enum {
    /* 0 */ SKYBOX_DRAW_128,       // 128x128 top/bottom faces, 128x64 side faces
    /* 1 */ SKYBOX_DRAW_256_4FACE, // 256x256 all side faces with per-face palettes
    /* 2 */ SKYBOX_DRAW_256_3FACE  // 256x256 3/4 side faces with per-face palettes
} SkyboxDrawType;

typedef struct SkyboxContext {
    /* 0x000 */ char unk_00[0x128];
    /* 0x128 */ void* staticSegments[2];
    /* 0x130 */ u16 (*palettes)[256];
    /* 0x134 */ Gfx (*dListBuf)[150];
    /* 0x138 */ Gfx* gfx;
    /* 0x13C */ Vtx* roomVtx;
    /* 0x140 */ s16 drawType;
    /* 0x144 */ Vec3f rot;
    /* 0x150 */ char unk_150[0x10];
} SkyboxContext; // size = 0x160

typedef struct {
    /* 0x00 */ RomFile file;
    /* 0x08 */ RomFile palette;
} SkyboxFile; // size = 0x10

extern SkyboxFile gNormalSkyFiles[];

void Skybox_Init(struct GameState* state, SkyboxContext* skyboxCtx, s16 skyboxId);
Mtx* Skybox_UpdateMatrix(SkyboxContext* skyboxCtx, f32 x, f32 y, f32 z);
void Skybox_Draw(SkyboxContext* skyboxCtx, struct GraphicsContext* gfxCtx, s16 skyboxId, s16 blend, f32 x, f32 y,
                 f32 z);
void Skybox_Update(SkyboxContext* skyboxCtx);

#endif
