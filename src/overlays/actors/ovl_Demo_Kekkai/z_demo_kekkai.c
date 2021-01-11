#include "z_demo_kekkai.h"

#define FLAGS 0x00000030

#define THIS ((DemoKekkai*)thisx)

void DemoKekkai_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoKekkai_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoKekkai_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoKekkai_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8098D71C(Actor* thisx, GlobalContext* globalCtx);
void func_8098D87C(Actor* thisx, GlobalContext* globalCtx);
void func_8098D9C0(DemoKekkai* this, GlobalContext* globalCtx);

void func_8098D4D4(DemoKekkai* this, GlobalContext* globalCtx);

extern Gfx D_06004930[];
extern Gfx D_06004F00[];
extern UNK_TYPE D_06004FD0;
extern Gfx D_06005A30[];
extern Gfx D_06005CB0[];

const ActorInit Demo_Kekkai_InitVars = {
    ACTOR_DEMO_KEKKAI,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(DemoKekkai),
    (ActorFunc)DemoKekkai_Init,
    (ActorFunc)DemoKekkai_Destroy,
    (ActorFunc)DemoKekkai_Update,
    (ActorFunc)DemoKekkai_Draw,
};

static ColliderCylinderInit D_8098E0B0 = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x20000000, 0x07, 0x04 }, { 0x00002000, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 680, 220, 120, { 0, 0, 0 } },
};

s32 D_8098E0DC[] = {
    0xAAFFFF00, 0x32FFFFFF, 0xAAC8FF00, 0xFFFFAAC8, 0x0000FFAA, 0xFF6400C8, 0xFFFFAAFF, 0x7800FFFF, 0xAA00C800,
};

s32 func_8098CFD0(s32 params) {
    static s32 D_8098E100[] = { 0xC3, 0xBC, 0xBF, 0xBE, 0xBD, 0xAD, 0xBB };

    if ((params < 0) || (params >= 7)) {
        return true;
    }
    return Flags_GetEventChkInf(D_8098E100[params]);
}

void DemoKekkai_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DemoKekkai* this = THIS;

    this->unk_1F6 = 0;
    this->unk_1E4 = 1.0f;
    Actor_SetScale(thisx, 0.1f);
    thisx->colChkInfo.mass = 0xFF;
    Collider_InitCylinder(globalCtx, &this->collider1);
    Collider_SetCylinder(globalCtx, &this->collider1, thisx, &D_8098E0B0);
    Collider_InitCylinder(globalCtx, &this->collider2);
    Collider_SetCylinder(globalCtx, &this->collider2, thisx, &D_8098E0B0);
    Collider_CylinderUpdate(thisx, &this->collider1);
    Collider_CylinderUpdate(thisx, &this->collider2);
    this->unk_1F4 = 0;
    this->unk_1F0 = 1.0f;
    this->unk_1EC = 0.0f;
    switch (thisx->params) {
        case 0:
            this->unk_1F8 = func_8098D4D4;
            this->collider2.dim.radius = thisx->scale.x * 6100.0f;
            this->collider2.dim.height = thisx->scale.y * 5000.0f;
            this->collider2.dim.yShift = 300;
            break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
            this->unk_1E4 = 1.0f;
            this->unk_1E8 = 1.0f;
            Actor_SetScale(thisx, 0.1f);
            thisx->update = func_8098D87C;
            thisx->draw = func_8098D9C0;
            this->collider1.dim.radius = thisx->scale.x * 120.0f;
            this->collider1.dim.height = thisx->scale.y * 2000.0f;
            this->collider1.dim.yShift = 0;
            this->collider2.dim.radius = thisx->scale.x * 320.0f;
            this->collider2.dim.height = thisx->scale.y * 510.0f;
            this->collider2.dim.yShift = 95;
            break;
    }
    if (func_8098CFD0(thisx->params)) {
        if (thisx->params == 0) {
            globalCtx->envCtx.unk_BF = 1;
        }
        Actor_Kill(thisx);
    }
}

void DemoKekkai_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DemoKekkai* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider1);
    Collider_DestroyCylinder(globalCtx, &this->collider2);
}

void func_8098D280(DemoKekkai* this, GlobalContext* globalCtx) {
    static Vec3f D_8098E11C = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_8098E128 = { 0.0f, 0.0f, 0.0f };
    static Color_RGBA8 D_8098E134 = { 255, 255, 170, 0 };
    static Color_RGBA8 D_8098E138 = { 200, 0, 0, 0 };
    Vec3f sp94;
    s16 temp_s0;
    s16 temp_s1;
    s32 i;

    for (i = 0; i < 85; i++) {
        temp_s1 = Rand_ZeroFloat(65535.0f);
        temp_s0 = Rand_ZeroFloat(65535.0f);

        D_8098E11C.x = Math_SinS(temp_s0) * Math_CosS(temp_s1) * Rand_ZeroFloat(8.0f);
        D_8098E11C.z = Math_CosS(temp_s0) * Math_CosS(temp_s1) * Rand_ZeroFloat(8.0f);
        D_8098E11C.y = Math_SinS(temp_s1) * Rand_ZeroFloat(3.0f);

        sp94.x = (D_8098E11C.x * 7.0f) + this->actor.posRot.pos.x;
        sp94.y = (D_8098E11C.y * 20.0f) + this->actor.posRot.pos.y + 120.0f;
        sp94.z = (D_8098E11C.z * 7.0f) + this->actor.posRot.pos.z;

        EffectSsKiraKira_SpawnFocused(globalCtx, &sp94, &D_8098E11C, &D_8098E128, &D_8098E134, &D_8098E138, 0xBB8,
                                      (s32)Rand_ZeroFloat(40.0f) + 45);
    }
}

void func_8098D4D4(DemoKekkai* this, GlobalContext* globalCtx) {
    if ((globalCtx->csCtx.state != 0) && (globalCtx->csCtx.npcActions[0] != NULL) &&
        (globalCtx->csCtx.npcActions[0]->action != 1) && (globalCtx->csCtx.npcActions[0]->action == 2)) {
        if (!(this->unk_1F6 & 1)) {
            func_800F3F3C(0xC);
            this->unk_1F6 |= 1;
        }
        if (this->unk_1F0 < 7.0f) {
            this->unk_1F0 += 0.2f;
        } else {
            this->unk_1F4++;
            if (this->unk_1F4 > 100) {
                Flags_SetEventChkInf(0xC3);
                Actor_Kill(&this->actor);
                return;
            } else if (this->unk_1F4 > 40) {
                this->actor.scale.z = this->actor.scale.x += 0.003f;
            }
        }
    }
    if (!(this->unk_1F6 & 1)) {
        func_8002F974(&this->actor, 0x20EE);
    }
}

void DemoKekkai_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    DemoKekkai* this = THIS;

    if (this->unk_1E4 > 0.99f) {
        if ((this->collider1.base.atFlags & 2) || (this->collider2.base.atFlags & 2)) {
            func_8002F71C(globalCtx, &this->actor, 6.0f, this->actor.yawTowardsLink, 6.0f);
        }
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    }
    this->unk_1F8(this, globalCtx);
    this->unk_1EC += this->unk_1F0;
    if (this->unk_1EC > 65536.0f) {
        this->unk_1EC -= 65536.0f;
    }
}

void func_8098D71C(Actor* thisx, GlobalContext* globalCtx) {
    static u16 D_8098E13C[] = { 0, 280, 280, 280, 280, 280, 280 };
    s32 pad;
    DemoKekkai* this = THIS;

    if (globalCtx->csCtx.frames == D_8098E13C[this->actor.params]) {
        func_800F3F3C(0xA);
    }
    if (this->unk_1E4 >= 0.05f) {
        this->unk_1E4 -= 0.05f;
    } else {
        this->unk_1E4 = 0.0f;
    }
    if (this->unk_1F4 < 40) {
        this->unk_1E8 = ((80 - this->unk_1F4) * (f32)this->unk_1F4 * 0.000625f) + 1.0f;
    } else if (this->unk_1F4 < 50) {
        this->unk_1E8 = 2.0f;
    } else if (this->unk_1F4 == 50) {
        Audio_PlayActorSound2(&this->actor, 0x1842);
        func_8098D280(this, globalCtx);
    } else {
        this->unk_1E8 = 0.0f;
    }
    if (this->unk_1E8 != 0.0f) {
        func_8002F974(&this->actor, 0x20ED);
    }
    this->unk_1F4++;
}

static CutsceneData* D_8098E14C[] = {
    NULL, 0x0201A8E0, 0x0201C6B0, 0x0201BC80, 0x0201B2B0, 0x0201D080, 0x02019EE0,
};

void func_8098D87C(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DemoKekkai* this = THIS;

    if (this->collider1.base.atFlags & 2) {
        func_8002F71C(globalCtx, &this->actor, 5.0f, this->actor.yawTowardsLink, 5.0f);
    }
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    if (this->collider2.base.acFlags & 2) {
        func_80078884(0x4802);
        // I got it
        LOG_STRING("当ったよ", "../z_demo_kekkai.c", 572);
        this->actor.update = func_8098D71C;
        this->unk_1F4 = 0;
        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(D_8098E14C[this->actor.params]);
        gSaveContext.cutsceneTrigger = 1;
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    func_8002F974(&this->actor, 0x20ED);
}

s32 D_8098E168[] = {
    0x01010000, 0x02020202, 0x02020202, 0x02020202, 0x01010000, 0x00010202, 0x02020202, 0x01000001, 0x02020101,
    0x02020202, 0x02020202, 0x02020101, 0x00000001, 0x01000202, 0x02020202, 0x02020202, 0x02020202, 0x01010000,
    0x00010100, 0x02020202, 0x02020202, 0x02020100, 0x01000202, 0x02020202, 0x02010102, 0x00000000,
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kekkai/func_8098D9C0.s")

void DemoKekkai_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DemoKekkai* this = THIS;
    s32 sp6C;

    sp6C = (s32)this->unk_1EC & 0xFFFF;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_kekkai.c", 705);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_kekkai.c", 707),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 170, 255, 255);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, sp6C * 2, sp6C * -4, 0x20, 0x40, 1, sp6C * 2, sp6C * -4,
                                0x20, 0x40));
    gSPDisplayList(POLY_XLU_DISP++, D_06004930);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_kekkai.c", 722);
}
