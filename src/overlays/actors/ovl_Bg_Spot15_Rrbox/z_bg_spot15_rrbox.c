#include "z_bg_spot15_rrbox.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot15Rrbox*)thisx)

void BgSpot15Rrbox_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B4084(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void func_808B40AC(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void func_808B4178(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void func_808B4194(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void func_808B4380(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void func_808B43D0(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void func_808B44B8(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void func_808B4178(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void func_808B44CC(BgSpot15Rrbox* this, GlobalContext* globalCtx);

// Prototypes for functions external to this file
f32 func_8003CA64(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, Actor* actor, Vec3f* pos, f32 chkDist);
s32 func_800435D8(GlobalContext* globalCtx, DynaPolyActor* dyna, s16 arg2, s16 arg3, s16 arg4);

s16 D_808B4590 = 0;

extern s32 D_06000348;
extern Gfx D_06000180;

const ActorInit Bg_Spot15_Rrbox_InitVars = {
    ACTOR_BG_SPOT15_RRBOX,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT15_OBJ,
    sizeof(BgSpot15Rrbox),
    (ActorFunc)BgSpot15Rrbox_Init,
    (ActorFunc)BgSpot15Rrbox_Destroy,
    (ActorFunc)BgSpot15Rrbox_Update,
    (ActorFunc)BgSpot15Rrbox_Draw,
};

InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

Vec3f D_808B45C4[] = {
    { 770.0f, 1490.0f, -299.0f },
    { 770.0f, 1550.0f, -299.0f },
};

Vec3f D_808B45DC[] = { { 29.99f, 0.01f, -29.99f },
                       { -29.99f, 0.01f, -29.99f },
                       { -29.99f, 0.01f, 29.99f },
                       { 29.99f, 0.01f, 29.99f },
                       { 0.0f, 0.01f, 0.0f } };

s32 D_808B4618[] = { 0, 0 };

void func_808B3960(BgSpot15Rrbox* this, GlobalContext* globalCtx, s32* arg2, s32 flags) {
    s32 temp1 = 0xAB;
    s32 sp30 = 0;
    u32 temp2 = 0x32;

    DynaPolyInfo_SetActorMove(&this->dyna, flags);
    DynaPolyInfo_Alloc(arg2, &sp30);

    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp30);

    if (this->dyna.dynaPolyId == temp2) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_spot15_rrbox.c", temp1,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

void func_808B39E8(Vec3f* arg0, Vec3f* arg1, f32 arg2, f32 arg3) {
    arg0->x = ((arg1->z * arg2) + (arg1->x * arg3));
    arg0->y = arg1->y;
    arg0->z = ((arg1->z * arg3) - (arg1->x * arg2));
}

void func_808B3A34(BgSpot15Rrbox* this) {
    this->unk_180 = 50;
}

bool func_808B3A40(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    DynaPolyActor* temp_v0;

    temp_v0 = DynaPolyInfo_GetActor(&globalCtx->colCtx, this->unk_180);

    if (temp_v0 != 0) {
        if (Math3D_Dist2DSq(temp_v0->actor.posRot.pos.x, temp_v0->actor.posRot.pos.z, this->dyna.actor.posRot.pos.x,
                            this->dyna.actor.posRot.pos.z) < 0.01f) {
            return true;
        }
    }
    return false;
}

s32 func_808B3AAC(BgSpot15Rrbox* this, GlobalContext* globalCxt) {
    s16 phi_v0;
    Actor* actor = &this->dyna.actor;

    if (globalCxt->sceneNum == 0x4C) {
        return 1;
    } else if (func_808B3A40(this, globalCxt) != 0) {
        return 0;
    }

    if (actor->posRot.pos.x <= 930.0f && -360.0f <= actor->posRot.pos.z) {
        if (0.0f <= this->dyna.unk_150) {
            phi_v0 = actor->posRot.rot.y;
        } else {
            phi_v0 = actor->posRot.rot.y + 0x8000;
        }

        if (phi_v0 < 0x2000 && phi_v0 >= -0x5FFF) {
            return gSaveContext.eventChkInf[1] & 0x10;
        }
        return 1;
    }

    return 1;
}

void BgSpot15Rrbox_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot15Rrbox* this = THIS;

    func_808B3960(this, globalCtx, &D_06000348, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    func_808B3A34(this);
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) != 0) {
        func_808B44B8(this, globalCtx);
        this->dyna.actor.posRot.pos = D_808B45C4[D_808B4590];
        D_808B4590++;
    } else {
        func_808B4084(this, globalCtx);
    }
    osSyncPrintf("(spot15 ロンロン木箱)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void BgSpot15Rrbox_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot15Rrbox* this = THIS;
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    D_808B4590 = 0;
}

s32 func_808B3CA0(BgSpot15Rrbox* this, GlobalContext* globalCtx, s32 arg2) {
    f32 chkDist = 0.0f;
    Vec3f sp38;
    Vec3f sp2C;

    func_808B3A34(this);

    sp2C.x = D_808B45DC[arg2].x * (this->dyna.actor.scale.x * 10.0f);
    sp2C.y = D_808B45DC[arg2].y * (this->dyna.actor.scale.y * 10.0f);
    sp2C.z = D_808B45DC[arg2].z * (this->dyna.actor.scale.z * 10.0f);

    func_808B39E8(&sp38, &sp2C, this->unk_16C, this->unk_170);

    sp38.x += this->dyna.actor.posRot.pos.x;
    sp38.y += this->dyna.actor.pos4.y;
    sp38.z += this->dyna.actor.posRot.pos.z;

    this->dyna.actor.groundY = func_8003CA64(&globalCtx->colCtx, &this->dyna.actor.floorPoly, &this->unk_180,
                                             &this->dyna.actor, &sp38, chkDist);

    if (-0.001f <= (this->dyna.actor.groundY - this->dyna.actor.posRot.pos.y)) {
        this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
        return 1;
    }
    return 0;
}

f32 func_808B3DDC(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    int i;
    Vec3f tempVector2;
    Vec3f tempVector1;
    Actor* actor = &this->dyna.actor;
    f32 yIntersect;
    f32 returnValue = -32000.0f;
    s32 sp64;

    func_808B3A34(this);
    for (i = 0; i < ARRAY_COUNT(D_808B45DC); i++) {
        tempVector1.x = D_808B45DC[i].x * (actor->scale.x * 10.0f);
        tempVector1.y = D_808B45DC[i].y * (actor->scale.y * 10.0f);
        tempVector1.z = D_808B45DC[i].z * (actor->scale.z * 10.0f);

        func_808B39E8(&tempVector2, &tempVector1, this->unk_16C, this->unk_170);

        tempVector2.x += actor->posRot.pos.x;
        tempVector2.y += actor->pos4.y;
        tempVector2.z += actor->posRot.pos.z;

        yIntersect = func_8003CA64(&globalCtx->colCtx, &actor->floorPoly, &sp64, actor, &tempVector2, 0);

        if (returnValue < yIntersect) {
            returnValue = yIntersect;
            this->unk_180 = sp64;
        }
    }
    return returnValue;
}

s32 func_808B3F58(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    if (func_808B3CA0(this, globalCtx, 0) != 0) {
        return 1;
    }
    if (func_808B3CA0(this, globalCtx, 1) != 0) {
        return 1;
    }
    if (func_808B3CA0(this, globalCtx, 2) != 0) {
        return 1;
    }
    if (func_808B3CA0(this, globalCtx, 3) != 0) {
        return 1;
    }
    if (func_808B3CA0(this, globalCtx, 4) != 0) {
        return 1;
    }
    return 0;
}

s32 func_808B4010(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    return func_800435D8(globalCtx, &this->dyna, this->dyna.actor.scale.x * 290.0f,
                         this->dyna.actor.scale.x * 290.0f + 20.0f, 1.0f) == 0;
}

void func_808B4084(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    this->actionFunc = func_808B40AC;
    this->dyna.actor.gravity = 0.0f;
    this->dyna.actor.velocity.x = 0.0f;
    this->dyna.actor.velocity.y = 0.0f;
    this->dyna.actor.velocity.z = 0.0f;
}

void func_808B40AC(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->unk_168 <= 0 && fabsf(this->dyna.unk_150) > 0.001f) {
        if (func_808B3AAC(this, globalCtx) != 0 && func_808B4010(this, globalCtx) == 0) {
            this->unk_17C = this->dyna.unk_150;
            func_808B4178(this, globalCtx);
            return;
        }

        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
        return;
    }
    player->stateFlags2 &= ~0x10;
    this->dyna.unk_150 = 0.0f;
}

void func_808B4178(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    this->actionFunc = func_808B4194;
    this->dyna.actor.gravity = 0.0f;
}

void func_808B4194(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    f32 sign;
    Player* player = PLAYER;
    f32 temp_f0_2;
    s32 approxFValue;

    Actor* actor = &this->dyna.actor;

    this->unk_174 = this->unk_174 + 0.5f;
    if (2.0f < this->unk_174) {
        this->unk_174 = 2.0f;
    } else {
        this->unk_174 = this->unk_174;
    }

    approxFValue = Math_ApproxF(&this->unk_178, 20.0f, this->unk_174);

    sign = 0.0f <= this->unk_17C ? 1.0f : -1.0f;

    temp_f0_2 = ((float)sign) * this->unk_178;
    actor->posRot.pos.x = actor->initPosRot.pos.x + (temp_f0_2 * this->unk_16C);
    actor->posRot.pos.z = actor->initPosRot.pos.z + (temp_f0_2 * this->unk_170);

    if (func_808B3F58(this, globalCtx) == 0) {
        actor->initPosRot.pos.x = actor->posRot.pos.x;
        actor->initPosRot.pos.z = actor->posRot.pos.z;
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
        this->unk_178 = 0.0f;
        this->unk_174 = 0.0f;
        func_808B4380(this, globalCtx);
    } else {
        if (approxFValue) {
            player = PLAYER;
            if (func_808B4010(this, globalCtx) != 0) {
                Audio_PlayActorSound2(actor, NA_SE_EV_WOOD_BOUND);
            }
            if (func_808B3A40(this, globalCtx)) {
                func_80078884(NA_SE_SY_CORRECT_CHIME);
            }
            actor->initPosRot.pos.x = actor->posRot.pos.x;
            actor->initPosRot.pos.z = actor->posRot.pos.z;
            player->stateFlags2 &= ~0x10;
            this->dyna.unk_150 = 0.0f;
            this->unk_178 = 0.0f;
            this->unk_174 = 0.0f;
            this->unk_168 = 10;
            func_808B4084(this, globalCtx);
        }
    }
    Audio_PlayActorSound2(actor, 0x200AU);
}

void func_808B4380(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    this->dyna.actor.velocity.x = 0.0f;
    this->dyna.actor.velocity.y = 0.0f;
    this->dyna.actor.velocity.z = 0.0f;
    this->dyna.actor.gravity = -1.0f;
    this->dyna.actor.groundY = func_808B3DDC(this, globalCtx);
    this->actionFunc = func_808B43D0;
}

void func_808B43D0(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    f32 groundY;
    Player* player = PLAYER;
    Actor* actor = &this->dyna.actor;

    if (0.001f < fabsf(this->dyna.unk_150)) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 = player->stateFlags2 & -0x11;
    }

    Actor_MoveForward(actor);

    if (actor->posRot.pos.y <= -31990.0f) {
        osSyncPrintf((const char*)"Warning : ロンロン木箱落ちすぎた(%s %d)(arg_data 0x%04x)\n",
                     "../z_bg_spot15_rrbox.c", 0x257, actor->params);

        Actor_Kill(actor);

        return;
    }

    groundY = actor->groundY;

    if (-0.001f <= (groundY - actor->posRot.pos.y)) {
        actor->posRot.pos.y = groundY;
        func_808B4084(this, globalCtx);
        Audio_PlayActorSound2(&this->dyna.actor, 0x28C9U);
    }
}

void func_808B44B8(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    this->actionFunc = func_808B44CC;
}

void func_808B44CC(BgSpot15Rrbox* this, GlobalContext* globalCtx) {
    Player* temp_v0 = PLAYER;

    temp_v0->stateFlags2 = (s32)(temp_v0->stateFlags2 & -0x11);
    this->dyna.unk_150 = 0.0f;
}

void BgSpot15Rrbox_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot15Rrbox* this = THIS;

    if (this->unk_168 > 0) {
        this->unk_168--;
    }
    this->dyna.actor.posRot.rot.y = this->dyna.unk_158;
    this->unk_16C = Math_Sins(this->dyna.actor.posRot.rot.y);
    this->unk_170 = Math_Coss(this->dyna.actor.posRot.rot.y);
    this->actionFunc(this, globalCtx);
}

void BgSpot15Rrbox_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &D_06000180);
}
