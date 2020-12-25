/*
 * File: z_en_zl3.c
 * Overlay: ovl_En_Zl3
 * Description: Adult Zelda
 */

#include "z_en_zl3.h"

#include "vt.h"
#include "overlays/actors/ovl_En_Encount2/z_en_encount2.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"

#define FLAGS 0x00000010

#define THIS ((EnZl3*)thisx)

void EnZl3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZl3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZl3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZl3_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80B59AD0(EnZl3* this, GlobalContext* globalCtx);

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_UNK0, 0x00, 0x00, 0x09, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 25, 80, 0, { 0, 0, 0 } },
};

UNK_TYPE D_80B5A43C[] = {
    0x060030C8, 0x06003C48, 0x06004048, 0x06004548, 0x06004948, 0x06004D48, 0x06005148, 0x00000000
};

UNK_TYPE D_80B5A45C[] = { 0x06003508, 0x06005548, 0x06005948 };

s32 D_80B5A468 = 0;

Vec3f D_80B5A46C = { 0.0f, 0.0f, 0.0f };

Vec3f D_80B5A478 = { 0.0f, 10.0f, 0.0f };

f32 D_80B5A484 = 0.0f;

Vec3f D_80B5A488 = { 0.0f, 0.0f, 0.0f };

s32 D_80B5A494 = -1;

Vec3f D_80B5A498 = { 148.0f, 260.0f, -87.0f };

Vec3f D_80B5A4A4 = { -12.0f, 260.0f, -147.0f };

Vec3f D_80B5A4B0 = { 42.0f, 260.0f, 13.0f };

u32 D_80B5A4BC = 0;

extern FlexSkeletonHeader D_06010D70;
extern AnimationHeader D_060001D8;
extern AnimationHeader D_060004F4;
extern AnimationHeader D_060014DC;
extern AnimationHeader D_0600210C;
extern AnimationHeader D_06002710;
extern AnimationHeader D_060038C0;
extern AnimationHeader D_06003D20;
extern AnimationHeader D_06003FF8;
extern AnimationHeader D_06004408;
extern AnimationHeader D_0600499C;
extern AnimationHeader D_06005248;
extern AnimationHeader D_060054E0;
extern AnimationHeader D_06005A0C;
extern AnimationHeader D_060061C4;
extern AnimationHeader D_06006508;
extern AnimationHeader D_06006AB0;
extern AnimationHeader D_06006F04;
extern AnimationHeader D_06007664;
extern AnimationHeader D_06007A78;
extern AnimationHeader D_06007C84;
extern AnimationHeader D_06008050;
extern AnimationHeader D_060082F8;
extern AnimationHeader D_06008684;
extern AnimationHeader D_06008AD0;
extern AnimationHeader D_060091D8;
extern AnimationHeader D_060099A0;
extern AnimationHeader D_06009BE4;
extern AnimationHeader D_06009FBC;
extern AnimationHeader D_0600A334;
extern AnimationHeader D_0600A598;
extern AnimationHeader D_0600AACC;
extern AnimationHeader D_06001110;
extern AnimationHeader D_06001D8C;
extern AnimationHeader D_06002348;
extern AnimationHeader D_06002E54;

void func_80B533B0(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder_Set3(globalCtx, &this->collider, &this->actor, &sCylinderInit);
}

void func_80B533FC(EnZl3* this, GlobalContext* globalCtx) {
    ColliderCylinder* collider = &this->collider;
    s32 pad[4];

    Collider_CylinderUpdate(&this->actor, collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider->base);
}

void EnZl3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80B53468(void) {
    Audio_SetBGM(0x62);
}

BossGanon2* func_80B53488(EnZl3* this, GlobalContext* globalCtx) {
    if (this->unk_3D4 == NULL) {
        Actor* actorIt = globalCtx->actorCtx.actorList[ACTORTYPE_BOSS].first;

        while (actorIt != NULL) {
            if (actorIt->id == ACTOR_BOSS_GANON2) {
                this->unk_3D4 = (BossGanon2*)actorIt;
                break;
            }
            actorIt = actorIt->next;
        }
    }
    return this->unk_3D4;
}

void func_80B534CC(EnZl3* this) {
    s32 pad[2];
    s16* unk_244 = &this->unk_244;
    s16* unk_246 = &this->unk_246;

    if (DECR(*unk_246) == 0) {
        *unk_246 = Math_Rand_S16Offset(0x3C, 0x3C);
    }
    *unk_244 = *unk_246;
    if (*unk_244 >= 3) {
        *unk_244 = 0;
    }
}

void func_80B53554(EnZl3* this, s16 arg1) {
    this->unk_244 = arg1;
}

void func_80B53568(EnZl3* this, s16 arg1) {
    this->unk_248 = arg1;
}

void func_80B5357C(EnZl3* this, GlobalContext* globalCtx) {
    Vec3f* thisPos = &this->actor.posRot.pos;
    Vec3f sp20;

    sp20.x = thisPos->x + ((Math_Rand_ZeroOne() - 0.5f) * 10.0f);
    sp20.y = thisPos->y;
    sp20.z = thisPos->z + ((Math_Rand_ZeroOne() - 0.5f) * 10.0f);
    Item_DropCollectible(globalCtx, &sp20, 3);
}

void func_80B53614(EnZl3* this, GlobalContext* globalCtx) {
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_RIVER_SOUND, -442.0f, 4102.0f, -371.0f, 0, 0, 0, 0x12);
}

void func_80B5366C(EnZl3* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

void func_80B536B4(EnZl3* this) {
    this->actor.bgCheckFlags &= ~0x9;
}

void func_80B536C4(EnZl3* this) {
    s32 pad[2];
    Vec3s* vec1 = &this->unk_3F8.unk_08;
    Vec3s* vec2 = &this->unk_3F8.unk_0E;

    Math_SmoothScaleMaxMinS(&vec1->x, 0, 20, 6200, 100);
    Math_SmoothScaleMaxMinS(&vec1->y, 0, 20, 6200, 100);
    Math_SmoothScaleMaxMinS(&vec2->x, 0, 20, 6200, 100);
    Math_SmoothScaleMaxMinS(&vec2->y, 0, 20, 6200, 100);
}

void func_80B53764(EnZl3* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->unk_3F8.unk_18 = player->actor.posRot.pos;
    this->unk_3F8.unk_14 = kREG(16) - 16.0f;
    func_80034A14(&this->actor, &this->unk_3F8, kREG(17) + 0xC, 2);
}

s32 func_80B537E8(EnZl3* this) {
    s16 yawTowardsLink = this->actor.yawTowardsLink;
    s16* rotY = &this->actor.posRot.rot.y;
    s16* unk_3D0 = &this->unk_3D0;
    s16 pad[3];

    Math_SmoothScaleMaxMinS(unk_3D0, ABS((s16)(yawTowardsLink - *rotY)), 5, 6200, 100);
    Math_SmoothScaleMaxMinS(rotY, yawTowardsLink, 5, *unk_3D0, 100);
    this->actor.shape.rot.y = *rotY;
    // no return statement despite being of type s32
    // the function directly below needs this to not be void I guess
}

void func_80B538B0(EnZl3* this) {
    s16 yawTowardsLink = this->actor.yawTowardsLink;
    s16* rotY = &this->actor.posRot.rot.y;

    if (ABS((s16)(yawTowardsLink - *rotY)) >= 0x1556) {
        D_80B5A468 = 1;
    }

    if (D_80B5A468 != 0) {
        if (!func_80B537E8(this)) {
            D_80B5A468 = 0;
        }
    } else {
        this->unk_3D0 = 0;
    }
}

s32 EnZl3_FrameUpdateMatrix(EnZl3* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

s32 func_80B5396C(EnZl3* this) {
    return this->unk_3C8;
}

void func_80B53974(EnZl3* this, u8 arg1) {
    this->unk_3C8 = arg1;
}

#ifdef NON_MATCHING
void func_80B53980(EnZl3* this, s16 y, s32 idx) {
    SkelAnime* skelAnime = &this->skelAnime;
    s32 action = this->action;
    EnZl3* this2 = this;
    s16 y2 = y;
    s32 yTemp;
    f32 animCurrentFrame;
    f32 unk_3DC;

    if (this->unk_2FC != 0) {
        s32 temp25C = this2->unk_25C[idx];
        s32 temp28C = (s16)(y + this2->unk_28C[idx]);
        s32 temp2BC = y - this2->unk_2BC[idx];

        if ((s32)fabsf(temp2BC) > 0x8000) {
            if (y2 > 0) {
                temp2BC -= 0x10000;
            } else {
                temp2BC += 0x10000;
            }
        }

        if ((idx != 0 || action != 4) && (temp2BC != 0)) {
            temp25C += (temp2BC - temp25C) / 16;
        }

        if (temp25C != 0) {
            temp25C -= temp25C / 10;
        }

        if ((s16)(temp28C - y) != 0) {
            temp25C -= (s16)(temp28C - y) / 50;
        }

        temp28C += temp25C;
        if (((this->unk_25C[idx] * temp25C) <= 0) && (((s16)(temp28C - y) > -0x64) && ((s16)(temp28C - y) < 0x64))) {
            temp28C = y;
            temp25C = 0;
        }

        if (idx == 0 && action == 3) {
            yTemp = y + -11000;
            if (skelAnime->mode == 2) {
                animCurrentFrame = skelAnime->animCurrentFrame;
                unk_3DC = this->unk_3DC;
                yTemp = (s32)((animCurrentFrame / unk_3DC) * -11000) + y;
                if (0) {};
                if (temp28C >= yTemp) {
                    temp28C = yTemp;
                    if (temp25C > 0) {
                        temp25C /= -2;
                    }
                }
            } else {
                if (temp28C >= yTemp) {
                    temp28C = yTemp;
                    if (temp25C > 0) {
                        temp25C /= -2;
                    }
                }
            }
        }
        this->unk_25C[idx] = temp25C;
        this->unk_28C[idx] = temp28C - y;
    }
    this->unk_2BC[idx] = y;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53980.s")
#endif

// Assorted regalloc issues
#ifdef NON_MATCHING
void func_80B53B64(EnZl3* this, s16 z, s32 idx) {
    SkelAnime* skelAnime = &this->skelAnime;
    s32 action = this->action;
    s32 phi_a1;
    s32 idx25C;
    s16 temp_t1;
    s32 temp_a0;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a3_8;
    s32 temp_v1_3;
    s32 phi_v1;
    s32 phi_v0;
    s32 phi_v1_2;

    if (idx == 2) {
        phi_a1 = 15000;
        idx25C = 0;
    } else if (idx == 5) {
        phi_a1 = 13000;
        idx25C = 3;
    } else if (idx == 8) {
        phi_a1 = 12000;
        idx25C = 6;
    } else if (idx == 11) {
        phi_a1 = 0x4000;
        idx25C = 9;
    } else if (idx == 14) {
        phi_a1 = 0x4000;
        idx25C = 12;
    } else if (idx == 17) {
        phi_a1 = 0x4000;
        idx25C = 15;
    } else {
        phi_a1 = 0x4000;
        idx25C = 18;
    }

    if (this->unk_2FC != 0) {
        temp_t1 = this->unk_25C[idx];
        temp_a3_3 = this->unk_28C[idx] + z;
        phi_v1 = z - this->unk_2BC[idx];
        temp_a0 = (s16)(temp_a3_3);
        phi_v0 = temp_t1;

        if ((s32)fabsf(phi_v1) > 0x8000) {
            if (z > 0) {
                phi_v1 -= 0x10000;
            } else {
                phi_v1 += 0x10000;
            }
        }

        if (idx25C >= 0) {
            phi_v0 = this->unk_25C[idx25C];
            phi_v1 += ABS(phi_v0) / 3;
        }

        if (idx == 2 && (action == 5 || action == 24)) {
            if (phi_v1 != 0) {
                phi_v0 -= (phi_v1 - phi_v0) / 10;
            }
        } else if (idx == 2 && action == 22 && skelAnime->mode == 2) {
            if (phi_v1 != 0) {
                phi_v0 -= (phi_v1 - phi_v0) / 10;
            }
        } else if (idx == 2 && (action == 20 || action == 21) && skelAnime->mode == 2) {
            if (phi_v1 != 0) {
                phi_v0 -= (phi_v1 - phi_v0) / 10;
            }
        } else {
            if (phi_v1 != 0) {
                phi_v0 += (phi_v1 - phi_v0) / 16;
            }
        }

        if (phi_v0 != 0) {
            phi_v0 -= phi_v0 / 10;
        }

        if ((s16)(temp_a0 - phi_a1) != 0) {
            phi_v0 -= (s16)(temp_a0 - phi_a1) / 50;
        }

        temp_a0 += phi_v0;
        temp_v1_3 = (s16)(temp_a0 - phi_a1);

        if (((temp_t1 * phi_v0) <= 0) && (temp_v1_3 > -100) && (temp_v1_3 < 100)) {
            phi_v0 = 0;
        }

        if (idx == 2) {
            if (action == 4) {
                if (skelAnime->mode == 2) {
                    f32 animCurrentFrame = skelAnime->animCurrentFrame;

                    temp_a3_2 = (s32)(((this->unk_3E0 - animCurrentFrame) / this->unk_3E0) * -2000.0f) + phi_a1;
                    if (temp_a3_2 >= phi_a1) {
                        phi_a1 = temp_a3_2;
                        if (phi_v0 < 0) {
                            phi_v0 /= -2;
                        }
                    }
                }
            } else if (action == 5) {
                if (skelAnime->mode == 2) {
                    temp_a3_3 = (s32)((skelAnime->animCurrentFrame / this->unk_3E4) * -2000.0f) + phi_a1;
                    if (temp_a3_3 >= phi_a1) {
                        phi_a1 = temp_a3_3;
                        if (phi_v0 < 0) {
                            phi_v0 /= -2;
                        }
                    }
                } else {
                    if (phi_a1 - 2000 >= phi_a1) {
                        phi_a1 -= 2000;
                        if (phi_v0 < 0) {
                            phi_v0 /= -2;
                        }
                    }
                }
            } else if ((action == 20) || (action == 21)) {
                if (skelAnime->mode == 2) {
                    f32 unk_3F4 = this->unk_3F4;

                    if (skelAnime->animCurrentFrame <= 42.0f) {
                        phi_v1_2 = phi_a1 - 2000;
                    } else {
                        phi_v1_2 =
                            (s32)((((skelAnime->animCurrentFrame - 42.0f) * 6200.0f) / (unk_3F4 - 42.0f)) + -2000.0f) +
                            phi_a1;
                    }

                    if (phi_v1_2 >= phi_a1) {
                        phi_a1 = phi_v1_2;
                        if (phi_v0 < 0) {
                            phi_v0 /= -2;
                        }
                    }
                } else {
                    if (phi_a1 + 4200 >= phi_a1) {
                        phi_a1 += 4200;
                        if (phi_v0 < 0) {
                            phi_v0 /= -2;
                        }
                    }
                }
            } else if (action == 22) {
                if (skelAnime->mode == 2) {
                    temp_a3_4 = (s32)(((skelAnime->animCurrentFrame / this->unk_3EC) * -5200.0f) + 4200.0f) + phi_a1;
                    if (temp_a3_4 >= phi_a1) {
                        phi_a1 = temp_a3_4;
                        if (phi_v0 < 0) {
                            phi_v0 /= -2;
                        }
                    }
                } else {
                    if (phi_a1 - 2000 >= phi_a1) {
                        phi_a1 -= 2000;
                        if (phi_v0 < 0) {
                            phi_v0 /= -2;
                        }
                    }
                }
            } else if (action == 23) {
                if (skelAnime->mode == 2) {
                    temp_a3_5 = (s32)(((skelAnime->animCurrentFrame / this->unk_3F0) * -7600.0f) + -2000.0f) + phi_a1;
                    if (temp_a3_5 >= phi_a1) {
                        phi_a1 = temp_a3_5;
                        if (phi_v0 < 0) {
                            phi_v0 /= -2;
                        }
                    }
                } else {
                    if (phi_a1 - 9600 >= phi_a1) {
                        phi_a1 -= 9600;
                        if (phi_v0 < 0) {
                            phi_v0 /= -2;
                        }
                    }
                }
            } else if (action == 24) {
                if (skelAnime->mode == 2) {
                    temp_a3_6 = (s32)(((skelAnime->animCurrentFrame / this->unk_3E8) * 21000.0f) + -9600.0f) + phi_a1;
                    if (temp_a3_6 >= phi_a1) {
                        phi_a1 = temp_a3_6;
                        if (phi_v0 < 0) {
                            phi_v0 /= -2;
                        }
                    }
                } else {
                    if (phi_a1 + 11400 >= phi_a1) {
                        phi_a1 += 11400;
                        if (phi_v0 < 0) {
                            phi_v0 /= -2;
                        }
                    }
                }
            }
        } else if (idx == 11 || idx == 17) {
            if (action == 4) {
                if (skelAnime->mode == 2) {
                    temp_a3_7 = (s32)((skelAnime->animCurrentFrame / this->unk_3E0) * -7000.0f) + phi_a1;
                    if (phi_a1 >= temp_a3_7) {
                        phi_a1 = temp_a3_7;
                        if (phi_v0 > 0) {
                            phi_v0 /= -2;
                        }
                    }
                } else {
                    if (phi_a1 >= phi_a1 - 7000) {
                        phi_a1 -= 7000;
                        if (phi_v0 > 0) {
                            phi_v0 /= -2;
                        }
                    }
                }
            } else if (action == 5) {
                if (skelAnime->mode == 2) {
                    f32 animCurrentFrame = skelAnime->animCurrentFrame;

                    temp_a3_8 = (s32)(((this->unk_3E4 - animCurrentFrame) / this->unk_3E4) * -7000.0f) + phi_a1;
                    if (phi_a1 >= temp_a3_8) {
                        phi_a1 = temp_a3_8;
                        if (phi_v0 > 0) {
                            phi_v0 /= -2;
                        }
                    }
                }
            }
        }
        this->unk_25C[idx] = phi_v0;
        this->unk_28C[idx] = phi_a1 - z;
    }
    this->unk_2BC[idx] = z;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53B64.s")
#endif

void func_80B54360(EnZl3* this, s16 arg1, s32 arg2) {
    if (this->unk_2FC != 0) {
        s32 temp_v1 = this->unk_28C[arg2] - arg1;
        s16 temp_t0 = temp_v1;
        s32 temp_t2 = temp_t0;
        s32 temp_t3 = this->unk_25C[arg2];
        s32 phi_v0 = temp_t3;
        s32 index25C;
        s32 phi_t5;

        temp_t3 = arg1 - this->unk_2BC[arg2];

        if (arg2 == 1) {
            index25C = 0;
            phi_t5 = this->unk_25C[index25C];
        } else if (arg2 == 4) {
            index25C = 3;
            phi_t5 = this->unk_25C[index25C];
        } else if (arg2 == 7) {
            index25C = 6;
            phi_t5 = this->unk_25C[index25C];
        } else if (arg2 == 10) {
            index25C = 9;
            phi_t5 = ABS(this->unk_25C[index25C]);
        } else if (arg2 == 13) {
            index25C = 12;
            phi_t5 = ABS(this->unk_25C[index25C]);
        } else if (arg2 == 16) {
            index25C = 15;
            phi_t5 = -ABS(this->unk_25C[index25C]);
        } else {
            index25C = 18;
            phi_t5 = -ABS(this->unk_25C[index25C]);
        }

        if ((s32)fabsf(temp_t3) > 0x8000) {
            if (arg1 > 0) {
                temp_t3 -= 0x10000;
            } else {
                temp_t3 += 0x10000;
            }
        }
        if (index25C >= 0) {
            temp_t3 += phi_t5 / 3;
        }

        if (temp_t3 != 0) {
            phi_v0 += (temp_t3 - phi_v0) / 16;
        }
        if (phi_v0 != 0) {
            phi_v0 -= phi_v0 / 10;
        }
        if (temp_t0 != 0) {
            phi_v0 -= temp_t0 / 50;
        }
        temp_v1 += phi_v0;
        if (((this->unk_25C[arg2] * phi_v0) <= 0) && (temp_t2 > -0x64) && (temp_t2 < 0x64)) {
            temp_v1 = 0;
            phi_v0 = 0;
        }
        this->unk_25C[arg2] = phi_v0;
        this->unk_28C[arg2] = arg1 + temp_v1;
    }
    this->unk_2BC[arg2] = arg1;
}

s32 func_80B5458C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                  Gfx** gfx) {
    s32 pad[3];
    EnZl3* this = THIS;
    s16* unk_28C = this->unk_28C;
    Mtx* sp78;
    MtxF sp38;
    Vec3s sp30;
    Vec3s* unk_3F8_unk_08 = &this->unk_3F8.unk_08;
    Vec3s* unk_3F8_unk_0E = &this->unk_3F8.unk_0E;

    if (limbIndex == 14) {
        sp78 = Graph_Alloc(globalCtx->state.gfxCtx, sizeof(Mtx) * 7);
        rot->x += unk_3F8_unk_08->y;
        rot->z += unk_3F8_unk_08->x;
        gSPSegment((*gfx)++, 0x0C, sp78);

        Matrix_Push();
        Matrix_Translate(pos->x, pos->y, pos->z, MTXMODE_APPLY);
        Matrix_RotateRPY(rot->x, rot->y, rot->z, MTXMODE_APPLY);
        Matrix_Push();
        Matrix_Translate(362.0f, -133.0f, 0.0f, MTXMODE_APPLY);
        Matrix_Get(&sp38);
        func_800D20CC(&sp38, &sp30, 0);
        if (!FrameAdvance_IsEnabled(globalCtx)) {
            func_80B53980(this, sp30.y, 0);
            func_80B54360(this, sp30.x, 1);
            func_80B53B64(this, sp30.z, 2);
        }
        Matrix_RotateRPY(unk_28C[0] + kREG(31), unk_28C[1] + kREG(32), unk_28C[2] + kREG(33), MTXMODE_APPLY);
        Matrix_Translate(-188.0f, -184.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp78[0], "../z_en_zl3.c", 1490);
        Matrix_Get(&sp38);
        func_800D20CC(&sp38, &sp30, 0);
        if (!FrameAdvance_IsEnabled(globalCtx)) {
            func_80B53980(this, sp30.y, 3);
        }
        Matrix_RotateRPY(unk_28C[3] + kREG(34), unk_28C[4] + kREG(35), unk_28C[5] + kREG(36), MTXMODE_APPLY);
        Matrix_Translate(-410.0f, -184.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp78[1], "../z_en_zl3.c", 1534);
        Matrix_Get(&sp38);
        func_800D20CC(&sp38, &sp30, 0);
        if (!FrameAdvance_IsEnabled(globalCtx)) {
            func_80B54360(this, sp30.x, 7);
        }
        Matrix_RotateRPY(unk_28C[6] + kREG(37), unk_28C[7] + kREG(38), unk_28C[8] + kREG(39), MTXMODE_APPLY);
        Matrix_Translate(-1019.0f, -26.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp78[2], "../z_en_zl3.c", 1554);
        Matrix_Pull();
        Matrix_Push();
        Matrix_Translate(467.0f, 265.0f, 389.0f, MTXMODE_APPLY);
        Matrix_Get(&sp38);
        func_800D20CC(&sp38, &sp30, 0);
        if (!FrameAdvance_IsEnabled(globalCtx)) {
            func_80B53980(this, sp30.y, 9);
            func_80B54360(this, sp30.x, 10);
            func_80B53B64(this, sp30.z, 11);
        }
        Matrix_RotateRPY(unk_28C[9] + kREG(40), unk_28C[10] + kREG(41), unk_28C[11] + kREG(42), MTXMODE_APPLY);
        Matrix_Translate(-427.0f, -1.0f, -3.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp78[3], "../z_en_zl3.c", 1579);
        Matrix_Get(&sp38);
        func_800D20CC(&sp38, &sp30, 0);
        if (!FrameAdvance_IsEnabled(globalCtx)) {
            func_80B53980(this, sp30.y, 12);
            func_80B54360(this, sp30.x, 13);
            func_80B53B64(this, sp30.z, 14);
        }
        Matrix_RotateRPY(unk_28C[12] + kREG(43), unk_28C[13] + kREG(44), unk_28C[14] + kREG(45), MTXMODE_APPLY);
        Matrix_Translate(-446.0f, -52.0f, 84.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp78[4], "../z_en_zl3.c", 1598);
        Matrix_Pull();
        Matrix_Push();
        Matrix_Translate(467.0f, 265.0f, -389.0f, MTXMODE_APPLY);
        Matrix_Get(&sp38);
        func_800D20CC(&sp38, &sp30, 0);
        if (!FrameAdvance_IsEnabled(globalCtx)) {
            func_80B53980(this, sp30.y, 15);
            func_80B54360(this, sp30.x, 16);
            func_80B53B64(this, sp30.z, 17);
        }
        Matrix_RotateRPY(unk_28C[15] + kREG(46), unk_28C[16] + kREG(47), unk_28C[17] + kREG(48), MTXMODE_APPLY);
        Matrix_Translate(-427.0f, -1.0f, 3.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp78[5], "../z_en_zl3.c", 1623);
        Matrix_Get(&sp38);
        func_800D20CC(&sp38, &sp30, 0);
        if (!FrameAdvance_IsEnabled(globalCtx)) {
            func_80B53980(this, sp30.y, 18);
            func_80B54360(this, sp30.x, 19);
            func_80B53B64(this, sp30.z, 20);
        }
        Matrix_RotateRPY(unk_28C[18] + kREG(49), unk_28C[19] + kREG(50), unk_28C[20] + kREG(51), MTXMODE_APPLY);
        Matrix_Translate(-446.0f, -52.0f, -84.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp78[6], "../z_en_zl3.c", 1642);
        Matrix_Pull();
        Matrix_Pull();
        this->unk_2FC = 1;
    } else if (limbIndex == 7) {
        rot->x += unk_3F8_unk_0E->y;
        rot->y -= unk_3F8_unk_0E->x;
    }
    return 0;
}

void EnZl3_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    EnZl3* this = THIS;
    s32 pad;
    Vec3f sp34;
    s32 pad2;
    Vec3f sp24;
    Vec3f sp18;

    if (limbIndex == 13) {
        sp34 = D_80B5A46C;
        Matrix_MultVec3f(&sp34, &this->unk_31C);
    } else if (limbIndex == 14) {
        sp24 = D_80B5A478;
        Matrix_MultVec3f(&sp24, &sp18);
        this->actor.posRot2.pos.x = sp18.x;
        this->actor.posRot2.pos.y = sp18.y;
        this->actor.posRot2.pos.z = sp18.z;
        this->actor.posRot2.rot.x = this->actor.posRot.rot.x;
        this->actor.posRot2.rot.y = this->actor.posRot.rot.y;
        this->actor.posRot2.rot.z = this->actor.posRot.rot.z;
    }
}

s32 func_80B54DB4(EnZl3* this) {
    s32 params = this->actor.params >> 8;

    return params & 0xFF;
}

s32 func_80B54DC4(EnZl3* this) {
    s32 params = this->actor.params >> 4;

    return params & 0xF;
}

s32 func_80B54DD4(EnZl3* this) {
    s32 params = this->actor.params;

    return params & 0xF;
}

void func_80B54DE0(EnZl3* this, GlobalContext* globalCtx) {
    s32 idx = this->unk_318;

    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[idx].segment);
}

void func_80B54E14(EnZl3* this, AnimationHeader* animation, u8 arg2, f32 transitionRate, s32 arg4) {
    f32 frameCount = SkelAnime_GetFrameCount(animation);
    f32 playbackSpeed;
    f32 unk0;
    f32 fc;

    if (arg4 == 0) {
        unk0 = 0.0f;
        fc = frameCount;
        playbackSpeed = 1.0f;
    } else {
        unk0 = frameCount;
        fc = 0.0f;
        playbackSpeed = -1.0f;
    }

    SkelAnime_ChangeAnim(&this->skelAnime, animation, playbackSpeed, unk0, fc, arg2, transitionRate);
}

void func_80B54EA4(EnZl3* this, GlobalContext* globalCtx) {
    f32 posX = this->actor.posRot.pos.x;
    f32 posY = this->actor.posRot.pos.y;
    f32 posZ = this->actor.posRot.pos.z;

    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EG, posX, posY, posZ, 0, 0, 0, 0);
}

void func_80B54EF4(EnZl3* this) {
    func_80078914(&this->actor.projectedPos, NA_SE_VO_Z1_PAIN);
}

void func_80B54F18(EnZl3* this, GlobalContext* globalCtx) {
    if (this->unk_2F8 == 0) {
        f32 posX = this->actor.posRot.pos.x;
        f32 posY = this->actor.posRot.pos.y + (kREG(5) + -26.0f);
        f32 posZ = this->actor.posRot.pos.z;

        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0x4000,
                           0, 3);
        this->unk_2F8 = 1;
    }
}

void func_80B54FB4(EnZl3* this, GlobalContext* globalCtx) {
    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_inFinal_Init通すよ!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    func_80B54E14(this, &D_06008AD0, 0, 0.0f, 0);
    func_80B53554(this, 4);
    func_80B53568(this, 2);
    this->action = 1;
    this->drawConfig = 1;
    func_80B54F18(this, globalCtx);
    this->actor.shape.rot.z = 0;
    this->unk_3C4 = this->actor.posRot.rot.z;
    this->actor.posRot.rot.z = this->actor.shape.rot.z;
    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_inFinal_Initは通った!!!!!!!!!!!!!!!!!!!!!!!!!\n");
}

void func_80B55054(EnZl3* this) {
    if (this->unk_328 != 0) {
        Actor* child = this->actor.child;

        if (child != NULL) {
            f32* temp_v0 = &this->unk_2EC;

            if (*temp_v0 < 19.0f) {
                ((DoorWarp1*)child)->alpha = (20.0f - *temp_v0) * 12.75f;
                *temp_v0 += 1.0f;
            } else {
                Actor_Kill(child);
                this->actor.child = NULL;
            }
        }
    }
}

void func_80B550F0(EnZl3* this) {
    Actor* child = this->actor.child;

    if (child != NULL) {
        child->posRot.pos.x = this->actor.posRot.pos.x;
        child->posRot.pos.y = this->actor.posRot.pos.y + (kREG(5) + -26.0f);
        child->posRot.pos.z = this->actor.posRot.pos.z;
    }
}

void func_80B55144(EnZl3* this) {
    f32* fl = &D_80B5A484;

    if (1) {} // necessary to match

    if (*fl < 2.0f) {
        *fl += 1.0f;
        func_80B53554(this, 2);
    } else if (*fl < 4.0f) {
        *fl += 1.0f;
        func_80B53554(this, 1);
    } else {
        func_80B534CC(this);
    }
}

void func_80B551E0(EnZl3* this) {
    func_80B54E14(this, &D_06008AD0, 0, 0.0f, 0);
    this->action = 1;
}

void func_80B55220(EnZl3* this) {
    func_80B54E14(this, &D_060091D8, 2, 0.0f, 0);
    this->action = 2;
    func_80B53568(this, 0);
}

void func_80B55268(EnZl3* this) {
    func_80B54E14(this, &D_060091D8, 2, 0.0f, 0);
    this->action = 3;
}

void func_80B552A8(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_060099A0, 0, 0.0f, 0);
    }
}

void func_80B552DC(EnZl3* this) {
    func_80B54E14(this, &D_0600A598, 2, -8.0f, 0);
    func_80B54EF4(this);
    func_80B53568(this, 2);
    this->action = 4;
    func_80B53468();
}

void func_80B55334(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_0600AACC, 0, 0.0f, 0);
    }
}

void func_80B55368(EnZl3* this) {
    func_80B54E14(this, &D_0600A334, 2, -8.0f, 0);
    func_80B53568(this, 0);
    this->action = 5;
}

void func_80B553B4(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_06009FBC, 0, 0.0f, 0);
    }
}

void func_80B553E8(EnZl3* this, GlobalContext* globalCtx) {
    func_80B59AD0(this, globalCtx);
}

void func_80B55408(EnZl3* this) {
    Actor* child = this->actor.child;

    if (child != NULL) {
        Actor_Kill(child);
    }
    Actor_Kill(&this->actor);
}

void func_80B55444(EnZl3* this, GlobalContext* globalCtx) {
    s32 temp_v0 = func_80B5396C(this);

    if (temp_v0 >= 0) {
        s32 unk_2F0 = this->unk_2F0;

        if (temp_v0 != unk_2F0) {
            switch (temp_v0) {
                case 0:
                    func_80B551E0(this);
                    break;
                case 1:
                    func_80B53554(this, 3);
                    func_80B54EF4(this);
                    break;
                case 3:
                    func_80B55220(this);
                    break;
                case 4:
                    func_80B55268(this);
                    break;
                case 5:
                    func_80B552DC(this);
                    break;
                case 6:
                    func_80B55368(this);
                    break;
                case 7:
                    func_80B553E8(this, globalCtx);
                    break;
                case 2:
                    func_80B55408(this);
                    break;
                case 8:
                    this->unk_328 = 1;
                default:
                    osSyncPrintf("En_Zl3_inFinal_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->unk_2F0 = temp_v0;
        }
    }
}

void func_80B55550(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    EnZl3_FrameUpdateMatrix(this);
    func_80B550F0(this);
    func_80B55444(this, globalCtx);
}

void func_80B555A4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B53554(this, 2);
    func_80B550F0(this);
    func_80B55054(this);
    func_80B55444(this, globalCtx);
}

void func_80B55604(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B55144(this);
    func_80B552A8(this, EnZl3_FrameUpdateMatrix(this));
    func_80B55054(this);
    func_80B55444(this, globalCtx);
}

void func_80B5566C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55334(this, EnZl3_FrameUpdateMatrix(this));
    func_80B55444(this, globalCtx);
}

void func_80B556CC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B553B4(this, EnZl3_FrameUpdateMatrix(this));
    func_80B55444(this, globalCtx);
}

void func_80B5572C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B55444(this, globalCtx);
}

void func_80B55780(EnZl3* this, GlobalContext* globalCtx) {
    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_inFinal2_Init通すよ!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    func_80B54E14(this, &D_06005A0C, 0, 0.0f, 0);
    this->action = 7;
    this->drawConfig = 1;
    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_inFinal2_Initは通った!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    func_80B53568(this, 1);
    this->actor.flags &= ~1;
}

void func_80B55808(EnZl3* this) {
    func_80078914(&this->actor.projectedPos, NA_SE_VO_Z1_PAIN);
}

void func_80B5582C(EnZl3* this) {
    func_800F41E0(&D_80B5A488, NA_SE_VO_Z1_CRY_0, 2);
}

void func_80B5585C(EnZl3* this) {
    SkelAnime* skelAnime = &this->skelAnime;

    if ((skelAnime->mode == 2) && func_800A56C8(skelAnime, 4.0f)) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_Z1_PAIN);
    }
}

void func_80B558A8(EnZl3* this) {
    s32 pad[4];
    s16 thisRotY = this->actor.posRot.rot.y;
    Vec3f* unk_338 = &this->unk_338;
    Vec3f thisPos = this->actor.posRot.pos;

    this->unk_32C = thisPos;
    *unk_338 = thisPos;

    unk_338->z += ((-1.6073999404907227f) * Math_Coss(thisRotY)) - (3.1620006561279297f * Math_Sins(thisRotY));
    unk_338->x += ((-1.6073999404907227f) * Math_Sins(thisRotY)) + (3.1620006561279297f * Math_Coss(thisRotY));
    unk_338->y += -0.01219940185546875f;
}

void func_80B559C4(EnZl3* this) {
    Vec3f* thisPos = &this->actor.posRot.pos;
    Vec3f* unk_32C = &this->unk_32C;
    Vec3f* unk_338 = &this->unk_338;
    f32 temp_f0 = func_8006F9BC(SkelAnime_GetFrameCount(&D_06005248), 0, (s32)this->skelAnime.animCurrentFrame, 3, 3);

    thisPos->x = unk_32C->x + (temp_f0 * (unk_338->x - unk_32C->x));
    thisPos->z = unk_32C->z + (temp_f0 * (unk_338->z - unk_32C->z));
}

void func_80B55A58(EnZl3* this, GlobalContext* globalCtx) {
    if (globalCtx->activeCamera == 0) {
        func_80B537E8(this);
    }
}

void func_80B55A84(EnZl3* this) {
    func_80B54E14(this, &D_06005A0C, 0, 0.0f, 0);
    this->action = 7;
}

void func_80B55AC4(EnZl3* this) {
    func_80B54E14(this, &D_0600499C, 2, -8.0f, 0);
    this->action = 8;
}

void func_80B55B04(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_06004408, 0, 0.0f, 0);
    }
}

void func_80B55B38(EnZl3* this) {
    func_80B54E14(this, &D_06006508, 2, -8.0f, 0);
    this->action = 9;
}

void func_80B55B78(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_060061C4, 0, 0.0f, 0);
    }
}

void func_80B55BAC(EnZl3* this) {
    func_80B54E14(this, &D_06005248, 2, -8.0f, 0);
    func_80B558A8(this);
    func_80B55808(this);
    func_80B53568(this, 2);
    this->action = 10;
}

void func_80B55C0C(EnZl3* this) {
    func_80B54E14(this, &D_060054E0, 0, 0.0f, 0);
    this->action = 11;
}

void func_80B55C4C(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B55C0C(this);
    }
}

void func_80B55C70(EnZl3* this) {
    func_80B54E14(this, &D_06008684, 2, -8.0f, 0);
    this->action = 12;
    this->actor.flags &= ~0x9;
    this->actor.flags &= ~0x1;
}

void func_80B55CCC(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_06006F04, 0, 0.0f, 0);
    }
}

void func_80B55D00(EnZl3* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->action = 13;
    } else if (ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y)) <= 0x4300) {
        this->actor.flags |= 9;
        this->actor.flags |= 1;
        this->actor.textId = 0x70D5;
        func_8002F2F4(&this->actor, globalCtx);
    } else {
        this->actor.flags &= ~9;
        this->actor.flags &= ~1;
    }
}

void func_80B55DB0(EnZl3* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->actor.flags &= ~0x9;
        this->actor.flags &= ~0x1;
        this->action = 12;
    }
}

void func_80B55E08(EnZl3* this) {
    func_80B54E14(this, &D_06006AB0, 2, -8.0f, 0);
    this->action = 14;
}

void func_80B55E48(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_06008050, 0, 0.0f, 0);
    }
}

void func_80B55E7C(EnZl3* this) {
    func_80B54E14(this, &D_06007A78, 2, -8.0f, 0);
    this->action = 15;
}

void func_80B55EBC(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_06007C84, 0, 0.0f, 0);
    }
}

void func_80B55EF0(EnZl3* this) {
    func_80B54E14(this, &D_060082F8, 2, -8.0f, 0);
    this->action = 16;
    func_80B53568(this, 0);
}

void func_80B55F38(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_06003FF8, 0, 0.0f, 0);
    }
}

void func_80B55F6C(EnZl3* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->action = 0x12;
    } else if (ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y)) <= 0x4300) {
        BossGanon2* bossGanon2 = func_80B53488(this, globalCtx);

        if ((bossGanon2 != NULL) && (bossGanon2->unk_324 <= 0.12345679104328156f)) {
            this->actor.flags |= 9;
            this->actor.flags |= 1;
            this->actor.textId = 0x7059;
            func_8002F2F4(&this->actor, globalCtx);
        }
    } else {
        this->actor.flags &= ~9;
        this->actor.flags &= ~1;
    }
}

void func_80B5604C(EnZl3* this) {
    func_80B54E14(this, &D_06007664, 2, -8.0f, 0);
    this->action = 17;
    func_80B5582C(this);
}

void func_80B56090(EnZl3* this, s32 arg1) {
    s32* unk_2F0 = &this->unk_2F0;

    if (func_80B5396C(this) == *unk_2F0) {
        if (arg1 != 0) {
            func_80B54E14(this, &D_06003FF8, 0, 0.0f, 0);
            this->action = 16;
            func_80B53974(this, 7);
            this->unk_2F0 = 7;
        }
    }
}

void func_80B56108(EnZl3* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->actor.flags &= ~0x9;
        this->actor.flags &= ~0x1;
        this->action = 16;
    }
}

void func_80B56160(EnZl3* this) {
    func_80B54E14(this, &D_060001D8, 0, 0.0f, 0);
    this->action = 19;
}

void func_80B561A0(EnZl3* this) {
    func_80B54E14(this, &D_06001110, 2, -8.0f, 0);
    this->action = 20;
}

void func_80B561E0(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_060004F4, 0, 0.0f, 0);
    }
}

void func_80B56214(EnZl3* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->action = 21;
    } else if (ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y)) <= 0x4300) {
        BossGanon2* bossGanon2 = func_80B53488(this, globalCtx);

        if (bossGanon2 != NULL) {
            if (bossGanon2->unk_324 <= 0.12345679104328156f) {
                this->actor.flags |= 9;
                this->actor.flags |= 1;
                this->actor.textId = 0x7059;
                func_8002F2F4(&this->actor, globalCtx);
            }
        }
    } else {
        this->actor.flags &= ~9;
        this->actor.flags &= ~1;
    }
}

void func_80B562F4(EnZl3* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->actor.flags &= ~0x9;
        this->actor.flags &= ~0x1;
        this->action = 20;
    }
}

void func_80B5634C(EnZl3* this) {
    func_80B54E14(this, &D_06002348, 2, -8.0f, 0);
    this->action = 22;
}

void func_80B5638C(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_0600210C, 0, 0.0f, 0);
    }
}

void func_80B563C0(EnZl3* this) {
    func_80B54E14(this, &D_06002E54, 2, -8.0f, 0);
    this->action = 23;
}

void func_80B56400(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_06002710, 0, 0.0f, 0);
    }
}

void func_80B56434(EnZl3* this) {
    func_80B54E14(this, &D_06001D8C, 2, -8.0f, 0);
    this->action = 24;
}

void func_80B56474(EnZl3* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B54E14(this, &D_060014DC, 0, 0.0f, 0);
    }
}

void func_80B564A8(EnZl3* this, GlobalContext* globalCtx) {
    s32 temp_v0;
    s32* val = &D_80B5A494;

    temp_v0 = func_80B5396C(this);

    if (*val > 0) {
        *val -= 1;
    } else if (*val == 0) {
        *val -= 1;
        if (temp_v0 == 8) {
            func_80B5604C(this);
        }
    }

    if (temp_v0 >= 0) {
        s32 unk_2F0 = this->unk_2F0;

        if (temp_v0 != unk_2F0) {
            switch (temp_v0) {
                case 0:
                    func_80B55A84(this);
                    break;
                case 1:
                    func_80B55AC4(this);
                    break;
                case 2:
                    func_80B55B38(this);
                    break;
                case 3:
                    func_80B55BAC(this);
                    break;
                case 4:
                    func_80B55C70(this);
                    break;
                case 5:
                    func_80B55E08(this);
                    break;
                case 6:
                    func_80B55E7C(this);
                    break;
                case 7:
                    func_80B55EF0(this);
                    break;
                case 8:
                    *val = 10;
                    break;
                case 9:
                    func_80B56160(this);
                    break;
                case 10:
                    func_80B561A0(this);
                    break;
                case 11:
                    func_80B5634C(this);
                    break;
                case 12:
                    func_80B563C0(this);
                    break;
                case 13:
                    func_80B56434(this);
                    break;
                case 14:
                    Actor_Kill(&this->actor);
                    break;
                default:
                    osSyncPrintf("En_Zl3_inFinal2_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->unk_2F0 = temp_v0;
        }
    }
}

void func_80B56658(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
}

void func_80B566AC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55B04(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B5670C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55B78(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B5676C(EnZl3* this, GlobalContext* globalCtx) {
    s32 something;

    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    something = EnZl3_FrameUpdateMatrix(this);
    func_80B559C4(this);
    func_80B55C4C(this, something);
}

void func_80B567CC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
}

void func_80B5682C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B55A58(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55CCC(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
    func_80B55D00(this, globalCtx);
}

void func_80B568B4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B55DB0(this, globalCtx);
}

void func_80B5691C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55E48(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B5697C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55EBC(this, EnZl3_FrameUpdateMatrix(this));
    func_80B5585C(this);
    func_80B564A8(this, globalCtx);
}

void func_80B569E4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B537E8(this);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55F38(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
    func_80B55F6C(this, globalCtx);
}

void func_80B56A68(EnZl3* this, GlobalContext* globalCtx) {
    s32 something;

    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B537E8(this);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    something = EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
    func_80B56090(this, something);
}

void func_80B56AE0(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B537E8(this);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55F38(this, EnZl3_FrameUpdateMatrix(this));
    func_80B56108(this, globalCtx);
}

void func_80B56B54(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
}

void func_80B56BA8(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B561E0(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
    func_80B56214(this, globalCtx);
}

void func_80B56C24(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B562F4(this, globalCtx);
}

void func_80B56C84(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B5638C(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B56CE4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B56400(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B56D44(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B56474(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B56DA4(EnZl3* this) {
    func_800788CC(NA_SE_EV_ZELDA_POWER);
}

void func_80B56DC8(EnZl3* this) {
    func_80078914(&this->actor.projectedPos, NA_SE_VO_Z1_PAIN);
}

void func_80B56DEC(EnZl3* this) {
    SkelAnime* skelAnime = &this->skelAnime;

    if ((skelAnime->mode == 2) && func_800A56C8(skelAnime, 9.0f) != 0) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_Z1_OPENDOOR);
    }
}

void func_80B56E38(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s32 sfxId;
    SkelAnime* sp20 = &this->skelAnime;

    if ((func_800A56C8(sp20, 6.0f) || func_800A56C8(sp20, 0.0f)) && (this->actor.bgCheckFlags & 1)) {
        sfxId = 0x800;
        sfxId += func_80041F34(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);
        func_80078914(&this->actor.projectedPos, sfxId);
    }
}

void func_80B56EB8(EnZl3* this, GlobalContext* globalCtx) {
    Flags_SetSwitch(globalCtx, func_80B54DB4(this));
}

s32 func_80B56EE4(EnZl3* this, GlobalContext* globalCtx) {
    return Flags_GetSwitch(globalCtx, func_80B54DB4(this));
}

void func_80B56F10(EnZl3* this, GlobalContext* globalCtx) {
    s32 waypoint;
    Path* pathHead = globalCtx->setupPathList;

    if (pathHead != NULL) {
        waypoint = func_80B54DC4(this);
        pathHead += waypoint;
        this->unk_30C = pathHead;
        this->unk_310 = pathHead->count;
        osSyncPrintf("En_Zl3_Get_path_info レールデータをゲットだぜ = %d!!!!!!!!!!!!!!\n", waypoint);
    } else {
        osSyncPrintf("En_Zl3_Get_path_info レールデータが無い!!!!!!!!!!!!!!!!!!!!\n");
    }
}

s32 func_80B56F8C(EnZl3* this, s32 arg1) {
    s32 unk_310 = this->unk_310;

    if (unk_310 > arg1) {
        return 1;
    }
    return 0;
}

Vec3s* func_80B56FAC(EnZl3* this, s32 arg1) {
    Vec3s* point;
    Path* pathList = this->unk_30C;

    if ((pathList != NULL) && func_80B56F8C(this, arg1)) {
        point = &((Vec3s*)SEGMENTED_TO_VIRTUAL(pathList->points))[arg1];
        return point;
    }
    return NULL;
}

s32 func_80B57034(EnZl3* this, s32 arg1, s32 arg2) {
    Vec3s* vec1 = func_80B56FAC(this, arg1);
    Vec3s* vec2 = func_80B56FAC(this, arg2);

    if ((vec2 != NULL) && (vec1 != NULL)) {
        f32 xDiff = vec2->x - vec1->x;
        f32 zDiff = vec2->z - vec1->z;

        return ((xDiff == 0.0f) && (zDiff == 0.0f)) ? 0 : (s16)(Math_atan2f(xDiff, zDiff) * 10430.3779296875f);
    }
    return 0;
}

s16 func_80B57104(EnZl3* this, s32 arg1) {
    Vec3s* point = func_80B56FAC(this, arg1);

    if (point != NULL) {
        f32 xDiff = point->x - this->actor.posRot.pos.x;
        f32 zDiff = point->z - this->actor.posRot.pos.z;

        if ((xDiff != 0.0f) || (zDiff != 0.0f)) {
            return Math_atan2f(xDiff, zDiff) * (0x8000 / M_PI);
        }
    }
    return 0;
}

s32 func_80B571A8(EnZl3* this) {
    s32 pad;
    s32 unk_314 = this->unk_314;
    s32 pad2;

    if (func_80B56F8C(this, unk_314 + 1) == 0) {
        return this->actor.shape.rot.y;
    } else {
        return func_80B57034(this, unk_314, unk_314 + 1);
    }
}

s32 func_80B571FC(EnZl3* this) {
    s32 pad;
    s32 unk_314 = this->unk_314;

    if (func_80B56F8C(this, unk_314) == 0) {
        return this->actor.shape.rot.y;
    } else {
        return func_80B57104(this, unk_314);
    }
}

void func_80B57240(EnZl3* this) {
    s32 temp_a1 = func_80B571FC(this);
    s16* rotY = &this->actor.posRot.rot.y;

    Math_SmoothScaleMaxMinS(rotY, temp_a1, 2, 6400, 1000);
    this->actor.shape.rot.y = *rotY;
}

void func_80B57298(EnZl3* this) {
    s16* rotY = &this->actor.posRot.rot.y;
    s16 temp_a1 = func_80B571A8(this);

    Math_SmoothScaleMaxMinS(rotY, temp_a1, 2, 6400, 1000);
    this->actor.shape.rot.y = *rotY;
}

u16 func_80B572F0(GlobalContext* globalCtx) {
    s16 sceneNum = globalCtx->sceneNum;
    u16 ret;

    if (sceneNum == SCENE_GANON_SONOGO) {
        ret = 0x71A8;
    } else if (sceneNum == SCENE_GANON_FINAL) {
        ret = 0x71A9;
    } else {
        ret = 0x71AB;
    }
    return ret;
}

s32 func_80B57324(EnZl3* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        return 1;
    }
    return 0;
}

void func_80B57350(EnZl3* this, GlobalContext* globalCtx) {
    s16 temp_v0 = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    if (ABS(temp_v0) <= 0x4300) {
        this->actor.flags |= 9;
        this->actor.textId = func_80B572F0(globalCtx);
        func_8002F2F4(&this->actor, globalCtx);
    }
}

s32 func_80B573C8(EnZl3* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 1;
    }
    return 0;
}

s32 func_80B573FC(EnZl3* this, GlobalContext* globalCtx, f32 arg2) {
    Player* player = PLAYER;
    f32 playerX = player->actor.posRot.pos.x;
    f32 playerZ = player->actor.posRot.pos.z;
    f32 thisX = this->actor.posRot.pos.x;
    f32 thisZ = this->actor.posRot.pos.z;

    if (SQ(playerX - thisX) + SQ(playerZ - thisZ) < SQ(arg2)) {
        return 1;
    }
    return 0;
}

s32 func_80B57458(EnZl3* this, GlobalContext* globalCtx) {
    Vec3f* thisPos = &this->actor.posRot.pos;
    f32 thisX = thisPos->x;
    f32 thisZ = thisPos->z;
    Player* player = PLAYER;
    Vec3f* playerPos = &player->actor.posRot.pos;
    s32 pad;
    f32 playerX = playerPos->x;
    f32 playerZ = playerPos->z;
    f32 temp_f12 = playerX - thisX;
    f32 temp_f13 = playerZ - thisZ;
    s16 temp_v0;
    s16 temp_v1 = func_80B571A8(this);

    if (temp_f12 == 0.0f && temp_f13 == 0.0f) {
        return 1;
    }

    temp_v0 = (s16)(temp_v1 - (s16)(Math_atan2f(temp_f12, temp_f13) * 10430.3779296875f));

    if (temp_v0 < 0x1555) {
        return 1;
    } else if ((temp_v0 < 0x4000) && func_80B573FC(this, globalCtx, 150.0f)) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_80B57564(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B573FC(this, globalCtx, 50.0f) || func_80B57458(this, globalCtx)) {
        return 1;
    }
    return 0;
}

s32 func_80B575B0(EnZl3* this, GlobalContext* globalCtx) {
    return func_80B573FC(this, globalCtx, 150.0f);
}

s32 func_80B575D0(EnZl3* this, GlobalContext* globalCtx) {
    return func_80B573FC(this, globalCtx, 50.0f);
}

s32 func_80B575F0(EnZl3* this, GlobalContext* globalCtx) {
    s16 sceneNum = globalCtx->sceneNum;

    if ((sceneNum == SCENE_GANON_SONOGO) && (func_80B54DB4(this) == 0x26)) {
        s32 unk_314 = this->unk_314;
        if (unk_314 == 1) {
            return 1;
        }
    }
    return 0;
}

void func_80B5764C(EnZl3* this, GlobalContext* globalCtx) {
    s16 sceneNum = globalCtx->sceneNum;

    if ((sceneNum == SCENE_GANON_SONOGO) && (func_80B54DB4(this) == 0x26)) {
        s32 unk_314 = this->unk_314 + 1;
        if (unk_314 == 1) {
            if (!Gameplay_InCsMode(globalCtx)) {
                func_800800F8(globalCtx, 0x3E8, 0x28, &this->actor, 0);
            }
        }
    }
}

s32 func_80B576C8(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B575F0(this, globalCtx) && (this->unk_3D8 == 0)) {
        return 1;
    }
    return 0;
}

void func_80B57704(EnZl3* this, GlobalContext* globalCtx) {
    s32 unk_3C4 = this->unk_3C4;

    Flags_SetSwitch(globalCtx, unk_3C4);
}

void func_80B5772C(EnZl3* this, GlobalContext* globalCtx) {
    s32 unk_3C4 = this->unk_3C4;

    Flags_UnsetSwitch(globalCtx, unk_3C4);
}

void func_80B57754(EnZl3* this, GlobalContext* globalCtx) {
    if (gSaveContext.unk_13F0 == 0) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_OCEFF_WIPE4, this->actor.posRot.pos.x,
                    this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 1);
        func_80B56DA4(this);
    }
}

void func_80B577BC(GlobalContext* globalCtx, Vec3f* vec) {
    s32 pad;
    Player* player = PLAYER;
    Vec3f* playerPos = &player->actor.posRot.pos;
    f32 posX = vec->x;
    f32 posY = vec->y;
    f32 posZ = vec->z;

    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_TEST, posX, posY, posZ, 0,
                (Math_atan2f(playerPos->x - posX, playerPos->z - posZ) * 10430.3779296875f), 0, 5);
}

void func_80B57858(GlobalContext* globalCtx) {
    func_80B577BC(globalCtx, &D_80B5A498);
    func_80B577BC(globalCtx, &D_80B5A4A4);
}

s32 func_80B57890(EnZl3* this, GlobalContext* globalCtx) {
    s8 pad[2];
    u8 curSpawn = globalCtx->curSpawn;
    s16 sceneNum = globalCtx->sceneNum;
    s32 result = func_80B54DB4(this);

    if (globalCtx) {} // Needed to match, this if can be almost anywhere and it still matches

    if (sceneNum == SCENE_GANON_SONOGO) {
        if ((result == 0x24) && (curSpawn == 0)) {
            return 1;
        }
        if ((result == 0x25) && (curSpawn == 2)) {
            return 1;
        }
        if ((result == 0x26) && (curSpawn == 4)) {
            return 1;
        }
        if ((result == 0x27) && (curSpawn == 6)) {
            return 1;
        }
        if ((result == 0x28) && (curSpawn == 6)) {
            return 1;
        }
    } else if (sceneNum == SCENE_GANON_FINAL) {
        if ((result == 0x20) && (curSpawn == 0) && Flags_GetSwitch(globalCtx, 0x37)) {
            if ((globalCtx->sceneNum == SCENE_GANON_DEMO) || (globalCtx->sceneNum == SCENE_GANON_FINAL) ||
                (globalCtx->sceneNum == SCENE_GANON_SONOGO) || (globalCtx->sceneNum == SCENE_GANONTIKA_SONOGO)) {
                return 1;
            }
        }
        if ((result == 0x21) && (curSpawn == 2)) {
            return 1;
        }
        if ((result == 0x22) && (curSpawn == 4)) {
            return 1;
        }
        if ((result == 0x23) && (curSpawn == 6)) {
            return 1;
        }
    } else if (sceneNum == SCENE_GANONTIKA_SONOGO) {
        if ((result == 0x29) && (curSpawn == 0)) {
            return 1;
        }
        if ((result == 0x2A) && (curSpawn == 0)) {
            return 1;
        }
    }
    return 0;
}

void func_80B57A74(GlobalContext* globalCtx) {
    Actor* actorIt = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;

    while (actorIt != NULL) {
        if (actorIt->id == ACTOR_EN_ENCOUNT2) {
            ((EnEncount2*)actorIt)->unk_15C = 1;
        }
        actorIt = actorIt->next;
    }
}

void func_80B57AAC(EnZl3* this, s32 arg1, AnimationHeader* arg2) {
    if (arg1 != 0) {
        func_80B54E14(this, arg2, 0, -8.0f, 0);
    }
}

void func_80B57AE0(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 shapeRotY = this->actor.shape.rot.y;
    s32 pad2;
    Vec3f* unk_354 = &this->unk_354;
    Vec3f* unk_348 = &this->unk_348;
    Vec3s* temp_v0;
    f32 xDiff;
    f32 zDiff;

    this->unk_344 = 0;
    this->unk_314 += 1;
    this->unk_360 = 0.0f;
    this->unk_364 = 0.0f;
    this->unk_368 = 0.0f;
    *unk_348 = this->actor.posRot.pos;
    temp_v0 = func_80B56FAC(this, this->unk_314);

    if (temp_v0 != NULL) {
        unk_354->x = temp_v0->x;
        unk_354->y = temp_v0->y;
        unk_354->z = temp_v0->z;
    } else {
        unk_354->x = unk_348->x + (Math_Sins(shapeRotY) * 200.0f);
        unk_354->y = unk_348->y;
        unk_354->z = unk_348->z + (Math_Coss(shapeRotY) * 200.0f);
    }

    xDiff = unk_354->x - unk_348->x;
    zDiff = unk_354->z - unk_348->z;
    this->unk_346 = (s32)(sqrtf(SQ(xDiff) + SQ(zDiff)) / (kREG(6) + 8.0f));
}

s32 func_80B57C54(EnZl3* this) {
    if (this->unk_344 >= this->unk_346) {
        return 1;
    }
    return 0;
}

s32 func_80B57C7C(EnZl3* this, GlobalContext* globalCtx) {
    return 1;
}

s32 func_80B57C8C(EnZl3* this) {
    return !func_80B56F8C(this, this->unk_314 + 2);
}

void func_80B57CB4(EnZl3* this, GlobalContext* globalCtx) {
    Vec3f* unk_348 = &this->unk_348;
    Vec3f* unk_354 = &this->unk_354;
    Vec3f* thisPos = &this->actor.posRot.pos;
    f32 temp_f0;

    this->unk_344 += 1;
    temp_f0 = func_8006F9BC(this->unk_346, 0, this->unk_344, 3, 3);
    thisPos->x = unk_348->x + (temp_f0 * (unk_354->x - unk_348->x));
    thisPos->y = (unk_348->y + (temp_f0 * (unk_354->y - unk_348->y))) + this->unk_360;
    thisPos->z = unk_348->z + (temp_f0 * (unk_354->z - unk_348->z));
}

void func_80B57D60(EnZl3* this, GlobalContext* globalCtx) {
    func_80B57240(this);
}

s32 func_80B57D80(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad;
    s16* sp32 = &this->actor.shape.rot.y;
    struct_80034A14_arg1* unk_3F8 = &this->unk_3F8;
    Player* player = PLAYER;
    s32 unk_314 = this->unk_314;
    s16 temp_v0 = func_80B57104(this, unk_314);
    s32 pad2;
    s16 phi_v1;

    unk_3F8->unk_18.y = player->actor.posRot.pos.y;
    unk_3F8->unk_18.x = (Math_Sins(temp_v0) * this->actor.xzDistFromLink) + this->actor.posRot.pos.x;
    unk_3F8->unk_18.z = (Math_Coss(temp_v0) * this->actor.xzDistFromLink) + this->actor.posRot.pos.z;
    unk_3F8->unk_14 = kREG(16) - 16.0f;
    func_80034A14(&this->actor, unk_3F8, kREG(17) + 0xC, 4);

    phi_v1 = ABS(temp_v0 - *sp32);
    if (phi_v1 <= 0x320) {
        *sp32 = temp_v0;
        this->actor.posRot.rot.y = *sp32;
        phi_v1 = 0;
    }
    this->actor.posRot.rot.y = *sp32;
    return phi_v1;
}

void func_80B57EAC(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B57324(this, globalCtx)) {
        this->action = 26;
    } else {
        func_80B57350(this, globalCtx);
    }
}

void func_80B57EEC(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B573C8(this, globalCtx)) {
        this->action = 27;
    }
}

void func_80B57F1C(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B57D80(this, globalCtx) == 0) {
        func_80B54E14(this, &D_06009BE4, 0, -8.0f, 0);
        this->action = 34;
        this->unk_314 -= 1;
        func_80B57AE0(this, globalCtx);
    }
}

s32 func_80B57F84(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B575D0(this, globalCtx) && func_80B57C7C(this, globalCtx) && !Gameplay_InCsMode(globalCtx)) {
        func_80B54E14(this, &D_06009FBC, 0, -8.0f, 0);
        this->action = 36;
        this->unk_2EC = 0.0f;
        func_80B57A74(globalCtx);
        return 1;
    }
    return 0;
}

void func_80B58014(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;
    s8 invincibilityTimer = player->invincibilityTimer;

    if (func_80B57324(this, globalCtx)) {
        func_80B54E14(this, &D_06003FF8, 0, -11.0f, 0);
        this->action = 29;
        func_80B538B0(this);
    } else if (func_80B57C8C(this) && func_80B57F84(this, globalCtx)) {
        func_800800F8(globalCtx, 0xFA0, -0x63, &this->actor, 0);
        this->unk_3D0 = 0;
    } else if (func_80B576C8(this, globalCtx) && func_80B575B0(this, globalCtx) && !Gameplay_InCsMode(globalCtx)) {
        this->action = 0x1F;
        this->unk_3CC = 0.0f;
        func_80B537E8(this);
        this->unk_3D8 = 1;
        func_800800F8(globalCtx, 0xFAA, -0x63, &this->actor, 0);
    } else if (!func_80B57C8C(this) && !func_80B576C8(this, globalCtx) && func_80B57564(this, globalCtx)) {
        func_80B54E14(this, &D_06009BE4, 0, -8.0f, 0);
        func_80B5764C(this, globalCtx);
        this->action = 34;
        this->unk_3D0 = 0;
        func_80B57AE0(this, globalCtx);
    } else if ((invincibilityTimer > 0) || (player->fallDistance >= 0x33)) {
        func_80B54E14(this, &D_06007664, 0, -11.0f, 0);
        this->action = 30;
        func_80B537E8(this);
        func_80B56DC8(this);
    } else {
        func_80B57350(this, globalCtx);
        func_80B538B0(this);
    }
}

void func_80B58214(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B573C8(this, globalCtx)) {
        func_80B54E14(this, &D_06009FBC, 0, -11.0f, 0);
        this->action = 28;
        this->unk_3D0 = 0;
    }
}

void func_80B58268(EnZl3* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s8 invincibilityTimer = player->invincibilityTimer;

    if ((invincibilityTimer <= 0) && (player->fallDistance <= 50)) {
        func_80B54E14(this, &D_06009FBC, 0, -11.0f, 0);
        this->action = 28;
        this->unk_3D0 = 0;
    }
}

void func_80B582C8(EnZl3* this, GlobalContext* globalCtx) {
    f32* unk_3CC = &this->unk_3CC;
    s32 pad;

    if (*unk_3CC == kREG(14) + 10.0f) {
        *unk_3CC += 1.0f;
        func_80B54E14(this, &D_06008050, 0, -12.0f, 0);
        func_80B57704(this, globalCtx);
    } else if (*unk_3CC == kREG(15) + 20.0f) {
        *unk_3CC += 1.0f;
        func_80B56DC8(this);
        func_80B54E14(this, &D_06003FF8, 0, -12.0f, 0);
    } else if (*unk_3CC == kREG(16) + 30.0f) {
        *unk_3CC += 1.0f;
        func_80B57858(globalCtx);
    } else if (*unk_3CC == kREG(17) + 40.0f) {
        func_8005B1A4(ACTIVE_CAM);
        *unk_3CC += 1.0f;
    } else if (*unk_3CC >= ((kREG(17) + 40.0f) + 1.0f)) {
        this->action = 32;
        *unk_3CC = 0.0f;
    } else {
        *unk_3CC += 1.0f;
    }
}

void func_80B584B4(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;
    s8 invincibilityTimer = player->invincibilityTimer;
    Actor* nearbyEnTest = Actor_FindNearby(globalCtx, &this->actor, ACTOR_EN_TEST, ACTORTYPE_ENEMY, 8000.0f);

    if (D_80B5A4BC == 0) {
        if ((nearbyEnTest == NULL) && (!Gameplay_InCsMode(globalCtx))) {
            this->action = 33;
            func_800800F8(globalCtx, 0xFAB, -0x63, &this->actor, 0);
        } else if (invincibilityTimer > 0) {
            func_80B54E14(this, &D_06003FF8, 0, -12.0f, 0);
            D_80B5A4BC = 1;
            func_80B56DC8(this);
        }
    } else {
        if ((nearbyEnTest == NULL) && (!Gameplay_InCsMode(globalCtx))) {
            func_80B54E14(this, &D_06007664, 0, -12.0f, 0);
            D_80B5A4BC = 0;
            this->action = 33;
            func_800800F8(globalCtx, 0xFAB, -0x63, &this->actor, 0);
        } else if (invincibilityTimer <= 0) {
            func_80B54E14(this, &D_06007664, 0, -12.0f, 0);
            D_80B5A4BC = 0;
        }
    }
}

void func_80B58624(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad[4];
    f32* unk_3CC = &this->unk_3CC;

    if (*unk_3CC == (kREG(18) + 10.0f)) {
        *unk_3CC += 1.0f;
        func_80B54E14(this, &D_06008050, 0, -12.0f, 0);
        func_80B5772C(this, globalCtx);
    } else if (*unk_3CC == kREG(19) + 20.0f) {
        *unk_3CC += 1.0f;
        this->actor.textId = 0x71AC;
        func_8010B680(globalCtx, this->actor.textId, 0);
        func_80B54E14(this, &D_06003FF8, 0, -12.0f, 0);
    } else if (*unk_3CC == ((kREG(19) + 20.0f) + 1.0f)) {
        if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
            *unk_3CC += 1.0f;
            func_80B5357C(this, globalCtx);
            func_80B5357C(this, globalCtx);
            func_80B5357C(this, globalCtx);
            func_80B5357C(this, globalCtx);
            func_80B5357C(this, globalCtx);
        }
    } else {
        if (*unk_3CC >= kREG(20) + 30.0f) {
            this->action = 28;
            func_8005B1A4(ACTIVE_CAM);
            func_80B54E14(this, &D_06009FBC, 0, -12.0f, 0);
            *unk_3CC = 0.0f;
        } else {
            *unk_3CC += 1.0f;
        }
    }
}

void func_80B5884C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54E14(this, &D_060038C0, 2, -8.0f, 0);
    this->action = 37;
    this->unk_36C = 1;
}

void func_80B58898(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54E14(this, &D_060038C0, 2, -8.0f, 1);
    this->action = 38;
    this->unk_374 = 1;
}

void func_80B588E8(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54E14(this, &D_06009BE4, 0, -8.0f, 0);
    func_80B57AE0(this, globalCtx);
    this->action = 39;
}

s32 func_80B58938(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B57C54(this)) {
        func_80B54E14(this, &D_06009FBC, 0, -8.0f, 0);
        this->action = 28;
        this->unk_3D0 = 0;
        return 1;
    }
    return 0;
}

s32 func_80B5899C(EnZl3* this, GlobalContext* globalCtx) {
    if ((this->actor.bgCheckFlags & 1)) {
        Player* player = PLAYER;
        s8 invincibilityTimer = player->invincibilityTimer;

        if ((invincibilityTimer > 0) || (player->fallDistance >= 0x33)) {
            func_80B54E14(this, &D_06007664, 2, -11.0f, 0);
            this->action = 35;
            func_80B56DC8(this);
            return 1;
        }
    }
    return 0;
}

void func_80B58A1C(EnZl3* this, GlobalContext* globalCtx) {
    if (!func_80B58938(this, globalCtx)) {
        func_80B5899C(this, globalCtx);
    }
}

void func_80B58A50(EnZl3* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s8 invincibilityTimer = player->invincibilityTimer;

    if ((invincibilityTimer <= 0) && (player->fallDistance <= 50)) {
        func_80B54E14(this, &D_06009BE4, 0, -11.0f, 0);
        this->action = 34;
    }
}

void func_80B58AAC(EnZl3* this, GlobalContext* globalCtx) {
    f32* unk_2EC = &this->unk_2EC;

    *unk_2EC += 1.0f;
    if ((*unk_2EC >= kREG(7) + 24.0f) && (this->unk_36C == 0)) {
        func_80B57754(this, globalCtx);
        func_80B5884C(this, globalCtx);
    } else if ((*unk_2EC >= kREG(8) + 50.0f) && (this->unk_370 == 0)) {
        func_80B56EB8(this, globalCtx);
        this->unk_370 = 1;
    } else if ((*unk_2EC >= kREG(9) + 56.0f) && (this->unk_374 == 0)) {
        func_80B58898(this, globalCtx);
    } else if (*unk_2EC >= kREG(10) + 82.0f) {
        func_80B588E8(this, globalCtx);
    }
}

void func_80B58C08(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Vec3f* unk_348 = &this->unk_348;
    Vec3f* unk_354 = &this->unk_354;
    Vec3f* thisPos = &this->actor.posRot.pos;
    s32 unk_344;
    s32 unk_346;
    s32 sp28;
    f32 temp_f0;

    this->unk_344 += 1;

    unk_344 = this->unk_344;
    unk_346 = this->unk_346;
    sp28 = unk_346 - kREG(11) - 2;
    temp_f0 = func_8006F9BC(unk_346, 0, unk_344, 3, 0);

    thisPos->x = unk_348->x + (temp_f0 * (unk_354->x - unk_348->x));
    thisPos->y = (unk_348->y + (temp_f0 * (unk_354->y - unk_348->y))) + this->unk_360;
    thisPos->z = unk_348->z + (temp_f0 * (unk_354->z - unk_348->z));

    if ((unk_344 - sp28) >= 0) {
        this->unk_258 = ((f32)(unk_346 - unk_344) / (kREG(11) + 2)) * 255.0f;
        this->drawConfig = 2;
    }

    if ((unk_346 - unk_344) <= 0) {
        Actor_Kill(&this->actor);
    }
}

void func_80B58D50(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57EAC(this, globalCtx);
}

void func_80B58DB0(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57EEC(this, globalCtx);
}

void func_80B58E10(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57F1C(this, globalCtx);
}

void func_80B58E7C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B53764(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58014(this, globalCtx);
    func_80B536B4(this);
}

void func_80B58EF4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B538B0(this);
    func_80B53764(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58214(this, globalCtx);
}

void func_80B58F6C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58268(this, globalCtx);
}

void func_80B58FDC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B582C8(this, globalCtx);
}

void func_80B5904C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B584B4(this, globalCtx);
}

void func_80B590BC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58624(this, globalCtx);
}

void func_80B5912C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B56E38(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57CB4(this, globalCtx);
    func_80B57D60(this, globalCtx);
    func_80B58A1C(this, globalCtx);
}

void func_80B591BC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B538B0(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58A50(this, globalCtx);
}

void func_80B5922C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B57298(this);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58AAC(this, globalCtx);
}

void func_80B592A8(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B57298(this);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B57AAC(this, EnZl3_FrameUpdateMatrix(this), &D_06003D20);
    func_80B56DEC(this);
    func_80B58AAC(this, globalCtx);
}

void func_80B59340(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B57298(this);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B57AAC(this, EnZl3_FrameUpdateMatrix(this), &D_06009FBC);
    func_80B58AAC(this, globalCtx);
}

void func_80B593D0(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B57298(this);
    func_80B5366C(this, globalCtx);
    func_80B56E38(this, globalCtx);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58C08(this, globalCtx);
}

s32 func_80B5944C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                  Gfx** gfx) {
    if (limbIndex == 14) {
        Mtx* mtx = Graph_Alloc(globalCtx->state.gfxCtx, sizeof(Mtx) * 7);
        EnZl3* this = THIS;
        Vec3s* vec = &this->unk_3F8.unk_08;

        gSPSegment(gfx[0]++, 0x0C, mtx);

        rot->x += vec->y;
        rot->z += vec->x;
        Matrix_Push();
        Matrix_Translate(pos->x, pos->y, pos->z, MTXMODE_APPLY);
        Matrix_RotateRPY(rot->x, rot->y, rot->z, MTXMODE_APPLY);
        Matrix_Push();
        Matrix_Translate(174.0f, -317.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&mtx[0], "../z_en_zl3_inEscape.c", 2471);
        Matrix_Translate(-410.0f, -184.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&mtx[1], "../z_en_zl3_inEscape.c", 2474);
        Matrix_Translate(-1019.0f, -26.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&mtx[2], "../z_en_zl3_inEscape.c", 2477);
        Matrix_Pull();
        Matrix_Push();
        Matrix_Translate(40.0f, 264.0f, 386.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&mtx[3], "../z_en_zl3_inEscape.c", 2483);
        Matrix_Translate(-446.0f, -52.0f, 84.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&mtx[4], "../z_en_zl3_inEscape.c", 2486);
        Matrix_Pull();
        Matrix_Push();
        Matrix_Translate(40.0f, 264.0f, -386.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&mtx[5], "../z_en_zl3_inEscape.c", 2492);
        Matrix_Translate(-446.0f, -52.0f, -84.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&mtx[6], "../z_en_zl3_inEscape.c", 2495);
        Matrix_Pull();
        Matrix_Pull();
    }
    return 0;
}

s32 func_80B59698(EnZl3* this, GlobalContext* globalCtx) {
    s32 cond = Flags_GetSwitch(globalCtx, 0x37) &&
               ((globalCtx->sceneNum == SCENE_GANON_DEMO) || (globalCtx->sceneNum == SCENE_GANON_FINAL) ||
                (globalCtx->sceneNum == SCENE_GANON_SONOGO) || (globalCtx->sceneNum == SCENE_GANONTIKA_SONOGO));

    if (cond) {
        u8 curSpawn = globalCtx->curSpawn;
        if ((func_80B54DB4(this) == 0x20) && (curSpawn == 0) &&
            ((gSaveContext.timer2Value <= 0) || (gSaveContext.timer2State == 0))) {
            return 1;
        }
    }
    return 0;
}

s32 func_80B59768(EnZl3* this, GlobalContext* globalCtx) {
    s32 cond = Flags_GetSwitch(globalCtx, 0x37) &&
               ((globalCtx->sceneNum == SCENE_GANON_DEMO) || (globalCtx->sceneNum == SCENE_GANON_FINAL) ||
                (globalCtx->sceneNum == SCENE_GANON_SONOGO) || (globalCtx->sceneNum == SCENE_GANONTIKA_SONOGO));

    if (cond) {
        u8 curSpawn = globalCtx->curSpawn;

        if ((func_80B54DB4(this) == 0x20) && (curSpawn == 0) && (gSaveContext.timer2Value <= 0)) {
            return 1;
        }
    }
    return 0;
}

void func_80B59828(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B59698(this, globalCtx) || (!func_80B56EE4(this, globalCtx) && func_80B57890(this, globalCtx))) {
        s16 newRotY;

        func_80B54E14(this, &D_06009FBC, 0, 0.0f, 0);
        this->actor.flags |= 9;
        func_80B56F10(this, globalCtx);
        newRotY = func_80B571A8(this);
        this->actor.shape.rot.y = newRotY;
        this->actor.posRot.rot.y = newRotY;
        this->unk_3C4 = this->actor.posRot.rot.z;
        this->actor.shape.rot.z = 0;
        this->actor.posRot.rot.z = this->actor.shape.rot.z;
        this->action = 28;
        this->drawConfig = 1;
    } else {
        Actor_Kill(&this->actor);
    }

    if (func_80B59698(this, globalCtx) != 0) {
        func_80088AA0(180);
        func_80B53468();
        gSaveContext.healthAccumulator = 320;
        Magic_Fill(globalCtx);
        if (Flags_GetSwitch(globalCtx, 0x20)) {
            Flags_UnsetSwitch(globalCtx, 0x20);
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_ZG, -144.0f, 3544.0f, -43.0f, 0, 0x2000, 0, 0x2000);
        }
        Flags_UnsetSwitch(globalCtx, 0x21);
        Flags_UnsetSwitch(globalCtx, 0x22);
        Flags_UnsetSwitch(globalCtx, 0x23);
        Flags_UnsetSwitch(globalCtx, 0x24);
        Flags_UnsetSwitch(globalCtx, 0x25);
        Flags_UnsetSwitch(globalCtx, 0x26);
        Flags_UnsetSwitch(globalCtx, 0x27);
        Flags_UnsetSwitch(globalCtx, 0x28);
        Flags_UnsetSwitch(globalCtx, 0x29);
        Flags_UnsetSwitch(globalCtx, 0x2A);
    }

    if (func_80B54DB4(this) == 0x20) {
        s32 cond;

        func_80B54EA4(this, globalCtx);
        cond = Flags_GetSwitch(globalCtx, 0x37) &&
               ((globalCtx->sceneNum == SCENE_GANON_DEMO) || (globalCtx->sceneNum == SCENE_GANON_FINAL) ||
                (globalCtx->sceneNum == SCENE_GANON_SONOGO) || (globalCtx->sceneNum == SCENE_GANONTIKA_SONOGO));
        if (cond) {
            func_80B53614(this, globalCtx);
        }
    }
}

void func_80B59A80(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B59768(this, globalCtx)) {
        Audio_PlaySoundGeneral(NA_SE_OC_REVENGE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_80B59AD0(EnZl3* this, GlobalContext* globalCtx) {
    // todo look into
    Actor* thisx = &this->actor; // unused, necessary to use 'this' first to fix regalloc

    Flags_SetSwitch(globalCtx, 0x36);
    func_80088AA0(180);
    func_80B54EA4(this, globalCtx);
    func_80B53614(this, globalCtx);
    gSaveContext.eventChkInf[12] &= ~0x80;
    func_80B56F10(this, globalCtx);
    gSaveContext.healthAccumulator = 320;
    Magic_Fill(globalCtx);
    this->action = 27;
    this->drawConfig = 1;
}

void func_80B59B6C(EnZl3* this, GlobalContext* globalCtx) {
    s32 sp2C = func_80B54DD4(this);

    this->unk_3DC = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_060091D8));
    this->unk_3E0 = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_0600A598));
    this->unk_3E4 = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_0600A334));
    this->unk_3F4 = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_06001110));
    this->unk_3EC = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_06002348));
    this->unk_3F0 = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_06002E54));
    this->unk_3E8 = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_06001D8C));

    switch (sp2C) {
        case 0:
            func_80B54FB4(this, globalCtx);
            break;
        case 1:
            func_80B55780(this, globalCtx);
            break;
        case 3:
            func_80B59828(this, globalCtx);
            break;
        default:
            osSyncPrintf(VT_FGCOL(RED) " En_Oa3 の arg_data がおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
            Actor_Kill(&this->actor);
    }
}

void func_80B59DB8(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad;
    ObjectContext* objCtx = &globalCtx->objectCtx;
    s32 objIndex = Object_GetIndex(objCtx, OBJECT_ZL2_ANIME2);
    s32 pad2;

    if (objIndex < 0) {
        osSyncPrintf(VT_FGCOL(RED) "En_Zl3_main_bankアニメーションのバンクを読めない!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    if (Object_IsLoaded(objCtx, objIndex)) {
        this->unk_318 = objIndex;
        func_80B54DE0(this, globalCtx);
        func_80B59B6C(this, globalCtx);
    }
}

static EnZl3ActionFunc sActionFuncs[] = {
    func_80B59DB8, func_80B55550, func_80B555A4, func_80B55604, func_80B5566C, func_80B556CC, func_80B5572C,
    func_80B56658, func_80B566AC, func_80B5670C, func_80B5676C, func_80B567CC, func_80B5682C, func_80B568B4,
    func_80B5691C, func_80B5697C, func_80B569E4, func_80B56A68, func_80B56AE0, func_80B56B54, func_80B56BA8,
    func_80B56C24, func_80B56C84, func_80B56CE4, func_80B56D44, func_80B58D50, func_80B58DB0, func_80B58E10,
    func_80B58E7C, func_80B58EF4, func_80B58F6C, func_80B58FDC, func_80B5904C, func_80B590BC, func_80B5912C,
    func_80B591BC, func_80B5922C, func_80B592A8, func_80B59340, func_80B593D0,
};

void EnZl3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;

    if (this->action < 0 || this->action >= ARRAY_COUNT(sActionFuncs) || sActionFuncs[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sActionFuncs[this->action](this, globalCtx);
}

void EnZl3_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;
    ActorShape* shape = &this->actor.shape;
    s32 pad;

    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_ct通すよ!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    ActorShape_Init(shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    shape->unk_14 = 0;
    func_80B533B0(thisx, globalCtx);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06010D70, NULL, this->limbDrawTable, this->transitionDrawTable,
                       15);

    switch (func_80B54DD4(this)) {
        case 1:
            gSaveContext.timer2State = 0;
            break;
        case 3:
            func_80B59A80(this, globalCtx);
            break;
    }

    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_ctは通った!!!!!!!!!!!!!!!!!!!!!!!!!\n");
}

static OverrideLimbDraw sOverrideLimbDrawFuncs[] = {
    func_80B5458C,
    func_80B5944C,
};

s32 EnZl3_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                           Gfx** gfx) {
    EnZl3* this = THIS;

    if (this->unk_308 < 0 || this->unk_308 >= ARRAY_COUNT(sOverrideLimbDrawFuncs) ||
        sOverrideLimbDrawFuncs[this->unk_308] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画前処理モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return 0;
    }
    return sOverrideLimbDrawFuncs[this->unk_308](globalCtx, limbIndex, dList, pos, rot, thisx, gfx);
}

void func_80B59FE8(EnZl3* this, GlobalContext* globalCtx) {
}

void func_80B59FF4(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 unk_244 = this->unk_244;
    u32 sp78 = D_80B5A43C[unk_244];
    s16 unk_248 = this->unk_248;
    SkelAnime* skelAnime = &this->skelAnime;
    u32 sp6C = D_80B5A45C[unk_248];
    s32 pad2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zl3.c", 2165);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x8, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(POLY_OPA_DISP++, 0x9, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(POLY_OPA_DISP++, 0xA, SEGMENTED_TO_VIRTUAL(sp6C));
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0xB, &D_80116280[2]);

    POLY_OPA_DISP = SkelAnime_DrawFlex(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                       EnZl3_OverrideLimbDraw, EnZl3_PostLimbDraw, this, POLY_OPA_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zl3.c", 2190);
}

void func_80B5A1D0(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 unk_244 = this->unk_244;
    u32 sp78 = D_80B5A43C[unk_244];
    s16 unk_248 = this->unk_248;
    SkelAnime* skelAnime = &this->skelAnime;
    u32 sp6C = D_80B5A45C[unk_248];
    s32 pad2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zl3.c", 2205);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 8, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(POLY_XLU_DISP++, 9, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(POLY_XLU_DISP++, 10, SEGMENTED_TO_VIRTUAL(sp6C));
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->unk_258);
    gSPSegment(POLY_XLU_DISP++, 11, &D_80116280[0]);

    POLY_XLU_DISP = SkelAnime_DrawFlex(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                       EnZl3_OverrideLimbDraw, NULL, this, POLY_XLU_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zl3.c", 2234);
}

static EnZl3DrawFunc sDrawFuncs[] = {
    func_80B59FE8,
    func_80B59FF4,
    func_80B5A1D0,
};

void EnZl3_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;

    if (this->drawConfig < 0 || this->drawConfig >= 3 || sDrawFuncs[this->drawConfig] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawConfig](this, globalCtx);
}

const ActorInit En_Zl3_InitVars = {
    ACTOR_EN_ZL3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ZL2,
    sizeof(EnZl3),
    (ActorFunc)EnZl3_Init,
    (ActorFunc)EnZl3_Destroy,
    (ActorFunc)EnZl3_Update,
    (ActorFunc)EnZl3_Draw,
};
