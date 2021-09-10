/*
 * File: z_object_kankyo.c
 * Overlay: ovl_Object_Kankyo
 * Description: Environmental Effects
 */

#include "z_object_kankyo.h"
#include "objects/object_demo_kekkai/object_demo_kekkai.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x02000030

#define THIS ((ObjectKankyo*)thisx)

void ObjectKankyo_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjectKankyo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjectKankyo_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjectKankyo_Draw(Actor* thisx, GlobalContext* globalCtx);

void ObjectKankyo_SetupAction(ObjectKankyo* this, ObjectKankyoActionFunc func);
void ObjectKankyo_Fairies(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA4BFC(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA2DC8(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA4914(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA5304(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA4C68(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA4CD4(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA5370(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA53CC(ObjectKankyo* this, GlobalContext* globalCtx);

void ObjectKankyo_DrawFairies(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA414C(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA49BC(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA4D7C(ObjectKankyo* this, GlobalContext* globalCtx);
void func_80BA54AC(ObjectKankyo* this, GlobalContext* globalCtx);

extern Mtx D_01000000;
extern Gfx D_06009620[];

static u64* D_80BA58E0[] = {
    gEffLightning1Tex, gEffLightning2Tex, gEffLightning3Tex, gEffLightning4Tex,
    gEffLightning5Tex, gEffLightning6Tex, gEffLightning7Tex, gEffLightning8Tex,
};

static s32 D_80BA5900[] = {
    0x060015E0, 0x060025E0, 0x060035E0, 0x060045E0, 0x060055E0, 0x060065E0, 0x060075E0, 0x060085E0,
};

const ActorInit Object_Kankyo_InitVars = {
    ACTOR_OBJECT_KANKYO,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjectKankyo),
    (ActorFunc)ObjectKankyo_Init,
    (ActorFunc)ObjectKankyo_Destroy,
    (ActorFunc)ObjectKankyo_Update,
    (ActorFunc)ObjectKankyo_Draw,
};

static u8 sObjectKankyoSpawned = false;
static s16 sTrailingFairies = 0;

#ifdef DEBUG_OVL
static int dbgSpawnId = 0;
static int dbgCurId = 0;
static int dbgCurEff = 0;
static int debugTimer = 0;
static GfxPrint sDebugPrinter = {0};
static GfxPrint *dprint = &sDebugPrinter;
static int changed = 0;
static int infoDrawn = 0;
static int curId = -1;
static int dbgY;
static int dbgPaused = 0;
static int pausing = 0;

ObjectKankyoActionFunc dbgActionFuncs[] = {
    /* 0 */ ObjectKankyo_Fairies,
    /* 1 */ func_80BA2DC8,
    /* 2 */ func_80BA4914,
    /* 3 */ func_80BA4BFC,
    /* 4 */ func_80BA5304,
    /* 5 */ func_80BA4C68,
    /* 6 */ func_80BA4CD4,
    /* 7 */ func_80BA5370,
    /* 8 */ func_80BA53CC,
};
#endif

void ObjectKankyo_SetupAction(ObjectKankyo* this, ObjectKankyoActionFunc action) {
    this->actionFunc = action;
}

void ObjectKankyo_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjectKankyo* this = THIS;
    s32 pad;
    s16 i;

#ifdef DEBUG_OVL
    this->id = dbgSpawnId++;
#endif

    for (i = 0; i < ARRAY_COUNT(this->effects); i++) {
        this->effects[i].state = 0;
    }

    this->actor.room = -1;
    switch (this->actor.params) {
        case 0:
            if (!sObjectKankyoSpawned) {
                ObjectKankyo_SetupAction(this, ObjectKankyo_Fairies);
                sObjectKankyoSpawned = true;
            } else {
                Actor_Kill(&this->actor);
            }
            break;

        case 3:
            if (!sObjectKankyoSpawned) {
                ObjectKankyo_SetupAction(this, func_80BA2DC8);
                sObjectKankyoSpawned = true;
            } else {
                Actor_Kill(&this->actor);
            }
            break;

        case 2:
            ObjectKankyo_SetupAction(this, func_80BA4914);
            break;

        case 4:
            this->effects[0].alpha = 0;
            this->effects[0].unk4C = 0.0f;
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_ITEMACTION);
            this->unk_1659 = false;
            ObjectKankyo_SetupAction(this, func_80BA4BFC);
            break;

        case 5:
            this->effects[0].alpha = 0;
            this->effects[0].unk4C = 0.0f;

            for (i = 0; i < 6; i++) {
                this->effects[i].size = 0.1f;
            }

            if (Flags_GetEventChkInf(0xBB) != 0) {
                this->effects[0].size = 0.0f;
            }
            if (Flags_GetEventChkInf(0xBC) != 0) {
                this->effects[1].size = 0.0f;
            }
            if (Flags_GetEventChkInf(0xBD) != 0) {
                this->effects[2].size = 0.0f;
            }
            if (Flags_GetEventChkInf(0xBE) != 0) {
                this->effects[3].size = 0.0f;
            }
            if (Flags_GetEventChkInf(0xBF) != 0) {
                this->effects[4].size = 0.0f;
            }
            if (Flags_GetEventChkInf(0xAD) != 0) {
                this->effects[5].size = 0.0f;
            }

            if (gSaveContext.cutsceneTrigger != 0) {
                if (gSaveContext.entranceIndex == 0x0538) {
                    this->effects[0].size = 0.1f;
                }
                if (gSaveContext.entranceIndex == 0x053C) {
                    this->effects[1].size = 0.1f;
                }
                if (gSaveContext.entranceIndex == 0x0540) {
                    this->effects[2].size = 0.1f;
                }
                if (gSaveContext.entranceIndex == 0x0544) {
                    this->effects[3].size = 0.1f;
                }
                if (gSaveContext.entranceIndex == 0x0548) {
                    this->effects[4].size = 0.1f;
                }
                if (gSaveContext.entranceIndex == 0x054C) {
                    this->effects[5].size = 0.1f;
                }
            }
            this->unk_1659 = false;
            ObjectKankyo_SetupAction(this, func_80BA5304);
            break;
    }
}

void ObjectKankyo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    Actor_Kill(thisx);
}

void func_80BA2DC8(ObjectKankyo* this, GlobalContext* globalCtx) {
}

void ObjectKankyo_Fairies(ObjectKankyo* this, GlobalContext* globalCtx) {
    static Vec3f D_80BA5960 = { 0.0f, 0.0f, 0.0f };
    Player* player;
    f32 dist;
    s32 playerIdle;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 xzBounds;
    f32 spCC;
    f32 spC8;
    f32 spC4;
    Vec3f spB8 = { 0.0f, 0.0f, 0.0f };
    Vec3f spAC = { 0.0f, 0.0f, 0.0f };
    f32 random;
    s16 i;
    Vec3f sp74;

    player = GET_PLAYER(globalCtx);

    if (globalCtx->sceneNum == SCENE_SPOT04 && gSaveContext.sceneSetupIndex == 7) {
        dist = Math3D_Vec3f_DistXYZ(&this->lastEyePos, &globalCtx->view.eye);

        this->lastEyePos.x = globalCtx->view.eye.x;
        this->lastEyePos.y = globalCtx->view.eye.y;
        this->lastEyePos.z = globalCtx->view.eye.z;

        dist /= 30.0f;
        if (dist > 1.0f) {
            dist = 1.0f;
        }

        func_800F436C(&D_80BA5960, NA_SE_EV_NAVY_FLY - SFX_FLAG, (0.4f * dist) + 0.6f);
        switch (globalCtx->csCtx.frames) {
            case 473:
                func_800788CC(NA_SE_VO_NA_HELLO_3);
                break;

            case 583:
                func_800F4524(&D_801333D4, NA_SE_VO_NA_HELLO_2, 32);
                break;

            case 763:
                func_80078884(NA_SE_EV_NAVY_CRASH - SFX_FLAG);
                break;

            case 771:
                func_80078884(NA_SE_VO_RT_THROW);
                break;
        }
    }

    if (globalCtx->envCtx.unk_EE[3] < 64 &&
        (gSaveContext.entranceIndex != 0x00EE || gSaveContext.sceneSetupIndex != 4 || globalCtx->envCtx.unk_EE[3])) {
        globalCtx->envCtx.unk_EE[3] += 16;
    }

    for (i = 0; i < globalCtx->envCtx.unk_EE[3]; i++) {
        dx = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
        dy = globalCtx->view.lookAt.y - globalCtx->view.eye.y;
        dz = globalCtx->view.lookAt.z - globalCtx->view.eye.z;
        dist = sqrtf(SQ(dx) + SQ(dy) + SQ(dz));

        sp74.x = dx / dist;
        sp74.y = dy / dist;
        sp74.z = dz / dist;
        spDC = sp74.x;
        spD8 = sp74.y;
        spD4 = sp74.z;

        switch (this->effects[i].state) {
            case 0: // init
                this->effects[i].home.x = globalCtx->view.eye.x + spDC * 80.0f;
                this->effects[i].home.y = globalCtx->view.eye.y + spD8 * 80.0f;
                this->effects[i].home.z = globalCtx->view.eye.z + spD4 * 80.0f;

                this->effects[i].pos.x = (Rand_ZeroOne() - 0.5f) * 160.0f;
                this->effects[i].pos.y = 30.0f;
                this->effects[i].pos.z = (Rand_ZeroOne() - 0.5f) * 160.0f;
                this->effects[i].unk38 = Rand_ZeroOne() * 1.6f + 0.5f;
                this->effects[i].alpha = 0;
                this->effects[i].unk3C = Rand_ZeroOne() * 65535.0f;
                this->effects[i].size = 0.1f;
                this->effects[i].unk28.x = Rand_ZeroOne() * 360.0f;
                this->effects[i].unk28.y = Rand_ZeroOne() * 360.0f;
                this->effects[i].unk28.z = Rand_ZeroOne() * 360.0f;
                this->effects[i].state++;
                this->effects[i].timer = 0;
                break;

            case 1:
            case 2:
                this->effects[i].unk3C++;
                spCC = globalCtx->view.eye.x + sp74.x * 80.0f;
                spC8 = globalCtx->view.eye.y + sp74.y * 80.0f;
                spC4 = globalCtx->view.eye.z + sp74.z * 80.0f;

                this->effects[i].lastPos.x = this->effects[i].pos.x;
                this->effects[i].lastPos.y = this->effects[i].pos.y;
                this->effects[i].lastPos.z = this->effects[i].pos.z;

                playerIdle = true;
                if (player->actor.velocity.x + player->actor.velocity.y + player->actor.velocity.z == -4.0f) {
                    playerIdle = false;
                    this->effects[i].timer++;
                } else {
                    this->effects[i].timer = 0;
                }

                if (this->effects[i].state == 1) {
                    if (i < 32 && !playerIdle && this->effects[i].timer > 256) {
                        this->effects[i].timer = 0;
                        if (Rand_ZeroOne() < 0.5f) {
                            this->effects[i].unk48 = (s16)(Rand_ZeroOne() * 200.0f) + 200;
                        } else {
                            this->effects[i].unk48 = -((s16)(Rand_ZeroOne() * 200.0f) + 200);
                        }

                        this->effects[i].unk4A = (s16)(Rand_ZeroOne() * 50.0f) + 15;
                        this->effects[i].unk4C = ((Rand_ZeroOne() * 10.0f) + 10.0f) * 0.01f;

                        random = Rand_ZeroOne();
                        if (random < 0.2f) {
                            sTrailingFairies = 1;
                        } else if (random < 0.2f) { // never happens
                            sTrailingFairies = 3;
                        } else if (random < 0.4f) {
                            sTrailingFairies = 7;
                        } else {
                            sTrailingFairies = 15;
                        }

                        if (!(i & sTrailingFairies)) {
                            this->effects[i].pos.y = 0.0f;
                        }

                        this->effects[i].state = 2;
                        this->effects[i].unk38 = 0.0f;
                    }

                    Math_SmoothStepToF(&this->effects[i].size, 0.1f, 0.10f, 0.001f, 0.00001f);
                    Math_SmoothStepToF(&this->effects[i].unk34, this->effects[i].unk38, 0.5f, 0.2f, 0.02f);
                    this->effects[i].pos.x += sinf(this->effects[i].unk28.x) * this->effects[i].unk34;
                    this->effects[i].pos.y += sinf(this->effects[i].unk28.y) * this->effects[i].unk34;
                    this->effects[i].pos.z += sinf(this->effects[i].unk28.z) * this->effects[i].unk34;

                    switch ((i >> 1) & 3) {
                        case 0:
                            this->effects[i].unk28.x += 0.008f;
                            this->effects[i].unk28.y += 0.05f * Rand_ZeroOne();
                            this->effects[i].unk28.z += 0.015f;
                            break;

                        case 1:
                            this->effects[i].unk28.x += 0.01f * Rand_ZeroOne();
                            this->effects[i].unk28.y += 0.05f * Rand_ZeroOne();
                            this->effects[i].unk28.z += 0.005f * Rand_ZeroOne();
                            break;

                        case 2:
                            this->effects[i].unk28.x += 0.01f * Rand_ZeroOne();
                            this->effects[i].unk28.y += 0.4f * Rand_ZeroOne();
                            this->effects[i].unk28.z += 0.004f * Rand_ZeroOne();
                            break;

                        case 3:
                            this->effects[i].unk28.x += 0.01 * Rand_ZeroOne(); //! typo
                            this->effects[i].unk28.y += 0.08f * Rand_ZeroOne();
                            this->effects[i].unk28.z += 0.05f * Rand_ZeroOne();
                            break;
                    }
                } else if (this->effects[i].state == 2) {
                    if (playerIdle || this->effects[i].timer > 1280) {
                        this->effects[i].timer = 0;
                        this->effects[i].state = 1;
                        this->effects[i].unk34 = 1.5f;
                        this->effects[i].unk38 = (Rand_ZeroOne() * 1.6f) + 0.5f;
                    }

                    if (!(i & sTrailingFairies)) { // leader fairy
                        Math_SmoothStepToF(&this->effects[i].size, 0.25f, 0.1f, 0.001f, 0.00001f);

                        Math_SmoothStepToF(&this->effects[i].home.x, player->actor.world.pos.x, 0.5f, 1, 0.2f);
                        Math_SmoothStepToF(&this->effects[i].home.y, player->actor.world.pos.y + 50.0f, 0.5f, 1.0f,
                                           0.2f);
                        Math_SmoothStepToF(&this->effects[i].home.z, player->actor.world.pos.z, 0.5f, 1, 0.2f);

                        Math_SmoothStepToF(&this->effects[i].pos.x,
                                           Math_SinS(this->effects[i].unk3E - 0x8000) * this->effects[i].unk4A, 0.5f,
                                           2.0f, 0.2f);
                        Math_SmoothStepToF(&this->effects[i].pos.z,
                                           Math_CosS(this->effects[i].unk3E - 0x8000) * this->effects[i].unk4A, 0.5f,
                                           2.0f, 0.2f);
                        this->effects[i].unk3E += this->effects[i].unk48;
                        this->effects[i].pos.y += sinf(this->effects[i].unk28.y);

                        this->effects[i].unk28.x += 0.2f * Rand_ZeroOne();
                        this->effects[i].unk28.y += this->effects[i].unk4C;
                        this->effects[i].unk28.z += 0.1f * Rand_ZeroOne();

                        this->effects[i].pos.x = Math_SinS(this->effects[i].unk3E - 0x8000) * this->effects[i].unk4A;
                        this->effects[i].pos.z = Math_CosS(this->effects[i].unk3E - 0x8000) * this->effects[i].unk4A;
                    } else { // trailing fairy
                        // fake, or typo of 0.01f?
                        Math_SmoothStepToF(&this->effects[i].size, 0.1f, 0.10f, 0.001f, 0.00001f);
                        Math_SmoothStepToF(&this->effects[i].unk34, 1.5f, 0.5f, 0.1f, 0.0002f);

                        // follow previous fairy, translate their position to be relative to our home
                        this->effects[i].pos.x = this->effects[i - 1].lastPos.x +
                                                (this->effects[i - 1].home.x - this->effects[i].home.x);
                        this->effects[i].pos.y = this->effects[i - 1].lastPos.y +
                                                (this->effects[i - 1].home.y - this->effects[i].home.y);
                        this->effects[i].pos.z = this->effects[i - 1].lastPos.z +
                                                (this->effects[i - 1].home.z - this->effects[i].home.z);
                    }
                }

                if (this->effects[i].state != 2) {
                    xzBounds = 130.0f;
                    if (this->effects[i].home.x + this->effects[i].pos.x - spCC >  xzBounds ||
                        this->effects[i].home.x + this->effects[i].pos.x - spCC < -xzBounds ||
                        this->effects[i].home.y + this->effects[i].pos.y - spC8 >  xzBounds ||
                        this->effects[i].home.y + this->effects[i].pos.y - spC8 < -xzBounds ||
                        this->effects[i].home.z + this->effects[i].pos.z - spC4 >  xzBounds ||
                        this->effects[i].home.z + this->effects[i].pos.z - spC4 < -xzBounds) {

                        // warp back to home when too far away
                        if (this->effects[i].home.x + this->effects[i].pos.x - spCC > xzBounds) {
                            this->effects[i].home.x = spCC - xzBounds;
                            this->effects[i].pos.x = 0.0f;
                        }
                        if (this->effects[i].home.x + this->effects[i].pos.x - spCC < -xzBounds) {
                            this->effects[i].home.x = spCC + xzBounds;
                            this->effects[i].pos.x = 0.0f;
                        }
                        if (this->effects[i].home.y + this->effects[i].pos.y - spC8 > 50.0f) {
                            this->effects[i].home.y = spC8 - 50.0f;
                            this->effects[i].pos.y = 0.0f;
                        }
                        if (this->effects[i].home.y + this->effects[i].pos.y - spC8 < -50.0f) {
                            this->effects[i].home.y = spC8 + 50.0f;
                            this->effects[i].pos.y = 0.0f;
                        }
                        if (this->effects[i].home.z + this->effects[i].pos.z - spC4 > xzBounds) {
                            this->effects[i].home.z = spC4 - xzBounds;
                            this->effects[i].pos.z = 0.0f;
                        }
                        if (this->effects[i].home.z + this->effects[i].pos.z - spC4 < -xzBounds) {
                            this->effects[i].home.z = spC4 + xzBounds;
                            this->effects[i].pos.z = 0.0f;
                        }
                    }
                }
                break;

            case 3: // despawn
                this->effects[i].state = 0;
                break;
        }
    }
}

void ObjectKankyo_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjectKankyo* this = THIS;
#ifdef DEBUG_OVL
    int prevAction;

    if (!infoDrawn || this->id == curId)
    {
        curId = this->id;
        dbgY = 2;
        OPEN_DISPS(globalCtx->state.gfxCtx, __FILE__, __LINE__);
        gSPSegment(POLY_OPA_DISP++, 0x08, NULL);
        GfxPrint_Init(dprint);
        GfxPrint_Open(dprint, POLY_OPA_DISP);

        GfxPrint_SetColor(dprint, 255, 255, 255, 255);

        GfxPrint_SetPos(dprint, 0, dbgY++);
        GfxPrint_Printf(dprint, "id %d / %d", dbgCurId, dbgSpawnId);

        POLY_OPA_DISP = GfxPrint_Close(dprint);
        CLOSE_DISPS(globalCtx->state.gfxCtx, __FILE__, __LINE__);

        infoDrawn = true;
    }

    if (!changed && CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_DRIGHT)) {
        dbgCurId++;
        if (dbgCurId >= dbgSpawnId) {
            dbgCurId = 0;
        }
        changed = true;
    } else if (!changed && CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_DLEFT)) {
        dbgCurId--;
        if (dbgCurId < 0) {
            dbgCurId = dbgSpawnId - 1;
        }
        changed = true;
        infoDrawn = false;
        curId = -1;
    } else if (changed && !CHECK_BTN_ANY(globalCtx->state.input[0].press.button, BTN_DLEFT | BTN_DRIGHT)) {
        changed = false;
        infoDrawn = false;
        curId = -1;
    }

    if (CHECK_BTN_ALL(globalCtx->state.input[0].cur.button, BTN_DUP | BTN_L)) {
        if (!pausing) {
            dbgPaused = !dbgPaused;
        }
        pausing = true;
    } else if (pausing)
    {
        pausing = false;
    }

    if (this->id == dbgCurId) {
        int i;
        for (i = 0; i < ARRAY_COUNT(dbgActionFuncs); i++) {
            if (dbgActionFuncs[i] == this->actionFunc) {
                prevAction = i;
                break;
            }
        }
    }
    if (!dbgPaused)
#endif
    this->actionFunc(this, globalCtx);
#ifdef DEBUG_OVL
    if (this->id == dbgCurId) {
        int curAction;
        int i = 0;
        if (CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_DUP)) {
            dbgCurEff++;
            if (dbgCurEff >= ARRAY_COUNT(this->effects)) {
                dbgCurEff = 0;
            }
        } else if (CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_DDOWN)) {
            dbgCurEff--;
            if (dbgCurEff < 0) {
                dbgCurEff = ARRAY_COUNT(this->effects) - 1;
            }
        }
        dbgY = 3;
        OPEN_DISPS(globalCtx->state.gfxCtx, __FILE__, __LINE__);
        gSPSegment(POLY_OPA_DISP++, 0x08, NULL);
        GfxPrint_Init(dprint);
        GfxPrint_Open(dprint, POLY_OPA_DISP);

        GfxPrint_SetColor(dprint, 255, 255, 255, 255);

        GfxPrint_SetPos(dprint, 0, dbgY);
        for (i = 0; i < ARRAY_COUNT(dbgActionFuncs); i++) {
            if (dbgActionFuncs[i] == this->actionFunc) {
                curAction = i;
                break;
            }
        }

        if (i >= ARRAY_COUNT(dbgActionFuncs)) {
            GfxPrint_SetColor(dprint, 255, 0, 0, 255);
            GfxPrint_Printf(dprint, "unlisted action: %08x\n", this->actionFunc);
            GfxPrint_SetColor(dprint, 255, 255, 255, 255);
        } else {
            if (curAction != prevAction) {
                GfxPrint_SetColor(dprint, 0, 255, 0, 255);
                GfxPrint_Printf(dprint, "actionFunc %d %d\n", prevAction, curAction);
                GfxPrint_SetColor(dprint, 255, 255, 255, 255);
            } else {
                GfxPrint_Printf(dprint, "actionFunc %d %d\n", prevAction, curAction);
                GfxPrint_Printf(dprint, "pause %d %d\n", dbgPaused, pausing);
            }
        }

        GfxPrint_Printf(dprint, "params: %hd\n", this->actor.params);
        GfxPrint_Printf(dprint, "lookAt x %-8.2f y %-8.2f z %-8.2f\n", globalCtx->view.lookAt.x, globalCtx->view.lookAt.y, globalCtx->view.lookAt.z);
        GfxPrint_Printf(dprint, "eye    x %-8.2f y %-8.2f z %-8.2f\n", globalCtx->view.eye.x, globalCtx->view.eye.y, globalCtx->view.eye.z);
        GfxPrint_SetColor(dprint, 70, 200, 240, 255);
        GfxPrint_Printf(dprint, "eff %d\n", dbgCurEff);
        GfxPrint_SetColor(dprint, 255, 255, 255, 255);

#define VEC_ARGS(vec) vec.x, vec.y, vec.z

        GfxPrint_Printf(dprint, " unk4 % 7.1f % 7.1f % 7.1f\n", VEC_ARGS(this->effects[dbgCurEff].pos));
        GfxPrint_Printf(dprint, "unk10 % 7.1f % 7.1f % 7.1f\n", VEC_ARGS(this->effects[dbgCurEff].lastPos));
        GfxPrint_Printf(dprint, "unk1C % 7.1f % 7.1f % 7.1f\n", VEC_ARGS(this->effects[dbgCurEff].home));
        GfxPrint_Printf(dprint, "unk28 % 7.1f % 7.1f % 7.1f\n", VEC_ARGS(this->effects[dbgCurEff].unk28));
        GfxPrint_Printf(dprint, "state %d\n", this->effects[dbgCurEff].state);
        GfxPrint_Printf(dprint, "unk34 %f\n", this->effects[dbgCurEff].unk34);
        GfxPrint_Printf(dprint, "unk38 %f\n", this->effects[dbgCurEff].unk38);
        GfxPrint_Printf(dprint, "unk3C %#hx\n", this->effects[dbgCurEff].unk3C);
        GfxPrint_Printf(dprint, "unk3E %#hx\n", this->effects[dbgCurEff].unk3E);
        GfxPrint_Printf(dprint, "alpha %d\n", this->effects[dbgCurEff].alpha);
        GfxPrint_Printf(dprint, "unk44 %f\n", this->effects[dbgCurEff].size);
        GfxPrint_Printf(dprint, "unk48 %#hx\n", this->effects[dbgCurEff].unk48);
        GfxPrint_Printf(dprint, "unk4A %#hx\n", this->effects[dbgCurEff].unk4A);
        GfxPrint_Printf(dprint, "unk4C %f\n", this->effects[dbgCurEff].unk4C);
        GfxPrint_Printf(dprint, "unk50 %hu\n", this->effects[dbgCurEff].timer);

        POLY_OPA_DISP = GfxPrint_Close(dprint);
        CLOSE_DISPS(globalCtx->state.gfxCtx, __FILE__, __LINE__);
    }
#endif
}

void ObjectKankyo_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ObjectKankyo* this = THIS;
    switch (this->actor.params) {
        case 0:
            ObjectKankyo_DrawFairies(this, globalCtx);
            break;
        case 2:
            func_80BA49BC(this, globalCtx);
            break;
        case 3:
            func_80BA414C(this, globalCtx);
            break;
        case 4:
            func_80BA4D7C(this, globalCtx);
            break;
        case 5:
            func_80BA54AC(this, globalCtx);
            break;
        default:
            break;
    }
}

void ObjectKankyo_DrawFairies(ObjectKankyo* this2, GlobalContext* globalCtx2) {
    ObjectKankyo* this = this2;
    GlobalContext* globalCtx = globalCtx2;
    f32 alphaScale;
    Vec3f spA0 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp94 = { 0.0f, 0.0f, 0.0f };
    s16 i;

    if (!(globalCtx->cameraPtrs[0]->unk_14C & 0x100)) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 807);
        POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 20);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(gSun1Tex));
        gSPDisplayList(POLY_XLU_DISP++, gKokiriDustMoteTextureLoadDL);

        for (i = 0; i < globalCtx->envCtx.unk_EE[3]; i++) {
            Matrix_Translate(this->effects[i].home.x + this->effects[i].pos.x,
                             this->effects[i].home.y + this->effects[i].pos.y,
                             this->effects[i].home.z + this->effects[i].pos.z, MTXMODE_NEW);

            alphaScale = this->effects[i].alpha / 50.0f;
            if (alphaScale > 1.0f) {
                alphaScale = 1.0f;
            }

            Matrix_Scale(this->effects[i].size * alphaScale, this->effects[i].size * alphaScale, this->effects[i].size * alphaScale,
                         MTXMODE_APPLY);
            if (i < 32) {
                if (this->effects[i].state != 2) {
                    if (this->effects[i].alpha > 0) {
                        this->effects[i].alpha--;
                    }
                } else if (this->effects[i].alpha < 100) {
                    this->effects[i].alpha++;
                }
            } else {
                if (this->effects[i].state != 2) {
                    if ((this->effects[i].unk3C & 0x1F) < 16) {
                        if (this->effects[i].alpha < 235) {
                            this->effects[i].alpha += 20;
                        }
                    } else if (this->effects[i].alpha > 20) {
                        this->effects[i].alpha -= 20;
                    }
                } else {
                    if ((this->effects[i].unk3C & 0xF) < 8) {
                        if (this->effects[i].alpha < 255) {
                            this->effects[i].alpha += 100;
                        }
                    } else if (this->effects[i].alpha > 10) {
                        this->effects[i].alpha -= 10;
                    }
                }
            }

            gDPPipeSync(POLY_XLU_DISP++);

#ifdef DEBUG_OVL
            if (dbgCurEff == i) {
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 100, 100, this->effects[i].alpha);
                    gDPSetEnvColor(POLY_XLU_DISP++, 250, 180, 0, this->effects[i].alpha);
            } else
#endif
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

            // Rotate sprites every frame
            Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
            Matrix_RotateZ(globalCtx->state.frames * 20.0f * 0.017453292f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 913), G_MTX_LOAD);
            gSPDisplayList(POLY_XLU_DISP++, gKokiriDustMoteDL);
        }
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 922);
    }
}

void func_80BA414C(ObjectKankyo* this2, GlobalContext* globalCtx2) {
    ObjectKankyo* this = this2;
    GlobalContext* globalCtx = globalCtx2;
    f32 dist;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 temp_f10;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f16;
    f32 temp;
    Vec3f spE0 = { 0.0f, 0.0f, 0.0f };
    Vec3f spD4 = { 0.0f, 0.0f, 0.0f };
    s16 i;
    s32 pad;
    s32 pad2;

    if (!(globalCtx->cameraPtrs[0]->unk_14C & 0x100)) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 958);
        if (globalCtx->envCtx.unk_EE[2] < globalCtx->envCtx.unk_EE[3]) {
            if (!(globalCtx->state.frames & 0xF)) {
                globalCtx->envCtx.unk_EE[2] += 2;
            }
        } else if (globalCtx->envCtx.unk_EE[2] > globalCtx->envCtx.unk_EE[3]) {
            if (!(globalCtx->state.frames & 0xF)) {
                globalCtx->envCtx.unk_EE[2] -= 2;
            }
        }

        for (i = 0; i < globalCtx->envCtx.unk_EE[2]; i++) {
            switch (this->effects[i].state) {
                case 0:
                    dx = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
                    dy = globalCtx->view.lookAt.y - globalCtx->view.eye.y;
                    dz = globalCtx->view.lookAt.z - globalCtx->view.eye.z;
                    dist = sqrtf(SQ(dx) + SQ(dy) + SQ(dz));

                    // fake
                    temp = dz / dist;
                    this->effects[i].home.x = globalCtx->view.eye.x + dx / dist * 80.0f;
                    this->effects[i].home.y = globalCtx->view.eye.y + dy / dist * 80.0f;
                    this->effects[i].home.z = globalCtx->view.eye.z + temp * 80.0f;

                    this->effects[i].pos.x = (Rand_ZeroOne() - 0.5f) * 160.0f;
                    this->effects[i].pos.y = 80.0f;
                    this->effects[i].pos.z = (Rand_ZeroOne() - 0.5f) * 160.0f;
                    if (this->effects[i].home.y + this->effects[i].pos.y < 50.0f) {
                        this->effects[i].home.y = 50.0f;
                    }
                    this->effects[i].unk34 = Rand_ZeroOne() * 5.0f + 0.5f;
                    this->effects[i].unk28.x = Rand_ZeroOne() * 360.0f;
                    this->effects[i].unk28.z = Rand_ZeroOne() * 360.0f;
                    this->effects[i].state++;
                    break;

                case 1:
                    dx = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
                    dy = globalCtx->view.lookAt.y - globalCtx->view.eye.y;
                    dz = globalCtx->view.lookAt.z - globalCtx->view.eye.z;
                    dist = sqrtf(SQ(dx) + SQ(dy) + SQ(dz));

                    temp_f26 = globalCtx->view.eye.x + dx / dist * 80.0f;
                    temp_f16 = globalCtx->view.eye.y + dy / dist * 80.0f;
                    temp_f10 = globalCtx->view.eye.z + dz / dist * 80.0f;

                    this->effects[i].unk28.x += 0.049999997f * Rand_ZeroOne();
                    this->effects[i].unk28.z += 0.049999997f * Rand_ZeroOne();
                    this->effects[i].pos.x += sinf(this->effects[i].unk28.x * 0.01f);
                    this->effects[i].pos.z += cosf(this->effects[i].unk28.z * 0.01f);
                    this->effects[i].pos.y += -this->effects[i].unk34;

                    if (this->effects[i].home.y + this->effects[i].pos.y < this->actor.world.pos.y ||
                        this->effects[i].home.y + this->effects[i].pos.y < globalCtx->view.eye.y - 150.0f) {
                        this->effects[i].state++;
                    }

                    temp_f24 = 80;
                    if (this->effects[i].home.x + this->effects[i].pos.x - temp_f26 >  temp_f24 ||
                        this->effects[i].home.x + this->effects[i].pos.x - temp_f26 < -temp_f24 ||
                        this->effects[i].home.y + this->effects[i].pos.y - temp_f16 >  temp_f24 ||
                        this->effects[i].home.y + this->effects[i].pos.y - temp_f16 < -temp_f24 ||
                        this->effects[i].home.z + this->effects[i].pos.z - temp_f10 >  temp_f24 ||
                        this->effects[i].home.z + this->effects[i].pos.z - temp_f10 < -temp_f24) {
                        if (this->effects[i].home.x + this->effects[i].pos.x - temp_f26 > temp_f24) {
                            this->effects[i].home.x = temp_f26 - temp_f24;
                            this->effects[i].pos.x = 0.0f;
                        }
                        if (this->effects[i].home.x + this->effects[i].pos.x - temp_f26 < -temp_f24) {
                            this->effects[i].home.x = temp_f26 + temp_f24;
                            this->effects[i].pos.x = 0.0f;
                        }
                        if (this->effects[i].home.z + this->effects[i].pos.z - temp_f10 > temp_f24) {
                            this->effects[i].home.z = temp_f10 - temp_f24;
                            this->effects[i].pos.z = 0.0f;
                        }
                        if (this->effects[i].home.z + this->effects[i].pos.z - temp_f10 < -temp_f24) {
                            this->effects[i].home.z = temp_f10 + temp_f24;
                            this->effects[i].pos.z = 0.0f;
                        }
                    }
                    break;

                case 2:
                    this->effects[i].state = 0;
                    break;
            }

            if (1) {} if (1) {}
            Matrix_Translate(this->effects[i].home.x + this->effects[i].pos.x,
                             this->effects[i].home.y + this->effects[i].pos.y,
                             this->effects[i].home.z + this->effects[i].pos.z, MTXMODE_NEW);
            Matrix_Scale(0.05f, 0.05f, 0.05f, MTXMODE_APPLY);
            gDPPipeSync(POLY_XLU_DISP++);

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 200, 200, 180);

            gDPSetEnvColor(POLY_XLU_DISP++, 200, 200, 200, 180);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1107),
                      G_MTX_LOAD);

            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(gDust5Tex));

            func_80094C50(globalCtx->state.gfxCtx);
            gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_MODELVIEW | G_MTX_NOPUSH | G_MTX_MUL);

            gDPPipeSync(POLY_XLU_DISP++);

            gSPDisplayList(POLY_XLU_DISP++, gEffDustDL);

            gDPPipeSync(POLY_XLU_DISP++);
        }

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1127);
    }
}

void func_80BA4914(ObjectKankyo* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state != 0 && globalCtx->csCtx.npcActions[0] != NULL) {
        switch (this->effects[0].state) {
            case 0:
                this->effects[0].timer = 0;
                if (globalCtx->csCtx.npcActions[0]->action == 2) {
                    this->effects[0].state++;
                    return; // TODO
                }
                break;

            case 1:
                if (++this->effects[0].timer >= 7) {
                    this->effects[0].state++;
                }
                break;

            case 2:
                if (globalCtx->csCtx.npcActions[0]->action == 1) {
                    this->effects[0].state = 0;
                }
                break;
        }
    }
}

void func_80BA49BC(ObjectKankyo* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1182);

    if (this->effects[0].state == 1) {
        Matrix_Translate(globalCtx->csCtx.npcActions[0]->startPos.x,
                         globalCtx->csCtx.npcActions[0]->startPos.y,
                         globalCtx->csCtx.npcActions[0]->startPos.z, MTXMODE_NEW);
        Matrix_RotateX(0.34906584f, MTXMODE_APPLY);
        Matrix_RotateZ(0.34906584f, MTXMODE_APPLY);
        Matrix_Scale(2.0f, 5.0f, 2.0f, MTXMODE_APPLY);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 128);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 255, 255, 128);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1213), G_MTX_LOAD);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80BA58E0[this->effects[0].timer]));
        func_80094C50(globalCtx->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_MODELVIEW | G_MTX_NOPUSH | G_MTX_MUL);
        gDPPipeSync(POLY_XLU_DISP++);
        gSPDisplayList(POLY_XLU_DISP++, gEffLightningDL);
        gDPPipeSync(POLY_XLU_DISP++);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1233);
}

void func_80BA4BFC(ObjectKankyo* this, GlobalContext* globalCtx) {
    s32 i;

    i = Object_GetIndex(&globalCtx->objectCtx, OBJECT_SPOT02_OBJECTS);
    if (i < 0) {
        __assert("0", "../z_object_kankyo.c", 1251);
    } else {
        this->unk_1658 = i;
    }
    ObjectKankyo_SetupAction(this, func_80BA4C68);
}

void func_80BA4C68(ObjectKankyo* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_1658)) {
        this->unk_1659 = true;
        this->effects[0].alpha = 0;
        this->actor.objBankIndex = this->unk_1658;
        this->effects[0].size = 7.0f;
        ObjectKankyo_SetupAction(this, func_80BA4CD4);
    }
}

void func_80BA4CD4(ObjectKankyo* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state != 0) {
        if ((globalCtx->csCtx.npcActions[1] != 0) && (globalCtx->csCtx.npcActions[1]->action == 2)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BIRI_SPARK - SFX_FLAG);
            if ((s16)this->effects[0].alpha + 20 >= 256) {
                this->effects[0].alpha = 255;
            } else {
                this->effects[0].alpha += 20;
            }
            Math_SmoothStepToF(&this->effects[0].size, 1.8f, 0.5f, 0.28f, 0.01f);
        }
    }
}

void func_80BA4D7C(ObjectKankyo* this2, GlobalContext* globalCtx2) {
    ObjectKankyo* this = this2;
    GlobalContext* globalCtx = globalCtx2;
    Vec3f start;
    Vec3f end;
    f32 interp;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1324);
    if (globalCtx->csCtx.state != 0) {
        if (globalCtx->csCtx.npcActions[1] != NULL && globalCtx->csCtx.npcActions[1]->action == 2 && this->unk_1659) {
            if (this->effects[0].state == 0) {
                this->effects[0].unk4C += 0.14285715f;
                if (this->effects[0].unk4C >= 1.0f) {
                    this->effects[0].unk4C = 1.0f;
                    this->effects[0].state += 1;
                }
            } else {
                this->effects[0].unk4C -= 0.14285715f;
                if (this->effects[0].unk4C <= 0.1f) {
                    this->effects[0].unk4C = 0.0f;
                    this->effects[0].state = 0;
                }
            }

            if (++this->effects[0].timer > 7) {
                this->effects[0].timer = 0;
            }

            start.x = globalCtx->csCtx.npcActions[1]->startPos.x;
            start.y = globalCtx->csCtx.npcActions[1]->startPos.y;
            start.z = globalCtx->csCtx.npcActions[1]->startPos.z;

            end.x = globalCtx->csCtx.npcActions[1]->endPos.x;
            end.y = globalCtx->csCtx.npcActions[1]->endPos.y;
            end.z = globalCtx->csCtx.npcActions[1]->endPos.z;

            interp = func_8006F93C(globalCtx->csCtx.npcActions[1]->endFrame,
                                   globalCtx->csCtx.npcActions[1]->startFrame,
                                   globalCtx->csCtx.frames);
            Matrix_Translate((end.x - start.x) * interp + start.x,
                             (end.y - start.y) * interp + start.y,
                             (end.z - start.z) * interp + start.z, MTXMODE_NEW);
            Matrix_Scale(this->effects[0].size, this->effects[0].size, this->effects[0].size, MTXMODE_APPLY);
            func_80093D84(globalCtx->state.gfxCtx);
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, (u8)(105 * this->effects[0].unk4C) + 150, 255,
                            (u8)(105 * this->effects[0].unk4C) + 150, this->effects[0].alpha);
            gDPSetEnvColor(POLY_XLU_DISP++, (u8)(155 * this->effects[0].unk4C) + 100,
                           (u8)(255 * this->effects[0].unk4C), 255 - (u8)(255 * this->effects[0].unk4C),
                           this->effects[0].alpha);

            Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1416),
                      G_MTX_LOAD);

            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80BA5900[this->effects[0].timer]));
            gDPPipeSync(POLY_XLU_DISP++);

            gSPDisplayList(POLY_XLU_DISP++, D_06009620);
            gDPPipeSync(POLY_XLU_DISP++);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1432);
}

void func_80BA5304(ObjectKankyo* this, GlobalContext* globalCtx) {
    s32 i;

    i = Object_GetIndex(&globalCtx->objectCtx, OBJECT_DEMO_KEKKAI);
    if (i < 0) {
        __assert("0", "../z_object_kankyo.c", 1449);
    } else {
        this->unk_1658 = i;
    }
    ObjectKankyo_SetupAction(this, func_80BA5370);
}

void func_80BA5370(ObjectKankyo* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_1658)) {
        this->unk_1659 = true;
        this->actor.objBankIndex = this->unk_1658;
        ObjectKankyo_SetupAction(this, func_80BA53CC);
    }
}

void func_80BA53CC(ObjectKankyo* this, GlobalContext* globalCtx) {
    u8 i;

    if (globalCtx->csCtx.state != 0) {
        for (i = 0; i < 6; i++) {
            if (globalCtx->csCtx.npcActions[i + 1] != NULL && globalCtx->csCtx.npcActions[i + 1]->action == 2) {
                if (this->effects[i].size == 0.1f) {
                    func_800F3F3C(11);
                }
                Math_ApproachZeroF(&this->effects[i].size, 0.1f, 0.1f);
            }
        }
    }
}

void func_80BA54AC(ObjectKankyo* this2, GlobalContext* globalCtx2) {
    static Color_RGB8 D_80BA5A14[] = {
        { 255, 255, 170 }, { 170, 255, 255 }, { 255, 170, 255 },
        { 255, 255, 170 }, { 255, 255, 170 }, { 255, 255, 170 },
    };
    static Color_RGB8 D_80BA5A28[] = {
        { 0, 200, 0 }, { 0, 50, 255 }, { 100, 0, 200 }, { 200, 0, 0 }, { 200, 255, 0 }, { 255, 120, 0 },
    };
    ObjectKankyo* this = this2;
    GlobalContext* globalCtx = globalCtx2;
    s16 i;
    f32 sp114[] = { 430.0f, 860.0f, 430.0f, -426.0f, -862.0f, -440.0f };
    f32 spFC[] = { 551.0f, 551.0f, 551.0f, 554.0f, 551.0f, 547.0f };
    f32 spE4[] = { -96.0f, -840.0f, -1585.0f, -1578.0f, -840.0f, -78.0f };
    f32 spCC[] = { 29.9f, 90.0f, 150.0f, 30.0f, 90.0f, -30.1f };
    f32 spB4[] = { 103.4f, 103.8f, 103.6f, -103.4f, -103.5f, 103.5f };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1539);

    if (this->unk_1659) {
        for (i = 0; i < 6; i++) {
            if (this->effects[i].size > 0.001f) {
                Matrix_Translate(sp114[i], spFC[i], spE4[i], MTXMODE_NEW);
                Matrix_RotateY(spCC[i] * 0.017453292f, MTXMODE_APPLY);
                Matrix_RotateX(spB4[i] * 0.017453292f, MTXMODE_APPLY);
                Matrix_Scale(this->effects[i].size, 0.1f, this->effects[i].size, MTXMODE_APPLY);
                func_80093D84(globalCtx->state.gfxCtx);
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 128, D_80BA5A14[i].r, D_80BA5A14[i].g, D_80BA5A14[i].b, 128);
                gDPSetEnvColor(POLY_XLU_DISP++, D_80BA5A28[i].r, D_80BA5A28[i].g, D_80BA5A28[i].b, 128);
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1586),
                          G_MTX_LOAD);
                gSPSegment(POLY_XLU_DISP++, 0x08,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, globalCtx->state.frames * 5,
                                            globalCtx->state.frames * 10, 32, 64, 1, globalCtx->state.frames * 5,
                                            globalCtx->state.frames * 10, 32, 64));
                gSPDisplayList(POLY_XLU_DISP++, gDemoKekkaiDL_005FF0);
            }
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1607);
}
