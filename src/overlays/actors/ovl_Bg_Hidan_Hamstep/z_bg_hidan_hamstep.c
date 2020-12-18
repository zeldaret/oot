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
void func_80888C38(BgHidanHamstep* this, GlobalContext* globalCtx);
s32 func_8088805C(BgHidanHamstep* this, GlobalContext* globalCtx);
void func_80888694(BgHidanHamstep* this, BgHidanHamstep* parent);
void func_808884C8(BgHidanHamstep* actor, GlobalContext* globalCtx);

extern UNK_TYPE D_0600A548;
extern UNK_TYPE D_0600A668;
extern UNK_TYPE D_0600DE44;
extern UNK_TYPE D_0600DD1C;

f32 D_80888D70[] = {
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
    2,
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

u32 D_80888E2C[] = {
    func_808887C4, func_80888860, func_808889B8, func_80888A58, func_80888C38,
};

u32 D_80888E40[] = {
    0x48500064,
};

Vec2f D_80888E44[] = {
    { -100.0f, 40.0f },  { 100.0f, 40.0f }, { -100.0f, 0.0f },   { 100.0f, 0.0f },
    { -100.0f, -40.0f }, { 100.0f, 40.0f }, { -100.0f, -80.0f }, { -50.0f, -80.0f },
    { 0.0f, -80.0f },    { 50.0f, -80.0f }, { 100.0f, -80.0f },
};

void func_80888040(BgHidanHamstep* this, s32 actionState) {
    this->actionState = actionState;
    this->actionFunc = D_80888E2C[actionState];
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_8088805C.s")

void BgHidanHamstep_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanHamstep* this = THIS;
    s32 pad;
    s32 pos = 0;
    Vec3f sp48[3];
    s32 i;
    s32 i2;
    BgHidanHamstep* fireTempleStep;

    DynaPolyInfo_SetActorMove(&this->dyna.actor, 1);
    Actor_ProcessInitChain(&this->dyna.actor, &D_80888E40);

    if ((this->dyna.actor.params & 0xFF) == 0) {
        Collider_InitTris(globalCtx, &this->collider);
        Collider_SetTris(globalCtx, &this->collider, &this->dyna.actor, &sTrisInit, &this->colliderItems);

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
        DynaPolyInfo_Alloc(&D_0600DE44, &pos);
    } else {
        DynaPolyInfo_Alloc(&D_0600DD1C, &pos);
    }

    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, pos);

    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0xFF)) {
        if ((this->dyna.actor.params & 0xFF) == 0) {
            this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y + (-20.0f);
            func_80888040(this, 4);
        } else {
            this->dyna.actor.posRot.pos.y =
                D_80888D70[(this->dyna.actor.params & 0xFF) - 1] + this->dyna.actor.initPosRot.pos.y;
            func_80888040(this, 4);
        }
    } else if ((this->dyna.actor.params & 0xFF) == 0) {
        func_80888040(this, 0);
    } else {
        func_80888040(this, 2);
    }

    this->dyna.actor.gravity = -1.2f;
    this->dyna.actor.minVelocityY = -12.0f;

    if ((this->dyna.actor.params & 0xFF) == 0) {
        // Translation: Fire Temple Object [Hammer Step] appears
        osSyncPrintf("◯◯◯炎の神殿オブジェクト【ハンマーステップ】出現\n");
        if (func_8088805C(this, globalCtx) == 0) {
            fireTempleStep = this;

            // Translation: [Hammer Step] I can't spawn a step!
            osSyncPrintf("【ハンマーステップ】 足場産れない！！\n");
            osSyncPrintf("%s %d\n", "../z_bg_hidan_hamstep.c", 425);

            while (fireTempleStep != NULL) {
                Actor_Kill(&fireTempleStep->dyna.actor);
                fireTempleStep = fireTempleStep->dyna.actor.child;
            }
        }
    }
}

void BgHidanHamstep_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanHamstep* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);

    if ((this->dyna.actor.params & 0xFF) == 0) {
        Collider_DestroyTris(globalCtx, &this->collider);
    }
}

void func_808884C8(BgHidanHamstep* actor, GlobalContext* globalCtx) {
    Vec3f pos = actor->dyna.actor.posRot.pos;
    s32 i;
    f32 sin;
    f32 cos;

    pos.y -= 20.0f;

    func_80033480(globalCtx, &pos, 0.0f, 0, 600, 300, 0);

    sin = Math_Sins(actor->dyna.actor.shape.rot.y + 0x8000);
    cos = Math_Coss(actor->dyna.actor.shape.rot.y + 0x8000);

    pos.y = actor->dyna.actor.posRot.pos.y;

    for (i = 0; i < ARRAY_COUNT(D_80888E44); i++) {
        pos.x = (D_80888E44[i].y * sin) + (D_80888E44[i].x * cos) + actor->dyna.actor.posRot.pos.x;
        pos.z = ((D_80888E44[i].y * cos) - (D_80888E44[i].x * sin)) + actor->dyna.actor.posRot.pos.z;
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_80888694.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_80888734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_808887C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_80888860.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_808889B8.s")

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
         D_80888D70[(this->dyna.actor.params & 0xFF) - 1]) &&
        (this->dyna.actor.velocity.y <= 0.0f)) {
        this->unk_244++;

        if (this->unk_244 >= 7) {
            this->dyna.actor.posRot.pos.y =
                D_80888D70[(this->dyna.actor.params & 0xFF) - 1] + this->dyna.actor.initPosRot.pos.y;
            func_80888040(this, 3);
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

void func_80888C38(BgHidanHamstep* this, GlobalContext* globalCtx) {
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
        gSPDisplayList(POLY_OPA_DISP++, &D_0600A668);
    } else {
        gSPDisplayList(POLY_OPA_DISP++, &D_0600A548);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_hidan_hamstep.c", 796);
}
