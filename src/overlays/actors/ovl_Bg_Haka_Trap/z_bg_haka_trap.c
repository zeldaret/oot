/*
 * File: z_bg_haka_trap.c
 * Overlay: ovl_Bg_Haka_Trap
 * Description: Shadow Temple Objects
 */

#include "z_bg_haka_trap.h"

#define FLAGS 0x00000000

#define THIS ((BgHakaTrap*)thisx)

void BgHakaTrap_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaTrap_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaTrap_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHakaTrap_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087FFC0(BgHakaTrap* this, GlobalContext* globalCtx);
void func_808801B8(BgHakaTrap* this, GlobalContext* globalCtx);
void func_808802D8(BgHakaTrap* this, GlobalContext* globalCtx);
void func_80880484(BgHakaTrap* this, GlobalContext* globalCtx);
void func_808805C0(BgHakaTrap* this, GlobalContext* globalCtx);
void func_808806BC(BgHakaTrap* this, GlobalContext* globalCtx);
void func_808808F4(BgHakaTrap* this, GlobalContext* globalCtx);
void func_808809B0(BgHakaTrap* this, GlobalContext* globalCtx);
void func_808809E4(BgHakaTrap* this, GlobalContext* globalCtx, s16 arg2);
void func_80880AE8(BgHakaTrap* this, GlobalContext* globalCtx);
void func_80880C0C(BgHakaTrap* this, GlobalContext* globalCtx);
void func_80880D68(BgHakaTrap* this);

static UNK_TYPE D_80880F30 = 0;

const ActorInit Bg_Haka_Trap_InitVars = {
    ACTOR_BG_HAKA_TRAP,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HAKA_OBJECTS,
    sizeof(BgHakaTrap),
    (ActorFunc)BgHakaTrap_Init,
    (ActorFunc)BgHakaTrap_Destroy,
    (ActorFunc)BgHakaTrap_Update,
    (ActorFunc)BgHakaTrap_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x0D, 0x09, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x04 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 30, 90, 0, { 0, 0, 0 } },
};

static ColliderTrisItemInit sTrisItemsInit[2] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00020000, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 1800.0f, 1200.0f, 0.0f }, { -1800.0f, 1200.0f, 0.0f }, { -1800.0f, 0.0f, 0.0f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00020000, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 1800.0f, 1200.0f, 0.0f }, { -1800.0f, 0.0f, 0.0f }, { 1800.0f, 0.0f, 0.0f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_TRIS },
    2,
    sTrisItemsInit,
};

static CollisionCheckInfoInit sColChkInfoInit = { 0x00, 0x0050, 0x0064, 0xFF };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern UNK_TYPE D_060081D0;
extern UNK_TYPE D_06008D10;
extern UNK_TYPE D_06009CD0;

void BgHakaTrap_Init(Actor* thisx, GlobalContext* globalCtx) {
    static UNK_TYPE D_80881014 = 0;

    BgHakaTrap* this = THIS;
    s32 pad;
    s32 sp28 = 0;

    Actor_ProcessInitChain(thisx, sInitChain);
    thisx->params &= 0xFF;

    if (thisx->params != HAKA_TRAP_PROPELLER) {
        Collider_InitCylinder(globalCtx, &this->colliderCylinder);
        Collider_SetCylinder(globalCtx, &this->colliderCylinder, thisx, &sCylinderInit);

        if ((thisx->params == HAKA_TRAP_GUILLOTINE_SLOW) || (thisx->params == HAKA_TRAP_GUILLOTINE_FAST)) {
            this->timer = 20;
            this->colliderCylinder.dim.yShift = 10;
            thisx->velocity.y = 0.1f;

            if (thisx->params == HAKA_TRAP_GUILLOTINE_FAST) {
                thisx->params = HAKA_TRAP_GUILLOTINE_SLOW;
                this->unk_16A = 1;
            }

            this->actionFunc = func_80880484;
        } else {
            DynaPolyInfo_SetActorMove(&this->dyna, DPM_PLAYER);
            thisx->flags |= 0x10;

            if (thisx->params == HAKA_TRAP_SPIKED_BOX) {
                DynaPolyInfo_Alloc(&D_06009CD0, &sp28);
                this->timer = 30;

                if (D_80881014 != 0) {
                    this->actionFunc = func_808808F4;
                    D_80881014 = 0;
                } else {
                    D_80881014 = 1;
                    this->actionFunc = func_808806BC;
                    thisx->velocity.y = 0.5f;
                }

                thisx->groundY = thisx->initPosRot.pos.y - 225.0f;
                this->unk_16A = (thisx->groundY + 50.0f) - 25.0f;

                this->colliderCylinder.dim.radius = 10;
                this->colliderCylinder.dim.height = 40;
            } else {
                if (thisx->params == HAKA_TRAP_SPIKED_WALL) {
                    DynaPolyInfo_Alloc(&D_060081D0, &sp28);
                    thisx->initPosRot.pos.x -= 200.0f;
                } else {
                    thisx->initPosRot.pos.x += 200.0f;
                    DynaPolyInfo_Alloc(&D_06008D10, &sp28);
                }

                Collider_InitTris(globalCtx, &this->colliderSpikes);
                Collider_SetTris(globalCtx, &this->colliderSpikes, thisx, &sTrisInit, &this->colliderSpikesItem);

                this->colliderCylinder.dim.radius = 18;
                this->colliderCylinder.dim.height = 115;

                this->colliderCylinder.body.toucherFlags = this->colliderCylinder.body.toucherFlags;
                this->colliderCylinder.body.toucherFlags |= 0x10;

                this->actionFunc = func_808801B8;
            }

            this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, sp28);
        }
    } else {
        this->timer = 40;
        this->actionFunc = func_808809B0;
        thisx->uncullZoneScale = 500.0f;
    }

    func_80061ED4(&thisx->colChkInfo, 0, &sColChkInfoInit);
}

void BgHakaTrap_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaTrap* this = THIS;

    if (thisx->params != HAKA_TRAP_PROPELLER) {
        if (thisx->params != HAKA_TRAP_GUILLOTINE_SLOW) {
            DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
            if ((thisx->params == HAKA_TRAP_SPIKED_WALL) || (thisx->params == HAKA_TRAP_SPIKED_WALL_2)) {
                Collider_DestroyTris(globalCtx, &this->colliderSpikes);
            }
        }

        Collider_DestroyCylinder(globalCtx, &this->colliderCylinder);
    }

    func_800F89E8(&this->unk_16C);
}

void func_8087FFC0(BgHakaTrap* this, GlobalContext* globalCtx) {
    f32 cosine;
    Vec3f sp28;
    f32 sine;
    f32 zNonNegative;
    Player* player = PLAYER;

    func_8002DBD0(&this->dyna.actor, &sp28, &player->actor.posRot.pos);

    sine = Math_Sins(this->dyna.actor.shape.rot.y);
    cosine = Math_Coss(this->dyna.actor.shape.rot.y);
    if (this->dyna.actor.params == HAKA_TRAP_GUILLOTINE_SLOW) {
        sp28.x = CLAMP(sp28.x, -50.0f, 50.0f);
        zNonNegative = (sp28.z >= 0.0f) ? 1.0f : -1.0f;
        sp28.z = zNonNegative * -15.0f;
    } else {
        sp28.x = -CLAMP(sp28.x, -162.0f, 162.0f);
        zNonNegative = (sp28.z >= 0.0f) ? 1.0f : -1.0f;
        sp28.z = zNonNegative * 15.0f;
    }

    this->colliderCylinder.dim.pos.x = this->dyna.actor.posRot.pos.x + sp28.x * cosine + sp28.z * sine;
    this->colliderCylinder.dim.pos.z = this->dyna.actor.posRot.pos.z + sp28.x * sine + sp28.z * cosine;
}

void func_808801B8(BgHakaTrap* this, GlobalContext* globalCtx) {
    static UNK_TYPE D_80881018 = 0;
    Player* player = PLAYER;

    if ((D_80880F30 == 0) && (func_8008E988(globalCtx) == 0)) {
        if (!Math_ApproxF(&this->dyna.actor.posRot.pos.x, this->dyna.actor.initPosRot.pos.x, 0.5f)) {
            func_8002F974(&this->dyna.actor, NA_SE_EV_TRAP_OBJ_SLIDE - SFX_FLAG);
        } else if (this->dyna.actor.params == HAKA_TRAP_SPIKED_WALL) {
            D_80881018 |= 1;
        } else if (this->dyna.actor.params == HAKA_TRAP_SPIKED_WALL_2) {
            D_80881018 |= 2;
        }
    }

    func_8087FFC0(this, globalCtx);

    if (this->colliderSpikes.base.acFlags & 2) {
        this->timer = 20;
        D_80880F30 = 1;
        this->actionFunc = func_808802D8;
    } else if (D_80881018 == 3) {
        D_80881018 = 4;
        player->actor.bgCheckFlags |= 0x100;
    }
}

void func_808802D8(BgHakaTrap* this, GlobalContext* globalCtx) {
    static Vec3f D_8088101C = { 0.0f, 0.0f, 0.0f };
    Vec3f vector;
    f32 xScale;
    s32 i;

    if (this->timer != 0) {
        this->timer--;
    }

    func_8002F974(&this->dyna.actor, NA_SE_EV_BURN_OUT - SFX_FLAG);

    for (i = 0; i < 2; i++) {
        f32 rand = Math_Rand_ZeroOne();

        xScale = (this->dyna.actor.params == HAKA_TRAP_SPIKED_WALL) ? -30.0f : 30.0f;

        vector.x = xScale * rand + this->dyna.actor.posRot.pos.x;
        vector.y = Math_Rand_ZeroOne() * 10.0f + this->dyna.actor.posRot.pos.y + 30.0f;
        vector.z = Math_Rand_CenteredFloat(320.0f) + this->dyna.actor.posRot.pos.z;

        func_8002A6B8(globalCtx, &vector, &D_8088101C, &D_8088101C, 0x82, 0x14, 0xFF, 0xFF, 0x96, 0xAA, 0xFF, 0, 0, 1,
                      9, 0);
    }

    if (this->timer == 0) {
        D_80880F30 = 0;
        Actor_Kill(&this->dyna.actor);
    }
}

void func_80880484(BgHakaTrap* this, GlobalContext* globalCtx) {
    s32 sp24;
    s32 timer;

    if (this->unk_16A) {
        this->dyna.actor.velocity.y *= 3.0f;
    } else {
        this->dyna.actor.velocity.y *= 2.0f;
    }

    if (this->timer != 0) {
        this->timer -= 1;
    }

    sp24 = Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y - 185.0f,
                        this->dyna.actor.velocity.y);
    timer = this->timer;

    if ((timer == 10 && !this->unk_16A) || (timer == 13 && this->unk_16A)) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_GUILLOTINE_BOUND);
    }

    if (this->timer == 0) {
        this->dyna.actor.velocity.y = 0.0f;
        this->timer = (this->unk_16A) ? 10 : 40;
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_GUILLOTINE_UP);
        this->actionFunc = func_808805C0;
    }

    func_8087FFC0(this, globalCtx);

    if (sp24 == 0) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
    }
}

void func_808805C0(BgHakaTrap* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->unk_16A) {
        Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 27.0f);
    } else {
        if (this->timer > 20) {
            Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y - 90.0f, 9.0f);
        } else {
            Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 4.5f);
        }

        if (this->timer == 20) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_GUILLOTINE_UP);
        }
    }

    if (this->timer == 0) {
        this->timer = 20;
        this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y;
        this->dyna.actor.velocity.y = 0.1f;
        this->actionFunc = func_80880484;
    }

    func_8087FFC0(this, globalCtx);
}

void func_808806BC(BgHakaTrap* this, GlobalContext* globalCtx) {
    Vec3f vector;
    f32 tempf20;
    f32 temp;
    s32 i;
    UNK_TYPE sp64;

    this->dyna.actor.velocity.y *= 1.6f;

    if (this->timer != 0) {
        this->timer--;
    }

    vector.x = this->dyna.actor.posRot.pos.x + 90.0f;
    vector.y = (this->dyna.actor.posRot.pos.y + 1.0f) + 25.0f;
    vector.z = this->dyna.actor.posRot.pos.z;

    tempf20 = this->dyna.actor.groundY;

    for (i = 0; i < 3; i++) {
        temp =
            func_8003C9A4(&globalCtx->colCtx, &this->dyna.actor.floorPoly, &sp64, &this->dyna.actor, &vector) - 25.0f;
        if (tempf20 < temp) {
            tempf20 = temp;
        }

        vector.x -= 90.0f;
    }

    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, tempf20, this->dyna.actor.velocity.y)) {
        if (this->dyna.actor.velocity.y > 0.01f) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_TRAP_BOUND);
        }
        this->dyna.actor.velocity.y = 0.0f;
    }

    if (this->dyna.actor.velocity.y >= 0.01f) {
        func_8002F974(&this->dyna.actor, NA_SE_EV_CHINETRAP_DOWN - SFX_FLAG);
    }

    if (this->timer == 0) {
        this->dyna.actor.velocity.y = 0.0f;
        this->timer = 30;
        this->unk_16A = (s16)this->dyna.actor.posRot.pos.y + 50.0f;
        this->unk_16A = CLAMP_MAX(this->unk_16A, this->dyna.actor.initPosRot.pos.y);

        this->actionFunc = func_808808F4;
    }
}

void func_808808F4(BgHakaTrap* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer > 20) {
        this->unk_169 = Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->unk_16A, 15.0f);
    } else {
        this->unk_169 = Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 20.0f);
    }

    if (this->timer == 0) {
        this->timer = 30;
        this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y;
        this->dyna.actor.velocity.y = 0.5f;
        this->actionFunc = func_808806BC;
    }
}

void func_808809B0(BgHakaTrap* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer -= 1;
    }

    if (this->timer == 0) {
        this->actionFunc = func_80880AE8;
    }
}

void func_808809E4(BgHakaTrap* this, GlobalContext* globalCtx, s16 arg2) {
    Player* player = PLAYER;
    Vec3f sp18;

    func_8002DBD0(&this->dyna.actor, &sp18, &player->actor.posRot.pos);

    if ((fabsf(sp18.x) < 70.0f) && (fabsf(sp18.y) < 100.0f) && (sp18.z < 500.0f) && (PLAYER->currentBoots != 1)) {
        player->fanWindSpeed = ((500.0f - sp18.z) * 0.06f + 5.0f) * arg2 * (1.0f / 14848.0f) * (2.0f / 3.0f);
        player->fanWindDirection = this->dyna.actor.shape.rot.y;
    }
}

void func_80880AE8(BgHakaTrap* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        if (Math_ApproxUpdateScaledS(&this->dyna.actor.posRot.rot.z, 0, this->dyna.actor.posRot.rot.z * 0.03f + 5.0f)) {
            this->timer = 40;
            this->actionFunc = func_808809B0;
        }
    } else {
        if (Math_ApproxUpdateScaledS(&this->dyna.actor.posRot.rot.z, 0x3A00,
                                     this->dyna.actor.posRot.rot.z * 0.03f + 5.0f)) {
            this->timer = 100;
            this->actionFunc = func_80880C0C;
        }
    }

    this->dyna.actor.shape.rot.z += this->dyna.actor.posRot.rot.z;
    if (this->dyna.actor.posRot.rot.z >= 0x1801) {
        func_8002F974(&this->dyna.actor, NA_SE_EV_WIND_TRAP - SFX_FLAG);
    }

    func_808809E4(this, globalCtx, this->dyna.actor.posRot.rot.z);
}

void func_80880C0C(BgHakaTrap* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }

    func_8002F974(&this->dyna.actor, NA_SE_EV_WIND_TRAP - SFX_FLAG);

    if (this->timer == 0) {
        this->timer = 1;
        this->actionFunc = func_80880AE8;
    }

    this->dyna.actor.shape.rot.z += this->dyna.actor.posRot.rot.z;
    func_808809E4(this, globalCtx, this->dyna.actor.posRot.rot.z);
}

void BgHakaTrap_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaTrap* this = THIS;
    Vec3f* actorPos = &thisx->posRot.pos;

    this->actionFunc(this, globalCtx);

    if ((thisx->params != HAKA_TRAP_PROPELLER) && (thisx->params != HAKA_TRAP_SPIKED_BOX)) {
        this->colliderCylinder.dim.pos.y = actorPos->y;

        if ((thisx->params == HAKA_TRAP_GUILLOTINE_SLOW) || (thisx->params == HAKA_TRAP_GUILLOTINE_FAST)) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
        } else {
            if (this->actionFunc == func_808801B8) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderSpikes.base);
            }

            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
        }
    }
}

void func_80880D68(BgHakaTrap* this) {
    Vec3f vec3;
    Vec3f vec2;
    Vec3f vec1;

    Matrix_MultVec3f(&sTrisItemsInit[0].dim.vtx[0], &vec1);
    Matrix_MultVec3f(&sTrisItemsInit[0].dim.vtx[1], &vec2);
    Matrix_MultVec3f(&sTrisItemsInit[0].dim.vtx[2], &vec3);
    func_800627A0(&this->colliderSpikes, 0, &vec1, &vec2, &vec3);

    Matrix_MultVec3f(&sTrisItemsInit[1].dim.vtx[2], &vec2);
    func_800627A0(&this->colliderSpikes, 1, &vec1, &vec3, &vec2);
}

void BgHakaTrap_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* sDLists[5] = {
        0x06007610, 0x06009860, 0x06007EF0, 0x06008A20, 0x060072C0,
    };
    static Color_RGBA8 D_8088103C = { 0, 0, 0, 0 };
    BgHakaTrap* this = THIS;
    s32 pad;
    Vec3f sp2C;

    if (this->actionFunc == func_808802D8) {
        func_80026230(globalCtx, &D_8088103C, this->timer + 20, 0x28);
    }

    Gfx_DrawDListOpa(globalCtx, sDLists[thisx->params]);

    if (this->actionFunc == func_808801B8) {
        func_80880D68(this);
    }

    if (this->actionFunc == func_808802D8) {
        func_80026608(globalCtx);
    }

    if ((this->actionFunc == func_808808F4) && !this->unk_169) {
        sp2C.x = thisx->posRot.pos.x;
        sp2C.z = thisx->posRot.pos.z;
        sp2C.y = thisx->posRot.pos.y + 110.0f;

        SkinMatrix_Vec3fMtxFMultXYZ(&globalCtx->mf_11D60, &sp2C, &this->unk_16C);
        func_80078914(&this->unk_16C, NA_SE_EV_BRIDGE_CLOSE - SFX_FLAG);
    }
}
