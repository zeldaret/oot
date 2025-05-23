/*
 * File: z_object_kankyo.c
 * Overlay: ovl_Object_Kankyo
 * Description: Environmental Effects
 */

#include "z_object_kankyo.h"
#include "assets/objects/object_demo_kekkai/object_demo_kekkai.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/object_spot02_objects/object_spot02_objects.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED | ACTOR_FLAG_UPDATE_DURING_OCARINA)

void ObjectKankyo_Init(Actor* thisx, PlayState* play);
void ObjectKankyo_Destroy(Actor* thisx, PlayState* play);
void ObjectKankyo_Update(Actor* thisx, PlayState* play);
void ObjectKankyo_Draw(Actor* thisx, PlayState* play);

void ObjectKankyo_SetupAction(ObjectKankyo* this, ObjectKankyoActionFunc action);
void ObjectKankyo_Fairies(ObjectKankyo* this, PlayState* play);
void ObjectKankyo_SunGraveSparkInit(ObjectKankyo* this, PlayState* play);
void ObjectKankyo_Snow(ObjectKankyo* this, PlayState* play);
void ObjectKankyo_Lightning(ObjectKankyo* this, PlayState* play);
void ObjectKankyo_InitBeams(ObjectKankyo* this, PlayState* play);
void ObjectKankyo_WaitForSunGraveSparkObject(ObjectKankyo* this, PlayState* play);
void ObjectKankyo_SunGraveSpark(ObjectKankyo* this, PlayState* play);
void ObjectKankyo_WaitForBeamObject(ObjectKankyo* this, PlayState* play);
void ObjectKankyo_Beams(ObjectKankyo* this, PlayState* play);

void ObjectKankyo_DrawFairies(Actor* thisx, PlayState* play2);
void ObjectKankyo_DrawSnow(Actor* thisx, PlayState* play2);
void ObjectKankyo_DrawLightning(Actor* thisx, PlayState* play);
void ObjectKankyo_DrawSunGraveSpark(Actor* thisx, PlayState* play2);
void ObjectKankyo_DrawBeams(Actor* thisx, PlayState* play2);

static void* sEffLightningTextures[] = {
    gEffLightning1Tex, gEffLightning2Tex, gEffLightning3Tex, gEffLightning4Tex,
    gEffLightning5Tex, gEffLightning6Tex, gEffLightning7Tex, gEffLightning8Tex,
};

static void* D_80BA5900[] = {
    gEffSunGraveSpark1Tex, gEffSunGraveSpark2Tex, gEffSunGraveSpark3Tex, gEffSunGraveSpark4Tex,
    gEffSunGraveSpark5Tex, gEffSunGraveSpark6Tex, gEffSunGraveSpark7Tex, gEffSunGraveSpark8Tex,
};

ActorProfile Object_Kankyo_Profile = {
    /**/ ACTOR_OBJECT_KANKYO,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(ObjectKankyo),
    /**/ ObjectKankyo_Init,
    /**/ ObjectKankyo_Destroy,
    /**/ ObjectKankyo_Update,
    /**/ ObjectKankyo_Draw,
};

static u8 sIsSpawned = false;
static s16 sTrailingFairies = 0;

void ObjectKankyo_SetupAction(ObjectKankyo* this, ObjectKankyoActionFunc action) {
    this->actionFunc = action;
}

void ObjectKankyo_Init(Actor* thisx, PlayState* play) {
    ObjectKankyo* this = (ObjectKankyo*)thisx;
    s32 pad;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(this->effects); i++) {
        this->effects[i].state = 0;
    }

    this->actor.room = -1;
    switch (this->actor.params) {
        case 0:
            if (!sIsSpawned) {
                ObjectKankyo_SetupAction(this, ObjectKankyo_Fairies);
                sIsSpawned = true;
            } else {
                Actor_Kill(&this->actor);
            }
            break;

        case 3:
            if (!sIsSpawned) {
                ObjectKankyo_SetupAction(this, ObjectKankyo_Snow);
                sIsSpawned = true;
            } else {
                Actor_Kill(&this->actor);
            }
            break;

        case 2:
            ObjectKankyo_SetupAction(this, ObjectKankyo_Lightning);
            break;

        case 4:
            this->effects[0].alpha = 0;
            this->effects[0].amplitude = 0.0f;
            Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_ITEMACTION);
            this->requiredObjectLoaded = false;
            ObjectKankyo_SetupAction(this, ObjectKankyo_SunGraveSparkInit);
            break;

        case 5:
            this->effects[0].alpha = 0;
            this->effects[0].amplitude = 0.0f;

            for (i = 0; i < 6; i++) {
                this->effects[i].size = 0.1f;
            }

            // Check which beams are disabled
            if (Flags_GetEventChkInf(EVENTCHKINF_BB)) {
                this->effects[0].size = 0.0f;
            }
            if (Flags_GetEventChkInf(EVENTCHKINF_BC)) {
                this->effects[1].size = 0.0f;
            }
            if (Flags_GetEventChkInf(EVENTCHKINF_BD)) {
                this->effects[2].size = 0.0f;
            }
            if (Flags_GetEventChkInf(EVENTCHKINF_BE)) {
                this->effects[3].size = 0.0f;
            }
            if (Flags_GetEventChkInf(EVENTCHKINF_BF)) {
                this->effects[4].size = 0.0f;
            }
            if (Flags_GetEventChkInf(EVENTCHKINF_AD)) {
                this->effects[5].size = 0.0f;
            }

            if (gSaveContext.cutsceneTrigger != 0) {
                if (gSaveContext.save.entranceIndex == ENTR_INSIDE_GANONS_CASTLE_2) {
                    this->effects[0].size = 0.1f;
                }
                if (gSaveContext.save.entranceIndex == ENTR_INSIDE_GANONS_CASTLE_3) {
                    this->effects[1].size = 0.1f;
                }
                if (gSaveContext.save.entranceIndex == ENTR_INSIDE_GANONS_CASTLE_4) {
                    this->effects[2].size = 0.1f;
                }
                if (gSaveContext.save.entranceIndex == ENTR_INSIDE_GANONS_CASTLE_5) {
                    this->effects[3].size = 0.1f;
                }
                if (gSaveContext.save.entranceIndex == ENTR_INSIDE_GANONS_CASTLE_6) {
                    this->effects[4].size = 0.1f;
                }
                if (gSaveContext.save.entranceIndex == ENTR_INSIDE_GANONS_CASTLE_7) {
                    this->effects[5].size = 0.1f;
                }
            }

            this->requiredObjectLoaded = false;
            ObjectKankyo_SetupAction(this, ObjectKankyo_InitBeams);
            break;

        default:
            break;
    }
}

void ObjectKankyo_Destroy(Actor* thisx, PlayState* play) {
    Actor_Kill(thisx);
}

void ObjectKankyo_Snow(ObjectKankyo* this, PlayState* play) {
}

void ObjectKankyo_Fairies(ObjectKankyo* this, PlayState* play) {
    static Vec3f sSfxPos = { 0.0f, 0.0f, 0.0f };
    Player* player;
    f32 dist;
    s32 playerMoved;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 viewForwardsX;
    f32 viewForwardsY;
    f32 viewForwardsZ;
    f32 maxDist;
    f32 baseX;
    f32 baseY;
    f32 baseZ;
    Vec3f vec1 = { 0.0f, 0.0f, 0.0f };
    Vec3f vec2 = { 0.0f, 0.0f, 0.0f };
    f32 random;
    s16 i;
    Vec3f viewForwards;

    player = GET_PLAYER(play);

    if (play->sceneId == SCENE_KOKIRI_FOREST && gSaveContext.sceneLayer == 7) {
        dist = Math3D_Vec3f_DistXYZ(&this->prevEyePos, &play->view.eye);

        this->prevEyePos.x = play->view.eye.x;
        this->prevEyePos.y = play->view.eye.y;
        this->prevEyePos.z = play->view.eye.z;

        dist /= 30.0f;
        if (dist > 1.0f) {
            dist = 1.0f;
        }

        func_800F436C(&sSfxPos, NA_SE_EV_NAVY_FLY - SFX_FLAG, (0.4f * dist) + 0.6f);
        switch (play->csCtx.curFrame) {
            case 473:
                Sfx_PlaySfxCentered2(NA_SE_VO_NA_HELLO_3);
                break;

            case 583:
                func_800F4524(&gSfxDefaultPos, NA_SE_VO_NA_HELLO_2, 32);
                break;

            case 763:
                Sfx_PlaySfxCentered(NA_SE_EV_NAVY_CRASH - SFX_FLAG);
                break;

            case 771:
                Sfx_PlaySfxCentered(NA_SE_VO_RT_THROW);
                break;

            default:
                break;
        }
    }

    if (play->envCtx.precipitation[PRECIP_SNOW_MAX] < 64 &&
        (gSaveContext.save.entranceIndex != ENTR_KOKIRI_FOREST_0 || gSaveContext.sceneLayer != 4 ||
         play->envCtx.precipitation[PRECIP_SNOW_MAX])) {
        play->envCtx.precipitation[PRECIP_SNOW_MAX] += 16;
    }

    for (i = 0; i < play->envCtx.precipitation[PRECIP_SNOW_MAX]; i++) {
        // spawn in front of the camera
        dx = play->view.at.x - play->view.eye.x;
        dy = play->view.at.y - play->view.eye.y;
        dz = play->view.at.z - play->view.eye.z;
        dist = sqrtf(SQ(dx) + SQ(dy) + SQ(dz));

        viewForwards.x = dx / dist;
        viewForwards.y = dy / dist;
        viewForwards.z = dz / dist;

        viewForwardsX = viewForwards.x;
        viewForwardsY = viewForwards.y;
        viewForwardsZ = viewForwards.z;

        switch (this->effects[i].state) {
            case 0: // init
                this->effects[i].base.x = play->view.eye.x + viewForwardsX * 80.0f;
                this->effects[i].base.y = play->view.eye.y + viewForwardsY * 80.0f;
                this->effects[i].base.z = play->view.eye.z + viewForwardsZ * 80.0f;

                this->effects[i].pos.x = (Rand_ZeroOne() - 0.5f) * 160.0f;
                this->effects[i].pos.y = 30.0f;
                this->effects[i].pos.z = (Rand_ZeroOne() - 0.5f) * 160.0f;
                this->effects[i].targetSpeed = Rand_ZeroOne() * 1.6f + 0.5f;
                this->effects[i].alpha = 0;
                this->effects[i].alphaTimer = Rand_ZeroOne() * 65535.0f;
                this->effects[i].size = 0.1f;
                this->effects[i].dirPhase.x = Rand_ZeroOne() * 360.0f;
                this->effects[i].dirPhase.y = Rand_ZeroOne() * 360.0f;
                this->effects[i].dirPhase.z = Rand_ZeroOne() * 360.0f;
                this->effects[i].state++;
                this->effects[i].timer = 0;
                break;

            case 1: // blinking fairies / inactive fairy trails
            case 2: // fairy trails
                this->effects[i].alphaTimer++;
                baseX = play->view.eye.x + viewForwards.x * 80.0f;
                baseY = play->view.eye.y + viewForwards.y * 80.0f;
                baseZ = play->view.eye.z + viewForwards.z * 80.0f;

                this->effects[i].prevPos.x = this->effects[i].pos.x;
                this->effects[i].prevPos.y = this->effects[i].pos.y;
                this->effects[i].prevPos.z = this->effects[i].pos.z;

                playerMoved = true;
                // y velocity is set to -4 when the player is on the ground
                if (player->actor.velocity.x + player->actor.velocity.y + player->actor.velocity.z == -4.0f) {
                    playerMoved = false;
                    this->effects[i].timer++;
                } else {
                    this->effects[i].timer = 0;
                }

                if (this->effects[i].state == 1) {
                    // the first 32 fairies are invisible until the player stands still
                    if (i < 32 && !playerMoved && this->effects[i].timer > 256) {
                        this->effects[i].timer = 0;
                        if (Rand_ZeroOne() < 0.5f) {
                            this->effects[i].angleVel = (s16)(Rand_ZeroOne() * 200.0f) + 200;
                        } else {
                            this->effects[i].angleVel = -((s16)(Rand_ZeroOne() * 200.0f) + 200);
                        }

                        this->effects[i].flightRadius = (s16)(Rand_ZeroOne() * 50.0f) + 15;

                        // uniformly scales the length and height of the wave that the lead fairy flies in
                        // lower numbers have a larger amplitude and period
                        this->effects[i].amplitude = (Rand_ZeroOne() * 10.0f + 10.0f) * 0.01f;

                        random = Rand_ZeroOne();
                        if (random < 0.2f) {
                            sTrailingFairies = 1;
                        } else if (random < 0.2f) {
                            // unreachable
                            sTrailingFairies = 3;
                        } else if (random < 0.4f) {
                            sTrailingFairies = 7;
                        } else {
                            sTrailingFairies = 15;
                        }

                        if ((i & sTrailingFairies) == 0) {
                            this->effects[i].pos.y = 0.0f;
                        }

                        this->effects[i].state = 2;
                        this->effects[i].targetSpeed = 0.0f;
                    }

                    Math_SmoothStepToF(&this->effects[i].size, 0.1f, 0.10f, 0.001f, 0.00001f);
                    Math_SmoothStepToF(&this->effects[i].speed, this->effects[i].targetSpeed, 0.5f, 0.2f, 0.02f);

                    this->effects[i].pos.x += sinf(this->effects[i].dirPhase.x) * this->effects[i].speed;
                    this->effects[i].pos.y += sinf(this->effects[i].dirPhase.y) * this->effects[i].speed;
                    this->effects[i].pos.z += sinf(this->effects[i].dirPhase.z) * this->effects[i].speed;

                    switch ((i >> 1) & 3) {
                        case 0:
                            this->effects[i].dirPhase.x += 0.008f;
                            this->effects[i].dirPhase.y += 0.05f * Rand_ZeroOne();
                            this->effects[i].dirPhase.z += 0.015f;
                            break;

                        case 1:
                            this->effects[i].dirPhase.x += 0.01f * Rand_ZeroOne();
                            this->effects[i].dirPhase.y += 0.05f * Rand_ZeroOne();
                            this->effects[i].dirPhase.z += 0.005f * Rand_ZeroOne();
                            break;

                        case 2:
                            this->effects[i].dirPhase.x += 0.01f * Rand_ZeroOne();
                            this->effects[i].dirPhase.y += 0.4f * Rand_ZeroOne();
                            this->effects[i].dirPhase.z += 0.004f * Rand_ZeroOne();
                            break;

                        case 3:
                            this->effects[i].dirPhase.x += 0.01 * Rand_ZeroOne();
                            this->effects[i].dirPhase.y += 0.08f * Rand_ZeroOne();
                            this->effects[i].dirPhase.z += 0.05f * Rand_ZeroOne();
                            break;

                        default:
                            break;
                    }
                } else if (this->effects[i].state == 2) {
                    // scatter when the player moves or after a long enough time
                    if (playerMoved || this->effects[i].timer > 1280) {
                        this->effects[i].timer = 0;
                        this->effects[i].state = 1;
                        this->effects[i].speed = 1.5f;
                        this->effects[i].targetSpeed = Rand_ZeroOne() * 1.6f + 0.5f;
                    }

                    if ((i & sTrailingFairies) == 0) { // leader fairy
                        Math_SmoothStepToF(&this->effects[i].size, 0.25f, 0.1f, 0.001f, 0.00001f);

                        // move the center of the flight path to player's position
                        Math_SmoothStepToF(&this->effects[i].base.x, player->actor.world.pos.x, 0.5f, 1.0f, 0.2f);
                        Math_SmoothStepToF(&this->effects[i].base.y, player->actor.world.pos.y + 50.0f, 0.5f, 1.0f,
                                           0.2f);
                        Math_SmoothStepToF(&this->effects[i].base.z, player->actor.world.pos.z, 0.5f, 1.0f, 0.2f);

                        // results unused
                        Math_SmoothStepToF(&this->effects[i].pos.x,
                                           Math_SinS(this->effects[i].angle - 0x8000) * this->effects[i].flightRadius,
                                           0.5f, 2.0f, 0.2f);
                        Math_SmoothStepToF(&this->effects[i].pos.z,
                                           Math_CosS(this->effects[i].angle - 0x8000) * this->effects[i].flightRadius,
                                           0.5f, 2.0f, 0.2f);

                        // the lead fairy's y position approximately follows a sine wave with `amplitude` as angular
                        // frequency and `1 / amplitude` as amplitude
                        this->effects[i].angle += this->effects[i].angleVel;
                        this->effects[i].pos.y += sinf(this->effects[i].dirPhase.y);

                        this->effects[i].dirPhase.x += 0.2f * Rand_ZeroOne();
                        this->effects[i].dirPhase.y += this->effects[i].amplitude;
                        this->effects[i].dirPhase.z += 0.1f * Rand_ZeroOne();

                        // circle around the player
                        this->effects[i].pos.x =
                            Math_SinS(this->effects[i].angle - 0x8000) * this->effects[i].flightRadius;
                        this->effects[i].pos.z =
                            Math_CosS(this->effects[i].angle - 0x8000) * this->effects[i].flightRadius;
                    } else { // trailing fairy
                        Math_SmoothStepToF(&this->effects[i].size, 0.1f, 0.10f, 0.001f, 0.00001f);
                        Math_SmoothStepToF(&this->effects[i].speed, 1.5f, 0.5f, 0.1f, 0.0002f);

                        // follow previous fairy, translate their position to be relative to our home
                        this->effects[i].pos.x =
                            this->effects[i - 1].prevPos.x + (this->effects[i - 1].base.x - this->effects[i].base.x);
                        this->effects[i].pos.y =
                            this->effects[i - 1].prevPos.y + (this->effects[i - 1].base.y - this->effects[i].base.y);
                        this->effects[i].pos.z =
                            this->effects[i - 1].prevPos.z + (this->effects[i - 1].base.z - this->effects[i].base.z);
                    }
                }

                if (this->effects[i].state != 2) {
                    maxDist = 130.0f;
                    if (this->effects[i].base.x + this->effects[i].pos.x - baseX > maxDist ||
                        this->effects[i].base.x + this->effects[i].pos.x - baseX < -maxDist ||
                        this->effects[i].base.y + this->effects[i].pos.y - baseY > maxDist ||
                        this->effects[i].base.y + this->effects[i].pos.y - baseY < -maxDist ||
                        this->effects[i].base.z + this->effects[i].pos.z - baseZ > maxDist ||
                        this->effects[i].base.z + this->effects[i].pos.z - baseZ < -maxDist) {

                        // when a fairy moves off screen, wrap around to the other side
                        if (this->effects[i].base.x + this->effects[i].pos.x - baseX > maxDist) {
                            this->effects[i].base.x = baseX - maxDist;
                            this->effects[i].pos.x = 0.0f;
                        }
                        if (this->effects[i].base.x + this->effects[i].pos.x - baseX < -maxDist) {
                            this->effects[i].base.x = baseX + maxDist;
                            this->effects[i].pos.x = 0.0f;
                        }
                        if (this->effects[i].base.y + this->effects[i].pos.y - baseY > 50.0f) {
                            this->effects[i].base.y = baseY - 50.0f;
                            this->effects[i].pos.y = 0.0f;
                        }
                        if (this->effects[i].base.y + this->effects[i].pos.y - baseY < -50.0f) {
                            this->effects[i].base.y = baseY + 50.0f;
                            this->effects[i].pos.y = 0.0f;
                        }
                        if (this->effects[i].base.z + this->effects[i].pos.z - baseZ > maxDist) {
                            this->effects[i].base.z = baseZ - maxDist;
                            this->effects[i].pos.z = 0.0f;
                        }
                        if (this->effects[i].base.z + this->effects[i].pos.z - baseZ < -maxDist) {
                            this->effects[i].base.z = baseZ + maxDist;
                            this->effects[i].pos.z = 0.0f;
                        }
                    }
                }
                break;

            case 3: // reset, never reached
                this->effects[i].state = 0;
                break;

            default:
                break;
        }
    }
}

void ObjectKankyo_Update(Actor* thisx, PlayState* play) {
    ObjectKankyo* this = (ObjectKankyo*)thisx;

    this->actionFunc(this, play);
}

void ObjectKankyo_Draw(Actor* thisx, PlayState* play) {
    switch (thisx->params) {
        case 0:
            ObjectKankyo_DrawFairies(thisx, play);
            break;

        case 2:
            ObjectKankyo_DrawLightning(thisx, play);
            break;

        case 3:
            ObjectKankyo_DrawSnow(thisx, play);
            break;

        case 4:
            ObjectKankyo_DrawSunGraveSpark(thisx, play);
            break;

        case 5:
            ObjectKankyo_DrawBeams(thisx, play);
            break;

        default:
            break;
    }
}

void ObjectKankyo_DrawFairies(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    ObjectKankyo* this = (ObjectKankyo*)thisx;
    f32 alphaScale;
    Vec3f vec1 = { 0.0f, 0.0f, 0.0f };
    Vec3f vec2 = { 0.0f, 0.0f, 0.0f };
    s16 i;

    if (!(play->cameraPtrs[CAM_ID_MAIN]->stateFlags & CAM_STATE_CAMERA_IN_WATER)) {
        OPEN_DISPS(play->state.gfxCtx, "../z_object_kankyo.c", 807);
        POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_20);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(gSun1Tex));
        gSPDisplayList(POLY_XLU_DISP++, gKokiriDustMoteMaterialDL);

        for (i = 0; i < play->envCtx.precipitation[PRECIP_SNOW_MAX]; i++) {
            Matrix_Translate(this->effects[i].base.x + this->effects[i].pos.x,
                             this->effects[i].base.y + this->effects[i].pos.y,
                             this->effects[i].base.z + this->effects[i].pos.z, MTXMODE_NEW);

            // scale when fading in or out
            alphaScale = this->effects[i].alpha / 50.0f;
            if (alphaScale > 1.0f) {
                alphaScale = 1.0f;
            }

            Matrix_Scale(this->effects[i].size * alphaScale, this->effects[i].size * alphaScale,
                         this->effects[i].size * alphaScale, MTXMODE_APPLY);
            if (i < 32) {
                if (this->effects[i].state != 2) {
                    if (this->effects[i].alpha > 0) {
                        this->effects[i].alpha--;
                    }
                } else {
                    if (this->effects[i].alpha < 100) {
                        this->effects[i].alpha++;
                    }
                }
            } else {
                if (this->effects[i].state != 2) {
                    if ((this->effects[i].alphaTimer & 0x1F) < 16) {
                        if (this->effects[i].alpha < 235) {
                            this->effects[i].alpha += 20;
                        }
                    } else {
                        if (this->effects[i].alpha > 20) {
                            this->effects[i].alpha -= 20;
                        }
                    }
                } else {
                    // unreachable
                    if ((this->effects[i].alphaTimer & 0xF) < 8) {
                        if (this->effects[i].alpha < 255) {
                            this->effects[i].alpha += 100;
                        }
                    } else {
                        if (this->effects[i].alpha > 10) {
                            this->effects[i].alpha -= 10;
                        }
                    }
                }
            }

            gDPPipeSync(POLY_XLU_DISP++);

            switch (i & 1) {
                case 0:
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 155, this->effects[i].alpha);
                    gDPSetEnvColor(POLY_XLU_DISP++, 250, 180, 0, this->effects[i].alpha);
                    break;

                case 1:
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, this->effects[i].alpha);
                    gDPSetEnvColor(POLY_XLU_DISP++, 0, 100, 255, this->effects[i].alpha);
                    break;
            }

            Matrix_Mult(&play->billboardMtxF, MTXMODE_APPLY);
            Matrix_RotateZ(DEG_TO_RAD(play->state.frames * 20.0f), MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_object_kankyo.c", 913);
            gSPDisplayList(POLY_XLU_DISP++, gKokiriDustMoteModelDL);
        }
        CLOSE_DISPS(play->state.gfxCtx, "../z_object_kankyo.c", 922);
    }
}

void ObjectKankyo_DrawSnow(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    ObjectKankyo* this = (ObjectKankyo*)thisx;
    f32 dist;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 maxDist;
    f32 temp;
    f32 baseX;
    f32 baseY;
    f32 baseZ;
    Vec3f vec1 = { 0.0f, 0.0f, 0.0f };
    Vec3f vec2 = { 0.0f, 0.0f, 0.0f };
    s16 i;
    s32 pad;
    s32 pad2;

    if (!(play->cameraPtrs[CAM_ID_MAIN]->stateFlags & CAM_STATE_CAMERA_IN_WATER)) {
        OPEN_DISPS(play->state.gfxCtx, "../z_object_kankyo.c", 958);
        if (play->envCtx.precipitation[PRECIP_SNOW_CUR] < play->envCtx.precipitation[PRECIP_SNOW_MAX]) {
            if (play->state.frames % 16 == 0) {
                play->envCtx.precipitation[PRECIP_SNOW_CUR] += 2;
            }
        } else if (play->envCtx.precipitation[PRECIP_SNOW_CUR] > play->envCtx.precipitation[PRECIP_SNOW_MAX]) {
            if (play->state.frames % 16 == 0) {
                play->envCtx.precipitation[PRECIP_SNOW_CUR] -= 2;
            }
        }

        for (i = 0; i < play->envCtx.precipitation[PRECIP_SNOW_CUR]; i++) {
            switch (this->effects[i].state) {
                case 0:
                    // spawn in front of the camera
                    dx = play->view.at.x - play->view.eye.x;
                    dy = play->view.at.y - play->view.eye.y;
                    dz = play->view.at.z - play->view.eye.z;
                    dist = sqrtf(SQ(dx) + SQ(dy) + SQ(dz));

                    // fake
                    temp = dz / dist;
                    this->effects[i].base.x = play->view.eye.x + dx / dist * 80.0f;
                    this->effects[i].base.y = play->view.eye.y + dy / dist * 80.0f;
                    this->effects[i].base.z = play->view.eye.z + temp * 80.0f;

                    this->effects[i].pos.x = (Rand_ZeroOne() - 0.5f) * 160.0f;
                    this->effects[i].pos.y = 80.0f;
                    this->effects[i].pos.z = (Rand_ZeroOne() - 0.5f) * 160.0f;
                    if (this->effects[i].base.y + this->effects[i].pos.y < 50.0f) {
                        this->effects[i].base.y = 50.0f;
                    }
                    this->effects[i].speed = Rand_ZeroOne() * 5.0f + 0.5f;
                    this->effects[i].dirPhase.x = Rand_ZeroOne() * 360.0f;
                    this->effects[i].dirPhase.z = Rand_ZeroOne() * 360.0f;
                    this->effects[i].state++;
                    break;

                case 1:
                    dx = play->view.at.x - play->view.eye.x;
                    dy = play->view.at.y - play->view.eye.y;
                    dz = play->view.at.z - play->view.eye.z;
                    dist = sqrtf(SQ(dx) + SQ(dy) + SQ(dz));

                    baseX = play->view.eye.x + dx / dist * 80.0f;
                    baseY = play->view.eye.y + dy / dist * 80.0f;
                    baseZ = play->view.eye.z + dz / dist * 80.0f;

                    this->effects[i].dirPhase.x += 0.049999997f * Rand_ZeroOne();
                    this->effects[i].dirPhase.z += 0.049999997f * Rand_ZeroOne();
                    this->effects[i].pos.x += sinf(this->effects[i].dirPhase.x * 0.01f);
                    this->effects[i].pos.z += cosf(this->effects[i].dirPhase.z * 0.01f);
                    this->effects[i].pos.y += -this->effects[i].speed;

                    if (this->effects[i].base.y + this->effects[i].pos.y < this->actor.world.pos.y ||
                        this->effects[i].base.y + this->effects[i].pos.y < play->view.eye.y - 150.0f) {
                        this->effects[i].state++;
                    }

                    maxDist = 80;
                    if (this->effects[i].base.x + this->effects[i].pos.x - baseX > maxDist ||
                        this->effects[i].base.x + this->effects[i].pos.x - baseX < -maxDist ||
                        this->effects[i].base.y + this->effects[i].pos.y - baseY > maxDist ||
                        this->effects[i].base.y + this->effects[i].pos.y - baseY < -maxDist ||
                        this->effects[i].base.z + this->effects[i].pos.z - baseZ > maxDist ||
                        this->effects[i].base.z + this->effects[i].pos.z - baseZ < -maxDist) {

                        // when off screen, wrap around to the other side
                        if (this->effects[i].base.x + this->effects[i].pos.x - baseX > maxDist) {
                            this->effects[i].base.x = baseX - maxDist;
                            this->effects[i].pos.x = 0.0f;
                        }
                        if (this->effects[i].base.x + this->effects[i].pos.x - baseX < -maxDist) {
                            this->effects[i].base.x = baseX + maxDist;
                            this->effects[i].pos.x = 0.0f;
                        }
                        if (this->effects[i].base.z + this->effects[i].pos.z - baseZ > maxDist) {
                            this->effects[i].base.z = baseZ - maxDist;
                            this->effects[i].pos.z = 0.0f;
                        }
                        if (this->effects[i].base.z + this->effects[i].pos.z - baseZ < -maxDist) {
                            this->effects[i].base.z = baseZ + maxDist;
                            this->effects[i].pos.z = 0.0f;
                        }
                    }
                    break;

                case 2:
                    this->effects[i].state = 0;
                    break;

                default:
                    break;
            }

            if (1) {}
            Matrix_Translate(this->effects[i].base.x + this->effects[i].pos.x,
                             this->effects[i].base.y + this->effects[i].pos.y,
                             this->effects[i].base.z + this->effects[i].pos.z, MTXMODE_NEW);
            Matrix_Scale(0.05f, 0.05f, 0.05f, MTXMODE_APPLY);
            gDPPipeSync(POLY_XLU_DISP++);

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 200, 200, 180);
            gDPSetEnvColor(POLY_XLU_DISP++, 200, 200, 200, 180);

            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_object_kankyo.c", 1107);

            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(gDust5Tex));

            Gfx_SetupDL_61Xlu(play->state.gfxCtx);
            gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

            gDPPipeSync(POLY_XLU_DISP++);

            gSPDisplayList(POLY_XLU_DISP++, gEffDustDL);

            gDPPipeSync(POLY_XLU_DISP++);
        }

        CLOSE_DISPS(play->state.gfxCtx, "../z_object_kankyo.c", 1127);
    }
}

void ObjectKankyo_Lightning(ObjectKankyo* this, PlayState* play) {
    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[0] != NULL) {
        switch (this->effects[0].state) {
            case 0:
                this->effects[0].timer = 0;
                if (play->csCtx.actorCues[0]->id == 2) {
                    this->effects[0].state++;
                }
                break;

            case 1:
                if (++this->effects[0].timer >= 7) {
                    this->effects[0].state++;
                }
                break;

            case 2:
                if (play->csCtx.actorCues[0]->id == 1) {
                    this->effects[0].state = 0;
                }
                break;

            default:
                break;
        }
    }
}

void ObjectKankyo_DrawLightning(Actor* thisx, PlayState* play) {
    s32 pad;
    ObjectKankyo* this = (ObjectKankyo*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_object_kankyo.c", 1182);

    if (this->effects[0].state == 1) {
        Matrix_Translate(play->csCtx.actorCues[0]->startPos.x, play->csCtx.actorCues[0]->startPos.y,
                         play->csCtx.actorCues[0]->startPos.z, MTXMODE_NEW);
        Matrix_RotateX(DEG_TO_RAD(20), MTXMODE_APPLY);
        Matrix_RotateZ(DEG_TO_RAD(20), MTXMODE_APPLY);
        Matrix_Scale(2.0f, 5.0f, 2.0f, MTXMODE_APPLY);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 128);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 255, 255, 128);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_object_kankyo.c", 1213);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEffLightningTextures[this->effects[0].timer]));
        Gfx_SetupDL_61Xlu(play->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
        gDPPipeSync(POLY_XLU_DISP++);
        gSPDisplayList(POLY_XLU_DISP++, gEffLightningDL);
        gDPPipeSync(POLY_XLU_DISP++);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_object_kankyo.c", 1233);
}

void ObjectKankyo_SunGraveSparkInit(ObjectKankyo* this, PlayState* play) {
    s32 objectSlot = Object_GetSlot(&play->objectCtx, OBJECT_SPOT02_OBJECTS);

    if (objectSlot < 0) {
        ASSERT(0, "0", "../z_object_kankyo.c", 1251);
    } else {
        this->requiredObjectSlot = objectSlot;
    }
    ObjectKankyo_SetupAction(this, ObjectKankyo_WaitForSunGraveSparkObject);
}

void ObjectKankyo_WaitForSunGraveSparkObject(ObjectKankyo* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->requiredObjectSlot)) {
        this->requiredObjectLoaded = true;
        this->effects[0].alpha = 0;
        this->actor.objectSlot = this->requiredObjectSlot;
        this->effects[0].size = 7.0f;
        ObjectKankyo_SetupAction(this, ObjectKankyo_SunGraveSpark);
    }
}

void ObjectKankyo_SunGraveSpark(ObjectKankyo* this, PlayState* play) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        if (play->csCtx.actorCues[1] != NULL && play->csCtx.actorCues[1]->id == 2) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_BIRI_SPARK - SFX_FLAG);
            if ((s16)this->effects[0].alpha + 20 > 255) {
                this->effects[0].alpha = 255;
            } else {
                this->effects[0].alpha += 20;
            }
            Math_SmoothStepToF(&this->effects[0].size, 1.8f, 0.5f, 0.28f, 0.01f);
        }
    }
}

void ObjectKankyo_DrawSunGraveSpark(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    ObjectKankyo* this = (ObjectKankyo*)thisx;
    Vec3f start;
    Vec3f end;
    f32 weight;

    OPEN_DISPS(play->state.gfxCtx, "../z_object_kankyo.c", 1324);
    if (play->csCtx.state != CS_STATE_IDLE) {
        if (play->csCtx.actorCues[1] != NULL && play->csCtx.actorCues[1]->id == 2 && this->requiredObjectLoaded) {
            // apparently, light waves with larger amplitudes look brighter, so the name 'amplitude' kind of works here
            if (this->effects[0].state == 0) {
                this->effects[0].amplitude += 1.0f / 7.0f;
                if (this->effects[0].amplitude >= 1.0f) {
                    this->effects[0].amplitude = 1.0f;
                    this->effects[0].state++;
                }
            } else {
                this->effects[0].amplitude -= 1.0f / 7.0f;
                if (this->effects[0].amplitude <= 0.1f) {
                    this->effects[0].amplitude = 0.0f;
                    this->effects[0].state = 0;
                }
            }

            if (++this->effects[0].timer > 7) {
                this->effects[0].timer = 0;
            }

            start.x = play->csCtx.actorCues[1]->startPos.x;
            start.y = play->csCtx.actorCues[1]->startPos.y;
            start.z = play->csCtx.actorCues[1]->startPos.z;

            end.x = play->csCtx.actorCues[1]->endPos.x;
            end.y = play->csCtx.actorCues[1]->endPos.y;
            end.z = play->csCtx.actorCues[1]->endPos.z;

            weight = Environment_LerpWeight(play->csCtx.actorCues[1]->endFrame, play->csCtx.actorCues[1]->startFrame,
                                            play->csCtx.curFrame);
            Matrix_Translate(LERP(start.x, end.x, weight), LERP(start.y, end.y, weight), LERP(start.z, end.z, weight),
                             MTXMODE_NEW);
            Matrix_Scale(this->effects[0].size, this->effects[0].size, this->effects[0].size, MTXMODE_APPLY);
            Gfx_SetupDL_25Xlu(play->state.gfxCtx);
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, (u8)(105 * this->effects[0].amplitude) + 150, 255,
                            (u8)(105 * this->effects[0].amplitude) + 150, this->effects[0].alpha);
            gDPSetEnvColor(POLY_XLU_DISP++, (u8)(155 * this->effects[0].amplitude) + 100,
                           (u8)(255 * this->effects[0].amplitude), 255 - (u8)(255 * this->effects[0].amplitude),
                           this->effects[0].alpha);

            Matrix_Mult(&play->billboardMtxF, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_object_kankyo.c", 1416);

            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80BA5900[this->effects[0].timer]));
            gDPPipeSync(POLY_XLU_DISP++);

            gSPDisplayList(POLY_XLU_DISP++, object_spot02_objects_DL_009620);
            gDPPipeSync(POLY_XLU_DISP++);
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_object_kankyo.c", 1432);
}

void ObjectKankyo_InitBeams(ObjectKankyo* this, PlayState* play) {
    s32 objectIndex = Object_GetSlot(&play->objectCtx, OBJECT_DEMO_KEKKAI);

    if (objectIndex < 0) {
        ASSERT(0, "0", "../z_object_kankyo.c", 1449);
    } else {
        this->requiredObjectSlot = objectIndex;
    }
    ObjectKankyo_SetupAction(this, ObjectKankyo_WaitForBeamObject);
}

void ObjectKankyo_WaitForBeamObject(ObjectKankyo* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->requiredObjectSlot)) {
        this->requiredObjectLoaded = true;
        this->actor.objectSlot = this->requiredObjectSlot;
        ObjectKankyo_SetupAction(this, ObjectKankyo_Beams);
    }
}

void ObjectKankyo_Beams(ObjectKankyo* this, PlayState* play) {
    u8 i;

    if (play->csCtx.state != CS_STATE_IDLE) {
        for (i = 0; i < 6; i++) {
            if (play->csCtx.actorCues[i + 1] != NULL && play->csCtx.actorCues[i + 1]->id == 2) {
                if (this->effects[i].size == 0.1f) {
                    Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_TRIAL_DESTROY);
                }
                Math_ApproachZeroF(&this->effects[i].size, 0.1f, 0.1f);
            }
        }
    }
}

void ObjectKankyo_DrawBeams(Actor* thisx, PlayState* play2) {
    static Color_RGB8 sBeamPrimColors[] = {
        { 255, 255, 170 }, { 170, 255, 255 }, { 255, 170, 255 },
        { 255, 255, 170 }, { 255, 255, 170 }, { 255, 255, 170 },
    };
    static Color_RGB8 sBeamEnvColors[] = {
        { 0, 200, 0 }, { 0, 50, 255 }, { 100, 0, 200 }, { 200, 0, 0 }, { 200, 255, 0 }, { 255, 120, 0 },
    };
    PlayState* play = play2;
    ObjectKankyo* this = (ObjectKankyo*)thisx;
    s16 i;
    f32 beamX[] = { 430.0f, 860.0f, 430.0f, -426.0f, -862.0f, -440.0f };
    f32 beamY[] = { 551.0f, 551.0f, 551.0f, 554.0f, 551.0f, 547.0f };
    f32 beamZ[] = { -96.0f, -840.0f, -1585.0f, -1578.0f, -840.0f, -78.0f };
    f32 beamYaw[] = { 29.9f, 90.0f, 150.0f, 30.0f, 90.0f, -30.1f };
    f32 beamPitch[] = { 103.4f, 103.8f, 103.6f, -103.4f, -103.5f, 103.5f };

    OPEN_DISPS(play->state.gfxCtx, "../z_object_kankyo.c", 1539);

    if (this->requiredObjectLoaded) {
        for (i = 0; i < 6; i++) {
            if (this->effects[i].size > 0.001f) {
                Matrix_Translate(beamX[i], beamY[i], beamZ[i], MTXMODE_NEW);
                Matrix_RotateY(DEG_TO_RAD(beamYaw[i]), MTXMODE_APPLY);
                Matrix_RotateX(DEG_TO_RAD(beamPitch[i]), MTXMODE_APPLY);
                Matrix_Scale(this->effects[i].size, 0.1f, this->effects[i].size, MTXMODE_APPLY);
                Gfx_SetupDL_25Xlu(play->state.gfxCtx);
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 128, sBeamPrimColors[i].r, sBeamPrimColors[i].g,
                                sBeamPrimColors[i].b, 128);
                gDPSetEnvColor(POLY_XLU_DISP++, sBeamEnvColors[i].r, sBeamEnvColors[i].g, sBeamEnvColors[i].b, 128);
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_object_kankyo.c", 1586);
                gSPSegment(POLY_XLU_DISP++, 0x08,
                           Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, play->state.frames * 5,
                                            play->state.frames * 10, 32, 64, 1, play->state.frames * 5,
                                            play->state.frames * 10, 32, 64));
                gSPDisplayList(POLY_XLU_DISP++, gDemoKekkaiDL_005FF0);
            }
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_object_kankyo.c", 1607);
}
