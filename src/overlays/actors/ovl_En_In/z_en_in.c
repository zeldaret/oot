#include "z_en_in.h"

#define FLAGS 0x00000019

#define THIS ((EnIn*)thisx)

void EnIn_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIn_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnIn_Update(Actor* thisx, GlobalContext* globalCtx);
void EnIn_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A79FB0(EnIn* this, GlobalContext* globalCtx);
void func_80A7A304(EnIn* this, GlobalContext* globalCtx);
void func_80A7A4C8(EnIn* this, GlobalContext* globalCtx);
void func_80A7A568(EnIn* this, GlobalContext* globalCtx);
void func_80A7A848(EnIn* this, GlobalContext* globalCtx);
void func_80A7ABD4(EnIn* this, GlobalContext* globalCtx);
void func_80A7AEF0(EnIn* this, GlobalContext* globalCtx);
void func_80A7B018(EnIn* this, GlobalContext* globalCtx);
void func_80A7B024(EnIn* this, GlobalContext* globalCtx);
void func_80A7AE84(EnIn* this, GlobalContext* globalCtx);
void func_80A7A770(EnIn* this, GlobalContext* globalCtx);
void func_80A7A940(EnIn* this, GlobalContext* globalCtx);
void func_80A7AA40(EnIn* this, GlobalContext* globalCtx);


void func_800F41E0(Vec3f*, u16, s32);

/*
const ActorInit En_In_InitVars = {
    ACTOR_EN_IN,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_IN,
    sizeof(EnIn),
    (ActorFunc)EnIn_Init,
    (ActorFunc)EnIn_Destroy,
    (ActorFunc)EnIn_Update,
    (ActorFunc)EnIn_Draw,
};
*/

typedef struct {
    /* 0x000 */ Actor actor;
    /* 0x14C */ char unk_14C[0xC];
    /* 0x158 */ s32 unk_158;
} RideActor; // size = unk


typedef struct {
    s16 arr[3];
} Struct_80A7B988; // size = 0x8

typedef struct {
    /* 0x000 */ AnimationHeader* unk_0;
    /* 0x004 */ char unk_4[0x4];
    /* 0x008 */ u8 unk_8;
    /* 0x00C */ f32 unk_C;
} Struct_80A7B878; // size = 0x10

extern Struct_80A7B878 D_80A7B878[];
extern AnimationHeader* D_80A7B918[];
extern Struct_80A7B988 D_80A7B988;
extern Vec3f D_80A7B99C;
extern Vec3f D_80A7B9A8;
extern UNK_PTR D_80A7B9B4[];
extern s32 D_80A7B998;
extern Gfx* D_80A7B938[];
extern Vec3s D_80A7B990;
extern ColliderCylinderInit D_80A7B840;
extern CollisionCheckInfoInit2 D_80A7B86C;

extern AnimationHeader D_060003B4;
extern AnimationHeader D_06001BE0;
extern AnimationHeader D_06013D60;
extern AnimationHeader D_06014CA8;
extern AnimationHeader D_06015814;
extern AnimationHeader D_0601646C;
extern AnimationHeader D_06018C38;
extern SkeletonHeader D_06013B88;
extern UNK_TYPE D_060034D0;
extern Gfx D_06007A20[];
extern Gfx D_06007BF8[];

u16 func_80A78FB0(GlobalContext* globalCtx) {
    if (gSaveContext.eventChkInf[1] & 0x10) {
        if (gSaveContext.itemGetInf[0xD] & 0x80) {
            return 0x2046;
        } else {
            return 0x2045;
        }
    }
    if (gSaveContext.itemGetInf[0xD] & 0x10) {
        return 0x2040;
    } else {
        return 0x203F;
    }
}

u16 func_80A79010(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    u16 temp_v0 = Text_GetFaceReaction(globalCtx, 25);

    if (temp_v0 != 0) {
        return temp_v0;
    }
    if (gSaveContext.eventChkInf[1] & 0x100) {
        if (gSaveContext.nightFlag == 0) {
            return 0x205F;
        } else {
            return 0x2057;
        }
    }
    if (gSaveContext.nightFlag == 1) {
        return 0x204E;
    }
    switch (gSaveContext.eventInf[0] & 0xF) {
        case 1:
            if ((s32)(player->stateFlags1 << 8) >= 0) {
                return 0x2036;
            } else if (gSaveContext.eventChkInf[1] & 0x800) {
                if (gSaveContext.infTable[0xA] & 4) {
                    return 0x2036;
                } else {
                    return 0x2038;
                }
            } else {
                return 0x2037;
            }
        case 3:
            if (((gSaveContext.eventInf[0] & 0x40) != 0) || ((gSaveContext.eventInf[0] & 0x20) != 0)) {
                return 0x203E;
            } else {
                return 0x203D;
            }
        case 4:
            return 0x203A;
        default:
            return 0x203C;
        case 7:
            return 0x205B;
        case 2:
            if (gSaveContext.infTable[0x9] & 0x400) {
                return 0x2031;
            } else {
                return 0x2030;
            }
    }
}

u16 func_80A79168(GlobalContext* globalCtx, EnIn* this) {
    u16 temp_v0 = Text_GetFaceReaction(globalCtx, 25);

    if (temp_v0 != 0) {
        return temp_v0;
    }
    if (gSaveContext.linkAge != 0) {
        return func_80A78FB0(globalCtx);
    } else {
        return func_80A79010(globalCtx);
    }
}

s16 func_80A791CC(GlobalContext* globalCtx, EnIn* this) {
    s32 temp_var = 0;
    switch (this->actor.textId) {
        case 0x2045:
            gSaveContext.infTable[9] |= 0x80;
            break;
        case 0x203E:
            temp_var = 2;
            break;
        case 0x203F:
            gSaveContext.eventChkInf[1] |= 2;
            gSaveContext.infTable[9] |= 0x10;
            break;
    }
    return temp_var;
}

#ifdef NON_MATCHING
// Reorderings in the final case
s16 func_80A7924C(GlobalContext* globalCtx, EnIn* arg1) {
    s32 sp18 = 1;

    switch (arg1->actor.textId) {
    case 0x2030:
    case 0x2031:
        if (globalCtx->msgCtx.choiceIndex == 1) {
            arg1->actor.textId = 0x2032;
        } else if (gSaveContext.rupees < 0xA) {
            arg1->actor.textId = 0x2033;
        } else {
            arg1->actor.textId = 0x2034;
        }
        func_8010B720(globalCtx, arg1->actor.textId);
        gSaveContext.infTable[9] |= 0x400;
        break;
    case 0x2034:
        if (globalCtx->msgCtx.choiceIndex == 1) {
            Rupees_ChangeBy(-10);
            arg1->actor.textId = 0x205C;
        } else {
            arg1->actor.textId = 0x2035;
        }
        func_8010B720(globalCtx, arg1->actor.textId);
        break;
    case 0x2036:
    case 0x2037:
        if (globalCtx->msgCtx.choiceIndex == 1) {
            sp18 = 2;
        } else {
            arg1->actor.textId = 0x201F;
            func_8010B720(globalCtx, arg1->actor.textId);
        }
        break;
    case 0x2038:
        if (globalCtx->msgCtx.choiceIndex == 0 && gSaveContext.rupees >= 50) {
            sp18 = 2;
        } else {
            arg1->actor.textId = 0x2039;
            func_8010B720(globalCtx, arg1->actor.textId);
            gSaveContext.infTable[0xA] |= 4;
        }
        break;
    case 0x205B:
        if (globalCtx->msgCtx.choiceIndex == 0 && gSaveContext.rupees >= 50) {
            sp18 = 2;
        } else {
            arg1->actor.textId = 0x2039;
            func_8010B720(globalCtx, arg1->actor.textId);
            gSaveContext.eventInf[0] &= ~0xF;
            gSaveContext.eventInf[0] &= ~0x20;
            gSaveContext.eventInf[0] &= ~0x40;
            arg1->actionFunc = func_80A7A4C8;
        }
        break;
    }
    return sp18;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7924C.s")
#endif

s16 func_80A7949C(GlobalContext* globalCtx, EnIn* this) {
    s32 phi_v1 = 1;
    if (this->actor.textId == 0x2035) {
        Rupees_ChangeBy(-10);
        this->actor.textId = 0x205C;
        func_8010B720(globalCtx, this->actor.textId);
    } else {
        phi_v1 = 2;
    }
    return phi_v1;
}

s16 func_80A79500(GlobalContext* globalCtx, EnIn* this) {
    s16 sp1E = 1;

    osSyncPrintf("message_check->(%d[%x])\n", func_8010BDBC(&globalCtx->msgCtx), this->actor.textId);
    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 0:
        case 1:
            break;
        case 2:
            sp1E = func_80A791CC(globalCtx, this);
            break;
        case 3:
            break;
        case 4:
            if (func_80106BC8(globalCtx) != 0) {
                sp1E = func_80A7924C(globalCtx, this);
            }
            break;
        case 5:
            if (func_80106BC8(globalCtx) != 0) {
                sp1E = func_80A7949C(globalCtx, this);
            }
            break;
        case 6:
        case 7:
        case 8:
        case 9:
            break;
    }
    return sp1E;
}

void func_80A795C8(EnIn* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 phi_a3;

    if (this->skelAnime.animCurrentSeg == &D_060003B4 || 
        this->skelAnime.animCurrentSeg == &D_06001BE0 || 
        this->skelAnime.animCurrentSeg == &D_06013D60) {
        phi_a3 = 1;
    } else {
        phi_a3 = 0;
    }
    if (this->actionFunc == func_80A7A568) {
        phi_a3 = 4;
    }
    if (this->actionFunc == func_80A7B024) {
        this->unk_308.unk_18 = globalCtx->view.eye;
        this->unk_308.unk_14 = 60.0f;
    } else {
        this->unk_308.unk_18 = player->actor.posRot.pos;
        this->unk_308.unk_14 = 16.0f;
    }
    func_80034A14(this, &this->unk_308, 1, phi_a3);
}

void func_80A79690(SkelAnime* skelAnime, EnIn* this, GlobalContext* globalCtx) {
    if (skelAnime->unk_3E.y < skelAnime->limbDrawTbl[0].y) {
        skelAnime->flags |= 3;
        SkelAnime_LoadAnimationType5(globalCtx, &this->actor, skelAnime, 1.0f);
    }
}

void func_80A796EC(EnIn* this, s32 arg1) {
    SkelAnime_ChangeAnim(&this->skelAnime,
            D_80A7B878[arg1].unk_0, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_80A7B878[arg1].unk_0->genericHeader), 
            D_80A7B878[arg1].unk_8, D_80A7B878[arg1].unk_C);
}

s32 func_80A7975C(EnIn* this, GlobalContext* globalCtx) {
    if (this->actor.params != 1 || this->actor.shape.rot.z != 1 || gSaveContext.linkAge != 0) {
        return 0;
    }
    this->unk_1E6 = 1;
    this->collider.base.maskA &= ~1;
    SkelAnime_ChangeAnim(&this->skelAnime, D_80A7B918[this->unk_1E6], 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_80A7B918[this->unk_1E6]->genericHeader), 2, 0.0f);
    this->actionFunc = func_80A7A304;
    return 1;
}

s32 func_80A79830(EnIn* this, GlobalContext* globalCtx) {
    if (globalCtx->sceneNum == 0x63 && gSaveContext.linkAge == 1 && gSaveContext.nightFlag == 0 && 
        this->actor.shape.rot.z == 1 && !(gSaveContext.eventChkInf[1] & 0x10)) {
        return 1;
    }
    if (globalCtx->sceneNum == 0x36 && gSaveContext.linkAge == 1 && gSaveContext.nightFlag == 0 && 
        this->actor.shape.rot.z == 3 && (gSaveContext.eventChkInf[1] & 0x10)) {
        return 1;
    }
    if (globalCtx->sceneNum == 0x36 && gSaveContext.linkAge == 1 && gSaveContext.nightFlag == 1) {
        if ((this->actor.shape.rot.z == 2) && !(gSaveContext.eventChkInf[1] & 0x10)) {
            return 1;
        }
        if ((this->actor.shape.rot.z == 4) && (gSaveContext.eventChkInf[1] & 0x10)) {
            return 1;
        }
    }
    if (globalCtx->sceneNum == 0x63 && gSaveContext.linkAge == 0 && gSaveContext.nightFlag == 0) {
        if ((this->actor.shape.rot.z == 5) && !(gSaveContext.eventChkInf[1] & 0x100)) {
            return 2;
        }
        if ((this->actor.shape.rot.z == 7) && (gSaveContext.eventChkInf[1] & 0x100)) {
            return 4;
        }
    }
    if (globalCtx->sceneNum == 0x4C && gSaveContext.linkAge == 0 && gSaveContext.nightFlag == 1) {
        if (this->actor.shape.rot.z == 6 && !(gSaveContext.eventChkInf[1] & 0x100)) {
            return 3;
        }
        if (this->actor.shape.rot.z == 8 && (gSaveContext.eventChkInf[1] & 0x100)) {
            return 3;
        }
    }
    return 0;
}

void func_80A79A2C(EnIn* this) {
    s16 phi_v1;

    if (this->unk_1EE != 3) {
        if (this->unk_1EA == 0) {
            phi_v1 = 0;
        } else {
            phi_v1 = --this->unk_1EA;
        }
        if (phi_v1 == 0) {
            this->unk_1EE++;
            if (this->unk_1EE >= 3) {
                this->unk_1EA = Math_Rand_S16Offset(30, 30);
                this->unk_1EE = 0;
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79AB4.s")
/* void func_80A79AB4(EnIn* this, GlobalContext* globalCtx) {
    s32 phi_v0 = 0;
    s32 i;

    if (this->skelAnime.animCurrentSeg != &D_06014CA8) {
        phi_v0 = globalCtx->gameplayFrames;
    }
    for (i = 0; i != 5; i++) {
        this->unk_332[0].x = (2068 + i* 200) * phi_v0;
        this->unk_332[0].y = (2368 + i* 200) * phi_v0;
        this->unk_332[1].x = (2318 + i* 200) * phi_v0;
        this->unk_332[1].y = (2418 + i* 200) * phi_v0;
        this->unk_332[2].x = (2168 + i* 200) * phi_v0;
        this->unk_332[2].y = (2468 + i* 200) * phi_v0;
        this->unk_332[3].x = (2218 + i* 200) * phi_v0;
        this->unk_332[3].y = (2518 + i* 200) * phi_v0;
    }
} */

void func_80A79BAC(EnIn* this, GlobalContext* globalCtx, s32 arg2, u32 arg3) {
    Struct_80A7B988 sp20 = D_80A7B988;

    globalCtx->nextEntranceIndex = sp20.arr[arg2];
    if (arg2 == 2) {
        gSaveContext.nextCutsceneIndex = 0xFFF0;
    }
    globalCtx->fadeTransition = arg3;
    globalCtx->sceneLoadFlag = 0x14;
    func_8002DF54(globalCtx, &this->actor, 8);
    Interface_ChangeAlpha(1);
    if (arg2 == 0) {
        AREG(6) = 0;
    }
    gSaveContext.timer1State = 0;
}

void func_80A79C78(EnIn* this, GlobalContext* globalCtx) {
    Player* temp_s1 = PLAYER;
    Vec3f sp48;
    Vec3f sp3C;
    Vec3s sp34 = D_80A7B990;

    this->unk_1F0 = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
    Gameplay_ChangeCameraStatus(globalCtx, this->unk_1F0, 7);
    sp48.x = this->actor.posRot.pos.x;
    sp48.y = this->actor.posRot.pos.y + 60.0f;
    sp48.z = this->actor.posRot.pos.z;
    sp3C.x = sp48.x;
    sp3C.y = sp48.y - 22.0f;
    sp3C.z = sp48.z + 40.0f;
    func_800C04D8(globalCtx, this->unk_1F0, &sp48, &sp3C);
    this->actor.shape.rot.y = Math_Vec3f_Yaw(&this->actor.posRot.pos, &sp3C);
    this->unk_308.unk_08 = sp34;
    this->unk_308.unk_0E = sp34;
    func_8010B680(globalCtx, 0x2025, NULL);
    this->unk_308.unk_00 = 1;
    temp_s1->actor.posRot.pos = this->actor.posRot.pos;
    temp_s1->actor.posRot.pos.x += 100.0f * Math_Sins(this->actor.shape.rot.y);
    temp_s1->actor.posRot.pos.z += 100.0f * Math_Coss(this->actor.shape.rot.y);
    if (temp_s1->rideActor != NULL) {
        temp_s1->rideActor->posRot.pos = temp_s1->actor.posRot.pos;
        temp_s1->rideActor->freezeTimer = 10;
    }
    temp_s1->actor.freezeTimer = 10;
    this->actor.flags &= ~1;
    ShrinkWindow_SetVal(0x20);
    Interface_ChangeAlpha(2);
}

void EnIn_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnIn* this = THIS;
    RespawnData *temp_t9 = gSaveContext.respawn;
    Vec3f sp1C;

    this->unk_1E4 = Object_GetIndex(&globalCtx->objectCtx, 0xC0);
    if (this->unk_1E4 < 0 && this->actor.params > 0) {
        this->actionFunc = NULL;
        Actor_Kill(&this->actor);
        return;
    }
    sp1C = temp_t9->pos;
    if (D_80A7B998 == 0 && sp1C.x == 1107.0f && sp1C.y == 0.0f && sp1C.z == -3740.0f) {
        gSaveContext.eventInf[0] = 0;
        D_80A7B998 = 1;
    }
    this->actionFunc = func_80A79FB0;
}

void EnIn_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnIn* this = THIS;

    if (this->actionFunc != NULL && this->actionFunc != func_80A79FB0) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79FB0.s")
/* void func_80A79FB0(EnIn* this, GlobalContext* globalCtx) {
    s32 sp3C;
    ColliderCylinder *temp_a1;
    s32 temp_v0_2;
    u16 temp_v0;

    sp3C = 0;
    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_1E4) || this->actor.params <= 0) {
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 36.0f);
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06013B88, NULL, this->unk_1FE, this->unk_276, 20);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A7B840);
        func_80061EFC(&this->actor.colChkInfo, NULL, &D_80A7B86C);
        if (func_80A7975C(this, globalCtx)) {
            gSaveContext.eventInf[0] &= ~0x8000;
            return;
        }
        Actor_SetScale(&this->actor, 0.01f);
        this->actor.unk_1F = 6;
        this->unk_308.unk_00 = 0;
        this->actionFunc = func_80A7A4BC;
        temp_v0_2 = func_80A79830(this, globalCtx);
        if (temp_v0_2 == 0) {
            Actor_Kill(this);
            return;
        default: // switch 1
            if (this->actor.params == 2) {
                goto block_20;
        case 1: // switch 1
                if (this->actor.params == 3) {
                    goto block_20;
        case 5: // switch 1
        case 6: // switch 1
                    if (this->actor.params == 4) {
block_20:
                        sp3C = 1;
                    }
                }
            }
block_21:
            if (sp3C == 1) {
                if (temp_v0 < 8) {
                    goto **(&jtbl_80A7BABC + (temp_v0 * 4)); // switch 2
                default: // switch 2
                    func_80A796EC(this, 2);
                    this->actionFunc = func_80A7A4C8;
                    gSaveContext.eventInf[0] = 0;
                    break;
                case 1: // switch 2
                    this->actor.unk_1F = 3;
                    func_80A796EC(this, 2);
                    this->actionFunc = func_80A7A568;
                    func_80088B34(0x3C);
                    break;
                case 3: // switch 2
                    func_80A796EC(this, 4);
                    this->actionFunc = func_80A7A770;
                    break;
                case 4: // switch 2
                    func_80A796EC(this, 6);
                    this->unk_1EC = 8;
                    this->actionFunc = func_80A7A940;
                    break;
                case 5: // switch 2
                case 6: // switch 2
                    this->actor.unk_1F = 3;
                    func_80A796EC(this, 6);
                    this->unk_1EC = 8;
                    this->actionFunc = func_80A7AA40;
                    break;
                case 7: // switch 2
                    func_80A796EC(this, 2);
                    this->actionFunc = func_80A7A848;
                    break;
                }
                return;
            }
            Actor_Kill(&this->actor);
            return;
        }
        if (temp_v0_2 == 1) {
block_10:
            func_80A796EC(this, 9);
            this->actionFunc = func_80A7A4BC;
            return;
        }
        if (temp_v0_2 != 3) {
            if (temp_v0_2 == 4) {
                func_80A796EC(this, 8);
                this->unk_1EE = 3;
                this->actionFunc = func_80A7A4BC;
                return;
            }
            temp_v0 = gSaveContext.eventInf[0] & 0xF;
            if (temp_v0 < 8) {
                goto **(&jtbl_80A7BA9C + (temp_v0 * 4)); // switch 1
                goto block_10;
            }
            goto block_21;
        } else {
            func_80A796EC(this, 7);
            this->actionFunc = func_80A7A4BC;
            if (!(gSaveContext.eventChkInf[1] & 0x100)) {
                this->actor.params = 5;
                return;
            }
        }
    }
} */

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7A304.s")
void func_80A7A304(EnIn* this, GlobalContext* globalCtx) {
    if (this->skelAnime.animCurrentSeg == &D_06015814 || this->skelAnime.animCurrentSeg == &D_0601646C) {
        if (this->skelAnime.animCurrentFrame == 8.0f) {
            func_800F41E0(&this->actor.projectedPos, NA_SE_VO_IN_LASH_0, 2);
        }
    }
    if (this->skelAnime.animCurrentSeg == &D_06018C38 && this->skelAnime.animCurrentFrame == 20.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_VO_IN_CRY_0);
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->unk_1E6 %= 8;
        this->unk_1E8 = this->unk_1E6;
        if (this->unk_1E6 == 3 || this->unk_1E6 == 4) {
            Audio_PlaySoundGeneral(NA_SE_IT_LASH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            if (Math_Rand_ZeroOne() < 0.3f) {
                Audio_PlaySoundGeneral(NA_SE_IT_INGO_HORSE_NEIGH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        }
        SkelAnime_ChangeAnim(&this->skelAnime, D_80A7B918[this->unk_1E6], 1.0f, 0.0f, 
                        SkelAnime_GetFrameCount(&D_80A7B918[this->unk_1E6]->genericHeader), 2, -10.0f);
    }
}

void func_80A7A4BC(EnIn* this, GlobalContext* globalCtx) {
}

void func_80A7A4C8(EnIn* this, GlobalContext* globalCtx) {
    if (this->unk_308.unk_00 == 2) {
        func_80A79BAC(this, globalCtx, 1, 0x20);
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x000F) | 0x0001;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
        gSaveContext.infTable[0xA] &= ~4;
        func_800775F0(0x40);
        globalCtx->msgCtx.unk_E3E7 = 0;
        globalCtx->msgCtx.msgMode = 0x36;
        this->unk_308.unk_00 = 0;
    }
}

#ifdef NON_MATCHING
// prologue reordering
void func_80A7A568(EnIn* this, GlobalContext* globalCtx) {
    if (!(gSaveContext.eventChkInf[1] & 0x800) && (PLAYER->stateFlags1 & 0x800000)) {
        gSaveContext.infTable[0xA] |= 0x800;
    }
    if (gSaveContext.timer1State == 10) {
        Audio_PlaySoundGeneral(NA_SE_SY_FOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_80A79C78(this, globalCtx);
        this->actionFunc = func_80A7B024;
        gSaveContext.timer1State = 0;
    } else if (this->unk_308.unk_00 == 2) {
        s32 phi_a2;
        s32 phi_a3;

        if (globalCtx->msgCtx.choiceIndex == 0) {
            if (gSaveContext.rupees < 50) {
                globalCtx->msgCtx.unk_E3E7 = 4;
                globalCtx->msgCtx.msgMode = 0x36;
                this->unk_308.unk_00 = 0;
                return;
            }
            gSaveContext.eventInf[0] = (((RideActor*)PLAYER->rideActor)->unk_158 * 0x10) | (gSaveContext.eventInf[0] & ~0x10);
            gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0xF) | 2;
            phi_a2 = 2;
            phi_a3 = 2;
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_FOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            if (!(gSaveContext.eventChkInf[1] & 0x800)) {
                if (gSaveContext.infTable[0xA] & 0x800) {
                    gSaveContext.eventChkInf[1] |= 0x800;
                    gSaveContext.infTable[0xA] |= 0x800;
                }
            }
            gSaveContext.eventInf[0] &= ~0xF;
            phi_a2 = 0;
            phi_a3 = 0x20;
        }
        func_80A79BAC(this, globalCtx, phi_a2, phi_a3);
        globalCtx->msgCtx.unk_E3E7 = 0;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
        globalCtx->msgCtx.msgMode = 0x36;
        this->unk_308.unk_00 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7A568.s")
#endif

#ifdef NON_MATCHING
// Regalloc only
void func_80A7A770(EnIn* this, GlobalContext* globalCtx) {
    if (this->unk_308.unk_00 == 0) {
        this->actor.flags |= 0x10000;
    } else if (this->unk_308.unk_00 == 2) {
        Rupees_ChangeBy(-50);
        this->actor.flags &= ~0x10000;
        func_80A796EC(this, 3);
        this->actionFunc = func_80A7A848;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x0F) | 7;
        this->unk_308.unk_00 = 0;
        gSaveContext.eventInf[0] |= 0x20;
        if (!(gSaveContext.eventInf[0] & 0x40)) {
            globalCtx->msgCtx.unk_E3E7 = 4;
            globalCtx->msgCtx.msgMode = 0x36;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7A770.s")
#endif

void func_80A7A848(EnIn* this, GlobalContext* globalCtx) {
    if (this->unk_308.unk_00 == 2) {
        if ((globalCtx->msgCtx.choiceIndex == 0 && gSaveContext.rupees < 50) || globalCtx->msgCtx.choiceIndex == 1) {
            gSaveContext.eventInf[0] &= ~0xF;
            this->actionFunc = func_80A7A4C8;
        } else {
            func_80A79BAC(this, globalCtx, 2, 0x26);
            gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0xF) | 2;
            gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
            globalCtx->msgCtx.unk_E3E7 = 0;
            globalCtx->msgCtx.msgMode = 0x36;
        }
        this->unk_308.unk_00 = 0;
        gSaveContext.eventInf[0] &= ~0x20;
        gSaveContext.eventInf[0] &= ~0x40;
    }
}

#ifdef NON_MATCHING
// Regalloc only
void func_80A7A940(EnIn* this, GlobalContext* globalCtx) {
    if (this->unk_308.unk_00 == 0) {
        this->actor.flags |= 0x10000;
        return;
    }
    if (this->unk_1EC != 0) {
        this->unk_1EC--;
        if (this->unk_1EC == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_VO_IN_LOST);
        }
    }
    if (this->unk_308.unk_00 == 2) {
        this->actor.flags &= ~0x10000;
        func_80A79BAC(this, globalCtx, 2, 0x26);
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x000F) | 0x0002;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
        globalCtx->msgCtx.unk_E3E7 = 0;
        globalCtx->msgCtx.msgMode = 0x36;
        this->unk_308.unk_00 = 0;
        gSaveContext.eventInf[0] |= 0x40;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7A940.s")
#endif

#ifdef NON_MATCHING
// Regalloc only
void func_80A7AA40(EnIn* this, GlobalContext* globalCtx) {
    Vec3f sp3C = D_80A7B99C;
    Vec3f sp30;
    Vec3f sp24;

    this->unk_1F0 = Gameplay_CreateSubCamera(globalCtx);
    this->unk_1F2 = globalCtx->activeCamera;
    Gameplay_ChangeCameraStatus(globalCtx, this->unk_1F2, 1);
    Gameplay_ChangeCameraStatus(globalCtx, this->unk_1F0, 7);

    this->unk_2F0 = 0.0f;
    this->unk_2F4 = 50.0f;
    this->unk_2F8 = 0.0f;
    this->unk_2FC = 0.0f;
    this->unk_300 = 50.0f;
    this->unk_304 = 50.0f;

    sp30 = this->actor.posRot.pos;
    sp24 = this->actor.posRot.pos;

    sp30.x += this->unk_2F0;
    sp30.y += this->unk_2F4;
    sp30.z += this->unk_2F8;

    sp24.x += this->unk_2FC;
    sp24.y += this->unk_300;
    sp24.z += this->unk_304;

    func_800C04D8(globalCtx, this->unk_1F0, &sp30, &sp24);
    this->actor.textId = 0x203B;
    func_8010B680(globalCtx, this->actor.textId, NULL);
    this->unk_308.unk_00 = 1;
    this->unk_1FC = 0;
    globalCtx->csCtx.frames = 0;
    ShrinkWindow_SetVal(0x20);
    Interface_ChangeAlpha(2);
    this->actionFunc = func_80A7ABD4;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7AA40.s")
#endif

void func_80A7ABD4(EnIn* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f sp48;
    Vec3f sp3C;

    if (player->rideActor != NULL) {
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;
    if (this->actor.textId == 0x203B) {
        if (this->unk_1EC != 0) {
            this->unk_1EC--;
            if (this->unk_1EC == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_VO_IN_LOST);
            }
        }
    }
    if (this->unk_308.unk_00 != 0) {
        if (this->unk_308.unk_00 == 2) {
            if (this->actor.textId == 0x203B) {
                this->actor.textId = 0x203C;
                func_8010B680(globalCtx, this->actor.textId, NULL);
                this->unk_308.unk_00 = 1;
                func_80A796EC(this, 3);
            } else {
                globalCtx->msgCtx.msgMode = 0x36;
                this->unk_308.unk_00 = 0;
            }
        }
    } else {
        if (globalCtx->csCtx.frames++ >= 50) {
            this->actionFunc = func_80A7AE84;
            return;
        }
        if (globalCtx->csCtx.frames == 44) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_RONRON_DOOR_CLOSE);
        }
        Math_SmoothScaleMaxMinF(&this->unk_2F0, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_2F4, 50.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_2F8, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_2FC, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_300, 150.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_304, 300.0f, 0.06f, 10000.0f, 0.0f);

        sp48 = this->actor.posRot.pos;
        sp3C = this->actor.posRot.pos;

        sp48.x += this->unk_2F0;
        sp48.y += this->unk_2F4;
        sp48.z += this->unk_2F8;
        sp3C.x += this->unk_2FC;
        sp3C.y += this->unk_300;
        sp3C.z += this->unk_304;
        func_800C04D8(globalCtx, this->unk_1F0, &sp48, &sp3C);
    }
}

void func_80A7AE84(EnIn* this, GlobalContext* globalCtx) {
    Gameplay_ChangeCameraStatus(globalCtx, this->unk_1F2, 7);
    Gameplay_ClearCamera(globalCtx, this->unk_1F0);
    func_8002DF54(globalCtx, &this->actor, 7);
    Interface_ChangeAlpha(0x32);
    this->actionFunc = func_80A7AEF0;
}

void func_80A7AEF0(EnIn* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 temp_v0;
    Vec3f sp2C = this->actor.posRot.pos;

    sp2C.x += 90.0f * Math_Sins(this->actor.shape.rot.y);
    sp2C.z += 90.0f * Math_Coss(this->actor.shape.rot.y);
    temp_v0 = Math_Vec3f_Yaw(&sp2C, &player->actor.posRot.pos);
    if (ABS(temp_v0) >= 0x4001) {
        globalCtx->nextEntranceIndex = 0x0476;
        globalCtx->sceneLoadFlag = 0x14;
        globalCtx->fadeTransition = 5;
        this->actionFunc = func_80A7B018;
    } else if (this->unk_308.unk_00 == 2) {
        globalCtx->msgCtx.unk_E3E7 = 4;
        globalCtx->msgCtx.msgMode = 0x36;
        this->unk_308.unk_00 = 0;
    }
}

void func_80A7B018(EnIn* this, GlobalContext* globalCtx) {
}

#ifdef NON_MATCHING
// Single reordering
void func_80A7B024(EnIn* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (player->rideActor != NULL) {
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;
    if (this->unk_308.unk_00 == 2) {
        if (!(gSaveContext.eventChkInf[1] & 0x800) && (gSaveContext.infTable[0xA] & 0x800)) {
            gSaveContext.eventChkInf[1] |= 0x800;
            gSaveContext.infTable[0xA] |= 0x800;
        }
        func_80A79BAC(this, globalCtx, 0, 0x26);
        gSaveContext.eventInf[0] = gSaveContext.eventInf[0] & ~0xF;
        gSaveContext.eventInf[0] = (gSaveContext.eventInf[0] & ~0x8000) | 0x8000;
        globalCtx->msgCtx.unk_E3E7 = 4;
        globalCtx->msgCtx.msgMode = 0x36;
        this->unk_308.unk_00 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7B024.s")
#endif

void EnIn_Update(Actor *thisx, GlobalContext *globalCtx) {
    ColliderCylinder* collider;
    EnIn* this = THIS;

    if (this->actionFunc == func_80A79FB0) {
        this->actionFunc(this, globalCtx);
        return;
    }
    collider = &this->collider;
    Collider_CylinderUpdate(this,collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, collider);
    if (this->actionFunc != func_80A7A304) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        if (this->skelAnime.animCurrentSeg == &D_06001BE0 && ((gSaveContext.eventInf[0] & 0xF) != 6)) {
            func_80A79690(&this->skelAnime, this, globalCtx);
        }
        func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    }
    func_80A79A2C(this);
    this->actionFunc(this, globalCtx);
    if (this->actionFunc != func_80A7A304) {
        func_80A79AB4(this, globalCtx);
        if (gSaveContext.timer2Value < 6 && gSaveContext.timer2State != 0 && this->unk_308.unk_00 == 0) {
            if (func_8002F194(this, globalCtx) != 0) {}
        } else {
            func_800343CC(globalCtx, &this->actor, &this->unk_308.unk_00, 
                        ((this->actor.unk_1F == 6) ? 80.0f : 320.0f) + this->collider.dim.radius, 
                        func_80A79168, func_80A79500);
            if (this->unk_308.unk_00 != 0) {
                this->unk_1FA = this->unk_1F8;
                this->unk_1F8 = func_8010BDBC(&globalCtx->msgCtx);
            }
        }
        func_80A795C8(this, globalCtx);
    }
}

s32 func_80A7B320(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnIn* this = THIS;
    Vec3s sp2C;

    if (this->actor.params > 0 && limbIndex != 16) {
        if (D_80A7B938[limbIndex] != NULL) {
            *dList = D_80A7B938[limbIndex];
        }
    }
    if (limbIndex == 16) {
        Matrix_Translate(1500.0f, 0.0f, 0.0f, 1);
        sp2C = this->unk_308.unk_08;
        Matrix_RotateZ((sp2C.x / 32768.0f) * 3.1415927f, 1);
        Matrix_RotateX((sp2C.y / 32768.0f) * 3.1415927f, 1);
        Matrix_Translate(-1500.0f, 0.0f, 0.0f, 1);
    }
    if (limbIndex == 9) {
        sp2C = this->unk_308.unk_0E;
        Matrix_RotateX((sp2C.x / 32768.0f) * 3.1415927f, 1);
        Matrix_RotateY((sp2C.y / 32768.0f) * 3.1415927f, 1);
    }
    if (limbIndex == 9 || limbIndex == 10 || limbIndex == 13) {
        rot->y += Math_Sins(this->unk_332[limbIndex].x) * 200.0f;
        rot->z += Math_Coss(this->unk_332[limbIndex].y) * 200.0f;
    }
    return 0;
}

void func_80A7B570(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnIn* this = THIS;
    Vec3f sp38 = D_80A7B9A8;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_in.c", 2335);
    if (limbIndex == 0x10) {
        Matrix_MultVec3f(&sp38, &this->actor.posRot2.pos);
        this->actor.posRot2.rot = this->actor.posRot.rot;
    }
    if (limbIndex == 12 && this->skelAnime.animCurrentSeg == &D_06014CA8) {
        gSPDisplayList(POLY_OPA_DISP++, D_06007A20);
    }
    if (limbIndex == 15 && this->skelAnime.animCurrentSeg == &D_06014CA8) {
        gSPDisplayList(POLY_OPA_DISP++, D_06007BF8);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_in.c", 2365);
}

void EnIn_Draw(Actor* thisx, GlobalContext *globalCtx) {
    EnIn* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_in.c", 2384);
    if (this->actionFunc != func_80A79FB0) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A7B9B4[this->unk_1EE]));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&D_060034D0));
        SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, func_80A7B320, func_80A7B570, &this->actor);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_in.c", 2416);
}
