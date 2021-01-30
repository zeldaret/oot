#include "z_bg_hidan_rock.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanRock*)thisx)

void BgHidanRock_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRock_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRock_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8088B24C(BgHidanRock* this);

void func_8088B268(BgHidanRock* this, GlobalContext* globalCtx);
void func_8088B5F4(BgHidanRock* this, GlobalContext* globalCtx);
void func_8088B634(BgHidanRock* this, GlobalContext* globalCtx);
void func_8088B69C(BgHidanRock* this, GlobalContext* globalCtx);
void func_8088B79C(BgHidanRock* this, GlobalContext* globalCtx);
void func_8088B90C(BgHidanRock* this, GlobalContext* globalCtx);
void func_8088B954(BgHidanRock* this, GlobalContext* globalCtx);
void func_8088B990(BgHidanRock* this, GlobalContext* globalCtx);

void func_8088BC40(GlobalContext* globalCtx, BgHidanRock* this);

extern Gfx D_0600C100[];
extern Gfx D_0600C1F0[];
extern Gfx D_0600CA10[];
extern CollisionHeader* D_0600CB80;
extern CollisionHeader* D_0600DF78;

static Vec3f D_8088BF60 = { 3310.0f, 120.0f, 0.0f };

const ActorInit Bg_Hidan_Rock_InitVars = {
    ACTOR_BG_HIDAN_ROCK,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanRock),
    (ActorFunc)BgHidanRock_Init,
    (ActorFunc)BgHidanRock_Destroy,
    (ActorFunc)BgHidanRock_Update,
    (ActorFunc)BgHidanRock_Draw,
};

static ColliderCylinderInit D_8088BF8C = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x20000000, 0x01, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NONE,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { 45, 77, -40, { 3310, 120, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -600, ICHAIN_STOP),
};

void BgHidanRock_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanRock* this = THIS;
    DynaPolyActor* dyna = &this->dyna;
    CollisionHeader* col_header = NULL;

    Actor_ProcessInitChain(&dyna->actor, sInitChain);
    DynaPolyActor_Init(dyna, DPM_PLAYER);

    this->params = dyna->actor.params & 0xFF;
    this->unk_169 = 0;

    this->dyna.actor.params = ((dyna->actor.params) >> 8) & 0xFF;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &dyna->actor, &D_8088BF8C);

    if (this->params == 0) {
        if (Flags_GetSwitch(globalCtx, dyna->actor.params) != 0) {
            Math_Vec3f_Copy(&this->dyna.actor.home.pos, &D_8088BF60);
            Math_Vec3f_Copy(&this->dyna.actor.world.pos, &D_8088BF60);
            this->unk_16A = 0x3C;
            this->actionFunc = func_8088B5F4;
        } else {
            this->actionFunc = func_8088B268;
        }
        this->dyna.actor.flags = dyna->actor.flags | 0x30;
        CollisionHeader_GetVirtual(&D_0600CB80, &col_header);
    } else {
        CollisionHeader_GetVirtual(&D_0600DF78, &col_header);
        this->collider.dim.pos.x = dyna->actor.home.pos.x;
        this->collider.dim.pos.y = dyna->actor.home.pos.y;
        this->collider.dim.pos.z = dyna->actor.home.pos.z;
        this->actionFunc = func_8088B634;
    }

    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &dyna->actor, col_header);
    this->unk_16A = 0;
}

void BgHidanRock_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanRock* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyCylinder(globalCtx, &this->collider);
    func_800F89E8(&this->unk_170);
}

void func_8088B24C(BgHidanRock* this) {
    this->dyna.actor.flags = this->dyna.actor.flags | 0x30;
    this->actionFunc = func_8088B990;
}

void func_8088B268(BgHidanRock* this, GlobalContext* globalCtx) {
    static f32 D_8088BFC0 = 0.0f;
    f32 sp2C;
    s32 temp_v1;
    s32 frame;
    Player* player = PLAYER;

    if (this->dyna.unk_150 != 0.0f) {
        if (this->unk_16A == 0) {
            if (D_8088BFC0 == 0.0f) {
                if (this->dyna.unk_150 > 0.0f) {
                    D_8088BFC0 += 0.01f;
                } else {
                    D_8088BFC0 -= 0.01f;
                }
            }

            this->dyna.actor.speedXZ = this->dyna.actor.speedXZ + 0.05f;
            this->dyna.actor.speedXZ = (this->dyna.actor.speedXZ > 2.0f) ? 2.0f : this->dyna.actor.speedXZ;

            if (D_8088BFC0 > 0.0f) {
                temp_v1 = Math_StepToF(&D_8088BFC0, 20.0f, this->dyna.actor.speedXZ);
            } else {
                temp_v1 = Math_StepToF(&D_8088BFC0, -20.0f, this->dyna.actor.speedXZ);
            }

            this->dyna.actor.world.pos.x = (Math_SinS(this->dyna.unk_158) * D_8088BFC0) + this->dyna.actor.home.pos.x;
            this->dyna.actor.world.pos.z = (Math_CosS(this->dyna.unk_158) * D_8088BFC0) + this->dyna.actor.home.pos.z;

            if (temp_v1 != 0) {
                player->stateFlags2 &= ~0x10;
                this->dyna.unk_150 = 0.0f;
                this->dyna.actor.home.pos.x = this->dyna.actor.world.pos.x;
                this->dyna.actor.home.pos.z = this->dyna.actor.world.pos.z;
                D_8088BFC0 = 0.0f;
                this->dyna.actor.speedXZ = 0.0f;
                this->unk_16A = 5;
            }

            func_8002F974(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
        } else {
            player->stateFlags2 &= ~0x10;
            this->dyna.unk_150 = 0.0f;
            if (this->unk_16A != 0) {
                this->unk_16A--;
            }
        }
    } else {
        this->unk_16A = 0;
    }

    sp2C = this->dyna.actor.world.pos.z - D_8088BF60.z;
    if (sp2C < 0.5f) {
        Flags_SetSwitch(globalCtx, this->dyna.actor.params);
        Math_Vec3f_Copy(&this->dyna.actor.home.pos, &D_8088BF60);
        this->dyna.actor.world.pos.x = D_8088BF60.x;
        this->dyna.actor.world.pos.z = D_8088BF60.z;
        this->dyna.actor.speedXZ = 0.0f;
        D_8088BFC0 = 0.0f;
        player->stateFlags2 &= ~0x10;
        this->actionFunc = func_8088B79C;
    }

    frame = globalCtx->gameplayFrames & 0xFF;
    if ((globalCtx->gameplayFrames & 0x100) != 0) {
        this->unk_16C = 0.0f;
    } else if (frame < 0x80) {
        this->unk_16C = sinf(frame * (4 * 0.001f * M_PI)) * 19.625f;
    } else if (frame < 0xE6) {
        this->unk_16C = 19.625f;
    } else {
        this->unk_16C -= 1.0f;
        this->unk_16C = (this->unk_16C < 0.0f) ? 0.0f : this->unk_16C;
    }

    if (sp2C < 100.0f) {
        this->unk_16C = (this->unk_16C > 6.125f) ? 6.125f : this->unk_16C;
    }
}

void func_8088B5F4(BgHidanRock* this, GlobalContext* globalCtx) {
    s16 unk_16A;

    unk_16A = this->unk_16A;
    if (unk_16A != 0) {
        this->unk_16A = unk_16A - 1;
        unk_16A = this->unk_16A;
    }

    if (unk_16A == 0) {
        func_8088B24C(this);
    }
}

void func_8088B634(BgHidanRock* this, GlobalContext* globalCtx) {
    if (func_8004356C(&this->dyna) != 0) {
        this->unk_16A = 0x14;
        this->dyna.actor.world.rot.y = Camera_GetCamDirYaw(globalCtx->cameraPtrs[globalCtx->activeCamera]) + 0x4000;
        this->actionFunc = func_8088B69C;
    }
}

void func_8088B69C(BgHidanRock* this, GlobalContext* globalCtx) {
    if (this->unk_16A != 0) {
        this->unk_16A--;
    }

    if (this->unk_16A != 0) {
        this->dyna.actor.world.pos.x =
            this->dyna.actor.home.pos.x + 5.0f * Math_SinS((this->dyna.actor.world.rot.y + (this->unk_16A << 0xE)));
        this->dyna.actor.world.pos.z =
            this->dyna.actor.home.pos.z + 5.0f * Math_CosS((this->dyna.actor.world.rot.y + (this->unk_16A << 0xE)));
    } else {
        this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x;
        this->dyna.actor.world.pos.z = this->dyna.actor.home.pos.z;
        func_8088B24C(this);
    }

    if (!(this->unk_16A % 4)) {
        func_800AA000(this->dyna.actor.xyzDistToPlayerSq, 0xB4, 0x0A, 0x64);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_SHAKE);
    }
}

void func_8088B79C(BgHidanRock* this, GlobalContext* globalCtx) {
    this->unk_16A--;
    if ((this->dyna.actor.bgCheckFlags & 2) != 0) {
        if (this->params == 0) {
            this->unk_16A = 0x3C;
            this->actionFunc = func_8088B5F4;
        } else {
            this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y - 15.0f;
            this->actionFunc = func_8088B90C;
            this->dyna.actor.flags &= ~0x30;
        }

        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        Audio_PlayActorSound2(
            &this->dyna.actor,
            (SurfaceType_GetSfx(&globalCtx->colCtx, this->dyna.actor.floorPoly, this->dyna.actor.floorBgId) + 0x800) &
                0xFFFF);
    }

    this->unk_16C -= 0.5f;
    this->unk_16C = (this->unk_16C < 0.0f) ? (0.0f) : this->unk_16C;

    if (this->params == 0) {
        if (func_8004356C(&this->dyna) != 0) {
            if (this->unk_169 == 0) {
                this->unk_169 = 3;
            }
            Camera_ChangeSetting(globalCtx->cameraPtrs[0], 0x30);
        } else if (func_8004356C(&this->dyna) == 0) {
            if (this->unk_169 != 0) {
                Camera_ChangeSetting(globalCtx->cameraPtrs[0], 3);
            }
            this->unk_169 = 0;
        }
    }
}

void func_8088B90C(BgHidanRock* this, GlobalContext* globalCtx) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 1.0f) != 0) {
        this->actionFunc = func_8088B634;
    }
}

void func_8088B954(BgHidanRock* this, GlobalContext* globalCtx) {
    s16 unk_16A;

    unk_16A = this->unk_16A;
    if (unk_16A != 0) {
        this->unk_16A = unk_16A - 1;
        unk_16A = this->unk_16A;
    }

    if (unk_16A == 0) {
        this->actionFunc = func_8088B79C;
        this->dyna.actor.velocity.y = 0.0f;
    }
}

void func_8088B990(BgHidanRock* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->unk_16A++;
    if (this->dyna.unk_150 != 0.0f) {
        this->dyna.actor.speedXZ = 0.0f;
        player->stateFlags2 &= ~0x10;
    }

    if ((this->params == 0 && (Math_SmoothStepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 1820.0f,
                                                  0.25f, 20.0f, 0.5f) < 0.1f)) ||
        ((this->params != 0) && (Math_SmoothStepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 480.0,
                                                    0.25f, 20.0f, 0.5f) < 0.1f))) {
        if (this->params == 0) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        }
        this->unk_16A = 0x14;
        this->actionFunc = func_8088B954;
    }

    this->unk_16C = (((this->dyna.actor.world.pos.y + 50.0f) - this->dyna.actor.home.pos.y) + 40.0f) / 80.0f;
    if (this->params == 0) {
        if (func_8004356C(&this->dyna) != 0) {
            if (this->unk_169 == 0) {
                this->unk_169 = 3;
            }
            Camera_ChangeSetting(globalCtx->cameraPtrs[0], 0x30);
            return;
        }
        if (func_8004356C(&this->dyna) == 0) {
            if (this->unk_169 != 0) {
                Camera_ChangeSetting(globalCtx->cameraPtrs[0], 3);
            }
            this->unk_169 = 0;
        }
    }
}

void BgHidanRock_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanRock* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->actionFunc == func_8088B79C) {
        Actor_MoveForward(&this->dyna.actor);
        Actor_UpdateBgCheckInfo(globalCtx, &this->dyna.actor, 0.0f, 0.0f, 0.0f, 4);
    }

    if (this->unk_16C > 0.0f) {
        this->collider.dim.height = (D_8088BF8C.dim.height * this->unk_16C);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void func_8088BC40(GlobalContext* globalCtx2, BgHidanRock* this) {
    static const Gfx* D_8088BFC4[] = { 0x06012120, 0x060128A0, 0x06013020, 0x060137A0, 0x06013F20, 0x060146A0,
                                       0x06014E20, 0x060155A0, 0x00000000, 0x00000000, 0x00000000 };
    GlobalContext* globalCtx = globalCtx2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_hidan_rock.c", 808);

    POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0x14);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x01, 0xFF, 0xFF, 0x00, 0x96);
    gDPSetEnvColor(POLY_XLU_DISP++, 0xFF, 0x00, 0x00, 0xFF);

    if (this->params == 0) {
        Matrix_Translate(D_8088BF60.x, D_8088BF60.y - 40.0f, D_8088BF60.z, MTXMODE_NEW);
    } else {
        Matrix_Translate(this->dyna.actor.home.pos.x, this->dyna.actor.home.pos.y - 40.0f, this->dyna.actor.home.pos.z,
                         MTXMODE_NEW);
    }

    Matrix_RotateRPY(0, Camera_GetCamDirYaw(globalCtx->cameraPtrs[globalCtx->activeCamera]) + 0x8000, 0, MTXMODE_APPLY);
    Matrix_Translate(-10.5f, 0.0f, 0.0f, MTXMODE_APPLY);
    Matrix_Scale(6.0f, this->unk_16C, 6.0f, MTXMODE_APPLY);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_8088BFC4[globalCtx->gameplayFrames & 7]));
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_hidan_rock.c", 853),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_0600CA10);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_hidan_rock.c", 857);
}

void BgHidanRock_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanRock* this = THIS;
    Vec3f* unk_170;

    if (this->params == 0) {
        Gfx_DrawDListOpa(globalCtx, D_0600C100);
    } else {
        Gfx_DrawDListOpa(globalCtx, D_0600C1F0);
    }

    if (this->unk_16C > 0.0f) {
        unk_170 = &this->unk_170;

        if (this->params == 0) {
            SkinMatrix_Vec3fMtxFMultXYZ(&globalCtx->mf_11D60, &D_8088BF60, unk_170);
        } else {
            SkinMatrix_Vec3fMtxFMultXYZ(&globalCtx->mf_11D60, &this->dyna.actor.home.pos, unk_170);
        }

        func_80078914(unk_170, NA_SE_EV_FIRE_PILLAR - SFX_FLAG);
        func_8088BC40(globalCtx, this);
    }
}
