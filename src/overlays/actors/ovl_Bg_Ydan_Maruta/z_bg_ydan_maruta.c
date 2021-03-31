/*
 * File: z_bg_ydan_maruta.c
 * Overlay: ovl_Bg_Ydan_Maruta
 * Description: Rotating spike log and falling ladder in Deku Tree
 */

#include "z_bg_ydan_maruta.h"
#include "objects/object_ydan_objects/object_ydan_objects.h"

#define FLAGS 0x00000000

#define THIS ((BgYdanMaruta*)thisx)

void BgYdanMaruta_Init(Actor* thisx, GlobalContext* globalCtx);
void BgYdanMaruta_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgYdanMaruta_Update(Actor* thisx, GlobalContext* globalCtx);
void BgYdanMaruta_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808BEFF4(BgYdanMaruta* this, GlobalContext* globalCtx);
void BgYdanMaruta_DoNothing(BgYdanMaruta* this, GlobalContext* globalCtx);
void func_808BF078(BgYdanMaruta* this, GlobalContext* globalCtx);
void func_808BF108(BgYdanMaruta* this, GlobalContext* globalCtx);
void func_808BF1EC(BgYdanMaruta* this, GlobalContext* globalCtx);

const ActorInit Bg_Ydan_Maruta_InitVars = {
    ACTOR_BG_YDAN_MARUTA,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_YDAN_OBJECTS,
    sizeof(BgYdanMaruta),
    (ActorFunc)BgYdanMaruta_Init,
    (ActorFunc)BgYdanMaruta_Destroy,
    (ActorFunc)BgYdanMaruta_Update,
    (ActorFunc)BgYdanMaruta_Draw,
};

static ColliderTrisElementInit sTrisElementsInit[2] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x20000000, 0x00, 0x04 },
            { 0x00000004, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_WOOD,
            BUMP_ON,
            OCELEM_NONE,
        },
        { { { 220.0f, -10.0f, 0.0f }, { 220.0f, 10.0f, 0.0f }, { -220.0f, 10.0f, 0.0f } } },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x20000000, 0x00, 0x04 },
            { 0x00000004, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_WOOD,
            BUMP_ON,
            OCELEM_NONE,
        },
        { { { 16.0f, 0.0f, 0.0f }, { 16.0f, 135.0f, 0.0f }, { -16.0f, 135.0f, 0.0f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_TRIS,
    },
    2,
    sTrisElementsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgYdanMaruta_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgYdanMaruta* this = THIS;
    Vec3f sp4C[3];
    s32 i;
    f32 sinRotY;
    f32 cosRotY;
    CollisionHeader* colHeader = NULL;
    ColliderTrisElementInit* triInit;

    Actor_ProcessInitChain(thisx, sInitChain);
    Collider_InitTris(globalCtx, &this->collider);
    Collider_SetTris(globalCtx, &this->collider, thisx, &sTrisInit, this->elements);

    this->unk_168 = thisx->params & 0xFFFF;
    thisx->params = (thisx->params >> 8) & 0xFF;

    if (thisx->params == 0) {
        triInit = &sTrisElementsInit[0];
        this->actionFunc = func_808BEFF4;
    } else {
        triInit = &sTrisElementsInit[1];
        DynaPolyActor_Init(&this->dyna, DPM_UNK);
        CollisionHeader_GetVirtual(&gDTFallingLadderCol, &colHeader);
        this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);
        thisx->home.pos.y += -280.0f;
        if (Flags_GetSwitch(globalCtx, this->unk_168)) {
            thisx->world.pos.y = thisx->home.pos.y;
            this->actionFunc = BgYdanMaruta_DoNothing;
        } else {
            this->actionFunc = func_808BF078;
        }
    }

    sinRotY = Math_SinS(thisx->shape.rot.y);
    cosRotY = Math_CosS(thisx->shape.rot.y);

    for (i = 0; i < 3; i++) {
        sp4C[i].x = (triInit->dim.vtx[i].x * cosRotY) + thisx->world.pos.x;
        sp4C[i].y = triInit->dim.vtx[i].y + thisx->world.pos.y;
        sp4C[i].z = thisx->world.pos.z - (triInit->dim.vtx[i].x * sinRotY);
    }

    Collider_SetTrisVertices(&this->collider, 0, &sp4C[0], &sp4C[1], &sp4C[2]);

    sp4C[1].x = (triInit->dim.vtx[2].x * cosRotY) + thisx->world.pos.x;
    sp4C[1].y = triInit->dim.vtx[0].y + thisx->world.pos.y;
    sp4C[1].z = thisx->world.pos.z - (triInit->dim.vtx[2].x * sinRotY);

    Collider_SetTrisVertices(&this->collider, 1, &sp4C[0], &sp4C[2], &sp4C[1]);
}

void BgYdanMaruta_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanMaruta* this = THIS;

    Collider_DestroyTris(globalCtx, &this->collider);
    if (this->dyna.actor.params == 1) {
        DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    }
}

void func_808BEFF4(BgYdanMaruta* this, GlobalContext* globalCtx) {
    if (this->collider.base.atFlags & AT_HIT) {
        func_8002F71C(globalCtx, &this->dyna.actor, 7.0f, this->dyna.actor.shape.rot.y, 6.0f);
    }
    this->dyna.actor.shape.rot.x += 0x360;
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    func_8002F974(&this->dyna.actor, NA_SE_EV_TOGE_STICK_ROLLING - SFX_FLAG);
}

void func_808BF078(BgYdanMaruta* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->unk_16A = 20;
        Flags_SetSwitch(globalCtx, this->unk_168);
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        this->actionFunc = func_808BF108;
        func_800800F8(globalCtx, 0xBC2, 0x32, &this->dyna.actor, 0);
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void func_808BF108(BgYdanMaruta* this, GlobalContext* globalCtx) {
    s16 temp;

    if (this->unk_16A != 0) {
        this->unk_16A--;
    }
    if (this->unk_16A == 0) {
        this->actionFunc = func_808BF1EC;
    }

    if (1) {}

    temp = (this->unk_16A % 4) - 2;
    if (temp == -2) {
        temp = 0;
    } else {
        temp *= 2;
    }

    this->dyna.actor.world.pos.x = (Math_CosS(this->dyna.actor.shape.rot.y) * temp) + this->dyna.actor.home.pos.x;
    this->dyna.actor.world.pos.z = (Math_SinS(this->dyna.actor.shape.rot.y) * temp) + this->dyna.actor.home.pos.z;

    func_8002F974(&this->dyna.actor, NA_SE_EV_TRAP_OBJ_SLIDE - SFX_FLAG);
}

void func_808BF1EC(BgYdanMaruta* this, GlobalContext* globalCtx) {
    this->dyna.actor.velocity.y += 1.0f;
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, this->dyna.actor.velocity.y)) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_LADDER_DOUND);
        this->actionFunc = BgYdanMaruta_DoNothing;
    }
}

void BgYdanMaruta_DoNothing(BgYdanMaruta* this, GlobalContext* globalCtx) {
}

void BgYdanMaruta_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanMaruta* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgYdanMaruta_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanMaruta* this = THIS;

    if (this->dyna.actor.params == 0) {
        Gfx_DrawDListOpa(globalCtx, gDTRollingSpikeTrapDL);
    } else {
        Gfx_DrawDListOpa(globalCtx, gDTFallingLadderDL);
    }
}
