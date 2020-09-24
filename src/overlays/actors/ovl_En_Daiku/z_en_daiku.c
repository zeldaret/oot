#include "z_en_daiku.h"
#include "../ovl_En_GeldB/z_en_geldb.h"

#define FLAGS 0x00000019

#define THIS ((EnDaiku*)thisx)

typedef struct {
    AnimationHeader* dok0;
    f32 dok4;
    u8 dok8;
    f32 dokC;
} StructD_809E40B8;

typedef struct {
    Vec3f dok0;
    s32 dokC;
} StructD_809E4108;

void EnDaiku_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDaiku_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDaiku_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDaiku_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809E3338(EnDaiku* this, GlobalContext* globalCtx);
void func_809E336C(EnDaiku* this, GlobalContext* globalCtx);
void func_809E3438(EnDaiku* this, GlobalContext* globalCtx);
void func_809E349C(EnDaiku* this, GlobalContext* globalCtx);
void func_809E36A4(EnDaiku* this, GlobalContext* globalCtx);
void func_809E3710(EnDaiku* this, GlobalContext* globalCtx);
void func_809E3A8C(EnDaiku* this, GlobalContext* globalCtx);
s32 func_809E3EF8(GlobalContext* globalCtx, s32 limb, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
void func_809E3F7C(GlobalContext* globalCtx, s32 limb, Gfx** dList, Vec3s* rot, Actor* thisx);

extern SkeletonHeader D_06007958;

const ActorInit En_Daiku_InitVars = {
    ACTOR_EN_DAIKU,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DAIKU,
    sizeof(EnDaiku),
    (ActorFunc)EnDaiku_Init,
    (ActorFunc)EnDaiku_Destroy,
    (ActorFunc)EnDaiku_Update,
    (ActorFunc)EnDaiku_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 18, 66, 0, { 0, 0, 0 } },
};
static CollisionCheckInfoInit2 sColChkInfoInit2 = { 0, 0, 0, 0, 0xFF };
static DamageTable sDamageTable = { 0 };

static StructD_809E40B8 D_809E40B8[] = {
    { 0x06001AB0, 1.0f, 0, 0 }, { 0x06007DE0, 1.0f, 0, 0 }, { 0x0600885C, 1.0f, 0, 0 },
    { 0x06000C44, 1.0f, 0, 0 }, { 0x06008164, 1.0f, 0, 0 },
};

static StructD_809E4108 D_809E4108[] = {
    { { 0, 130, 220 }, 0x00000064 },
    { { -20, 22, 280 }, 0x0000006E },
    { { 50, 180, 350 }, 0x00000064 },
    { { -40, 60, 60 }, 0x00000078 },
};

static Vec3f D_809E4148 = { 0, 0, 120 };
static Gfx* D_809E4154[] = { 0x06005BD0, 0x06005AC0, 0x06005990, 0x06005880 };
static Vec3f D_809E4164 = { 700, 1100, 0 };

void func_809E2B30(EnDaiku* this, s32 arg1, s32* arg2) {
    f32 sp34;

    if (*arg2 < 0 || *arg2 == arg1) {
        sp34 = 0.0f;
    } else {
        sp34 = D_809E40B8[arg1].dokC;
    }
    SkelAnime_ChangeAnim(&this->skelAnime, D_809E40B8[arg1].dok0, 1.0f, 0.0f,
                         SkelAnime_GetFrameCount(&D_809E40B8[arg1].dok0->genericHeader), D_809E40B8[arg1].dok8, sp34);
    *arg2 = arg1;
}

void EnDaiku_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDaiku* this = THIS;
    s32 pad;
    s32 phi_t0 = 1;
    s32 phi_v1 = 0;

    if ((this->actor.params & 3) == 0 && (gSaveContext.eventChkInf[9] & 1)) {
        phi_v1 = 1;
    } else if ((this->actor.params & 3) == 1 && (gSaveContext.eventChkInf[9] & 2)) {
        phi_v1 = 1;
    } else if ((this->actor.params & 3) == 2 && (gSaveContext.eventChkInf[9] & 4)) {
        phi_v1 = 1;
    } else if ((this->actor.params & 3) == 3 && (gSaveContext.eventChkInf[9] & 8)) {
        phi_v1 = 1;
    }

    if (phi_v1 == 1 && globalCtx->sceneNum == SCENE_GERUDOWAY) {
        phi_t0 = 0;
    } else if (phi_v1 == 0 && globalCtx->sceneNum == SCENE_TENT) {
        phi_t0 = 0;
    }

    this->nok240 = this->actor.shape.rot.z & 0x3F;
    this->actor.shape.rot.z = 0;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 40.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06007958, NULL, this->limbDrawTable, this->transitionDrawTable,
                     17);
    if (phi_t0 == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    func_80061EFC(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit2);
    SkelAnime_ChangeAnim(&this->skelAnime, D_809E40B8[0].dok0, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_809E40B8[0].dok0->genericHeader),
                         D_809E40B8[0].dok8, D_809E40B8[0].dokC);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    this->actor.unk_1F = 6;
    this->nok1F4 = -1;
    this->nok1F0 = 5.0f;
    this->nok338 = this->actor.posRot.rot;
    this->nok340 = this->actor.posRot.pos;
    if (globalCtx->sceneNum == SCENE_GERUDOWAY) {
        func_809E2B30(this, 1, &this->nok1F4);
        this->nok23C |= 6;
        this->actionFunc = func_809E336C;
    } else {
        if ((this->actor.params & 3) == 1 || (this->actor.params & 3) == 3) {
            func_809E2B30(this, 4, &this->nok1F4);
            this->nok23C |= 2;
        } else {
            func_809E2B30(this, 0, &this->nok1F4);
            this->nok23C |= 6;
        }
        this->skelAnime.animCurrentFrame = (s32)(Math_Rand_ZeroOne() * this->skelAnime.animFrameCount);
        this->actionFunc = func_809E3338;
    }
}

void EnDaiku_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnDaiku* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 func_809E2F50(EnDaiku* this, GlobalContext* globalCtx) {
    s32 phi_v1 = 2;

    if (func_8010BDBC(&globalCtx->msgCtx) == 6) {
        if (globalCtx->sceneNum == SCENE_GERUDOWAY) {
            if (func_80106BC8(globalCtx) != 0) {
                if (this->actor.textId == 0x6007) {
                    Flags_SetSwitch(globalCtx, this->nok240);
                    phi_v1 = 0;
                } else {
                    this->actionFunc = func_809E349C;
                    phi_v1 = 3;
                }
            }
        } else if (globalCtx->sceneNum == SCENE_TENT) {
            if (func_80106BC8(globalCtx) != 0) {
                switch (this->actor.textId) {
                    case 0x6061:
                        gSaveContext.infTable[23] |= 0x40;
                        break;
                    case 0x6064:
                        gSaveContext.infTable[23] |= 0x100;
                        break;
                }
                phi_v1 = 0;
            }
        }
    }
    return phi_v1;
}

#ifdef NON_MATCHING
// regalloc
void func_809E3068(EnDaiku* this, GlobalContext* globalCtx) {
    s32 wannabeV0;
    s32 wannabeV1;
    s16 sp2E;
    s16 sp2C;

    if (this->nok1E4 == 2) {
        this->nok1E4 = func_809E2F50(this, globalCtx);
    } else if (func_8002F194(&this->actor, globalCtx)) {
        this->nok1E4 = 2;
    } else {
        func_8002F374(globalCtx, &this->actor, &sp2E, &sp2C);
        if (sp2E >= 0 && sp2E <= 320 && sp2C >= 0 && sp2C <= 240 && this->nok1E4 == 0 &&
            func_8002F2CC(&this->actor, globalCtx, 100.0f) == 1) {
            if (globalCtx->sceneNum == SCENE_GERUDOWAY) {
                if (this->nok23C & 0x10) {
                    // wannabeV0 uses v1 and wannabeV1 uses v0, the opposite is wanted
                    wannabeV0 = gSaveContext.eventChkInf[9];
                    // moving the wannabeV1 initialization to its declaration fixes regalloc but breaks earlier codegen
                    wannabeV1 = 0;
                    if (wannabeV0 & 1) {
                        wannabeV1++;
                    }
                    if (wannabeV0 & 2) {
                        wannabeV1++;
                    }
                    if (wannabeV0 & 4) {
                        wannabeV1++;
                    }
                    if (wannabeV0 & 8) {
                        wannabeV1++;
                    }
                    switch (wannabeV1) {
                        case 0:
                            this->actor.textId = 0x605B;
                            break;
                        case 1:
                            this->actor.textId = 0x605C;
                            break;
                        case 2:
                            this->actor.textId = 0x605D;
                            break;
                        case 3:
                            this->actor.textId = 0x605E;
                            break;
                    }
                } else if ((this->nok23C & 0x18) == 0) {
                    this->actor.textId = 0x6007;
                }
            } else if (globalCtx->sceneNum == SCENE_TENT) {
                switch (this->actor.params & 3) {
                    case 0:
                        if (gBitFlags[3] & gSaveContext.questItems) {
                            this->actor.textId = 0x6060;
                        } else {
                            this->actor.textId = 0x605F;
                        }
                        break;
                    case 1:
                        if (gBitFlags[3] & gSaveContext.questItems) {
                            this->actor.textId = 0x6063;
                        } else {
                            if (!(gSaveContext.infTable[23] & 0x40)) {
                                this->actor.textId = 0x6061;
                            } else {
                                this->actor.textId = 0x6062;
                            }
                        }
                        break;
                    case 2:
                        if (gBitFlags[3] & gSaveContext.questItems) {
                            this->actor.textId = 0x6066;
                        } else {
                            if (!(gSaveContext.infTable[23] & 0x100)) {
                                this->actor.textId = 0x6064;
                            } else {
                                this->actor.textId = 0x6065;
                            }
                        }
                        break;
                    case 3:
                        if (gBitFlags[3] & gSaveContext.questItems) {
                            this->actor.textId = 0x6068;
                        } else {
                            this->actor.textId = 0x6067;
                        }
                        break;
                }
            }
        }
    }
}
#else
void func_809E3068(EnDaiku* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3068.s")
#endif

void func_809E3338(EnDaiku* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_809E3068(this, globalCtx);
}

void func_809E336C(EnDaiku* this, GlobalContext* globalCtx) {
    EnGeldB* temp_v0;
    s32 temp_t9;
    s32 temp_v1;

    if (!(this->nok23C & 8)) {
        func_809E3068(this, globalCtx);
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp_v0 = (EnGeldB*)Actor_Find(&globalCtx->actorCtx, ACTOR_EN_GELDB, 5);
    if (temp_v0 == NULL) {
        this->nok23C |= 0x10;
        this->nok23C &= ~8;
        func_809E2B30(this, 2, &this->nok1F4);
        this->actionFunc = func_809E3438;
    } else if (!(this->nok23C & 8) && temp_v0->unk_318 == 0) {
        this->nok23C |= 8;
        this->actor.flags &= ~9;
    }
}

void func_809E3438(EnDaiku* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (Flags_GetSwitch(globalCtx, this->actor.params >> 8 & 0x3F)) {
        this->actor.flags |= 9;
        func_809E3068(this, globalCtx);
    }
}

void func_809E349C(EnDaiku* this, GlobalContext* globalCtx) {
    Path* path;
    f32 dxz;
    f32 dx;
    f32 dz;
    Vec3s* pointPos;
    s32 exitLoop;

    func_800F5C64(0x51);
    func_809E2B30(this, 3, &this->nok1F4);
    this->nok23C &= ~6;
    gSaveContext.eventChkInf[9] |= 1 << (this->actor.params & 3);
    this->actor.gravity = -1.0f;
    this->nok200 = D_809E4108[this->actor.params & 3].dokC;
    func_809E3710(this, globalCtx);
    exitLoop = false;
    path = &globalCtx->setupPathList[this->actor.params >> 4 & 0xF];
    while (!exitLoop) {
        pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->nok1EC;
        dx = pointPos->x - this->actor.posRot.pos.x;
        dz = pointPos->z - this->actor.posRot.pos.z;
        this->nok208 = Math_atan2f(dx, dz) * (0x8000 / M_PI);
        dxz = sqrtf(SQ(dx) + SQ(dz));
        if (dxz > 10.0f) {
            exitLoop = true;
        } else {
            this->nok1EC++;
        }
    }
    this->actionFunc = func_809E36A4;
}

void func_809E36A4(EnDaiku* this, GlobalContext* globalCtx) {
    s16 diff;

    diff = Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->nok208, 1, 0x1388, 0);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (diff == 0) {
        this->actionFunc = func_809E3A8C;
        this->actionFunc(this, globalCtx);
    }
}

void func_809E3710(EnDaiku* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f vec1;
    Vec3f vec2;

    this->nok1FC = 1;
    this->nok200 = D_809E4108[this->actor.params & 3].dokC;
    vec1.x = D_809E4108[this->actor.params & 3].dok0.x;
    vec1.y = D_809E4108[this->actor.params & 3].dok0.y;
    vec1.z = D_809E4108[this->actor.params & 3].dok0.z;
    Matrix_RotateY(this->actor.posRot.rot.y * (M_PI / 0x8000), MTXMODE_NEW);
    Matrix_MultVec3f(&vec1, &vec2);
    this->nok20C.x = this->nok224.x = this->actor.posRot.pos.x + vec2.x;
    this->nok20C.y = this->nok224.y = this->actor.posRot.pos.y + vec2.y;
    if (1) {}
    this->nok20C.z = this->nok224.z = this->actor.posRot.pos.z + vec2.z;
    if (1) {}
    this->nok218.x = this->nok230.x = this->actor.posRot.pos.x;
    this->nok218.y = this->nok230.y = this->actor.posRot.pos.y + 60.0f;
    if (1) {}
    this->nok218.z = this->nok230.z = this->actor.posRot.pos.z;
    this->nok204 = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
    Gameplay_ChangeCameraStatus(globalCtx, this->nok204, 7);
    func_800C04D8(globalCtx, this->nok204, &this->nok230, &this->nok224);
    func_800C0704(globalCtx, this->nok204, globalCtx->mainCamera.fov);
    func_8002DF54(globalCtx, &this->actor, 1);
}

void func_809E389C(EnDaiku* this, GlobalContext* globalCtx) {
    s32 pad;

    this->nok218.x = this->actor.posRot.pos.x;
    this->nok218.y = this->actor.posRot.pos.y + 60.0f;
    this->nok218.z = this->actor.posRot.pos.z;
    Math_SmoothScaleMaxMinF(&this->nok230.x, this->nok218.x, 1.0f, 1000.0f, 0.0f);
    Math_SmoothScaleMaxMinF(&this->nok230.y, this->nok218.y, 1.0f, 1000.0f, 0.0f);
    Math_SmoothScaleMaxMinF(&this->nok230.z, this->nok218.z, 1.0f, 1000.0f, 0.0f);
    func_800C04D8(globalCtx, this->nok204, &this->nok230, &this->nok224);
}

void func_809E3954(EnDaiku* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f vec;

    Gameplay_ClearCamera(globalCtx, this->nok204);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
    this->nok1FC = 0;
    if ((gSaveContext.eventChkInf[9] & 0xF) == 0xF) {
        Matrix_RotateY(this->nok338.y * 0.0000958738f, MTXMODE_NEW);
        Matrix_MultVec3f(&D_809E4148, &vec);
        if (Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_GE3, this->nok340.x + vec.x, this->nok340.y + vec.y,
                        this->nok340.z + vec.z, 0, Math_atan2f(-vec.x, -vec.z) * (0x8000 / M_PI), 0, 2) == NULL) {
            Actor_Kill(&this->actor);
        }
    } else {
        func_8002DF54(globalCtx, &this->actor, 7);
    }
}

void func_809E3A8C(EnDaiku* this, GlobalContext* globalCtx) {
    s32 pad1;
    Path* path;
    s16 ry;
    f32 dx;
    f32 dz;
    s32 pad2;
    f32 dxz;
    Vec3s* pointPos;

    path = &globalCtx->setupPathList[this->actor.params >> 4 & 0xF];
    pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->nok1EC;
    dx = pointPos->x - this->actor.posRot.pos.x;
    dz = pointPos->z - this->actor.posRot.pos.z;
    ry = Math_atan2f(dx, dz) * (0x8000 / M_PI);
    dxz = sqrtf(SQ(dx) + SQ(dz));
    if (dxz <= 20.88f) {
        this->nok1EC++;
        if (this->nok1EC >= path->count) {
            if (this->nok1FC != 0) {
                func_809E3954(this, globalCtx);
            }
            Actor_Kill(&this->actor);
            return;
        }
    }
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, ry, 1, 0xFA0, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, this->nok1F0, 0.6f, dxz, 0.0f);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    if (this->nok1FC != 0) {
        func_809E389C(this, globalCtx);
        if (this->nok200-- <= 0) {
            func_809E3954(this, globalCtx);
        }
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void EnDaiku_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnDaiku* this = THIS;
    s32 curFrame;
    Player* player;

    player = PLAYER;
    if (this->nok1F4 == 3) {
        curFrame = (s32)this->skelAnime.animCurrentFrame;
        if (curFrame == 6 || curFrame == 15) {
            Audio_PlayActorSound2(&this->actor, 0x38B8);
        }
    }
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    this->actionFunc(this, globalCtx);
    if (this->nok23C & 2) {
        this->nok244.unk_18.x = player->actor.posRot2.pos.x;
        this->nok244.unk_18.y = player->actor.posRot2.pos.y;
        this->nok244.unk_18.z = player->actor.posRot2.pos.z;
        if (this->nok23C & 4) {
            func_80034A14(&this->actor, &this->nok244, 0, 4);
        } else {
            func_80034A14(&this->actor, &this->nok244, 0, 2);
        }
    }
}

void EnDaiku_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnDaiku* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku.c", 1227);
    func_80093D18(globalCtx->state.gfxCtx);
    if ((thisx->params & 3) == 0) {
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 170, 10, 70, 255);
    } else if ((thisx->params & 3) == 1) {
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 170, 200, 255, 255);
    } else if ((thisx->params & 3) == 2) {
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0, 230, 70, 255);
    } else if ((thisx->params & 3) == 3) {
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 200, 0, 150, 255);
    }

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     func_809E3EF8, func_809E3F7C, &this->actor);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku.c", 1255);
}

s32 func_809E3EF8(GlobalContext* globalCtx, s32 limb, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnDaiku* this = THIS;

    switch (limb) {
        case 8:
            rot->x += this->nok244.unk_0E.y;
            rot->y -= this->nok244.unk_0E.x;
            break;
        case 15:
            rot->x += this->nok244.unk_08.y;
            rot->z += this->nok244.unk_08.x;
            break;
    }
    return 0;
}

void func_809E3F7C(GlobalContext* globalCtx, s32 limb, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnDaiku* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku.c", 1323);
    if (limb == 15) {
        Matrix_MultVec3f(&D_809E4164, &this->actor.posRot2.pos);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_809E4154[this->actor.params & 3]);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku.c", 1330);
}
