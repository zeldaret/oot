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
    u8 a;
    u8 b;
    u8 c;
    u8 d;
} DoorShutterUnk_1;

typedef struct {
    /* 0x0000 */ u32 a;
    /* 0x0004 */ u32 b;
    /* 0x0008 */ u8 c;
    /* 0x0009 */ u8 d;
    /* 0x000A */ u8 e;
    /* 0x000B */ u8 f;
} DoorShutterUnk_2;

typedef struct {
    Actor actor;
    char unk_14C[0x70];
    s16 unk_1BC;
} UnkAttached; // TODO find this actor

/* const ActorInit Door_Shutter_InitVars = {
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

DoorShutterUnk_1 D_809980F0[] = {
    {0x00, 0x37, 0x04, 0x04},
    {0x00, 0x1C, 0x05, 0x05},
    {0x00, 0x36, 0x00, 0x01},
    {0x00, 0x2B, 0x02, 0x02},
};

u32 D_80998100[] = {
    0x00960303, 0x00010808, 0x00B00707, 0x00010808, 
    0x002C090A, 0x01390B0B, 0x016D0606, 0x00590C0D, 
    0x01870E0F, 0x006B1010, 0x004D1111, 0x01791212, 
    0x018F1313,
};

DoorShutterUnk_2 D_80998134[] = {
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

u32 D_80998224[] = {
    0xFFFFFFFF, 0x000601FF, 0x00FFFFFF,
};

InitChainEntry D_80998230[] = {
    0xC0500001, 0xB0F40FA0, 0xB0F80064, 0x30FC0190,
};

u32 D_80998240[] = {
    0x00000200, 0x00010300, 0x00120300, 0x00020400, 
    0x00030500, 0x00040800, 0x000A0900, 0x00190900, 
    0x00060A00, 0x00170A00, 0x00050B00, 0x00070C00, 
    0x00080C00, 0x00090D00, 0x000B0E00, 0x000D0F00, 
    0x00411000, 0xFFFF0700,
};

u32 D_80998288[] = {
    0x00040015, 0x01000005, 0x00160200, 0x00070018, 
    0x0300000A, 0x00190400, 0x00030014, 0x05000006, 
    0x00170600, 0xFFFFFFFF, 0x00000000,
};

u32 D_809982B4[] = {
    0x06000590, 0x06000BF0, 0x06002BD0, 0x060018B0, 
    0x06001F10, 0x060018B0, 0x06001250, 0x06000BF0,
};

u32 D_809982D4[] = {
    0x060065C0, 0x060035C0, 0x060055C0, 0x060045C0, 
    0x06000000, 0x060025C0, 0x060015C0,
}; */

extern DoorShutterUnk_1 D_809980F0[];
extern DoorShutterUnk_2 D_80998134[];
extern InitChainEntry D_80998230[];
extern Gfx* D_809982B4[];
extern Gfx* D_809982D4[];

extern Gfx D_0601EDD0;
extern Gfx D_06012FD0;

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809962A0.s")
//DoorShutter_SetupAction
void func_809962A0(DoorShutter* this, DoorShutterActionFunc actionFunc) {
    this->actionFunc = actionFunc;
    this->unk_16F = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809962AC.s")
/* s32 func_809962AC(DoorShutter* this, GlobalContext* globalCtx) {
    s16 temp_a1_2;
    s32 temp_v1_2;
    s8 temp_a1;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a2;
    void *temp_a2_2;
    DoorShutterUnk_1* temp_t0;
    TransitionActorEntry* temp_v1;
    s32 phi_a0;
    s8 phi_a3;
    u8 phi_v0;

    temp_v1 = &globalCtx->transitionActorList[(u16)this->dyna.actor.params >> 0xA];
    temp_t0 = &D_809980F0[this->unk_16B * 4];
    phi_v0 = this->unk_16A;
    phi_a3 = temp_v1->frontRoom;
    if (this->unk_16A != 0xB) {
        if (temp_v1->frontRoom == temp_v1->backRoom && ABS(this->dyna.actor.shape.rot.y - this->dyna.actor.rotTowardsLinkY) < 0x4000) {
            phi_a3 = -1;
        }
        if (phi_a3 == this->dyna.actor.room) {
            if (this->unk_16A == 7) {
                phi_v0 = 1;
            } else if (this->unk_16A == 5) {
                phi_v0 = 3;
            } else {
                phi_v0 = 0;
            }
        }
    }
    this->unk_16C = (phi_v0 == 0) ? temp_t0->c : temp_t0->d;

    /
    if (phi_v0 == 1) {
        if (Flags_GetClear(globalCtx, this->dyna.actor.room) == 0) {
            func_809962A0(this, func_80996A54);
            this->unk_170 = 1.0f;
            return 1;
        }
block_25:
        func_809962A0(this, func_80996B0C);
    } else if ((phi_v0 == 2) || (phi_v0 == 7)) {
        if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) == 0) {
            func_809962A0(this, func_80996EE8);
            this->unk_170 = 1.0f;
            return 1;
        }
        func_809962A0(this, func_80996F98);
    } else if (phi_v0 == 3) {
        func_809962A0(this, func_80996B00);
    } else {
        goto block_25;
    }
    *

    switch (phi_v0) {
        case 1:
            if (!Flags_GetClear(globalCtx, this->dyna.actor.room)) {
                func_809962A0(this, func_80996A54);
                this->unk_170 = 1.0f;
                return 1;
            }
        default:
            func_809962A0(this, func_80996B0C);
            break;
        case 2:
        case 7:
            if (!Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F))) {
                func_809962A0(this, func_80996EE8);
                this->unk_170 = 1.0f;
                return 1;
            }
            func_809962A0(this, func_80996F98); 
            break;
        case 3:
            func_809962A0(this, func_80996B00);
            break;
    }
    return 0;
} */

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/DoorShutter_Init.s")
/* void DoorShutter_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 sp3C;
    void *sp24;
    GlobalContext *temp_a2;
    ObjectContext *temp_a0;
    s32 temp_a3_2;
    s32 temp_ret;
    s32 temp_v0;
    s32 temp_v0_2;
    u8 temp_t8;
    void *temp_a3;
    void *temp_v0_3;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    s32 phi_v0;
    void *phi_v1_2;
    s32 phi_v0_2;
    void *phi_v1_3;
    s32 phi_a3;
    void *phi_v1_4;
    DoorShutter* this;

    this = THIS;
    Actor_ProcessInitChain(&this->dyna.actor, &D_80998230);
    thisx->initPosRot.pos.z = thisx->shape.unk_08;
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    temp_t8 = ((s32) thisx->params >> 6) & 0xF;
    thisx->unk_16A = temp_t8;
    temp_a3 = &D_80998224 + (temp_t8 & 0xFF);
    if ((s32) *temp_a3 < 0) {
        phi_v1 = &D_80998240;
        phi_v0 = 0;
loop_2:
        temp_v0 = phi_v0 + 1;
        phi_v1_4 = phi_v1;
        if (*phi_v1 != globalCtx->sceneNum) {
            temp_v1 = phi_v1 + 4;
            phi_v1 = temp_v1;
            phi_v0 = temp_v0;
            phi_v1_4 = temp_v1;
            if (temp_v0 != 0x11) {
                goto loop_2;
            }
        }
        phi_a3 = (s32) phi_v1_4->unk2;
    } else {
        if (*temp_a3 == 6) {
            phi_v1_2 = &D_80998288;
            phi_v0_2 = 0;
loop_7:
            temp_v0_2 = phi_v0_2 + 1;
            phi_v1_3 = phi_v1_2;
            if (phi_v1_2->unk0 != globalCtx->sceneNum) {
                phi_v1_3 = phi_v1_2;
                if (phi_v1_2->unk2 != globalCtx->sceneNum) {
                    temp_v1_2 = phi_v1_2 + 6;
                    phi_v1_2 = temp_v1_2;
                    phi_v0_2 = temp_v0_2;
                    phi_v1_3 = temp_v1_2;
                    if (temp_v0_2 != 6) {
                        goto loop_7;
                    }
                }
            }
            this->unk_168 = (s16) phi_v1_3->unk4;
            phi_a3 = (s32) *temp_a3;
        } else {
            this->dyna.actor.room = (u8)-1;
            phi_a3 = (s32) *temp_a3;
        }
    }
    temp_v0_3 = (phi_a3 * 4) + &D_809980F0;
    sp24 = temp_v0_3;
    temp_a0 = globalCtx + 0x117A4;
    globalCtx = globalCtx;
    sp3C = phi_a3;
    temp_ret = Object_GetIndex(temp_a0, *temp_v0_3);
    temp_a2 = globalCtx;
    temp_a3_2 = phi_a3;
    this->unk_16D = temp_ret;
    if (temp_ret < 0) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    globalCtx = temp_a2;
    sp3C = temp_a3_2;
    func_809962A0(this, func_8099670C);
    this->unk_16B = (s8) temp_a3_2;
    if (this->unk_16A == 0xB || this->unk_16A == 5) {
        if (Flags_GetSwitch(globalCtx, (s32) (this->dyna.actor.params & 0x3F)) == 0) {
            this->unk_16E = (u8)0xA;
        }
        Actor_SetHeight(&this->dyna.actor, 60.0f);
        return;
    }
    if (sp24 == &D_80998100) {
        Actor_SetScale(&this->dyna.actor, 0.10000000149011612f);
        this->unk_166 = 0x64;
        this->unk_F8 = 200.0f;
        Actor_SetHeight(&this->dyna.actor, 0.0f);
        return;
    }
    Actor_SetHeight(&this->dyna.actor, 60.0f);
} */

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/DoorShutter_Destroy.s")
void DoorShutter_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 transitionActorId;
    DoorShutter* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    if (this->dyna.actor.room >= 0) {
        transitionActorId = (u16)this->dyna.actor.params >> 0xA;
        globalCtx->transitionActorList[transitionActorId].id = -globalCtx->transitionActorList[transitionActorId].id;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_8099670C.s")
void func_8099670C(DoorShutter* this, GlobalContext* globalCtx) {
    void* col;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_16D)) {
        this->dyna.actor.objBankIndex = this->unk_16D;
        if (this->unk_16A == 4 || this->unk_16A == 6) {
            col = NULL;
            Actor_SetObjectDependency(globalCtx, this);
            this->unk_16C = D_809980F0[this->unk_16B].c;
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

#ifdef NON_MATCHING
f32 func_80996840(GlobalContext* globalCtx, DoorShutter* this, f32 arg2, f32 arg3, f32 arg4) {
    f32 phi_return;
    Vec3f sp28;
    Vec3f sp1C;
    Player* player;

    player = PLAYER;
    sp28.x = player->actor.posRot.pos.x;
    sp28.y = player->actor.posRot.pos.y + arg2;
    sp28.z = player->actor.posRot.pos.z;
    func_8002DBD0(&this->dyna.actor, &sp1C, &sp28);

    if (arg3 < fabsf(sp1C.x) || arg4 < fabsf(sp1C.y)) {
        phi_return = 3.4028234663852886e+38f;
    } else {
        phi_return = sp1C.z;
    }
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996840.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809968D4.s")
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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996A54.s")
void func_80996A54(DoorShutter* this, GlobalContext* globalCtx) {
    Player* player;

    if (Flags_GetClear(globalCtx, this->dyna.actor.room) != 0 || Flags_GetTempClear(globalCtx, this->dyna.actor.room) != 0) {
        Flags_SetClear(globalCtx, this->dyna.actor.room);
        func_809962A0(this, func_80997150);
        func_80080480(globalCtx, this);
        func_80080480(globalCtx, PLAYER);
        this->unk_16F = -0x64;
    } else if (func_809968D4(this, globalCtx) != 0) {
        player = PLAYER;
        player->naviMessageId = -0x202;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996B00.s")
void func_80996B00(DoorShutter* this, GlobalContext* globalCtx) {
    // Empty
}

#ifdef NON_MATCHING
// Regalloc
void func_80996B0C(DoorShutter* this, GlobalContext* globalCtx) {
    u8 temp_ret;
    Player* player;

    if (this->unk_164 != 0) {
        func_809962A0(this, func_80997004);
        this->dyna.actor.velocity.y = 0.0f;
        if (this->unk_16E != 0) {
            Flags_SetSwitch(globalCtx, this->dyna.actor.params & 0x3F);
            if (this->unk_16A != 5) {
                gSaveContext.dungeonKeys[gSaveContext.mapIndex]--;
                Audio_PlayActorSound2(this, NA_SE_EV_CHAIN_KEY_UNLOCK);
            } else {
                Audio_PlayActorSound2(this, NA_SE_EV_CHAIN_KEY_UNLOCK_B);
            }
        }
    } else {
        temp_ret = func_809968D4(this, globalCtx);
        if (temp_ret != 0) {
            player = PLAYER;
            if (this->unk_16E != 0) {
                if (this->unk_16A == 5) {
                    if (!(gBitFlags[0] & gSaveContext.dungeonItems[gSaveContext.mapIndex])) {
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
            player->doorActor = this;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996B0C.s")
#endif

#ifdef NON_MATCHING
// Instruction reorderings
void func_80996C60(DoorShutter* this, GlobalContext* globalCtx) {
    Player* player;
    s32 sp38;
    s32 sp34;

    if (this->dyna.actor.type == ACTORTYPE_DOOR) {
        player = PLAYER;
        sp34 = 0xF;
        sp38 = this->unk_16C;
        if (func_809962AC(this, globalCtx) != 0) {
            sp34 = 0x20;
        }
        func_809962A0(this, func_80997004);
        this->unk_170 = 0.0f;
        this->unk_16C = sp38;

        func_8005AD40(globalCtx->cameraPtrs[0], &this->dyna.actor, player->unk_46A, 0.0f, 0xC, sp34, 0xA);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996C60.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996D14.s")
s32 func_80996D14(DoorShutter* this, GlobalContext* globalCtx) {
    if (this->unk_16C != 3) {
        if (this->dyna.actor.velocity.y == 0.0f) {
            Audio_PlayActorSound2(this, NA_SE_EV_SLIDE_DOOR_OPEN);
            func_80996C60(this, globalCtx);
        }
        Math_ApproxF(&this->dyna.actor.velocity.y, 15.0f, 3.0f);
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y + 200.0f, this->dyna.actor.velocity.y)) {
            return 1;
        }
    } else {
        if (this->unk_166 == 0x64) {
            Audio_PlayActorSound2(this, NA_SE_EV_BUYODOOR_OPEN);
            func_80996C60(this, globalCtx);
        }
        if (Math_ApproxS(&this->unk_166, 0, 0xA)) {
            return 1;
        }
    }
    return 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996E08.s")
s32 func_80996E08(DoorShutter* this, GlobalContext* globalCtx, f32 arg2) {
    if (this->unk_170 == (1.0f - arg2)) {
        if (this->unk_16C != 3) {
            if (arg2 == 1.0f) {
                Audio_PlayActorSound2(this, NA_SE_EV_METALDOOR_CLOSE);
            } else {
                Audio_PlayActorSound2(this, NA_SE_EV_METALDOOR_OPEN);
            }
        } else {
            if (arg2 == 1.0f) {
                Audio_PlayActorSound2(this, NA_SE_EV_BUYOSHUTTER_CLOSE);
            } else {
                Audio_PlayActorSound2(this, NA_SE_EV_BUYOSHUTTER_OPEN);
            }
        }
    }
    if (Math_ApproxF(&this->unk_170, arg2, 0.20000000298023224f)) {
        return 1;
    }
    return 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996EE8.s")
void func_80996EE8(DoorShutter* this, GlobalContext* globalCtx) {
    Player* player;

    if (func_80996E08(this, globalCtx, 1.0f)) {
        if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F)) {
            func_809962A0(this, func_80997150);
            func_80080480(globalCtx, this);
            this->unk_16F = -0x64;
        } else if (func_809968D4(this, globalCtx)) {
            player = PLAYER;
            player->naviMessageId = (globalCtx->sceneNum == 2) ? -0x20B : -0x202;
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996F98.s")
void func_80996F98(DoorShutter* this, GlobalContext* globalCtx) {
    if (this->unk_164 == 0 && Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F) == 0) {
        func_809962A0(this, func_80996EE8);
    } else {
        func_80996B0C(this, globalCtx);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997004.s")
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
            Audio_PlayActorSound2(this, NA_SE_EV_BUYODOOR_CLOSE);
            if (((this->unk_16A == 2) || (this->unk_16A == 7)) && !Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F)) {
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BUYOSHUTTER_CLOSE);
            }
            func_809962A0(this, func_80997528);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997150.s")
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

#ifdef NON_MATCHING
// Stack only
void func_80997220(DoorShutter* this, GlobalContext* globalCtx) {
    Player* player;
    Vec3f sp3C;
    Room tempRoom;
    s8 temp_v1;
    RoomContext* roomCtx;
    Room* prevRoom;
    s32 phi_v0;

    player = PLAYER;
    temp_v1 = this->dyna.actor.room;
    if (this->dyna.actor.room >= 0) {
        func_8002DBD0(&this->dyna.actor, &sp3C, &player->actor.posRot.pos);
        phi_v0 = (sp3C.z < 0.0f) ? 0 : 1;
        roomCtx = &globalCtx->roomCtx;
        this->dyna.actor.room = globalCtx->transitionActorList[(u16)this->dyna.actor.params >> 0xA].sides[phi_v0].room;
        if (temp_v1 != this->dyna.actor.room) {
            prevRoom = &globalCtx->roomCtx.prevRoom;
            tempRoom = roomCtx->curRoom;
            roomCtx->curRoom = *prevRoom;
            *prevRoom = tempRoom;
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
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997220.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809973E8.s")
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
        Audio_PlayActorSound2(this, NA_SE_EV_STONE_BOUND);
        quakeId = Quake_Add(Gameplay_GetCamera(globalCtx, 0), 3);
        Quake_SetSpeed(quakeId, -0x7F18);
        Quake_SetQuakeValues(quakeId, 2, 0, 0, 0);
        Quake_SetCountdown(quakeId, 0xA);
        func_800AA000(this->dyna.actor.xyzDistFromLinkSq, 0xB4, 0x14, 0x64);
        func_80997220(this, globalCtx);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997528.s")
void func_80997528(DoorShutter* this, GlobalContext* globalCtx) {
    if (Math_ApproxS(&this->unk_166, 0x64, 0xA) != 0) {
        func_80997220(this, globalCtx);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997568.s")
void func_80997568(DoorShutter* this, GlobalContext* globalCtx) {
    if (((this->unk_16F++ < 0x1F) ^ 1)) {
        func_8002DF54(globalCtx, NULL, 7U);
        func_809962AC(this, globalCtx);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809975C0.s")
void func_809975C0(DoorShutter* this, GlobalContext* globalCtx) {
    UnkAttached *attached;

    Actor_MoveForward(this);
    func_8002E4B4(globalCtx, &this->dyna.actor, 0.0f, 0.0f, 0.0f, 4);
    if (this->dyna.actor.bgCheckFlags & 1) {
        func_809962A0(this, func_809976B8);
        if ((gSaveContext.eventChkInf[7] & 1) == 0) {
            attached = (UnkAttached*)this->dyna.actor.parent;
            this->unk_164 = 0xA;
            Audio_PlayActorSound2(this, NA_SE_EV_STONE_BOUND);
            func_8099803C(globalCtx, 2, 0xA, attached->unk_1BC);
            func_80033260(globalCtx, this, &this->dyna.actor.posRot.pos, 70.0f, 0x14, 8.0f, 0x1F4, 0xA, 1);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809976B8.s")
void func_809976B8(DoorShutter* this, GlobalContext* globalCtx) {
    f32 mult;
    if (this->unk_164 != 0) {
        this->unk_164--;
        mult = sinf((this->unk_164 * 250.0f) / 100.0f);
        this->dyna.actor.shape.unk_08 = ((this->unk_164 * 3.0f) / 10.0f) * mult;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997744.s")
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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/DoorShutter_Update.s")
void DoorShutter_Update(Actor* thisx, GlobalContext* globalCtx) {
    DoorShutter* this = THIS;
    Player* player = PLAYER;

    if (!((s32)player->stateFlags1 & 0x100004C0) || (this->actionFunc == func_8099670C)) {
        this->actionFunc(this, globalCtx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997838.s")
/* Gfx* func_80997838(GlobalContext* globalCtx, DoorShutter* this, Gfx* p) {
    MtxF sp88;
    f32 sp80;
    s32 temp_s1;
    void *temp_s0;
    void *temp_v0;
    f32 phi_f22;
    s32 i;
    Gfx* phi_s2;
    Gfx** phi_s3;

    sp80 = this->unk_166 * 0.009999999776482582f;
    Matrix_Get(&sp88);
    phi_f22 = 0.0f;
    i = 0;
    phi_s2 = p;
    phi_s3 = &D_809982B4;
loop_1:
    Matrix_RotateZ(phi_f22, MTXMODE_APPLY);
    if (!(i & 1)) {
        Matrix_Translate(0.0f, 800.0f, 0.0f, MTXMODE_APPLY);
    } else if ((i == 1) || (i == 7)) {
        Matrix_Translate(0.0f, 848.52001953125f, 0.0f, MTXMODE_APPLY);
    } else {
        Matrix_Translate(0.0f, 989.9400024414062f, 0.0f, MTXMODE_APPLY);
    }
    if (0x64 != this->unk_166) {
        Matrix_Scale(1.0f, sp80, 1.0f, MTXMODE_APPLY);
    }

    gSPMatrix(phi_s2++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_shutter.c", 0x7C7), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(phi_s2++, *phi_s3);

    Matrix_Put(&sp88);
    i++;
    phi_f22 -= 0.7853981852531433f;
    phi_s3++;
    if (i != 8) {
        goto loop_1;
    }
    return phi_s2;
} */

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997A34.s")
// Some kind of ancient evil lurks in this function
/* s32 func_80997A34(DoorShutter* this, GlobalContext* globalCtx) {
    s32 temp_a0;
    s32 temp_a1;
    s32 phi_a1;
    s32 phi_a0;
    s32 phi_return;

    if (Player_InCsMode(globalCtx) != 0) {
        return 1;
    }
    phi_a0 = ABS(func_8002DAC0(this, &globalCtx->view.eye) - this->dyna.actor.shape.rot.y);
    phi_a1 = ABS(this->dyna.actor.rotTowardsLinkY - this->dyna.actor.shape.rot.y);
    if (phi_a1 >= 0x4000 || phi_a0 < 0x4001) {
        phi_return = 1;
        if (phi_a1 >= 0x4001 && phi_a0 < 0x4000) {
block_10:
                phi_return = 0;
        }
    } else {
        goto block_10;
    }
    return phi_return;
} */
/* s32 func_80997A34(DoorShutter* this, GlobalContext* globalCtx) {
    s32 temp_a0;
    s32 temp_a1;
    s32 phi_a1;
    s32 phi_a0;
    s32 phi_return;

    if (Player_InCsMode(globalCtx) != 0) {
        return 1;
    }
    temp_a0 = func_8002DAC0(&this->dyna.actor, &globalCtx->view.eye) - this->dyna.actor.shape.rot.y;
    temp_a1 = this->dyna.actor.rotTowardsLinkY - this->dyna.actor.shape.rot.y;
    phi_a0 = ABS(temp_a0);
    phi_a1 = ABS(temp_a1);
    if ((phi_a1 >= 0x4000) || (phi_a0 < 0x4001)) {
        phi_return = 1;
        if (phi_a1 >= 0x4001 && phi_a0 < 0x4000) {
block_10:
                phi_return = 0;
        }
    } else {
        goto block_10;
    }
    return phi_return;
} */

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/DoorShutter_Draw.s")
/* void DoorShutter_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DoorShutterUnk_2* sp70;
    Gfx* dispRefs[4]; // TODO size
    f32 sp58;
    Gfx *sp50;
    Gfx *sp3C;
    Gfx *sp34;
    Gfx *temp_v0;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v1;
    f32 temp_f16;
    f32 temp_f4;
    f32 temp_f8;
    s32 temp_v1_3;
    void *temp_a0;
    void *temp_t2;
    TransitionActorEntry *temp_v1_2;
    f32 phi_f16;
    s32 phi_a2;
    f32 phi_f8;
    f32 phi_f4;
    s32 phi_a2_2;
    s32 phi_v0;
    DoorShutter* this = THIS;

    if (this->unk_16D == this->dyna.actor.objBankIndex && (this->unk_16B == 0 || func_80997A34() != 0)) {
        sp70 = &D_80998134[this->unk_16C];
        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_door_shutter.c", 0x800);
        func_80093D18(globalCtx->state.gfxCtx);
        if (this->unk_16C == 3) {
            globalCtx->state.gfxCtx->polyOpa.p = func_80997838(globalCtx, this, globalCtx->state.gfxCtx->polyOpa.p);
            if (0.0f != this->unk_170) {
                sp58 = (this->unk_166 * 0.009999999776482582f) * this->unk_170;
                func_80093D18(globalCtx->state.gfxCtx);

                gDPSetEnvColor(globalCtx->state.gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, (255.0f * sp58) & 0xFF);

                temp_f16 = (f32) sp70->d;
                phi_f16 = temp_f16;
                if ((s32) sp70->d < 0) {
                    phi_f16 = temp_f16 + 4294967296.0f;
                }
                Matrix_Translate(0.0f, 0.0f, phi_f16, MTXMODE_APPLY);
                Matrix_Scale(sp58, sp58, sp58, MTXMODE_APPLY);

                gSPMatrix(globalCtx->state.gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_shutter.c", 0x815), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(globalCtx->state.gfxCtx->polyOpa.p++, sp70->b);
            }
        } else {
            if (sp70->b != 0) {
                temp_v1_2 = &globalCtx->transitionActorList[(u16)this->dyna.actor.params >> 0xA];
                if (globalCtx->roomCtx.prevRoom.num >= 0 || temp_v1_2->frontRoom == temp_v1_2->backRoom && 
                    ABS(this->dyna.actor.shape.rot.y - Math_Vec3f_Yaw(&globalCtx->view.eye, &this->dyna.actor.posRot.pos)) < 0x4000) {
                    Matrix_RotateY(3.1415927410125732f, MTXMODE_APPLY);
                } else if (this->dyna.actor.room == temp_v1_2->frontRoom) {
                    Matrix_RotateY(3.1415927410125732f, MTXMODE_APPLY);
                }
            } else if (this->unk_16A == 5) {
                gSPSegment(globalCtx->state.gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_809982D4[this->unk_168]));
            }

            gSPMatrix(globalCtx->state.gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_shutter.c", 0x83D), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(globalCtx->state.gfxCtx->polyOpa.p++, sp70->a);

            if (0.0f != this->unk_170 && sp70->b != NULL) {
                temp_f8 = (f32) sp70->c;
                phi_f8 = temp_f8;
                if ((s32) sp70->c < 0) {
                    phi_f8 = temp_f8 + 4294967296.0f;
                }
                temp_f4 = (f32) sp70->d;
                phi_f4 = temp_f4;
                if ((s32) sp70->d < 0) {
                    phi_f4 = temp_f4 + 4294967296.0f;
                }
                Matrix_Translate(0.0f, phi_f8 * (1.0f - this->unk_170), phi_f4, MTXMODE_APPLY);
                gSPMatrix(globalCtx->state.gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_shutter.c", 0x847), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(globalCtx->state.gfxCtx->polyOpa.p++, sp70->b);
            }
        }
        if (this->unk_16E != 0) {
            Matrix_Scale(0.009999999776482582f, 0.009999999776482582f, 0.02500000037252903f, MTXMODE_APPLY);
            if (this->unk_16A == 5) {
                phi_a2_2 = 1;
            } else {
                phi_v0 = 0;
                if (this->unk_16C == 6) {
                    phi_v0 = 2;
                }
                phi_a2_2 = phi_v0;
            }
            func_80033F54(globalCtx, this->unk_16E, phi_a2_2);
        }
        Graph_CloseDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_door_shutter.c", 0x857);
    }
} */

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_8099803C.s")
void func_8099803C(GlobalContext* globalCtx, s16 y, s16 countdown, s16 arg3) {
    s16 quakeId;

    quakeId = Quake_Add(Gameplay_GetCamera(globalCtx, arg3), 3);
    func_800A9F6C(0.0f, 0xB4, 0x14, 0x64);
    Quake_SetSpeed(quakeId, 0x4E20);
    Quake_SetQuakeValues(quakeId, y, 0, 0, 0);
    Quake_SetCountdown(quakeId, countdown);
}
