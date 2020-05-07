/*
 * File: z_oceff_wipe2.c
 * Overlay: ovl_Oceff_Wipe2
 * Description: Epona's Song Effect
 */

#include "z_oceff_wipe2.h"

#define FLAGS 0x02000010

#define THIS ((OceffWipe2*)thisx)

void OceffWipe2_Init(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe2_Update(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe2_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Oceff_Wipe2_InitVars = {
    ACTOR_OCEFF_WIPE2,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffWipe2),
    (ActorFunc)OceffWipe2_Init,
    (ActorFunc)OceffWipe2_Destroy,
    (ActorFunc)OceffWipe2_Update,
    (ActorFunc)OceffWipe2_Draw,
};

#include "z_oceff_wipe2_gfx.c"

void OceffWipe2_Init(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe2* this = THIS;
    Actor_SetScale(this, 0.1F);
    this->counter = 0;
    this->actor.posRot.pos = ACTIVE_CAM->eye;
    osSyncPrintf(VT_FGCOL(CYAN) " WIPE2 arg_data = %d\n" VT_RST, this->actor.params);
}

void OceffWipe2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe2* this = THIS;
    Player* player = PLAYER;

    func_800876C8(globalCtx);
    if (gSaveContext.nayrusLoveTimer) {
        player->unk_692 |= 0x40;
    }
}

void OceffWipe2_Update(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe2* this = THIS;
    this->actor.posRot.pos = ACTIVE_CAM->eye;
    if (this->counter < 100) {
        this->counter++;
    } else {
        Actor_Kill(this);
    }
}

void OceffWipe2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    u32 scroll;
    OceffWipe2* this;
    f32 z;
    GraphicsContext* gfxCtx;
    u8 alpha;
    u32 pad1;
    Vec3f eye;
    Vtx_t* vtxPtr;
    Vec3f vec;
    Gfx* dispRefs[5];
    this = (OceffWipe2*)thisx;
    scroll = globalCtx->state.frames % 256;

    eye = ACTIVE_CAM->eye;
    func_8005AFB4(&vec, ACTIVE_CAM);
    if (this->counter < 32) {
        z = Math_Sins(this->counter << 9) * 1330;
    } else {
        z = 1330;
    }

    vtxPtr = (Vtx_t*)vertices;
    if (this->counter >= 80) {
        alpha = 12 * (100 - this->counter);
    } else {
        alpha = 0xFF;
    }

    vtxPtr[1].cn[3] = vtxPtr[3].cn[3] = vtxPtr[5].cn[3] = vtxPtr[7].cn[3] = vtxPtr[9].cn[3] = vtxPtr[11].cn[3] =
        vtxPtr[13].cn[3] = vtxPtr[15].cn[3] = vtxPtr[16].cn[3] = vtxPtr[18].cn[3] = vtxPtr[20].cn[3] = alpha;

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_oceff_wipe2.c", 390);

    func_80093D84(globalCtx->state.gfxCtx);

    Matrix_Translate(eye.x + vec.x, eye.y + vec.y, eye.z + vec.z, MTXMODE_NEW);
    Matrix_Scale(0.1, 0.1, 0.1, MTXMODE_APPLY);
    func_800D1FD4(&globalCtx->mf_11DA0);
    Matrix_Translate(0, 0, -z, MTXMODE_APPLY);

    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_oceff_wipe2.c", 400),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x00, 0x00, 255, 255, 170, 255);
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 255, 100, 0, 128);
    gSPDisplayList(gfxCtx->polyXlu.p++, textureDl);
    gSPDisplayList(gfxCtx->polyXlu.p++, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, scroll * 6, scroll * (-6), 64, 64,
                                                         1, scroll * (-6), 0, 64, 64));
    gSPDisplayList(gfxCtx->polyXlu.p++, frustrumDl);

    Graph_CloseDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_oceff_wipe2.c", 417);
}
