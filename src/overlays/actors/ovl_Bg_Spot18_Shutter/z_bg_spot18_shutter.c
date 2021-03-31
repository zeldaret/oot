/*
 * File: z_bg_spot18_shutter.c
 * Overlay: Bg_Spot18_Shutter
 * Description:
 */

#include "z_bg_spot18_shutter.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot18Shutter*)thisx)

void BgSpot18Shutter_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Shutter_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Shutter_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Shutter_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B95AC(BgSpot18Shutter* this, GlobalContext* globalCtx);
void func_808B95B8(BgSpot18Shutter* this, GlobalContext* globalCtx);
void func_808B9618(BgSpot18Shutter* this, GlobalContext* globalCtx);
void func_808B9698(BgSpot18Shutter* this, GlobalContext* globalCtx);
void func_808B971C(BgSpot18Shutter* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot18_Shutter_InitVars = {
    ACTOR_BG_SPOT18_SHUTTER,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_SPOT18_OBJ,
    sizeof(BgSpot18Shutter),
    (ActorFunc)BgSpot18Shutter_Init,
    (ActorFunc)BgSpot18Shutter_Destroy,
    (ActorFunc)BgSpot18Shutter_Update,
    (ActorFunc)BgSpot18Shutter_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern Gfx D_06000420[];
extern CollisionHeader D_06000534;

void BgSpot18Shutter_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgSpot18Shutter* this = THIS;
    s32 param = (this->dyna.actor.params >> 8) & 1;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);

    if (param == 0) {
        if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
            if (gSaveContext.infTable[16] & 0x200) {
                this->actionFunc = func_808B95AC;
                this->dyna.actor.world.pos.y += 180.0f;
            } else {
                this->actionFunc = func_808B9618;
            }
        } else {
            if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F)) {
                this->actionFunc = func_808B95AC;
                this->dyna.actor.world.pos.y += 180.0f;
            } else {
                this->actionFunc = func_808B95B8;
            }
        }
    } else {
        if (gSaveContext.infTable[16] & 0x200) {
            this->dyna.actor.world.pos.x += 125.0f * Math_CosS(this->dyna.actor.world.rot.y);
            this->dyna.actor.world.pos.z -= 125.0f * Math_SinS(this->dyna.actor.world.rot.y);
            this->actionFunc = func_808B95AC;
        } else {
            this->actionFunc = func_808B9618;
        }
    }

    CollisionHeader_GetVirtual(&D_06000534, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
}

void BgSpot18Shutter_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot18Shutter* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_808B95AC(BgSpot18Shutter* this, GlobalContext* globalCtx) {
}

void func_808B95B8(BgSpot18Shutter* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F)) {
        Actor_SetFocus(&this->dyna.actor, 70.0f);
        OnePointCs_Attention(globalCtx, &this->dyna.actor);
        this->actionFunc = func_808B9698;
    }
}

void func_808B9618(BgSpot18Shutter* this, GlobalContext* globalCtx) {
    if (gSaveContext.infTable[16] & 0x200) {
        Actor_SetFocus(&this->dyna.actor, 70.0f);
        if (((this->dyna.actor.params >> 8) & 1) == 0) {
            this->actionFunc = func_808B9698;
        } else {
            this->actionFunc = func_808B971C;
            OnePointCs_Init(globalCtx, 4221, 140, &this->dyna.actor, MAIN_CAM);
        }
    }
}

void func_808B9698(BgSpot18Shutter* this, GlobalContext* globalCtx) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 180.0f, 1.44f)) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_STONEDOOR_STOP);
        this->actionFunc = func_808B95AC;
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_STONE_STATUE_OPEN - SFX_FLAG);
    }
}

void func_808B971C(BgSpot18Shutter* this, GlobalContext* globalCtx) {
    f32 sin = Math_SinS(this->dyna.actor.world.rot.y);
    f32 cos = Math_CosS(this->dyna.actor.world.rot.y);
    s32 flag =
        Math_StepToF(&this->dyna.actor.world.pos.x, this->dyna.actor.home.pos.x + (125.0f * cos), fabsf(cos)) & 1;
    flag &= Math_StepToF(&this->dyna.actor.world.pos.z, this->dyna.actor.home.pos.z - (125.0f * sin), fabsf(sin));

    if (flag) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_STONEDOOR_STOP);
        this->actionFunc = func_808B95AC;
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_STONE_STATUE_OPEN - SFX_FLAG);
    }
}

void BgSpot18Shutter_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot18Shutter* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgSpot18Shutter_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_06000420);
}
