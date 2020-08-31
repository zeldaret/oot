/*
 * File: z_obj_switch.c
 * Overlay: ovl_Obj_Switch
 * Description: Switches
 */

#include "z_obj_switch.h"

#define FLAGS 0x00000010

#define THIS ((ObjSwitch*)thisx)

void ObjSwitch_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjSwitch_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjSwitch_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjSwitch_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B9D210(Vec3f* dest, Vec3f* src, s16 angle);
void func_80B9D294(Actor* thisx, GlobalContext* globalCtx, UNK_PTR arg2, DynaPolyMoveFlag flags);
void func_80B9D31C(ObjSwitch* this, GlobalContext* globalCtx, ColliderJntSphInit* colliderJntSphInit);
void func_80B9D3B8(ObjSwitch* this, GlobalContext* globalCtx, ColliderTrisInit* colliderTrisInit);
Actor* func_80B9D4D8(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9D54C(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9D5F8(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9D680(ObjSwitch* this);
void func_80B9DA48(ObjSwitch* this);
void func_80B9DA64(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9DBD8(ObjSwitch* this);
void func_80B9DBF0(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9DCB0(ObjSwitch* this);
void func_80B9DCD4(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9DE20(ObjSwitch* this);
void func_80B9DE38(ObjSwitch* this, GlobalContext* globalCtx);
s32 func_80B9DF1C(ObjSwitch* this);
void func_80B9DF8C(ObjSwitch* this);
void func_80B9DF9C(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9DFF0(ObjSwitch* this);
void func_80B9E004(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9E06C(ObjSwitch* this);
void func_80B9E084(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9E100(ObjSwitch* this);
void func_80B9E118(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9E1D8(ObjSwitch* this);
void func_80B9E1F0(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9E280(ObjSwitch* this);
void func_80B9E2A8(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9E3DC(ObjSwitch* this);
void func_80B9E3F4(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9E47C(ObjSwitch* this);
void func_80B9E4A8(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9E56C(ObjSwitch* this);
void func_80B9E584(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9E748(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9E788(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9E7B4(ObjSwitch* this, GlobalContext* globalCtx);
void func_80B9E904(ObjSwitch* this, GlobalContext* globalCtx);

extern Gfx D_05005800[];
extern Gfx D_05005D50[];
extern Gfx D_05005AD0[];
extern UNK_TYPE D_05005FB8;
extern Gfx D_05006170[];
extern Gfx D_05006610[];
extern Gfx D_05006810[];
extern Gfx D_05006D10[];
extern Gfx D_05006E60[];
extern Gfx D_05007340[];
extern Gfx D_05007488[];
extern Gfx D_050090A0[];
extern Gfx D_050098A0[];
extern Gfx D_0500A0A0[];
extern Gfx D_0500A8A0[];
extern Gfx D_0500B0A0[];
extern Gfx D_0500B8A0[];
extern Gfx D_0500C0A0[];
extern UNK_TYPE D_050144B0;
extern UNK_TYPE D_05014CB0;

const ActorInit Obj_Switch_InitVars = {
    ACTOR_OBJ_SWITCH,
    ACTORTYPE_SWITCH,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(ObjSwitch),
    (ActorFunc)ObjSwitch_Init,
    (ActorFunc)ObjSwitch_Destroy,
    (ActorFunc)ObjSwitch_Update,
    (ActorFunc)ObjSwitch_Draw,
};

static f32 D_80B9EC20[] = { 10, 10, 0, 30, 30 };

static ColliderTrisItemInit D_80B9EC34[2] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x40000040, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { -20.0f, 19.0f, -20.0f }, { -20.0f, 19.0f, 20.0f }, { 20.0f, 19.0f, 20.0f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x40000040, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 20.0f, 19.0f, 20.0f }, { 20.0f, 19.0f, -20.0f }, { -20.0f, 19.0f, -20.0f } } },
    },
};
static ColliderTrisInit D_80B9ECAC = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_TRIS },
    2,
    D_80B9EC34,
};
static ColliderTrisItemInit D_80B9ECBC[2] = {
    {
        { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 0.0f, 23.0f, 8.5f }, { -23.0f, 0.0f, 8.5f }, { 0.0f, -23.0f, 8.5f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 0.0f, 23.0f, 8.5f }, { 0.0f, -23.0f, 8.5f }, { 23.0f, 0.0f, 8.5f } } },
    },
};
static ColliderTrisInit D_80B9ED34 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_TRIS },
    2,
    D_80B9ECBC,
};
static ColliderJntSphItemInit D_80B9ED44[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xEFC1FFFE, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 0, { { 0, 300, 0 }, 20 }, 100 },
    },
};
static ColliderJntSphInit D_80B9ED68 = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x09, 0x39, 0x20, COLSHAPE_JNTSPH },
    1,
    D_80B9ED44,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 2000, ICHAIN_STOP),
};

static Gfx* D_80B9ED88[] = { D_05005800, D_05006170, D_05005D50, D_05005D50 };
static Gfx* D_80B9ED98[2][4] = { D_0500A8A0, D_050098A0, D_0500A0A0, D_050090A0,
                                 D_0500B0A0, D_0500B8A0, D_0500C0A0, D_0500C0A0 };
static Gfx* D_80B9EDB8[] = { D_05006610, D_05006810 };
static Gfx* D_80B9EDC0[] = { D_05006E60, D_05007488, 0, 0, D_05006E60 };
static Gfx* D_80B9EDD4[] = { D_05006D10, D_05007340, 0, 0, D_05006D10 };

static ObjSwitchActionFunc D_80B9EDE8[] = { func_80B9E748, func_80B9E788, func_80B9E7B4, func_80B9E904, func_80B9E904 };

void func_80B9D210(Vec3f* dest, Vec3f* src, s16 angle) {
    f32 s = Math_Sins(angle);
    f32 c = Math_Coss(angle);

    dest->x = src->z * s + src->x * c;
    dest->y = src->y;
    dest->z = src->z * c - src->x * s;
}

void func_80B9D294(Actor* thisx, GlobalContext* globalCtx, UNK_PTR arg2, DynaPolyMoveFlag flags) {
    DynaPolyActor* dyna = &THIS->dyna;
    s32 dynaUnk = 0;
    u32 dynaPolyId;

    DynaPolyInfo_SetActorMove(dyna, flags);
    DynaPolyInfo_Alloc(arg2, &dynaUnk);
    dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, dynaUnk);
    dyna->dynaPolyId = dynaPolyId;
    if (dynaPolyId == 50) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_obj_switch.c", 531,
                     thisx->id, thisx->params);
    }
}

void func_80B9D31C(ObjSwitch* this, GlobalContext* globalCtx, ColliderJntSphInit* colliderJntSphInit) {
    ColliderJntSph* colliderJntSph;

    colliderJntSph = &this->jntSph.unk180;
    Collider_InitJntSph(globalCtx, colliderJntSph);
    Collider_SetJntSph(globalCtx, colliderJntSph, &this->dyna.actor, colliderJntSphInit, this->jntSph.unk1A0);
    func_800D1694(this->dyna.actor.posRot.pos.x,
                  this->dyna.actor.posRot.pos.y + this->dyna.actor.shape.unk_08 * this->dyna.actor.scale.y,
                  this->dyna.actor.posRot.pos.z, &this->dyna.actor.shape.rot);
    Matrix_Scale(this->dyna.actor.scale.x, this->dyna.actor.scale.y, this->dyna.actor.scale.z, 1);
    func_800628A4(0, colliderJntSph);
}

void func_80B9D3B8(ObjSwitch* this, GlobalContext* globalCtx, ColliderTrisInit* colliderTrisInit) {
    ColliderTris* colliderTris;
    s32 i;
    s32 j;
    Vec3f pos[3];

    colliderTris = &this->tris.unk180;
    Collider_InitTris(globalCtx, colliderTris);
    Collider_SetTris(globalCtx, colliderTris, &this->dyna.actor, colliderTrisInit, this->tris.unk1A0);
    for (i = 0; i != 2; i++) {
        for (j = 0; j != 3; j++) {
            func_80B9D210(&pos[j], &colliderTrisInit->list[i].dim.vtx[j], this->dyna.actor.initPosRot.rot.y);
            Math_Vec3f_Sum(&pos[j], &this->dyna.actor.posRot.pos, &pos[j]);
        }
        func_800627A0(colliderTris, i, &pos[0], &pos[1], &pos[2]);
    }
}

Actor* func_80B9D4D8(ObjSwitch* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    return Actor_SpawnAsChild(&globalCtx->actorCtx, thisx, globalCtx, ACTOR_OBJ_ICE_POLY, thisx->posRot.pos.x,
                              thisx->posRot.pos.y, thisx->posRot.pos.z, thisx->posRot.rot.x, thisx->posRot.rot.y,
                              thisx->posRot.rot.z, (thisx->params >> 8 & 0x3F) << 8);
}

void func_80B9D54C(ObjSwitch* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 temp_v1;

    if (Flags_GetSwitch(globalCtx, this->dyna.actor.params >> 8 & 0x3F)) {
        this->unk16E = 0;
    } else {
        temp_v1 = this->dyna.actor.params >> 4 & 7;
        Flags_SetSwitch(globalCtx, this->dyna.actor.params >> 8 & 0x3F);
        if ((temp_v1 == 0) || (temp_v1 == 4)) {
            func_800806BC(globalCtx, &this->dyna.actor, 0x4802);
        } else {
            func_800806BC(globalCtx, &this->dyna.actor, 0x4807);
        }
        this->unk16E = 1;
    }
}

void func_80B9D5F8(ObjSwitch* this, GlobalContext* globalCtx) {
    this->unk16E = 0;
    if (Flags_GetSwitch(globalCtx, this->dyna.actor.params >> 8 & 0x3F)) {
        Flags_UnsetSwitch(globalCtx, this->dyna.actor.params >> 8 & 0x3F);
        if ((this->dyna.actor.params >> 4 & 7) == 1) {
            func_800806BC(globalCtx, &this->dyna.actor, 0x4807);
            this->unk16E = 1;
        }
    }
}

void func_80B9D680(ObjSwitch* this) {
    this->unk178 = (this->unk178 - 1) & 0x7F;
    this->unk179 = (this->unk179 + 1) & 0x7F;
    this->unk17A = (this->unk17A + 1) & 0x7F;
    this->unk17B = (this->unk17B - 1) & 0x7F;
}

void ObjSwitch_Init(Actor* thisx, GlobalContext* globalCtx) {
    f32* phi_a3;
    s32 sp30;
    s32 temp_v1;

    sp30 = Flags_GetSwitch(globalCtx, thisx->params >> 8 & 0x3F);
    temp_v1 = thisx->params & 7;
    if ((temp_v1 == 0) || (temp_v1 == 1)) {
        func_80B9D294(thisx, globalCtx, &D_05005FB8, 1);
    }
    Actor_ProcessInitChain(thisx, sInitChain);
    if ((temp_v1 == 0) || (temp_v1 == 1)) {
        thisx->posRot.pos.y = thisx->initPosRot.pos.y + 1.0f;
    }
    Actor_SetHeight(thisx, D_80B9EC20[temp_v1]);
    if (temp_v1 == 1) {
        func_80B9D3B8(THIS, globalCtx, &D_80B9ECAC);
    } else if (temp_v1 == 2) {
        func_80B9D3B8(THIS, globalCtx, &D_80B9ED34);
    } else if ((temp_v1 == 3) || (temp_v1 == 4)) {
        func_80B9D31C(THIS, globalCtx, &D_80B9ED68);
    }
    if (temp_v1 == 4) {
        thisx->flags = (thisx->flags | 1);
        thisx->unk_1F = 4;
    }
    thisx->colChkInfo.mass = 0xFF;
    if (thisx->params >> 7 & 1) {
        if (func_80B9D4D8(THIS, globalCtx) == NULL) {
            osSyncPrintf("\x1b[31m");
            osSyncPrintf("Error : 氷発生失敗 (%s %d)\n", "../z_obj_switch.c", 0x2DC);
            osSyncPrintf("\x1b[m");
            thisx->params &= 0xFF7F;
        }
    }
    if (thisx->params >> 7 & 1) {
        func_80B9DF8C(THIS);
    } else if ((temp_v1 == 0) || (temp_v1 == 1)) {
        if (sp30) {
            func_80B9DCB0(THIS);
        } else {
            func_80B9DA48(THIS);
        }
    } else if (temp_v1 == 2) {
        if (sp30) {
            func_80B9E100(THIS);
        } else {
            func_80B9DFF0(THIS);
        }
    } else if ((temp_v1 == 3) || (temp_v1 == 4)) {
        if (sp30) {
            func_80B9E47C(THIS);
        } else {
            func_80B9E280(THIS);
        }
    }

    osSyncPrintf((const char*)"(Dungeon switch)(arg_data 0x%04x)\n", thisx->params);
}

void ObjSwitch_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ObjSwitch* this = THIS;
    switch (thisx->params & 7) {
        case 0:
        case 1:
            DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
            break;
    }
    switch (thisx->params & 7) {
        case 1:
        case 2:
            Collider_DestroyTris(globalCtx, &this->tris.unk180);
            break;
        case 3:
        case 4:
            Collider_DestroyJntSph(globalCtx, &this->jntSph.unk180);
            break;
    }
}

void func_80B9DA48(ObjSwitch* this) {
    this->dyna.actor.scale.y = 0.165f;
    this->actionFunc = &func_80B9DA64;
}

void func_80B9DA64(ObjSwitch* this, GlobalContext* globalCtx) {
    if ((this->dyna.actor.params & 7) == 1) {
        if ((this->unk180_base.acFlags & 2) != 0) {
            func_80B9DBD8(this);
            func_80B9D54C(this, globalCtx);
            this->unk180_base.acFlags &= 0xFFFD;
        } else {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk180_base);
        }
    } else {
        switch ((this->dyna.actor.params >> 4) & 7) {
            case 0:
                if (func_8004356C(&this->dyna)) {
                    func_80B9DBD8(this);
                    func_80B9D54C(this, globalCtx);
                }
                break;
            case 1:
                if ((this->dyna.unk_160 & 2) && !(this->unk17F & 2)) {
                    func_80B9DBD8(this);
                    func_80B9D54C(this, globalCtx);
                }
                break;
            case 2:
                if (func_800435B4(&this->dyna)) {
                    func_80B9DBD8(this);
                    func_80B9D54C(this, globalCtx);
                }
                break;
            case 3:
                if (func_800435B4(&this->dyna)) {
                    func_80B9DBD8(this);
                    func_80B9D5F8(this, globalCtx);
                }
                break;
        }
    }
}

void func_80B9DBD8(ObjSwitch* this) {
    this->actionFunc = &func_80B9DBF0;
    this->unk16C = 100;
}

void func_80B9DBF0(ObjSwitch* this, GlobalContext* globalCtx) {
    if ((this->dyna.actor.params >> 4 & 7) == 3 || this->unk16E == 0 || func_8005B198() == this->dyna.actor.type ||
        this->unk16C <= 0) {
        this->dyna.actor.scale.y -= 99.0f / 2000.0f;
        if (this->dyna.actor.scale.y <= 33.0f / 2000.0f) {
            func_80B9DCB0(this);
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
            func_800AA000(this->dyna.actor.xyzDistFromLinkSq, 120, 20, 10);
        }
    }
}

void func_80B9DCB0(ObjSwitch* this) {
    this->dyna.actor.scale.y = 33.0f / 2000.0f;
    this->unk168 = 6;
    this->actionFunc = &func_80B9DCD4;
}

void func_80B9DCD4(ObjSwitch* this, GlobalContext* globalCtx) {
    switch (this->dyna.actor.params >> 4 & 7) {
        case 0:
            if (!Flags_GetSwitch(globalCtx, this->dyna.actor.params >> 8 & 0x3F)) {
                func_80B9DE20(this);
            }
            break;
        case 1:
            if ((this->dyna.unk_160 & 2) && !(this->unk17F & 2)) {
                func_80B9DE20(this);
                func_80B9D5F8(this, globalCtx);
            }
            break;
        case 2:
        case 3:
            if (!func_800435B4(&this->dyna) && !func_8008E988(globalCtx)) {
                if (this->unk168 <= 0) {
                    func_80B9DE20(this);
                    if ((this->dyna.actor.params >> 4 & 7) == 2) {
                        func_80B9D5F8(this, globalCtx);
                    } else {
                        func_80B9D54C(this, globalCtx);
                    }
                }
            } else {
                this->unk168 = 6;
            }
            break;
    }
}

void func_80B9DE20(ObjSwitch* this) {
    this->actionFunc = &func_80B9DE38;
    this->unk16C = 100;
}

void func_80B9DE38(ObjSwitch* this, GlobalContext* globalCtx) {
    s16 temp_v1;

    temp_v1 = this->dyna.actor.params >> 4 & 7;
    if (!(temp_v1 == 1 || temp_v1 == 3) || this->unk16E == 0 || func_8005B198() == this->dyna.actor.type ||
        this->unk16C <= 0) {
        this->dyna.actor.scale.y += 0.0495f;
        if (this->dyna.actor.scale.y >= 0.165f) {
            func_80B9DA48(this);
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
            if (temp_v1 == 1) {
                func_800AA000(this->dyna.actor.xyzDistFromLinkSq, 120, 20, 10);
            }
        }
    }
}

s32 func_80B9DF1C(ObjSwitch* this) {
    Actor* temp_v0;
    s16 temp_v1;

    if ((this->unk180_base.acFlags & 2) && !(this->unk17F & 2)) {
        temp_v0 = this->unk180_base.ac;
        if (temp_v0 != NULL) {
            temp_v1 = temp_v0->posRot.rot.y - this->dyna.actor.shape.rot.y;
            if (ABS(temp_v1) > 0x5000) {
                return 1;
            }
        }
    }
    return 0;
}

void func_80B9DF8C(ObjSwitch* this) {
    this->actionFunc = &func_80B9DF9C;
}

void func_80B9DF9C(ObjSwitch* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->dyna.actor.params >> 8 & 0x3F)) {
        func_80B9E100(this);
    } else {
        func_80B9DFF0(this);
    }
}

void func_80B9DFF0(ObjSwitch* this) {
    this->actionFunc = &func_80B9E004;
    this->unk170 = 0;
}

void func_80B9E004(ObjSwitch* this, GlobalContext* globalCtx) {
    if (func_80B9DF1C(this) || (this->dyna.actor.params >> 7 & 1)) {
        func_80B9E06C(this);
        func_80B9D54C(this, globalCtx);
        this->dyna.actor.params &= 0xFF7F;
    }
}

void func_80B9E06C(ObjSwitch* this) {
    this->actionFunc = &func_80B9E084;
    this->unk16C = 100;
}

void func_80B9E084(ObjSwitch* this, GlobalContext* globalCtx) {
    if (this->unk16E == 0 || func_8005B198() == this->dyna.actor.type || this->unk16C <= 0) {
        this->unk170++;
        if (this->unk170 >= 3) {
            func_80B9E100(this);
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
        }
    }
}

void func_80B9E100(ObjSwitch* this) {
    this->actionFunc = &func_80B9E118;
    this->unk170 = 3;
}

void func_80B9E118(ObjSwitch* this, GlobalContext* globalCtx) {
    switch (this->dyna.actor.params >> 4 & 7) {
        case 0:
            if (!Flags_GetSwitch(globalCtx, this->dyna.actor.params >> 8 & 0x3F)) {
                func_80B9E1D8(this);
                this->dyna.actor.params &= 0xFF7F;
            }
            break;
        case 1:
            if (func_80B9DF1C(this) || (this->dyna.actor.params >> 7 & 1)) {
                func_80B9E1D8(this);
                func_80B9D5F8(this, globalCtx);
                this->dyna.actor.params &= 0xFF7F;
            }
            break;
    }
}

void func_80B9E1D8(ObjSwitch* this) {
    this->actionFunc = &func_80B9E1F0;
    this->unk16C = 100;
}

void func_80B9E1F0(ObjSwitch* this, GlobalContext* globalCtx) {
    if ((this->dyna.actor.params >> 4 & 7) != 1 || this->unk16E == 0 || func_8005B198() == this->dyna.actor.type ||
        this->unk16C <= 0) {
        this->unk170--;
        if (this->unk170 <= 0) {
            func_80B9DFF0(this);
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
        }
    }
}

void func_80B9E280(ObjSwitch* this) {
    this->unk17C = 0;
    this->unk17D = 0;
    this->unk17E = 0;
    this->unk174 = &D_050144B0;
    this->actionFunc = &func_80B9E2A8;
}

void func_80B9E2A8(ObjSwitch* this, GlobalContext* globalCtx) {
    switch (this->dyna.actor.params >> 4 & 7) {
        case 0:
            if ((this->unk180_base.acFlags & 2) && this->unk16A <= 0) {
                this->unk16A = 10;
                func_80B9D54C(this, globalCtx);
                func_80B9E3DC(this);
            }
            break;
        case 4:
            if (((this->unk180_base.acFlags & 2) && this->unk16A <= 0) ||
                Flags_GetSwitch(globalCtx, this->dyna.actor.params >> 8 & 0x3F)) {
                this->unk16A = 10;
                func_80B9D54C(this, globalCtx);
                func_80B9E3DC(this);
            }
            break;
        case 1:
            if ((this->unk180_base.acFlags & 2) && !(this->unk17F & 2) && this->unk16A <= 0) {
                this->unk16A = 10;
                func_80B9D54C(this, globalCtx);
                func_80B9E3DC(this);
            }
            func_80B9D680(this);
            break;
    }
}

void func_80B9E3DC(ObjSwitch* this) {
    this->actionFunc = &func_80B9E3F4;
    this->unk16C = 100;
}

void func_80B9E3F4(ObjSwitch* this, GlobalContext* globalCtx) {
    if (this->unk16E == 0 || func_8005B198() == this->dyna.actor.type || this->unk16C <= 0) {
        func_80B9E47C(this);
        if ((this->dyna.actor.params >> 4 & 7) == 1) {
            func_80B9D680(this);
        }
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_DIAMOND_SWITCH);
    }
}

void func_80B9E47C(ObjSwitch* this) {
    this->unk17C = 0xFF;
    this->unk17D = 0xFF;
    this->unk17E = 0xFF;
    this->unk174 = &D_05014CB0;
    this->actionFunc = &func_80B9E4A8;
}

void func_80B9E4A8(ObjSwitch* this, GlobalContext* globalCtx) {
    switch (this->dyna.actor.params >> 4 & 7) {
        case 0:
        case 4:
            if (!Flags_GetSwitch(globalCtx, this->dyna.actor.params >> 8 & 0x3F)) {
                func_80B9E56C(this);
            }
            break;
        case 1:
            if ((this->unk180_base.acFlags & 2) && !(this->unk17F & 2) && this->unk16A <= 0) {
                this->unk16A = 10;
                globalCtx = globalCtx;
                func_80B9E56C(this);
                func_80B9D5F8(this, globalCtx);
            }
            break;
    }
    func_80B9D680(this);
}

void func_80B9E56C(ObjSwitch* this) {
    this->actionFunc = &func_80B9E584;
    this->unk16C = 100;
}

void func_80B9E584(ObjSwitch* this, GlobalContext* globalCtx) {
    if ((this->dyna.actor.params >> 4 & 7) != 1 || this->unk16E == 0 || func_8005B198() == this->dyna.actor.type ||
        this->unk16C <= 0) {
        func_80B9E280(this);
        func_80B9D680(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_DIAMOND_SWITCH);
    }
}

void ObjSwitch_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjSwitch* this = THIS;

    if (this->unk168 > 0) {
        this->unk168--;
    }
    if (this->unk16C > 0) {
        this->unk16C--;
    }
    this->actionFunc(this, globalCtx);
    switch (this->dyna.actor.params & 7) {
        case 0:
        case 1:
            this->unk17F = this->dyna.unk_160;
            break;
        case 2:
            this->unk17F = this->unk180_base.acFlags;
            this->unk180_base.acFlags &= 0xFFFD;
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk180_base);
            break;
        case 3:
        case 4:
            if (!func_8008E988(globalCtx) && this->unk16A > 0) {
                this->unk16A--;
            }
            this->unk17F = this->unk180_base.acFlags;
            this->unk180_base.acFlags &= 0xFFFD;
            if (this->unk16A <= 0) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk180_base);
            }
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk180_base);
            break;
    }
}

void func_80B9E748(ObjSwitch* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_80B9ED88[this->dyna.actor.params >> 4 & 7]);
}

void func_80B9E788(ObjSwitch* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_05005AD0);
}

void func_80B9E7B4(ObjSwitch* this, GlobalContext* globalCtx) {
    s32 pad; // required
    s32 sp48 = this->dyna.actor.params >> 4 & 7;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1459);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1462),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80B9ED98[sp48][this->unk170]));
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_80B9EDB8[sp48]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1471);
}

void func_80B9E904(ObjSwitch* this, GlobalContext* globalCtx) {
    s32 pad1;
    s32 pad2;
    s32 sp94;

    sp94 = this->dyna.actor.params >> 4 & 7;
    func_8002ED80(&this->dyna.actor, globalCtx, 0);

    if (1) {}

    // polyXlu

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1494);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_switch.c", 0x5D9),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_80B9EDC0[sp94]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1502);

    // polyOpa

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1507);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1511),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    if (sp94 == 1) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(this->unk174));
    }
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, this->unk17C, this->unk17D, this->unk17E, 128);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->unk178, this->unk179, 0x20, 0x20, 1, this->unk17A,
                                this->unk17B, 0x20, 0x20));
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_80B9EDD4[sp94]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1533);
}

void ObjSwitch_Draw(Actor* thisx, GlobalContext* globalCtx) {
    D_80B9EDE8[thisx->params & 7](THIS, globalCtx);
}
