#include "z_bg_spot17_bakudankabe.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot17Bakudankabe*)thisx)

void BgSpot17Bakudankabe_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot17Bakudankabe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot17Bakudankabe_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot17Bakudankabe_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Spot17_Bakudankabe_InitVars = {
    ACTOR_BG_SPOT17_BAKUDANKABE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT17_OBJ,
    sizeof(BgSpot17Bakudankabe),
    (ActorFunc)BgSpot17Bakudankabe_Init,
    (ActorFunc)BgSpot17Bakudankabe_Destroy,
    (ActorFunc)BgSpot17Bakudankabe_Update,
    (ActorFunc)BgSpot17Bakudankabe_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 3000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

extern u32 D_06000A38;
extern Gfx D_60008A00[];
extern Gfx D_60009600[];

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Bakudankabe/func_808B6BC0.s")
void func_808B6BC0(BgSpot17Bakudankabe* this, GlobalContext* globalCtx) {
    Vec3f temp0;
    Vec3f temp1;

    Vec3f* burstDepthY;
    Vec3f* burstDepthX;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f2;
    s32 temp_f18;
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_v1;
    s32 phi_s1;
    s32 gravityInfluence;
    s32 phi_v0;

    temp_f22 = Math_Sins(this->dyna.actor.shape.rot.y);
    temp_f24 = Math_Coss(this->dyna.actor.shape.rot.y);
    burstDepthX = &temp0; // temp0  (BC)
    burstDepthY = &temp1; // temp1  (C8)
    temp0.x = 0.0f;
    temp1.y = 0.0f;
    phi_s1 = 0;

    for (phi_s1 = 0; phi_s1 < 0x14; phi_s1++) {

    loop_1:
        temp_f20 = (Math_Rand_ZeroOne() - 0.5f) * 140.0f;
        temp_f2 = (Math_Rand_ZeroOne() - 0.5f) * 20.0f;
        temp0.x = (this->dyna.actor.posRot.pos.x + (temp_f2 * temp_f22)) + (temp_f20 * temp_f24); // temp0.x
        temp0.y = (this->dyna.actor.posRot.pos.y + 30.0f) + ((f32)phi_s1 * 6.5f); // temp0.y
        temp0.z = (this->dyna.actor.posRot.pos.z + (temp_f2 * temp_f24)) - (temp_f20 * temp_f22); // temp0.z
        temp1.y = (Math_Rand_ZeroOne() - 0.2f) * 12.0f; // temp1.y
        temp_f18 = (s32)((Math_Rand_ZeroOne() * 55.0f) + 8.0f);
        temp_v1 = (s32)(temp_f18 << 0x10) >> 0x10;
        temp_s3 = (s32)(temp_f18 << 0x10) >> 0x10;
        if (temp_v1 < 0x14) {
            gravityInfluence = -0x12C;
        } else {
            gravityInfluence = -0x1A4;
            if (temp_v1 < 0x23) {
                gravityInfluence = -0x168;
            }
        }
        if (Math_Rand_ZeroOne() < 0.4f) {
            phi_v0 = 0x41;
        } else {
            phi_v0 = 0x21;
        }
        func_80029E8C(globalCtx, burstDepthY, burstDepthX, burstDepthY, gravityInfluence, phi_v0, 0x1E, 4, 0, temp_s3,
                      1, 3, 0x50, -1, 2, 0x500A880);
    }
    Math_Vec3f_Copy((Vec3f*)burstDepthY, (Vec3f*)&this->dyna.actor.posRot);
    func_80033480(globalCtx, (Vec3f*)burstDepthY, 60.0f, 4, 0x6E, 0xA0, 1);
    temp0.y += 40.0f;
    func_80033480(globalCtx, (Vec3f*)burstDepthY, 60.0f, 4, 0x78, 0xA0, 1);
    temp0.y += 40.0f;
    func_80033480(globalCtx, (Vec3f*)burstDepthY, 60.0f, 4, 0x6E, 0xA0, 1);
}

void BgSpot17Bakudankabe_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot17Bakudankabe* this = THIS;
    s32 pad;
    s32 sp24 = 0;

    DynaPolyInfo_SetActorMove(&this->dyna.actor, 0);
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) != 0) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    DynaPolyInfo_Alloc(&D_06000A38, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
}

void BgSpot17Bakudankabe_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot17Bakudankabe* this = THIS;
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void BgSpot17Bakudankabe_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot17Bakudankabe* this = THIS;
    if (this->dyna.actor.xzDistFromLink < 650.0f && func_80033684(globalCtx, &this->dyna.actor) != 0) {
        func_808B6BC0(this, globalCtx);
        Flags_SetSwitch(globalCtx, (this->dyna.actor.params & 0x3F));
        Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 40, NA_SE_EV_WALL_BROKEN);
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        Actor_Kill(&this->dyna.actor);
    }
}

void BgSpot17Bakudankabe_Draw(Actor* thisx, GlobalContext* globalCtx) {
    {
        u32 gameplayFrames;
        s8 sp62;
        s8 sp63;
        GraphicsContext* gfxCtx;
        Gfx* dispRefs[4];

        sp62 = coss((u16)(globalCtx->gameplayFrames * 1500)) >> 8;
        sp63 = coss((u16)(globalCtx->gameplayFrames * 1500)) >> 8;

        gfxCtx = globalCtx->state.gfxCtx;
        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 269);

        func_80093D18(globalCtx->state.gfxCtx);

        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 273),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        sp62 = (sp62 >> 1) + 0xC0;
        sp63 = (sp63 >> 1) + 0xC0;
        gameplayFrames = globalCtx->gameplayFrames;
        gDPSetEnvColor(gfxCtx->polyOpa.p++, sp62, sp63, 0xFF, 0x80);

        gSPDisplayList(gfxCtx->polyOpa.p++, D_60008A00);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 283);
    }

    {
        GraphicsContext* gfxCtx;
        Gfx* dispRefs[4];

        gfxCtx = globalCtx->state.gfxCtx;
        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 286);
        func_80093D84(globalCtx->state.gfxCtx);

        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 290),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, D_60009600);

        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 295);
    }
}
