/*
 * File: z_oceff_wipe3.c
 * Overlay: ovl_Oceff_Wipe3
 * Description: Saria's Song Effect
 */

#include "z_oceff_wipe3.h"
#include "vt.h"

#define FLAGS 0x02000010

#define THIS ((OceffWipe3*)thisx)

void OceffWipe3_Init(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe3_Update(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe3_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Oceff_Wipe3_InitVars = {
    ACTOR_OCEFF_WIPE3,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffWipe3),
    (ActorFunc)OceffWipe3_Init,
    (ActorFunc)OceffWipe3_Destroy,
    (ActorFunc)OceffWipe3_Update,
    (ActorFunc)OceffWipe3_Draw,
};

#include "z_oceff_wipe3_gfx.c"

void OceffWipe3_Init(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe3* this = THIS;
    Actor_SetScale(&this->actor, 0.1f);
    this->counter = 0;
    this->actor.posRot.pos = ACTIVE_CAM->eye;
    // it's actually WIPE3...
    osSyncPrintf(VT_FGCOL(CYAN) " WIPE2 arg_data = %d\n" VT_RST, this->actor.params);
}

void OceffWipe3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe3* this = THIS;
    Player* player = PLAYER;

    func_800876C8(globalCtx);
    if (gSaveContext.nayrusLoveTimer != 0) {
        player->stateFlags3 |= 0x40;
    }
}

void OceffWipe3_Update(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe3* this = THIS;
    this->actor.posRot.pos = ACTIVE_CAM->eye;
    if (this->counter < 100) {
        this->counter++;
    } else {
        Actor_Kill(&this->actor);
    }
}

void OceffWipe3_Draw(Actor* thisx, GlobalContext* globalCtx) {
    u32 scroll = globalCtx->state.frames & 0xFFF;
    OceffWipe3* this = THIS;
    f32 z;
    u8 alpha;
    s32 pad[2];
    Vec3f eye;
    Vtx* vtxPtr;
    Vec3f vec;

    eye = ACTIVE_CAM->eye;
    func_8005AFB4(&vec, ACTIVE_CAM);
    if (this->counter < 32) {
        z = Math_Sins(this->counter << 9) * 1330;
    } else {
        z = 1330;
    }

    vtxPtr = vertices;
    if (this->counter >= 80) {
        alpha = 12 * (100 - this->counter);
    } else {
        alpha = 255;
    }

    vtxPtr[1].v.cn[3] = vtxPtr[3].v.cn[3] = vtxPtr[5].v.cn[3] = vtxPtr[7].v.cn[3] = vtxPtr[9].v.cn[3] =
        vtxPtr[11].v.cn[3] = vtxPtr[13].v.cn[3] = vtxPtr[15].v.cn[3] = vtxPtr[17].v.cn[3] = vtxPtr[19].v.cn[3] =
            vtxPtr[21].v.cn[3] = alpha;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_oceff_wipe3.c", 343);

    func_80093D84(globalCtx->state.gfxCtx);

    Matrix_Translate(eye.x + vec.x, eye.y + vec.y, eye.z + vec.z, MTXMODE_NEW);
    Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
    func_800D1FD4(&globalCtx->mf_11DA0);
    Matrix_Translate(0.0f, 0.0f, -z, MTXMODE_APPLY);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_oceff_wipe3.c", 353),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 255, 170, 255);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 100, 200, 0, 128);
    gSPDisplayList(oGfxCtx->polyXlu.p++, sTextureDL);
    gSPDisplayList(oGfxCtx->polyXlu.p++, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, scroll * 12, scroll * (-12), 64,
                                                          64, 1, scroll * 8, scroll * (-8), 64, 64));
    gSPDisplayList(oGfxCtx->polyXlu.p++, sFrustrumDl);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_oceff_wipe3.c", 370);
}
