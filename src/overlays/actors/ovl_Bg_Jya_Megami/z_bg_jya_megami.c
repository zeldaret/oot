#include "z_bg_jya_megami.h"

#define FLAGS 0x00000000

#define THIS ((BgJyaMegami*)thisx)

void BgJyaMegami_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaMegami_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaMegami_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaMegami_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgJyaMegami_SetupDetectLight(BgJyaMegami* this);
void BgJyaMegami_DetectLight(BgJyaMegami* this, GlobalContext* globalContext);
void BgJyaMegami_SetupExplosion(BgJyaMegami* this);
void BgJyaMegami_Explosion(BgJyaMegami* this, GlobalContext* globalContext);

extern Gfx D_06005780[];
extern UNK_TYPE D_06005C4C;
extern Gfx D_0600B9F8[];

const ActorInit Bg_Jya_Megami_InitVars = {
    ACTOR_BG_JYA_MEGAMI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaMegami),
    (ActorFunc)BgJyaMegami_Init,
    (ActorFunc)BgJyaMegami_Destroy,
    (ActorFunc)BgJyaMegami_Update,
    (ActorFunc)BgJyaMegami_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00200000, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { 0x00, { { 0x0000, 0xFDA8, 0xFF38 }, 0x003C }, 0x0064 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static BgJyaMegami_PieceInit sPiecesInit[] = {
    { { -50.0f, -21.28f, -38.92f }, -1.6f, 0xFED4, 0xFE70, 40 },
    { { -4.32f, -13.44f, -13.76f }, 0.0f, 0x04B0, 0x0190, 42 },
    { { 30.92f, -20.480001f, -28.84f }, 1.6f, 0xFCE0, 0x0320, 44 },
    { { -24.08f, -40.960003f, -21.359999f }, -1.0f, 0xFD44, 0x01F4, 36 },
    { { -44.8f, -73.92f, -49.76f }, -3.2f, 0x03E8, 0xFF38, 30 },
    { { -9.0f, -76.479996f, -13.24f }, -1.0f, 0xFC18, 0x0258, 26 },
    { { -10.240001f, -52.56f, -13.400001f }, 1.6f, 0x0258, 0xFE70, 34 },
    { { 34.04f, -61.72f, -37.04f }, 1.5f, 0x0258, 0x0258, 28 },
    { { 59.48f, -38.399998f, -49.4f }, 1.8f, 0x01F4, 0x0000, 38 },
    { { -19.04f, -112.24f, -35.120003f }, -1.6f, 0x012C, 0x0320, 22 },
    { { 12.24f, -99.04f, -31.64f }, 1.8f, 0xFC18, 0xFE70, 24 },
    { { 49.16f, -81.24f, -55.52f }, 2.4f, 0x02BC, 0x012C, 32 },
    { { 14.759999f, -125.8f, -44.16f }, 0.2f, 0x0320, 0x0258, 20 },
};

// sEffectScales
s16 D_8089B14C[] = {
    0x0005, 0x0008, 0x000B, 0x000E, 0x0011, 0x0014, 0x0017, 0x001A,
};

// sEffectLifes
s16 D_8089B15C[] = {
    0x0012, 0x001A, 0x0022, 0x002A, 0x0032, 0x003C, 0x0046, 0x0050,
};

// sEffectRotSpeeds
s16 D_8089B16C[] = {
    0x0030, 0x002A, 0x0024, 0x0020, 0x001C, 0x0018, 0x0014, 0x0010,
};

s16 sBitMasks[] = {
    0x0001,
    0x0003,
    0x0007,
};

// sBurstDepthX
static Vec3f D_8089B184 = {
    0.0f,
    0.0f,
    0.8f,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1200, ICHAIN_STOP),
};

static Vec3f sVec = {
    0.0f,
    0.0f,
    0.0f,
};

static UNK_PTR sRightSideCrumbles[] = {
    0x06000D00, 0x06001D00, 0x06002500, 0x06002D00, 0x06004D00,
};

static UNK_PTR sLeftSideCrumbles[] = {
    0x06001500, 0x06003500, 0x06003D00, 0x06004500, 0x06000500,
};

static Gfx* sDLists[] = {
    0x06009928, 0x06009AC0, 0x06009C80, 0x06009DE8, 0x06009F60, 0x0600A0A8, 0x0600A278,
    0x0600A418, 0x0600A568, 0x0600A6A0, 0x0600A7E0, 0x0600A978, 0x0600AAC8,
};

void BgJyaMegami_DynaPolySetup(BgJyaMegami* this, GlobalContext* globalContext, void* collision,
                               DynaPolyMoveFlag flags) {
    u32 pad;
    u32 temp;

    temp = 0;
    DynaPolyInfo_SetActorMove(&this->dyna, flags);
    DynaPolyInfo_Alloc(collision, &temp);
    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalContext, &globalContext->colCtx.dyna, &this->dyna.actor, temp);
}

void BgJyaMegami_ColliderSetup(BgJyaMegami* this, GlobalContext* globalContext) {
    u32 pad;

    Collider_InitJntSph(globalContext, &this->collider);
    Collider_SetJntSph(globalContext, &this->collider, &this->dyna.actor, &sJntSphInit, &this->colliderItem);
}

void func_8089A1DC(GlobalContext* globalContext, Vec3f* burstOrigin, Vec3f* burstDepthX, s32 num, s32 maskIndex) {
    Vec3f spB4;
    s32 i;

    for (i = 0; i < num; ++i) {
        s32 temp_s1 = ((s16)(Math_Rand_ZeroOne() * 8.0f)) & sBitMasks[maskIndex];
        s16 temp = ((temp_s1 < 5) && (Math_Rand_ZeroOne() < 0.7f)) ? 0x40 : 0x20;
        func_80029E8C(globalContext, burstOrigin, burstDepthX, burstOrigin, -90, temp, D_8089B16C[temp_s1], 4, 0,
                      D_8089B14C[temp_s1], 0, 5, D_8089B15C[temp_s1], -1, OBJECT_JYA_OBJ, &D_0600B9F8);
        if (Math_Rand_ZeroOne() < 0.45f) {
            Math_Vec3f_Copy(&spB4, burstOrigin);
            spB4.z += 25.0f;
            func_80033480(globalContext, &spB4, 60.0f, 0, D_8089B14C[temp_s1] * 4 + 50, D_8089B14C[temp_s1] * 4 + 70,
                          1);
        }
    }
}

void func_8089A41C(BgJyaMegami* this, GlobalContext* globalContext, f32 arg2) {
    s32 i;
    Vec3f sp50;

    for (i = 0; i < ARRAY_COUNT(sPiecesInit); ++i) {
        if (Math_Rand_ZeroOne() < arg2) {
            Math_Vec3f_Sum(&this->dyna.actor.posRot.pos, &sPiecesInit[i].unk_00, &sp50);
            sp50.z += 15.0f;
            func_8089A1DC(globalContext, &sp50, &D_8089B184, 1, 0);
        }
    }
}

void BgJyaMegami_Init(Actor* thisx, GlobalContext* globalContext) {
    BgJyaMegami* this = THIS;

    BgJyaMegami_DynaPolySetup(this, globalContext, &D_06005C4C, 0);
    BgJyaMegami_ColliderSetup(this, globalContext);
    if (Flags_GetSwitch(globalContext, this->dyna.actor.params & 0x3F) != 0) {
        Actor_Kill(&this->dyna.actor);
    } else {
        Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
        Actor_SetHeight(&this->dyna.actor, -50.0f);
        BgJyaMegami_SetupDetectLight(this);
    }
}

void BgJyaMegami_Destroy(Actor* thisx, GlobalContext* globalContext) {
    BgJyaMegami* this = THIS;

    DynaPolyInfo_Free(globalContext, &globalContext->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyJntSph(globalContext, &this->collider);
}

void BgJyaMegami_SetupDetectLight(BgJyaMegami* this) {
    this->actionFunc = BgJyaMegami_DetectLight;
    this->lightTimer = 0;
    this->crumbleIndex = 0;
}

void BgJyaMegami_DetectLight(BgJyaMegami* this, GlobalContext* globalContext) {
    if (this->collider.base.acFlags & 0x2) {
        this->lightTimer++;
        this->collider.base.acFlags &= ~0x2;
        if (globalContext->gameplayFrames % 4 == 0) {
            func_8089A41C(this, globalContext, (this->crumbleIndex * 0.04f) + 0.05f);
        }
        func_8002F974(&this->dyna.actor, NA_SE_EV_FACE_CRUMBLE_SLOW - SFX_FLAG);
    } else if (this->lightTimer > 0) {
        this->lightTimer--;
    }
    if (this->lightTimer > 40) {
        Flags_SetSwitch(globalContext, this->dyna.actor.params & 0x3F);
        BgJyaMegami_SetupExplosion(this);
        Audio_PlaySoundAtPosition(globalContext, &this->dyna.actor.posRot.pos, 100, NA_SE_EV_FACE_EXPLOSION);
        func_800800F8(globalContext, 0xD70, -0x63, &this->dyna.actor, 0);
    } else {
        if (this->lightTimer < 8) {
            this->crumbleIndex = 0;
        } else if (this->lightTimer < 16) {
            this->crumbleIndex = 1;
        } else if (this->lightTimer < 24) {
            this->crumbleIndex = 2;
        } else if (this->lightTimer < 32) {
            this->crumbleIndex = 3;
        } else {
            this->crumbleIndex = 4;
        }
        CollisionCheck_SetAC(globalContext, &globalContext->colChkCtx, &this->collider.base);
    }
}

void BgJyaMegami_SetupExplosion(BgJyaMegami* this) {
    u32 i;

    this->actionFunc = BgJyaMegami_Explosion;
    for (i = 0; i < ARRAY_COUNT(sPiecesInit); ++i) {
        Math_Vec3f_Copy(&this->pieces[i].pos, &this->dyna.actor.posRot.pos);
        this->pieces[i].vel.x = sPiecesInit[i].velX;
    }
    this->explosionTimer = 0;
}

void BgJyaMegami_Explosion(BgJyaMegami* this, GlobalContext* globalContext) {
    BgJyaMegami_Piece* temp;
    u32 i;
    Vec3f sp8C;
    BgJyaMegami_PieceInit* temp2;
    u32 pad;

    this->explosionTimer++;
    if (this->explosionTimer == 30) {
        Audio_PlaySoundAtPosition(globalContext, &this->dyna.actor.posRot.pos, 100, NA_SE_EV_FACE_BREAKDOWN);
    }

    for (i = 0; i < ARRAY_COUNT(sPiecesInit); ++i) {
        temp = &this->pieces[i];
        temp2 = &sPiecesInit[i];
        if (this->explosionTimer > temp2->delay) {
            temp->vel.y -= 0.6f;
            if (temp->vel.y < -18.0f) {
                temp->vel.y = -18.0f;
            }
            temp->vel.x *= 0.995f;
            temp->pos.x += temp->vel.x;
            temp->pos.y += temp->vel.y;
            temp->rotVelX += temp2->rotVelX;
            temp->rotVelY += temp2->rotVelY;
            if (Math_Rand_ZeroOne() < 0.067f) {
                Math_Vec3f_Sum(&temp->pos, &temp2->unk_00, &sp8C);
                sp8C.z += 10.0f;
                func_8089A1DC(globalContext, &sp8C, &temp->vel, 3, 2);
            }
        } else if (this->explosionTimer == temp2->delay) {
            Math_Vec3f_Sum(&temp->pos, &temp2->unk_00, &sp8C);
            sp8C.z += 10.0f;
            func_8089A1DC(globalContext, &sp8C, &temp->vel, 4, 2);
        }
    }

    if ((this->explosionTimer % 4 == 0) && (this->explosionTimer > 30) && (this->explosionTimer < 80) &&
        (this->explosionTimer > 40)) {
        sp8C.x = ((Math_Rand_ZeroOne() - 0.5f) * 90.0f) + this->dyna.actor.posRot.pos.x;
        sp8C.y = (this->dyna.actor.posRot.pos.y - (Math_Rand_ZeroOne() * 80.0f)) - 20.0f;
        sp8C.z = this->dyna.actor.posRot.pos.z - ((Math_Rand_ZeroOne() - 0.5f) * 50.0f);
        func_8089A1DC(globalContext, &sp8C, &sVec, 1, 0);
    }
    if (this->explosionTimer < ARRAY_COUNT(sPiecesInit)) {
        sp8C.x = this->dyna.actor.posRot.pos.x;
        sp8C.y = this->dyna.actor.posRot.pos.y - 60.0f;
        sp8C.z = this->dyna.actor.posRot.pos.z;
        func_80033480(globalContext, &sp8C, 100.0f, 1, 150, 100, 1);
    }
    if (this->explosionTimer == 60) {
        func_80078884(NA_SE_SY_CORRECT_CHIME);
    }
    if (this->explosionTimer >= 100) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgJyaMegami_Update(Actor* thisx, GlobalContext* globalContext) {
    BgJyaMegami* this = THIS;

    this->actionFunc(this, globalContext);
}

void BgJyaMegami_DrawFace(BgJyaMegami* this, GlobalContext* globalContext) {
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalContext->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 706);
    func_80093D18(globalContext->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(sRightSideCrumbles[this->crumbleIndex]));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(sLeftSideCrumbles[this->crumbleIndex]));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 716),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_06005780);
    Graph_CloseDisps(dispRefs, globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 720);
}

void BgJyaMegami_DrawExplosion(BgJyaMegami* this, GlobalContext* globalContext) {
    s32 pad;
    BgJyaMegami_Piece* piece;
    u32 i;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalContext->state.gfxCtx;

    Graph_OpenDisps(dispRefs, globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 746);
    func_80093D18(globalContext->state.gfxCtx);

    for (i = 0; i < ARRAY_COUNT(sPiecesInit); ++i) {
        piece = &this->pieces[i];
        Matrix_Translate(piece->pos.x + sPiecesInit[i].unk_00.x, piece->pos.y + sPiecesInit[i].unk_00.y,
                         piece->pos.z + sPiecesInit[i].unk_00.z, MTXMODE_NEW);
        Matrix_RotateY(piece->rotVelY * 0.0000958738f, MTXMODE_APPLY);
        Matrix_RotateX(piece->rotVelX * 0.0000958738f, MTXMODE_APPLY);
        Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
        Matrix_Translate(sPiecesInit[i].unk_00.x * -10.0f, sPiecesInit[i].unk_00.y * -10.0f,
                         sPiecesInit[i].unk_00.z * -10.0f, MTXMODE_APPLY);

        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 778),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyOpa.p++, sDLists[i]);
    }
    Graph_CloseDisps(dispRefs, globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 783);
}

void BgJyaMegami_Draw(Actor* thisx, GlobalContext* globalContext) {
    BgJyaMegami* this = THIS;

    func_800628A4(0, &this->collider);
    if (this->actionFunc == BgJyaMegami_Explosion) {
        BgJyaMegami_DrawExplosion(this, globalContext);
    } else {
        BgJyaMegami_DrawFace(this, globalContext);
    }
}
