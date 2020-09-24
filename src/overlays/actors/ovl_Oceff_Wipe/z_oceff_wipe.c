/*
 * File: z_oceff_wipe.c
 * Overlay: ovl_Oceff_Wipe
 * Description: Zelda's Lullaby Effect
 */

#include "z_oceff_wipe.h"
#include <vt.h>

#define FLAGS 0x02000010

#define THIS ((OceffWipe*)thisx)

void OceffWipe_Init(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe_Update(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Oceff_Wipe_InitVars = {
    ACTOR_OCEFF_WIPE,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffWipe),
    (ActorFunc)OceffWipe_Init,
    (ActorFunc)OceffWipe_Destroy,
    (ActorFunc)OceffWipe_Update,
    (ActorFunc)OceffWipe_Draw,
};

#include "z_oceff_wipe_gfx.c"

u8 sOceffWipeAlphaIndices[] = {
    0x01, 0x10, 0x22, 0x01, 0x20, 0x12, 0x01, 0x20, 0x12, 0x01,
    0x10, 0x22, 0x01, 0x20, 0x12, 0x01, 0x12, 0x21, 0x01, 0x02,
};

void OceffWipe_Init(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe* this = THIS;
    Actor_SetScale(&this->actor, 0.1f);
    this->counter = 0;
    this->actor.posRot.pos = ACTIVE_CAM->eye;
    osSyncPrintf(VT_FGCOL(CYAN) " WIPE arg_data = %d\n" VT_RST, this->actor.params);
}

void OceffWipe_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe* this = THIS;
    Player* player = PLAYER;

    func_800876C8(globalCtx);
    if (gSaveContext.nayrusLoveTimer != 0) {
        player->stateFlags3 |= 0x40;
    }
}

void OceffWipe_Update(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe* this = THIS;
    this->actor.posRot.pos = ACTIVE_CAM->eye;
    if (this->counter < 100) {
        this->counter++;
    } else {
        Actor_Kill(&this->actor);
    }
}

void OceffWipe_Draw(Actor* thisx, GlobalContext* globalCtx) {
    u32 scroll = globalCtx->state.frames & 0xFF;
    OceffWipe* this = THIS;
    f32 z;
    s32 pad;
    u8 alphaTable[3];
    s32 i;
    Vec3f eye;
    Vtx(*vtxPtr)[2];
    Vec3f vec;

    eye = ACTIVE_CAM->eye;
    func_8005AFB4(&vec, ACTIVE_CAM);

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_oceff_wipe.c", 346);

    if (this->counter < 32) {
        z = Math_Sins(this->counter << 9) * 1400;
    } else {
        z = 1400;
    }

    if (this->counter >= 80) {
        alphaTable[0] = 0;
        alphaTable[1] = (0x64 - this->counter) * 8;
        alphaTable[2] = (0x64 - this->counter) * 12;
    } else {
        alphaTable[0] = 0;
        alphaTable[1] = 0xA0;
        alphaTable[2] = 0xFF;
    }

    for (i = 0; i < 20; i++) {
        vtxPtr = (Vtx(*)[2])vertices;
        vtxPtr[i][0].v.cn[3] = alphaTable[((sOceffWipeAlphaIndices[i] & 0xF0) >> 4)];
        vtxPtr[i][1].v.cn[3] = alphaTable[sOceffWipeAlphaIndices[i] & 0xF];
    }

    func_80093D84(globalCtx->state.gfxCtx);

    Matrix_Translate(eye.x + vec.x, eye.y + vec.y, eye.z + vec.z, MTXMODE_NEW);
    Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
    func_800D1FD4(&globalCtx->mf_11DA0);
    Matrix_Translate(0.0f, 0.0f, -z, MTXMODE_APPLY);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_oceff_wipe.c", 375),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->actor.params) {
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 170, 255, 255, 255);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 150, 255, 128);
    } else {
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 255, 200, 255);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 100, 0, 255, 128);
    }

    gSPDisplayList(oGfxCtx->polyXlu.p++, sTextureDL);
    gSPDisplayList(oGfxCtx->polyXlu.p++, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 - scroll, scroll * (-2), 32, 32,
                                                          1, 0 - scroll, scroll * (-2), 32, 32));
    gSPDisplayList(oGfxCtx->polyXlu.p++, sFrustrumDl);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_oceff_wipe.c", 398);
}
