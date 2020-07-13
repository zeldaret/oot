#include "z_bg_heavy_block.h"
#include <vt.h>

#define FLAGS 0x00000000

#define THIS ((BgHeavyBlock*)thisx)

void BgHeavyBlock_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHeavyBlock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHeavyBlock_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHeavyBlock_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80884DB4(Actor* thisx, GlobalContext* globalCtx);

void func_80883C90(BgHeavyBlock* this, GlobalContext* globalCtx);
void func_808843B0(BgHeavyBlock* this, GlobalContext* globalCtx);
void func_808844D0(BgHeavyBlock* this, GlobalContext* globalCtx);
void func_80884658(BgHeavyBlock* this, GlobalContext* globalCtx);
void func_80884978(BgHeavyBlock* this, GlobalContext* globalCtx);
void func_8088496C(BgHeavyBlock* this, GlobalContext* globalCtx);

const ActorInit Bg_Heavy_Block_InitVars = {
    ACTOR_BG_HEAVY_BLOCK,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HEAVY_OBJECT,
    sizeof(BgHeavyBlock),
    (ActorFunc)BgHeavyBlock_Init,
    (ActorFunc)BgHeavyBlock_Destroy,
    (ActorFunc)BgHeavyBlock_Update,
    (ActorFunc)BgHeavyBlock_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 400, ICHAIN_STOP),
};
/*
Vec3f D_80884E80[] = {
    { 0.0f, 300.0f, -20.0f }, { 50.0f, 200.0f, -20.0f }, { -50.0f, 200.0f, -20.0f },
    { 0.0f, 100.0f, 30.0f },  { 0.0f, 100.0f, -70.0f },  { 0.0f, 0.0f, -20.0f },
};
*/
extern UNK_TYPE D_0600169C;
extern Gfx D_060013C0;
extern Gfx D_06001A30;
extern Gfx D_060018A0;

void func_80883790(BgHeavyBlock* this, f32 scale) {
    this->dyna.actor.posRot.rot.x = Math_Rand_CenteredFloat(1024.0f) * scale;
    this->dyna.actor.posRot.rot.y = Math_Rand_CenteredFloat(1024.0f) * scale;
    this->dyna.actor.posRot.rot.z = Math_Rand_CenteredFloat(1024.0f) * scale;
}

void func_80883820(BgHeavyBlock* this, f32 scale) {
    f32 randScale;
    f32 sp20;
    f32 randFloat;

    this->dyna.actor.gravity = -0.6000000238418579f; // try to use beter float
    this->dyna.actor.minVelocityY = -12.0f;
    randFloat = Math_Rand_CenteredFloat(12.0f * scale);
    if (randFloat < 0.0f) {
        randScale = randFloat - 2.0f;
    } else {
        randScale = randFloat + 2.0f;
    }
    this->dyna.actor.velocity.y = (Math_Rand_ZeroFloat(8.0f) + 4.0f) * scale;
    this->dyna.actor.velocity.z = Math_Rand_ZeroFloat(-8.0f * scale);
    sp20 = Math_Coss(this->dyna.actor.posRot.rot.y);
    this->dyna.actor.velocity.x =
        (Math_Sins(this->dyna.actor.posRot.rot.y) * this->dyna.actor.velocity.z + (sp20 * randScale));
    sp20 = Math_Sins(this->dyna.actor.posRot.rot.y);
    this->dyna.actor.velocity.z =
        (Math_Coss(this->dyna.actor.posRot.rot.y) * this->dyna.actor.velocity.z) + (-sp20 * randScale);
    func_80883790(this, scale);
    Actor_SetScale(&this->dyna.actor, Math_Rand_CenteredFloat(0.20000000298023224f) + 1.0f); // try to use beter float
}

// BgHeavyBlock_SetupDynapoly
void func_80883998(BgHeavyBlock* this, GlobalContext* globalCtx) {
    s32 pad[2];
    UNK_TYPE unk_a1;

    unk_a1 = 0;
    this->dyna.actor.flags |= 0x20030;
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_0600169C, &unk_a1);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna, unk_a1);
}

void BgHeavyBlock_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHeavyBlock* this = THIS;

    Actor_ProcessInitChain(thisx, sInitChain);
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    this->unk_172 = 0;

    if (globalCtx->sceneNum == SCENE_GANON_TOU) { // Ganon's Castle Exterior
        thisx->params &= 0xFF00;
        thisx->params |= 4;
    }

    switch (thisx->params & 0xFF) {
        case 2: // bigger broken piece
            thisx->draw = func_80884DB4;
            this->actionFunc = func_80883C90;
            func_80883820(this, 1.0f);
            this->timer = 0x78;
            thisx->flags |= 0x10;
            this->unk_164.y = -50.0f;
            break;
        case 3: // smaller broken piece
            thisx->draw = func_80884DB4;
            this->actionFunc = func_80883C90;
            func_80883820(this, 2.0f);
            this->timer = 0x78;
            thisx->flags |= 0x10;
            this->unk_164.y = -20.0f;
            break;
        case 1: // breaks on impact (light trial)
            func_80883998(this, globalCtx);
            if (Flags_GetSwitch(globalCtx, (thisx->params >> 8) & 0x3F)) {
                Actor_Kill(thisx);
                return;
            }
            this->actionFunc = func_808843B0;
            break;
        case 4: // if flag is set, double defense rock has been thrown. otherwise same as 0 and default
            func_80883998(this, globalCtx);
            if (Flags_GetSwitch(globalCtx, (thisx->params >> 8) & 0x3F)) {
                this->actionFunc = func_8088496C;
                thisx->shape.rot.x = thisx->posRot.rot.x = 0x8AD0;
                thisx->shape.rot.y = thisx->posRot.rot.y = 0xC000;
                thisx->shape.rot.z = thisx->posRot.rot.z = 0x0;
                thisx->posRot.pos.x = 1704.0f;
                thisx->posRot.pos.y = 1504.0f;
                thisx->posRot.pos.z = 516.0f;
            }
            this->actionFunc = func_808843B0;
            break;
        case 0: // gets thrown and stays (fire trial)
            func_80883998(this, globalCtx);
            this->actionFunc = func_808843B0;
            break;
        default:
            func_80883998(this, globalCtx);
            this->actionFunc = func_808843B0;
            break;
    }
    // Translates to: "Largest Block Save Bit %x"
    osSyncPrintf(VT_FGCOL(CYAN) " 最大 ブロック セーブビット %x\n" VT_RST, thisx->params);
}

void BgHeavyBlock_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHeavyBlock* this = THIS;
    switch (this->dyna.actor.params & 0xFF) {
        case 2:
            break;
        case 3:
            break;
        default:
            DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    }
}

void func_80883C90(BgHeavyBlock* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    thisx->velocity.y += thisx->gravity;
    if (thisx->velocity.y < thisx->minVelocityY) {
        thisx->velocity.y = thisx->minVelocityY;
    }
    thisx->velocity.x *= 0.98f; // 0.9800000190734863
    thisx->velocity.z *= 0.98f;
    func_8002D7EC(thisx); // updates position based on speed and displacement
    thisx->shape.rot.x += thisx->posRot.rot.x;
    thisx->shape.rot.y += thisx->posRot.rot.y;
    thisx->shape.rot.z += thisx->posRot.rot.z;
    if ((this->unk_172 & 1) == 0) {
        thisx->posRot.pos.y += this->unk_164.y;
        thisx->pos4.y += this->unk_164.y;
        func_8002E4B4(globalCtx, thisx, 50.0f, 50.0f, 0.0f, 5);
        thisx->posRot.pos.y -= this->unk_164.y;
        thisx->pos4.y -= this->unk_164.y;
        if (thisx->bgCheckFlags & 1) {
            this->unk_172 |= 1;
            thisx->velocity.y = Math_Rand_ZeroFloat(4.0f) + 2.0f;
            thisx->velocity.x = Math_Rand_CenteredFloat(8.0f);
            thisx->velocity.z = Math_Rand_CenteredFloat(8.0f);
            func_80883790(this, 1.0f);
            Audio_PlayActorSound2(thisx, 0x2852);
            // rumble
            func_800AA000(thisx->xzDistFromLink, 0x96, 0xA, 8);
        }
    }
    if (this->timer > 0) {
        this->timer -= 1;
    } else {
        Actor_Kill(thisx);
    }
}

// related to dust particles. probbaly wont decopmile until we know more about effects
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_80883E54.s")
void func_80883E54(GlobalContext* globalCtx, f32 x, f32 y, f32 z, f32 arg4, f32 arg5, f32 arg6, s32 arg7);

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_808841B8.s")
// BgHeavyBlock_SpawnPieces
void func_808841B8(BgHeavyBlock* this, GlobalContext* globalCtx) {
    Vec3f spA4[] = {
        { 0.0f, 300.0f, -20.0f }, { 50.0f, 200.0f, -20.0f }, { -50.0f, 200.0f, -20.0f },
        { 0.0f, 100.0f, 30.0f },  { 0.0f, 100.0f, -70.0f },  { 0.0f, 0.0f, -20.0f },
    };
    f32 cosX;
    f32 sinY;
    f32 sinYNeg;
    f32 scale;
    f32 z;
    f32 x;
    f32 y;
    f32 cosY;
    f32 sinX;
    s32 i;

    sinX = Math_Sins(this->dyna.actor.posRot.rot.x);
    cosX = Math_Coss(this->dyna.actor.posRot.rot.x);
    sinY = Math_Sins(this->dyna.actor.posRot.rot.y);
    cosY = Math_Coss(this->dyna.actor.posRot.rot.y);
    sinYNeg = -sinY;

    for (i = 0; i != ARRAY_COUNT(spA4); i++) {
        scale = (spA4[i].z * cosX) + (spA4[i].y * sinX);
        x = ((spA4[i].x * cosY) + this->dyna.actor.posRot.pos.x) + (sinY * scale);
        y = (-spA4[i].z * sinX) + (this->dyna.actor.posRot.pos.y + (spA4[i].y * cosX));
        z = ((spA4[i].x * sinYNeg) + this->dyna.actor.posRot.pos.z) + (cosY * scale);

        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_HEAVY_BLOCK, x, y, z,
                    this->dyna.actor.shape.rot.x, this->dyna.actor.shape.rot.y, 0, 2);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_HEAVY_BLOCK, x, y, z,
                    this->dyna.actor.shape.rot.x, this->dyna.actor.shape.rot.y, 0, 3);

        func_80883E54(globalCtx, x, y, z, 0.0f, 0.0f, 0.0f, 0);
    }
}
// BgHeavyBlock_Wait
void func_808843B0(BgHeavyBlock* this, GlobalContext* globalCtx) {
    s32 quakeIndex; // s16?

    // if attached A is set, start onepointdemo (cutscene)
    if (func_8002F410(&this->dyna.actor, globalCtx)) {
        this->timer = 0;
        switch (this->dyna.actor.params & 0xFF) {
            case 1:
                func_800800F8(globalCtx, 0xFB4, 0x10E, &this->dyna.actor, 0);
                break;
            case 0:
                func_800800F8(globalCtx, 0xFB5, 0xDC, &this->dyna.actor, 0);
                break;
            case 4:
                func_800800F8(globalCtx, 0xFB6, 0xD2, &this->dyna.actor, 0);
                break;
        }
        quakeIndex = Quake_Add(globalCtx->cameraPtrs[globalCtx->activeCamera], 3);
        Quake_SetSpeed(quakeIndex, 25000);
        Quake_SetQuakeValues(quakeIndex, 1, 1, 5, 0);
        Quake_SetCountdown(quakeIndex, 10);
        this->actionFunc = func_808844D0;
    }
}

// BgHeavyBlock_Lift
void func_808844D0(BgHeavyBlock* this, GlobalContext* globalCtx) {
    Player* player;
    s32 pad;
    s32 pad1;
    f32 zOffset;
    f32 xScale;
    f32 xOffset;

    player = PLAYER;
    if (this->timer == 11) {
        func_800AA000(0.0f, 0xFF, 0x14, 0x14); // related to controller rumble
        func_8002F7DC(player, 0x86C);          // play rock lifting sound
        LOG_STRING("NA_SE_PL_PULL_UP_BIGROCK", "../z_bg_heavy_block.c", 691);
    }

    // draw dust as rock is being lifted
    if (this->timer < 40) {
        xOffset = Math_Rand_CenteredFloat(110.0f);
        xScale = Math_Sins(this->dyna.actor.shape.rot.y);
        zOffset = Math_Rand_CenteredFloat(110.0f);
        func_80883E54(globalCtx, (xScale * -70.0f) + (this->dyna.actor.posRot.pos.x + xOffset),
                      this->dyna.actor.posRot.pos.y + 10.0f,
                      (Math_Coss(this->dyna.actor.shape.rot.y) * -70.0f) + (this->dyna.actor.posRot.pos.z + zOffset),
                      0.0f, -1.0f, 0.0f, 0xC);
    }

    this->timer += 1;
    func_8002DF54(globalCtx, player, 8); // sets player action

    // if attachedA is NULL, link threw it
    if (func_8002F5A0(&this->dyna.actor, globalCtx)) {
        Audio_PlayActorSound2(&this->dyna.actor, 0x28E2); // play rock throwing sound
        this->actionFunc = func_80884658;
    }
}

// BgHeavyBlock_Fly
void func_80884658(BgHeavyBlock* this, GlobalContext* globalCtx) {
    UNK_PTR raycast_arg2;
    s32 quakeIndex;
    Vec3f pos;
    f32 raycastResult;

    Actor_MoveForward(&this->dyna.actor);
    pos.x = this->dyna.actor.initPosRot.pos.x;
    pos.y = this->dyna.actor.initPosRot.pos.y + 1000.0f;
    pos.z = this->dyna.actor.initPosRot.pos.z;
    raycastResult =
        func_8003C9A4(&globalCtx->colCtx, &this->dyna.actor.floorPoly, &raycast_arg2, &this->dyna.actor, &pos);
    this->dyna.actor.groundY = raycastResult;
    if (this->dyna.actor.initPosRot.pos.y <= raycastResult) {
        func_800AA000(0.0f, 0xFF, 0x3C, 4); // related to controller rumble
        switch (this->dyna.actor.params & 0xFF) {
            case 1:
                func_808841B8(this, globalCtx);
                Flags_SetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F);
                Actor_Kill(&this->dyna.actor);

                quakeIndex = Quake_Add(globalCtx->cameraPtrs[globalCtx->activeCamera], 3);
                Quake_SetSpeed(quakeIndex, 28000);
                Quake_SetQuakeValues(quakeIndex, 14, 2, 100, 0);
                Quake_SetCountdown(quakeIndex, 30);

                quakeIndex = Quake_Add(globalCtx->cameraPtrs[globalCtx->activeCamera], 2);
                Quake_SetSpeed(quakeIndex, 12000);
                Quake_SetQuakeValues(quakeIndex, 5, 0, 0, 0);
                Quake_SetCountdown(quakeIndex, 999);

                Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 30, 0x28E1); // breaking sound?
                return;
            case 4:
                Audio_PlayActorSound2(&this->dyna.actor, 0x281D);

                quakeIndex = Quake_Add(globalCtx->cameraPtrs[globalCtx->activeCamera], 3);
                Quake_SetSpeed(quakeIndex, 28000);
                Quake_SetQuakeValues(quakeIndex, 16, 2, 120, 0);
                Quake_SetCountdown(quakeIndex, 40);

                this->actionFunc = func_80884978;
                Flags_SetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F);
                break;
            case 0:
                Audio_PlayActorSound2(&this->dyna.actor, 0x289F);

                quakeIndex = Quake_Add(globalCtx->cameraPtrs[globalCtx->activeCamera], 3);
                Quake_SetSpeed(quakeIndex, 28000);
                Quake_SetQuakeValues(quakeIndex, 14, 2, 100, 0);
                Quake_SetCountdown(quakeIndex, 40);

                this->actionFunc = func_80884978;
                break;
            default:
                quakeIndex = Quake_Add(globalCtx->cameraPtrs[globalCtx->activeCamera], 3);
                Quake_SetSpeed(quakeIndex, 28000);
                Quake_SetQuakeValues(quakeIndex, 14, 2, 100, 0);
                Quake_SetCountdown(quakeIndex, 40);

                this->actionFunc = func_80884978;
        }
    }
    this->dyna.actor.shape.rot.x = atan2s(this->dyna.actor.velocity.y, this->dyna.actor.speedXZ);
}

// BgHeavyBlock_DoNothing
void func_8088496C(BgHeavyBlock* this, GlobalContext* globalCtx) {
}

// BgHeavyBlock_Land
void func_80884978(BgHeavyBlock* this, GlobalContext* globalCtx) {
    s32 pad;

    if (Math_SmoothScaleMaxMinS(&this->dyna.actor.shape.rot.x, 0x8AD0, 6, 2000, 100) != 0) {
        Math_ApproxF(&this->dyna.actor.speedXZ, 0.0f, 20.0f);
        Math_ApproxF(&this->dyna.actor.velocity.y, 0.0f, 3.0f);
        this->dyna.actor.gravity = 0.0f;
        this->dyna.actor.posRot.pos = this->dyna.actor.initPosRot.pos;
        Actor_MoveForward(&this->dyna.actor);
        this->dyna.actor.initPosRot.pos = this->dyna.actor.posRot.pos;
        switch (this->dyna.actor.params & 0xFF) {
            case 4:
                func_80883E54(globalCtx, Math_Rand_CenteredFloat(30.0f) + 1678.0f,
                              Math_Rand_ZeroFloat(100.0f) + 1286.0f, Math_Rand_CenteredFloat(30.0f) + 552.0f, 0.0f,
                              0.0f, 0.0f, 0);
                func_80883E54(globalCtx, Math_Rand_CenteredFloat(30.0f) + 1729.0f, Math_Rand_ZeroFloat(80.0f) + 1269.0f,
                              Math_Rand_CenteredFloat(30.0f) + 600.0f, 0.0f, 0.0f, 0.0f, 0);
                break;
            case 0:
                func_80883E54(globalCtx, Math_Rand_CenteredFloat(100.0f) + -735.0f, 29.0f,
                              Math_Rand_CenteredFloat(100.0f) + -3418.0f, 0.0f, 0.0f, 0.0f, 3);
                break;
        }
    } else {
        this->dyna.actor.flags &= ~0x30;
        this->actionFunc = func_8088496C;
    }
}

void BgHeavyBlock_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHeavyBlock* this = THIS;
    this->actionFunc(this, globalCtx);
}

void BgHeavyBlock_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3f D_80884ED4 = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_80884EC8 = { 0.0f, 0.0f, 0.0f };
    BgHeavyBlock* this;
    s32 pad;
    Player* player;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    this = THIS;
    player = PLAYER;
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_heavy_block.c", 904);
    if ((ActorFunc)func_808844D0 == this->actionFunc) {
        func_800D1694(player->unk_3B0.x, player->unk_3B0.y, player->unk_3B0.z, &thisx->shape.rot);
        Matrix_Translate(-this->unk_164.x, -this->unk_164.y, -this->unk_164.z, MTXMODE_APPLY);
    } else if ((thisx->gravity == 0.0f) && ((ActorFunc)func_80884978 == this->actionFunc)) {
        func_800D1694(thisx->initPosRot.pos.x, thisx->initPosRot.pos.y, thisx->initPosRot.pos.z, &thisx->shape);
        Matrix_Translate(-D_80884ED4.x, -D_80884ED4.y, -D_80884ED4.z, MTXMODE_APPLY);
    }
    Matrix_MultVec3f(&D_80884EC8, &thisx->posRot);
    Matrix_MultVec3f(&D_80884ED4, &thisx->initPosRot);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_heavy_block.c", 931),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_060013C0);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_heavy_block.c", 935);
}

// BgHeavyBlock_DrawPieces
void func_80884DB4(Actor* thisx, GlobalContext* globalCtx) {
    switch (thisx->params & 0xFF) {
        case 2:
            Matrix_Translate(50.0f, -260.0f, -20.0f, MTXMODE_APPLY);
            Gfx_DrawDListOpa(globalCtx, &D_060018A0);
            break;
        case 3:
            Matrix_Translate(45.0f, -280.0f, -5.0f, MTXMODE_APPLY);
            Gfx_DrawDListOpa(globalCtx, &D_06001A30);
            break;
    }
}
