/*
 * File: z_oceff_wipe4.c
 * Overlay: ovl_Oceff_Wipe4
 * Description: Song of Time effect
 */

#include "z_oceff_wipe4.h"
#include <vt.h>

#define FLAGS 0x02000010

#define THIS ((OceffWipe4*)thisx)

void OceffWipe4_Init(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe4_Destroy(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe4_Update(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe4_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Oceff_Wipe4_InitVars = {
    ACTOR_OCEFF_WIPE4,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffWipe4),
    (ActorFunc)OceffWipe4_Init,
    (ActorFunc)OceffWipe4_Destroy,
    (ActorFunc)OceffWipe4_Update,
    (ActorFunc)OceffWipe4_Draw,
};

#include "z_oceff_wipe4_gfx.c"

void OceffWipe4_Init(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe4* this = THIS;
    Actor_SetScale(&this->actor, 0.1f);
    this->counter = 0;
    this->actor.posRot.pos = ACTIVE_CAM->eye;
    osSyncPrintf(VT_FGCOL(CYAN) " WIPE4 arg_data = %d\n" VT_RST, this->actor.params);
}

void OceffWipe4_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe4* this = THIS;
    func_800876C8(globalCtx);
}

void OceffWipe4_Update(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe4* this = THIS;
    this->actor.posRot.pos = ACTIVE_CAM->eye;
    if (this->counter < 50) {
        this->counter++;
    } else {
        Actor_Kill(&this->actor);
    }
}

void OceffWipe4_Draw(Actor* thisx, GlobalContext* globalCtx) {

    u32 scroll;
    OceffWipe4* this;
    f32 z;
    GraphicsContext* gfxCtx;
    u8 alpha;
    u32 pad1;
    Vec3f eye;
    Vtx* vtxPtr;
    Vec3f vec;
    Gfx* dispRefs[5];
    this = THIS;
    scroll = globalCtx->state.frames & 0xFFF;

    eye = ACTIVE_CAM->eye;
    func_8005AFB4(&vec, ACTIVE_CAM);
    if (this->counter < 16) {
        z = Math_Sins(this->counter << 10) * 1330;
    } else {
        z = 1330;
    }

    vtxPtr = vertices;
    if (this->counter >= 30) {
        alpha = 12 * (50 - this->counter);
    } else {
        alpha = 0xFF;
    }

    vtxPtr[1].v.cn[3] = vtxPtr[3].v.cn[3] = vtxPtr[5].v.cn[3] = vtxPtr[7].v.cn[3] = vtxPtr[9].v.cn[3] =
        vtxPtr[11].v.cn[3] = vtxPtr[13].v.cn[3] = vtxPtr[15].v.cn[3] = vtxPtr[17].v.cn[3] = vtxPtr[19].v.cn[3] =
            vtxPtr[21].v.cn[3] = alpha;

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_oceff_wipe4.c", 314);

    func_80093D84(globalCtx->state.gfxCtx);

    Matrix_Translate(eye.x + vec.x, eye.y + vec.y, eye.z + vec.z, MTXMODE_NEW);
    Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
    func_800D1FD4(&globalCtx->mf_11DA0);
    Matrix_Translate(0.0f, 0.0f, -z, MTXMODE_APPLY);

    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_oceff_wipe4.c", 324),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->actor.params == 1) {
        gSPDisplayList(gfxCtx->polyXlu.p++, textureDl1);
    } else {
        gSPDisplayList(gfxCtx->polyXlu.p++, textureDl0);
    }

    gSPDisplayList(gfxCtx->polyXlu.p++, textureDl2);
    gSPDisplayList(gfxCtx->polyXlu.p++, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, scroll * 2, scroll * (-2), 32, 64,
                                                         1, scroll * (-1), scroll, 32, 32));
    gSPDisplayList(gfxCtx->polyXlu.p++, frustrumDl);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_oceff_wipe4.c", 344);
}
