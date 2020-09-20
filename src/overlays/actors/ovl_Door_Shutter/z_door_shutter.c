#include "z_door_shutter.h"

#define FLAGS 0x00000010

#define THIS ((DoorShutter*)thisx)

void DoorShutter_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorShutter_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorShutter_Update(Actor* thisx, GlobalContext* globalCtx);
void DoorShutter_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 func_809962AC(DoorShutter* this, GlobalContext* globalCtx);
f32 func_80996840(GlobalContext* globalCtx, DoorShutter* this, f32 arg2, f32 arg3, f32 arg4);
s32 func_809968D4(DoorShutter* this, GlobalContext* globalCtx);
Gfx* func_80997838(GlobalContext* globalCtx, DoorShutter* this, Gfx* p);
void func_8099803C(GlobalContext* globalCtx, s16 y, s16 countdown, s16 arg3);

void func_8099670C(DoorShutter* this, GlobalContext* globalCtx);
void func_80996A54(DoorShutter* this, GlobalContext* globalCtx);
void func_80996B00(DoorShutter* this, GlobalContext* globalCtx);
void func_80996B0C(DoorShutter* this, GlobalContext* globalCtx);
void func_80996EE8(DoorShutter* this, GlobalContext* globalCtx);
void func_80996F98(DoorShutter* this, GlobalContext* globalCtx);
void func_80997004(DoorShutter* this, GlobalContext* globalCtx);
void func_80997150(DoorShutter* this, GlobalContext* globalCtx);
void func_809973E8(DoorShutter* this, GlobalContext* globalCtx);
void func_80997528(DoorShutter* this, GlobalContext* globalCtx);
void func_80997568(DoorShutter* this, GlobalContext* globalCtx);
void func_809975C0(DoorShutter* this, GlobalContext* globalCtx);
void func_809976B8(DoorShutter* this, GlobalContext* globalCtx);
void func_80997744(DoorShutter* this, GlobalContext* globalCtx);

typedef struct {
    /* 0x0000 */ u32 a;
    /* 0x0004 */ u32 b;
    /* 0x0008 */ u8 c;
    /* 0x0009 */ u8 d;
    /* 0x000A */ u8 e;
    /* 0x000B */ u8 f;
} DoorShutterUnk_2;

typedef struct {
    s16 a;
    u8 b;
    u8 c;
} DoorShutterUnk_3;

typedef struct {
    s16 a;
    s16 b;
    u8 c;
} DoorShutterUnk_4;

typedef struct {
    Actor actor;
    char unk_14C[0x70];
    s16 unk_1BC;
} UnkAttached; // TODO find this actor

const ActorInit Door_Shutter_InitVars = {
    ACTOR_DOOR_SHUTTER,
    ACTORTYPE_DOOR,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(DoorShutter),
    (ActorFunc)DoorShutter_Init,
    (ActorFunc)DoorShutter_Destroy,
    (ActorFunc)DoorShutter_Update,
    (ActorFunc)DoorShutter_Draw,
};

static DoorShutterUnk_3 D_809980F0[] = {
    {0x0037, 0x04, 0x04},
    {0x001C, 0x05, 0x05},
    {0x0036, 0x00, 0x01},
    {0x002B, 0x02, 0x02},
};
static DoorShutterUnk_3 D_80998100[] = {
    {0x0096, 0x03, 0x03},
    {0x0001, 0x08, 0x08},
    {0x00B0, 0x07, 0x07},
    {0x0001, 0x08, 0x08},
    {0x002C, 0x09, 0x0A},
    {0x0139, 0x0B, 0x0B},
    {0x016D, 0x06, 0x06},
    {0x0059, 0x0C, 0x0D},
    {0x0187, 0x0E, 0x0F},
    {0x006B, 0x10, 0x10},
    {0x004D, 0x11, 0x11},
    {0x0179, 0x12, 0x12},
    {0x018F, 0x13, 0x13},
};

static DoorShutterUnk_2 D_80998134[] = {
    {0x060067A0, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x06006910, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x060000C0, 0x060001F0, 0xF0, 0x0E, 0x46, 0x0F},
    {0x06000590, 0x06006460, 0x00, 0x6E, 0x32, 0x0F},
    {0x06012AB0, 0x00000000, 0x82, 0x0C, 0x32, 0x0F},
    {0x0601EC20, 0x00000000, 0x82, 0x0C, 0x32, 0x0F},
    {0x06000100, 0x060001F0, 0xF0, 0x0E, 0x32, 0x0F},
    {0x060010C0, 0x00000000, 0x82, 0x0C, 0x32, 0x0F},
    {0x04049FE0, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x06010CB0, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x06011F20, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x060000C0, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x06005D90, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x06007000, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x06002620, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x06003890, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x06001D10, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x060010D0, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x060020D0, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
    {0x060000C0, 0x0404B0D0, 0x82, 0x0C, 0x14, 0x0F},
};

static s8 D_80998224[] = {
    -1, -1, -1, -1, 0, 6, 1, -1, 0, -1, -1, -1,
};

static InitChainEntry D_80998230[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 400, ICHAIN_STOP),
};

static DoorShutterUnk_3 D_80998240[] = {
    {0x0000, 0x02, 0x00},
    {0x0001, 0x03, 0x00},
    {0x0012, 0x03, 0x00},
    {0x0002, 0x04, 0x00},
    {0x0003, 0x05, 0x00},
    {0x0004, 0x08, 0x00},
    {0x000A, 0x09, 0x00},
    {0x0019, 0x09, 0x00},
    {0x0006, 0x0A, 0x00},
    {0x0017, 0x0A, 0x00},
    {0x0005, 0x0B, 0x00},
    {0x0007, 0x0C, 0x00},
    {0x0008, 0x0C, 0x00},
    {0x0009, 0x0D, 0x00},
    {0x000B, 0x0E, 0x00},
    {0x000D, 0x0F, 0x00},
    {0x0041, 0x10, 0x00},
    {0xFFFF, 0x07, 0x00},
};

static DoorShutterUnk_4 D_80998288[] = {
    {0x0004, 0x0015, 0x01},
    {0x0005, 0x0016, 0x02},
    {0x0007, 0x0018, 0x03},
    {0x000A, 0x0019, 0x04},
    {0x0003, 0x0014, 0x05},
    {0x0006, 0x0017, 0x06},
    {0xFFFF, 0xFFFF, 0x00}, 
};

static Gfx* D_809982B4[] = {
    0x06000590, 0x06000BF0, 0x06002BD0, 0x060018B0, 
    0x06001F10, 0x060018B0, 0x06001250, 0x06000BF0,
};

static Gfx* D_809982D4[] = {
    0x060065C0, 0x060035C0, 0x060055C0, 0x060045C0, 
    0x06000000, 0x060025C0, 0x060015C0,
}; 

extern Gfx D_0601EDD0;
extern Gfx D_06012FD0;

//DoorShutter_SetupAction
void func_809962A0(DoorShutter* this, DoorShutterActionFunc actionFunc) {
    this->actionFunc = actionFunc;
    this->unk_16F = 0;
}

s32 func_809962AC(DoorShutter *this, GlobalContext *globalCtx) {
    DoorShutterUnk_3 *temp_t0;
    TransitionActorEntry *temp_v1;
    s32 phi_v0;
    s8 temp_a3;

    temp_v1 = &globalCtx->transitionActorList[(u16)this->dyna.actor.params >> 0xA];
    temp_a3 = temp_v1->sides[0].room;
    phi_v0 = this->unk_16A;
    temp_t0 = &D_809980F0[this->unk_16B];
    if (phi_v0 != 0xB) {
        if (temp_a3 == temp_v1->sides[1].room) {
            if (ABS((s16)(this->dyna.actor.shape.rot.y - this->dyna.actor.yawTowardsLink)) < 0x4000) {
                temp_a3 = -1;
            }
        }
        if (temp_a3 == this->dyna.actor.room) {
            if (phi_v0 == 7) {
                phi_v0 = 1;
            } else {
                phi_v0 = (phi_v0 == 5) ? 3 : 0;
            }
        }
    }
    this->unk_16C = (phi_v0 == 0) ? temp_t0->b : temp_t0->c;

    if (phi_v0 == 1) {
        if (Flags_GetClear(globalCtx, this->dyna.actor.room) == 0) {
            func_809962A0(this, func_80996A54);
            this->unk_170 = 1.0f;
            return 1;
        }
    } else if (phi_v0 == 2 || phi_v0 == 7) {
        if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F) == 0) {
            func_809962A0(this, func_80996EE8);
            this->unk_170 = 1.0f;
            return 1;
        }
        func_809962A0(this, func_80996F98);
        return 0;
    } else if (phi_v0 == 3) {
        func_809962A0(this, func_80996B00);
        return 0;
    }
    func_809962A0(this, func_80996B0C);
    return 0;
}

void DoorShutter_Init(Actor* thisx, GlobalContext* globalCtx) {
    DoorShutter* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;

    s32 phi_a3;

    s32 pad;

    s32 temp_v0;
    s32 i;
    DoorShutterUnk_3 *phi_v1;
    DoorShutterUnk_4 *phi_v1_2;

    Actor_ProcessInitChain(&this->dyna.actor, D_80998230);
    this->dyna.actor.initPosRot.pos.z = this->dyna.actor.shape.unk_08;
    DynaPolyInfo_SetActorMove(&this->dyna, DPM_UNK);
    this->unk_16A = (this->dyna.actor.params >> 6) & 0xF;
    phi_a3 = D_80998224[this->unk_16A];
    if (phi_a3 < 0) {
        for (phi_v1 = &D_80998240[0], i = 0; i != ARRAY_COUNT(D_80998240) - 1; i++, phi_v1++) {
            if (globalCtx2->sceneNum == phi_v1->a) {
                break;
            }
        }
        phi_a3 = phi_v1->b;
    } else if (phi_a3 == 6) {
        for (phi_v1_2 = &D_80998288[0], i = 0; i != ARRAY_COUNT(D_80998288) - 1; i++, phi_v1_2++) {
            if (globalCtx2->sceneNum == phi_v1_2->a || globalCtx2->sceneNum == phi_v1_2->b) {
                break;
            }
        }
        this->unk_168 = phi_v1_2->c;
    } else {
        this->dyna.actor.room = -1;
    }
    if (this->unk_16D = temp_v0 = Object_GetIndex(&globalCtx2->objectCtx, D_809980F0[phi_a3].a), (s8)temp_v0 < 0) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    func_809962A0(this, func_8099670C);
    this->unk_16B = phi_a3;
    if (this->unk_16A == 0xB || this->unk_16A == 5) {
        if (!Flags_GetSwitch(globalCtx2, this->dyna.actor.params & 0x3F)) {
            this->unk_16E = 10;
        }
        Actor_SetHeight(&this->dyna.actor, 60.0f);
    } else if (&D_80998100[0] == &D_809980F0[phi_a3]) {
        Actor_SetScale(&this->dyna.actor, 0.1f);
        this->unk_166 = 100;
        this->dyna.actor.uncullZoneScale = 200.0f;
        Actor_SetHeight(&this->dyna.actor, 0.0f);
    } else {
        Actor_SetHeight(&this->dyna.actor, 60.0f);
    }
}

void DoorShutter_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 transitionActorId;
    DoorShutter* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    if (this->dyna.actor.room >= 0) {
        transitionActorId = (u16)this->dyna.actor.params >> 0xA;
        globalCtx->transitionActorList[transitionActorId].id = -globalCtx->transitionActorList[transitionActorId].id;
    }
}

void func_8099670C(DoorShutter* this, GlobalContext* globalCtx) {
    void* col;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_16D)) {
        this->dyna.actor.objBankIndex = this->unk_16D;
        if (this->unk_16A == 4 || this->unk_16A == 6) {
            col = NULL;
            Actor_SetObjectDependency(globalCtx, &this->dyna.actor);
            this->unk_16C = D_809980F0[this->unk_16B].b;
            DynaPolyInfo_Alloc((this->unk_16A == 6) ? &D_0601EDD0 : &D_06012FD0, &col);
            this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, col);
            if (this->unk_16A == 6) {
                this->dyna.actor.velocity.y = 0.0f;
                this->dyna.actor.gravity = -2.0f;
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_CLOSE);
                func_809962A0(this, func_809975C0);
                return;
            }
            func_809962A0(this, func_80997744);
            this->unk_164 = 7;
            return;
        }
        func_809962AC(this, globalCtx);
    }
}

f32 func_80996840(GlobalContext* globalCtx, DoorShutter* this, f32 arg2, f32 arg3, f32 arg4) {
    s32 pad;
    Vec3f sp28;
    Vec3f sp1C;
    Player* player = PLAYER;

    sp28.x = player->actor.posRot.pos.x;
    sp28.y = player->actor.posRot.pos.y + arg2;
    sp28.z = player->actor.posRot.pos.z;
    func_8002DBD0(&this->dyna.actor, &sp1C, &sp28);
    if (arg3 < fabsf(sp1C.x) || arg4 < fabsf(sp1C.y)) {
        return FLT_MAX;
    } else {
        return sp1C.z;
    }
}

s32 func_809968D4(DoorShutter* this, GlobalContext* globalCtx) {
    Player* player;
    f32 temp_f2;
    DoorShutterUnk_2* temp_v1;
    f32 phi_f0;
    s16 phi_v0;

    player = PLAYER;
    if (Player_InCsMode(globalCtx) == 0) {
        temp_v1 = &D_80998134[this->unk_16C];
        temp_f2 = func_80996840(globalCtx, this, (this->unk_16C != 3) ? 0.0f : 80.0f, (f32)temp_v1->e, (f32)temp_v1->f);
        if (fabsf(temp_f2) < 50.0f) {
            phi_v0 = player->actor.shape.rot.y - this->dyna.actor.shape.rot.y;
            if (0.0f < temp_f2) {
                phi_v0 = 0x8000 - phi_v0;
            }
            if (ABS(phi_v0) < 0x3000) {
                return (0.0f <= temp_f2) ? 1.0f : -1.0f;
            }
        }
    }
    return 0.0f;
}

void func_80996A54(DoorShutter* this, GlobalContext* globalCtx) {
    Player* player;

    if (Flags_GetClear(globalCtx, this->dyna.actor.room) != 0 || Flags_GetTempClear(globalCtx, this->dyna.actor.room) != 0) {
        Flags_SetClear(globalCtx, this->dyna.actor.room);
        func_809962A0(this, func_80997150);
        func_80080480(globalCtx, &this->dyna.actor);
        func_80080480(globalCtx, &PLAYER->actor);
        this->unk_16F = -0x64;
    } else if (func_809968D4(this, globalCtx) != 0) {
        player = PLAYER;
        player->naviMessageId = -0x202;
    }
}

void func_80996B00(DoorShutter* this, GlobalContext* globalCtx) {
    // Empty
}

void func_80996B0C(DoorShutter* this, GlobalContext* globalCtx) {
    s32 temp_ret;
    Player* player;

    if (this->unk_164 != 0) {
        func_809962A0(this, func_80997004);
        this->dyna.actor.velocity.y = 0.0f;
        if (this->unk_16E != 0) {
            Flags_SetSwitch(globalCtx, this->dyna.actor.params & 0x3F);
            if (this->unk_16A != 5) {
                gSaveContext.dungeonKeys[gSaveContext.mapIndex]--;
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_CHAIN_KEY_UNLOCK);
            } else {
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_CHAIN_KEY_UNLOCK_B);
            }
        }
    } else {
        temp_ret = func_809968D4(this, globalCtx);
        if (temp_ret != 0) {
            player = PLAYER;
            if (this->unk_16E != 0) {
                if (this->unk_16A == 5) {
                    if (!CHECK_DUNGEON_ITEM(DUNGEON_KEY_BOSS, gSaveContext.mapIndex)) {
                        player->naviMessageId = -0x204;
                        return;
                    }
                } else if (gSaveContext.dungeonKeys[gSaveContext.mapIndex] <= 0) {
                    player->naviMessageId = -0x203;
                    return;
                }
                player->doorTimer = 0xA;
            }
            player->doorType = 2;
            player->doorDirection = temp_ret;
            player->doorActor = &this->dyna.actor;
        }
    }
}

void func_80996C60(DoorShutter* this, GlobalContext* globalCtx) {
    if (this->dyna.actor.type == ACTORTYPE_DOOR) {
        Player* player = PLAYER;
        s32 sp38 = this->unk_16C;
        s32 sp34 = 0xF;

        if (func_809962AC(this, globalCtx) != 0) {
            sp34 = 0x20;
        }
        func_809962A0(this, func_80997004);
        this->unk_16C = sp38;
        this->unk_170 = 0.0f;
        func_8005AD40(globalCtx->cameraPtrs[0], &this->dyna.actor, player->unk_46A, 0.0f, 0xC, sp34, 10);
    }
}

s32 func_80996D14(DoorShutter* this, GlobalContext* globalCtx) {
    if (this->unk_16C != 3) {
        if (this->dyna.actor.velocity.y == 0.0f) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_OPEN);
            func_80996C60(this, globalCtx);
        }
        Math_ApproxF(&this->dyna.actor.velocity.y, 15.0f, 3.0f);
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y + 200.0f, this->dyna.actor.velocity.y)) {
            return 1;
        }
    } else {
        if (this->unk_166 == 0x64) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BUYODOOR_OPEN);
            func_80996C60(this, globalCtx);
        }
        if (Math_ApproxS(&this->unk_166, 0, 10)) {
            return 1;
        }
    }
    return 0;
}

s32 func_80996E08(DoorShutter* this, GlobalContext* globalCtx, f32 arg2) {
    if (this->unk_170 == (1.0f - arg2)) {
        if (this->unk_16C != 3) {
            if (arg2 == 1.0f) {
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_METALDOOR_CLOSE);
            } else {
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_METALDOOR_OPEN);
            }
        } else {
            if (arg2 == 1.0f) {
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BUYOSHUTTER_CLOSE);
            } else {
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BUYOSHUTTER_OPEN);
            }
        }
    }
    if (Math_ApproxF(&this->unk_170, arg2, 0.2f)) {
        return 1;
    }
    return 0;
}

void func_80996EE8(DoorShutter* this, GlobalContext* globalCtx) {
    Player* player;

    if (func_80996E08(this, globalCtx, 1.0f)) {
        if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F)) {
            func_809962A0(this, func_80997150);
            func_80080480(globalCtx, &this->dyna.actor);
            this->unk_16F = -0x64;
        } else if (func_809968D4(this, globalCtx)) {
            player = PLAYER;
            player->naviMessageId = (globalCtx->sceneNum == 2) ? -0x20B : -0x202;
        }
    }
}

void func_80996F98(DoorShutter* this, GlobalContext* globalCtx) {
    if (this->unk_164 == 0 && Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F) == 0) {
        func_809962A0(this, func_80996EE8);
    } else {
        func_80996B0C(this, globalCtx);
    }
}

void func_80997004(DoorShutter* this, GlobalContext* globalCtx) {
    if (DECR(this->unk_16E) == 0 && globalCtx->roomCtx.status == 0 && func_80996D14(this, globalCtx) != 0) {
        if (((this->unk_16A == 5) ? 20.0f : 50.0f) < this->dyna.actor.xzDistFromLink) {
            if (func_809962AC(this, globalCtx) != 0) {
                this->dyna.actor.velocity.y = 30.0f;
            }
            if (this->unk_16C != 3) {
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_CLOSE);
                func_809962A0(this, func_809973E8);
                return;
            }
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BUYODOOR_CLOSE);
            if (((this->unk_16A == 2) || (this->unk_16A == 7)) && !Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F)) {
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BUYOSHUTTER_CLOSE);
            }
            func_809962A0(this, func_80997528);
        }
    }
}

void func_80997150(DoorShutter* this, GlobalContext* globalCtx) {
    if (this->unk_16F != 0) {
        if (this->unk_16F < 0) {
            if ((globalCtx->state.frames & 1)) {
                this->unk_16F++;
            }
            if (this->dyna.actor.type == func_8005B198() || this->unk_16F == 0) {
                this->unk_16F = 5;
            }
        } else {
            this->unk_16F--;
        }
    } else {
        if (func_80996E08(this, globalCtx, 0.0f) != 0) {
            if ((this->unk_16A != 0) && (this->unk_16A != 1)) {
                func_809962A0(this, func_80996F98);
            } else {
                func_809962A0(this, func_80996B0C);
            }
            func_800F5B58();
        }
    }
}

void func_80997220(DoorShutter* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s8 room = this->dyna.actor.room;

    if (this->dyna.actor.room >= 0) {
        Vec3f vec;
        func_8002DBD0(&this->dyna.actor, &vec, &player->actor.posRot.pos);
        this->dyna.actor.room = globalCtx->transitionActorList[(u16)this->dyna.actor.params >> 0xA].sides[(vec.z < 0.0f) ? 0 : 1].room;
        if (room != this->dyna.actor.room) {
            Room tempRoom = globalCtx->roomCtx.curRoom;

            globalCtx->roomCtx.curRoom = globalCtx->roomCtx.prevRoom;
            globalCtx->roomCtx.prevRoom = tempRoom;
            globalCtx->roomCtx.unk_30 ^= 1;
        }
        func_80097534(globalCtx, &globalCtx->roomCtx);
        Gameplay_SetupRespawnPoint(globalCtx, RESPAWN_MODE_DOWN, 0xEFF);
    }
    this->unk_164 = 0;
    this->dyna.actor.velocity.y = 0.0f;
    if (func_809962AC(this, globalCtx) && !(player->stateFlags1 & 0x800)) {
        func_809962A0(this, func_80997568);
        func_8002DF54(globalCtx, NULL, 2);
    }
}

void func_809973E8(DoorShutter* this, GlobalContext* globalCtx) {
    s32 quakeId;

    if (this->dyna.actor.velocity.y < 20.0f) {
        Math_ApproxF(&this->dyna.actor.velocity.y, 20.0f, 8.0f);
    }
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, this->dyna.actor.velocity.y) != 0) {
        if (20.0f < this->dyna.actor.velocity.y) {
            this->dyna.actor.groundY = this->dyna.actor.initPosRot.pos.y;
            func_80033260(globalCtx, &this->dyna.actor, &this->dyna.actor.posRot.pos, 45.0f, 0xA, 8.0f, 0x1F4, 0xA, 0);
        }
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_STONE_BOUND);
        quakeId = Quake_Add(Gameplay_GetCamera(globalCtx, 0), 3);
        Quake_SetSpeed(quakeId, -0x7F18);
        Quake_SetQuakeValues(quakeId, 2, 0, 0, 0);
        Quake_SetCountdown(quakeId, 0xA);
        func_800AA000(this->dyna.actor.xyzDistFromLinkSq, 0xB4, 0x14, 0x64);
        func_80997220(this, globalCtx);
    }
}

void func_80997528(DoorShutter* this, GlobalContext* globalCtx) {
    if (Math_ApproxS(&this->unk_166, 0x64, 0xA) != 0) {
        func_80997220(this, globalCtx);
    }
}

void func_80997568(DoorShutter* this, GlobalContext* globalCtx) {
    if (((this->unk_16F++ < 0x1F) ^ 1)) {
        func_8002DF54(globalCtx, NULL, 7U);
        func_809962AC(this, globalCtx);
    }
}

void func_809975C0(DoorShutter* this, GlobalContext* globalCtx) {
    UnkAttached *attached;

    Actor_MoveForward(&this->dyna.actor);
    func_8002E4B4(globalCtx, &this->dyna.actor, 0.0f, 0.0f, 0.0f, 4);
    if (this->dyna.actor.bgCheckFlags & 1) {
        func_809962A0(this, func_809976B8);
        if ((gSaveContext.eventChkInf[7] & 1) == 0) {
            attached = (UnkAttached*)this->dyna.actor.parent;
            this->unk_164 = 0xA;
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_STONE_BOUND);
            func_8099803C(globalCtx, 2, 0xA, attached->unk_1BC);
            func_80033260(globalCtx, &this->dyna.actor, &this->dyna.actor.posRot.pos, 70.0f, 0x14, 8.0f, 0x1F4, 0xA, 1);
        }
    }
}

void func_809976B8(DoorShutter* this, GlobalContext* globalCtx) {
    f32 mult;
    if (this->unk_164 != 0) {
        this->unk_164--;
        mult = sinf((this->unk_164 * 250.0f) / 100.0f);
        this->dyna.actor.shape.unk_08 = ((this->unk_164 * 3.0f) / 10.0f) * mult;
    }
}

void func_80997744(DoorShutter* this, GlobalContext* globalCtx) {
    f32 phi_f0;

    osSyncPrintf("FHG SAKU START !!\n");
    if (this->unk_164 != 0) {
        this->unk_164--;
    }
    phi_f0 = (this->unk_164 & 1) ? -3.0f : 0.0f;
    Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.y, -34.0f + phi_f0, 1.0f, 20.0f, 0.0f);
    osSyncPrintf("FHG SAKU END !!\n");
}

void DoorShutter_Update(Actor* thisx, GlobalContext* globalCtx) {
    DoorShutter* this = THIS;
    Player* player = PLAYER;

    if (!((s32)player->stateFlags1 & 0x100004C0) || (this->actionFunc == func_8099670C)) {
        this->actionFunc(this, globalCtx);
    }
}

Gfx* func_80997838(GlobalContext* globalCtx, DoorShutter* this, Gfx* p) {
    MtxF mtx;
    f32 angle = 0.0f;
    f32 yScale = this->unk_166 * 0.01f;
    s32 i;

    Matrix_Get(&mtx);
    for (i = 0; i != ARRAY_COUNT(D_809982B4); i++) {
        Matrix_RotateZ(angle, MTXMODE_APPLY);
        if (!(i & 1)) {
            Matrix_Translate(0.0f, 800.0f, 0.0f, MTXMODE_APPLY);
        } else if ((i == 1) || (i == 7)) {
            Matrix_Translate(0.0f, 848.52001953125f, 0.0f, MTXMODE_APPLY);
        } else {
            Matrix_Translate(0.0f, 989.9400024414062f, 0.0f, MTXMODE_APPLY);
        }
        if (this->unk_166 != 0x64) {
            Matrix_Scale(1.0f, yScale, 1.0f, MTXMODE_APPLY);
        }
        gSPMatrix(p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_shutter.c", 1991), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(p++, D_809982B4[i]);
        angle -= M_PI/4;
        Matrix_Put(&mtx);
    }
    return p;
}

s32 func_80997A34(DoorShutter* this, GlobalContext* globalCtx) {
    s32 phi_a1;
    s32 phi_a0;

    if (Player_InCsMode(globalCtx) != 0) {
        return 1;
    }
    phi_a0 = (s16)(func_8002DAC0(&this->dyna.actor, &globalCtx->view.eye) - this->dyna.actor.shape.rot.y);
    phi_a1 = (s16)(this->dyna.actor.yawTowardsLink - this->dyna.actor.shape.rot.y);
    phi_a0 = ABS(phi_a0);
    phi_a1 = ABS(phi_a1);
    if (!(phi_a1 >= 0x4000 || phi_a0 <= 0x4000) || (phi_a1 >= 0x4001 && phi_a0 < 0x4000)) {
        return 0;
    }
    return 1;
}

void DoorShutter_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DoorShutter* this = THIS;

    if (this->dyna.actor.objBankIndex == this->unk_16D && (this->unk_16B == 0 || func_80997A34(this, globalCtx) != 0)) {
        s32 pad[2];
        DoorShutterUnk_2* sp70 = &D_80998134[this->unk_16C];

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_door_shutter.c", 2048);
        func_80093D18(globalCtx->state.gfxCtx);
        if (this->unk_16C == 3) {
            oGfxCtx->polyOpa.p = func_80997838(globalCtx, this, oGfxCtx->polyOpa.p);
            if (this->unk_170 != 0.0f) {
                f32 sp58 = (this->unk_166 * 0.01f) * this->unk_170;
                func_80093D18(globalCtx->state.gfxCtx);
                gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0, 0, 0, 255.0f * sp58);
                Matrix_Translate(0, 0, sp70->d, MTXMODE_APPLY);
                Matrix_Scale(sp58, sp58, sp58, MTXMODE_APPLY);
                gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_shutter.c", 2069), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(oGfxCtx->polyOpa.p++, sp70->b);
            }
        } else {
            if (sp70->b != 0) {
                TransitionActorEntry* temp_v1_2 = &globalCtx->transitionActorList[(u16)this->dyna.actor.params >> 0xA];

                if (globalCtx->roomCtx.prevRoom.num >= 0 || temp_v1_2->sides[0].room == temp_v1_2->sides[1].room) {
                    s32 yaw =  Math_Vec3f_Yaw(&globalCtx->view.eye, &this->dyna.actor.posRot.pos);
                    if (ABS((s16)(this->dyna.actor.shape.rot.y - yaw)) < 0x4000) {
                        Matrix_RotateY(M_PI, MTXMODE_APPLY);
                    }
                } else if (this->dyna.actor.room == temp_v1_2->sides[0].room) {
                    Matrix_RotateY(M_PI, MTXMODE_APPLY);
                }
            } else if (this->unk_16A == 5) {
                gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_809982D4[this->unk_168]));
            }
            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_shutter.c", 2109), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyOpa.p++, sp70->a);
            if (this->unk_170 != 0.0f && sp70->b != 0) {
                Matrix_Translate(0, sp70->c * (1.0f - this->unk_170), sp70->d, MTXMODE_APPLY);
                gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_shutter.c", 2119), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(oGfxCtx->polyOpa.p++, sp70->b);
            }
        }
        if (this->unk_16E != 0) {
            Matrix_Scale(0.01f, 0.01f, 0.025f, MTXMODE_APPLY);
            func_80033F54(globalCtx, this->unk_16E, (this->unk_16A == 5) ? 1 : ((this->unk_16C == 6) ? 2 : 0));
        }
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_door_shutter.c", 2135);
    }
}

void func_8099803C(GlobalContext* globalCtx, s16 y, s16 countdown, s16 arg3) {
    s16 quakeId;

    quakeId = Quake_Add(Gameplay_GetCamera(globalCtx, arg3), 3);
    func_800A9F6C(0.0f, 0xB4, 0x14, 0x64);
    Quake_SetSpeed(quakeId, 0x4E20);
    Quake_SetQuakeValues(quakeId, y, 0, 0, 0);
    Quake_SetCountdown(quakeId, countdown);
}
