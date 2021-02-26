#include "z_en_skj.h"
#include "../ovl_En_Skjneedle/z_en_skjneedle.h"

#define FLAGS 0x02000015

#define THIS ((EnSkj*)thisx)

void EnSkj_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSkj_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSkj_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSkj_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B00964(Actor* thisx, GlobalContext* globalCtx); // update for params 5
void func_80B01244(Actor* thisx, GlobalContext* globalCtx); // update for params 6

void func_80AFF2A0(void);
void func_80AFF334(EnSkj* this);

void func_80AFE390(EnSkj* this);
void func_80B00514(EnSkj* this);
void func_80AFF038(EnSkj* this);
void func_80B006F8(EnSkj* this);
void func_80B00680(EnSkj* this);
void func_80AFEE84(EnSkj* this);
void func_80AFF5F0(EnSkj *this);

void func_80B00F2C(EnSkj* this, GlobalContext* globalCtx);

// ocarina minigame action funcs
void func_80B00A54(EnSkj* this, GlobalContext* globalCtx);
void func_80B00BB0(EnSkj* this, GlobalContext* globalCtx);
void func_80B00B0C(EnSkj* this, GlobalContext* globalCtx);
void func_80B00C38(EnSkj* this, GlobalContext* globalCtx);
void func_80B00EA4(EnSkj* this, GlobalContext* globalCtx);
void func_80B01004(EnSkj* this, GlobalContext* globalCtx);
void func_80B01040(EnSkj* this, GlobalContext* globalCtx);
void func_80B010C4(EnSkj* this, GlobalContext* globalCtx);
void func_80B01134(EnSkj* this, GlobalContext* globalCtx);
void func_80B00EE0(EnSkj* this, GlobalContext* globalCtx);
void func_80B00F64(EnSkj* this, GlobalContext* globalCtx);
void func_80B00A54(EnSkj* this, GlobalContext* globalCtx);
void func_80B011CC(EnSkj* this, GlobalContext* globalCtx);

// actionFuncs enemy?
void func_80AFEECC(EnSkj* this, GlobalContext* globalCtx);
void func_80AFEF98(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF07C(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF19C(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF220(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF2E0(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF380(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF424(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF620(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF688(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF7D8(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFA0C(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFD14(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFD84(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFE44(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFED4(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFF58(EnSkj* this, GlobalContext* globalCtx);
void func_80B00018(EnSkj* this, GlobalContext* globalCtx);
void func_80B00098(EnSkj* this, GlobalContext* globalCtx);
void func_80B00130(EnSkj* this, GlobalContext* globalCtx);
void func_80B00210(EnSkj* this, GlobalContext* globalCtx);
void func_80B002D8(EnSkj* this, GlobalContext* globalCtx);
void func_80B00390(EnSkj* this, GlobalContext* globalCtx);
void func_80B0042C(EnSkj* this, GlobalContext* globalCtx);
void func_80B0049C(EnSkj* this, GlobalContext* globalCtx);
void func_80B00554(EnSkj* this, GlobalContext* globalCtx);
void func_80B00638(EnSkj* this, GlobalContext* globalCtx);
void func_80B006B0(EnSkj* this, GlobalContext* globalCtx);
void func_80B00740(EnSkj* this, GlobalContext* globalCtx);

void func_80AFF7A0(EnSkj* this);

typedef struct {
    u8 unk0;
    EnSkj* skullkid;
} unkSkjStruct;

unkSkjStruct D_80B01640 = { 0, NULL };
unkSkjStruct D_80B01648[] = { { 0, NULL }, { 0, NULL } };

const ActorInit En_Skj_InitVars = {
    ACTOR_EN_SKJ,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_SKJ,
    sizeof(EnSkj),
    (ActorFunc)EnSkj_Init,
    (ActorFunc)EnSkj_Destroy,
    (ActorFunc)EnSkj_Update,
    (ActorFunc)EnSkj_Draw,
};

ColliderCylinderInitType1 D_80B01678 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, ANIMMODE_LOOP, 0x08 },
        { 0xFFCFFFFF, ANIMMODE_LOOP, ANIMMODE_LOOP },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_ON,
    },
    { 8, 48, 0, { 0, 0, 0 } },
};

DamageTable D_80B016A4 = {
    /* Deku nut      */ DMG_ENTRY(0, 0x0),
    /* Deku stick    */ DMG_ENTRY(0, 0x0),
    /* Slingshot     */ DMG_ENTRY(0, 0x0),
    /* Explosive     */ DMG_ENTRY(0, 0x0),
    /* Boomerang     */ DMG_ENTRY(0, 0x0),
    /* Normal arrow  */ DMG_ENTRY(0, 0x0),
    /* Hammer swing  */ DMG_ENTRY(2, 0x0),
    /* Hookshot      */ DMG_ENTRY(0, 0x0),
    /* Kokiri sword  */ DMG_ENTRY(1, 0xF),
    /* Master sword  */ DMG_ENTRY(2, 0xF),
    /* Giant's Knife */ DMG_ENTRY(4, 0xF),
    /* Fire arrow    */ DMG_ENTRY(0, 0x0),
    /* Ice arrow     */ DMG_ENTRY(0, 0x0),
    /* Light arrow   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 1   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(0, 0x0),
    /* Fire magic    */ DMG_ENTRY(0, 0x0),
    /* Ice magic     */ DMG_ENTRY(0, 0x0),
    /* Light magic   */ DMG_ENTRY(0, 0x0),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(1, 0x0),
    /* Giant spin    */ DMG_ENTRY(4, 0x0),
    /* Master spin   */ DMG_ENTRY(2, 0x0),
    /* Kokiri jump   */ DMG_ENTRY(2, 0x0),
    /* Giant jump    */ DMG_ENTRY(8, 0x0),
    /* Master jump   */ DMG_ENTRY(4, 0x0),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(0, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

s32 D_80B016C4[] = {
    GI_RUPEE_GREEN,
    GI_RUPEE_BLUE,
    GI_HEART_PIECE,
    GI_RUPEE_RED,
};

typedef struct {
    AnimationHeader* animation;
    u8 mode;
    f32 morphFrames;
} SkullkidAnimationEntry;

SkullkidAnimationEntry D_80B016D4[] = {
    { 0x0600051C, ANIMMODE_ONCE, 0.0f }, { 0x060007A4, ANIMMODE_ONCE, 0.0f }, { 0x06000E10, ANIMMODE_LOOP, 0.0f },
    { 0x06006A98, ANIMMODE_ONCE, 0.0f }, { 0x06006D84, ANIMMODE_ONCE, 0.0f }, { 0x06007128, ANIMMODE_ONCE, 0.0f },
    { 0x06008174, ANIMMODE_LOOP, 0.0f }, { 0x06008374, ANIMMODE_LOOP, 0.0f }, { 0x06008E14, ANIMMODE_LOOP, 0.0f },
    { 0x06008B9C, ANIMMODE_LOOP, 0.0f },
};

EnSkjActionFunc D_80B0174C[] = {
    func_80AFEECC, func_80AFEF98, func_80AFF07C, func_80AFF19C, func_80AFF220, func_80AFF2E0,
    func_80AFF380, func_80AFF424, func_80AFF620, func_80AFF688, func_80AFF7D8, func_80AFFA0C,
    func_80AFFD14, func_80AFFD84, func_80AFFE44, func_80AFFED4, func_80AFFF58, func_80B00018,
    func_80B00098, func_80B00130, func_80B00210, func_80B002D8, func_80B00390, func_80B0042C,
    func_80B0049C, func_80B00554, func_80B00638, func_80B006B0, func_80B00740,
};

InitChainEntry D_80B017C0[] = {
    ICHAIN_U8(targetMode, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 30, ICHAIN_STOP),
};

s32 D_80B01EA0; // gets set if actor flags & 0x100 is set

extern UNK_TYPE D_060007A4;
extern UNK_TYPE D_06000E10;
extern Gfx D_060014C8[];
extern UNK_TYPE D_06005F40;
extern UNK_TYPE D_06006A98;
extern UNK_TYPE D_06006D84;
extern UNK_TYPE D_06007128;

void EnSkj_ChangeAnim(EnSkj* this, u8 animIndex) {
    f32 startFrame = Animation_GetLastFrame(D_80B016D4[animIndex].animation);

    this->animIndex = animIndex;
    Animation_Change(&this->skelAnime, D_80B016D4[animIndex].animation, 1.0f, 0.0f, startFrame,
                     D_80B016D4[animIndex].mode, D_80B016D4[animIndex].morphFrames);
}

void EnSkj_SetupAction(EnSkj* this, u8 action) {
    this->action = action;
    this->actionFunc = D_80B0174C[action];

    switch (action) {
        case 0:
        case 3:
        case 4:
        case 9:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
            this->unk_2D3 = 0;
            break;
        default:
            this->unk_2D3 = 1;
            break;
    }
}

void func_80AFE390(EnSkj* this) {
    Vec3f mult;

    mult.x = 0.0f;
    mult.y = 0.0f;
    mult.z = 120.0f;

    Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);
    Matrix_MultVec3f(&mult, &this->center);

    this->center.x += this->actor.world.pos.x;
    this->center.z += this->actor.world.pos.z;
}

// EnSkj_SetNaviEnemyID
void func_80AFE428(EnSkj* this) {
    switch (this->actor.params) {
        case 0:
            if (gSaveContext.itemGetInf[3] & 0x200) {
                this->actor.naviEnemyId = 0x41;
            } else if (gSaveContext.itemGetInf[1] & 0x40) {
                this->actor.naviEnemyId = 0x40;
            } else {
                this->actor.naviEnemyId = 0x3F;
            }
            break;

        case 1:
        case 2:
            this->actor.naviEnemyId = 0x3F;
            break;

        default:
            this->actor.naviEnemyId = 0x36;
            break;
    }
}

#ifdef NON_MATCHING
void EnSkj_Init(Actor* thisx, GlobalContext* globalCtx2) {
    s16 type = (thisx->params >> 0xA) & 0x3F;
    GlobalContext* globalCtx = globalCtx2;
    EnSkj* this = THIS;
    s32 pad;
    Player* player;

    Actor_ProcessInitChain(thisx, D_80B017C0);

    switch (type) {
        case 5:
            D_80B01640.unk0 = 1;
            D_80B01640.skullkid = thisx;
            thisx->destroy = NULL;
            thisx->draw = NULL;
            thisx->update = func_80B00964;
            thisx->flags &= ~5;
            thisx->flags |= 0;
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, thisx, ACTORCAT_PROP);
            break;

        case 6:
            D_80B01640.unk0 = 1;
            D_80B01640.skullkid = thisx;
            thisx->destroy = NULL;
            thisx->draw = NULL;
            thisx->update = func_80B01244;
            thisx->flags &= ~5;
            thisx->flags |= 0;
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, thisx, ACTORCAT_PROP);

            thisx->focus.pos.x = 1230.0f;
            thisx->focus.pos.y = -90.0f;
            thisx->focus.pos.z = 450.0f;

            this->actionFunc = func_80B00A54;
            break;

        default:
            thisx->params = type;

            if ((thisx->params != 0) && (thisx->params != 1) && (thisx->params != 2)) {
                if (INV_CONTENT(ITEM_TRADE_ADULT) < ITEM_SAW) {
                    Actor_Kill(thisx);
                    return;
                }
            }

            func_80AFE428(this);
            SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06005F40, &D_06000E10, this->jointTable,
                               this->morphTable, 19);
            if ((type >= 0) && (type < 3)) {
                thisx->flags &= ~5;
                thisx->flags |= 9;

                Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, this, ACTORCAT_NPC);
            }

            if ((type < 0) || (type >= 7)) {
                thisx->flags &= ~0x02000000;
            }

            if ((type > 0) && (type < 3)) {
                // ocarina minigame
                thisx->targetMode = 7;
                this->posCopy = thisx->world.pos;
                D_80B01648[type - 1].unk0 = 1;
                D_80B01648[type - 1].skullkid = thisx;
                this->unk_2D8 = 0;
                this->alpha = 0;
                func_80B00514(this);
            } else {
                this->alpha = 255;
                func_80AFF038(this);
            }

            thisx->colChkInfo.damageTable = &D_80B016A4;
            thisx->colChkInfo.health = 10;

            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinderType1(globalCtx, &this->collider, thisx, &D_80B01678);

            ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawCircle, 40.0f);
            Actor_SetScale(thisx, 0.01f);

            this->textId = 0;
            thisx->textId = 0;

            this->playbackTimer = 0;
            this->unk_2D2 = 0;
            this->unk_2D4 = 3;
            this->unk_2D5 = 3;

            thisx->speedXZ = 0.0f;
            thisx->velocity.y = 0.0f;
            thisx->gravity = -1.0f;

            func_80AFE390(this);

            player = PLAYER;
            osSyncPrintf("Player_X : %f\n", player->actor.world.pos.x);
            osSyncPrintf("Player_Z : %f\n", player->actor.world.pos.z);
            osSyncPrintf("World_X  : %f\n", thisx->world.pos.x);
            osSyncPrintf("World_Z  : %f\n", thisx->world.pos.z);
            osSyncPrintf("Center_X : %f\n", this->center.x);
            osSyncPrintf("Center_Z : %f\n\n", this->center.z);
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/EnSkj_Init.s")
#endif

void EnSkj_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSkj* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 func_80AFE8EC(Player* player, EnSkj* this) {
    f32 xDiff = player->actor.world.pos.x - this->actor.world.pos.x;
    f32 zDiff = player->actor.world.pos.z - this->actor.world.pos.z;
    f32 yDiff = player->actor.world.pos.y - this->actor.world.pos.y;

    return (SQ(xDiff) + SQ(zDiff) <= 676.0f) && ((yDiff) >= 0.0f);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFE968.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFE9AC.s")

//Spawn/shoot needle
s32 func_80AFE9D4(EnSkj* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f pos;
    Vec3f pos2;
    EnSkjneedle* needle;


    pos.x = 1.5f;
    pos.y = 0.0f;
    pos.z = 40.0f;

    Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);
    Matrix_MultVec3f(&pos, &pos2);
    
    pos2.x += this->actor.world.pos.x;
    pos2.z += this->actor.world.pos.z;
    pos2.y = this->actor.world.pos.y + 27.0f;

    needle = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_SKJNEEDLE, pos2.x, pos2.y, pos2.z,
                          this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, 0);
    if (needle != 0) {
        needle->unk_1E2 = 100;
        needle->actor.speedXZ = 24.0f;
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFEAEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFEC3C.s")

s32 func_80AFEDF8(EnSkj* this, GlobalContext* globalCtx) {
    s16 yawDiff;

    if (this->actor.xzDistToPlayer < this->unk_2EC) {
        this = this;
        if (func_8002DDE4(globalCtx) != 0) {
            return 1;
        }
    }

    yawDiff = this->actor.yawTowardsPlayer - this->actor.world.rot.y;

    if ((yawDiff < this->unk_2C8) && (-this->unk_2C8 < yawDiff)) {
        return 1;
    }

    return 0;
}

void func_80AFEE84(EnSkj* this) {
    this->actor.velocity.y = 8.0f;
    this->actor.speedXZ = -8.0f;

    EnSkj_ChangeAnim(this, 0);
    EnSkj_SetupAction(this, 0);
}

void func_80AFEECC(EnSkj* this, GlobalContext* globalCtx) {
    u32 alpha = this->alpha;

    if (this->unk_2D6 == 2) {
        globalCtx->msgCtx.unk_E3EE = 0;
        this->unk_2D6 = 0;
    }

    alpha -= 20;

    if (this->unk_2D2 != 0) {
        if (alpha > 255) {
            alpha = 0;
        }

        this->alpha = alpha;
        this->actor.shape.shadowAlpha = alpha;
    }

    if (this->actor.velocity.y <= 0.0f) {
        if (this->actor.bgCheckFlags & 2) {
            this->actor.bgCheckFlags &= ~2;
            func_80AFF2A0();
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFEF5C.s")

void func_80AFEF98(EnSkj* this, GlobalContext* globalCtx) {
    u8 val;
    s16 lastFrame = Animation_GetLastFrame(&D_060007A4);

    if ((this->skelAnime.curFrame == lastFrame) && (this->unk_2CC == 0)) {
        val = this->unk_2D4;
        if (this->unk_2D4 != 0) {
            func_80AFE9D4(this, globalCtx);
            this->unk_2CC = 4;
            val--;
            this->unk_2D4 = val;

        } else {
            func_80AFF5F0(this);
        }
    }
}

void func_80AFF038(EnSkj* this) {
    this->unk_2C8 = 0xAAA;
    this->unk_2EC = 200.0f;
    EnSkj_ChangeAnim(this, 2);
    EnSkj_SetupAction(this, 2);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF07C.s")
// void func_80AFF07C(EnSkj* this, GlobalContext* globalCtx) {
//     if (this->actor.params == 0) {
//         if ((!(gSaveContext.itemGetInf[1] & 0x40)) && (this->actor.xzDistToPlayer < 200.0f)) {
//             this->unk_2D2 = 1;
//             func_80AFEE84(this);
//         } else if (D_80B01640.unk0 != 0) {
//             Player* player = PLAYER;
//             if (func_80AFE8EC(this, D_80B01640.skullkid) != 0) {
//                 func_80AFF7A0(this);
//                 player->stateFlags2 |= 0x800000;
//                 player->unk_6A8 = D_80B01640.skullkid;
//             }
//         }
//     } else {
//         if (func_80AFEDF8(this, globalCtx) != 0) {
//             func_80AFF334(this);
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF16C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF19C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF1F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF2A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF2E0.s")

void func_80AFF334(EnSkj* this) {
    this->unk_2C8 = 0x2000;
    this->playbackTimer = 400;
    this->unk_2EC = 600.0f;
    EnSkj_ChangeAnim(this, 6);
    EnSkj_SetupAction(this, 6);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF380.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF3D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF424.s")

void func_80AFF5F0(EnSkj *this) {
    Animation_Reverse(&this->skelAnime);
    EnSkj_SetupAction(this, 8);
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF620.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF660.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF688.s")

void func_80AFF7A0(EnSkj* this) {
    this->textId = 0x10BC;

    EnSkj_ChangeAnim(this, 9);
    EnSkj_SetupAction(this, 10);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF7D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF9E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFA0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFCE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFD14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFD64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFD84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFE24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFE44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFEB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFF38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFF58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFFBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B000EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B001CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B002A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B002D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00370.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00390.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B003F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B0042C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B0047C.s")

void func_80B0049C(EnSkj* this, GlobalContext* globalCtx) {
    u8 state;
    Player* player;

    if (((state = func_8010BDBC(&globalCtx->msgCtx)), player = PLAYER, state == 6) && func_80106BC8(globalCtx)) {
        func_80AFF7A0(this);
        player->stateFlags2 |= 0x800000;
        player->unk_6A8 = (Actor*)D_80B01640.skullkid;
    }
}
// try to make this work later
// void func_80B0049C(EnSkj* this, GlobalContext* globalCtx) {
//     u8 dialogState = func_8010BDBC(&globalCtx->msgCtx);

//     if ((dialogState == 6)) {
//         Player* player = PLAYER;

//         if (func_80106BC8(globalCtx)) {
//             func_80AFF7A0(this);
//             player->stateFlags2 |= 0x800000;
//             player->unk_6A8 = D_80B01640.skullkid;
//         }
//     }
// }

void func_80B00514(EnSkj* this) {
    this->actor.flags &= ~1;
    EnSkj_ChangeAnim(this, 9);
    EnSkj_SetupAction(this, 25);
}

void func_80B00554(EnSkj* this, GlobalContext* globalCtx) {
    if (this->unk_2D7 != 0) {
        this->actor.flags |= 1;
        EnSkj_SetupAction(this, 26);
    }
}

s32 func_80B00590(EnSkj* this) {
    s32 paramDecr = this->actor.params - 1;

    if (D_80B01648[paramDecr].unk0 == 2) {
        func_80B006F8(this);
        return 1;
    }
    return 0;
}

void func_80B005E0(EnSkj* this) {
    EnSkj_ChangeAnim(this, 9);
    EnSkj_SetupAction(this, 26);
}

// EnSkj_Appear
void func_80B00610(EnSkj* this) {
    if (this->alpha != 255) {
        this->alpha += 20;

        if (this->alpha > 255) {
            this->alpha = 255;
        }
    }
}

void func_80B00638(EnSkj* this, GlobalContext* globalCtx) {
    func_80B00610(this);

    if ((func_80B00590(this) == 0) && (this->unk_2D8 != 0)) {
        func_80B00680(this);
    }
}

void func_80B00680(EnSkj* this) {
    EnSkj_ChangeAnim(this, 2);
    EnSkj_SetupAction(this, 27);
}

void func_80B006B0(EnSkj* this, GlobalContext* globalCtx) {
    func_80B00610(this);

    if ((func_80B00590(this) == 0) && (this->unk_2D8 == 0)) {
        func_80B005E0(this);
    }
}

void func_80B006F8(EnSkj* this) {
    this->actor.velocity.y = 8.0f;
    this->actor.speedXZ = -8.0f;
    EnSkj_ChangeAnim(this, 0);
    EnSkj_SetupAction(this, 28);
}

void func_80B00740(EnSkj* this, GlobalContext* globalCtx) {
    s32 paramsDecr = this->actor.params - 1;

    D_80B01648[paramsDecr].unk0 = 0;
    D_80B01648[paramsDecr].skullkid = NULL;
    this->unk_2D2 = 1;
    func_80AFEE84(this);
}

void EnSkj_Update(Actor* thisx, GlobalContext* globalCtx) {
    Vec3f dropPos;
    s32 pad;
    EnSkj* this = THIS;

    D_80B01EA0 = func_8002F194(this, globalCtx);

    this->timer++;

    if (this->playbackTimer != 0) {
        this->playbackTimer--;
    }

    if (this->unk_2CC != 0) {
        this->unk_2CC--;
    }

    if (this->unk_2CE != 0) {
        this->unk_2CE--;
    }

    if (this->unk_2CE == 0) {
        this->unk_2D5 = 3;
    }

    if ((this->unk_2D2 != 0) && (this->alpha == 0)) {
        if (this->action == 9) {
            dropPos.x = this->actor.world.pos.x;
            dropPos.y = this->actor.world.pos.y;
            dropPos.z = this->actor.world.pos.z;

            Item_DropCollectible(globalCtx, &dropPos, ITEM00_RUPEE_ORANGE);
        }
        Actor_Kill(this);
        return;
    }

    Actor_SetFocus(this, 30.0f);
    Actor_SetScale(this, 0.01f);
    this->actionFunc(this, globalCtx);
    this->actor.textId = this->textId;
    func_80AFEC3C(this, globalCtx);
    Collider_UpdateCylinder(this, &this->collider);

    if ((this->unk_2D3 != 0) && (D_80B01EA0 == 0)) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

        if (this->actor.colorFilterTimer == 0) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    SkelAnime_Update(&this->skelAnime);
    Actor_MoveForward(this);
    Actor_UpdateBgCheckInfo(globalCtx, this, 20.0f, 20.0f, 20.0f, 7);
}

void func_80B00964(Actor* thisx, GlobalContext* globalCtx) {
    EnSkj* this = THIS;

    D_80B01EA0 = func_8002F194(&this->actor, globalCtx);

    if (BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, 255, 0, 0, 255, 4, globalCtx->state.gfxCtx);
    }
}

// EnSkj_TurnPlayer
void func_80B00A08(EnSkj* this, Player* player) {
    Math_SmoothStepToS(&player->actor.shape.rot.y, this->actor.world.rot.y, 5, 2000, 0);
    player->actor.world.rot.y = player->actor.shape.rot.y;
    player->currentYaw = player->actor.shape.rot.y;
}

// EnSkj_StartWaitingForOcarina
void func_80B00A54(EnSkj* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (func_80AFE8EC(player, this) != 0) {
        D_80B01648[0].skullkid->unk_2D7 = 1;
        D_80B01648[1].skullkid->unk_2D7 = 1;

        if (player->stateFlags2 & 0x1000000) {
            player->stateFlags2 |= 0x2000000;
            func_800F5BF0(4);
            func_80B00A08(this, player);
            player->unk_6A8 = &this->actor;
            func_8010B680(globalCtx, 0x10BE, &this->actor);
            this->actionFunc = func_80B00BB0;
        } else {
            this->actionFunc = func_80B00B0C;
        }
    }
}

// EnSkj_WaitForOcarina
void func_80B00B0C(EnSkj* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (player->stateFlags2 & 0x1000000) {
        player->stateFlags2 |= 0x2000000;
        func_800F5BF0(4);
        func_80B00A08(this, player);
        player->unk_6A8 = &this->actor;
        func_8010B680(globalCtx, 0x10BE, &this->actor);
        this->actionFunc = func_80B00BB0;
    } else if (func_80AFE8EC(player, this) != 0) {
        player->stateFlags2 |= 0x800000;
    }
}

// EnSkj_StartMinigame
void func_80B00BB0(EnSkj* this, GlobalContext* globalCtx) {
    u8 dialogState = func_8010BDBC(&globalCtx->msgCtx);
    Player* player = PLAYER;

    func_80B00A08(this, player);

    if (dialogState == 2) {
        func_8010BD58(globalCtx, 0x2E); // play song?
        if (D_80B01648[0].skullkid != NULL) {
            D_80B01648[0].skullkid->unk_2D8 = 1;
        }
        this->playbackTimer = 160;
        this->actionFunc = func_80B00C38;
    }
}

// EnSkj_WaitForPlayback
void func_80B00C38(EnSkj* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    func_80B00A08(this, player);

    if (globalCtx->msgCtx.unk_E3EE == 3) { // failed the game
        func_80106CCC(globalCtx);
        globalCtx->msgCtx.unk_E3EE = 4;
        player->unk_6A8 = &this->actor;
        func_8002F2CC(&this->actor, globalCtx, 26.0f);
        this->textId = 0x102D;
        this->actionFunc = func_80B00EA4;
    } else if (globalCtx->msgCtx.unk_E3EE == 0xF) { // completed the game
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        func_80106CCC(globalCtx);
        globalCtx->msgCtx.unk_E3EE = 4;
        player->unk_6A8 = &this->actor;
        func_8002F2CC(&this->actor, globalCtx, 26.0f);
        this->textId = 0x10BF;
        this->actionFunc = func_80B01004;
    } else { // playing the game
        switch (globalCtx->msgCtx.msgMode) {
            case 0x2B:
                if (D_80B01648[0].skullkid != NULL) {
                    D_80B01648[0].skullkid->unk_2D8 = 0;
                }
                if (func_800F8FF4(NA_SE_SY_METRONOME) == 0) {
                    if (D_80B01648[1].skullkid != NULL) {
                        D_80B01648[1].skullkid->unk_2D8 = 1;
                    }
                    func_80106AA8(globalCtx);
                }
                break;

            case 0x2D:
                if (D_80B01648[1].skullkid != NULL) {
                    D_80B01648[1].skullkid->unk_2D8 = 0;
                }
                if (func_800F8FF4(NA_SE_SY_METRONOME) == 0) {
                    func_80106AA8(globalCtx);
                    this->playbackTimer = 160;
                }
                break;

            case 0x2E:
                if (this->playbackTimer != 0) {
                    this->playbackTimer--;
                } else { // took too long, game failed
                    func_80078884(NA_SE_SY_OCARINA_ERROR);
                    func_80106CCC(globalCtx);
                    globalCtx->msgCtx.unk_E3EE = 4;
                    player->unk_6A8 = &this->actor;
                    func_8002F2CC(&this->actor, globalCtx, 26.0f);
                    this->textId = 0x102D;
                    this->actionFunc = func_80B00EA4;
                }
                break;

            case 0x30:
                if (func_800F8FF4(NA_SE_SY_METRONOME) == 0) {
                    if (D_80B01648[0].skullkid != NULL) {
                        D_80B01648[0].skullkid->unk_2D8 = 1;
                    }
                    this->playbackTimer = 160;
                    func_800ED858(6); // related instrument sound (flute?)
                    func_800ED93C(0xE, 1);
                    globalCtx->msgCtx.msgMode = 0x2A;
                    globalCtx->msgCtx.unk_E3E7 = 2;
                }
                break;
        }
    }
}

void func_80B00EA4(EnSkj* this, GlobalContext* globalCtx) {
    if (D_80B01EA0) {
        this->actionFunc = func_80B00EE0;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 26.0f);
    }
}

void func_80B00EE0(EnSkj* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6 && func_80106BC8(globalCtx)) {
        func_80B00F2C(this, globalCtx);
    }
}

// EnSkj_OfferNextRound
void func_80B00F2C(EnSkj* this, GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x102E); // wanna play again? yes/no
    this->actionFunc = func_80B00F64;
}

// EnSkj_WaitForOfferResponse
void func_80B00F64(EnSkj* this, GlobalContext* globalCtx) {
    Player* player;

    if (func_8010BDBC(&globalCtx->msgCtx) == 4 && func_80106BC8(globalCtx)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0: // yes
                player = PLAYER;
                player->stateFlags3 |= 0x20; // makes player take ocarina out right away after closing box
                this->actionFunc = func_80B00A54;
                break;
            case 1: // no
                this->actionFunc = func_80B011CC;
                break;
        }
    }
}

void func_80B01004(EnSkj* this, GlobalContext* globalCtx) {
    if (D_80B01EA0) {
        this->actionFunc = func_80B01040;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 26.0f);
    }
}

// EnSkj_WaitToGiveReward
void func_80B01040(EnSkj* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx))) {
        func_8002F434(&this->actor, globalCtx, D_80B016C4[gSaveContext.ocarinaGameReward], 26.0f, 26.0f);
        this->actionFunc = func_80B010C4;
    }
}

// EnSkj_GiveMinigameReward
void func_80B010C4(EnSkj* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->actionFunc = func_80B01134;
    } else {
        func_8002F434(&this->actor, globalCtx, D_80B016C4[gSaveContext.ocarinaGameReward], 26.0f, 26.0f);
    }
}

// EnSkj_FinishRound
void func_80B01134(EnSkj* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx))) {
        s32 ocarinaGameReward = gSaveContext.ocarinaGameReward;

        if (gSaveContext.ocarinaGameReward < 3) {
            gSaveContext.ocarinaGameReward++;
        }

        if (ocarinaGameReward == 2) {
            gSaveContext.itemGetInf[1] |= 0x80;
            this->actionFunc = func_80B011CC;
        } else {
            func_80B00F2C(this, globalCtx);
        }
    }
}

// EnSkj_DissapearFromMinigame
void func_80B011CC(EnSkj* this, GlobalContext* globalCtx) {
    if (D_80B01648[0].skullkid != NULL) {
        D_80B01648[0].unk0 = 2;
    }

    if (D_80B01648[1].skullkid != NULL) {
        D_80B01648[1].unk0 = 2;
    }

    if ((D_80B01648[0].unk0 == 2) && (D_80B01648[1].unk0 == 2)) {
        func_800F5C2C();
        Actor_Kill(&this->actor);
    }
}

void func_80B01244(Actor* thisx, GlobalContext* globalCtx) {
    EnSkj* this = THIS;

    D_80B01EA0 = func_8002F194(&this->actor, globalCtx);
    this->timer++;

    this->actor.focus.pos.x = 1230.0f;
    this->actor.focus.pos.y = -90.0f;
    this->actor.focus.pos.z = 450.0f;

    if (BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, 255, 0, 0, 255, 4, globalCtx->state.gfxCtx);
    }

    this->actionFunc(this, globalCtx);

    this->actor.textId = this->textId;
    this->actor.xzDistToPlayer = 50.0;
}

s32 func_80B01348(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    return 0;
}

void func_80B01360(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_skj.c", 2417);

    if ((limbIndex == 11) && (gSaveContext.itemGetInf[3] & 0x200)) {
        func_80093D18(globalCtx->state.gfxCtx);
        Matrix_Push();
        Matrix_RotateRPY(-0x4000, 0, 0, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_skj.c", 2430),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, D_060014C8);
        Matrix_Pop();
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_skj.c", 2437);
}

Gfx* func_80B01474(GraphicsContext* gfxCtx, u32 alpha) {
    Gfx* dList;
    Gfx* dListHead;

    dList = dListHead = Graph_Alloc(gfxCtx, sizeof(Gfx));
    gDPSetRenderMode(dListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2);
    gDPSetEnvColor(dListHead++, 0, 0, 0, alpha);
    gSPEndDisplayList(dListHead++);

    return dList;
}

Gfx* func_80B014E4(GraphicsContext* gfxCtx, u32 alpha) {
    Gfx* dList;
    Gfx* dListHead;

    dList = dListHead = Graph_Alloc(gfxCtx, sizeof(Gfx));
    gDPSetEnvColor(dListHead++, 0, 0, 0, alpha);
    gSPEndDisplayList(dListHead++);

    return dList;
}

void EnSkj_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSkj* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_skj.c", 2475);

    func_80093D18(globalCtx->state.gfxCtx);

    if (this->alpha < 0xFF) {
        gSPSegment(POLY_OPA_DISP++, 0x0C, func_80B01474(globalCtx->state.gfxCtx, this->alpha));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x0C, func_80B014E4(globalCtx->state.gfxCtx, this->alpha));
    }

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          func_80B01348, func_80B01360, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_skj.c", 2495);
}
