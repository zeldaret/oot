#include "z_en_ko.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnKo*)thisx)

void EnKo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKo_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKo_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A99048(EnKo* this, GlobalContext* globalCtx);
void func_80A995CC(EnKo* this, GlobalContext* globalCtx);
void func_80A99384(EnKo* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06006A60;
extern UNK_TYPE D_06007830;
extern UNK_TYPE D_06007D94;
extern UNK_TYPE D_0600879C;
extern UNK_TYPE D_06008F6C;

const ActorInit En_Ko_InitVars = {
    ACTOR_EN_KO,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnKo),
    (ActorFunc)EnKo_Init,
    (ActorFunc)EnKo_Destroy,
    (ActorFunc)EnKo_Update,
    (ActorFunc)EnKo_Draw,
};

ColliderCylinderInit D_80A9A100 = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 20, 46, 0, { 0, 0, 0 } },
};
CollisionCheckInfoInit2 D_80A9A12C = { 0, 0, 0, 0, 0xFF };

s32 D_80A9A138[] = { 0x06000240, 0x06000D40, 0x06001140, 0x00000000 };
s32 D_80A9A148[] = { 0x06000F4C, 0x06001A0C, 0x06001E0C, 0x00000000 };

typedef struct {
    s16 objectId;
    SkeletonHeader* header;
} struct_80A9A158;

struct_80A9A158 D_80A9A158[] = { { 0x00FC, 0x06001890 } };

s32 D_80A9A160[] = { 0x00000000, 0x00FD0000, 0x06002C10, &D_80A9A148, 0x013D0000, 0x06002940, &D_80A9A138 };

typedef struct {
    s16 objectId;
    SkeletonHeader* unk_4;
} struct_80A9A17C;
// Object IDS? OBJECT_KM1 / OBJECT_KW1
struct_80A9A17C D_80A9A17C[2] = { { OBJECT_KM1, 0x060000F0 }, { OBJECT_KW1, 0x060000F0 } };

// s32 D_80A9A17C[] = { 0x00FC0000 };
// s32 D_80A9A180[] = { 0x060000F0, 0x00FD0000, 0x060000F0 };

struct_80034EC0_Entry D_80A9A18C[] = {
    { 0x06008F6C, 1.0f, 2.0f, 14.0f, 4, 0.0f },   { 0x06008F6C, 0.0f, 1.0f, 1.0f, 4, 0.0f },
    { 0x06009B64, 0.0f, 0.0f, 0.0f, 2, 0.0f },    { 0x06009B64, 0.0f, 1.0f, 1.0f, 2, 0.0f },
    { 0x06009B64, 0.0f, 2.0f, 2.0f, 2, 0.0f },    { 0x060062DC, 1.0f, 0.0f, -1.0f, 0, 0.0f },
    { 0x060062DC, 1.0f, 0.0f, -1.0f, 0, -10.0f }, { 0x06005808, 1.0f, 0.0f, -1.0f, 0, -10.0f },
    { 0x06007830, 1.0f, 0.0f, -1.0f, 0, 0.0f },   { 0x06008178, 1.0f, 0.0f, -1.0f, 0, 0.0f },
    { 0x060065E0, 1.0f, 0.0f, -1.0f, 0, 0.0f },   { 0x0600879C, 1.0f, 0.0f, -1.0f, 0, 0.0f },
    { 0x06007FFC, 1.0f, 0.0f, -1.0f, 0, 0.0f },   { 0x060080B4, 1.0f, 0.0f, -1.0f, 0, 0.0f },
    { 0x060091AC, 1.0f, 0.0f, -1.0f, 0, 0.0f },   { 0x06006F9C, 1.0f, 0.0f, -1.0f, 0, 0.0f },
    { 0x06007064, 1.0f, 0.0f, -1.0f, 0, 0.0f },   { 0x06007120, 1.0f, 0.0f, -1.0f, 0, 0.0f },
    { 0x06007F38, 1.0f, 0.0f, -1.0f, 0, 0.0f },   { 0x06007D94, 1.0f, 0.0f, -1.0f, 0, 0.0f },
    { 0x06006EE0, 1.0f, 0.0f, -1.0f, 0, 0.0f },   { 0x060098EC, 1.0f, 0.0f, -1.0f, 0, 0.0f },
    { 0x060090EC, 1.0f, 0.0f, -1.0f, 0, 0.0f },   { 0x0600982C, 1.0f, 0.0f, -1.0f, 0, 0.0f },
    { 0x06009274, 1.0f, 0.0f, -1.0f, 0, 0.0f },   { 0x060099A4, 1.0f, 0.0f, -1.0f, 0, 0.0f },
    { 0x06009028, 1.0f, 0.0f, -1.0f, 0, 0.0f },   { 0x06007E64, 1.0f, 0.0f, -1.0f, 0, 0.0f },
    { 0x06007454, 1.0f, 0.0f, -1.0f, 0, 0.0f },   { 0x06008F6C, 0.0f, 1.0f, 1.0f, 4, -8.0f },
    { 0x06007D94, 1.0f, 0.0f, -1.0f, 0, -8.0f },  { 0x0600879C, 1.0f, 0.0f, -1.0f, 0, -8.0f },
    { 0x06006A60, 1.0f, 0.0f, -1.0f, 0, -8.0f },  { 0x06007830, 1.0f, 0.0f, -1.0f, 0, -8.0f }
};
/*typedef struct {
    u8 unk_0;
    u8 unk_1;
    u8 unk_2;
    u8 unk_3;
    u8 unk_4;
} struct_80A9A4BC;*/
u8 D_80A9A4BC[13][5] = { { 0x08, 0x09, 0x09, 0x0E, 0x0B }, { 0x02, 0x0C, 0x02, 0x0D, 0x0D },
                         { 0x0B, 0x0B, 0x0B, 0x0F, 0x09 }, { 0x00, 0x10, 0x10, 0x11, 0x12 },
                         { 0x13, 0x13, 0x14, 0x0A, 0x09 }, { 0x03, 0x03, 0x03, 0x03, 0x03 },
                         { 0x04, 0x16, 0x16, 0x04, 0x17 }, { 0x18, 0x10, 0x10, 0x19, 0x10 },
                         { 0x1A, 0x0F, 0x0F, 0x1A, 0x0F }, { 0x03, 0x03, 0x03, 0x1B, 0x1B },
                         { 0x02, 0x02, 0x02, 0x02, 0x16 }, { 0x0E, 0x0E, 0x0E, 0x0E, 0x0E },
                         { 0x05, 0x05, 0x05, 0x05, 0x05 } };
typedef struct {
    s8 unk_0;
    s8 unk_1;
    s8 unk_2;
    s8 unk_3;
    s8 unk_4;
    s8 unk_5;
    u8 unk_6;
    s8 unk_7;
    s8 unk_8;
    s8 unk_9;
    s8 unk_A;
} struct_80A9A500;
struct_80A9A500 D_80A9A500[] = { { 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF },
                                 { 0x01, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF },
                                 { 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF },
                                 { 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF },
                                 { 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF },
                                 { 0x01, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF },
                                 { 0x01, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF },
                                 { 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF },
                                 { 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF },
                                 { 0x01, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF },
                                 { 0x01, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF },
                                 { 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF },
                                 { 0x02, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF },
                                 /*0x00*/ };

typedef struct {
    s8 unk_0;
    f32 unk_4;
    f32 unk_8;
} struct_80A9A590;

struct_80A9A590 D_80A9A590[] = { { 6, 30.0f, 180.0f }, { 6, 30.0f, 180.0f }, { 6, 30.0f, 180.0f }, { 6, 30.0f, 180.0f },
                                 { 6, 30.0f, 180.0f }, { 1, 30.0f, 240.0f }, { 6, 30.0f, 180.0f }, { 6, 30.0f, 180.0f },
                                 { 6, 30.0f, 180.0f }, { 6, 30.0f, 180.0f }, { 6, 30.0f, 180.0f }, { 6, 30.0f, 180.0f },
                                 { 6, 30.0f, 180.0f } };

s32 D_80A9A62C[] = { 0x00000000, 0x00000000, 0x00000000, 0xC1F00000, 0xC1A00000, 0x00000000, 0x00000000, 0x00000000,
                     0xC1A00000, 0xC1200000, 0x00000000, 0x00000000, 0x00000000, 0xC1F00000, 0xC1A00000, 0xC1200000,
                     0x41200000, 0x41200000, 0xC1200000, 0xC1F00000, 0x00000000, 0x00000000, 0x00000000, 0xC1200000,
                     0xC1A00000, 0x00000000, 0x00000000, 0x00000000, 0xC1A00000, 0xC1A00000, 0x00000000, 0x00000000,
                     0x00000000, 0xC1200000, 0xC1A00000, 0x41200000, 0x41200000, 0x41200000, 0xC2700000, 0xC1A00000,
                     0xC1200000, 0xC1200000, 0xC1A00000, 0xC1F00000, 0xC1F00000, 0xC1200000, 0xC1200000, 0xC1200000,
                     0xC2200000, 0xC2200000, 0x00000000, 0x00000000, 0x00000000, 0xC1200000, 0xC1A00000, 0xC1200000,
                     0xC1200000, 0xC1A00000, 0xC1F00000, 0xC1F00000, 0x00000000, 0x00000000, 0x00000000, 0xC1A00000,
                     0xC1A00000 };
s32 D_80A9A730[] = { 0x01010100, 0x01010101, 0x01010101, 0x01000101, 0x01010001, 0x01010100,
                     0x01000000, 0x00000101, 0x01010101, 0x01010001, 0x00000000, 0x00000000,
                     0x00000101, 0x01010100, 0x00000000, 0x01010101, 0x01000000 };
s32 D_80A9A774[] = { 0x00000000, 0x00000000, 0x00000000 };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96DB0.s")
/*s32 func_80A96DB0(EnKo* this, GlobalContext* globalCtx) {

    s16 temp_a1;
    u8 temp_t0;
    u8 temp_t1;
    struct_80A9A500* temp_v0;

    //temp_v0 = ((this->actor.params & 0xFF) * 0xB) + D_80A9A500;
    // temp_a0 = &globalCtx->objectCtx;
    temp_v0 = &D_80A9A500[this->actor.params];
    temp_t0 = temp_v0->unk_0;
    temp_t1 = temp_v0->unk_1;
    temp_a1 = *(D_80A9A17C + (temp_v0->unk_6 * 8));
    // sp18 = temp_a0;
    //sp1F = temp_t0;
    //sp1E = temp_t1;
    this->unk_196 = Object_GetIndex(&globalCtx->objectCtx, temp_a1);
    if ((s32)this->unk_196 < 0) {
        return 0;
    }
    this->unk_195 = Object_GetIndex(&globalCtx->objectCtx, *(D_80A9A17C + (temp_t1 * 8)));
    if ((s32)this->unk_195 < 0) {
        return 0;
    }
    this->unk_194 = Object_GetIndex(&globalCtx->objectCtx, *(D_80A9A158 + (temp_t0 * 0xC)));
    if ((s32)this->unk_194 < 0) {
        return 0;
    }
    return 1;
}*/
/*void func_80A96DB0(EnKo* this, GlobalContext* globalCtx) {
    s16 objectId;
    struct_80A9A500* temp_v0;
    u8 temp_t0;
    u8 temp_t1;

    temp_v0 = &D_80A9A500[this->actor.params & 0xFF];
    temp_t0 = (u8)temp_v0->unk_0;
    temp_t1 = (u8)temp_v0->unk_1;
    objectId = D_80A9A17C[temp_v0->unk_6].objectId;

    this->unk_196 = Object_GetIndex(&globalCtx->objectCtx, objectId);
    if ((s32)this->unk_196 < 0) {
        return;
    }
    this->unk_195 = Object_GetIndex(&globalCtx->objectCtx, D_80A9A17C[temp_t1].objectId);
    if ((s32)this->unk_195 < 0) {
        return;
    }
    this->unk_194 = Object_GetIndex(&globalCtx->objectCtx, D_80A9A158[temp_t0].objectId);
    if ((s32)this->unk_194 < 0) {}
}*/

s32 func_80A96EC4(EnKo* this, GlobalContext* globalCtx) {
    if (!Object_IsLoaded(&globalCtx->objectCtx, this->unk_196)) {
        return 0;
    }
    if (!Object_IsLoaded(&globalCtx->objectCtx, this->unk_195)) {
        return 0;
    }
    if (!Object_IsLoaded(&globalCtx->objectCtx, this->unk_194)) {
        return 0;
    }
    return 1;
}

s32 func_80A96F48(EnKo* this, GlobalContext* globalCtx) {
    this->objectIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_OS_ANIME);
    if (this->objectIndex < 0) {
        return 0;
    }
    return 1;
}

s32 func_80A96F94(EnKo* this, GlobalContext* globalCtx) {
    if (!Object_IsLoaded(&globalCtx->objectCtx, this->objectIndex)) {
        return 0;
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96FD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97D00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97EB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97F20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97F70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98124.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A9835C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A9856C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A9877C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98C18.s")

s32 func_80A98CD8(EnKo* this) {
    s32 temp_v0;
    struct_80A9A590* temp_v1;

    temp_v1 = &D_80A9A590[this->actor.params & 0xFF];
    this->actor.unk_1F = temp_v1->unk_0;
    temp_v0 = this->actor.params & 0xFF;
    if (1) {}
    this->unk_21C = temp_v1->unk_4;
    this->unk_21C = this->unk_21C + this->collider.dim.radius;
    this->unk_218 = temp_v1->unk_8;
    return this->actor.params & 0xFF;
}

s32 func_80A98D2C(EnKo* this) {
    if (LINK_IS_ADULT) {
        return (gBitFlags[0] & gSaveContext.inventory.questItems) ? 4 : 3;
    }
    if (gBitFlags[18] & gSaveContext.inventory.questItems) {
        return (gSaveContext.eventChkInf[4] & 1) ? 2 : 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98DB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98ECC.s")

void EnKo_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKo* this = THIS;

    if (((thisx->params & 0xFF) >= 0xD) || (func_80A96F48(this, globalCtx) == 0) ||
        (func_80A96DB0(this, globalCtx) == 0)) {
        Actor_Kill(thisx);
    }
    if (func_80A98934(thisx, globalCtx) == 0) {
        Actor_Kill(thisx);
    }
    this->actionFunc = func_80A99048;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/EnKo_Destroy.s")

void func_80A99048(EnKo* this, GlobalContext* globalCtx) {
    if ((func_80A96F94(this, globalCtx) != 0) && (func_80A96EC4(this, globalCtx) != 0)) {
        this->actor.flags &= ~0x10;
        this->actor.objBankIndex = this->unk_196;
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->actor.objBankIndex].segment);
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, D_80A9A17C[D_80A9A500[this->actor.params & 0xFF].unk_6].unk_4,
                           NULL, &this->limbDrawTable, &this->transitionDrawTable, 16);
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 18.0f);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->objectIndex].segment);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A9A100);
        func_80061EFC(&this->actor.colChkInfo, NULL, &D_80A9A12C);
        if ((this->actor.params & 0xFF) == 7) {
            // Angle Z
            osSyncPrintf(VT_BGCOL(BLUE) "  アングルＺ->(%d)\n" VT_RST, this->actor.shape.rot.z);
            if ((LINK_IS_ADULT) && ((gBitFlags[0] & gSaveContext.inventory.questItems) == 0)) {
                if (this->actor.shape.rot.z != 1) {
                    Actor_Kill(&this->actor);
                    return;
                }
            } else if (this->actor.shape.rot.z != 0) {
                Actor_Kill(&this->actor);
                return;
            }
        }
        if ((this->actor.params & 0xFF) == 5) {
            this->collider.base.maskA = this->collider.base.maskA | 0x40;
        }
        this->unk_212 = func_80A98D2C(this);
        func_80034EC0(&this->skelAnime, &D_80A9A18C, D_80A9A4BC[this->actor.params & 0xFF][this->unk_212]);
        Actor_SetScale(&this->actor, 0.01f);
        func_80A98CD8(this);
        this->unk_220 = 0.0f;
        this->path = Path_GetByIndex(globalCtx, (this->actor.params & 0xFF00) >> 8, 0xFF);
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_ELF, this->actor.posRot.pos.x,
                           this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 3);
        if ((this->actor.params & 0xFF) == 3) {
            if ((gBitFlags[18] & gSaveContext.inventory.questItems) == 0) {
                this->collider.dim.height = this->collider.dim.height + 0xC8;
                this->actionFunc = func_80A995CC;
                return;
            }
            Path_CopyLastPoint(this->path, &this->actor.posRot.pos);
        }
        this->actionFunc = func_80A99384;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99384.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99504.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99560.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A995CC.s")
void func_80A995CC(EnKo* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 temp_f10;
    f32 temp_f2;
    s16 temp_v0;
    f32 phi_f0;

    temp_v0 = Math_Vec3f_Yaw(&this->actor.initPosRot.pos, &player->actor.posRot.pos);
    this->actor.posRot.pos.x = this->actor.initPosRot.pos.x;
    temp_f10 = 80.0f * Math_Sins(temp_v0);
    this->actor.posRot.pos.z = this->actor.initPosRot.pos.z;
    this->actor.posRot.pos.x = this->actor.posRot.pos.x + temp_f10;
    // yawToLink = this->actor.yawTowardsLink;
    temp_f10 = 80.0f * Math_Coss(temp_v0);
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    this->actor.posRot.pos.z +=  temp_f10;
    if ((this->unk_1E8 == 0) || (this->actor.unk_10C == 0)) {
        temp_f2 = fabsf(this->actor.yawTowardsLink - temp_v0) * 0.001f * 3.0f;
        if (((temp_f2) > 1.0f)) {

            phi_f0 = CLAMP_MAX(temp_f2, 3.0f);
            this->skelAnime.animPlaybackSpeed = phi_f0;
            return;
        }
    }
    this->skelAnime.animPlaybackSpeed = 1.0f;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/EnKo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99BC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99C94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/EnKo_Draw.s")
