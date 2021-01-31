/*
 * File: z_en_ba.c
 * Overlay: ovl_En_Ba
 * Description: Tentacle from inside Lord Jabu-Jabu
 */

#include "z_en_ba.h"

#define FLAGS 0x00000015

#define THIS ((EnBa*)thisx)

void EnBa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809B6568(Actor* thisx);
void func_809B69D4(Actor* thisx);
void func_809B65A8(EnBa* this, GlobalContext* globalCtx);
void func_809B6A44(EnBa* this, GlobalContext* globalCtx);
void func_809B6B58(EnBa* this, GlobalContext* globalCtx);
void func_809B71F0(EnBa* this, GlobalContext* globalCtx);
void func_809B781C(EnBa* this, GlobalContext* globalCtx);
void func_809B6B04(EnBa* this);

extern Gfx D_06000890[];
extern Gfx D_06001D80[];

const ActorInit En_Ba_InitVars = {
    ACTOR_EN_BA,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_BXA,
    sizeof(EnBa),
    (ActorFunc)EnBa_Init,
    (ActorFunc)EnBa_Destroy,
    (ActorFunc)EnBa_Update,
    (ActorFunc)EnBa_Draw,
};

static Vec3f D_809B8080 = { 0.0f, 0.0f, 32.0f};

static ColliderJntSphElementInit D_809B808C[2] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000010, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON,
            OCELEM_NONE,
        },
        { 8, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x20000000, 0x00, 0x04 },
            { 0x00000000, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 13, { { 0, 0, 0 }, 25 }, 100 },
    },
};

static ColliderJntSphInit D_809B80D4 = {
    {
        COLTYPE_HIT0,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_JNTSPH,
    },
    2,
    D_809B808C,
};


void func_809B6350(EnBa* this, EnBaActionFunc actionFunc) {
    this->unk150 = actionFunc;
}

static Vec3f D_809B80E4 = {0.01f, 0.01f, 0.01f};

static InitChainEntry D_809B80F0[] = {
    ICHAIN_S8(naviEnemyId, 21, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 2500, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 0, ICHAIN_STOP),
};

void EnBa_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnBa* this = THIS;
    Vec3f sp38 = D_809B80E4;
    s32 pad;
    s16 i;

    Actor_ProcessInitChain(&this->actor, D_809B80F0);
    this->actor.world.pos.y = this->actor.home.pos.y + 100.0f;
    for (i = 13; i >= 0; i--){
        this->unk200[i] = sp38;
        this->unk2A8[i].x = -0x4000;
        this->unk158[i] = this->actor.world.pos;
        this->unk158[i].y = this->actor.world.pos.y - (i+1)*32.0f;
    }
    
    this->actor.targetMode = 4;
    this->unk154 = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    
    if (this->actor.params < 3) {
        if (Flags_GetSwitch(globalCtx, this->unk154) != 0) {
            Actor_Kill(&this->actor);
            return;
        }
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 48.0f);
        Actor_SetScale(&this->actor, 0.01f);
        func_809B6568(&this->actor);
        this->actor.colChkInfo.health = 4;
        this->actor.colChkInfo.mass = 0xFE;
        Collider_InitJntSph(globalCtx, &this->unk320);
        Collider_SetJntSph(globalCtx, &this->unk320, &this->actor, &D_809B80D4, this->unk340);
    } else {
        Actor_SetScale(&this->actor, 0.021f);
        func_809B69D4(&this->actor);
    }
}

void EnBa_Destroy(Actor* thisx, GlobalContext *globalCtx) {
    EnBa* this = THIS;
    Collider_DestroyJntSph(globalCtx, &this->unk320);
}

void func_809B6568(Actor* thisx) {
    EnBa* this = THIS;
    this->unk14C = 2;
    this->unk31C = 1500;
    this->actor.speedXZ = 10.0f;
    func_809B6350(this, func_809B65A8);
}

void func_809B65A8(EnBa* this, GlobalContext* globalCtx) {
    Player* player;
    s32 i;
    s32 pad;
    Vec3s sp5C;
    player = PLAYER;
    
    if ((this->actor.colChkInfo.mass == 0xFF) && (this->actor.xzDistToPlayer > 175.0f)) {
        Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y + 330.0f, 1.0f, 7.0f, 0.0f);
    } else {
        this->actor.flags |= 1;
        Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y + 100.0f, 1.0f, 10.0f, 0.0f);
    }
    this->unk2FC = this->actor.world.pos;
    if (globalCtx->gameplayFrames % 0x10 == 0) {
        this->unk308.z += Rand_CenteredFloat(180.0f);
        this->unk314 += Rand_CenteredFloat(180.0f);
        this->unk308.x = Math_SinF(this->unk308.z) * 80.0f;
        this->unk308.y = Math_CosF(this->unk314) * 80.0f;
    }
    this->unk2FC.y -= 448.0f;
    this->unk2FC.x += this->unk308.x;
    this->unk2FC.z += this->unk308.y;
    func_80033AEC(&this->unk2FC, &this->unk158[13], 1.0f, this->actor.speedXZ, 0.0f, 0.0f);
    for (i = 12; i >= 0; i--){
        func_80035844(&this->unk158[i+1], &this->unk158[i], &sp5C.x, 0);
        Matrix_Translate(this->unk158[i+1].x, this->unk158[i+1].y, this->unk158[i+1].z, 0);
        Matrix_RotateRPY(sp5C.x, sp5C.y, 0, 1);
        Matrix_MultVec3f(&D_809B8080, &this->unk158[i]);
    }
    func_80035844(&this->unk158[0], &this->unk2FC, &sp5C.x, 0);
    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->unk2A8[0].y, 3, this->unk31C, 182);
    Math_SmoothStepToS(&this->actor.shape.rot.x, this->unk2A8[0].x, 3, this->unk31C, 182);
    Matrix_RotateRPY(this->actor.shape.rot.x - 0x8000, this->actor.shape.rot.y, 0, 1);
    Matrix_MultVec3f(&D_809B8080, &this->unk158[0]);
    this->unk2F6.y = sp5C.y;
    this->unk2F6.x = sp5C.x + 0x8000;

    for (i = 0; i < 13; i++) {
        Matrix_Translate(this->unk158[i].x, this->unk158[i].y, this->unk158[i].z, 0);
        Math_SmoothStepToS(&this->unk2A8[i].y, this->unk2A8[i+1].y, 3, this->unk31C, 0xB6);
        Math_SmoothStepToS(&this->unk2A8[i].x, this->unk2A8[i+1].x, 3, this->unk31C, 0xB6);
        Matrix_RotateRPY(this->unk2A8[i].x - 0x8000, this->unk2A8[i].y, 0, 1);
        Matrix_MultVec3f(&D_809B8080, &this->unk158[i+1]);
    }
    this->unk2F6.x = this->unk2A8[12].x;
    this->unk2F6.y = this->unk2A8[12].y;
    if (!(player->stateFlags1 & 0x4000000) && (this->actor.xzDistToPlayer <= 175.0f) && (this->actor.world.pos.y == this->actor.home.pos.y + 100.0f)) {
        func_809B6B04(this);
    }
}

void func_809B69D4(Actor* thisx) {
    EnBa* this = THIS;
    this->unk14C = 0;
    this->actor.speedXZ = Rand_CenteredFloat(8.0f);
    this->actor.world.rot.y = Rand_CenteredFloat(65535.0f);
    this->unk318 = 0x14;
    this->actor.gravity = -2.0f;
    func_809B6350(this, func_809B6A44);
}

void func_809B6A44(EnBa* this, GlobalContext* globalCtx) {
    if ((this->actor.bgCheckFlags & 1) != 0) {
        this->actor.scale.y -= 0.001f;
        this->actor.scale.x += 0.0005f;
        this->actor.scale.z += 0.0005f;
        this->unk318--;
        if (this->unk318 == 0) {
            Actor_Kill(&this->actor);
            return;
        }
    } else {
        Actor_MoveForward(&this->actor);
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 30.0f, 28.0f, 80.0f, 5);
    }
}

void func_809B6B04(EnBa* this) {
    this->unk14C = 3;
    this->unk318 = (u16)0x14;
    this->unk31A = (u16)0;
    this->unk31C = (u16)0x5DC;
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.speedXZ = 20.0f;
    func_809B6350(this, func_809B6B58);
}

void func_809B6B58(EnBa* this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s16 temp;
    s16 i;
    Vec3s sp58;
    s16 phi_fp;

    Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y + 60.0f, 1.0f, 10.0f, 0.0f);
    if ((this->actor.xzDistToPlayer <= 175.0f) || (this->unk31A != 0)) {
        if (this->unk318 == 0x14) {
            Audio_PlayActorSound2(&this->actor, 0x3959);
            this->unk31C = (u16)0x5DC;
        }
        if (this->unk318 != 0) {
            this->unk31A = 10;
            this->unk318--;
            if (this->unk318 >= 11) {
                this->unk2FC = player->actor.world.pos;
                this->unk2FC.y += 30.0f;
                phi_fp = this->actor.yawTowardsPlayer;
            } else {
                phi_fp = (s16)Math_Vec3f_Yaw(&this->actor.world.pos, &this->unk2FC);
            }
            Math_SmoothStepToS(&this->unk31C, 0x5DC, 1, 0x1E, 0);
            func_80035844(&this->actor.world.pos, &this->unk158[0], &sp58.x, 0);
            Math_SmoothStepToS(&this->actor.shape.rot.y, sp58.y, 1, this->unk31C, 0);
            Math_SmoothStepToS(&this->actor.shape.rot.x, (sp58.x + 0x8000), 1, this->unk31C, 0);
            Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0);
            Matrix_RotateRPY((this->actor.shape.rot.x - 0x8000), this->actor.shape.rot.y, 0, 1);
            Matrix_MultVec3f(&D_809B8080, &this->unk158[0]);

            for (i = 0; i < 13; i++){
                Math_SmoothStepToS(&this->unk2A8[i].x, (i * 0x4B0) - 0x4000, 1, this->unk31C, 0);
                Math_SmoothStepToS(&this->unk2A8[i].y, phi_fp, 1, this->unk31C, 0);
                Matrix_Translate(this->unk158[i].x, this->unk158[i].y, this->unk158[i].z, 0);
                Matrix_RotateRPY((this->unk2A8[i].x - 0x8000), this->unk2A8[i].y, 0, 1);
                Matrix_MultVec3f(&D_809B8080, &this->unk158[i+1]);
            }
        } else {
            if (this->unk31A == 0xA) {
                Audio_PlayActorSound2(&this->actor, 0x3958);
            }
            if (this->unk31A != 0) {
                this->unk31C = 0x1F40;
                this->actor.speedXZ = 30.0f;
                phi_fp = Math_Vec3f_Yaw(&this->actor.world.pos, &this->unk2FC);
                temp = Math_Vec3f_Pitch(&this->actor.world.pos, &this->unk158[0]) + 0x8000;
                Math_SmoothStepToS(&this->actor.shape.rot.y, phi_fp, 1, this->unk31C, 0);
                Math_SmoothStepToS(&this->actor.shape.rot.x, temp, 1, this->unk31C, 0);
                Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0);
                Matrix_RotateRPY(this->actor.shape.rot.x - 0x8000, this->actor.shape.rot.y, 0, 1);
                Matrix_MultVec3f(&D_809B8080, this->unk158);

                for (i = 0; i < 13; i++){
                    temp = -Math_CosS(this->unk31A * 0xCCC) * (i * 0x4B0);
                    Math_SmoothStepToS(&this->unk2A8[i].x, temp - 0x4000, 1, this->unk31C, 0);
                    Math_SmoothStepToS(&this->unk2A8[i].y, phi_fp, 1, this->unk31C, 0);
                    Matrix_Translate(this->unk158[i].x, this->unk158[i].y, this->unk158[i].z, 0);
                    Matrix_RotateRPY((s16) (this->unk2A8[i].x - 0x8000), this->unk2A8[i].y, 0, 1);
                    Matrix_MultVec3f(&D_809B8080, &this->unk158[i+1]);
                }
                this->unk31A--;
            } else if ((this->actor.xzDistToPlayer > 175.0f) || (player->stateFlags1 & 0x4000000)) {
                func_809B6568(&this->actor);
            } else {
                func_809B6B04(this);
                this->unk318 = 27;
                this->unk31C = 750;
            }
        }
        this->unk2F6.x = this->unk2A8[12].x;
        this->unk2F6.y = this->unk2A8[12].y;
        if (this->unk320.base.atFlags & 2) {
            this->unk320.base.atFlags &= ~2;
            if (&player->actor == this->unk320.base.at) {
                func_8002F71C(globalCtx, &this->actor, 8.0f, this->actor.yawTowardsPlayer, 8.0f);
            }
        }
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->unk320.base);
        return;
    }
    if ((this->actor.xzDistToPlayer > 175.0f) || (player->stateFlags1 & 0x4000000)) {
        func_809B6568(&this->actor);
        return;
    }
    func_809B6B04(this);
    this->unk318 = 0x1B;
    this->unk31C = 0x2EE;
}

void func_809B7174(EnBa *this) {
    this->unk14C = 1;
    this->unk31C = 0x5DC;
    this->unk318 = 0x14;
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.speedXZ = 10.0f;
    Audio_PlayActorSound2(&this->actor, (u16)0x395AU);
    func_8003426C(&this->actor, (u16)0x4000, (u16)0xFF, (u16)0, 0xC);
    func_809B6350(this, func_809B71F0);
}

void func_809B71F0(EnBa* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3s sp6C;

    Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y + 330.0f, 1.0f, 30.0f, 0.0f);
    this->unk2FC = this->actor.world.pos;
    if (globalCtx->gameplayFrames % 0x10 == 0) {
        this->unk308.z += Rand_CenteredFloat(180.0f);
        this->unk314 += Rand_CenteredFloat(180.0f);
        this->unk308.x = Math_SinF(this->unk308.z) * 80.0f;
        this->unk308.y = Math_CosF(this->unk314) * 80.0f;
    }
    this->unk2FC.y -= 448.0f;
    this->unk2FC.x += this->unk308.x;
    this->unk2FC.z += this->unk308.y;
    func_80033AEC(&this->unk2FC, &this->unk158[13], 1.0f, this->actor.speedXZ, 0.0f, 0.0f);
    for (i = 12; i >= 0; i--){
        func_80035844(&this->unk158[i+1], &this->unk158[i], &sp6C.x, 0);
        Matrix_Translate(this->unk158[i+1].x, this->unk158[i+1].y, this->unk158[i+1].z, 0);
        Matrix_RotateRPY(sp6C.x, sp6C.y, 0, 1);
        Matrix_MultVec3f(&D_809B8080, &this->unk158[i]);
    }
    func_80035844(&this->actor.world.pos, &this->unk158[0], &sp6C.x, 0);
    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0);
    Math_SmoothStepToS(&this->actor.shape.rot.y, sp6C.y, 3, this->unk31C, 0xB6);
    Math_SmoothStepToS(&this->actor.shape.rot.x, sp6C.x + 0x8000, 3, this->unk31C, 0xB6);
    Matrix_RotateRPY(this->actor.shape.rot.x - 0x8000, this->actor.shape.rot.y, 0, 1);
    Matrix_MultVec3f(&D_809B8080, &this->unk158[0]);

    for (i = 0; i < 13; i++) {
        func_80035844(&this->unk158[i], &this->unk158[i+1], &sp6C.x, 0);
        Matrix_Translate(this->unk158[i].x, this->unk158[i].y, this->unk158[i].z, 0);
        Math_SmoothStepToS(&this->unk2A8[i].y, sp6C.y, 3, this->unk31C, 0xB6);
        Math_SmoothStepToS(&this->unk2A8[i].x, sp6C.x + 0x8000, 3, this->unk31C, 0xB6);
        Matrix_RotateRPY(this->unk2A8[i].x - 0x8000, this->unk2A8[i].y, 0, 1);
        Matrix_MultVec3f(&D_809B8080, &this->unk158[i+1]);
    }

    this->unk2F6.x = this->unk2A8[12].x;
    this->unk2F6.y = this->unk2A8[12].y;
    this->unk318--;
    if (this->unk318 == 0) {
        func_809B6568(&this->actor);
    }
}

void func_809B75A0(EnBa* this, GlobalContext *globalCtx) {
    s16 i_2;
    s32 i;
    Vec3f sp74 = { 0.0f, 0.0f, 0.0f};
    GlobalContext* globalCtx2 = globalCtx;

    this->unk31C = 2500;
    EffectSsDeadSound_SpawnStationary(globalCtx2, &this->actor.projectedPos, 0x395B, 1, 1, 0x28);
    this->unk14C = 0;

    for (i = 7; i < 14; i++){
        Actor_Spawn(&globalCtx2->actorCtx, globalCtx2, ACTOR_EN_BA, this->unk158[i].x, this->unk158[i].y, this->unk158[i].z, 0, 0, 0, 3);
    }

    i_2 = Math_Vec3f_Pitch(&this->actor.world.pos, &this->unk158[0]) + 0x8000;
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, this->unk31C, 0);
    Math_SmoothStepToS(&this->actor.shape.rot.x, i_2, 1, this->unk31C, 0);
    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0);
    Matrix_RotateRPY(this->actor.shape.rot.x - 0x8000, this->actor.shape.rot.y, 0, 1);
    Matrix_MultVec3f(&D_809B8080, &this->unk158[0]);
    this->actor.flags &= ~1;

    for (i = 5; i < 13; i++){
        Math_SmoothStepToS(&this->unk2A8[i].x, this->unk2A8[5].x, 1, this->unk31C, 0);
        Math_SmoothStepToS(&this->unk2A8[i].y, this->unk2A8[5].y, 1, this->unk31C, 0);
        Matrix_Translate(this->unk158[i].x, this->unk158[i].y, this->unk158[i].z, 0);
        Matrix_RotateRPY(this->unk2A8[i].x - 0x8000, this->unk2A8[i].y, 0, 1);
        Matrix_MultVec3f(&sp74, &this->unk158[i+1]);    
    }
    this->unk31A = 0xF;
    func_809B6350(this, func_809B781C);
}

void func_809B781C(EnBa* this, GlobalContext *globalCtx) {
    Vec3f sp6C = { 0.0f, 0.0f, 0.0f};
    s16 temp;
    s32 i;
    

    if (this->unk31A != 0) {
        this->actor.speedXZ = 30.0f;
        this->unk31C = 8000;
        this->actor.world.pos.y += 8.0f;
        temp = Math_Vec3f_Pitch(&this->actor.world.pos, &this->unk158[0]) + 0x8000;
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, (u16)1, this->unk31C, 0);
        Math_SmoothStepToS(&this->actor.shape.rot.x, temp, 1, this->unk31C, 0);
        Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0);
        Matrix_RotateRPY(this->actor.shape.rot.x - 0x8000, this->actor.shape.rot.y, 0, 1);
        Matrix_MultVec3f(&D_809B8080, &this->unk158[0]);
        for (i = 0; i < 5; i++){
            temp = -Math_CosS(this->unk31A * 0x444) * (i * 400);
            Math_SmoothStepToS(&this->unk2A8[i].x, temp - 0x4000, 1, this->unk31C, 0);
            Math_SmoothStepToS(&this->unk2A8[i].y, this->actor.yawTowardsPlayer, 1, this->unk31C, 0);
            Matrix_Translate(this->unk158[i].x, this->unk158[i].y, this->unk158[i].z, 0);
            Matrix_RotateRPY(this->unk2A8[i].x - 0x8000, this->unk2A8[i].y, 0, 1);
            Matrix_MultVec3f(&D_809B8080, &this->unk158[i+1]);
        }
        for (i = 5; i < 13; i++){
            Math_SmoothStepToS(&this->unk2A8[i].x, this->unk2A8[5].x, 1, this->unk31C, 0);
            Math_SmoothStepToS(&this->unk2A8[i].y, this->unk2A8[5].y, 1, this->unk31C, 0);
            Matrix_Translate(this->unk158[i].x, this->unk158[i].y, this->unk158[i].z, 0);
            Matrix_RotateRPY(this->unk2A8[i].x - 0x8000, this->unk2A8[i].y, 0, 1);
            Matrix_MultVec3f(&sp6C, &this->unk158[i+1]);    
        }
        this->unk31A--;
    } else{
        Flags_SetSwitch(globalCtx, (s32) this->unk154);
        Actor_Kill(&this->actor);
    }
}

void EnBa_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnBa* this = THIS;

    if (this->actor.params < 3) {
        if ((this->unk320.base.acFlags & 2) != 0) {
            this->unk320.base.acFlags &= ~2;
            this->actor.colChkInfo.health--;
            if (this->actor.colChkInfo.health == 0) {
                func_809B75A0(this, globalCtx);
            } else {
                func_809B7174(this);
            }
        }
    }
    this->unk150(this, globalCtx);
    if (this->actor.params < 3) {
        this->actor.focus.pos = this->unk158[6];
    }
    if (this->unk14C >= 2) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk320.base);
    }
}

static u32 D_809B8118[] = {0x060024F0, 0x060027F0, 0x060029F0};

void EnBa_Draw(Actor *thisx, GlobalContext* globalCtx) {
    EnBa* this = THIS;
    s32 pad;
    s16 i;
    Mtx *temp_v0 = Graph_Alloc(globalCtx->state.gfxCtx, sizeof(Mtx)*14);
    Vec3f spA4 = { 0.0f, 0.0f, 448.0f};

    OPEN_DISPS(globalCtx->state.gfxCtx,"../z_en_ba.c", 0x3A5);
    func_80093D18(globalCtx->state.gfxCtx);
    if (this->actor.params < 3) {
        Matrix_Push();
        gSPSegment(POLY_OPA_DISP++, 0x0C, temp_v0);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_809B8118[this->actor.params]));
        gSPSegment(POLY_OPA_DISP++, 0x09, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0,
            0, 0, 16, 16, 1,
            0, (globalCtx->gameplayFrames * -10) % 128, 32, 32));
        for (i = 0; i < 14; i++, temp_v0++){
            Matrix_Translate(this->unk158[i].x, this->unk158[i].y, this->unk158[i].z, 0);
            Matrix_RotateRPY(this->unk2A8[i].x, this->unk2A8[i].y, this->unk2A8[i].z, 1);
            Matrix_Scale(this->unk200[i].x, this->unk200[i].y, this->unk200[i].z, 1);
            if ((i == 6) || (i == 13)){
                switch (i){
                    case 13:
                        Collider_UpdateSpheres(i,  &this->unk320);
                        break;
                    default:
                        Matrix_Scale(0.5f, 0.5f, 1.0f, 1);
                        Collider_UpdateSpheres(8,  &this->unk320);
                        break;
                }
            }
            Matrix_ToMtx(temp_v0, "../z_en_ba.c", 0x3CA);
        }
        Matrix_Pull();
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ba.c", 0x3CD), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, D_06000890);
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0,
            (globalCtx->gameplayFrames * 2) % 128, (globalCtx->gameplayFrames * 2) % 128, 32, 32, 1,
            (globalCtx->gameplayFrames * -5) % 128, (globalCtx->gameplayFrames * -5) % 128, 32, 32));
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0xFF, 0x7D, 0x64, 0xFF);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ba.c", 0x3DF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, D_06001D80);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx,"../z_en_ba.c", 0x3E3);
}
