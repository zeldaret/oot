/*
 * File: z_obj_switch.c
 * Overlay: ovl_Obj_Switch
 * Description: Switches
 */

#include "z_obj_switch.h"

#define FLAGS 0x00000010

#define THIS ((ObjSwitch*)thisx)

#define SWITCH_FLAG (this->dyna.actor.params >> 8 & 0x3F)
#define FROZEN (this->dyna.actor.params >> 7 & 1)
#define SUBTYPE (this->dyna.actor.params >> 4 & 7)
#define TYPE (this->dyna.actor.params & 7)

void ObjSwitch_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjSwitch_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjSwitch_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjSwitch_Draw(Actor* thisx, GlobalContext* globalCtx);

void ObjSwitch_FloorUpInit(ObjSwitch* this);
void ObjSwitch_FloorUp(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_FloorPressInit(ObjSwitch* this);
void ObjSwitch_FloorPress(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_FloorDownInit(ObjSwitch* this);
void ObjSwitch_FloorDown(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_FloorReleaseInit(ObjSwitch* this);
void ObjSwitch_FloorRelease(ObjSwitch* this, GlobalContext* globalCtx);

void ObjSwitch_EyeFrozenInit(ObjSwitch* this);
void ObjSwitch_EyeInit(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_EyeOpenInit(ObjSwitch* this);
void ObjSwitch_EyeOpen(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_EyeClosingInit(ObjSwitch* this);
void ObjSwitch_EyeClosing(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_EyeClosedInit(ObjSwitch* this);
void ObjSwitch_EyeClosed(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_EyeOpeningInit(ObjSwitch* this);
void ObjSwitch_EyeOpening(ObjSwitch* this, GlobalContext* globalCtx);

void ObjSwitch_CrystalOffInit(ObjSwitch* this);
void ObjSwitch_CrystalOff(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_CrystalTurnOnInit(ObjSwitch* this);
void ObjSwitch_CrystalTurnOn(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_CrystalOnInit(ObjSwitch* this);
void ObjSwitch_CrystalOn(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_CrystalTurnOffInit(ObjSwitch* this);
void ObjSwitch_CrystalTurnOff(ObjSwitch* this, GlobalContext* globalCtx);

extern Gfx D_05005AD0[]; // floor switch, rusty
extern UNK_TYPE D_05005FB8;
// rgba16 32x32 textures
extern UNK_TYPE D_050144B0[]; // red plasma/cloud
extern UNK_TYPE D_05014CB0[]; // blue plasma/cloud

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

// actor height indexed by type
static f32 actorHeight[] = { 10, 10, 0, 30, 30 };

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
static ColliderTrisInit trisColliderFloorRusty = {
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
static ColliderTrisInit trisColliderEye = {
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
static ColliderJntSphInit jntSphColliderCrystal = {
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

// these 5 arrays are indexed by subtype
static Gfx* floorDlists[] = {
    0x05005800, // regular
    0x05006170, // red
    0x05005D50, // blue
    0x05005D50, // blue
};
static UNK_PTR eyeTextures[2][4] = {
    // rgba16 32x32 textures
    // yellow eye
    {
        0x0500A8A0, // open
        0x050098A0, // almost open
        0x0500A0A0, // almost closed
        0x050090A0, // closed
    },
    // silver eye
    {
        0x0500B0A0, // open
        0x0500B8A0, // half-closed
        0x0500C0A0, // closed
        0x0500C0A0, // closed
    },
};
static Gfx* eyeDlists[] = {
    0x05006610, // eye switch (without the eye?), yellow
    0x05006810, // same, silver
};
static Gfx* crystalDlistsXLU[] = {
    0x05006E60, // crystal switch (outer crystal layer)
    0x05007488, // crystal switch (outer crystal layer)
    NULL,       // crystal subtypes 2, 3 don't exist
    NULL,
    0x05006E60, // crystal switch (outer crystal layer)
};
static Gfx* crystalDlistsOPA[] = {
    0x05006D10, // crystal switch (base + (colored?) inner crystal)
    0x05007340, // crystal switch (base + (uncolored?) inner crystal)
    NULL,       // crystal subtypes 2, 3 don't exist
    NULL,
    0x05006D10, // crystal switch (base + (colored?) inner crystal)
};

void ObjSwitch_RotateY(Vec3f* dest, Vec3f* src, s16 angle) {
    f32 s = Math_Sins(angle);
    f32 c = Math_Coss(angle);

    dest->x = src->z * s + src->x * c;
    dest->y = src->y;
    dest->z = src->z * c - src->x * s;
}

void ObjSwitch_InitDynapoly(Actor* thisx, GlobalContext* globalCtx, UNK_PTR arg2, DynaPolyMoveFlag flags) {
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

void ObjSwitch_InitJntSphCollider(ObjSwitch* this, GlobalContext* globalCtx, ColliderJntSphInit* colliderJntSphInit) {
    ColliderJntSph* colliderJntSph;

    colliderJntSph = &this->jntSph.col;
    Collider_InitJntSph(globalCtx, colliderJntSph);
    Collider_SetJntSph(globalCtx, colliderJntSph, &this->dyna.actor, colliderJntSphInit, this->jntSph.items);
    func_800D1694(this->dyna.actor.posRot.pos.x,
                  this->dyna.actor.posRot.pos.y + this->dyna.actor.shape.unk_08 * this->dyna.actor.scale.y,
                  this->dyna.actor.posRot.pos.z, &this->dyna.actor.shape.rot);
    Matrix_Scale(this->dyna.actor.scale.x, this->dyna.actor.scale.y, this->dyna.actor.scale.z, 1);
    func_800628A4(0, colliderJntSph);
}

void ObjSwitch_InitTrisCollider(ObjSwitch* this, GlobalContext* globalCtx, ColliderTrisInit* colliderTrisInit) {
    ColliderTris* colliderTris;
    s32 i;
    s32 j;
    Vec3f pos[3];

    colliderTris = &this->tris.col;
    Collider_InitTris(globalCtx, colliderTris);
    Collider_SetTris(globalCtx, colliderTris, &this->dyna.actor, colliderTrisInit, this->tris.items);
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 3; j++) {
            ObjSwitch_RotateY(&pos[j], &colliderTrisInit->list[i].dim.vtx[j], this->dyna.actor.initPosRot.rot.y);
            Math_Vec3f_Sum(&pos[j], &this->dyna.actor.posRot.pos, &pos[j]);
        }
        func_800627A0(colliderTris, i, &pos[0], &pos[1], &pos[2]);
    }
}

Actor* ObjSwitch_SpawnIce(ObjSwitch* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    return Actor_SpawnAsChild(&globalCtx->actorCtx, thisx, globalCtx, ACTOR_OBJ_ICE_POLY, thisx->posRot.pos.x,
                              thisx->posRot.pos.y, thisx->posRot.pos.z, thisx->posRot.rot.x, thisx->posRot.rot.y,
                              thisx->posRot.rot.z, SWITCH_FLAG << 8);
}

/**
 * used by all types, sets the switch flag
 * has minor unclear side effects
 */
void ObjSwitch_SetOn(ObjSwitch* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 subType;

    if (Flags_GetSwitch(globalCtx, SWITCH_FLAG)) {
        this->enableToggleDelay = 0;
    } else {
        subType = SUBTYPE;
        Flags_SetSwitch(globalCtx, SWITCH_FLAG);
        /*
        OBJSWITCH_SUBTYPE_FLOOR_0
        OBJSWITCH_SUBTYPE_EYE_0
        OBJSWITCH_SUBTYPE_CRYSTAL_0
        OBJSWITCH_SUBTYPE_CRYSTAL_4
        */
        if (subType == 0 || subType == 4) {
            func_800806BC(globalCtx, &this->dyna.actor, 0x4802);
        } else {
            func_800806BC(globalCtx, &this->dyna.actor, 0x4807);
        }
        this->enableToggleDelay = 1;
    }
}

/**
 * used by all types, clears the switch flag
 * has minor unclear side effects
 */
void ObjSwitch_SetOff(ObjSwitch* this, GlobalContext* globalCtx) {
    this->enableToggleDelay = 0;
    if (Flags_GetSwitch(globalCtx, SWITCH_FLAG)) {
        Flags_UnsetSwitch(globalCtx, SWITCH_FLAG);
        /*
        OBJSWITCH_SUBTYPE_FLOOR_1
        OBJSWITCH_SUBTYPE_EYE_1
        OBJSWITCH_SUBTYPE_CRYSTAL_1
        */
        if (SUBTYPE == 1) {
            func_800806BC(globalCtx, &this->dyna.actor, 0x4807);
            this->enableToggleDelay = 1;
        }
    }
}

void ObjSwitch_UpdateTwoTexScrollXY(ObjSwitch* this) {
    this->twoTexScroll_x1 = (this->twoTexScroll_x1 - 1) & 0x7F;
    this->twoTexScroll_y1 = (this->twoTexScroll_y1 + 1) & 0x7F;
    this->twoTexScroll_x2 = (this->twoTexScroll_x2 + 1) & 0x7F;
    this->twoTexScroll_y2 = (this->twoTexScroll_y2 - 1) & 0x7F;
}

void ObjSwitch_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjSwitch* this = THIS;
    s32 switchFlagSet;
    ObjSwitch_Type type;

    switchFlagSet = Flags_GetSwitch(globalCtx, SWITCH_FLAG);
    type = TYPE;
    if (type == OBJSWITCH_TYPE_FLOOR || type == OBJSWITCH_TYPE_FLOOR_RUSTY) {
        ObjSwitch_InitDynapoly(&this->dyna.actor, globalCtx, &D_05005FB8, 1);
    }
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    if (type == OBJSWITCH_TYPE_FLOOR || type == OBJSWITCH_TYPE_FLOOR_RUSTY) {
        this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y + 1.0f;
    }
    Actor_SetHeight(&this->dyna.actor, actorHeight[type]);
    if (type == OBJSWITCH_TYPE_FLOOR_RUSTY) {
        ObjSwitch_InitTrisCollider(this, globalCtx, &trisColliderFloorRusty);
    } else if (type == OBJSWITCH_TYPE_EYE) {
        ObjSwitch_InitTrisCollider(this, globalCtx, &trisColliderEye);
    } else if (type == OBJSWITCH_TYPE_CRYSTAL || type == OBJSWITCH_TYPE_CRYSTAL_TARGETABLE) {
        ObjSwitch_InitJntSphCollider(this, globalCtx, &jntSphColliderCrystal);
    }
    if (type == OBJSWITCH_TYPE_CRYSTAL_TARGETABLE) {
        this->dyna.actor.flags |= 1;
        this->dyna.actor.unk_1F = 4;
    }
    this->dyna.actor.colChkInfo.mass = 0xFF;
    if (FROZEN) {
        if (ObjSwitch_SpawnIce(this, globalCtx) == NULL) {
            osSyncPrintf("\x1b[31m");
            osSyncPrintf("Error : 氷発生失敗 (%s %d)\n", "../z_obj_switch.c", 732);
            osSyncPrintf("\x1b[m");
            this->dyna.actor.params &= ~0x80;
        }
    }
    if (FROZEN) {
        ObjSwitch_EyeFrozenInit(this);
    } else if (type == OBJSWITCH_TYPE_FLOOR || type == OBJSWITCH_TYPE_FLOOR_RUSTY) {
        if (switchFlagSet) {
            ObjSwitch_FloorDownInit(this);
        } else {
            ObjSwitch_FloorUpInit(this);
        }
    } else if (type == OBJSWITCH_TYPE_EYE) {
        if (switchFlagSet) {
            ObjSwitch_EyeClosedInit(this);
        } else {
            ObjSwitch_EyeOpenInit(this);
        }
    } else if (type == OBJSWITCH_TYPE_CRYSTAL || type == OBJSWITCH_TYPE_CRYSTAL_TARGETABLE) {
        if (switchFlagSet) {
            ObjSwitch_CrystalOnInit(this);
        } else {
            ObjSwitch_CrystalOffInit(this);
        }
    }

    osSyncPrintf((const char*)"(Dungeon switch)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void ObjSwitch_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ObjSwitch* this = THIS;
    switch (TYPE) {
        case OBJSWITCH_TYPE_FLOOR:
        case OBJSWITCH_TYPE_FLOOR_RUSTY:
            DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
            break;
    }
    switch (TYPE) {
        case OBJSWITCH_TYPE_FLOOR_RUSTY:
        case OBJSWITCH_TYPE_EYE:
            Collider_DestroyTris(globalCtx, &this->tris.col);
            break;
        case OBJSWITCH_TYPE_CRYSTAL:
        case OBJSWITCH_TYPE_CRYSTAL_TARGETABLE:
            Collider_DestroyJntSph(globalCtx, &this->jntSph.col);
            break;
    }
}

void ObjSwitch_FloorUpInit(ObjSwitch* this) {
    this->dyna.actor.scale.y = 33.0f / 200.0f;
    this->actionFunc = ObjSwitch_FloorUp;
}

/**
 * The floor switch is released and can be pressed using the appropriate method
 */
void ObjSwitch_FloorUp(ObjSwitch* this, GlobalContext* globalCtx) {
    if (TYPE == OBJSWITCH_TYPE_FLOOR_RUSTY) {
        if ((this->tris.col.base.acFlags & 2) != 0) {
            ObjSwitch_FloorPressInit(this);
            ObjSwitch_SetOn(this, globalCtx);
            this->tris.col.base.acFlags &= ~2;
        } else {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->tris.col.base);
        }
    } else {
        switch (SUBTYPE) {
            case OBJSWITCH_SUBTYPE_FLOOR_0:
                if (func_8004356C(&this->dyna)) {
                    ObjSwitch_FloorPressInit(this);
                    ObjSwitch_SetOn(this, globalCtx);
                }
                break;
            case OBJSWITCH_SUBTYPE_FLOOR_1:
                if ((this->dyna.unk_160 & 2) && !(this->lastFrameDynaUnk160 & 2)) {
                    ObjSwitch_FloorPressInit(this);
                    ObjSwitch_SetOn(this, globalCtx);
                }
                break;
            case OBJSWITCH_SUBTYPE_FLOOR_2:
                if (func_800435B4(&this->dyna)) {
                    ObjSwitch_FloorPressInit(this);
                    ObjSwitch_SetOn(this, globalCtx);
                }
                break;
            case OBJSWITCH_SUBTYPE_FLOOR_3:
                if (func_800435B4(&this->dyna)) {
                    ObjSwitch_FloorPressInit(this);
                    ObjSwitch_SetOff(this, globalCtx);
                }
                break;
        }
    }
}

void ObjSwitch_FloorPressInit(ObjSwitch* this) {
    this->actionFunc = ObjSwitch_FloorPress;
    this->toggleDelay = 100;
}

/**
 * The switch is being pressed (animation)
 */
void ObjSwitch_FloorPress(ObjSwitch* this, GlobalContext* globalCtx) {
    if (SUBTYPE == OBJSWITCH_SUBTYPE_FLOOR_3 || !this->enableToggleDelay || func_8005B198() == this->dyna.actor.type ||
        this->toggleDelay <= 0) {
        this->dyna.actor.scale.y -= 99.0f / 2000.0f;
        if (this->dyna.actor.scale.y <= 33.0f / 2000.0f) {
            ObjSwitch_FloorDownInit(this);
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
            func_800AA000(this->dyna.actor.xyzDistFromLinkSq, 120, 20, 10);
        }
    }
}

void ObjSwitch_FloorDownInit(ObjSwitch* this) {
    this->dyna.actor.scale.y = 33.0f / 2000.0f;
    this->framesUntilRelease = 6;
    this->actionFunc = ObjSwitch_FloorDown;
}

/**
 * The switch is pressed and may be released depending on its sub-type
 */
void ObjSwitch_FloorDown(ObjSwitch* this, GlobalContext* globalCtx) {
    switch (SUBTYPE) {
        case OBJSWITCH_SUBTYPE_FLOOR_0:
            if (!Flags_GetSwitch(globalCtx, SWITCH_FLAG)) {
                ObjSwitch_FloorReleaseInit(this);
            }
            break;
        case OBJSWITCH_SUBTYPE_FLOOR_1:
            if ((this->dyna.unk_160 & 2) && !(this->lastFrameDynaUnk160 & 2)) {
                ObjSwitch_FloorReleaseInit(this);
                ObjSwitch_SetOff(this, globalCtx);
            }
            break;
        case OBJSWITCH_SUBTYPE_FLOOR_2:
        case OBJSWITCH_SUBTYPE_FLOOR_3:
            if (!func_800435B4(&this->dyna) && !func_8008E988(globalCtx)) {
                if (this->framesUntilRelease <= 0) {
                    ObjSwitch_FloorReleaseInit(this);
                    if (SUBTYPE == OBJSWITCH_SUBTYPE_FLOOR_2) {
                        ObjSwitch_SetOff(this, globalCtx);
                    } else {
                        ObjSwitch_SetOn(this, globalCtx);
                    }
                }
            } else {
                this->framesUntilRelease = 6;
            }
            break;
    }
}

void ObjSwitch_FloorReleaseInit(ObjSwitch* this) {
    this->actionFunc = ObjSwitch_FloorRelease;
    this->toggleDelay = 100;
}

/**
 * The switch is being released (animation)
 */
void ObjSwitch_FloorRelease(ObjSwitch* this, GlobalContext* globalCtx) {
    s16 subType;

    subType = SUBTYPE;
    if (!(subType == OBJSWITCH_SUBTYPE_FLOOR_1 || subType == OBJSWITCH_SUBTYPE_FLOOR_3) || !this->enableToggleDelay ||
        func_8005B198() == this->dyna.actor.type || this->toggleDelay <= 0) {
        this->dyna.actor.scale.y += 99.0f / 2000.0f;
        if (this->dyna.actor.scale.y >= 33.0f / 200.0f) {
            ObjSwitch_FloorUpInit(this);
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
            if (subType == OBJSWITCH_SUBTYPE_FLOOR_1) {
                func_800AA000(this->dyna.actor.xyzDistFromLinkSq, 120, 20, 10);
            }
        }
    }
}

/**
 * Check if this eye switch was hit
 */
s32 ObjSwitch_EyeIsHit(ObjSwitch* this) {
    Actor* collidingActor;
    s16 rotYdiff;

    if ((this->tris.col.base.acFlags & 2) && !(this->lastFrameColliderACflags & 2)) {
        collidingActor = this->tris.col.base.ac;
        if (collidingActor != NULL) {
            rotYdiff = collidingActor->posRot.rot.y - this->dyna.actor.shape.rot.y;
            if (ABS(rotYdiff) > 0x5000) {
                return 1;
            }
        }
    }
    return 0;
}

void ObjSwitch_EyeFrozenInit(ObjSwitch* this) {
    this->actionFunc = ObjSwitch_EyeInit;
}

void ObjSwitch_EyeInit(ObjSwitch* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, SWITCH_FLAG)) {
        ObjSwitch_EyeClosedInit(this);
    } else {
        ObjSwitch_EyeOpenInit(this);
    }
}

void ObjSwitch_EyeOpenInit(ObjSwitch* this) {
    this->actionFunc = ObjSwitch_EyeOpen;
    this->eyeOpenFrame = 0;
}

/**
 * The eye is open and can be closed by being hit
 */
void ObjSwitch_EyeOpen(ObjSwitch* this, GlobalContext* globalCtx) {
    if (ObjSwitch_EyeIsHit(this) || FROZEN) {
        ObjSwitch_EyeClosingInit(this);
        ObjSwitch_SetOn(this, globalCtx);
        this->dyna.actor.params &= ~0x80;
    }
}

void ObjSwitch_EyeClosingInit(ObjSwitch* this) {
    this->actionFunc = ObjSwitch_EyeClosing;
    this->toggleDelay = 100;
}

/**
 * The eye is closing (4-frames animation)
 */
void ObjSwitch_EyeClosing(ObjSwitch* this, GlobalContext* globalCtx) {
    if (!this->enableToggleDelay || func_8005B198() == this->dyna.actor.type || this->toggleDelay <= 0) {
        this->eyeOpenFrame++;
        if (this->eyeOpenFrame >= 3) {
            ObjSwitch_EyeClosedInit(this);
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
        }
    }
}

void ObjSwitch_EyeClosedInit(ObjSwitch* this) {
    this->actionFunc = ObjSwitch_EyeClosed;
    this->eyeOpenFrame = 3;
}

/**
 * The eye is closed and may be opened depending on sub-type
 */
void ObjSwitch_EyeClosed(ObjSwitch* this, GlobalContext* globalCtx) {
    switch (SUBTYPE) {
        case OBJSWITCH_SUBTYPE_EYE_0:
            if (!Flags_GetSwitch(globalCtx, SWITCH_FLAG)) {
                ObjSwitch_EyeOpeningInit(this);
                this->dyna.actor.params &= ~0x80;
            }
            break;
        case OBJSWITCH_SUBTYPE_EYE_1:
            if (ObjSwitch_EyeIsHit(this) || FROZEN) {
                ObjSwitch_EyeOpeningInit(this);
                ObjSwitch_SetOff(this, globalCtx);
                this->dyna.actor.params &= ~0x80;
            }
            break;
    }
}

void ObjSwitch_EyeOpeningInit(ObjSwitch* this) {
    this->actionFunc = ObjSwitch_EyeOpening;
    this->toggleDelay = 100;
}

/**
 * The eye is opening (4-frames animation)
 */
void ObjSwitch_EyeOpening(ObjSwitch* this, GlobalContext* globalCtx) {
    if (SUBTYPE != OBJSWITCH_SUBTYPE_EYE_1 || !this->enableToggleDelay || func_8005B198() == this->dyna.actor.type ||
        this->toggleDelay <= 0) {
        this->eyeOpenFrame--;
        if (this->eyeOpenFrame <= 0) {
            ObjSwitch_EyeOpenInit(this);
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
        }
    }
}

void ObjSwitch_CrystalOffInit(ObjSwitch* this) {
    this->crystalColor.r = 0;
    this->crystalColor.g = 0;
    this->crystalColor.b = 0;
    this->crystalSubtype1texture = D_050144B0;
    this->actionFunc = ObjSwitch_CrystalOff;
}

/**
 * The crystal is off
 */
void ObjSwitch_CrystalOff(ObjSwitch* this, GlobalContext* globalCtx) {
    switch (SUBTYPE) {
        case OBJSWITCH_SUBTYPE_CRYSTAL_0:
            if ((this->jntSph.col.base.acFlags & 2) && this->crystalHitDelay <= 0) {
                this->crystalHitDelay = 10;
                ObjSwitch_SetOn(this, globalCtx);
                ObjSwitch_CrystalTurnOnInit(this);
            }
            break;
        case OBJSWITCH_SUBTYPE_CRYSTAL_4:
            if (((this->jntSph.col.base.acFlags & 2) && this->crystalHitDelay <= 0) ||
                Flags_GetSwitch(globalCtx, SWITCH_FLAG)) {
                this->crystalHitDelay = 10;
                ObjSwitch_SetOn(this, globalCtx);
                ObjSwitch_CrystalTurnOnInit(this);
            }
            break;
        case OBJSWITCH_SUBTYPE_CRYSTAL_1:
            if ((this->jntSph.col.base.acFlags & 2) && !(this->lastFrameColliderACflags & 2) &&
                this->crystalHitDelay <= 0) {
                this->crystalHitDelay = 10;
                ObjSwitch_SetOn(this, globalCtx);
                ObjSwitch_CrystalTurnOnInit(this);
            }
            ObjSwitch_UpdateTwoTexScrollXY(this);
            break;
    }
}

void ObjSwitch_CrystalTurnOnInit(ObjSwitch* this) {
    this->actionFunc = ObjSwitch_CrystalTurnOn;
    this->toggleDelay = 100;
}

/**
 * The crystal is being turned on
 */
void ObjSwitch_CrystalTurnOn(ObjSwitch* this, GlobalContext* globalCtx) {
    if (!this->enableToggleDelay || func_8005B198() == this->dyna.actor.type || this->toggleDelay <= 0) {
        ObjSwitch_CrystalOnInit(this);
        if (SUBTYPE == OBJSWITCH_SUBTYPE_CRYSTAL_1) {
            ObjSwitch_UpdateTwoTexScrollXY(this);
        }
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_DIAMOND_SWITCH);
    }
}

void ObjSwitch_CrystalOnInit(ObjSwitch* this) {
    this->crystalColor.r = 255;
    this->crystalColor.g = 255;
    this->crystalColor.b = 255;
    this->crystalSubtype1texture = D_05014CB0;
    this->actionFunc = ObjSwitch_CrystalOn;
}

/**
 * The crystal is on
 */
void ObjSwitch_CrystalOn(ObjSwitch* this, GlobalContext* globalCtx) {
    switch (SUBTYPE) {
        case OBJSWITCH_SUBTYPE_CRYSTAL_0:
        case OBJSWITCH_SUBTYPE_CRYSTAL_4:
            if (!Flags_GetSwitch(globalCtx, SWITCH_FLAG)) {
                ObjSwitch_CrystalTurnOffInit(this);
            }
            break;
        case OBJSWITCH_SUBTYPE_CRYSTAL_1:
            if ((this->jntSph.col.base.acFlags & 2) && !(this->lastFrameColliderACflags & 2) &&
                this->crystalHitDelay <= 0) {
                this->crystalHitDelay = 10;
                globalCtx = globalCtx;
                ObjSwitch_CrystalTurnOffInit(this);
                ObjSwitch_SetOff(this, globalCtx);
            }
            break;
    }
    ObjSwitch_UpdateTwoTexScrollXY(this);
}

void ObjSwitch_CrystalTurnOffInit(ObjSwitch* this) {
    this->actionFunc = ObjSwitch_CrystalTurnOff;
    this->toggleDelay = 100;
}

/**
 * The crystal is being turned off
 */
void ObjSwitch_CrystalTurnOff(ObjSwitch* this, GlobalContext* globalCtx) {
    if (SUBTYPE != OBJSWITCH_SUBTYPE_CRYSTAL_1 || !this->enableToggleDelay ||
        func_8005B198() == this->dyna.actor.type || this->toggleDelay <= 0) {
        ObjSwitch_CrystalOffInit(this);
        ObjSwitch_UpdateTwoTexScrollXY(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_DIAMOND_SWITCH);
    }
}

void ObjSwitch_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjSwitch* this = THIS;

    if (this->framesUntilRelease > 0) {
        this->framesUntilRelease--;
    }
    if (this->toggleDelay > 0) {
        this->toggleDelay--;
    }

    this->actionFunc(this, globalCtx);

    switch (TYPE) {
        case OBJSWITCH_TYPE_FLOOR:
        case OBJSWITCH_TYPE_FLOOR_RUSTY:
            this->lastFrameDynaUnk160 = this->dyna.unk_160;
            break;
        case OBJSWITCH_TYPE_EYE:
            this->lastFrameColliderACflags = this->tris.col.base.acFlags;
            this->tris.col.base.acFlags &= ~2;
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->tris.col.base);
            break;
        case OBJSWITCH_TYPE_CRYSTAL:
        case OBJSWITCH_TYPE_CRYSTAL_TARGETABLE:
            if (!func_8008E988(globalCtx) && this->crystalHitDelay > 0) {
                this->crystalHitDelay--;
            }
            this->lastFrameColliderACflags = this->jntSph.col.base.acFlags;
            this->jntSph.col.base.acFlags &= ~2;
            if (this->crystalHitDelay <= 0) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->jntSph.col.base);
            }
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->jntSph.col.base);
            break;
    }
}

void ObjSwitch_DrawFloor(ObjSwitch* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, floorDlists[SUBTYPE]);
}

void ObjSwitch_DrawFloorRusty(ObjSwitch* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_05005AD0);
}

void ObjSwitch_DrawEye(ObjSwitch* this, GlobalContext* globalCtx) {
    s32 pad; // required
    ObjSwitch_SubTypeEye subType = SUBTYPE;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1459);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1462),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[subType][this->eyeOpenFrame]));
    gSPDisplayList(oGfxCtx->polyOpa.p++, eyeDlists[subType]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1471);
}

void ObjSwitch_DrawCrystal(ObjSwitch* this, GlobalContext* globalCtx) {
    s32 pad1;
    s32 pad2;
    ObjSwitch_SubTypeCrystal subType;

    subType = SUBTYPE;
    func_8002ED80(&this->dyna.actor, globalCtx, 0);

    if (1) {}

    // polyXlu

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1494);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_switch.c", 0x5D9),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, crystalDlistsXLU[subType]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1502);

    // polyOpa

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1507);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1511),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    if (subType == OBJSWITCH_SUBTYPE_CRYSTAL_1) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(this->crystalSubtype1texture));
    }
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, this->crystalColor.r, this->crystalColor.g, this->crystalColor.b, 128);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->twoTexScroll_x1, this->twoTexScroll_y1, 0x20, 0x20, 1,
                                this->twoTexScroll_x2, this->twoTexScroll_y2, 0x20, 0x20));
    gSPDisplayList(oGfxCtx->polyOpa.p++, crystalDlistsOPA[subType]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_switch.c", 1533);
}

void ObjSwitch_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ObjSwitch* this = THIS;
    static ObjSwitchActionFunc drawFunctions[] = { ObjSwitch_DrawFloor, ObjSwitch_DrawFloorRusty, ObjSwitch_DrawEye,
                                                   ObjSwitch_DrawCrystal, ObjSwitch_DrawCrystal };
    drawFunctions[TYPE](this, globalCtx);
}

#undef SWITCH_FLAG
#undef FROZEN
#undef SUBTYPE
#undef TYPE
