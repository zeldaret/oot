/*
 * File: z_obj_timeblock.c
 * Overlay: ovl_Obj_Timeblock
 * Description: Song of Time Block
 */

#include "z_obj_timeblock.h"

#define FLAGS 0x0A000011

#define THIS ((ObjTimeblock*)thisx)
#define BOOL(x) (x ? 1 : 0)

/* Actor params:
 * params &>> 0x8000 = Default Visibility
 * params &>> 0x3800 = Range where the Song Of Time can affect the block
 * params &>> 0x0400 = Alternate behavior (move=1). When set:
 *   1. Listen for the song of time
 *   2. When song is played, switch visibility (using switch flag)
 *   3. Then, wait until switch flag is flipped (externally) to revert visibility
 *
 * params &>> 0x0100 = If set, block is small
 * params &>> 0x003F = Switch Flag. Normal behaviour:
 *   - 00 to 37: use switch flag, age inverted (save=2)
 *   - 38 to 3F: use switch flag, normal (save=1)
 *   -       FF: do not use switch flag (save=0)
 *
 * initPosRot.rot.z &>> 0x7 = color
 */

#define BLOCK_OF_TIME_JA "時のブロック"
#define ATTENTION_CAMERA_JA "注目カメラ"

void ObjTimeblock_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjTimeblock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjTimeblock_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjTimeblock_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 ObjTimeblock_WaitForOcarina(ObjTimeblock* this, GlobalContext* globalCtx);
s32 ObjTimeblock_WaitForSong(ObjTimeblock* this, GlobalContext* globalCtx);
void ObjTimeblock_DoNothingActionFunc(ObjTimeblock* this, GlobalContext* globalCtx);
void ObjTimeblock_StartNormalActionFunc(ObjTimeblock* this);
void ObjTimeblock_NormalActionFunc(ObjTimeblock* this, GlobalContext* globalCtx);
void ObjTimeblock_StartAltBehaviorVisibleActionFunc(ObjTimeblock* this);
void ObjTimeblock_AltBehaviorVisibleActionFunc(ObjTimeblock* this, GlobalContext* globalCtx);
void ObjTimeblock_StartAltBehaviourNotVisibleActionFunc(ObjTimeblock* this);
void ObjTimeblock_AltBehaviourNotVisibleActionFunc(ObjTimeblock* this, GlobalContext* globalCtx);

const ActorInit Obj_Timeblock_InitVars = {
    ACTOR_OBJ_TIMEBLOCK,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_TIMEBLOCK,
    sizeof(ObjTimeblock),
    (ActorFunc)ObjTimeblock_Init,
    (ActorFunc)ObjTimeblock_Destroy,
    (ActorFunc)ObjTimeblock_Update,
    (ActorFunc)ObjTimeblock_Draw,
};

typedef enum {
    OBJ_TIMEBLOCK_DO_NOT_SAVE,
    OBJ_TIMEBLOCK_SAVE,
    OBJ_TIMEBLOCK_SAVE_AGE_INVERTED
} ObjTimeblock_SaveOption;

typedef struct ObjTimeblockSizeOptions {
    /* 0x00 */ f32 scale;
    /* 0x04 */ f32 height;
    /* 0x08 */ s16 demoEffectParams;
} ObjTimeblockSizeOptions; // size = 0x0C

static ObjTimeblockSizeOptions sSizeOptions[] = {
    { 1.0, 60.0, 0x0018 },
    { 0.60, 40.0, 0x0019 },
};

static f32 sRanges[] = { 60.0, 100.0, 140.0, 180.0, 220.0, 260.0, 300.0, 300.0 };

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 300, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1500, ICHAIN_STOP),
};

static Color_RGB8 sPrimColors[] = { { 100, 120, 140 }, { 80, 140, 200 }, { 100, 150, 200 }, { 100, 200, 240 },
                                    { 80, 110, 140 },  { 70, 160, 225 }, { 80, 100, 130 },  { 100, 110, 190 } };

u32 ObjTimeblock_CalculateIsVisible(ObjTimeblock* this) {
    if (!((this->dyna.actor.params >> 10) & 1)) {
        u32 save = this->save;
        if (save == OBJ_TIMEBLOCK_DO_NOT_SAVE) {
            return this->unk_175;
        } else {
            u8 defaultVisibility = BOOL((this->dyna.actor.params >> 15) & 1);
            if (save == OBJ_TIMEBLOCK_SAVE) {
                return this->unk_174 ^ defaultVisibility;
            } else {
                u8 linkIsYoung = BOOL(LINK_AGE_IN_YEARS == YEARS_CHILD);
                return this->unk_174 ^ defaultVisibility ^ linkIsYoung;
            }
        }
    } else {
        return BOOL((this->dyna.actor.params >> 15) & 1) ^ this->unk_174;
    }
}

void ObjTimeblock_SpawnDemoEffect(ObjTimeblock* this, GlobalContext* globalCtx) {
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->dyna.actor.posRot.pos.x,
                this->dyna.actor.posRot.pos.y, this->dyna.actor.posRot.pos.z, 0, 0, 0,
                sSizeOptions[(this->dyna.actor.params >> 8) & 1].demoEffectParams);
}

void ObjTimeblock_ToggleSwitchFlag(GlobalContext* globalCtx, s32 flag) {
    if (Flags_GetSwitch(globalCtx, flag)) {
        Flags_UnsetSwitch(globalCtx, flag);
    } else {
        Flags_SetSwitch(globalCtx, flag);
    }
}

extern s32 D_06000B30;

void ObjTimeblock_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjTimeblock* this = THIS;
    s32 pad;
    UNK_TYPE dynaPoly_p = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    this->dyna.actor.shape.rot.z = 0;
    this->dyna.actor.posRot.rot.z = this->dyna.actor.shape.rot.z;

    DynaPolyInfo_Alloc(&D_06000B30, &dynaPoly_p);

    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, dynaPoly_p);

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    Actor_SetScale(&this->dyna.actor, sSizeOptions[(this->dyna.actor.params >> 8) & 1].scale);

    if ((this->dyna.actor.params >> 6) & 1) {
        this->save = OBJ_TIMEBLOCK_DO_NOT_SAVE;
    } else {
        this->save = ((this->dyna.actor.params & 0x3F) < 0x38) ? OBJ_TIMEBLOCK_SAVE_AGE_INVERTED : OBJ_TIMEBLOCK_SAVE;
    }

    this->songObserverFunc = &ObjTimeblock_WaitForOcarina;

    Actor_SetHeight(&this->dyna.actor, sSizeOptions[(this->dyna.actor.params >> 8) & 1].height);

    this->unk_174 = BOOL(Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F));
    this->unk_175 = BOOL((this->dyna.actor.params >> 15) & 1);
    this->isVisible = ObjTimeblock_CalculateIsVisible(this);

    if (!((this->dyna.actor.params >> 10) & 1)) {
        ObjTimeblock_StartNormalActionFunc(this);
    } else if (this->isVisible) {
        ObjTimeblock_StartAltBehaviorVisibleActionFunc(this);
    } else {
        ObjTimeblock_StartAltBehaviourNotVisibleActionFunc(this);
    }

    osSyncPrintf(BLOCK_OF_TIME_JA " (<arg> %04xH <type> save:%d color:%d range:%d move:%d)\n",
                 (u16)this->dyna.actor.params, this->save, this->dyna.actor.initPosRot.rot.z & 7,
                 (this->dyna.actor.params >> 11) & 7, (this->dyna.actor.params >> 10) & 1);
}

void ObjTimeblock_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, THIS->dyna.dynaPolyId);
}

extern s32 func_80043590(DynaPolyActor* actor);

u8 ObjTimeblock_PlayerIsInRange(ObjTimeblock* this, GlobalContext* globalCtx) {
    if (this->isVisible && func_80043590(&this->dyna)) {
        return false;
    }

    if (this->dyna.actor.xzDistFromLink <= sRanges[(this->dyna.actor.params >> 11) & 7]) {
        Vec3f distance;
        f32 blockSize;

        // Will not return true if player would be inside the block?
        func_8002DBD0(&this->dyna.actor, &distance, &(PLAYER)->actor.posRot.pos);
        blockSize = this->dyna.actor.scale.x * 50.0f + 6.0f;
        if (blockSize < fabsf(distance.x) || blockSize < fabsf(distance.z)) {
            return true;
        }
    }

    return false;
}

s32 ObjTimeblock_WaitForOcarina(ObjTimeblock* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (ObjTimeblock_PlayerIsInRange(this, globalCtx)) {
        if (player->stateFlags2 & 0x1000000) {
            func_8010BD58(globalCtx, 1);
            this->songObserverFunc = &ObjTimeblock_WaitForSong;
        } else {
            player->stateFlags2 |= 0x800000;
        }
    }
    return false;
}

s32 ObjTimeblock_WaitForSong(ObjTimeblock* this, GlobalContext* globalCtx) {
    if (globalCtx->msgCtx.unk_E3EE == 4) {
        this->songObserverFunc = &ObjTimeblock_WaitForOcarina;
    }
    if (globalCtx->msgCtx.unk_E3EC == 10) {
        if (this->unk_172 == 254) {
            this->songEndTimer = 110;
        } else {
            this->songEndTimer--;
            if (this->songEndTimer == 0) {
                return true;
            }
        }
    }
    return false;
}

void ObjTimeblock_StartDoNothingActionFunc(ObjTimeblock* this) {
    this->actionFunc = &ObjTimeblock_DoNothingActionFunc;
}

void ObjTimeblock_DoNothingActionFunc(ObjTimeblock* this, GlobalContext* globalCtx) {
}

void ObjTimeblock_StartNormalActionFunc(ObjTimeblock* this) {
    this->actionFunc = &ObjTimeblock_NormalActionFunc;
}

extern void func_80080480(GlobalContext* globalCtx, Actor* actor);

void ObjTimeblock_NormalActionFunc(ObjTimeblock* this, GlobalContext* globalCtx) {

    if (this->songObserverFunc(this, globalCtx) && this->demoEffectTimer <= 0) {
        ObjTimeblock_SpawnDemoEffect(this, globalCtx);
        this->demoEffectTimer = 160;

        // Possibly points the camera to this actor
        func_80080480(globalCtx, &this->dyna.actor);
        osSyncPrintf("◯◯◯◯ Time Block " ATTENTION_CAMERA_JA " (frame counter  %d)\n", globalCtx->state.frames);

        this->demoEffectFirstPartTimer = 12;

        if (this->save == OBJ_TIMEBLOCK_DO_NOT_SAVE) {
            this->dyna.actor.params ^= 0x8000;
        } else {
            ObjTimeblock_ToggleSwitchFlag(globalCtx, this->dyna.actor.params & 0x3F);
        }
    }

    this->unk_172 = globalCtx->msgCtx.unk_E3EC;
    if (this->demoEffectFirstPartTimer > 0) {
        this->demoEffectFirstPartTimer--;
        if (this->demoEffectFirstPartTimer == 0) {
            if (this->save == OBJ_TIMEBLOCK_DO_NOT_SAVE) {
                this->unk_175 = BOOL((this->dyna.actor.params >> 15) & 1);
            } else {
                this->unk_174 = BOOL(Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F));
            }
        }
    }
    {
        u32 newIsVisible = ObjTimeblock_CalculateIsVisible(this);
        if (this->save == OBJ_TIMEBLOCK_SAVE && newIsVisible != this->isVisible) {
            ObjTimeblock_StartDoNothingActionFunc(this);
        }
        this->isVisible = newIsVisible;
    }
    if (this->demoEffectTimer == 50) {
        func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
    }
}

void func_80BA06AC(ObjTimeblock* this, GlobalContext* globalCtx) {
    s32 switchFlag = this->dyna.actor.params & 0x3F;
    this->unk_172 = globalCtx->msgCtx.unk_E3EC;

    if (this->demoEffectFirstPartTimer > 0 && --this->demoEffectFirstPartTimer == 0) {
        this->unk_174 = BOOL(Flags_GetSwitch(globalCtx, switchFlag));
    }

    this->isVisible = ObjTimeblock_CalculateIsVisible(this);
    this->unk_176 = BOOL(Flags_GetSwitch(globalCtx, switchFlag));
}

void ObjTimeblock_StartAltBehaviorVisibleActionFunc(ObjTimeblock* this) {
    this->actionFunc = &ObjTimeblock_AltBehaviorVisibleActionFunc;
}

void ObjTimeblock_AltBehaviorVisibleActionFunc(ObjTimeblock* this, GlobalContext* globalCtx) {
    if (this->songObserverFunc(this, globalCtx) && this->demoEffectTimer <= 0) {
        this->demoEffectFirstPartTimer = 12;
        ObjTimeblock_SpawnDemoEffect(this, globalCtx);
        this->demoEffectTimer = 160;

        // Possibly points the camera to this actor
        func_80080480(globalCtx, &this->dyna.actor);
        osSyncPrintf("◯◯◯◯ Time Block " ATTENTION_CAMERA_JA " (frame counter  %d)\n", globalCtx->state.frames);

        ObjTimeblock_ToggleSwitchFlag(globalCtx, this->dyna.actor.params & 0x3F);
    }

    func_80BA06AC(this, globalCtx);

    if (this->demoEffectTimer == 50) {
        func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
    }
    if (!this->isVisible && this->demoEffectTimer <= 0) {
        ObjTimeblock_StartAltBehaviourNotVisibleActionFunc(this);
    }
}

void ObjTimeblock_StartAltBehaviourNotVisibleActionFunc(ObjTimeblock* this) {
    this->actionFunc = &ObjTimeblock_AltBehaviourNotVisibleActionFunc;
}

void ObjTimeblock_AltBehaviourNotVisibleActionFunc(ObjTimeblock* this, GlobalContext* globalCtx) {
    s32 switchFlag = this->dyna.actor.params & 0x3F;
    s8 switchFlagIsSet = BOOL(Flags_GetSwitch(globalCtx, switchFlag));

    if (this->unk_176 ^ switchFlagIsSet && switchFlagIsSet ^ BOOL((this->dyna.actor.params >> 15) & 1)) {
        if (this->demoEffectTimer <= 0) {
            ObjTimeblock_SpawnDemoEffect(this, globalCtx);
            this->demoEffectTimer = 160;
        }
        this->demoEffectFirstPartTimer = 12;
    }

    func_80BA06AC(this, globalCtx);

    if (this->isVisible && this->demoEffectTimer <= 0) {
        ObjTimeblock_StartAltBehaviorVisibleActionFunc(this);
    }
}

void ObjTimeblock_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjTimeblock* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->demoEffectTimer > 0) {
        this->demoEffectTimer--;
    }
    if (this->isVisible) {
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    } else {
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    }
}

extern Gfx D_06000980[];

void ObjTimeblock_Draw(Actor* thisx, GlobalContext* globalCtx) {
    if (THIS->isVisible) {
        Color_RGB8* primColor = &sPrimColors[THIS->dyna.actor.initPosRot.rot.z & 7];

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_timeblock.c", 762);

        func_80093D18(globalCtx->state.gfxCtx);
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_timeblock.c", 766),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, primColor->r, primColor->g, primColor->b, 255);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000980);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_timeblock.c", 772);
    }
}
