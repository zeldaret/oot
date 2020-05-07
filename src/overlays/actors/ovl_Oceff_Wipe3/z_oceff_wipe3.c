/*
 * File: z_oceff_wipe3.c
 * Overlay: ovl_Oceff_Wipe3
 * Description: Saria's Song Effect
 */

#include "z_oceff_wipe3.h"

#define FLAGS 0x02000010

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
    OceffWipe3* this = (OceffWipe3*)thisx;
    Actor_SetScale(this, 0.1F);
    this->counter = 0;
    this->actor.posRot.pos = CUR_CAM->eye;
    // it's actually WIPE3...
    osSyncPrintf(VT_FGCOL(CYAN)" WIPE2 arg_data = %d\n"VT_RST, this->actor.params);
}

void OceffWipe3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe3* this = (OceffWipe3*)thisx;
    Player* player = PLAYER;

    func_800876C8(globalCtx);
    if (gSaveContext.nayrusLoveTimer) {
        player->unk_692 |= 0x40;
    }
}

void OceffWipe3_Update(Actor* thisx, GlobalContext* globalCtx)
{
    OceffWipe3* this = (OceffWipe3*)thisx;
    this->actor.posRot.pos = CUR_CAM->eye;
    if (this->counter < 100) {
        this->counter++;
    }
    else {
        Actor_Kill(this);
    } 
}

void OceffWipe3_Draw(Actor* thisx, GlobalContext* globalCtx) {

    u32 scroll;
    OceffWipe3* this;
    f32 z;
    GraphicsContext* gfxCtx;    
    u8 alpha;
    u32 pad1;
    Vec3f eye;
    Vtx_t *vtxPtr;
    Vec3f vec;
    Gfx* dispRefs[5];
    this = (OceffWipe3*)thisx;
    scroll = globalCtx->state.frames & 0xFFF;

    eye = CUR_CAM->eye;
    func_8005AFB4(&vec, CUR_CAM);
    if (this->counter < 32) {
        z = Math_Sins(this->counter << 9) * 1330;
    }
    else {
        z = 1330;
    }

    vtxPtr = (Vtx_t*)vertices;
    if (this->counter >= 80) {
        alpha = 12*(100-this->counter);
    }
    else {
        alpha = 0xFF;
    }

    vtxPtr[1].cn[3] =
    vtxPtr[3].cn[3] =
    vtxPtr[5].cn[3] =
    vtxPtr[7].cn[3] =
    vtxPtr[9].cn[3] =
    vtxPtr[11].cn[3] =
    vtxPtr[13].cn[3] =
    vtxPtr[15].cn[3] =
    vtxPtr[17].cn[3] =
    vtxPtr[19].cn[3] =
    vtxPtr[21].cn[3] = alpha;
    
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_oceff_wipe3.c", 343);

    func_80093D84(globalCtx->state.gfxCtx);

    Matrix_Translate(eye.x + vec.x, eye.y + vec.y, eye.z + vec.z, MTXMODE_NEW);
    Matrix_Scale(0.1, 0.1, 0.1, MTXMODE_APPLY);
    func_800D1FD4(&globalCtx->mf_11DA0);
    Matrix_Translate(0, 0, -z, MTXMODE_APPLY);

    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_oceff_wipe3.c", 353), G_MTX_NOPUSH|G_MTX_LOAD|G_MTX_MODELVIEW);
    
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x00, 0x00, 255, 255, 170, 255);
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 100, 200, 0, 128);
    gSPDisplayList(gfxCtx->polyXlu.p++, textureDl);
    gSPDisplayList(gfxCtx->polyXlu.p++, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, scroll*12, scroll*(-12), 64, 64, 1, scroll*8, scroll*(-8), 64, 64));
    gSPDisplayList(gfxCtx->polyXlu.p++, frustrumDl);

    Graph_CloseDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_oceff_wipe3.c", 370);
}
