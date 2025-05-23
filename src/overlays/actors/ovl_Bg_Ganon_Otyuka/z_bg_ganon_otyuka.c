/*
 * File: z_bg_ganon_otyka.c
 * Overlay: ovl_Bg_Ganon_Otyka
 * Description: Falling Platform (Ganondorf Fight)
 */

#include "z_bg_ganon_otyuka.h"
#include "overlays/actors/ovl_Boss_Ganon/z_boss_ganon.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

typedef enum FlashState {
    /* 0x00 */ FLASH_NONE,
    /* 0x01 */ FLASH_GROW,
    /* 0x02 */ FLASH_SHRINK
} FlashState;

void BgGanonOtyuka_Init(Actor* thisx, PlayState* play2);
void BgGanonOtyuka_Destroy(Actor* thisx, PlayState* play2);
void BgGanonOtyuka_Update(Actor* thisx, PlayState* play);
void BgGanonOtyuka_Draw(Actor* thisx, PlayState* play);

void BgGanonOtyuka_WaitToFall(BgGanonOtyuka* this, PlayState* play);
void BgGanonOtyuka_Fall(BgGanonOtyuka* this, PlayState* play);
void BgGanonOtyuka_DoNothing(Actor* thisx, PlayState* play);

ActorProfile Bg_Ganon_Otyuka_Profile = {
    /**/ ACTOR_BG_GANON_OTYUKA,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GANON,
    /**/ sizeof(BgGanonOtyuka),
    /**/ BgGanonOtyuka_Init,
    /**/ BgGanonOtyuka_Destroy,
    /**/ BgGanonOtyuka_Update,
    /**/ BgGanonOtyuka_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

static u8 sSides[] = { OTYUKA_SIDE_EAST, OTYUKA_SIDE_WEST, OTYUKA_SIDE_SOUTH, OTYUKA_SIDE_NORTH };

static Vec3f D_80876A68[] = {
    { 120.0f, 0.0f, 0.0f },
    { -120.0f, 0.0f, 0.0f },
    { 0.0f, 0.0f, 120.0f },
    { 0.0f, 0.0f, -120.0f },
};

static Color_RGBA8 sDustPrimColor = { 60, 60, 0, 0 };

static Color_RGBA8 sDustEnvColor = { 50, 20, 0, 0 };

static Vec3f sSideCenters[] = {
    { 60.0f, 0.0f, 0.0f },
    { -60.0f, 0.0f, 0.0f },
    { 0.0f, 0.0f, 60.0f },
    { 0.0f, 0.0f, -60.0f },
};

static f32 sSideAngles[] = { M_PI / 2, -M_PI / 2, 0.0f, M_PI };

#include "assets/overlays/ovl_Bg_Ganon_Otyuka/ovl_Bg_Ganon_Otyuka.c"

void BgGanonOtyuka_Init(Actor* thisx, PlayState* play2) {
    BgGanonOtyuka* this = (BgGanonOtyuka*)thisx;
    PlayState* play = play2;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&sCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);

    if (thisx->params != 0x23) {
        thisx->draw = NULL;
        this->actionFunc = BgGanonOtyuka_WaitToFall;
    } else {
        thisx->update = BgGanonOtyuka_DoNothing;
    }
}

void BgGanonOtyuka_Destroy(Actor* thisx, PlayState* play2) {
    BgGanonOtyuka* this = (BgGanonOtyuka*)thisx;
    PlayState* play = play2;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);

    PRINTF_COLOR_GREEN();
    PRINTF("WHY !!!!!!!!!!!!!!!!\n");
    PRINTF_RST();
}

void BgGanonOtyuka_WaitToFall(BgGanonOtyuka* this, PlayState* play) {
    Actor* thisx = &this->dyna.actor;
    Actor* prop;
    s16 i;
    f32 dx;
    f32 dy;
    f32 dz;
    Vec3f center;

    if (this->isFalling || ((play->actorCtx.unk_02 != 0) && (this->dyna.actor.xyzDistToPlayerSq < SQ(70.0f)))) {
        PRINTF("OTC O 1\n");

        for (i = 0; i < ARRAY_COUNT(D_80876A68); i++) {
            prop = play->actorCtx.actorLists[ACTORCAT_PROP].head;
            while (prop != NULL) {
                if ((prop == thisx) || (prop->id != ACTOR_BG_GANON_OTYUKA)) {
                    prop = prop->next;
                    continue;
                } else {
                    BgGanonOtyuka* platform = (BgGanonOtyuka*)prop;

                    dx = platform->dyna.actor.world.pos.x - this->dyna.actor.world.pos.x + D_80876A68[i].x;
                    dy = platform->dyna.actor.world.pos.y - this->dyna.actor.world.pos.y;
                    dz = platform->dyna.actor.world.pos.z - this->dyna.actor.world.pos.z + D_80876A68[i].z;

                    if ((fabsf(dx) < 10.0f) && (fabsf(dy) < 10.0f) && (fabsf(dz) < 10.0f)) {
                        platform->visibleSides |= sSides[i];
                        break;
                    }
                }
                prop = prop->next;
            }
        }

        PRINTF("OTC O 2\n");

        for (i = 0; i < ARRAY_COUNT(D_80876A68); i++) {
            center.x = this->dyna.actor.world.pos.x + D_80876A68[i].x;
            center.y = this->dyna.actor.world.pos.y;
            center.z = this->dyna.actor.world.pos.z + D_80876A68[i].z;
            if (BgCheck_SphVsFirstPoly(&play->colCtx, &center, 50.0f)) {
                this->unwalledSides |= sSides[i];
            }
        }

        PRINTF("OTC O 3\n");

        this->actionFunc = BgGanonOtyuka_Fall;
        this->isFalling = true;
        this->dropTimer = 20;
        this->flashState = FLASH_GROW;
        this->flashTimer = 0;
        this->flashPrimColorR = 255.0f;
        this->flashPrimColorG = 255.0f;
        this->flashPrimColorB = 255.0f;
        this->flashEnvColorR = 255.0f;
        this->flashEnvColorG = 255.0f;
        this->flashEnvColorB = 0.0f;
    }
}

void BgGanonOtyuka_Fall(BgGanonOtyuka* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 i;
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;

    PRINTF("MODE DOWN\n");
    if (this->flashState == FLASH_GROW) {
        Math_ApproachF(&this->flashPrimColorB, 170.0f, 1.0f, 8.5f);
        Math_ApproachF(&this->flashEnvColorR, 120.0f, 1.0f, 13.5f);
        Math_ApproachF(&this->flashYScale, 2.5f, 1.0f, 0.25f);
        if (this->flashYScale == 2.5f) {
            this->flashState = FLASH_SHRINK;
        }
    } else if (this->flashState == FLASH_SHRINK) {
        Math_ApproachF(&this->flashPrimColorG, 0.0f, 1.0f, 25.5f);
        Math_ApproachF(&this->flashEnvColorR, 0.0f, 1.0f, 12.0f);
        Math_ApproachF(&this->flashEnvColorG, 0.0f, 1.0f, 25.5f);
        Math_ApproachZeroF(&this->flashYScale, 1.0f, 0.25f);
        if (this->flashYScale == 0.0f) {
            this->flashState = FLASH_NONE;
        }
    }
    if (this->dropTimer == 0) {
        this->flashYScale = 0.0f;
        Math_ApproachF(&this->dyna.actor.world.pos.y, -1000.0f, 1.0f, this->dyna.actor.speed);
        Math_ApproachF(&this->dyna.actor.speed, 100.0f, 1.0f, 2.0f);
        if (!(this->unwalledSides & OTYUKA_SIDE_EAST)) {
            this->dyna.actor.shape.rot.z -= (s16)(this->dyna.actor.speed * 30.0f);
        }
        if (!(this->unwalledSides & OTYUKA_SIDE_WEST)) {
            this->dyna.actor.shape.rot.z += (s16)(this->dyna.actor.speed * 30.0f);
        }
        if (!(this->unwalledSides & OTYUKA_SIDE_SOUTH)) {
            this->dyna.actor.shape.rot.x += (s16)(this->dyna.actor.speed * 30.0f);
        }
        if (!(this->unwalledSides & OTYUKA_SIDE_NORTH)) {
            this->dyna.actor.shape.rot.x -= (s16)(this->dyna.actor.speed * 30.0f);
        }
        if (this->dyna.actor.world.pos.y < -750.0f) {
            if (player->actor.world.pos.y < -400.0f) {
                accel.x = accel.z = 0.0f;
                accel.y = 0.1f;
                velocity.x = velocity.y = velocity.z = 0.0f;

                for (i = 0; i < 30; i++) {
                    pos.x = Rand_CenteredFloat(150.0f) + this->dyna.actor.world.pos.x;
                    pos.y = Rand_ZeroFloat(60.0f) + -750.0f;
                    pos.z = Rand_CenteredFloat(150.0f) + this->dyna.actor.world.pos.z;
                    func_8002836C(play, &pos, &velocity, &accel, &sDustPrimColor, &sDustEnvColor,
                                  (s16)Rand_ZeroFloat(100.0f) + 250, 5, (s16)Rand_ZeroFloat(5.0f) + 15);
                }

                Actor_RequestQuake(play, 10, 15);
                SfxSource_PlaySfxAtFixedWorldPos(play, &this->dyna.actor.world.pos, 40, NA_SE_EV_BOX_BREAK);
            }
            Actor_Kill(&this->dyna.actor);
        }
    } else {
        if (this->dropTimer == 1) {
            Audio_PlaySfxGeneral(NA_SE_EV_STONEDOOR_STOP, &this->dyna.actor.projectedPos, 4,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        } else {
            Audio_PlaySfxGeneral(NA_SE_EV_BLOCKSINK - SFX_FLAG, &this->dyna.actor.projectedPos, 4,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
        Math_ApproachF(&this->dyna.actor.world.pos.y, -1000.0f, 1.0f, this->dyna.actor.speed);
        Math_ApproachF(&this->dyna.actor.speed, 100.0f, 1.0f, 0.1f);
    }
    PRINTF("MODE DOWN END\n");
}

void BgGanonOtyuka_DoNothing(Actor* thisx, PlayState* play) {
}

void BgGanonOtyuka_Update(Actor* thisx, PlayState* play) {
    BgGanonOtyuka* this = (BgGanonOtyuka*)thisx;

    this->actionFunc(this, play);
    this->flashTimer++;
    if (this->dropTimer != 0) {
        this->dropTimer--;
    }
}

void BgGanonOtyuka_Draw(Actor* thisx, PlayState* play) {
    BgGanonOtyuka* this = (BgGanonOtyuka*)thisx;
    s16 i;
    Gfx* phi_s2;
    Gfx* phi_s1;
    Camera* mainCam = Play_GetCamera(play, CAM_ID_MAIN);
    Actor* actor;
    BgGanonOtyuka* platform;
    BossGanon* ganondorf;
    f32 spBC = -30.0f;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_ganon_otyuka.c", 702);

    actor = play->actorCtx.actorLists[ACTORCAT_BOSS].head;
    while (actor != NULL) {
        if (actor->id == ACTOR_BOSS_GANON) {
            ganondorf = (BossGanon*)actor;

            if (ganondorf->actor.params == 0) {
                if (ganondorf->unk_198 != 0) {
                    spBC = -2000.0f;
                }

                break;
            }
        }

        actor = actor->next;
    }

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPDisplayList(POLY_OPA_DISP++, sPlatformMaterialDL);

    actor = play->actorCtx.actorLists[ACTORCAT_PROP].head;
    while (actor != NULL) {
        if (actor->id == ACTOR_BG_GANON_OTYUKA) {
            platform = (BgGanonOtyuka*)actor;

            if (platform->dyna.actor.projectedPos.z > spBC) {
                if (mainCam->eye.y > platform->dyna.actor.world.pos.y) {
                    phi_s2 = sPlatformTopDL;
                } else {
                    phi_s2 = sPlatformBottomDL;
                }
                Matrix_Translate(platform->dyna.actor.world.pos.x, platform->dyna.actor.world.pos.y,
                                 platform->dyna.actor.world.pos.z, MTXMODE_NEW);
                phi_s1 = NULL;
                if (platform->isFalling) {
                    Matrix_RotateX(BINANG_TO_RAD_ALT(platform->dyna.actor.shape.rot.x), MTXMODE_APPLY);
                    Matrix_RotateZ(BINANG_TO_RAD_ALT(platform->dyna.actor.shape.rot.z), MTXMODE_APPLY);
                    if (mainCam->eye.y > platform->dyna.actor.world.pos.y) {
                        phi_s1 = sPlatformBottomDL;
                    } else {
                        phi_s1 = sPlatformTopDL;
                    }
                }
                MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_ganon_otyuka.c", 766);
                gSPDisplayList(POLY_OPA_DISP++, phi_s2);

                if (phi_s1 != NULL) {
                    gSPDisplayList(POLY_OPA_DISP++, phi_s1);
                }

                for (i = 0; i < ARRAY_COUNT(sSides); i++) {
                    if (platform->visibleSides & sSides[i]) {
                        Matrix_Push();
                        Matrix_Translate(sSideCenters[i].x, 0.0f, sSideCenters[i].z, MTXMODE_APPLY);
                        Matrix_RotateY(sSideAngles[i], MTXMODE_APPLY);
                        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_ganon_otyuka.c", 785);
                        gSPDisplayList(POLY_OPA_DISP++, sPlatformSideDL);
                        Matrix_Pop();
                    }
                }
            }
        }

        actor = actor->next;
    }

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    actor = play->actorCtx.actorLists[ACTORCAT_PROP].head;
    while (actor != NULL) {
        if (actor->id == ACTOR_BG_GANON_OTYUKA) {
            platform = (BgGanonOtyuka*)actor;

            if ((platform->dyna.actor.projectedPos.z > -30.0f) && (platform->flashState != FLASH_NONE)) {
                gSPSegment(POLY_XLU_DISP++, 0x08,
                           Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, platform->flashTimer * 4, 0, 32, 64, 1,
                                            platform->flashTimer * 4, 0, 32, 64));
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, platform->flashPrimColorR, platform->flashPrimColorG,
                                platform->flashPrimColorB, 0);
                gDPSetEnvColor(POLY_XLU_DISP++, platform->flashEnvColorR, platform->flashEnvColorG,
                               platform->flashEnvColorB, 128);
                Matrix_Translate(platform->dyna.actor.world.pos.x, 0.0f, platform->dyna.actor.world.pos.z, MTXMODE_NEW);

                for (i = 0; i < ARRAY_COUNT(sSides); i++) {
                    if (platform->unwalledSides & sSides[i]) {
                        Matrix_Push();
                        Matrix_Translate(sSideCenters[i].x, 0.0f, sSideCenters[i].z, MTXMODE_APPLY);
                        Matrix_RotateY(sSideAngles[i], MTXMODE_APPLY);
                        Matrix_Scale(0.3f, platform->flashYScale * 0.3f, 0.3f, MTXMODE_APPLY);
                        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_ganon_otyuka.c", 847);
                        gSPDisplayList(POLY_XLU_DISP++, sFlashDL);
                        Matrix_Pop();
                    }
                }
            }
        }

        actor = actor->next;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_ganon_otyuka.c", 857);
}
