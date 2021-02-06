/*
 * File: z_en_anubice_fire.c
 * Overlay: ovl_En_Anubice_Fire
 * Description: Anubis Fire Attack
 */

#include "z_en_anubice_fire.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000010

#define THIS ((EnAnubiceFire*)thisx)

void EnAnubiceFire_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAnubiceFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAnubiceFire_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAnubiceFire_Draw(Actor* thisx, GlobalContext* globalCtx);

//extern UNK_TYPE D_06003510;

/*
const ActorInit En_Anubice_Fire_InitVars = {
    ACTOR_EN_ANUBICE_FIRE,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_ANUBICE,
    sizeof(EnAnubiceFire),
    (ActorFunc)EnAnubiceFire_Init,
    (ActorFunc)EnAnubiceFire_Destroy,
    (ActorFunc)EnAnubiceFire_Update,
    (ActorFunc)EnAnubiceFire_Draw,
};

static ColliderCylinderInit D_809B31E0 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x01, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 0, 0, 0, { 0, 0, 0 } },
};
*/

extern ColliderCylinderInit D_809B31E0;

/*
glabel D_809B320C
 .word 0x00000000, 0x00000000, 0x00000000
*/
extern Vec3f D_809B320C;
/*
glabel D_809B3218
 .word 0x00000000, 0x00000000, 0x00000000
*/
extern UNK_TYPE D_809B3218;
/*
glabel D_809B3224
 .word 0x00000000, 0x00000000, 0x00000000
*/
extern UNK_TYPE D_809B3224;
/*
glabel D_809B3230
 .word 0xFFFF00FF
*/
extern UNK_TYPE D_809B3230;
/*
glabel D_809B3234
 .word 0xFF0000FF
*/
extern UNK_TYPE D_809B3234;
/*
glabel D_809B3238
 .word 0x00000000, 0x00000000, 0x00000000
*/
extern UNK_TYPE D_809B3238;
/*
glabel D_809B3244
 .word 0x00000000, 0x00000000, 0x00000000
*/
extern UNK_TYPE D_809B3244;
/*
glabel D_809B3250
 .word 0x00000000, 0x00000000, 0x00000000
*/
extern UNK_TYPE D_809B3250;
/*
glabel D_809B325C
 .word 0x00000000, 0x00000000, 0x00000000
*/
extern UNK_TYPE D_809B325C;
/*
glabel D_809B3268
 .word 0xFFFF00FF
*/
extern UNK_TYPE D_809B3268;
/*
glabel D_809B326C
 .word 0xFF0000FF
*/
extern UNK_TYPE D_809B326C;
/*
glabel D_809B3270
 .word gDust4Tex, gDust5Tex, gDust6Tex, gDust7Tex, gDust8Tex, gDust7Tex, gDust6Tex, gDust5Tex
*/
extern UNK_TYPE D_809B3270;


void func_809B26EC(EnAnubiceFire* this, GlobalContext* globalCtx);
void func_809B27D8(EnAnubiceFire* this, GlobalContext* globalCtx);


void EnAnubiceFire_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnAnubiceFire* this = THIS;
    s32 i;

    Collider_InitCylinder(globalCtx, &this->cylinder);
    Collider_SetCylinder(globalCtx, &this->cylinder, &this->actor, &D_809B31E0);

    this->unk_15A = 0x1E;
    this->unk_154 = 2.0f;
    this->unk_150 = 0.0f;

    for (i = 0; i < 6; i++) {
        this->unk_160[i] = this->actor.world.pos;
    }

    this->unk_15E = 0;
    this->unk_14C = &func_809B26EC;
}

void EnAnubiceFire_Destroy(Actor* thisx, GlobalContext *globalCtx) {
    EnAnubiceFire* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->cylinder);
}

void func_809B26EC(EnAnubiceFire* this, GlobalContext* globalCtx) {
    Vec3f sp24 = D_809B320C;

    Matrix_Push();
    Matrix_RotateY(BINANG_TO_RAD(this->actor.world.rot.y), MTXMODE_NEW);
    Matrix_RotateX(BINANG_TO_RAD(this->actor.world.rot.x), MTXMODE_APPLY);
    sp24.z = 15.0f;
    Matrix_MultVec3f(&sp24, &this->actor.velocity);
    Matrix_Pull();

    this->unk_14C = func_809B27D8;
    this->actor.world.rot.x = this->actor.world.rot.y = this->actor.world.rot.z = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/func_809B27D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/func_809B2B48.s")

/*
void EnAnubiceFire_Update(Actor* thisx, GlobalContext *globalCtx) {
    EnAnubiceFire* this = THIS;
    CollisionCheckContext *sp34;
    void *sp30;
    PosRot *sp2C;
    ColliderCylinder *sp28;
    ColliderCylinder *temp_a1_2;
    CollisionCheckContext *temp_a1_3;
    PosRot *temp_t0;
    Vec3s *temp_a1;
    f32 temp_f0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s32 temp_f4;
    s32 temp_v0;
    void *temp_a0;
    void *temp_v1;
    void *phi_a0;
    void *phi_v1;
    s32 phi_v0;

    Actor_SetScale((Actor *) this, (bitwise f32) (bitwise s32) this->unk_150);
    this->unk_14C(this, globalCtx);
    func_8002D7EC((Actor *) this);
    temp_t0 = &this->actor.world;
    temp_a1 = &this->actor.world.rot;
    this->unk_160[0].x = (bitwise f32) (bitwise s32) temp_t0->pos.x;
    this->unk_160[0].y = (bitwise f32) (bitwise s32) temp_t0->pos.y;
    this->unk_160[0].z = (bitwise f32) (bitwise s32) temp_t0->pos.z;
    phi_a0 = temp_a1 + 0x160;
    phi_v1 = temp_a1 + 0x16C;
    phi_v0 = 4;
loop_1:
    temp_v0 = phi_v0 - 1;
    temp_v1 = phi_v1 - 0xC;
    temp_v1->unkC = (s32) phi_a0->unk0;
    temp_a0 = phi_a0 - 0xC;
    temp_v1->unk10 = (s32) phi_a0->unk4;
    temp_v1->unk14 = (s32) temp_a0->unk14;
    phi_a0 = temp_a0;
    phi_v1 = temp_v1;
    phi_v0 = temp_v0;
    if (temp_v0 >= 0) {
        goto loop_1;
    }
    temp_v0_2 = this->unk_15A;
    if (temp_v0_2 != 0) {
        this->unk_15A = temp_v0_2 - 1;
    }
    temp_v0_3 = (s16) this->unk_15C;
    if (temp_v0_3 != 0) {
        this->unk_15C = temp_v0_3 - 1;
    }
    sp2C = temp_t0;
    Actor_UpdateBgCheckInfo(globalCtx, (Actor *) this, 5.0f, 5.0f, 10.0f, 0x1D);
    temp_f0 = this->unk_150;
    if (!(temp_f0 < 0.6f)) {
        sp30 = &func_809B2B48;
        if (&func_809B2B48 != this->unk_14C) {
            temp_a1_2 = &this->cylinder;
            temp_f4 = (s32) ((temp_f0 * 15.0f) + 5.0f);
            this->cylinder.dim.radius = (s16) temp_f4;
            this->cylinder.dim.height = (s16) temp_f4;
            this->cylinder.dim.yShift = (s16) (s32) ((temp_f0 * -0.75f) + -15.0f);
            if (this->unk_15A != 0) {
                sp28 = temp_a1_2;
                Collider_UpdateCylinder((Actor *) this, temp_a1_2);
                temp_a1_3 = &globalCtx->colChkCtx;
                sp34 = temp_a1_3;
                CollisionCheck_SetAT(globalCtx, temp_a1_3, (Collider *) sp28);
                CollisionCheck_SetAC(globalCtx, temp_a1_3, (Collider *) sp28);
            }
            if (BgCheck_SphVsFirstPoly(&globalCtx->colCtx, (Vec3f *) sp2C, 30.0f) != 0) {
                this->actor.velocity.z = 0.0f;
                this->actor.velocity.y = 0.0f;
                this->actor.velocity.x = 0.0f;
                Audio_PlayActorSound2((Actor *) this, (u16)0x399DU);
                this->unk_14C = sp30;
            }
        }
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/EnAnubiceFire_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/EnAnubiceFire_Draw.s")
