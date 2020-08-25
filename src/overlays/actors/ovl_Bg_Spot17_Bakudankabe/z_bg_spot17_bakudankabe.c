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
extern Gfx D_500A880[];

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Bakudankabe/func_808B6BC0.s")
void func_808B6BC0(BgSpot17Bakudankabe* this, GlobalContext* globalCtx) {
    Vec3f burstDepthX;
    Vec3f burstDepthY;

    f32 temp_f20;
    f32 sinY;
    f32 cosY;
    f32 temp_f2;
    s16 scale;
    s32 i;
    s32 gravityInfluence;
    s16 phi_v0;
    f32 tempVar;

    sinY = Math_Sins(this->dyna.actor.shape.rot.y);
    cosY = Math_Coss(this->dyna.actor.shape.rot.y);

    burstDepthX.z = 0.0f;
    burstDepthX.x = 0.0f;

    for (i = 0; i < 0x14; i++) {
        tempVar = 0.2f;
        temp_f20 = (Math_Rand_ZeroOne() - 0.5f) * 140.0f;
        temp_f2 = (Math_Rand_ZeroOne() - 0.5f) * 20.0f;
      
        burstDepthY.x = (this->dyna.actor.posRot.pos.x + (temp_f2 * sinY)) + (temp_f20 * cosY);
        burstDepthY.y = (this->dyna.actor.posRot.pos.y + 30.0f) + (i * 6.5f);
        burstDepthY.z = (this->dyna.actor.posRot.pos.z + (temp_f2 * cosY)) - (temp_f20 * sinY);
       
        burstDepthX.y = (Math_Rand_ZeroOne() - tempVar) * 12.0f;
        scale = (s16)((Math_Rand_ZeroOne() * 55.0f) + 8.0f);

        if (scale < 0x14) {
            gravityInfluence = -0x12C;
        } else {
            gravityInfluence = -0x1A4;
            if (scale < 0x23) {
                gravityInfluence = -0x168;
            }
        }
        if (Math_Rand_ZeroOne() < 0.4f) {
            phi_v0 = 0x41;
        } else {
            phi_v0 = 0x21;
            do {} while(0); // Required to match
        }
        func_80029E8C(globalCtx, &burstDepthY, &burstDepthX, &burstDepthY, gravityInfluence, phi_v0, 0x1E, 4, 0, scale,
                      1, 3, 0x50, -1, 2, D_500A880);
    }
    Math_Vec3f_Copy(&burstDepthY, &this->dyna.actor.posRot.pos);
    func_80033480(globalCtx, &burstDepthY, 60.0f, 4, 0x6E, 0xA0, 1);
    burstDepthY.y += 40.0f;
    func_80033480(globalCtx, &burstDepthY, 60.0f, 4, 0x78, 0xA0, 1);
    burstDepthY.y += 40.0f;
    func_80033480(globalCtx, &burstDepthY, 60.0f, 4, 0x6E, 0xA0, 1);
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
