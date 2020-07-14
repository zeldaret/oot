#include "z_bg_heavy_block.h"
#include <vt.h>

#define FLAGS 0x00000000

#define THIS ((BgHeavyBlock*)thisx)

void BgHeavyBlock_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHeavyBlock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHeavyBlock_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHeavyBlock_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgHeavyBlock_DrawPieces(Actor* thisx, GlobalContext* globalCtx);

void BgHeavyBlock_MovePiece(BgHeavyBlock* this, GlobalContext* globalCtx);
void BgHeavyBlock_Wait(BgHeavyBlock* this, GlobalContext* globalCtx);
void BgHeavyBlock_LiftedUp(BgHeavyBlock* this, GlobalContext* globalCtx);
void BgHeavyBlock_Fly(BgHeavyBlock* this, GlobalContext* globalCtx);
void BgHeavyBlock_Land(BgHeavyBlock* this, GlobalContext* globalCtx);
void BgHeavyBlock_DoNothing(BgHeavyBlock* this, GlobalContext* globalCtx);

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

extern UNK_TYPE D_0600169C;
extern Gfx D_060013C0[];
extern Gfx D_06001A30[];
extern Gfx D_060018A0[];

void BgHeavyBlock_SetPieceRot(BgHeavyBlock* this, f32 scale) {
    this->dyna.actor.posRot.rot.x = Math_Rand_CenteredFloat(1024.0f) * scale;
    this->dyna.actor.posRot.rot.y = Math_Rand_CenteredFloat(1024.0f) * scale;
    this->dyna.actor.posRot.rot.z = Math_Rand_CenteredFloat(1024.0f) * scale;
}

void BgHeavyBlock_InitPiece(BgHeavyBlock* this, f32 scale) {
    f32 randScale;
    f32 sp20;
    f32 randFloat;

    this->dyna.actor.gravity = -0.6f;
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
    BgHeavyBlock_SetPieceRot(this, scale);
    Actor_SetScale(&this->dyna.actor, Math_Rand_CenteredFloat(0.2f) + 1.0f);
}

void BgHeavyBlock_SetupDynapoly(BgHeavyBlock* this, GlobalContext* globalCtx) {
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

    // Ganon's Castle Exterior
    if (globalCtx->sceneNum == SCENE_GANON_TOU) {
        thisx->params &= 0xFF00;
        thisx->params |= 4;
    }

    switch (thisx->params & 0xFF) {
        case 2: // bigger broken piece
            thisx->draw = BgHeavyBlock_DrawPieces;
            this->actionFunc = BgHeavyBlock_MovePiece;
            BgHeavyBlock_InitPiece(this, 1.0f);
            this->timer = 0x78;
            thisx->flags |= 0x10;
            this->unk_164.y = -50.0f;
            break;
        case 3: // smaller broken piece
            thisx->draw = BgHeavyBlock_DrawPieces;
            this->actionFunc = BgHeavyBlock_MovePiece;
            BgHeavyBlock_InitPiece(this, 2.0f);
            this->timer = 0x78;
            thisx->flags |= 0x10;
            this->unk_164.y = -20.0f;
            break;
        case 1: // breaks on impact (light trial)
            BgHeavyBlock_SetupDynapoly(this, globalCtx);
            if (Flags_GetSwitch(globalCtx, (thisx->params >> 8) & 0x3F)) {
                Actor_Kill(thisx);
                return;
            }
            this->actionFunc = BgHeavyBlock_Wait;
            break;
        case 4: // if flag is set, double defense rock has been thrown. otherwise same as 0 and default
            BgHeavyBlock_SetupDynapoly(this, globalCtx);
            if (Flags_GetSwitch(globalCtx, (thisx->params >> 8) & 0x3F)) {
                this->actionFunc = BgHeavyBlock_DoNothing;
                thisx->shape.rot.x = thisx->posRot.rot.x = 0x8AD0;
                thisx->shape.rot.y = thisx->posRot.rot.y = 0xC000;
                thisx->shape.rot.z = thisx->posRot.rot.z = 0x0;
                thisx->posRot.pos.x = 1704.0f;
                thisx->posRot.pos.y = 1504.0f;
                thisx->posRot.pos.z = 516.0f;
            }
            this->actionFunc = BgHeavyBlock_Wait;
            break;
        case 0: // gets thrown and stays (fire trial)
            BgHeavyBlock_SetupDynapoly(this, globalCtx);
            this->actionFunc = BgHeavyBlock_Wait;
            break;
        default:
            BgHeavyBlock_SetupDynapoly(this, globalCtx);
            this->actionFunc = BgHeavyBlock_Wait;
            break;
    }
    // "Largest Block Save Bit %x"
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

void BgHeavyBlock_MovePiece(BgHeavyBlock* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    thisx->velocity.y += thisx->gravity;

    if (thisx->velocity.y < thisx->minVelocityY) {
        thisx->velocity.y = thisx->minVelocityY;
    }

    thisx->velocity.x *= 0.98f;
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
            BgHeavyBlock_SetPieceRot(this, 1.0f);
            Audio_PlayActorSound2(thisx, NA_SE_EV_ROCK_BROKEN);
            func_800AA000(thisx->xzDistFromLink, 0x96, 0xA, 8);
        }
    }

    if (this->timer > 0) {
        this->timer -= 1;
    } else {
        Actor_Kill(thisx);
    }
}

void BgHeavyBlock_SpawnDust(GlobalContext* globalCtx, f32 x, f32 y, f32 z, f32 arg4, f32 arg5, f32 arg6,
                            u8 dustParams) {
    Color_RGBA8_n sp8C;
    Color_RGBA8_n sp88;
    Vec3f eye;
    Vec3f at;
    s16 sp6E;
    s16 sp6C;
    Vec3f sp60;
    Vec3f sp54;
    Vec3f pos;
    f32 sp44;
    s16 sp42;
    s16 sp40;

    pos.x = x;
    pos.y = y;
    pos.z = z;

    if ((dustParams & 1)) {
        // red dust, landed in fire
        sp8C.r = 150;
        sp8C.g = sp8C.b = sp88.g = sp88.b = 0;
        sp88.r = 80;
        sp8C.a = sp88.a = 0;
    } else {
        // brown dust
        // clang-format off
        sp8C.r = 170; sp8C.g = 130; sp8C.b = 90; sp8C.a = 255;
        sp88.r = 100; sp88.g = 60; sp88.b = 20; sp88.a = 255;
        // clang-format on
    }

    sp60.z = 0.0f;
    sp60.x = 0.0f;
    sp60.y = (dustParams & 8) ? 0.0f : 0.5f;

    eye = globalCtx->cameraPtrs[globalCtx->activeCamera]->eye;
    at = globalCtx->cameraPtrs[globalCtx->activeCamera]->at;

    sp40 = 1000;
    sp42 = 160;

    switch (dustParams & 6) {
        case 4:
        case 6:
            sp54.x = arg4;
            sp54.y = arg5;
            sp54.z = arg6;
            sp40 = 300;
            sp42 = 50;
            break;
        case 2:
            sp44 = Math_Rand_ZeroFloat(5.0f) + 5.0f;
            sp6E = Math_Rand_CenteredFloat(65280.0f);

            sp54.x = (Math_Sins(sp6E) * sp44) + arg4;
            sp54.y = arg5;
            sp54.z = (Math_Coss(sp6E) * sp44) + arg6;
            break;
        case 0:
            sp6E = Math_Vec3f_Yaw(&eye, &at);
            sp6C = -Math_Vec3f_Pitch(&eye, &at);

            sp54.x = ((5.0f * Math_Sins(sp6E)) * Math_Coss(sp6C)) + arg4;
            sp54.y = (Math_Sins(sp6C) * 5.0f) + arg5;
            sp54.z = ((5.0f * Math_Coss(sp6E)) * Math_Coss(sp6C)) + arg6;

            pos.x -= (sp54.x * 20.0f);
            pos.y -= (sp54.y * 20.0f);
            pos.z -= (sp54.z * 20.0f);
            break;
    }

    func_8002843C(globalCtx, &pos, &sp54, &sp60, &sp8C, &sp88, sp40, sp42, (s32)Math_Rand_ZeroFloat(10.0f) + 20);
}

void BgHeavyBlock_SpawnPieces(BgHeavyBlock* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3f spA4[] = {
        { 0.0f, 300.0f, -20.0f }, { 50.0f, 200.0f, -20.0f }, { -50.0f, 200.0f, -20.0f },
        { 0.0f, 100.0f, 30.0f },  { 0.0f, 100.0f, -70.0f },  { 0.0f, 0.0f, -20.0f },
    };
    s32 pad;
    Vec3f pos;
    f32 sinPitch;
    f32 cosPitch;
    f32 sinYaw;
    f32 cosYaw;

    sinPitch = Math_Sins(this->dyna.actor.posRot.rot.x);
    cosPitch = Math_Coss(this->dyna.actor.posRot.rot.x);
    sinYaw = Math_Sins(this->dyna.actor.posRot.rot.y);
    cosYaw = Math_Coss(this->dyna.actor.posRot.rot.y);

    for (i = 0; i < ARRAY_COUNT(spA4); i++) {
        pos.z = (spA4[i].y * sinPitch) + (spA4[i].z * cosPitch);

        pos.x = this->dyna.actor.posRot.pos.x + (spA4[i].x * cosYaw) + (sinYaw * pos.z);
        pos.y = this->dyna.actor.posRot.pos.y + (spA4[i].y * cosPitch) + (-spA4[i].z * sinPitch);
        pos.z = this->dyna.actor.posRot.pos.z + (spA4[i].x * -sinYaw) + (cosYaw * pos.z);

        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_HEAVY_BLOCK, pos.x, pos.y, pos.z,
                    this->dyna.actor.shape.rot.x, this->dyna.actor.shape.rot.y, 0, 2);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_HEAVY_BLOCK, pos.x, pos.y, pos.z,
                    this->dyna.actor.shape.rot.x, this->dyna.actor.shape.rot.y, 0, 3);

        BgHeavyBlock_SpawnDust(globalCtx, pos.x, pos.y, pos.z, 0.0f, 0.0f, 0.0f, 0);
    }
}

void BgHeavyBlock_Wait(BgHeavyBlock* this, GlobalContext* globalCtx) {
    s32 quakeIndex;

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
        quakeIndex = Quake_Add(ACTIVE_CAM, 3);
        Quake_SetSpeed(quakeIndex, 25000);
        Quake_SetQuakeValues(quakeIndex, 1, 1, 5, 0);
        Quake_SetCountdown(quakeIndex, 10);
        this->actionFunc = BgHeavyBlock_LiftedUp;
    }
}

void BgHeavyBlock_LiftedUp(BgHeavyBlock* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;
    s32 pad1;
    f32 zOffset;
    f32 xScale;
    f32 xOffset;

    if (this->timer == 11) {
        func_800AA000(0.0f, 0xFF, 0x14, 0x14);
        func_8002F7DC(player, NA_SE_PL_PULL_UP_BIGROCK);
        LOG_STRING("NA_SE_PL_PULL_UP_BIGROCK", "../z_bg_heavy_block.c", 691);
    }

    if (this->timer < 40) {
        xOffset = Math_Rand_CenteredFloat(110.0f);
        xScale = Math_Sins(this->dyna.actor.shape.rot.y);
        zOffset = Math_Rand_CenteredFloat(110.0f);
        BgHeavyBlock_SpawnDust(globalCtx, (xScale * -70.0f) + (this->dyna.actor.posRot.pos.x + xOffset),
                               this->dyna.actor.posRot.pos.y + 10.0f,
                               (Math_Coss(this->dyna.actor.shape.rot.y) * -70.0f) +
                                   (this->dyna.actor.posRot.pos.z + zOffset),
                               0.0f, -1.0f, 0.0f, 0xC);
    }

    this->timer += 1;
    func_8002DF54(globalCtx, player, 8);

    // if attachedA is NULL, link threw it
    if (func_8002F5A0(&this->dyna.actor, globalCtx)) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_HEAVY_THROW);
        this->actionFunc = BgHeavyBlock_Fly;
    }
}

void BgHeavyBlock_Fly(BgHeavyBlock* this, GlobalContext* globalCtx) {
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
        func_800AA000(0.0f, 0xFF, 0x3C, 4);
        switch (this->dyna.actor.params & 0xFF) {
            case 1:
                BgHeavyBlock_SpawnPieces(this, globalCtx);
                Flags_SetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F);
                Actor_Kill(&this->dyna.actor);

                quakeIndex = Quake_Add(ACTIVE_CAM, 3);
                Quake_SetSpeed(quakeIndex, 28000);
                Quake_SetQuakeValues(quakeIndex, 14, 2, 100, 0);
                Quake_SetCountdown(quakeIndex, 30);

                quakeIndex = Quake_Add(ACTIVE_CAM, 2);
                Quake_SetSpeed(quakeIndex, 12000);
                Quake_SetQuakeValues(quakeIndex, 5, 0, 0, 0);
                Quake_SetCountdown(quakeIndex, 999);

                Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 30, NA_SE_EV_ELECTRIC_EXPLOSION);
                return;
            case 4:
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_STONE_BOUND);

                quakeIndex = Quake_Add(ACTIVE_CAM, 3);
                Quake_SetSpeed(quakeIndex, 28000);
                Quake_SetQuakeValues(quakeIndex, 16, 2, 120, 0);
                Quake_SetCountdown(quakeIndex, 40);

                this->actionFunc = BgHeavyBlock_Land;
                Flags_SetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F);
                break;
            case 0:
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BUYOSTAND_STOP_U);

                quakeIndex = Quake_Add(ACTIVE_CAM, 3);
                Quake_SetSpeed(quakeIndex, 28000);
                Quake_SetQuakeValues(quakeIndex, 14, 2, 100, 0);
                Quake_SetCountdown(quakeIndex, 40);

                this->actionFunc = BgHeavyBlock_Land;
                break;
            default:
                quakeIndex = Quake_Add(ACTIVE_CAM, 3);
                Quake_SetSpeed(quakeIndex, 28000);
                Quake_SetQuakeValues(quakeIndex, 14, 2, 100, 0);
                Quake_SetCountdown(quakeIndex, 40);

                this->actionFunc = BgHeavyBlock_Land;
        }
    }
    this->dyna.actor.shape.rot.x = atan2s(this->dyna.actor.velocity.y, this->dyna.actor.speedXZ);
}

void BgHeavyBlock_DoNothing(BgHeavyBlock* this, GlobalContext* globalCtx) {
}

void BgHeavyBlock_Land(BgHeavyBlock* this, GlobalContext* globalCtx) {
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
                BgHeavyBlock_SpawnDust(globalCtx, Math_Rand_CenteredFloat(30.0f) + 1678.0f,
                                       Math_Rand_ZeroFloat(100.0f) + 1286.0f, Math_Rand_CenteredFloat(30.0f) + 552.0f,
                                       0.0f, 0.0f, 0.0f, 0);
                BgHeavyBlock_SpawnDust(globalCtx, Math_Rand_CenteredFloat(30.0f) + 1729.0f,
                                       Math_Rand_ZeroFloat(80.0f) + 1269.0f, Math_Rand_CenteredFloat(30.0f) + 600.0f,
                                       0.0f, 0.0f, 0.0f, 0);
                break;
            case 0:
                BgHeavyBlock_SpawnDust(globalCtx, Math_Rand_CenteredFloat(100.0f) + -735.0f, 29.0f,
                                       Math_Rand_CenteredFloat(100.0f) + -3418.0f, 0.0f, 0.0f, 0.0f, 3);
                break;
        }
    } else {
        this->dyna.actor.flags &= ~0x30;
        this->actionFunc = BgHeavyBlock_DoNothing;
    }
}

void BgHeavyBlock_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHeavyBlock* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgHeavyBlock_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3f D_80884EC8 = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_80884ED4 = { 0.0f, 400.0f, 0.0f };
    BgHeavyBlock* this = THIS;
    s32 pad;
    Player* player = PLAYER;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_heavy_block.c", 904);

    if (BgHeavyBlock_LiftedUp == this->actionFunc) {
        func_800D1694(player->unk_3B0.x, player->unk_3B0.y, player->unk_3B0.z, &thisx->shape.rot);
        Matrix_Translate(-this->unk_164.x, -this->unk_164.y, -this->unk_164.z, MTXMODE_APPLY);
    } else if ((thisx->gravity == 0.0f) && (BgHeavyBlock_Land == this->actionFunc)) {
        func_800D1694(thisx->initPosRot.pos.x, thisx->initPosRot.pos.y, thisx->initPosRot.pos.z, &thisx->shape);
        Matrix_Translate(-D_80884ED4.x, -D_80884ED4.y, -D_80884ED4.z, MTXMODE_APPLY);
    }

    Matrix_MultVec3f(&D_80884EC8, &thisx->posRot);
    Matrix_MultVec3f(&D_80884ED4, &thisx->initPosRot);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_heavy_block.c", 931),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_060013C0);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_heavy_block.c", 935);
}

void BgHeavyBlock_DrawPieces(Actor* thisx, GlobalContext* globalCtx) {
    switch (thisx->params & 0xFF) {
        case 2:
            Matrix_Translate(50.0f, -260.0f, -20.0f, MTXMODE_APPLY);
            Gfx_DrawDListOpa(globalCtx, D_060018A0);
            break;
        case 3:
            Matrix_Translate(45.0f, -280.0f, -5.0f, MTXMODE_APPLY);
            Gfx_DrawDListOpa(globalCtx, D_06001A30);
            break;
    }
}
