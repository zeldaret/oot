/*
 * File: z_en_ganon_organ.c
 * Overlay: ovl_En_Ganon_Organ
 * Description: The organ that Ganondorf plays in the cutscene before the fight. Includes carpet and scenery as well.
 */

#include "z_en_ganon_organ.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "sys_matrix.h"
#include "tex_len.h"
#include "play_state.h"

#include "overlays/actors/ovl_Boss_Ganon/z_boss_ganon.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void EnGanonOrgan_Init(Actor* thisx, PlayState* play);
void EnGanonOrgan_Destroy(Actor* thisx, PlayState* play);
void EnGanonOrgan_Update(Actor* thisx, PlayState* play);
void EnGanonOrgan_Draw(Actor* thisx, PlayState* play);

ActorProfile En_Ganon_Organ_Profile = {
    /**/ ACTOR_EN_GANON_ORGAN,
    /**/ ACTORCAT_BOSS,
    /**/ FLAGS,
    /**/ OBJECT_GANON,
    /**/ sizeof(EnGanonOrgan),
    /**/ EnGanonOrgan_Init,
    /**/ EnGanonOrgan_Destroy,
    /**/ EnGanonOrgan_Update,
    /**/ EnGanonOrgan_Draw,
};

static u64 sForceAlignment = 0;

#define sRoomCarpetTex_WIDTH 64
#define sRoomCarpetTex_HEIGHT 16
static u64 sRoomCarpetTex[TEX_LEN(u64, sRoomCarpetTex_WIDTH, sRoomCarpetTex_HEIGHT, 16)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomCarpetTex.rgba16.inc.c"
};

#define sRoomOrganPipeTex_WIDTH 16
#define sRoomOrganPipeTex_HEIGHT 64
static u64 sRoomOrganPipeTex[TEX_LEN(u64, sRoomOrganPipeTex_WIDTH, sRoomOrganPipeTex_HEIGHT, 4)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomOrganPipeTex.i4.inc.c"
};

#define sRoomOrganCorbelsTex_WIDTH 16
#define sRoomOrganCorbelsTex_HEIGHT 16
static u64 sRoomOrganCorbelsTex[TEX_LEN(u64, sRoomOrganCorbelsTex_WIDTH, sRoomOrganCorbelsTex_HEIGHT, 4)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomOrganCorbelsTex.i4.inc.c"
};

#define sRoomOrganGrillTex_WIDTH 16
#define sRoomOrganGrillTex_HEIGHT 16
static u64 sRoomOrganGrillTex[TEX_LEN(u64, sRoomOrganGrillTex_WIDTH, sRoomOrganGrillTex_HEIGHT, 16)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomOrganGrillTex.rgba16.inc.c"
};

#define sRoomCrestFriezeTex_WIDTH 32
#define sRoomCrestFriezeTex_HEIGHT 32
static u64 sRoomCrestFriezeTex[TEX_LEN(u64, sRoomCrestFriezeTex_WIDTH, sRoomCrestFriezeTex_HEIGHT, 4)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomCrestFriezeTex.i4.inc.c"
};

#define sRoomColumnFriezeAndCanopyTex_WIDTH 16
#define sRoomColumnFriezeAndCanopyTex_HEIGHT 16
static u64 sRoomColumnFriezeAndCanopyTex[TEX_LEN(u64, sRoomColumnFriezeAndCanopyTex_WIDTH,
                                                 sRoomColumnFriezeAndCanopyTex_HEIGHT, 4)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomColumnFriezeAndCanopyTex.i4.inc.c"
};

#define sRoomColumnMetalEdgingTex_WIDTH 16
#define sRoomColumnMetalEdgingTex_HEIGHT 16
static u64
    sRoomColumnMetalEdgingTex[TEX_LEN(u64, sRoomColumnMetalEdgingTex_WIDTH, sRoomColumnMetalEdgingTex_HEIGHT, 16)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomColumnMetalEdgingTex.rgba16.inc.c"
    };

#define sRoomStatueWingTex_WIDTH 16
#define sRoomStatueWingTex_HEIGHT 16
static u64 sRoomStatueWingTex[TEX_LEN(u64, sRoomStatueWingTex_WIDTH, sRoomStatueWingTex_HEIGHT, 16)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomStatueWingTex.rgba16.inc.c"
};

#define sRoomPillarTex_WIDTH 8
#define sRoomPillarTex_HEIGHT 32
static u64 sRoomPillarTex[TEX_LEN(u64, sRoomPillarTex_WIDTH, sRoomPillarTex_HEIGHT, 8)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomPillarTex.i8.inc.c"
};

#define sRoomOrganKeyboardTex_WIDTH 32
#define sRoomOrganKeyboardTex_HEIGHT 8
static u64 sRoomOrganKeyboardTex[TEX_LEN(u64, sRoomOrganKeyboardTex_WIDTH, sRoomOrganKeyboardTex_HEIGHT, 16)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomOrganKeyboardTex.rgba16.inc.c"
};

#define sRoomOrganKeyEndTex_WIDTH 4
#define sRoomOrganKeyEndTex_HEIGHT 8
static u64 sRoomOrganKeyEndTex[TEX_LEN(u64, sRoomOrganKeyEndTex_WIDTH, sRoomOrganKeyEndTex_HEIGHT, 16)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomOrganKeyEndTex.rgba16.inc.c"
};

#define sRoomStepTex_WIDTH 16
#define sRoomStepTex_HEIGHT 16
static u64 sRoomStepTex[TEX_LEN(u64, sRoomStepTex_WIDTH, sRoomStepTex_HEIGHT, 4)] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomStepTex.i4.inc.c"
};

static Vtx sRoomOrganAndFloorVtx[] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomOrganAndFloorVtx.inc.c"
};

static Gfx sRoomOrganAndFloorDL[429] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomOrganAndFloorDL.inc.c"
};

static Vtx sRoomStatuesVtx[] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomStatuesVtx.inc.c"
};

static Gfx sRoomStatuesDL[152] = {
#include "assets/overlays/ovl_En_Ganon_Organ/sRoomStatuesDL.inc.c"
};

void EnGanonOrgan_Init(Actor* thisx, PlayState* play) {
    thisx->flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
}

void EnGanonOrgan_Destroy(Actor* thisx, PlayState* play) {
}

void EnGanonOrgan_Update(Actor* thisx, PlayState* play) {
    BossGanon* dorf;

    PRINTF("ORGAN MOVE 1\n");
    if (thisx->params == 1) {
        dorf = (BossGanon*)thisx->parent;
        if (dorf->organAlpha == 0) {
            Actor_Kill(thisx);
        }
    }
    PRINTF("ORGAN MOVE 2\n");
}

Gfx* EnGanonOrgan_EmptyDList(GraphicsContext* gfxCtx) {
    Gfx* displayList;

    displayList = GRAPH_ALLOC(gfxCtx, sizeof(Gfx));
    gSPEndDisplayList(displayList);
    return displayList;
}

Gfx* func_80A280BC(GraphicsContext* gfxCtx, BossGanon* dorf) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = GRAPH_ALLOC(gfxCtx, 4 * sizeof(Gfx));
    displayListHead = displayList;
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 25, 20, 0, dorf->organAlpha);
    gDPSetRenderMode(displayListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2);
    gSPEndDisplayList(displayListHead++);
    return displayList;
}

Gfx* func_80A28148(GraphicsContext* gfxCtx, BossGanon* dorf) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = GRAPH_ALLOC(gfxCtx, 4 * sizeof(Gfx));
    displayListHead = displayList;
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 0, 0, 0, dorf->organAlpha);
    gDPSetRenderMode(displayListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2);
    gSPEndDisplayList(displayListHead++);
    return displayList;
}

void EnGanonOrgan_Draw(Actor* thisx, PlayState* play) {
    BossGanon* dorf = (BossGanon*)thisx->parent;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ganon_organ.c", 205);

    PRINTF("ORGAN DRAW  1\n");
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    if ((thisx->params == 1) && (dorf->organAlpha != 255)) {
        gSPSegment(POLY_OPA_DISP++, 0x08, func_80A280BC(play->state.gfxCtx, dorf));
        gSPSegment(POLY_OPA_DISP++, 0x09, func_80A28148(play->state.gfxCtx, dorf));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08, EnGanonOrgan_EmptyDList(play->state.gfxCtx));
        gSPSegment(POLY_OPA_DISP++, 0x09, EnGanonOrgan_EmptyDList(play->state.gfxCtx));
    }
    Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_NEW);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_ganon_organ.c", 221);

    gSPDisplayList(POLY_OPA_DISP++, sRoomOrganAndFloorDL);
    gSPDisplayList(POLY_OPA_DISP++, sRoomStatuesDL);

    PRINTF("ORGAN DRAW  2\n");

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ganon_organ.c", 230);
}
