/*
 * File: z_bg_hidan_rock.c
 * Overlay: ovl_Bg_Hidan_Rock
 * Description: Stone blocks (Fire Temple)
 */

#include "z_bg_hidan_rock.h"
#include "assets/objects/object_hidan_objects/object_hidan_objects.h"

#define FLAGS 0

void BgHidanRock_Init(Actor* thisx, PlayState* play);
void BgHidanRock_Destroy(Actor* thisx, PlayState* play);
void BgHidanRock_Update(Actor* thisx, PlayState* play);
void BgHidanRock_Draw(Actor* thisx, PlayState* play);

void func_8088B24C(BgHidanRock* this);

void func_8088B268(BgHidanRock* this, PlayState* play);
void func_8088B5F4(BgHidanRock* this, PlayState* play);
void func_8088B634(BgHidanRock* this, PlayState* play);
void func_8088B69C(BgHidanRock* this, PlayState* play);
void func_8088B79C(BgHidanRock* this, PlayState* play);
void func_8088B90C(BgHidanRock* this, PlayState* play);
void func_8088B954(BgHidanRock* this, PlayState* play);
void func_8088B990(BgHidanRock* this, PlayState* play);

void func_8088BC40(PlayState* play, BgHidanRock* this);

static Vec3f D_8088BF60 = { 3310.0f, 120.0f, 0.0f };

ActorProfile Bg_Hidan_Rock_Profile = {
    /**/ ACTOR_BG_HIDAN_ROCK,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_HIDAN_OBJECTS,
    /**/ sizeof(BgHidanRock),
    /**/ BgHidanRock_Init,
    /**/ BgHidanRock_Destroy,
    /**/ BgHidanRock_Update,
    /**/ BgHidanRock_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x20000000, 0x01, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NONE,
        ACELEM_NONE,
        OCELEM_NONE,
    },
    { 45, 77, -40, { 3310, 120, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -600, ICHAIN_STOP),
};

void BgHidanRock_Init(Actor* thisx, PlayState* play) {
    BgHidanRock* this = (BgHidanRock*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);

    this->type = PARAMS_GET_U(thisx->params, 0, 8);
    this->unk_169 = 0;

    thisx->params = PARAMS_GET_U(thisx->params, 8, 8);

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, thisx, &sCylinderInit);

    if (this->type == 0) {
        if (Flags_GetSwitch(play, thisx->params)) {
            Math_Vec3f_Copy(&thisx->home.pos, &D_8088BF60);
            Math_Vec3f_Copy(&thisx->world.pos, &D_8088BF60);
            this->timer = 60;
            this->actionFunc = func_8088B5F4;
        } else {
            this->actionFunc = func_8088B268;
        }
        thisx->flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED;
        CollisionHeader_GetVirtual(&gFireTempleStoneBlock1Col, &colHeader);
    } else {
        CollisionHeader_GetVirtual(&gFireTempleStoneBlock2Col, &colHeader);
        this->collider.dim.pos.x = thisx->home.pos.x;
        this->collider.dim.pos.y = thisx->home.pos.y;
        this->collider.dim.pos.z = thisx->home.pos.z;
        this->actionFunc = func_8088B634;
    }

    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
    this->timer = 0;
}

void BgHidanRock_Destroy(Actor* thisx, PlayState* play) {
    BgHidanRock* this = (BgHidanRock*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyCylinder(play, &this->collider);
    Audio_StopSfxByPos(&this->unk_170);
}

void func_8088B24C(BgHidanRock* this) {
    this->dyna.actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED;
    this->actionFunc = func_8088B990;
}

void func_8088B268(BgHidanRock* this, PlayState* play) {
    static f32 D_8088BFC0 = 0.0f;
    f32 sp2C;
    s32 temp_v1;
    s32 frame;
    Player* player = GET_PLAYER(play);

    if (this->dyna.unk_150 != 0.0f) {
        if (this->timer == 0) {
            if (D_8088BFC0 == 0.0f) {
                if (this->dyna.unk_150 > 0.0f) {
                    D_8088BFC0 += 0.01f;
                } else {
                    D_8088BFC0 -= 0.01f;
                }
            }

            this->dyna.actor.speed += 0.05f;
            this->dyna.actor.speed = CLAMP_MAX(this->dyna.actor.speed, 2.0f);

            if (D_8088BFC0 > 0.0f) {
                temp_v1 = Math_StepToF(&D_8088BFC0, 20.0f, this->dyna.actor.speed);
            } else {
                temp_v1 = Math_StepToF(&D_8088BFC0, -20.0f, this->dyna.actor.speed);
            }

            this->dyna.actor.world.pos.x = (Math_SinS(this->dyna.unk_158) * D_8088BFC0) + this->dyna.actor.home.pos.x;
            this->dyna.actor.world.pos.z = (Math_CosS(this->dyna.unk_158) * D_8088BFC0) + this->dyna.actor.home.pos.z;

            if (temp_v1) {
                player->stateFlags2 &= ~PLAYER_STATE2_4;
                this->dyna.unk_150 = 0.0f;
                this->dyna.actor.home.pos.x = this->dyna.actor.world.pos.x;
                this->dyna.actor.home.pos.z = this->dyna.actor.world.pos.z;
                D_8088BFC0 = 0.0f;
                this->dyna.actor.speed = 0.0f;
                this->timer = 5;
            }

            Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
        } else {
            player->stateFlags2 &= ~PLAYER_STATE2_4;
            this->dyna.unk_150 = 0.0f;
            if (this->timer != 0) {
                this->timer--;
            }
        }
    } else {
        this->timer = 0;
    }

    sp2C = this->dyna.actor.world.pos.z - D_8088BF60.z;
    if (sp2C < 0.5f) {
        Flags_SetSwitch(play, this->dyna.actor.params);
        Math_Vec3f_Copy(&this->dyna.actor.home.pos, &D_8088BF60);
        this->dyna.actor.world.pos.x = D_8088BF60.x;
        this->dyna.actor.world.pos.z = D_8088BF60.z;
        this->dyna.actor.speed = 0.0f;
        D_8088BFC0 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
        this->actionFunc = func_8088B79C;
    }

    frame = play->gameplayFrames & 0xFF;
    if (play->gameplayFrames & 0x100) {
        this->unk_16C = 0.0f;
    } else if (frame < 128) {
        this->unk_16C = sinf(frame * (4 * 0.001f * M_PI)) * 19.625f;
    } else if (frame < 230) {
        this->unk_16C = 19.625f;
    } else {
        this->unk_16C -= 1.0f;
        this->unk_16C = CLAMP_MIN(this->unk_16C, 0.0f);
    }

    if (sp2C < 100.0f) {
        this->unk_16C = CLAMP_MAX(this->unk_16C, 6.125f);
    }
}

void func_8088B5F4(BgHidanRock* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        func_8088B24C(this);
    }
}

void func_8088B634(BgHidanRock* this, PlayState* play) {
    if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
        this->timer = 20;
        this->dyna.actor.world.rot.y = Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) + 0x4000;
        this->actionFunc = func_8088B69C;
    }
}

void func_8088B69C(BgHidanRock* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer != 0) {
        this->dyna.actor.world.pos.x =
            this->dyna.actor.home.pos.x + 5.0f * Math_SinS(this->dyna.actor.world.rot.y + this->timer * 0x4000);
        this->dyna.actor.world.pos.z =
            this->dyna.actor.home.pos.z + 5.0f * Math_CosS(this->dyna.actor.world.rot.y + this->timer * 0x4000);
    } else {
        this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x;
        this->dyna.actor.world.pos.z = this->dyna.actor.home.pos.z;
        func_8088B24C(this);
    }

    if (!(this->timer % 4)) {
        Rumble_Request(this->dyna.actor.xyzDistToPlayerSq, 180, 10, 100);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BLOCK_SHAKE);
    }
}

void func_8088B79C(BgHidanRock* this, PlayState* play) {
    this->timer--;
    if (this->dyna.actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        if (this->type == 0) {
            this->timer = 60;
            this->actionFunc = func_8088B5F4;
        } else {
            this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y - 15.0f;
            this->actionFunc = func_8088B90C;
            this->dyna.actor.flags &= ~(ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED);
        }

        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        Actor_PlaySfx(&this->dyna.actor,
                      NA_SE_PL_WALK_GROUND + SurfaceType_GetSfxOffset(&play->colCtx, this->dyna.actor.floorPoly,
                                                                      this->dyna.actor.floorBgId));
    }

    this->unk_16C -= 0.5f;
    this->unk_16C = CLAMP_MIN(this->unk_16C, 0.0f);

    if (this->type == 0) {
        if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
            if (this->unk_169 == 0) {
                this->unk_169 = 3;
            }
            Camera_RequestSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_ELEVATOR_PLATFORM);
        } else if (!DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
            if (this->unk_169 != 0) {
                Camera_RequestSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_DUNGEON0);
            }
            this->unk_169 = 0;
        }
    }
}

void func_8088B90C(BgHidanRock* this, PlayState* play) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 1.0f)) {
        this->actionFunc = func_8088B634;
    }
}

void func_8088B954(BgHidanRock* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        this->actionFunc = func_8088B79C;
        this->dyna.actor.velocity.y = 0.0f;
    }
}

void func_8088B990(BgHidanRock* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->timer++;
    if (this->dyna.unk_150 != 0.0f) {
        this->dyna.actor.speed = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
    }

    if ((this->type == 0 && (Math_SmoothStepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 1820.0f,
                                                0.25f, 20.0f, 0.5f) < 0.1f)) ||
        ((this->type != 0) && (Math_SmoothStepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 480.0,
                                                  0.25f, 20.0f, 0.5f) < 0.1f))) {
        if (this->type == 0) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        }
        this->timer = 20;
        this->actionFunc = func_8088B954;
    }

    this->unk_16C = (this->dyna.actor.world.pos.y + 50.0f - this->dyna.actor.home.pos.y + 40.0f) / 80.0f;
    if (this->type == 0) {
        if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
            if (this->unk_169 == 0) {
                this->unk_169 = 3;
            }
            Camera_RequestSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_ELEVATOR_PLATFORM);
        } else if (!DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
            if (this->unk_169 != 0) {
                Camera_RequestSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_DUNGEON0);
            }
            this->unk_169 = 0;
        }
    }
}

void BgHidanRock_Update(Actor* thisx, PlayState* play) {
    BgHidanRock* this = (BgHidanRock*)thisx;

    this->actionFunc(this, play);
    if (this->actionFunc == func_8088B79C) {
        Actor_MoveXZGravity(&this->dyna.actor);
        Actor_UpdateBgCheckInfo(play, &this->dyna.actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    }

    if (this->unk_16C > 0.0f) {
        this->collider.dim.height = sCylinderInit.dim.height * this->unk_16C;
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }
}

static void* sVerticalFlamesTexs[] = {
    gFireTempleBigVerticalFlame0Tex, gFireTempleBigVerticalFlame1Tex, gFireTempleBigVerticalFlame2Tex,
    gFireTempleBigVerticalFlame3Tex, gFireTempleBigVerticalFlame4Tex, gFireTempleBigVerticalFlame5Tex,
    gFireTempleBigVerticalFlame6Tex, gFireTempleBigVerticalFlame7Tex,
};

void func_8088BC40(PlayState* play, BgHidanRock* this) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_hidan_rock.c", 808);

    POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_20);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x01, 255, 255, 0, 150);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 255);

    if (this->type == 0) {
        Matrix_Translate(D_8088BF60.x, D_8088BF60.y - 40.0f, D_8088BF60.z, MTXMODE_NEW);
    } else {
        Matrix_Translate(this->dyna.actor.home.pos.x, this->dyna.actor.home.pos.y - 40.0f, this->dyna.actor.home.pos.z,
                         MTXMODE_NEW);
    }

    Matrix_RotateZYX(0, Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) + 0x8000, 0, MTXMODE_APPLY);
    Matrix_Translate(-10.5f, 0.0f, 0.0f, MTXMODE_APPLY);
    Matrix_Scale(6.0f, this->unk_16C, 6.0f, MTXMODE_APPLY);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sVerticalFlamesTexs[play->gameplayFrames & 7]));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_hidan_rock.c", 853);
    gSPDisplayList(POLY_XLU_DISP++, gFireTempleBigVerticalFlameDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_hidan_rock.c", 857);
}

void BgHidanRock_Draw(Actor* thisx, PlayState* play) {
    BgHidanRock* this = (BgHidanRock*)thisx;
    s32 pad;

    if (this->type == 0) {
        Gfx_DrawDListOpa(play, gFireTempleStoneBlock1DL);
    } else {
        Gfx_DrawDListOpa(play, gFireTempleStoneBlock2DL);
    }

    if (this->unk_16C > 0.0f) {
        if (this->type == 0) {
            SkinMatrix_Vec3fMtxFMultXYZ(&play->viewProjectionMtxF, &D_8088BF60, &this->unk_170);
        } else {
            SkinMatrix_Vec3fMtxFMultXYZ(&play->viewProjectionMtxF, &this->dyna.actor.home.pos, &this->unk_170);
        }

        Sfx_PlaySfxAtPos(&this->unk_170, NA_SE_EV_FIRE_PILLAR - SFX_FLAG);
        func_8088BC40(play, this);
    }
}
