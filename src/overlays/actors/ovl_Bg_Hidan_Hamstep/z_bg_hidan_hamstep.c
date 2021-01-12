/*
 * File: z_bg_hidan_hamstep.c
 * Overlay: ovl_Bg_Hidan_Hamstep
 * Description: Stone Steps and Platforms (Fire Temple)
 */

#include "z_bg_hidan_hamstep.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanHamstep*)thisx)

void BgHidanHamstep_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanHamstep_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanHamstep_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanHamstep_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808887C4(BgHidanHamstep* this, GlobalContext* globalCtx);
void func_80888860(BgHidanHamstep* this, GlobalContext* globalCtx);
void func_808889B8(BgHidanHamstep* this, GlobalContext* globalCtx);
void func_80888A58(BgHidanHamstep* this, GlobalContext* globalCtx);
void BgHidanHamstep_DoNothing(BgHidanHamstep* this, GlobalContext* globalCtx);

extern Gfx D_0600A548[];
extern Gfx D_0600A668[];
extern CollisionHeader D_0600DE44;
extern CollisionHeader D_0600DD1C;

static f32 sYPosOffsets[] = {
    -20.0f, -120.0f, -220.0f, -320.0f, -420.0f,
};

static ColliderTrisItemInit sTrisItemsInit[2] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x40000040, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { -20.0f, 3.0f, -20.0f }, { -20.0f, 3.0f, 20.0f }, { 20.0f, 3.0f, 20.0f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x40000040, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 20.0f, 3.0f, 20.0f }, { 20.0f, 3.0f, -20.0f }, { -20.0f, 3.0f, -20.0f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_TRIS },
    ARRAY_COUNT(sTrisItemsInit),
    sTrisItemsInit,
};

const ActorInit Bg_Hidan_Hamstep_InitVars = {
    ACTOR_BG_HIDAN_HAMSTEP,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanHamstep),
    (ActorFunc)BgHidanHamstep_Init,
    (ActorFunc)BgHidanHamstep_Destroy,
    (ActorFunc)BgHidanHamstep_Update,
    (ActorFunc)BgHidanHamstep_Draw,
};

static BgHidanHamstepActionFunc sActionFuncs[] = {
    func_808887C4, func_80888860, func_808889B8, func_80888A58, BgHidanHamstep_DoNothing,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static f32 sEffectPositions[][2] = {
    { -100.0f, 40.0f },  { 100.0f, 40.0f }, { -100.0f, 0.0f },   { 100.0f, 0.0f },
    { -100.0f, -40.0f }, { 100.0f, 40.0f }, { -100.0f, -80.0f }, { -50.0f, -80.0f },
    { 0.0f, -80.0f },    { 50.0f, -80.0f }, { 100.0f, -80.0f },
};

void BgHidanHamstep_SetupAction(BgHidanHamstep* this, s32 action) {
    this->action = action;
    this->actionFunc = sActionFuncs[action];
}

s32 BgHidanHamstep_SpawnChildren(BgHidanHamstep* this, GlobalContext* globalCtx) {
    BgHidanHamstep* step = this;
    s32 i;
    Vec3f pos;
    f32 sin;
    f32 cos;
    s16 params;
    GlobalContext* globalCtx2 = globalCtx;

    pos = pos; // Required to match
    pos.y = this->dyna.actor.initPosRot.pos.y - 100.0f;
    sin = Math_SinS(this->dyna.actor.shape.rot.y + 0x8000);
    cos = Math_CosS(this->dyna.actor.shape.rot.y + 0x8000);

    for (i = 0; i < 5; i++) {
        pos.x = (((i * 160.0f) + 60.0f) * sin) + this->dyna.actor.initPosRot.pos.x;
        pos.z = (((i * 160.0f) + 60.0f) * cos) + this->dyna.actor.initPosRot.pos.z;

        params = ((i + 1) & 0xFF);
        params |= (this->dyna.actor.params & 0xFF00);

        step = (BgHidanHamstep*)Actor_SpawnAsChild(
            &globalCtx2->actorCtx, step, globalCtx2, ACTOR_BG_HIDAN_HAMSTEP, pos.x, pos.y, pos.z,
            this->dyna.actor.posRot.rot.x, this->dyna.actor.posRot.rot.y, this->dyna.actor.posRot.rot.z, params);

        if (step == NULL) {
            return 0;
        }
    }
    return 1;
}

void BgHidanHamstep_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanHamstep* this = THIS;
    s32 pad;
    CollisionHeader* colHeader = NULL;
    Vec3f sp48[3];
    s32 i;
    s32 i2;
    BgHidanHamstep* step;

    DynaPolyActor_Init(&this->dyna.actor, DPM_PLAYER);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);

    if ((this->dyna.actor.params & 0xFF) == 0) {
        Collider_InitTris(globalCtx, &this->collider);
        Collider_SetTris(globalCtx, &this->collider, &this->dyna.actor, &sTrisInit, this->colliderItems);

        for (i = 0; i < 2; i++) {
            for (i2 = 0; i2 < 3; i2++) {
                sp48[i2].x = sTrisInit.list[i].dim.vtx[i2].x + this->dyna.actor.initPosRot.pos.x;
                sp48[i2].y = sTrisInit.list[i].dim.vtx[i2].y + this->dyna.actor.initPosRot.pos.y;
                sp48[i2].z = sTrisInit.list[i].dim.vtx[i2].z + this->dyna.actor.initPosRot.pos.z;
            }
            func_800627A0(&this->collider, i, &sp48[0], &sp48[1], &sp48[2]);
        }
    }

    if ((this->dyna.actor.params & 0xFF) == 0) {
        CollisionHeader_GetVirtual(&D_0600DE44, &colHeader);
    } else {
        CollisionHeader_GetVirtual(&D_0600DD1C, &colHeader);
    }

    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);

    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0xFF)) {
        if ((this->dyna.actor.params & 0xFF) == 0) {
            this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y + (-20.0f);
            BgHidanHamstep_SetupAction(this, 4);
        } else {
            this->dyna.actor.posRot.pos.y =
                sYPosOffsets[(this->dyna.actor.params & 0xFF) - 1] + this->dyna.actor.initPosRot.pos.y;
            BgHidanHamstep_SetupAction(this, 4);
        }
    } else if ((this->dyna.actor.params & 0xFF) == 0) {
        BgHidanHamstep_SetupAction(this, 0);
    } else {
        BgHidanHamstep_SetupAction(this, 2);
    }

    this->dyna.actor.gravity = -1.2f;
    this->dyna.actor.minVelocityY = -12.0f;

    if ((this->dyna.actor.params & 0xFF) == 0) {
        // Translation: Fire Temple Object [Hammer Step] appears
        osSyncPrintf("◯◯◯炎の神殿オブジェクト【ハンマーステップ】出現\n");
        if (BgHidanHamstep_SpawnChildren(this, globalCtx) == 0) {
            step = this;

            // Translation: [Hammer Step] I can't create a step!
            osSyncPrintf("【ハンマーステップ】 足場産れない！！\n");
            osSyncPrintf("%s %d\n", "../z_bg_hidan_hamstep.c", 425);

            while (step != NULL) {
                Actor_Kill(&step->dyna.actor);
                step = step->dyna.actor.child;
            }
        }
    }
}

void BgHidanHamstep_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanHamstep* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);

    if ((this->dyna.actor.params & 0xFF) == 0) {
        Collider_DestroyTris(globalCtx, &this->collider);
    }
}

void func_808884C8(BgHidanHamstep* step, GlobalContext* globalCtx) {
    Vec3f pos = step->dyna.actor.posRot.pos;
    s32 i;
    f32 sin;
    f32 cos;

    pos.y -= 20.0f;

    func_80033480(globalCtx, &pos, 0.0f, 0, 600, 300, 0);

    sin = Math_SinS(step->dyna.actor.shape.rot.y + 0x8000);
    cos = Math_CosS(step->dyna.actor.shape.rot.y + 0x8000);

    pos.y = step->dyna.actor.posRot.pos.y;

    for (i = 0; i < ARRAY_COUNT(sEffectPositions); i++) {
        pos.x = (sEffectPositions[i][1] * sin) + (sEffectPositions[i][0] * cos) + step->dyna.actor.posRot.pos.x;
        pos.z = ((sEffectPositions[i][1] * cos) - (sEffectPositions[i][0] * sin)) + step->dyna.actor.posRot.pos.z;
        func_80033480(globalCtx, &pos, 0.0f, 0, 150, 150, 0);
    }
}

void func_80888638(BgHidanHamstep* this, GlobalContext* globalCtx) {
    BgHidanHamstep* child = this->dyna.actor.child;

    while (child != NULL) {
        if ((child->dyna.actor.params & 0xFF) != 0) {
            func_808884C8(child, globalCtx);
        }
        child = child->dyna.actor.child;
    }
}

void func_80888694(BgHidanHamstep* this, BgHidanHamstep* parent) {
    BgHidanHamstep* child;

    if ((this->dyna.actor.params & 0xFF) >= 2) {
        if (parent->dyna.actor.posRot.pos.y < this->dyna.actor.posRot.pos.y) {
            this->dyna.actor.posRot.pos.y = parent->dyna.actor.posRot.pos.y;
        } else if ((this->dyna.actor.posRot.pos.y - parent->dyna.actor.posRot.pos.y) < -100.0f) {
            this->dyna.actor.posRot.pos.y = parent->dyna.actor.posRot.pos.y - 100.0f;
        }
    }

    child = this->dyna.actor.child;

    while (child != NULL) {
        if (this->dyna.actor.posRot.pos.y < child->dyna.actor.posRot.pos.y) {
            child->dyna.actor.posRot.pos.y = this->dyna.actor.posRot.pos.y;
        }
        child = child->dyna.actor.child;
    }
}

void func_80888734(BgHidanHamstep* this) {
    BgHidanHamstep* parent = this->dyna.actor.parent;
    f32 factor = SREG(30) * 0.5f;

    if (parent != NULL) {
        this->dyna.actor.velocity.y = parent->dyna.actor.velocity.y;

        if ((this->dyna.actor.params & 0xFF) == 1) {
            this->dyna.actor.posRot.pos.y = parent->dyna.actor.posRot.pos.y - 100.0f;
        } else {
            this->dyna.actor.posRot.pos.y += (this->dyna.actor.velocity.y * factor);
        }

        func_80888694(this, parent);
    }
}

void func_808887C4(BgHidanHamstep* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        func_800800F8(globalCtx, 3310, 100, &this->dyna.actor, 0);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_HAMMER_SWITCH);
        this->collider.base.acFlags = 0;
        BgHidanHamstep_SetupAction(this, 1);
        Flags_SetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0xFF);
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }
}

void func_80888860(BgHidanHamstep* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;
    s32 quakeIndex;

    Actor_MoveForward(&this->dyna.actor);

    if (((this->dyna.actor.posRot.pos.y - this->dyna.actor.initPosRot.pos.y) <
         (-20.0f - this->dyna.actor.minVelocityY)) &&
        (this->dyna.actor.velocity.y <= 0.0f)) {
        this->unk_244++;

        if (this->unk_244 >= 7) {
            this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y + -20.0f;
            BgHidanHamstep_SetupAction(this, 4);
        } else {
            this->dyna.actor.velocity.y *= -0.24f;

            if (1) {}

            if (this->unk_244 == 1) {
                quakeIndex = Quake_Add(ACTIVE_CAM, 3);
                Quake_SetSpeed(quakeIndex, -15536);
                Quake_SetQuakeValues(quakeIndex, 0, 0, 500, 0);
                Quake_SetCountdown(quakeIndex, 20);
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
                func_800AA000(this->dyna.actor.xyzDistToLinkSq, 255, 20, 150);
                func_80888638(&this->dyna.actor, globalCtx);
                osSyncPrintf("A(%d)\n", this->dyna.actor.params);
            }
        }
    }
}

void func_808889B8(BgHidanHamstep* this, GlobalContext* globalCtx) {
    s32 pad;
    BgHidanHamstep* parent = this->dyna.actor.parent;

    func_80888734(this);

    if ((parent->action == 4) || ((parent->action == 3) && (parent->unk_244 >= 5))) {
        if ((this->dyna.actor.params & 0xFF) == 1) {
            this->dyna.actor.posRot.pos.y =
                sYPosOffsets[(this->dyna.actor.params & 0xFF) - 1] + this->dyna.actor.initPosRot.pos.y;
            BgHidanHamstep_SetupAction(this, 4);
        } else {
            BgHidanHamstep_SetupAction(this, 3);
        }
    }
}

void func_80888A58(BgHidanHamstep* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;
    s32 quakeIndex;

    Actor_MoveForward(&this->dyna.actor);
    func_80888694(this, (BgHidanHamstep*)this->dyna.actor.parent);

    if (((this->dyna.actor.params & 0xFF) <= 0) || ((this->dyna.actor.params & 0xFF) >= 6)) {
        // Translation: [Hammer Step] arg_data strange (arg_data = %d)
        osSyncPrintf("【ハンマーステップ】 arg_data おかしい (arg_data = %d)", this->dyna.actor.params);
        osSyncPrintf("%s %d\n", "../z_bg_hidan_hamstep.c", 696);
    }

    if (((this->dyna.actor.posRot.pos.y - this->dyna.actor.initPosRot.pos.y) <=
         sYPosOffsets[(this->dyna.actor.params & 0xFF) - 1]) &&
        (this->dyna.actor.velocity.y <= 0.0f)) {
        this->unk_244++;

        if (this->unk_244 >= 7) {
            this->dyna.actor.posRot.pos.y =
                sYPosOffsets[(this->dyna.actor.params & 0xFF) - 1] + this->dyna.actor.initPosRot.pos.y;
            BgHidanHamstep_SetupAction(this, 3);
        } else {
            this->dyna.actor.velocity.y *= -0.24f;

            if (1) {}

            if (this->unk_244 == 1) {
                quakeIndex = Quake_Add(ACTIVE_CAM, 3);
                Quake_SetSpeed(quakeIndex, -15536);
                Quake_SetQuakeValues(quakeIndex, 20, 1, 0, 0);
                Quake_SetCountdown(quakeIndex, 7);

                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
                func_800AA000(10000.0f, 255, 20, 150);
                func_808884C8(this, globalCtx);

                if ((this->dyna.actor.params & 0xFF) == 5) {
                    func_80078884(NA_SE_SY_CORRECT_CHIME);
                }

                osSyncPrintf("B(%d)\n", this->dyna.actor.params);
            }
        }
    }
}

void BgHidanHamstep_DoNothing(BgHidanHamstep* this, GlobalContext* globalCtx) {
}

void BgHidanHamstep_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanHamstep* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgHidanHamstep_Draw(Actor* thisx, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_hidan_hamstep.c", 782);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_hidan_hamstep.c", 787),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if ((thisx->params & 0xFF) == 0) {
        gSPDisplayList(POLY_OPA_DISP++, D_0600A668);
    } else {
        gSPDisplayList(POLY_OPA_DISP++, D_0600A548);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_hidan_hamstep.c", 796);
}
