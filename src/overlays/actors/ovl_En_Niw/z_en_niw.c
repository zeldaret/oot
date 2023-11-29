/*
 * File: z_en_niw.c
 * Overlay: ovl_En_Niw
 * Description: Cucco
 */

#include "z_en_niw.h"
#include "assets/objects/object_niw/object_niw.h"
#include "overlays/actors/ovl_En_Attack_Niw/z_en_attack_niw.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_23)

void EnNiw_Init(Actor* thisx, PlayState* play);
void EnNiw_Destroy(Actor* thisx, PlayState* play);
void EnNiw_Update(Actor* thisx, PlayState* play);
void EnNiw_Draw(Actor* thisx, PlayState* play);

void EnNiw_ResetAction(EnNiw* this, PlayState* play);
void func_80AB6324(EnNiw* this, PlayState* play);
void func_80AB63A8(EnNiw* this, PlayState* play);
void func_80AB6450(EnNiw* this, PlayState* play);
void func_80AB6570(EnNiw* this, PlayState* play);
void func_80AB6A38(EnNiw* this, PlayState* play);
void func_80AB6BF8(EnNiw* this, PlayState* play);
void func_80AB6D08(EnNiw* this, PlayState* play);
void func_80AB6EB4(EnNiw* this, PlayState* play);
void func_80AB70F8(EnNiw* this, PlayState* play);
void func_80AB714C(EnNiw* this, PlayState* play);
void func_80AB7204(EnNiw* this, PlayState* play);
void func_80AB7290(EnNiw* this, PlayState* play);
void func_80AB7328(EnNiw* this, PlayState* play);
void EnNiw_SpawnFeather(EnNiw* this, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scale);
void EnNiw_UpdateEffects(EnNiw* this, PlayState* play);
void EnNiw_DrawEffects(EnNiw* this, PlayState* play);

static s16 D_80AB85E0 = 0;

ActorInit En_Niw_InitVars = {
    /**/ ACTOR_EN_NIW,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_NIW,
    /**/ sizeof(EnNiw),
    /**/ EnNiw_Init,
    /**/ EnNiw_Destroy,
    /**/ EnNiw_Update,
    /**/ EnNiw_Draw,
};

static f32 D_80AB8604[] = {
    5000.0f,
    -5000.0f,
};

static f32 D_80AB860C[] = {
    5000.0f,
    3000.0f,
    4000.0f,
};

static Vec3f sKakarikoPosList[] = {
    { -1697.0f, 80.0f, 870.0f }, { 57.0f, 320.0f, -673.0f }, { 796.0f, 80.0f, 1639.0f }, { 1417.0f, 465.0f, 169.0f },
    { -60.0f, 0.0f, -46.0f },    { -247.0f, 80.0f, 854.0f }, { 1079.0f, 80.0f, -47.0f },
};

static s16 sKakarikoFlagList[] = {
    INFTABLE_199_MASK, INFTABLE_19A_MASK, INFTABLE_19B_MASK, INFTABLE_19C_MASK,
    INFTABLE_19D_MASK, INFTABLE_19E_MASK, INFTABLE_19F_MASK,
};

static u8 sLowerRiverSpawned = false;

static u8 sUpperRiverSpawned = false;

static ColliderCylinderInit sCylinderInit1 = {
    {
        COLTYPE_HIT5,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 15, 25, 4, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInit2 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 15, 25, 4, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(targetMode, 6, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 0, ICHAIN_STOP),
};

void EnNiw_Init(Actor* thisx, PlayState* play) {
    EnNiw* this = (EnNiw*)thisx;
    s32 pad;
    s32 i;

    if (this->actor.params < 0) {
        this->actor.params = 0;
    }

    // Cucco at at the very beginning of Zora's River
    if (this->actor.params == 0xB) {
        if (sLowerRiverSpawned) {
            Actor_Kill(&this->actor);
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ もういてる原 Ver.1 ☆☆☆☆☆ \n" VT_RST);
            return;
        }
        sLowerRiverSpawned = true;
        this->actor.room = -1;
    }

    // Cucco at tall platform in the first room of Zora's River
    if (this->actor.params == 0xC) {
        if (sUpperRiverSpawned) {
            Actor_Kill(&this->actor);
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ もういてる原 Ver.2 ☆☆☆☆☆ \n" VT_RST);
            return;
        }
        sUpperRiverSpawned = true;
        this->actor.room = -1;
    }

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.flags |= ACTOR_FLAG_0;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 25.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gCuccoSkel, &gCuccoAnim, this->jointTable, this->morphTable, 16);

    if (play->sceneId == SCENE_KAKARIKO_VILLAGE) {
        for (i = 0; i < ARRAY_COUNT(sKakarikoPosList); i++) {
            if (fabsf(this->actor.world.pos.x - sKakarikoPosList[i].x) < 40.0f &&
                fabsf(this->actor.world.pos.z - sKakarikoPosList[i].z) < 40.0f) {
                this->unk_2AA = i;
                osSyncPrintf(VT_FGCOL(YELLOW) " 通常鶏index %d\n" VT_RST, this->unk_2AA);
                if (gSaveContext.save.info.infTable[INFTABLE_199_19A_19B_19C_19D_19E_19F_INDEX] &
                    sKakarikoFlagList[i]) {
                    this->actor.world.pos.x = 300.0f;
                    this->actor.world.pos.y = 100.0f;
                    this->actor.world.pos.z = 1530.0f;
                    this->actor.params = 0;
                }
            }
        }
    }

    Math_Vec3f_Copy(&this->unk_2AC, &this->actor.world.pos);
    Math_Vec3f_Copy(&this->unk_2B8, &this->actor.world.pos);
    this->unk_304 = 10.0f;
    Actor_SetScale(&this->actor, 0.01f);
    this->unk_2A4 = (s16)Rand_ZeroFloat(3.99f) + 5;

    if (this->unk_2A4 < 0) {
        this->unk_2A4 = 1;
    }

    switch (this->actor.params) {
        case 2:
            if (IS_DAY) {
                Actor_Kill(&this->actor);
            }
            break;
        case 1:
            if (GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
                Actor_Kill(&this->actor);
            }
            break;
        case 3:
            if (!GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
                Actor_Kill(&this->actor);
            }
            break;
        case 5:
            if (GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
                Actor_Kill(&this->actor);
            }
            break;
        case 7:
            if (!GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
                Actor_Kill(&this->actor);
            }
            break;
        case 0xD:
            this->actor.gravity = 0.0f;
            FALLTHROUGH;
        case 0xE:
            this->actor.colChkInfo.mass = 0;
            this->actor.flags &= ~ACTOR_FLAG_0;
            break;
        case 4:
            this->actor.gravity = 0.0f;
            break;
    }

    Collider_InitCylinder(play, &this->collider);

    switch (this->actor.params) {
        case 0xA:
            this->actor.colChkInfo.mass = MASS_IMMOVABLE;
            FALLTHROUGH;
        case 0xD:
        case 0xE:
            Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit2);
            if (play->sceneId == SCENE_LINKS_HOUSE && !GET_EVENTCHKINF(EVENTCHKINF_HORSE_RACE_COW_UNLOCK)) {
                Actor_Kill(&this->actor);
            }
            break;
        default:
            Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit1);
            break;
    }

    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ どんな奴？ ☆☆☆☆☆ %d\n" VT_RST, this->actor.params);
    osSyncPrintf("\n\n");
    this->actionFunc = EnNiw_ResetAction;
}

void EnNiw_Destroy(Actor* thisx, PlayState* play) {
    EnNiw* this = (EnNiw*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void func_80AB5BF8(EnNiw* this, PlayState* play, s16 arg2) {
    f32 factor = 1.0f;

    if (this->actor.params == 0xD) {
        factor = 2.0f;
    }
    if (this->timer1 == 0) {
        if (arg2 == 0) {
            this->unk_26C[0] = 0.0f;
        } else {
            this->unk_26C[0] = -10000.0f * factor;
        }
        this->unk_298++;
        this->timer1 = 3;
        if (!(this->unk_298 & 1)) {
            this->unk_26C[0] = 0.0f;

            if (arg2 == 0) {
                this->timer1 = Rand_ZeroFloat(30.0f);
            }
        }
    }
    if (this->timer2 == 0) {
        this->unk_29C++;
        this->unk_29C &= 1;

        switch (arg2) {
            case 0:
                this->unk_26C[1] = this->unk_26C[2] = 0.0f;
                break;
            case 1:
                this->timer2 = 3;
                this->unk_26C[1] = this->unk_26C[2] = 7000.0f * factor;

                if (this->unk_29C == 0) {
                    this->unk_26C[1] = this->unk_26C[2] = 0.0f;
                }
                break;
            case 2:
                this->timer2 = 2;
                this->unk_26C[1] = this->unk_26C[2] = -10000.0f;
                this->unk_26C[7] = this->unk_26C[5] = 25000.0f;
                this->unk_26C[8] = this->unk_26C[6] = 6000.0f;

                if (this->unk_29C == 0) {
                    this->unk_26C[5] = this->unk_26C[7] = 8000.0f;
                }
                break;
            case 3:
                this->timer2 = 2;
                this->unk_26C[7] = this->unk_26C[5] = 10000.0f;

                if (this->unk_29C == 0) {
                    this->unk_26C[7] = this->unk_26C[5] = 3000.0f;
                }
                break;
            case 4:
                this->timer1 = 5;
                break;
            case 5:
                this->timer2 = 5;
                this->unk_26C[7] = this->unk_26C[5] = 14000.0f;
                if (this->unk_29C == 0) {
                    this->unk_26C[7] = this->unk_26C[5] = 10000.0f;
                }
                break;
        }
    }
    if (this->unk_2E0 != this->unk_26C[9]) {
        Math_ApproachF(&this->unk_2E0, this->unk_26C[9], 0.5f, 4000.0f);
    }
    if (this->unk_2DC != this->unk_26C[0]) {
        Math_ApproachF(&this->unk_2DC, this->unk_26C[0], 0.5f, 4000.0f);
    }
    if (this->unk_2C4 != this->unk_26C[2]) {
        Math_ApproachF(&this->unk_2C4, this->unk_26C[2], 0.8f, 7000.0f);
    }
    if (this->unk_2C8 != this->unk_26C[7]) {
        Math_ApproachF(&this->unk_2C8, this->unk_26C[7], 0.8f, 7000.0f);
    }
    if (this->unk_2CC != this->unk_26C[8]) {
        Math_ApproachF(&this->unk_2CC, this->unk_26C[8], 0.8f, 7000.0f);
    }
    if (this->unk_2D0 != this->unk_26C[1]) {
        Math_ApproachF(&this->unk_2D0, this->unk_26C[1], 0.8f, 7000.0f);
    }
    if (this->unk_2D4 != this->unk_26C[5]) {
        Math_ApproachF(&this->unk_2D4, this->unk_26C[5], 0.8f, 7000.0f);
    }
    if (this->unk_2D8 != this->unk_26C[6]) {
        Math_ApproachF(&this->unk_2D8, this->unk_26C[6], 0.8f, 7000.0f);
    }
}

void EnNiw_SpawnAttackCucco(EnNiw* this, PlayState* play) {
    f32 viewX;
    f32 viewY;
    f32 viewZ;
    Vec3f attackCuccoPos;
    Actor* attackCucco;

    if ((this->timer5 == 0) && (this->unk_296 < 7)) {
        viewX = play->view.at.x - play->view.eye.x;
        viewY = play->view.at.y - play->view.eye.y;
        viewZ = play->view.at.z - play->view.eye.z;
        attackCuccoPos.x = ((Rand_ZeroOne() - 0.5f) * viewX) + play->view.eye.x;
        attackCuccoPos.y = Rand_CenteredFloat(0.3f) + ((play->view.eye.y + 50.0f) + (viewY * 0.5f));
        attackCuccoPos.z = ((Rand_ZeroOne() - 0.5f) * viewZ) + play->view.eye.z;
        attackCucco = Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_ATTACK_NIW, attackCuccoPos.x,
                                         attackCuccoPos.y, attackCuccoPos.z, 0, 0, 0, 0);

        if (attackCucco != NULL) {
            this->unk_296++;
            this->timer5 = 10;
        } else {
            osSyncPrintf("\n\n");
            osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 発生できず  ☆☆☆☆☆ \n" VT_RST);
        }
    }
}

void func_80AB6100(EnNiw* this, PlayState* play, s32 arg2) {
    f32 factor;
    f32 targetRotY;

    if (this->timer4 == 0) {
        this->timer4 = 3;

        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            this->actor.velocity.y = 3.5f;
        }
    }
    if (this->timer3 == 0) {
        this->unk_2A0++;
        this->unk_2A0 &= 1;
        this->timer3 = 5;
    }
    if (this->unk_2A0 == 0) {
        factor = D_80AB860C[arg2];
    } else {
        factor = -D_80AB860C[arg2];
    }
    if (arg2 == 1) {
        if (this->timer6 == 0 || this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
            this->timer6 = 150;
            if (this->timer8 == 0) {
                this->timer8 = 70;
                this->unk_2E4 = this->actor.yawTowardsPlayer;
            }
        }
    }
    targetRotY = this->unk_2E4 + factor;
    Math_SmoothStepToS(&this->actor.world.rot.y, targetRotY, 3, this->unk_2FC, 0);
    Math_ApproachF(&this->unk_2FC, 3000.0f, 1.0f, 500.0f);
    func_80AB5BF8(this, play, 5);
}

void EnNiw_ResetAction(EnNiw* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gCuccoAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gCuccoAnim), ANIMMODE_LOOP,
                     -10.0f);

    switch (this->actor.params) {
        case 4:
            this->actionFunc = func_80AB6450;
            break;
        case 0xD:
            this->actionFunc = func_80AB6324;
            break;
        default:
            this->actionFunc = func_80AB6570;
            break;
    }
}

void func_80AB6324(EnNiw* this, PlayState* play) {
    if (this->unk_308 != 0) {
        this->actor.velocity.y = Rand_ZeroFloat(2.0f) + 4.0f;
        this->actor.speed = Rand_ZeroFloat(2.0f) + 3.0f;
        this->actionFunc = func_80AB63A8;
    }
    func_80AB5BF8(this, play, 1);
}

void func_80AB63A8(EnNiw* this, PlayState* play) {
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) && this->actor.velocity.y < 0.0f) {
        this->unk_2AC.x = this->unk_2B8.x = this->actor.world.pos.x;
        this->unk_2AC.y = this->unk_2B8.y = this->actor.world.pos.y;
        this->unk_2AC.z = this->unk_2B8.z = this->actor.world.pos.z;
        this->timer5 = this->timer4 = this->unk_29E = 0;

        this->unk_26C[7] = this->unk_26C[5] = this->unk_26C[6] = this->unk_26C[8] = this->actor.speed = this->unk_2FC =
            this->unk_300 = 0.0f;

        this->actionFunc = func_80AB6570;
    } else {
        func_80AB5BF8(this, play, 2);
    }
}

void func_80AB6450(EnNiw* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->actor.xzDistToPlayer < 30.0f && fabsf(this->actor.world.pos.y - player->actor.world.pos.y) < 5.0f) {
        this->timer6 = 100;
        this->actor.gravity = -2.0f;
        this->actionFunc = func_80AB7290;
    } else if (Actor_HasParent(&this->actor, play)) {
        this->actor.gravity = -2.0f;
        Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
        this->sfxTimer1 = 30;
        this->path = 0;
        this->timer4 = 30;
        this->actor.flags &= ~ACTOR_FLAG_0;
        this->actor.speed = 0.0f;
        this->actionFunc = func_80AB6BF8;
    } else {
        // GI_NONE in this case allows the player to lift the actor
        Actor_OfferGetItem(&this->actor, play, GI_NONE, 25.0f, 10.0f);
        func_80AB5BF8(this, play, 1);
    }
}

void func_80AB6570(EnNiw* this, PlayState* play) {
    s32 pad[2];
    f32 posY = Rand_CenteredFloat(100.0f);
    f32 posZ = Rand_CenteredFloat(100.0f);
    s16 tmp;

    if (this->actor.params != 0xA) {
        if (Actor_HasParent(&this->actor, play)) {
            Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
            this->sfxTimer1 = 30;
            this->path = 0;
            this->timer4 = 30;
            this->actor.flags &= ~ACTOR_FLAG_0;
            this->actor.speed = 0.0f;
            this->actionFunc = func_80AB6BF8;
            return;
        }
        Actor_OfferCarry(&this->actor, play);
    } else {
        if (this->path != 0) {
            this->unk_2A6 = 1;
            if (this->sfxTimer3 == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
                this->sfxTimer3 = 100;
            }
            this->unk_2A0 = Rand_ZeroFloat(1.99f);
            this->actor.speed = 4.0f;
            this->unk_300 = 0.0f;
            this->unk_2FC = 0.0f;
            this->actionFunc = func_80AB6A38;
            return;
        }
    }

    tmp = 0;

    if (this->timer5 != 0) {
        if (Rand_ZeroFloat(3.99f) < 1.0f) {
            this->unk_2E6++;
            this->unk_2E6 &= 1;
        }
        Math_ApproachF(&this->unk_26C[9], D_80AB8604[this->unk_2E6], 0.5f, 4000.0f);
    }

    if (this->timer5 == 0 && this->timer4 == 0) {
        this->unk_29E++;

        if (this->unk_29E >= 8) {
            this->timer5 = Rand_ZeroFloat(30.0f);
            this->unk_29E = Rand_ZeroFloat(3.99f);
            if (this->actor.params != 0xA && this->actor.params != 8) {
                if (posY < 0.0f) {
                    posY -= 100.0f;
                } else {
                    posY += 100.0f;
                }
                if (posZ < 0.0f) {
                    posZ -= 100.0f;
                } else {
                    posZ += 100.0f;
                }
            } else {
                posY = Rand_CenteredFloat(30.0f);
                posZ = Rand_CenteredFloat(30.0f);
                if (posY < 0.0f) {
                    posY -= 20.0f;
                } else {
                    posY += 20.0f;
                }
                if (posZ < 0.0f) {
                    if (1) {} // Required to match
                    if (1) {}
                    if (1) {}
                    if (1) {}
                    posZ -= 20.0f;
                } else {
                    posZ += 20.0f;
                }
            }
            this->unk_2B8.x = this->unk_2AC.x + posY;
            this->unk_2B8.z = this->unk_2AC.z + posZ;
        } else {
            this->timer4 = 4;
            if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
                this->actor.speed = 0.0f;
                this->actor.velocity.y = 3.5f;
            }
        }
    }

    if (this->timer4 != 0) {
        Math_ApproachZeroF(&this->unk_26C[9], 0.5f, 4000.0f);
        tmp = 1;
        Math_ApproachF(&this->actor.world.pos.x, this->unk_2B8.x, 1.0f, this->unk_2FC);
        Math_ApproachF(&this->actor.world.pos.z, this->unk_2B8.z, 1.0f, this->unk_2FC);
        Math_ApproachF(&this->unk_2FC, 3.0f, 1.0f, 0.3f);
        posY = this->unk_2B8.x - this->actor.world.pos.x;
        posZ = this->unk_2B8.z - this->actor.world.pos.z;

        if (fabsf(posY) < 10.0f) {
            posY = 0.0;
        }
        if (fabsf(posZ) < 10.0f) {
            posZ = 0.0;
        }
        if (posY == 0.0f && posZ == 0.0f) {
            this->timer4 = 0;
            this->unk_29E = 7;
        }

        Math_SmoothStepToS(&this->actor.world.rot.y, RAD_TO_BINANG(Math_FAtan2F(posY, posZ)), 3, this->unk_300, 0);
        Math_ApproachF(&this->unk_300, 10000.0f, 1.0f, 1000.0f);
    }

    func_80AB5BF8(this, play, tmp);
}

void func_80AB6A38(EnNiw* this, PlayState* play) {
    Path* path;
    Vec3s* pointPos;
    f32 pathDiffX;
    f32 pathDiffZ;
    s16 pathIndex = this->path - 1;

    if (this->path == 0) {
        this->unk_2AC.x = this->unk_2B8.x = this->actor.world.pos.x;
        this->unk_2AC.y = this->unk_2B8.y = this->actor.world.pos.y;
        this->unk_2AC.z = this->unk_2B8.z = this->actor.world.pos.z;
        this->timer5 = this->timer4 = this->unk_29E = 0;
        this->unk_26C[7] = this->unk_26C[5] = this->unk_26C[6] = this->unk_26C[8] = this->actor.speed = this->unk_2FC =
            this->unk_300 = 0.0f;
        this->actionFunc = EnNiw_ResetAction;
    } else {
        path = &play->pathList[pathIndex];
        pointPos = SEGMENTED_TO_VIRTUAL(path->points);
        pointPos += this->waypoint;
        pathDiffX = pointPos->x - this->actor.world.pos.x;
        pathDiffZ = pointPos->z - this->actor.world.pos.z;
        this->unk_2E4 = RAD_TO_BINANG(Math_FAtan2F(pathDiffX, pathDiffZ));
        func_80AB6100(this, play, 2);

        if (fabsf(pathDiffX) < 30.0f && fabsf(pathDiffZ) < 30.0f) {
            this->waypoint++;
            if (this->waypoint >= this->unk_2EC) {
                this->waypoint = 0;
            }
        }

        func_80AB5BF8(this, play, 2);
    }
}

void func_80AB6BF8(EnNiw* this, PlayState* play) {
    if (this->timer4 == 0) {
        this->unk_2A6 = 2;
        this->timer4 = 10;
    }

    this->actor.shape.rot.x = Rand_CenteredFloat(5000.0f);
    this->actor.shape.rot.y = Rand_CenteredFloat(5000.0f);
    this->actor.shape.rot.z = Rand_CenteredFloat(5000.0f);

    if (Actor_HasNoParent(&this->actor, play)) {
        if (this->actor.params == 0xD) {
            this->sfxTimer1 = 0;
            this->unk_2A6 = 1;
            this->actionFunc = func_80AB6EB4;
            this->actor.velocity.y = 4.0f;
            return;
        }
        this->actor.shape.rot.z = 0;
        this->actor.shape.rot.y = this->actor.shape.rot.z;
        this->actor.shape.rot.x = this->actor.shape.rot.z;
        this->actor.flags |= ACTOR_FLAG_0;
        this->actionFunc = func_80AB6D08;
    }
    func_80AB5BF8(this, play, 2);
}

void func_80AB6D08(EnNiw* this, PlayState* play) {
    if (this->path == 0) {
        if (!(this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            return;
        }
        if (this->actor.params == 0xE) {
            this->unk_2AC.x = this->unk_2B8.x = this->actor.world.pos.x;
            this->unk_2AC.y = this->unk_2B8.y = this->actor.world.pos.y;
            this->unk_2AC.z = this->unk_2B8.z = this->actor.world.pos.z;
            this->timer5 = this->timer4 = this->unk_29E = 0;

            this->unk_26C[7] = this->unk_26C[5] = this->unk_26C[6] = this->unk_26C[8] = this->actor.speed =
                this->unk_2FC = this->unk_300 = 0.0f;

            this->actionFunc = EnNiw_ResetAction;
            return;
        }

        this->path = 1;
        this->timer5 = 80;
        this->actor.speed = 0.0f;
        this->actor.velocity.y = 4.0f;
    } else {
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            this->sfxTimer1 = 0;
            this->actor.velocity.y = 4.0f;
            this->unk_2A6 = 1;
        }
        if (this->timer5 == 0) {
            this->timer6 = 100;
            this->timer4 = 0;
            this->path = 0;
            this->actionFunc = func_80AB7290;
            return;
        }
    }

    if (Actor_HasParent(&this->actor, play)) {
        Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
        this->sfxTimer1 = 30;
        this->path = 0;
        this->timer4 = 30;
        this->actor.flags &= ~ACTOR_FLAG_0;
        this->actor.speed = 0.0f;
        this->actionFunc = func_80AB6BF8;
    } else {
        if (this->timer5 >= 6) {
            Actor_OfferCarry(&this->actor, play);
        }
        func_80AB5BF8(this, play, 2);
    }
}

void func_80AB6EB4(EnNiw* this, PlayState* play) {
    if (this->actor.world.pos.y > 400.0f) {
        Actor_Kill(&this->actor);
    }

    func_80AB5BF8(this, play, 2);
}

void func_80AB6F04(EnNiw* this, PlayState* play) {
    Vec3f pos;

    if (this->unk_2A8 != 0) {
        EnNiw_SpawnAttackCucco(this, play);
    }

    this->actor.speed = 2.0f;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_WATER) {
        this->actor.gravity = 0.0f;

        if (this->actor.yDistToWater > 15.0f) {
            this->actor.world.pos.y += 2.0f;
        }
        if (this->timer4 == 0) {
            this->timer4 = 30;
            Math_Vec3f_Copy(&pos, &this->actor.world.pos);
            pos.y += this->actor.yDistToWater;
            EffectSsGRipple_Spawn(play, &pos, 100, 500, 30);
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
            this->actor.velocity.y = 10.0f;
            this->actor.speed = 1.0f;
        }
    } else {
        this->actor.gravity = -2.0f;

        if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
            this->actor.velocity.y = 10.0f;
            this->actor.speed = 1.0f;
            this->actor.gravity = 0.0f;
        } else {
            this->actor.speed = 4.0f;
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            this->actor.gravity = -2.0f;
            this->timer6 = 100;
            this->timer4 = 0;
            this->actor.velocity.y = 0.0f;
            if (this->unk_2A8 == 0) {
                this->actionFunc = func_80AB7290;
            } else {
                this->actionFunc = func_80AB7204;
            }
        }
    }

    func_80AB5BF8(this, play, 2);
}

void func_80AB70A0(EnNiw* this, PlayState* play) {
    OnePointCutscene_Init(play, 2290, -99, &this->actor, CAM_ID_MAIN);
    this->timer5 = 100;
    this->unk_2A2 = 1;
    this->actionFunc = func_80AB70F8;
}

void func_80AB70F8(EnNiw* this, PlayState* play) {
    this->sfxTimer1 = 100;

    if (this->timer5 == 0) {
        this->timer5 = 60;
        this->timer1 = 10;
        this->unk_2A2 = 4;
        this->actionFunc = func_80AB714C;
    }

    func_80AB5BF8(this, play, this->unk_2A2);
}

void func_80AB714C(EnNiw* this, PlayState* play) {
    this->sfxTimer1 = 100;

    if (this->timer5 == 40) {
        this->unk_26C[0] = 10000.0f;
        this->unk_26C[7] = 14000.0f;
        this->unk_26C[5] = 14000.0f;
        this->unk_26C[6] = 0.0f;
        this->unk_26C[8] = 0.0f;
        this->unk_26C[1] = 0.0f;
        this->unk_26C[2] = 0.0f;
        this->timer1 = 10;
        Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
    }
    if (this->timer5 == 0) {
        this->timer7 = 10;
        this->unk_2E4 = this->actor.yawTowardsPlayer;
        this->actor.flags &= ~ACTOR_FLAG_0;
        this->actionFunc = func_80AB7204;
    }

    func_80AB5BF8(this, play, this->unk_2A2);
}

void func_80AB7204(EnNiw* this, PlayState* play) {
    EnNiw_SpawnAttackCucco(this, play);

    if (this->timer7 < 2) {
        if (this->timer7 == 1) {
            this->actor.speed = 3.0f;
            this->unk_2A0 = Rand_ZeroFloat(1.99f);
            this->timer1 = this->timer2 = this->timer3 = this->timer4 = 0;
        } else {
            func_80AB6100(this, play, 1);
        }
    }
}

void func_80AB7290(EnNiw* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gCuccoAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gCuccoAnim), ANIMMODE_LOOP,
                     -10.0f);
    this->unk_2A0 = Rand_ZeroFloat(1.99f);
    this->actor.speed = 4.0f;
    this->actionFunc = func_80AB7328;
}

void func_80AB7328(EnNiw* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->timer6 == 0) {
        this->unk_2AC.x = this->unk_2B8.x = this->actor.world.pos.x;
        this->unk_2AC.y = this->unk_2B8.y = this->actor.world.pos.y;
        this->unk_2AC.z = this->unk_2B8.z = this->actor.world.pos.z;
        this->timer5 = this->timer4 = this->unk_29E = 0;
        this->unk_26C[7] = this->unk_26C[5] = this->unk_26C[6] = this->unk_26C[8] = this->actor.speed = this->unk_2FC =
            this->unk_300 = 0.0f;
        if (this->actor.params == 4) {
            this->actor.params = 0;
        }
        this->actionFunc = EnNiw_ResetAction;
    } else {
        this->unk_2E4 = RAD_TO_BINANG(Math_FAtan2F(this->actor.world.pos.x - player->actor.world.pos.x,
                                                   this->actor.world.pos.z - player->actor.world.pos.z));
        func_80AB6100(this, play, 0);
        func_80AB5BF8(this, play, 2);
    }
}

void func_80AB7420(EnNiw* this, PlayState* play) {
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->unk_2A4 = (s16)Rand_ZeroFloat(3.99f) + 5;
        this->actionFunc = EnNiw_ResetAction;
    }
}

void func_80AB747C(EnNiw* this, PlayState* play) {
    if (this->unk_2A8 == 0 && this->actor.params != 0xA && this->actionFunc != func_80AB6450 &&
        this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        this->sfxTimer1 = 30;
        if (this->unk_2A4 > 0 && D_80AB85E0 == 0) {
            this->unk_2A4--;
        }
        this->unk_2A6 = 1;
        Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
        this->timer6 = 100;
        this->path = 0;
        this->actionFunc = func_80AB7290;
    }
}

void EnNiw_Update(Actor* thisx, PlayState* play) {
    s32 pad1;
    EnNiw* this = (EnNiw*)thisx;
    Player* player = GET_PLAYER(play);
    s16 i;
    s16 featherCount;
    Vec3f zeroVec1 = { 0.0f, 0.0f, 0.0f };
    Vec3f zeroVec2 = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;
    Vec3f vel;
    Vec3f accel;
    s32 pad2;
    f32 scale;
    Vec3f cam;
    f32 dist;
    f32 camResult;
    s32 pad3[10];

    if (1) {} // Required to match
    if (1) {}
    if (1) {}

    this->unk_294++;

    if (this->actionFunc != func_80AB6570) {
        this->unk_26C[9] = 0.0f;
    }
    if (this->unk_2A6) {
        featherCount = 20;

        if (this->unk_2A6 == 2) {
            featherCount = 4;
        }

        for (i = 0; i < featherCount; i++) {
            pos.x = Rand_CenteredFloat(10.0f) + thisx->world.pos.x;
            pos.y = Rand_CenteredFloat(10.0f) + (thisx->world.pos.y + this->unk_304);
            pos.z = Rand_CenteredFloat(10.0f) + thisx->world.pos.z;
            scale = Rand_ZeroFloat(6.0f) + 6.0f;

            if (this->unk_2A6 == 2 && this->unk_304 != 0) {
                pos.y += 10;
            }
            if (this->unk_304 == 0) {
                scale = Rand_ZeroFloat(2.0f) + 2;
            }

            vel.x = Rand_CenteredFloat(3.0f);
            vel.y = (Rand_ZeroFloat(2.0f) * 0.5f) + 2.0f;
            vel.z = Rand_CenteredFloat(3.0f);
            accel.x = 0.0f;
            accel.y = -0.15f;
            accel.z = 0.0f;
            EnNiw_SpawnFeather(this, &pos, &vel, &accel, scale);
        }

        this->unk_2A6 = 0;
    }

    EnNiw_UpdateEffects(this, play);
    if (this->timer1 != 0) {
        this->timer1--;
    }
    if (this->timer2 != 0) {
        this->timer2--;
    }
    if (this->timer3 != 0) {
        this->timer3--;
    }
    if (this->timer4 != 0) {
        this->timer4--;
    }
    if (this->timer5 != 0) {
        this->timer5--;
    }
    if (this->timer7 != 0) {
        this->timer7--;
    }
    if (this->timer6 != 0) {
        this->timer6--;
    }
    if (this->sfxTimer1 != 0) {
        this->sfxTimer1--;
    }
    if (this->sfxTimer2 != 0) {
        this->sfxTimer2--;
    }
    if (this->sfxTimer3 != 0) {
        this->sfxTimer3--;
    }
    if (this->timer8 != 0) {
        this->timer8--;
    }
    if (this->timer9 != 0) {
        this->timer9--;
    }
    thisx->shape.rot = thisx->world.rot;
    thisx->shape.shadowScale = 15.0f;
    this->actionFunc(this, play);
    Actor_SetFocus(&this->actor, this->unk_304);
    Actor_MoveXZGravity(&this->actor);

    if (this->actionFunc != func_80AB6EB4 && this->actionFunc != func_80AB6450 && play->sceneId != SCENE_ZORAS_RIVER) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 60.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_1 | UPDBGCHECKINFO_FLAG_2 |
                                    UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);
    }
    if (play->sceneId == SCENE_ZORAS_RIVER) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 60.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                    UPDBGCHECKINFO_FLAG_4);
    }
    if (thisx->floorHeight <= BGCHECK_Y_MIN || thisx->floorHeight >= 32000.0f) {
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 上下？ ☆☆☆☆☆ %f\n" VT_RST, thisx->floorHeight);
        cam.x = play->view.at.x - play->view.eye.x;
        cam.y = play->view.at.y - play->view.eye.y;
        cam.z = play->view.at.z - play->view.eye.z;
        camResult = cam.y / sqrtf(SQ(cam.x) + SQ(cam.y) + SQ(cam.z));
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ 範囲外Ｘ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->world.pos.x);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ 範囲外Ｙ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->world.pos.y);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ 範囲外Ｚ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->world.pos.z);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ セットＸ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->home.pos.x);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ セットＹ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->home.pos.y);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ セットＺ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->home.pos.z);
        thisx->world.pos.x = thisx->home.pos.x;
        thisx->world.pos.z = thisx->home.pos.z;
        thisx->world.pos.y = ((thisx->home.pos.y + play->view.eye.y) + (camResult * 160.0f));

        if (thisx->world.pos.y < thisx->home.pos.y) {
            thisx->world.pos.y = thisx->home.pos.y + 300.0f;
        }

        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 修整後Ｘ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->world.pos.x);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 修整後Ｙ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->world.pos.y);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 修整後Ｚ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->world.pos.z);
        osSyncPrintf("\n\n");
        thisx->speed = 0.0f;
        thisx->gravity = -2.0f;
        Math_Vec3f_Copy(&this->unk_2AC, &thisx->home.pos);
        Math_Vec3f_Copy(&this->unk_2B8, &thisx->home.pos);
        this->unk_300 = 0.0f;
        this->unk_2FC = 0.0f;
        this->unk_2F0.z = 0.0f;
        this->unk_2F0.y = 0.0f;
        this->unk_2F0.x = 0.0f;
        this->unk_2D8 = 0.0f;
        this->unk_2D4 = 0.0f;
        this->unk_2D0 = 0.0f;
        this->unk_2CC = 0.0f;
        this->unk_2C8 = 0.0f;
        this->unk_2C4 = 0.0f;
        this->unk_2DC = 0.0f;
        this->unk_2E0 = 0.0f;
        this->unk_2A8 = this->unk_294 = this->unk_298 = this->unk_2A6 = this->unk_29E = this->unk_2A0 = this->unk_2A2 =
            0;

        for (i = 0; i < ARRAY_COUNT(this->unk_26C); i++) {
            this->unk_26C[i] = 0;
        }

        this->unk_2A8 = 0;
        this->actionFunc = func_80AB7420;
        return;
    }

    if ((thisx->bgCheckFlags & BGCHECKFLAG_WATER) && thisx->yDistToWater > 15.0f && this->actionFunc != func_80AB6F04 &&
        thisx->params != 0xD && thisx->params != 0xE && thisx->params != 0xA) {
        thisx->velocity.y = 0.0f;
        thisx->gravity = 0.0f;
        Math_Vec3f_Copy(&pos, &thisx->world.pos);
        pos.y += thisx->yDistToWater;
        this->timer4 = 30;
        EffectSsGSplash_Spawn(play, &pos, NULL, NULL, 0, 400);
        this->timer5 = 0;
        osSyncPrintf("\n\n");
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ ぶくぶく ☆☆☆☆☆ \n" VT_RST);
        osSyncPrintf("\n\n");
        this->actionFunc = func_80AB6F04;
        return;
    }

    if (D_80AB85E0 == 0 && this->unk_2A4 <= 0 && thisx->params != 0xD && thisx->params != 0xE && thisx->params != 0xA) {
        this->timer6 = 100;

        if (thisx->xzDistToPlayer > 10.0f) {
            D_80AB85E0 = 1;
            this->timer5 = this->timer4 = this->unk_29E = 0;
            thisx->speed = 0.0f;
            this->unk_2FC = 0.0f;
            this->unk_300 = 0.0f;
            this->unk_26C[7] = 0.0f;
            this->unk_26C[5] = 0.0f;
            this->unk_26C[6] = 0.0f;
            this->unk_26C[8] = 0.0f;
            this->sfxTimer1 = 10000;
            this->unk_2A8 = 1;
            this->unk_2AC.x = this->unk_2B8.x = thisx->world.pos.x;
            this->unk_2AC.y = this->unk_2B8.y = thisx->world.pos.y;
            this->unk_2AC.z = this->unk_2B8.z = thisx->world.pos.z;
            this->actionFunc = func_80AB70A0;
            return;
        }
    }

    dist = 20.0f;

    if (this->unk_2A8 != 0 && thisx->xyzDistToPlayerSq < SQ(dist) && player->invincibilityTimer == 0) {
        func_8002F6D4(play, &this->actor, 2.0f, thisx->world.rot.y, 0.0f, 0x10);
    }

    func_80AB747C(this, play);

    if (this->sfxTimer2 == 0 && this->actionFunc == func_80AB6BF8) {
        this->sfxTimer2 = 7;
        Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_WAKEUP);
    }
    if (this->sfxTimer1 == 0) {
        if (this->actionFunc != func_80AB6570) {
            this->sfxTimer1 = 30;
            Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_A);
        } else {
            this->sfxTimer1 = 300;
            Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_N);
        }
    }
    if (this->unk_2A8 == 0) {
        Collider_UpdateCylinder(&this->actor, &this->collider);

        if (thisx->params != 0xA && thisx->params != 0xD && thisx->params != 0xE && thisx->params != 4) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }
        if (this->actionFunc != func_80AB6BF8 && this->actionFunc != func_80AB6D08 &&
            this->actionFunc != func_80AB6324 && this->actionFunc != func_80AB63A8 &&
            this->actionFunc != func_80AB6450) {
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
        }
    }
}

s32 EnNiw_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnNiw* this = (EnNiw*)thisx;
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };

    if (limbIndex == 13) {
        rot->y += (s16)this->unk_2DC;
    }
    if (limbIndex == 15) {
        rot->y += (s16)this->unk_2E0;
    }
    if (limbIndex == 11) {
        rot->x += (s16)this->unk_2D8;
        rot->y += (s16)this->unk_2D4;
        rot->z += (s16)this->unk_2D0;
    }
    if (limbIndex == 7) {
        rot->x += (s16)this->unk_2CC;
        rot->y += (s16)this->unk_2C8;
        rot->z += (s16)this->unk_2C4;
    }

    return false;
}

void EnNiw_Draw(Actor* thisx, PlayState* play) {
    EnNiw* this = (EnNiw*)thisx;
    Vec3f scale = { 0.15f, 0.15f, 0.15f };
    GraphicsContext* gfxCtx = play->state.gfxCtx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnNiw_OverrideLimbDraw, NULL, this);

    if (this->actionFunc == func_80AB6450) {
        func_80033C30(&this->actor.world.pos, &scale, 255, play);
    }

    EnNiw_DrawEffects(this, play);
}

void EnNiw_SpawnFeather(EnNiw* this, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scale) {
    s16 i;
    EnNiwEffect* effect = this->effects;

    for (i = 0; i < EN_NIW_EFFECT_COUNT; i++, effect++) {
        if (effect->type == 0) {
            effect->type = 1;
            effect->pos = *pos;
            effect->vel = *vel;
            effect->accel = *accel;
            effect->timer = 0;
            effect->scale = scale / 1000.0f;
            effect->life = (s16)Rand_ZeroFloat(20.0f) + 40;
            effect->unk_2A = Rand_ZeroFloat(1000.0f);
            break;
        }
    }
}

void EnNiw_UpdateEffects(EnNiw* this, PlayState* play) {
    s16 i;
    EnNiwEffect* effect = this->effects;

    for (i = 0; i < EN_NIW_EFFECT_COUNT; i++, effect++) {
        if (effect->type != 0) {
            effect->timer++;
            effect->pos.x += effect->vel.x;
            effect->pos.y += effect->vel.y;
            effect->pos.z += effect->vel.z;
            effect->vel.x += effect->accel.x;
            effect->vel.y += effect->accel.y;
            effect->vel.z += effect->accel.z;
            if (effect->type == 1) {
                effect->unk_2A++;
                Math_ApproachF(&effect->vel.x, 0.0f, 1.0f, 0.05f);
                Math_ApproachF(&effect->vel.z, 0.0f, 1.0f, 0.05f);
                if (effect->vel.y < -0.5f) {
                    effect->vel.y = -0.5f;
                }

                effect->unk_30 = Math_SinS(effect->unk_2A * 0xBB8) * M_PI * 0.2f;

                if (effect->life < effect->timer) {
                    effect->type = 0;
                }
            }
        }
    }
}

void EnNiw_DrawEffects(EnNiw* this, PlayState* play) {
    u8 materialFlag = 0;
    s16 i;
    s32 pad;
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    EnNiwEffect* effect = &this->effects[0];

    OPEN_DISPS(gfxCtx, "../z_en_niw.c", 1897);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    for (i = 0; i < EN_NIW_EFFECT_COUNT; i++, effect++) {
        if (effect->type == 1) {
            if (materialFlag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, gCuccoEffectFeatherMaterialDL);
                materialFlag++;
            }
            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);
            Matrix_RotateZ(effect->unk_30, MTXMODE_APPLY);
            Matrix_Translate(0.0f, -1000.0f, 0.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_niw.c", 1913),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, gCuccoEffectFeatherModelDL);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_en_niw.c", 1919);
}
