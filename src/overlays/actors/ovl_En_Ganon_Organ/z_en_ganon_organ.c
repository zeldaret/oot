/*
 * File: z_en_ganon_organ.c
 * Overlay: ovl_En_Ganon_Organ
 * Description: The organ that Ganondorf plays in the cutscene before the fight. Includes carpet and scenery as well.
 */

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4];
} EnGanonOrgan; // size = 0x0150

#define ROOM 0x00
#define FLAGS 0x00000030

void EnGanonOrgan_Init(EnGanonOrgan* this, GlobalContext* globalCtx);
void EnGanonOrgan_Destroy(EnGanonOrgan* this, GlobalContext* globalCtx);
void EnGanonOrgan_Update(EnGanonOrgan* this, GlobalContext* globalCtx);
void EnGanonOrgan_Draw(EnGanonOrgan* this, GlobalContext* globalCtx);

const ActorInit En_Ganon_Organ_InitVars = {
    ACTOR_EN_GANON_ORGAN,
    ACTORTYPE_BOSS,
    ROOM,
    FLAGS,
    OBJECT_GANON,
    sizeof(EnGanonOrgan),
    (ActorFunc)EnGanonOrgan_Init,
    (ActorFunc)EnGanonOrgan_Destroy,
    (ActorFunc)EnGanonOrgan_Update,
    (ActorFunc)EnGanonOrgan_Draw,
};

// temp local struct to represent ganondorf, remove when we can reference other overlays
typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x5CC];
    /* 0x0718 */ s16 organFadeTimer;
    /* 0x071A */ char unk_71A[0x2];
} BossGanon; // size = 0x071C

extern D_80A2CCA8; // remove when data is decompiled
extern D_80A2EAB0; // remove when data is decompiled

void EnGanonOrgan_Init(EnGanonOrgan* this, GlobalContext* globalCtx) {
    this->actor.flags &= ~1;
}

void EnGanonOrgan_Destroy(EnGanonOrgan* this, GlobalContext* globalCtx) {
}

void EnGanonOrgan_Update(EnGanonOrgan* this, GlobalContext* globalCtx) {
    BossGanon* dorf;

    osSyncPrintf("ORGAN MOVE 1\n");
    if (this->actor.params == 1) {
        dorf = (BossGanon*)this->actor.attachedA;
        if (dorf->organFadeTimer == 0) {
            Actor_Kill(&this->actor);
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
    gDPSetEnvColor(displayListHead++, 0x19, 0x14, 0x00, dorf->organFadeTimer);
    gDPSetRenderMode(displayListHead++,
                     AA_EN | Z_CMP | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL | G_RM_FOG_SHADE_A,
                     G_RM_AA_ZB_XLU_SURF2);
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
    gDPSetEnvColor(displayListHead++, 0x00, 0x00, 0x00, dorf->organFadeTimer);
    gDPSetRenderMode(displayListHead++,
                     AA_EN | Z_CMP | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL | G_RM_FOG_SHADE_A,
                     G_RM_AA_ZB_XLU_SURF2);
    gSPEndDisplayList(displayListHead);
    return displayList;
}

void EnGanonOrgan_Draw(EnGanonOrgan* this, GlobalContext* globalCtx) {
    BossGanon* dorf;
    u32 pad;
    GraphicsContext* gfxCtx;
    Gfx* gfxArr[3];

    dorf = (BossGanon*)this->actor.attachedA;
    gfxCtx = globalCtx->state.gfxCtx;
    func_800C6AC4(&gfxArr, globalCtx->state.gfxCtx, "../z_en_ganon_organ.c", 205);
    osSyncPrintf("ORGAN DRAW  1\n");
    func_80093D18(globalCtx->state.gfxCtx);
    if ((this->actor.params == 1) && (dorf->organFadeTimer != 0xff)) {
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, func_80A280BC(globalCtx->state.gfxCtx, dorf));
        gSPSegment(gfxCtx->polyOpa.p++, 0x09, func_80A28148(globalCtx->state.gfxCtx, dorf));
    } else {
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, EnGanonOrgan_EmptyDList(globalCtx->state.gfxCtx));
        gSPSegment(gfxCtx->polyOpa.p++, 0x09, EnGanonOrgan_EmptyDList(globalCtx->state.gfxCtx));
    }
    Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_NEW);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ganon_organ.c", 221),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(gfxCtx->polyOpa.p++, &D_80A2CCA8);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_80A2EAB0);
    osSyncPrintf("ORGAN DRAW  2\n");
    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_en_ganon_organ.c", 230);
}
