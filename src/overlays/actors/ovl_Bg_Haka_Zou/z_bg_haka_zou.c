/*
 * File: z_bg_haka_zou.c
 * Overlay: ovl_Bg_Haka_Zou
 * Description: Statue and Wall (Shadow Temple)
 */

#include "z_bg_haka_zou.h"

#define FLAGS 0x00000010

#define THIS ((BgHakaZou*)thisx)

void BgHakaZou_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaZou_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaZou_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHakaZou_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808828F4(BgHakaZou* this, GlobalContext* globalCtx);
void func_80882A70(BgHakaZou* this, GlobalContext* globalCtx);
void func_80882BDC(BgHakaZou* this, GlobalContext* globalCtx);
void func_80882CC4(Actor* thisx, GlobalContext* globalCtx);
void func_80883000(BgHakaZou* this, GlobalContext* globalCtx);
void func_80883104(BgHakaZou* this, GlobalContext* globalCtx);
void func_80883144(BgHakaZou* this, GlobalContext* globalCtx);
void func_80883254(BgHakaZou* this, GlobalContext* globalCtx);
void func_80883328(BgHakaZou* this, GlobalContext* globalCtx);
void func_808834D8(BgHakaZou* this, GlobalContext* globalCtx);
void func_80883568(BgHakaZou* this, GlobalContext* globalCtx);

extern Gfx D_06000A10[];
extern ColHeader D_06005E30;
extern ColHeader D_06006F70;
extern ColHeader D_06000C2C;

/*static*/ u32 D_808835F0[] = {
    0x0A000900, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000008,
    0x00000000, 0x00010000, 0x0005003C, 0x00000000, 0x00000000,
};

static Vec3f sEffectVec = { 0.0f, 0.0f, 0.0f };

const ActorInit Bg_Haka_Zou_InitVars = {
    ACTOR_BG_HAKA_ZOU,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHakaZou),
    (ActorFunc)BgHakaZou_Init,
    (ActorFunc)BgHakaZou_Destroy,
    (ActorFunc)BgHakaZou_Update,
    NULL,
};

/*static*/ u32 D_80883648[] = {
    0xB86CFC18,
    0x48500064,
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/BgHakaZou_Init.s")

void BgHakaZou_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaZou* this = THIS;

    if (this->dyna.actor.params != 3) {
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void func_808828F4(BgHakaZou* this, GlobalContext* globalCtx) {
    Vec3f pos;
    Vec3f velocity;
    f32 rand;
    s32 i;

    velocity.x = 0.0f;
    velocity.y = 1.0f;
    velocity.z = 2.0f;

    for (i = 0; i < 2; i++) {
        if (i == 0) {
            pos.x = this->dyna.actor.posRot.pos.x - (Rand_CenteredFloat(10.0f) + 112.0f);
        } else {
            pos.x = Rand_CenteredFloat(10.0f) + this->dyna.actor.posRot.pos.x;
        }

        rand = Rand_ZeroOne();
        pos.y = this->dyna.actor.posRot.pos.y + (60.0f * rand);
        pos.z = this->dyna.actor.posRot.pos.z + (112.0f * rand);

        func_800286CC(globalCtx, &pos, &velocity, &sEffectVec, (Rand_ZeroOne() * 200.0f) + 1000.0f, 100);
    }
}

void func_80882A70(BgHakaZou* this, GlobalContext* globalCtx) {
    ColHeader* colHeader;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->requiredObjBankIndex)) {
        this->dyna.actor.objBankIndex = this->requiredObjBankIndex;
        this->dyna.actor.draw = BgHakaZou_Draw;

        if (this->dyna.actor.params == 3) {
            this->actionFunc = func_80882BDC;
            return;
        }

        Actor_SetObjectDependency(globalCtx, &this->dyna.actor);

        colHeader = NULL;

        if (this->dyna.actor.params == 0) {
            DynaPolyInfo_Alloc(&D_06006F70, &colHeader);
            this->collider.dim.radius = 80;
            this->collider.dim.height = 100;
            this->collider.dim.yShift = -30;
            this->collider.dim.pos.x -= 56;
            this->collider.dim.pos.z += 56;
            this->dyna.actor.uncullZoneScale = 1500.0f;
        } else if (this->dyna.actor.params == 1) {
            DynaPolyInfo_Alloc(&D_06005E30, &colHeader);
            this->collider.dim.yShift = -50;
        } else {
            DynaPolyInfo_Alloc(&D_06000C2C, &colHeader);
            this->collider.dim.radius = 55;
            this->collider.dim.height = 20;
        }

        this->dyna.dynaPolyId =
            DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);

        if ((this->dyna.actor.params == 0) && Flags_GetSwitch(globalCtx, this->switchFlag)) {
            this->actionFunc = func_80883568;
            return;
        }

        this->actionFunc = func_80883000;
    }
}
void func_80882BDC(BgHakaZou* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }

    this->dyna.actor.shape.rot.x += this->dyna.actor.posRot.rot.x;
    this->dyna.actor.shape.rot.z += this->dyna.actor.posRot.rot.z;

    if (this->dyna.actor.bgCheckFlags & 2) {
        if (this->dyna.actor.velocity.y < -8.0f) {
            this->dyna.actor.velocity.y *= -0.6f;
            this->dyna.actor.velocity.y = (this->dyna.actor.velocity.y > 10.0f) ? 10.0f : this->dyna.actor.velocity.y;
            this->dyna.actor.bgCheckFlags &= ~3;
            this->dyna.actor.speedXZ = 2.0f;
        } else {
            Actor_Kill(&this->dyna.actor);
        }
    }

    if (this->timer == 0) {
        Actor_Kill(&this->dyna.actor);
    }
}

void func_80882CC4(Actor* thisx, GlobalContext* globalCtx) {
    s32 i;
    s32 j;
    Vec3f spawnPos;
    f32 sin;
    f32 cos;
    GlobalContext* globalCtx2 = globalCtx;

    sin = Math_SinS(thisx->shape.rot.y - 0x4000) * 40.0f;
    cos = Math_CosS(thisx->shape.rot.y - 0x4000) * 40.0f;

    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            spawnPos.x = thisx->posRot.pos.x + (j - 1) * sin;
            spawnPos.z = thisx->posRot.pos.z + (j - 1) * cos;
            spawnPos.y = thisx->posRot.pos.y + (i - 1) * 55;

            Actor_Spawn(&globalCtx2->actorCtx, globalCtx, ACTOR_BG_HAKA_ZOU, spawnPos.x, spawnPos.y, spawnPos.z, 0,
                        thisx->shape.rot.y, 0, thisx->params + 2);
            func_800286CC(globalCtx2, &spawnPos, &sEffectVec, &sEffectVec, 1000, 50);
        }
    }
}

void func_80882E54(BgHakaZou* this, GlobalContext* globalCtx) {
    Vec3f pos;
    s32 i;
    s32 j;
    s32 num = 25;

    pos.x = this->collider.dim.pos.x;
    pos.y = this->collider.dim.pos.y;
    pos.z = this->collider.dim.pos.z;

    EffectSsHahen_SpawnBurst(globalCtx, &pos, 10.0f, 0, 10, 10, 4, 141, 40, D_06000A10);

    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++) {
            pos.x = this->collider.dim.pos.x + (((j * 2) - 1) * num);
            pos.z = this->collider.dim.pos.z + (((i * 2) - 1) * num);
            EffectSsHahen_SpawnBurst(globalCtx, &pos, 10.0f, 0, 10, 10, 4, 141, 40, D_06000A10);
            func_800286CC(globalCtx, &pos, &sEffectVec, &sEffectVec, 1000, 50);
        }
    }
}

void func_80883000(BgHakaZou* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        Flags_SetSwitch(globalCtx, this->switchFlag);

        if (this->dyna.actor.params == 0) {
            this->timer = 20;
            this->actionFunc = func_80883144;
            func_800800F8(globalCtx, 3400, 999, &this->dyna.actor, 0);
        } else if (this->dyna.actor.params == 2) {
            func_80882E54(this, globalCtx);
            this->dyna.actor.draw = NULL;
            this->timer = 1;
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_EXPLOSION);
            this->actionFunc = func_80883104;
        } else {
            func_80882CC4(&this->dyna.actor, globalCtx);
            this->timer = 1;
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_WALL_BROKEN);
            this->actionFunc = func_80883104;
        }
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void func_80883104(BgHakaZou* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        Actor_Kill(&this->dyna.actor);
    }
}

void func_80883144(BgHakaZou* this, GlobalContext* globalCtx) {
    Vec3f pos;

    if (this->timer != 0) {
        this->timer--;
    }

    if (!(this->timer % 4)) {
        pos.x = Rand_CenteredFloat(200.0f) + (this->dyna.actor.posRot.pos.x - 56.0f);
        pos.y = (Rand_ZeroOne() * 80.0f) + this->dyna.actor.posRot.pos.y;
        pos.z = Rand_CenteredFloat(200.0f) + (this->dyna.actor.posRot.pos.z + 56.0f);

        EffectSsBomb2_SpawnLayered(globalCtx, &pos, &sEffectVec, &sEffectVec, 150, 70);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_IT_BOMB_EXPLOSION);
    }

    if (this->timer == 0) {
        this->timer = 20;
        this->actionFunc = func_80883254;
    }
}

void func_80883254(BgHakaZou* this, GlobalContext* globalCtx) {
    f32 moveDist = (Rand_ZeroOne() * 0.5f) + 0.5f;

    Math_StepToF(&this->dyna.actor.posRot.pos.z, this->dyna.actor.initPosRot.pos.z - 80.0f, 2.0f * moveDist);

    if (Math_StepToF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y - 40.0f, moveDist) != 0) {
        if (this->timer != 0) {
            this->timer--;
        }

        if (this->timer == 0) {
            this->timer = 60;
            this->dyna.actor.posRot.rot.x = 0x0008;
            this->actionFunc = func_80883328;
        }
    } else {
        func_808828F4(this, globalCtx);
    }
}

void func_80883328(BgHakaZou* this, GlobalContext* globalCtx) {
    Vec3f pos;
    s32 i;
    s32 j;

    this->dyna.actor.posRot.rot.x += this->dyna.actor.posRot.rot.x * 0.125f;

    if (Math_ScaledStepToS(&this->dyna.actor.shape.rot.x, -0x4000, this->dyna.actor.posRot.rot.x) != 0) {
        pos.x = this->dyna.actor.posRot.pos.x;
        pos.y = this->dyna.actor.posRot.pos.y;

        for (j = 0; j < 2; pos.x -= 112.0f, j++) {
            pos.z = this->dyna.actor.posRot.pos.z;

            for (i = 0; i < 4; i++) {
                pos.z -= (i == 2) ? 550.0f : 50.0f;
                func_800286CC(globalCtx, &pos, &sEffectVec, &sEffectVec, (Rand_ZeroOne() * 200.0f) + 1000.0f, 200);
            }
        }

        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_STONE_BOUND);
        this->timer = 25;
        this->actionFunc = func_808834D8;
    }
}

void func_808834D8(BgHakaZou* this, GlobalContext* globalCtx) {
    f32 moveDist;

    if (this->timer != 0) {
        this->timer--;
    }

    moveDist = ((this->timer % 2) ? 15.0f : -15.0f);
    this->dyna.actor.posRot.pos.y += ((this->timer & 0xFE) * 0.04f * moveDist);

    if (this->timer == 0) {
        this->actionFunc = func_80883568;
    }
}

void func_80883568(BgHakaZou* this, GlobalContext* globalCtx) {
}

void BgHakaZou_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaZou* this = THIS;

    this->actionFunc(this, globalCtx);

    if (this->dyna.actor.params == 3) {
        Actor_MoveForward(&this->dyna.actor);
    }
}

void BgHakaZou_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* displayLists[] = { 0x060064E0, 0x06005CE0, 0x06000A10, 0x06005CE0 };

    Gfx_DrawDListOpa(globalCtx, displayLists[thisx->params]);
}
