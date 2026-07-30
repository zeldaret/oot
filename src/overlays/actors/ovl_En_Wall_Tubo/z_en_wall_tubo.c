/*
 * File: z_en_wall_tubo.c
 * Overlay: ovl_En_Wall_Tubo
 * Description: Bombchu Bowling Alley Wall 2
 */

#include "z_en_wall_tubo.h"
#include "overlays/actors/ovl_Bg_Bowl_Wall/z_bg_bowl_wall.h"
#include "overlays/actors/ovl_En_Bom_Bowl_Man/z_en_bom_bowl_man.h"
#include "overlays/actors/ovl_En_Bom_Chu/z_en_bom_chu.h"

#include "rand.h"
#include "regs.h"
#include "sfx.h"
#include "printf.h"
#include "quake.h"
#include "z_lib.h"
#include "debug_display.h"
#include "effect.h"
#include "play_state.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnWallTubo_Init(Actor* thisx, PlayState* play);
void EnWallTubo_Destroy(Actor* thisx, PlayState* play);
void EnWallTubo_Update(Actor* thisx, PlayState* play);

void func_80B2EE5C(EnWallTubo* this, PlayState* play);
void func_80B2EE9C(EnWallTubo* this, PlayState* play);
void func_80B2F0B8(EnWallTubo* this, PlayState* play);

ActorProfile En_Wall_Tubo_Profile = {
    /**/ ACTOR_EN_WALL_TUBO,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnWallTubo),
    /**/ EnWallTubo_Init,
    /**/ EnWallTubo_Destroy,
    /**/ EnWallTubo_Update,
    /**/ NULL,
};
Vec3f D_80B2F340 = { 0.0f, 0.1f, 0.0f };
Vec3f D_80B2F34C = { 0.0f, 0.0f, 0.0f };
Vec3f D_80B2F358 = { 0.0f, 0.1f, 0.0f };
Vec3f D_80B2F364 = { 0.0f, 0.0f, 0.0f };

void EnWallTubo_Init(Actor* thisx, PlayState* play) {
    EnWallTubo* this = (EnWallTubo*)thisx;

    PRINTF("\n\n");
    PRINTF("\x1b[33m☆☆☆☆☆ 壁のツボ ☆☆☆☆☆ \n\x1b[m");
    this->unk164 = this->actor.world.pos;
    this->unk14C = func_80B2EE5C;
}

void EnWallTubo_Destroy(Actor* thisx, PlayState* play) {
}

void func_80B2EE5C(EnWallTubo* this, PlayState* play) {
    Actor* var_v0;

    var_v0 = play->actorCtx.actorLists[4].head;
    while (var_v0 != NULL) {
        if (var_v0->id != ACTOR_EN_BOM_BOWL_MAN) {
            var_v0 = var_v0->next;
            continue;
        }
        this->unk160 = (EnBomBowlMan*)var_v0;
        break;
    }
    this->unk14C = func_80B2EE9C;
}

void func_80B2EE9C(EnWallTubo* this, PlayState* play) {
    Actor* var_v0;
    Actor* thisx = &this->actor;
    Vec3f sp4C;
    Vec3f sp40;
    Vec3f diff;
    s16 sp32;
    s16 temp_v0;

    sp4C = D_80B2F340;
    sp40 = D_80B2F34C;
    if ((this->unk160->unk_258 != 0) && (play->cameraPtrs[CAM_ID_MAIN]->setting == CAM_SET_CHU_BOWLING)) {
        var_v0 = play->actorCtx.actorLists[3].head;
        while (var_v0 != NULL) {
            if ((var_v0 == thisx) || (var_v0->id != ACTOR_EN_BOM_CHU)) {
                var_v0 = var_v0->next;
                continue;
            }
            diff.x = var_v0->world.pos.x - this->actor.world.pos.x;
            diff.y = var_v0->world.pos.y - this->actor.world.pos.y;
            diff.z = var_v0->world.pos.z - this->actor.world.pos.z;
            if (((fabsf(diff.x) < 40.0f) || (gRegEditor->data[0x962] != 0)) &&
                ((fabsf(diff.y) < 40.0f) || (gRegEditor->data[0x962] != 0)) &&
                ((fabsf(diff.z) < 40.0f) || (gRegEditor->data[0x962] != 0))) {
                this->unk160->unk23E_arr[this->actor.params] = 1;
                ((EnBomChu*)var_v0)->timer = 2;
                Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
                this->unk150 = 0x3C;
                EffectSsBomb2_SpawnLayered(play, &this->unk154, &sp40, &sp4C, 200, 40);
                temp_v0 = Quake_Request(play->cameraPtrs[play->activeCamId], QUAKE_TYPE_1);
                sp32 = temp_v0;
                Quake_SetSpeed(temp_v0, 0x7FFF);
                Quake_SetPerturbations(sp32, 0x64, 0, 0, 0);
                Quake_SetDuration(sp32, 0x64);
                this->unk14C = func_80B2F0B8;
                return;
            }
            var_v0 = var_v0->next;
        }
    }
}

void func_80B2F0B8(EnWallTubo* this, PlayState* play) {
    Actor* temp_v0;
    Vec3f sp50;
    Vec3f sp44;
    Vec3f sp38;

    sp50 = D_80B2F358;
    sp44 = D_80B2F364;
    if (!(play->gameplayFrames & 1)) {
        sp38.x = Rand_CenteredFloat(300.0f) + this->unk154.x;
        sp38.y = Rand_CenteredFloat(300.0f) + this->unk154.y;
        sp38.z = this->unk154.z;
        EffectSsBomb2_SpawnLayered(play, &sp38, &sp44, &sp50, 100, 30);
        EffectSsHahen_SpawnBurst(play, &sp38, 10.0f, 0, 50, 15, 3, -1, 10, NULL);
        Actor_PlaySfx(&this->actor, 0x180EU);
    }
    if (this->unk150 == 0) {
        temp_v0 = this->actor.parent;
        if ((temp_v0 != NULL) && (temp_v0->update != NULL)) {
            ((BgBowlWall*)temp_v0)->unk180 = 1;
            PRINTF("\x1b[32m☆☆☆☆ やった原！ ☆☆☆☆☆ \n\x1b[m");
            PRINTF("\x1b[33m☆☆☆☆ やった原！ ☆☆☆☆☆ \n\x1b[m");
            PRINTF("\x1b[34m☆☆☆☆ やった原！ ☆☆☆☆☆ \n\x1b[m");
            PRINTF("\x1b[35m☆☆☆☆ やった原！ ☆☆☆☆☆ \n\x1b[m");
            PRINTF("\x1b[36m☆☆☆☆ やった原！ ☆☆☆☆☆ \n\x1b[m");
        }
        Actor_Kill(&this->actor);
    }
}

void EnWallTubo_Update(Actor* thisx, PlayState* play) {
    EnWallTubo* this = (EnWallTubo*)thisx;

    if (this->unk150 != 0) {
        this->unk150--;
    }
    this->unk14C(this, play);
    if (DEBUG_FEATURES && gRegEditor->data[0x960] != 0) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, 0, 0, 255, 255, 4, play->state.gfxCtx);
    }
}
