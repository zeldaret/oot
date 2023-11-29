/*
 * File: z_bg_spot02_objects.c
 * Overlay: ovl_Bg_Spot02_Objects
 * Description: Graveyard Actors
 */

#include "z_bg_spot02_objects.h"
#include "assets/objects/object_spot02_objects/object_spot02_objects.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

void BgSpot02Objects_Init(Actor* thisx, PlayState* play);
void BgSpot02Objects_Destroy(Actor* thisx, PlayState* play);
void BgSpot02Objects_Update(Actor* thisx, PlayState* play);
void BgSpot02Objects_Draw(Actor* thisx, PlayState* play);
void func_808ACCB8(Actor* thisx, PlayState* play);
void func_808AD450(Actor* thisx, PlayState* play);

void func_808AC8FC(BgSpot02Objects* this, PlayState* play);
void func_808AC908(BgSpot02Objects* this, PlayState* play);
void func_808ACA08(BgSpot02Objects* this, PlayState* play);
void func_808ACAFC(BgSpot02Objects* this, PlayState* play);
void func_808ACB58(BgSpot02Objects* this, PlayState* play);
void func_808ACC34(BgSpot02Objects* this, PlayState* play);
void func_808AD3D4(BgSpot02Objects* this, PlayState* play);

static void* D_808AD850[] = {
    object_spot02_objects_Tex_0096B0, object_spot02_objects_Tex_00A2B0, object_spot02_objects_Tex_00AEB0,
    object_spot02_objects_Tex_00BAB0, object_spot02_objects_Tex_00C6B0, object_spot02_objects_Tex_00D2B0,
    object_spot02_objects_Tex_00DEB0, object_spot02_objects_Tex_00EAB0, object_spot02_objects_Tex_00F6B0,
    object_spot02_objects_Tex_0102B0, object_spot02_objects_Tex_010EB0, object_spot02_objects_Tex_011AB0,
};

ActorInit Bg_Spot02_Objects_InitVars = {
    /**/ ACTOR_BG_SPOT02_OBJECTS,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SPOT02_OBJECTS,
    /**/ sizeof(BgSpot02Objects),
    /**/ BgSpot02Objects_Init,
    /**/ BgSpot02Objects_Destroy,
    /**/ BgSpot02Objects_Update,
    /**/ BgSpot02Objects_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgSpot02Objects_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgSpot02Objects* this = (BgSpot02Objects*)thisx;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, 0);
    this->unk_16B = (u16)(thisx->params >> 8);
    thisx->params = (u16)(thisx->params & 0xFF);

    switch (thisx->params) {
        case 0:
        case 1:
        case 2:
            Actor_ProcessInitChain(thisx, sInitChain);

            if (thisx->params == 0) {
                if (Flags_GetSwitch(play, this->unk_16B)) {
                    this->actionFunc = func_808AC8FC;
                    thisx->world.pos.y += 255.0f;
                } else {
                    this->actionFunc = func_808ACAFC;
                }

                CollisionHeader_GetVirtual(&object_spot02_objects_Col_012BA4, &colHeader);
            } else if (thisx->params == 1) {
                this->actionFunc = func_808AC8FC;
                CollisionHeader_GetVirtual(&object_spot02_objects_Col_0128D8, &colHeader);
                thisx->flags |= ACTOR_FLAG_22;
            } else {
                if (play->sceneId == SCENE_GRAVEYARD) {
                    this->actionFunc = func_808AC908;
                } else {
                    this->actionFunc = func_808AC8FC;
                }

                CollisionHeader_GetVirtual(&object_spot02_objects_Col_0133EC, &colHeader);
            }

            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);

            if ((GET_EVENTCHKINF(EVENTCHKINF_1D) && (play->sceneId == SCENE_GRAVEYARD) && (thisx->params == 2)) ||
                (LINK_IS_ADULT && (thisx->params == 1))) {
                Actor_Kill(thisx);
            }
            break;

        case 3:
            this->unk_16A = 0;
            Actor_ChangeCategory(play, &play->actorCtx, thisx, ACTORCAT_ITEMACTION);
            this->actionFunc = func_808ACC34;
            thisx->draw = func_808ACCB8;

            if (GET_EVENTCHKINF(EVENTCHKINF_1D)) {
                Actor_Kill(thisx);
            }
            break;

        case 4:
            this->timer = -12;
            this->unk_170 = 0xFFFF;
            Actor_ChangeCategory(play, &play->actorCtx, thisx, ACTORCAT_ITEMACTION);
            this->actionFunc = func_808AD3D4;
            thisx->draw = func_808AD450;
            break;
    }
}

void BgSpot02Objects_Destroy(Actor* thisx, PlayState* play) {
    BgSpot02Objects* this = (BgSpot02Objects*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_808AC8FC(BgSpot02Objects* this, PlayState* play) {
}

void func_808AC908(BgSpot02Objects* this, PlayState* play) {
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;

    if (play->csCtx.state != CS_STATE_IDLE) {
        if (play->csCtx.actorCues[3] != NULL && play->csCtx.actorCues[3]->id == 2) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_GRAVE_EXPLOSION);
            SET_EVENTCHKINF(EVENTCHKINF_1D);
            this->timer = 25;
            pos.x = (Math_SinS(this->dyna.actor.shape.rot.y) * 50.0f) + this->dyna.actor.world.pos.x;
            pos.y = this->dyna.actor.world.pos.y + 30.0f;
            pos.z = (Math_CosS(this->dyna.actor.shape.rot.y) * 50.0f) + this->dyna.actor.world.pos.z;
            EffectSsBomb2_SpawnLayered(play, &pos, &zeroVec, &zeroVec, 70, 30);
            this->actionFunc = func_808ACA08;
        }
    }
}

void func_808ACA08(BgSpot02Objects* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 20) {
        this->dyna.actor.draw = NULL;
        EffectSsHahen_SpawnBurst(play, &this->dyna.actor.world.pos, 30.0f, 0, 25, 5, 40, OBJECT_SPOT02_OBJECTS, 20,
                                 object_spot02_objects_DL_012D30);
    } else if (this->timer == 0) {
        Actor_Kill(&this->dyna.actor);
    }

    if (play->csCtx.curFrame == 402) {
        if (!LINK_IS_ADULT) {
            Player_PlaySfx(player, NA_SE_VO_LI_DEMO_DAMAGE_KID);
        } else {
            Player_PlaySfx(player, NA_SE_VO_LI_DEMO_DAMAGE);
        }
    }
}

void func_808ACAFC(BgSpot02Objects* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->unk_16B)) {
        Actor_SetFocus(&this->dyna.actor, 60.0f);
        OnePointCutscene_Attention(play, &this->dyna.actor);
        this->actionFunc = func_808ACB58;
    }
}

void func_808ACB58(BgSpot02Objects* this, PlayState* play) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 255.0f, 1.0f)) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_STONEDOOR_STOP);
        this->actionFunc = func_808AC8FC;
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_WALL_MOVE_SP - SFX_FLAG);
    }
}

void BgSpot02Objects_Update(Actor* thisx, PlayState* play) {
    BgSpot02Objects* this = (BgSpot02Objects*)thisx;

    this->actionFunc(this, play);
}

void BgSpot02Objects_Draw(Actor* thisx, PlayState* play) {
    static Gfx* dLists[] = {
        object_spot02_objects_DL_012A50,
        object_spot02_objects_DL_0127C0,
        object_spot02_objects_DL_0130B0,
    };

    Gfx_DrawDListOpa(play, dLists[thisx->params]);
}

void func_808ACC34(BgSpot02Objects* this, PlayState* play) {
    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[0] != NULL && play->csCtx.actorCues[0]->id == 2) {
        this->unk_16A++;

        if (this->unk_16A >= 12) {
            Actor_Kill(&this->dyna.actor);
        }
    }

    if (play->csCtx.curFrame == 245 || play->csCtx.curFrame == 351) {
        Sfx_PlaySfxCentered2(NA_SE_EV_LIGHTNING);
    }
}

void func_808ACCB8(Actor* thisx, PlayState* play) {
    BgSpot02Objects* this = (BgSpot02Objects*)thisx;
    f32 rate;
    s32 pad;
    u8 redPrim;
    u8 greenPrim;
    u8 bluePrim;
    u8 redEnv;
    u8 greenEnv;
    u8 blueEnv;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot02_objects.c", 600);

    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[0] != NULL && play->csCtx.actorCues[0]->id == 2) {
        if (this->unk_16A < 5) {
            rate = (this->unk_16A / 5.0f);
            redPrim = greenPrim = bluePrim = 255;
            redEnv = 100.0f + 155.0f * rate;
            greenEnv = 255;
            blueEnv = 255.0f - 155.0f * rate;
        } else {
            rate = ((this->unk_16A - 5) / 7.0f);
            redPrim = 255.0f - (255.0f * rate);
            greenPrim = 255.0f - (55.0f * rate);
            bluePrim = 255.0f - (255.0f * rate);
            redEnv = 255.0f - (105.0f * rate);
            greenEnv = 255.0f - (255.0f * rate);
            blueEnv = 100.0f + (100.0f * rate);
        }

        Matrix_Translate(play->csCtx.actorCues[0]->startPos.x, play->csCtx.actorCues[0]->startPos.y,
                         play->csCtx.actorCues[0]->startPos.z, MTXMODE_NEW);
        Matrix_RotateX(BINANG_TO_RAD(play->csCtx.actorCues[0]->rot.x), MTXMODE_APPLY);
        Matrix_RotateY(BINANG_TO_RAD(play->csCtx.actorCues[0]->rot.y), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD(play->csCtx.actorCues[0]->rot.z), MTXMODE_APPLY);
        Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);

        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, redPrim, greenPrim, bluePrim, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, redEnv, greenEnv, blueEnv, 255);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_spot02_objects.c", 679),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_808AD850[this->unk_16A]));
        gDPPipeSync(POLY_XLU_DISP++);
        gSPDisplayList(POLY_XLU_DISP++, object_spot02_objects_DL_0126F0);
        gDPPipeSync(POLY_XLU_DISP++);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot02_objects.c", 692);
}

void func_808AD3D4(BgSpot02Objects* this, PlayState* play) {
    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[2] != NULL && play->csCtx.actorCues[2]->id == 2) {
        if (this->timer == 2) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_IT_EXPLOSION_ICE);
        }

        if (this->timer < 32) {
            this->timer++;
        } else {
            Actor_Kill(&this->dyna.actor);
        }
    }
}

void func_808AD450(Actor* thisx, PlayState* play) {
    BgSpot02Objects* this = (BgSpot02Objects*)thisx;
    s32 pad;
    f32 lerp;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot02_objects.c", 736);

    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[2] != NULL) {
        u16 temp_v1 = CAM_BINANG_TO_DEG(play->csCtx.actorCues[2]->rot.z);

        if (this->unk_170 != temp_v1) {
            if (this->unk_170 == 0xFFFF) {
                this->unk_170 = temp_v1;
                this->unk_172 = temp_v1;
            } else {
                this->unk_172 = this->unk_170;
                this->unk_170 = temp_v1;
            }
        }

        lerp = Environment_LerpWeight(play->csCtx.actorCues[2]->endFrame, play->csCtx.actorCues[2]->startFrame,
                                      play->csCtx.curFrame);

        // should be able to remove & 0xFFFF with some other change
        if ((play->csCtx.actorCues[2]->id & 0xFFFF) == 2) {
            Matrix_Translate(play->csCtx.actorCues[2]->startPos.x, play->csCtx.actorCues[2]->startPos.y,
                             play->csCtx.actorCues[2]->startPos.z, MTXMODE_NEW);
            Matrix_RotateX(BINANG_TO_RAD(play->csCtx.actorCues[2]->rot.x), MTXMODE_APPLY);
            Matrix_RotateY(BINANG_TO_RAD(play->csCtx.actorCues[2]->rot.y), MTXMODE_APPLY);
            Matrix_Scale(0.9f, 0.9f, (((this->unk_170 - this->unk_172) * lerp) + this->unk_172) * 0.1f, MTXMODE_APPLY);
            Gfx_SetupDL_25Xlu(play->state.gfxCtx);

            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 170, 128);
            gDPSetEnvColor(POLY_XLU_DISP++, 150, 120, 0, 128);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_spot02_objects.c", 795),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 2 * this->timer, -3 * this->timer, 32, 64,
                                        1, 4 * this->timer, -6 * this->timer, 32, 64));
            gDPPipeSync(POLY_XLU_DISP++);
            gSPDisplayList(POLY_XLU_DISP++, object_spot02_objects_DL_0013F0);
            gDPPipeSync(POLY_XLU_DISP++);
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot02_objects.c", 818);
}
