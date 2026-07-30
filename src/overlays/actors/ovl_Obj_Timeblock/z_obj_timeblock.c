/*
 * File: z_obj_timeblock.c
 * Overlay: ovl_Obj_Timeblock
 * Description: Song of Time Block
 */

#include "z_obj_timeblock.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "one_point_cutscene.h"
#include "printf.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "translation.h"
#include "z_lib.h"
#include "ocarina.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_timeblock/object_timeblock.h"

#define FLAGS                                                                                               \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_UPDATE_DURING_OCARINA | \
     ACTOR_FLAG_LOCK_ON_DISABLED)

void ObjTimeblock_Init(Actor* thisx, PlayState* play);
void ObjTimeblock_Destroy(Actor* thisx, PlayState* play);
void ObjTimeblock_Update(Actor* thisx, PlayState* play);
void ObjTimeblock_Draw(Actor* thisx, PlayState* play);

s32 func_80BA040C(ObjTimeblock*, PlayState*);
s32 func_80BA0480(ObjTimeblock*, PlayState*);
void func_80BA0508(ObjTimeblock* arg0, PlayState* arg1);
void func_80BA0514(ObjTimeblock* this);
void func_80BA0524(ObjTimeblock* this, PlayState* play);
void func_80BA0758(ObjTimeblock* this);
void func_80BA0768(ObjTimeblock* this, PlayState* play);
void func_80BA083C(ObjTimeblock* this);
void func_80BA084C(ObjTimeblock* this, PlayState* play);

ActorProfile Obj_Timeblock_Profile = {
    /**/ ACTOR_OBJ_TIMEBLOCK,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_TIMEBLOCK,
    /**/ sizeof(ObjTimeblock),
    /**/ ObjTimeblock_Init,
    /**/ ObjTimeblock_Destroy,
    /**/ ObjTimeblock_Update,
    /**/ ObjTimeblock_Draw,
};
typedef struct struct_80BA0AF0 {
    f32 unk0;
    f32 unk4;
    s16 unk8;
} struct_80BA0AF0;
struct_80BA0AF0 D_80BA0AF0[2] = { { 1.0f, 60.0f, 0x18 }, { 0.6f, 40.0f, 0x19 } };
static f32 D_80BA0B08[8] = { 60.0f, 100.0f, 140.0f, 180.0f, 220.0f, 260.0f, 300.0f, 300.0f };
static InitChainEntry D_80BA0B28[4] = {
    ICHAIN_U8(attentionRangeType, ATTENTION_RANGE_2, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 300, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1500, ICHAIN_STOP),
};
static Color_RGB8 D_80BA0B38[8] = {
    { 0x64, 0x78, 0x8C }, { 0x50, 0x8C, 0xC8 }, { 0x64, 0x96, 0xC8 }, { 0x64, 0xC8, 0xF0 },
    { 0x50, 0x6E, 0x8C }, { 0x46, 0xA0, 0xE1 }, { 0x50, 0x64, 0x82 }, { 0x64, 0x6E, 0xBE },
};

s32 func_80B9FFA0(ObjTimeblock* this) {
    s32 var_a1;
    s32 var_v1;

    if (!PARAMS_GET_U(this->dyna.actor.params, 10, 1)) {
        if (this->unk177 == 0) {
            return this->unk175;
        }
        if (PARAMS_GET_U(this->dyna.actor.params, 15, 1)) {
            var_a1 = 1;
        } else {
            var_a1 = 0;
        }
        if (this->unk177 == 1) {
            return this->unk174 ^ var_a1;
        } else {
            s32 var_v1_2;

            if (LINK_AGE_IN_YEARS == 5) {
                var_v1_2 = 1;
            } else {
                var_v1_2 = 0;
            }
            return this->unk174 ^ var_a1 ^ var_v1_2;
        }
    }
    return (PARAMS_GET_U(this->dyna.actor.params, 15, 1) ? 1 : 0) ^ this->unk174;
}

void func_80BA0058(ObjTimeblock* this, PlayState* play) {
    Actor_Spawn(&play->actorCtx, play, ACTOR_DEMO_EFFECT, this->dyna.actor.world.pos.x, this->dyna.actor.world.pos.y,
                this->dyna.actor.world.pos.z, 0, 0, 0, (D_80BA0AF0[PARAMS_GET_U(this->dyna.actor.params, 8, 1)].unk8));
}

void func_80BA00CC(PlayState* play, s32 arg1) {
    if (Flags_GetSwitch(play, arg1) != 0) {
        Flags_UnsetSwitch(play, arg1);
        return;
    }
    Flags_SetSwitch(play, arg1);
}

void ObjTimeblock_Init(Actor* thisx, PlayState* play) {
    ObjTimeblock* this = (ObjTimeblock*)thisx;
    s32 pad;
    CollisionHeader* sp2C;

    sp2C = NULL;
    DynaPolyActor_Init(&this->dyna, 0);
    this->dyna.actor.world.rot.z = this->dyna.actor.shape.rot.z = 0;
    CollisionHeader_GetVirtual(&gSongOfTimeBlockCol, &sp2C);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, sp2C);
    Actor_ProcessInitChain(&this->dyna.actor, D_80BA0B28);
    Actor_SetScale(&this->dyna.actor, D_80BA0AF0[PARAMS_GET_U(this->dyna.actor.params, 8, 1)].unk0);
    if (PARAMS_GET_U(this->dyna.actor.params, 6, 1)) {
        this->unk177 = 0;
    } else if (PARAMS_GET_U(this->dyna.actor.params, 0, 6) < 0x38) {
        this->unk177 = 2;
    } else {
        this->unk177 = 1;
    }
    this->unk168 = func_80BA040C;
    Actor_SetFocus(&this->dyna.actor, D_80BA0AF0[PARAMS_GET_U(this->dyna.actor.params, 8, 1)].unk4);
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) {
        this->unk174 = 1;
    } else {
        this->unk174 = 0;
    }
    if (PARAMS_GET_U(this->dyna.actor.params, 15, 1)) {
        this->unk175 = 1;
    } else {
        this->unk175 = 0;
    }
    this->unk178 = func_80B9FFA0(this);
    if (PARAMS_GET_U(this->dyna.actor.params, 10, 1) == 0) {
        func_80BA0514(this);
    } else if (this->unk178 != 0) {
        func_80BA0758(this);
    } else {
        func_80BA083C(this);
    }
    PRINTF("時のブロック (<arg> %04xH <type> save:%d color:%d range:%d move:%d)\n", this->dyna.actor.params & 0xFFFF,
           this->unk177, this->dyna.actor.home.rot.z & 7, PARAMS_GET_U(this->dyna.actor.params, 11, 3),
           PARAMS_GET_U(this->dyna.actor.params, 10, 1));
}

void ObjTimeblock_Destroy(Actor* thisx, PlayState* play) {
    ObjTimeblock* this = (ObjTimeblock*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

s32 func_80BA032C(ObjTimeblock* this, PlayState* play) {
    Vec3f sp1C;
    f32 temp_fv1;

    if ((this->unk178 != 0) && (DynaPolyActor_IsPlayerAbove(&this->dyna) != 0)) {
        return 0;
    }
    if ((this->dyna.actor.xzDistToPlayer <= D_80BA0B08[PARAMS_GET_U(this->dyna.actor.params, 11, 3)])) {
        Actor_WorldToActorCoords(&this->dyna.actor, &sp1C, &GET_PLAYER(play)->actor.world.pos);
        temp_fv1 = (this->dyna.actor.scale.x * 50.0f) + 6.0f;
        if ((temp_fv1 < fabsf(sp1C.x)) || (temp_fv1 < fabsf(sp1C.z))) {
            return 1;
        }
    }
    return 0;
}

s32 func_80BA040C(ObjTimeblock* this, PlayState* play) {
    Player* temp_v1;

    temp_v1 = GET_PLAYER(play);
    if (func_80BA032C(this, play) != 0) {
        if (temp_v1->stateFlags2 & PLAYER_STATE2_24) {
            Message_StartOcarina(play, OCARINA_ACTION_FREE_PLAY);
            this->unk168 = func_80BA0480;
        } else {
            temp_v1->stateFlags2 |= PLAYER_STATE2_23;
        }
    }
    return 0;
}

s32 func_80BA0480(ObjTimeblock* this, PlayState* play) {
    if (play->msgCtx.ocarinaMode == OCARINA_MODE_04) {
        this->unk168 = func_80BA040C;
    }
    if (play->msgCtx.lastPlayedSong == OCARINA_SONG_TIME) {
        if (this->unk172 == 0xFE) {
            this->unk16E = 0x6E;
        } else {
            this->unk16E -= 1;
            if (this->unk16E == 0) {
                return 1;
            }
        }
    }
    return 0;
}

void func_80BA04F8(ObjTimeblock* this) {
    this->unk164 = func_80BA0508;
}

void func_80BA0508(ObjTimeblock* this, PlayState* play) {
}

void func_80BA0514(ObjTimeblock* this) {
    this->unk164 = func_80BA0524;
}

void func_80BA0524(ObjTimeblock* this, PlayState* play) {
    s32 var_v1;

    if ((this->unk168(this, play) != 0) && (this->unk16C <= 0)) {
        func_80BA0058(this, play);
        this->unk16C = 0xA0;
        OnePointCutscene_Attention(play, &this->dyna.actor);
        PRINTF("◯◯◯◯ Time Block 注目カメラ (frame counter  %d)\n", play->state.frames);
        this->unk170 = 0xC;
        if (this->unk177 == 0) {
            this->dyna.actor.params ^= 0x8000;
        } else {
            func_80BA00CC(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6));
        }
    }
    this->unk172 = play->msgCtx.lastPlayedSong;
    if (this->unk170 > 0) {
        this->unk170 -= 1;
        if (this->unk170 == 0) {
            if (this->unk177 == 0) {
                if (PARAMS_GET_U(this->dyna.actor.params, 15, 1)) {
                    this->unk175 = 1;
                } else {
                    this->unk175 = 0;
                }
            } else if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6)) != 0) {
                this->unk174 = 1;
            } else {
                this->unk174 = 0;
            }
        }
    }
    var_v1 = func_80B9FFA0(this);
    if ((this->unk177 == 1) && (var_v1 != this->unk178)) {
        func_80BA04F8(this);
    }
    this->unk178 = var_v1;
    if (this->unk16C == 0x32) {
        Sfx_PlaySfxCentered(0x4807U);
    }
}

void func_80BA06AC(ObjTimeblock* this, PlayState* play) {
    s32 sp24;
    s16 temp_v0;

    sp24 = PARAMS_GET_U(this->dyna.actor.params, 0, 6);
    temp_v0 = this->unk170;
    this->unk172 = play->msgCtx.lastPlayedSong;
    if (temp_v0 > 0) {
        this->unk170 = temp_v0 - 1;
        if (this->unk170 == 0) {
            if (Flags_GetSwitch(play, sp24) != 0) {
                this->unk174 = 1;
            } else {
                this->unk174 = 0;
            }
        }
    }
    this->unk178 = func_80B9FFA0(this);
    if (Flags_GetSwitch(play, sp24) != 0) {
        this->unk176 = 1;
        return;
    }
    this->unk176 = 0;
}

void func_80BA0758(ObjTimeblock* this) {
    this->unk164 = func_80BA0768;
}

void func_80BA0768(ObjTimeblock* this, PlayState* play) {
    if ((this->unk168(this, play) != 0) && (this->unk16C <= 0)) {
        this->unk170 = 0xC;
        func_80BA0058(this, play);
        this->unk16C = 0xA0;
        OnePointCutscene_Attention(play, &this->dyna.actor);
        PRINTF("◯◯◯◯ Time Block 注目カメラ (frame counter  %d)\n", play->state.frames);
        func_80BA00CC(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6));
    }
    func_80BA06AC(this, play);
    if (this->unk16C == 0x32) {
        Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
    }
    if ((this->unk178 == 0) && (this->unk16C <= 0)) {
        func_80BA083C(this);
    }
}

void func_80BA083C(ObjTimeblock* this) {
    this->unk164 = func_80BA084C;
}

void func_80BA084C(ObjTimeblock* this, PlayState* play) {
    s32 var_v1;
    s32 flag = PARAMS_GET_U(this->dyna.actor.params, 0, 6);

    if (Flags_GetSwitch(play, flag) != 0) {
        var_v1 = 1;
    } else {
        var_v1 = 0;
    }
    if (this->unk176 ^ var_v1) {
        if ((PARAMS_GET_U(this->dyna.actor.params, 15, 1) ? 1 : 0) ^ var_v1) {
            if (this->unk16C <= 0) {
                func_80BA0058(this, play);
                this->unk16C = 0xA0;
            }
            this->unk170 = 0xC;
        }
    }
    func_80BA06AC(this, play);
    if ((this->unk178 != 0) && (this->unk16C <= 0)) {
        func_80BA0758(this);
    }
}

void ObjTimeblock_Update(Actor* thisx, PlayState* play) {
    s16 temp_v0;
    ObjTimeblock* this = (ObjTimeblock*)thisx;

    this->unk164(this, play);
    temp_v0 = this->unk16C;
    if (temp_v0 > 0) {
        this->unk16C = temp_v0 - 1;
    }
    if (this->unk178 != 0) {
        DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
        return;
    }
    DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
}

void ObjTimeblock_Draw(Actor* thisx, PlayState* play) {
    Color_RGB8* sp44;

    if (((ObjTimeblock*)thisx)->unk178 != 0) {
        sp44 = &D_80BA0B38[thisx->home.rot.z & 7];
        OPEN_DISPS(play->state.gfxCtx, "../z_obj_timeblock.c", 762);
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_obj_timeblock.c", 766);
        gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, sp44->r, sp44->g, sp44->b, 255);
        gSPDisplayList(POLY_OPA_DISP++, gSongOfTimeBlockDL);
        CLOSE_DISPS(play->state.gfxCtx, "../z_obj_timeblock.c", 772);
    }
}
