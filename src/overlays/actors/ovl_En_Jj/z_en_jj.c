/*
 * File: z_en_jj.c
 * Overlay: ovl_En_Jj
 * Description: Lord Jabu-Jabu
 */

#include "z_en_jj.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_jj/object_jj.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void EnJj_Init(Actor* thisx, PlayState* play);
void EnJj_Destroy(Actor* thisx, PlayState* play);
void EnJj_Update(Actor* thisx, PlayState* play);
void EnJj_Draw(Actor* thisx, PlayState* play);

void func_80A87BEC(EnJj* this, PlayState* play);
void func_80A87C30(EnJj* this, PlayState* play);
void func_80A87CEC(EnJj* this, PlayState* play);
void func_80A87EF0(EnJj* this, PlayState* play);
void func_80A87F44(Actor* thisx, PlayState* play);

ActorProfile En_Jj_Profile = {
    /**/ ACTOR_EN_JJ,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_JJ,
    /**/ sizeof(EnJj),
    /**/ EnJj_Init,
    /**/ EnJj_Destroy,
    /**/ EnJj_Update,
    /**/ EnJj_Draw,
};

static s32 sPad = 0;

#include "z_en_jj_cutscene_data.inc.c"

static s32 sPad2[2] = { 0 };

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000004, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 170, 150, 0, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 87, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 3300, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1100, ICHAIN_STOP),
};
static Vec3f D_80A88CF0 = { -1589.0f, 53.0f, -43.0f };
static void* D_80A88CFC[5] = {
    gObjectJjEyeOpenTex,
    gObjectJjEyeHalfTex,
    gObjectJjEyeClosedTex,
};

void func_80A87800(EnJj* this, void (*arg1)(EnJj*, PlayState*)) {
    this->unk2FC = arg1;
}

void EnJj_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnJj* this = (EnJj*)thisx;
    CollisionHeader* sp4C;

    sp4C = NULL;
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    ActorShape_Init(&this->dyna.actor.shape, 0.0f, NULL, 0.0f);
    switch (this->dyna.actor.params) {
        case -1:
            SkelAnime_InitFlex(play, &this->skelAnime, &gObjectJjSkel, &gObjectJjAnim, this->unk1A8, this->unk22C, 22);
            Animation_PlayLoop(&this->skelAnime, &gObjectJjAnim);
            this->unk30A = 0;
            this->unk30E = 0;
            this->unk30F = 0;
            this->unk310 = 0;
            this->unk311 = 0;
            if (GET_EVENTCHKINF(EVENTCHKINF_OPENED_JABU_JABU)) {
                func_80A87800(this, func_80A87BEC);
            } else {
                func_80A87800(this, func_80A87C30);
            }
            this->unk300 = (EnJj*)Actor_SpawnAsChild(
                &play->actorCtx, &this->dyna.actor, play, ACTOR_EN_JJ, this->dyna.actor.world.pos.x - 10.0f,
                this->dyna.actor.world.pos.y, this->dyna.actor.world.pos.z, 0, this->dyna.actor.world.rot.y, 0, 0);
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&gObjectJjBodyCol, &sp4C);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, sp4C);
            Collider_InitCylinder(play, &this->collider);
            Collider_SetCylinder(play, &this->collider, &this->dyna.actor, &sCylinderInit);
            this->dyna.actor.colChkInfo.mass = MASS_IMMOVABLE;
            return;

        case 0:
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&gObjectJjHeadCol, &sp4C);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, sp4C);
            DynaPoly_DisableCeilingCollision(play, &play->colCtx.dyna, this->dyna.bgId);
            this->dyna.actor.update = func_80A87F44;
            this->dyna.actor.draw = NULL;
            Actor_SetScale(&this->dyna.actor, 0.087f);
            return;

        case 1:
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&object_jj_00BA8C_Col, &sp4C);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, sp4C);
            this->dyna.actor.update = func_80A87F44;
            this->dyna.actor.draw = NULL;
            Actor_SetScale(&this->dyna.actor, 0.087f);
            return;
    }
}

void EnJj_Destroy(Actor* thisx, PlayState* play) {
    EnJj* this = (EnJj*)thisx;

    switch (this->dyna.actor.params) {
        case -1:
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            Collider_DestroyCylinder(play, &this->collider);
            return;

        case 0:
        case 1:
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            return;
    }
}

void func_80A87B1C(EnJj* this) {
    if (this->unk30F > 0) {
        this->unk30F--;
    } else {
        this->unk30E++;
        if (this->unk30E >= 3) {
            this->unk30E = 0;
            if (this->unk310 > 0) {
                this->unk310--;
            } else {
                this->unk30F = Rand_S16Offset(0x14, 0x14);
                this->unk310 = this->unk311;
            }
        }
    }
}

void func_80A87B9C(EnJj* this, PlayState* play) {
    EnJj* unk300;

    unk300 = this->unk300;
    if (this->unk308 >= -0x1450) {
        this->unk308 -= 0x66;
        if (this->unk308 < -0xA28) {
            DynaPoly_DisableCollision(play, &play->colCtx.dyna, unk300->dyna.bgId);
        }
    }
}

void func_80A87BEC(EnJj* this, PlayState* play) {
    if (this->dyna.actor.xzDistToPlayer < 300.0f) {
        func_80A87800(this, func_80A87B9C);
    }
}

void func_80A87C30(EnJj* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((Math_Vec3f_DistXZ(&D_80A88CF0, &player->actor.world.pos) < 300.0f) && play->isPlayerDroppingFish(play)) {
        this->unk30C = 0x64;
        func_80A87800(this, func_80A87CEC);
    }
    this->collider.dim.pos.x = -0x4DD;
    this->collider.dim.pos.y = 0x14;
    this->collider.dim.pos.z = -0x30;
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

void func_80A87CEC(EnJj* this, PlayState* play) {
    EnJj* temp_v1;
    Actor* sp1C;

    temp_v1 = this->unk300;
    if (this->unk30C > 0) {
        this->unk30C--;
        return;
    }
    func_80A87800(this, func_80A87EF0);
    play->csCtx.script = gJabuInhalingCs;
    gSaveContext.cutsceneTrigger = 1;
    DynaPoly_DisableCollision(play, &play->colCtx.dyna, temp_v1->dyna.bgId);
    Camera_SetFinishedFlag(play->cameraPtrs[play->activeCamId]);
    SET_EVENTCHKINF(EVENTCHKINF_OPENED_JABU_JABU);
    Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
}

void func_80A87D94(EnJj* this, PlayState* play) {
    switch (play->csCtx.actorCues[2]->id) {
        case 1:
            if (this->unk30A & 2) {
                this->unk30E = 0;
                this->unk30F = Rand_S16Offset(0x14, 0x14);
                this->unk310 = 0;
                this->unk311 = 0;
                this->unk30A ^= 2;
            }
            break;

        case 2:
            this->unk30A |= 1;
            if (!(this->unk30A & 8)) {
                this->unk304 = Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_EFF_DUST, -1100.0f,
                                                  105.0f, -27.0f, 0, 0, 0, 0);
                this->unk30A |= 8;
            }
            break;

        case 3:
            if (!(this->unk30A & 2)) {
                this->unk30E = 0;
                this->unk30F = 0;
                this->unk310 = 1;
                this->unk311 = 0;
                this->unk30A |= 2;
            }
            break;
    }
    if (this->unk30A & 1) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_JABJAB_BREATHE - SFX_FLAG);
        if (this->unk308 >= -0x1450) {
            this->unk308 -= 0x66;
        }
    }
}

void func_80A87EF0(EnJj* this, PlayState* play) {
    if (!(this->unk30A & 4)) {
        this->unk30A |= 4;
        if (this->unk304 != NULL) {
            Actor_Kill(this->unk304);
            this->dyna.actor.child = NULL;
        }
    }
}

void func_80A87F44(Actor* thisx, PlayState* play) {
}

void EnJj_Update(Actor* thisx, PlayState* play) {
    EnJj* this = (EnJj*)thisx;

    if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[2] != NULL)) {
        func_80A87D94(this, play);
    } else {
        this->unk2FC(this, play);
        if (this->skelAnime.curFrame == 41.0f) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_JABJAB_GROAN);
        }
    }
    func_80A87B1C(this);
    SkelAnime_Update(&this->skelAnime);
    Actor_SetScale(&this->dyna.actor, 0.087f);
    this->skelAnime.jointTable[10].z = (s16)this->unk308;
}

void EnJj_Draw(Actor* thisx, PlayState* play) {
    EnJj* this = (EnJj*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_jj.c", 879);
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    Matrix_Translate(0.0f, (cosf(this->skelAnime.curFrame * 0.076624215f) * 10.0f) - 10.0f, 0.0f, MTXMODE_APPLY);
    Matrix_Scale(10.0f, 10.0f, 10.0f, MTXMODE_APPLY);
    gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80A88CFC[this->unk30E]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, (s32)this->skelAnime.dListCount,
                          NULL, NULL, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_jj.c", 898);
}
