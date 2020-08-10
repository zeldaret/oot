#include "z_en_elf.h"

#define FLAGS 0x02000030

#define THIS ((EnElf*)thisx)

void EnElf_Init(Actor* thisx, GlobalContext* globalCtx);
void EnElf_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnElf_Update(Actor* thisx, GlobalContext* globalCtx);
void EnElf_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80A053F0(Actor* thisx, GlobalContext* globalCtx);

void func_80A03CF8(EnElfActionFunc* this, GlobalContext* globalCtx);
void func_80A03610(EnElfActionFunc* this, GlobalContext* globalCtx);
void func_80A03990(EnElfActionFunc* this, GlobalContext* globalCtx);
void func_80A0329C(EnElfActionFunc* this, GlobalContext* globalCtx);
void func_80A0214C(EnElfActionFunc* this, GlobalContext* globalCtx);
void func_80A0353C(EnElfActionFunc* this, GlobalContext* globalCtx);
void func_80A03604(EnElfActionFunc* this, GlobalContext* globalCtx);

const ActorInit En_Elf_InitVars = {
    ACTOR_EN_ELF,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnElf),
    (ActorFunc)EnElf_Init,
    (ActorFunc)EnElf_Destroy,
    (ActorFunc)EnElf_Update,
    (ActorFunc)EnElf_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 8, ICHAIN_STOP),
};

Color_RGBAf D_80A06024[] = { { 255.0f, 255.0f, 255.0f, 255.0f }, { 255.0f, 220.0f, 220.0f, 255.0f } };

Color_RGBAf D_80A06044[] = { { 255.0f, 255.0f, 255.0f, 255.0f }, { 255.0f, 50.0f, 100.0f, 255.0f } };

typedef struct {
    u8 r, g, b;
} ElfColorFlags;

ElfColorFlags D_80A06064[] = {
    { 0, 0, 0 }, { 1, 0, 0 }, { 1, 2, 0 }, { 1, 0, 2 }, { 0, 1, 0 }, { 2, 1, 0 }, { 0, 1, 2 },
    { 0, 0, 1 }, { 2, 0, 1 }, { 0, 2, 1 }, { 1, 1, 0 }, { 1, 0, 1 }, { 0, 1, 1 },
};

s32 D_80A0608C[] = { 0x00000000, 0xBD4CCCCD, 0x00000000 };

s32 D_80A06098[] = { 0x00000000, 0xBCCCCCCD, 0x00000000 };

s32 D_80A060A4[] = { 0x00000000, 0x00000000, 0x00000000 };

extern SkeletonHeader D_04016A48;
extern AnimationHeader D_04014BA4;

void func_80A01C30(EnElf* this, EnElfActionFunc actionFunc);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A01C30.s")

void func_80A01C38(EnElf* this, s32 a0);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A01C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A01F90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A01FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A020A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0214C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0232C.s")

f32 func_80A023A4(u8 colorFlag) {
    switch (colorFlag) {
        case 1:
            return Math_Rand_ZeroFloat(55.0f) + 200.0f;
        case 2:
            return Math_Rand_ZeroFloat(255.0f);
        case 0:
            return 0.0f;
    }
}

void EnElf_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnElf* this = THIS;
    s32 pad1;
    Player* player = PLAYER;
    s32 sp48;
    s32 i;

    Actor_ProcessInitChain(thisx, sInitChain);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_04016A48, &D_04014BA4, this->limbDrawTable,
                   this->transitionDrawTable, 15);
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 15.0f);
    thisx->shape.unk_14 = 0xFF;

    Lights_InitType2PositionalLight(&this->lightInfoPos2, thisx->posRot.pos.x, thisx->posRot.pos.y, thisx->posRot.pos.z,
                                    255, 255, 255, 0);
    this->light = Lights_Insert(globalCtx, &globalCtx->lightCtx, &this->lightInfoPos2);

    Lights_InitType0PositionalLight(&this->lightInfoPos3, thisx->posRot.pos.x, thisx->posRot.pos.y, thisx->posRot.pos.z,
                                    255, 255, 255, 0);
    this->light2 = Lights_Insert(globalCtx, &globalCtx->lightCtx, &this->lightInfoPos3);

    this->unk_2C4 = 0;
    this->unk_2C2 = 0x258;
    this->unk_2A4 = 0.0f;

    sp48 = 0;

    switch (thisx->params) {
        case 0:
            thisx->room = -1;
            func_80A01C30(this, func_80A03CF8);
            func_80A01C38(this, 0);
            this->unk_2C4 |= 4;
            thisx->update = func_80A053F0;
            this->unk_298 = 0;
            this->unk_2C7 = 0x14;
            if ((gSaveContext.naviTimer >= 25800) || (gSaveContext.naviTimer < 3000)) {
                gSaveContext.naviTimer = 0;
            }
            break;
        case 1:
            sp48 = -1;
            func_80A01C30(this, func_80A03610);
            this->unk_2B8 = Math_Vec3f_DistXZ(&thisx->posRot.pos, &player->actor.posRot.pos);
            this->unk_2AC = player->actor.shape.rot.y;
            this->unk_2B0 = -0x1000;
            this->unk_28C.y = thisx->posRot.pos.y - player->actor.posRot.pos.y;
            this->unk_2AA = 0;
            this->unk_2B4 = 0.0f;
            break;
        case 5:
            sp48 = -1;
            func_80A01C30(this, func_80A03990);
            this->unk_2B8 = 0.0f;
            this->unk_2AC = player->actor.shape.rot.y;
            this->unk_2B0 = 0;
            this->unk_28C.y = thisx->posRot.pos.y - player->actor.posRot.pos.y;
            this->unk_2AA = 0;
            this->unk_2B4 = 7.0f;
            break;
        case 7:
            this->unk_2C4 |= 0x200;
            thisx->shape.shadowDrawFunc = ActorShadow_DrawFunc_WhiteCircle;
        case 2:
            this->unk_2C4 |= 0x100;
        case 6:
            sp48 = -1;
            func_80A01C30(this, func_80A0329C);
            this->unk_2B4 = Math_Rand_ZeroFloat(10.0f) + 10.0f;
            this->unk_2AA = 0;
            this->unk_2AE = (s16)(Math_Rand_ZeroFloat(1048.0f)) + 0x200;
            this->unk_28C = thisx->posRot.pos;
            this->unk_2BC = Math_Rand_CenteredFloat(32767.0f);
            this->unk_2C8 = func_80A0214C;
            func_80A0232C(this, globalCtx);
            this->unk_2C0 = 0;
            this->unk_2C2 = 0xF0;
            break;
        case 3:
            sp48 = Math_Rand_ZeroFloat(11.99f) + 1.0f;
            func_80A01C30(this, func_80A0353C);
            func_80A01C38(this, 0);
            break;
        case 4:
            func_80A01C30(this, func_80A03604);
            func_80A01C38(this, 8);

            for (i = 0; i < 8; i++) {
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, thisx->posRot.pos.x,
                            thisx->posRot.pos.y - 30.0f, thisx->posRot.pos.z, 0, 0, 0, 6);
            }
            
            break;
        default:
            __assert("0", "../z_en_elf.c", 1103);
            break;
    }

    this->unk_2A0 = 3.0f;
    this->unk_244 = D_80A06024[0];

    if (sp48 > 0) {
        this->unk_254.r = func_80A023A4(D_80A06064[sp48].r);
        this->unk_254.g = func_80A023A4(D_80A06064[sp48].g);
        this->unk_254.b = func_80A023A4(D_80A06064[sp48].b);
        this->unk_254.a = 0.0f;
    } else {
        this->unk_244 = D_80A06024[-sp48];
        this->unk_254 = D_80A06044[-sp48];
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0299C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A029A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/EnElf_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02A20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02AA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02BD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02E30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02F2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0329C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0353C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03604.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03814.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03990.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03AB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03B28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03CF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0438C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A04414.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0461C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A049B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A04D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A04DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A04F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05188.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05208.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A052F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A053F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/EnElf_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/EnElf_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05F10.s")
