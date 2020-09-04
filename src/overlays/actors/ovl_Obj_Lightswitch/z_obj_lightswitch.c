/*
 * File: z_obj_lightswitch.c
 * Overlay: ovl_Obj_Lightswitch
 * Description: Sun Emblem Trigger (Spirit Temple)
 */

#include "z_obj_lightswitch.h"

#define FLAGS 0x00000010

#define THIS ((ObjLightswitch*)thisx)

void ObjLightswitch_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjLightswitch_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjLightswitch_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjLightswitch_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B96BA0(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80B96C3C(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80B96D00(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80B96D80(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80B971A8(ObjLightswitch* this);
void func_80B971D8(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80B972B8(ObjLightswitch* this);
void func_80B972D8(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80B973C8(ObjLightswitch* this);
void func_80B97400(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80B97518(ObjLightswitch* this);
void func_80B97540(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80B97630(ObjLightswitch* this);
void func_80B97648(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80B97690(ObjLightswitch* this);
void func_80B976A8(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80B977D0(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80B97B50(ObjLightswitch* this, GlobalContext* globalCtx);

extern Gfx D_06000260[];
extern Gfx D_06000398[];
extern Gfx D_06000408[];
extern UNK_TYPE D_06000420[];
extern UNK_TYPE D_06000C20[];
extern UNK_TYPE D_06001420[];

const ActorInit Obj_Lightswitch_InitVars = {
    ACTOR_OBJ_LIGHTSWITCH,
    ACTORTYPE_SWITCH,
    FLAGS,
    OBJECT_LIGHTSWITCH,
    sizeof(ObjLightswitch),
    (ActorFunc)ObjLightswitch_Init,
    (ActorFunc)ObjLightswitch_Destroy,
    (ActorFunc)ObjLightswitch_Update,
    (ActorFunc)ObjLightswitch_Draw,
};

static ColliderJntSphItemInit D_80B97F20[] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00200000, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 0, { { 0, 0, 0 }, 19 }, 100 },
    },
};
static ColliderJntSphInit D_80B97F44 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x20, COLSHAPE_JNTSPH },
    1,
    D_80B97F20,
};
static CollisionCheckInfoInit D_80B97F54 = { 0, 0xC, 0x3C, 0xFF };
static UNK_PTR D_80B97F5C[] = { D_06000C20, D_06000420, D_06001420 };
static Vec3f D_80B97F68 = { -1707, 843, -180 };
static Vec3f D_80B97F74 = { 0, 0, 0 };
static InitChainEntry D_80B97F80[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

void func_80B96BA0(ObjLightswitch* this, GlobalContext* globalCtx) {
    s32 pad;
    Collider_InitJntSph(globalCtx, &this->col);
    Collider_SetJntSph(globalCtx, &this->col, &this->actor, &D_80B97F44, this->colItems);
    func_800D1694(this->actor.posRot.pos.x, this->actor.posRot.pos.y + (this->actor.shape.unk_08 * this->actor.scale.y),
                  this->actor.posRot.pos.z, &this->actor.shape.rot);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
    func_800628A4(0, &this->col);
}

void func_80B96C3C(ObjLightswitch* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor; // required
    s32 temp_v1;

    if (!Flags_GetSwitch(globalCtx, this->actor.params >> 8 & 0x3F)) {
        temp_v1 = (this->actor.params >> 4) & 3;
        Flags_SetSwitch(globalCtx, this->actor.params >> 8 & 0x3F);
        if (temp_v1 == 1) {
            func_800806BC(globalCtx, thisx, 0x4807);
        } else if (temp_v1 == 3) {
            func_800806BC(globalCtx, thisx, 0x4806);
        } else {
            func_800806BC(globalCtx, thisx, 0x4802);
        }
    }
}

void func_80B96D00(ObjLightswitch* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->actor.params >> 8 & 0x3F) != 0) {
        Flags_UnsetSwitch(globalCtx, this->actor.params >> 8 & 0x3F);
        if ((this->actor.params >> 4 & 3) == 1) {
            func_800806BC(globalCtx, &this->actor, 0x4807);
        }
    }
}

void func_80B96D80(ObjLightswitch* this, GlobalContext* globalCtx) {
    Vec3f pos;
    f32 s;
    f32 c;
    f32 x;
    f32 y;
    f32 z;
    f32 tmp;

    s = Math_Sins(this->actor.shape.rot.y);
    c = Math_Coss(this->actor.shape.rot.y);
    if (this->unk1BC >= 0x1900) {
        x = (CLAMP_MAX((1.0f - 1.0f / 16320 * this->unk1BC) * 400.0f, 60.0f) - 30.0f + 30.0f) * Math_Rand_ZeroOne();
        y = x - 30.0f;
        if (x > 30.0f) {
            x = 30.0f;
        } else {
            x = 900.0f - (y * y);
            if (x < 100.0f) {
                x = 100.0f;
            }
            x = sqrtf(x);
        }
        tmp = x * (Math_Rand_ZeroOne() - 0.5f);
        x = tmp + tmp;
        z = (30.0f - fabsf(x)) * 0.5f + 10.0f * Math_Rand_ZeroOne();
        pos.x = this->actor.posRot.pos.x + ((z * s) + (x * c));
        pos.y = this->actor.posRot.pos.y + y + 10.0f;
        pos.z = this->actor.posRot.pos.z + ((z * c) - (x * s));
        func_8002A6B8(globalCtx, &pos, &D_80B97F74, &D_80B97F74, 0x64, 0, 0xFF, 0xFF, 0xA0, 0xA0, 0xFF, 0, 0, 1, 9, 1);
    }
}

void ObjLightswitch_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjLightswitch* this = THIS;
    s32 switchFlagSet;
    s32 removeSelf;

    switchFlagSet = Flags_GetSwitch(globalCtx, this->actor.params >> 8 & 0x3F);
    removeSelf = 0;
    Actor_ProcessInitChain(&this->actor, D_80B97F80);
    Actor_SetHeight(&this->actor, 0.0f);
    if (switchFlagSet) {
        if ((this->actor.params >> 4 & 3) == 3) {
            removeSelf = 1;
        } else {
            func_80B973C8(this);
        }
    } else {
        func_80B971A8(this);
    }
    if ((this->actor.params & 1) == 1) {
        if (switchFlagSet) {
            Math_Vec3f_Copy(&this->actor.posRot.pos, &D_80B97F68);
            Math_Vec3f_Copy(&this->actor.initPosRot.pos, &D_80B97F68);
        }
        this->actor.shape.rot.x = -0x4000;
        this->actor.shape.rot.z = 0;
        this->actor.posRot.rot.x = this->actor.initPosRot.rot.x = this->actor.shape.rot.x;
        this->actor.posRot.rot.z = this->actor.initPosRot.rot.z = this->actor.shape.rot.z;
        this->actor.flags |= 0x20;
        if (!Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_OBJ_OSHIHIKI,
                                this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y,
                                this->actor.initPosRot.pos.z, 0, this->actor.initPosRot.rot.y, 0, 0xFF00)) {
            osSyncPrintf("\x1b[41;37m");
            osSyncPrintf("押引ブロック発生失敗(%s %d)(arg_data 0x%04x)\n", "../z_obj_lightswitch.c", 452,
                         this->actor.params);
            osSyncPrintf("\x1b[m");
            removeSelf = 1;
        }
    }
    func_80B96BA0(this, globalCtx);
    func_80061ED4(&this->actor.colChkInfo, NULL, &D_80B97F54);
    if (removeSelf) {
        Actor_Kill(&this->actor);
    }
    osSyncPrintf("(光スイッチ)(arg_data 0x%04x)\n", this->actor.params);
}

void ObjLightswitch_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    Collider_DestroyJntSph(globalCtx, &THIS->col);
}

void func_80B971A8(ObjLightswitch* this) {
    this->actionFunc = func_80B971D8;
    this->unk1B4 = 0;
    this->unk1B6 = 0x26C0;
    this->unk1B8 = 0x1F40;
    this->unk1BA = 0x3FC0;
    this->unk1BC = 0x3FC0;
}

void func_80B971D8(ObjLightswitch* this, GlobalContext* globalCtx) {
    switch (this->actor.params >> 4 & 3) {
        case 0:
        case 2:
            if (this->col.base.acFlags & 2) {
                func_80B972B8(this);
                func_80B96C3C(this, globalCtx);
            }
            break;
        case 1:
            if ((this->col.base.acFlags & 2) && !(this->unk1C2 & 2)) {
                func_80B972B8(this);
                func_80B96C3C(this, globalCtx);
            }
            break;
        case 3:
            if (this->col.base.acFlags & 2) {
                func_80B97630(this);
                func_80B96C3C(this, globalCtx);
            }
            break;
    }
}

void func_80B972B8(ObjLightswitch* this) {
    this->actionFunc = func_80B972D8;
    this->unk1B2 = 0x64;
    this->unk1B0 = 0;
    this->unk1B4 = 0;
}

void func_80B972D8(ObjLightswitch* this, GlobalContext* globalCtx) {
    if (func_8005B198() == this->actor.type || this->unk1B2 <= 0) {
        if (this->unk1B0 == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_TRIFORCE_FLASH);
        }
        this->unk1B0++;
        Math_ApproxS(&this->unk1C0, -0xAA, 0xA);
        this->unk1BE = this->unk1BE + this->unk1C0;
        this->unk1B6 = this->unk1B0 * 0x140 + 0x26C0;
        this->unk1B8 = this->unk1B0 * 0x1A0 + 0x1F40;
        if (this->unk1B0 >= 0x14) {
            func_80B973C8(this);
        } else if (this->unk1B0 == 0xF) {
            this->unk1B4 = 1;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_FOOT_SWITCH);
        }
    }
}

void func_80B973C8(ObjLightswitch* this) {
    this->actionFunc = func_80B97400;
    this->unk1B4 = 2;
    this->unk1B6 = 0x3FC0;
    this->unk1B8 = 0x3FC0;
    this->unk1BA = 0x3FC0;
    this->unk1BC = 0x3FC0;
    this->unk1C0 = -0xAA;
    this->unk1B0 = 0;
}

void func_80B97400(ObjLightswitch* this, GlobalContext* globalCtx) {
    switch (this->actor.params >> 4 & 3) {
        case 0:
            if (!Flags_GetSwitch(globalCtx, this->actor.params >> 8 & 0x3F)) {
                func_80B97518(this);
            }
            break;
        case 1:
            if (this->col.base.acFlags & 2) {
                if (!(this->unk1C2 & 2)) {
                    func_80B97518(this);
                    func_80B96D00(this, globalCtx);
                }
            }
            break;
        case 2:
            if (!(this->col.base.acFlags & 2)) {
                if (this->unk1B0 >= 7) {
                    func_80B97518(this);
                    func_80B96D00(this, globalCtx);
                } else {
                    this->unk1B0++;
                }
            } else {
                this->unk1B0 = 0;
            }
            break;
    }
    this->unk1BE += this->unk1C0;
}

void func_80B97518(ObjLightswitch* this) {
    this->actionFunc = func_80B97540;
    this->unk1B2 = 0x64;
    this->unk1B0 = 0x14;
    this->unk1B4 = 1;
}

void func_80B97540(ObjLightswitch* this, GlobalContext* globalCtx) {
    if ((this->actor.params >> 4 & 3) != 1 || func_8005B198() == this->actor.type || this->unk1B2 <= 0) {
        this->unk1B0--;
        Math_ApproxS(&this->unk1C0, 0, 0xA);
        this->unk1BE += this->unk1C0;
        this->unk1B6 = this->unk1B0 * 0x140 + 0x26C0;
        this->unk1B8 = this->unk1B0 * 0x1A0 + 0x1F40;
        if (this->unk1B0 <= 0) {
            func_80B971A8(this);
        } else if (this->unk1B0 == 0xF) {
            this->unk1B4 = 0;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_FOOT_SWITCH);
        }
    }
}

void func_80B97630(ObjLightswitch* this) {
    this->actionFunc = func_80B97648;
    this->unk1B2 = 0x64;
}

void func_80B97648(ObjLightswitch* this, GlobalContext* globalCtx) {
    if (func_8005B198() == this->actor.type || this->unk1B2 <= 0) {
        func_80B97690(this);
    }
}

void func_80B97690(ObjLightswitch* this) {
    this->actionFunc = func_80B976A8;
    this->unk1BC = 0x3FC0;
}

void func_80B976A8(ObjLightswitch* this, GlobalContext* globalCtx) {
    this->unk1BC -= 200;
    func_80B96D80(this, globalCtx);
    if (this->unk1BC < 0) {
        Actor_Kill(&this->actor);
    }
}

void ObjLightswitch_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjLightswitch* this = THIS;
    Actor* child;

    if (globalCtx) {}

    if (this->unk1B2 > 0) {
        this->unk1B2--;
    }

    this->actionFunc(this, globalCtx);

    if (this->actor.update != NULL) {
        if ((this->actor.params & 1) == 1) {
            child = this->actor.child;
            this->actor.posRot.pos.x = child->posRot.pos.x;
            this->actor.posRot.pos.y = child->posRot.pos.y + 60.0f;
            this->actor.posRot.pos.z = child->posRot.pos.z;
            Actor_SetHeight(&this->actor, 0.0f);
        }
        this->unk1C2 = this->col.base.acFlags;
        this->col.base.acFlags &= ~2;
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->col.base);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->col.base);
    }
}

void func_80B977D0(ObjLightswitch* this, GlobalContext* globalCtx) {
    Actor* child;
    Vec3f pos;
    Vec3s rot;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 809);
    func_80093D18(globalCtx->state.gfxCtx);

    /*
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, (u8)(this->unk1B6 >> 6), (u8)(this->unk1B8 >> 6), (u8)(this->unk1BA >> 6),
                   (u8)(this->unk1BC >> 6));
    */
    gDPSetColor(oGfxCtx->polyOpa.p++, G_SETENVCOLOR,
                ((((u8)(this->unk1BA >> 6)) & 0xFF) << 8) |
                    (((((u8)(this->unk1B6 >> 6)) & 0xFF) << 24) | ((((u8)(this->unk1B8 >> 6)) & 0xFF) << 16) |
                     ((((u8)(this->unk1BC >> 6)) & 0xFF) << 0)));
    gSPSegment(oGfxCtx->polyOpa.p++, 0x09, &D_80116280[2]);

    if ((this->actor.params & 1) == 1) {
        child = this->actor.child;
        this->actor.posRot.pos.x = child->posRot.pos.x;
        this->actor.posRot.pos.y = child->posRot.pos.y + 60.0f;
        this->actor.posRot.pos.z = child->posRot.pos.z;
        Math_Vec3f_Copy(&pos, &this->actor.posRot.pos);
        func_800D1694(pos.x, pos.y, pos.z, &this->actor.shape.rot);
        Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
    } else {
        pos.x = this->actor.posRot.pos.x;
        pos.y = this->actor.posRot.pos.y + this->actor.shape.unk_08 * this->actor.scale.y;
        pos.z = this->actor.posRot.pos.z;
    }

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 841),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80B97F5C[this->unk1B4]));
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000260);

    rot.x = this->actor.shape.rot.x;
    rot.y = this->actor.shape.rot.y;
    rot.z = this->actor.shape.rot.z + this->unk1BE;
    func_800D1694(pos.x, pos.y, pos.z, &rot);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 859),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000398);

    rot.z = this->actor.shape.rot.z - this->unk1BE;
    func_800D1694(pos.x, pos.y, pos.z, &rot);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 873),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000408);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 878);
}

void func_80B97B50(ObjLightswitch* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f sp68;
    Vec3s sp60;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 890);
    func_80093D84(globalCtx->state.gfxCtx);

    gDPSetColor(oGfxCtx->polyXlu.p++, G_SETENVCOLOR,
                ((((u8)(this->unk1BA >> 6)) & 0xFF) << 8) |
                    (((((u8)(this->unk1B6 >> 6)) & 0xFF) << 24) | ((((u8)(this->unk1B8 >> 6)) & 0xFF) << 16) |
                     ((((u8)(this->unk1BC >> 6)) & 0xFF) << 0)));
    gSPSegment(oGfxCtx->polyXlu.p++, 0x09, D_80116280);

    sp68.x = this->actor.posRot.pos.x;
    sp68.y = this->actor.posRot.pos.y + (this->actor.shape.unk_08 * this->actor.scale.y);
    sp68.z = this->actor.posRot.pos.z;

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 912),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80B97F5C[this->unk1B4]));
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000260);

    sp60.x = this->actor.shape.rot.x;
    sp60.y = this->actor.shape.rot.y;
    sp60.z = this->actor.shape.rot.z + this->unk1BE;

    func_800D1694(sp68.x, sp68.y, sp68.z, &sp60);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 930),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000398);

    sp60.z = this->actor.shape.rot.z - this->unk1BE;
    func_800D1694(sp68.x, sp68.y, sp68.z, &sp60);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 944),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000408);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 949);
}

void ObjLightswitch_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ObjLightswitch* this = THIS;
    s32 temp_v1 = this->unk1BC >> 6 & 0xFF;

    if ((this->actor.params & 1) == 1) {
        func_800628A4(0, &this->col);
    }

    if ((this->actor.params >> 4 & 3) == 3 && (temp_v1 > 0 || temp_v1 < 0xFF)) {
        func_80B97B50(this, globalCtx);
    } else {
        func_80B977D0(this, globalCtx);
    }
}
