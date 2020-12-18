/*
 * File: z_en_ganon_organ.c
 * Overlay: ovl_En_Ganon_Organ
 * Description: The organ that Ganondorf plays in the cutscene before the fight. Includes carpet and scenery as well.
 */

#include "z_en_ganon_organ.h"
#include "overlays/actors/ovl_Boss_Ganon/z_boss_ganon.h"

#define FLAGS 0x00000030

#define THIS ((EnGanonOrgan*)thisx)

void EnGanonOrgan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGanonOrgan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGanonOrgan_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGanonOrgan_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Ganon_Organ_InitVars = {
    ACTOR_EN_GANON_ORGAN,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_GANON,
    sizeof(EnGanonOrgan),
    (ActorFunc)EnGanonOrgan_Init,
    (ActorFunc)EnGanonOrgan_Destroy,
    (ActorFunc)EnGanonOrgan_Update,
    (ActorFunc)EnGanonOrgan_Draw,
};

extern Gfx D_80A2CCA8[];
extern Gfx D_80A2EAB0[];

void EnGanonOrgan_Init(Actor* thisx, GlobalContext* globalCtx) {
    thisx->flags &= ~1;
}

void EnGanonOrgan_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnGanonOrgan_Update(Actor* thisx, GlobalContext* globalCtx) {
    BossGanon* dorf;

    osSyncPrintf("ORGAN MOVE 1\n");
    if (thisx->params == 1) {
        dorf = (BossGanon*)thisx->parent;
        if (dorf->organFadeTimer == 0) {
            Actor_Kill(thisx);
        }
    }
    osSyncPrintf("ORGAN MOVE 2\n");
}

Gfx* EnGanonOrgan_EmptyDList(GraphicsContext* gfxCtx) {
    Gfx* displayList;

    displayList = Graph_Alloc(gfxCtx, sizeof(Gfx));
    gSPEndDisplayList(displayList);
    return displayList;
}

Gfx* func_80A280BC(GraphicsContext* gfxCtx, BossGanon* dorf) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = Graph_Alloc(gfxCtx, 4 * sizeof(Gfx));
    displayListHead = displayList;
    gDPPipeSync(displayListHead++);
    do {
        if (1) {}
    } while (0);
    gDPSetEnvColor(displayListHead++, 25, 20, 0, dorf->organFadeTimer);
    gDPSetRenderMode(displayListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2);
    gSPEndDisplayList(displayListHead);
    return displayList;
}

Gfx* func_80A28148(GraphicsContext* gfxCtx, BossGanon* dorf) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = Graph_Alloc(gfxCtx, 4 * sizeof(Gfx));
    displayListHead = displayList;

    gDPPipeSync(displayListHead++);
    do {
        if (1) {}
    } while (0);
    gDPSetEnvColor(displayListHead++, 0, 0, 0, dorf->organFadeTimer);
    gDPSetRenderMode(displayListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2);
    gSPEndDisplayList(displayListHead);
    return displayList;
}

void EnGanonOrgan_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BossGanon* dorf = (BossGanon*)thisx->parent;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ganon_organ.c", 205);

    osSyncPrintf("ORGAN DRAW  1\n");
    func_80093D18(globalCtx->state.gfxCtx);
    if ((thisx->params == 1) && (dorf->organFadeTimer != 0xff)) {
        gSPSegment(POLY_OPA_DISP++, 0x08, func_80A280BC(globalCtx->state.gfxCtx, dorf));
        gSPSegment(POLY_OPA_DISP++, 0x09, func_80A28148(globalCtx->state.gfxCtx, dorf));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08, EnGanonOrgan_EmptyDList(globalCtx->state.gfxCtx));
        gSPSegment(POLY_OPA_DISP++, 0x09, EnGanonOrgan_EmptyDList(globalCtx->state.gfxCtx));
    }
    Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_NEW);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ganon_organ.c", 221),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, D_80A2CCA8);
    gSPDisplayList(POLY_OPA_DISP++, D_80A2EAB0);
    osSyncPrintf("ORGAN DRAW  2\n");

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ganon_organ.c", 230);
}
