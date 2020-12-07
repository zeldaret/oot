#include "z_en_syateki_man.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Syateki_Itm/z_en_syateki_itm.h"

#define FLAGS 0x08000019

#define THIS ((EnSyatekiMan*)thisx)

void EnSyatekiMan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B10948(EnSyatekiMan* this, GlobalContext* globalCtx);
void func_80B109DC(EnSyatekiMan* this, GlobalContext* globalCtx);
void func_80B10A2C(EnSyatekiMan* this, GlobalContext* globalCtx);
void func_80B10A84(EnSyatekiMan* this, GlobalContext* globalCtx);
void func_80B10C2C(EnSyatekiMan* this, GlobalContext* globalCtx);
void func_80B10CD4(EnSyatekiMan* this, GlobalContext* globalCtx);
void func_80B10D94(EnSyatekiMan* this, GlobalContext* globalCtx);
void func_80B10EB0(EnSyatekiMan* this, GlobalContext* globalCtx);
void func_80B11164(EnSyatekiMan* this, GlobalContext* globalCtx);
void func_80B111D4(EnSyatekiMan* this, GlobalContext* globalCtx);
void func_80B112A0(EnSyatekiMan* this, GlobalContext* globalCtx);

void func_80B11310(EnSyatekiMan* this);
void func_80B11344(EnSyatekiMan* this);

void func_80B1156C(void);

extern AnimationHeader D_06000338;
extern Gfx D_06007E28[];
extern FlexSkeletonHeader D_06009B38;


/*const ActorInit En_Syateki_Man_InitVars = {
    ACTOR_EN_SYATEKI_MAN,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OSSAN,
    sizeof(EnSyatekiMan),
    (ActorFunc)EnSyatekiMan_Init,
    (ActorFunc)EnSyatekiMan_Destroy,
    (ActorFunc)EnSyatekiMan_Update,
    (ActorFunc)EnSyatekiMan_Draw,
};*/

extern u16 D_80B115E0[];
// .word 0x00000001, 0x00020018, 0x00190002, 0x0019001A, 0x001A081A, 0x001B001C, 0x001D001E, 0x001F0020, 0x00210922, 0x00230924, 0x00250026, 0x00270028, 0x0029002A, 0x092B002C, 0x002D002E, 0x002F0030, 0x00320033, 0x00340035, 0x00360037, 0x00380039, 0x003A003B, 0x003C003D, 0x003E003F, 0x00400041, 0x00420043, 0x00440045, 0x00460047, 0x00480049, 0x004A004B, 0x004C004D, 0x004E004F, 0x00500051, 0x00520053, 0x00540055, 0x00560057, 0x00580059, 0x005A005B, 0x005C005D, 0x006D005E, 0x005E005F, 0x00600061, 0x006D0062, 0x00630064, 0x00650066
extern s16 D_80B11690[];
 // 0x00, 0x2B, 0x00, 0x2E, 0x00, 0xC8
extern s16 D_80B11696[];
 // 0x00, 0x2D
extern s16 D_80B11698[];
 // 0x00, 0x04, 0x00, 0x05, 0x00, 0x05
extern s16 D_80B1169E[];
 // 0x00, 0x05

void EnSyatekiMan_Init(Actor* thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnSyatekiMan* this = THIS;

    osSyncPrintf("\n\n");
    osSyncPrintf("\x1b[32m☆☆☆☆☆ 親父登場！！むほほほほほほほーん ☆☆☆☆☆ \n\x1b[m");
    this->actor.unk_1F = 1;
    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06009B38, &D_06000338, this->limbDrawTbl, this->transitionDrawTbl, 9);
    if (gSaveContext.linkAge != 0) {
        this->unk_200.z = 20;
    }
    this->unk_20E = 20;
    this->unk_20C = 0;
    this->unk_224 = func_80B11310;
    this->actor.colChkInfo.unk_10 = 100;
    this->actionFunc = func_80B10948;
}

void EnSyatekiMan_Destroy(Actor *thisx, GlobalContext *globalCtx) {
}

void func_80B10948(EnSyatekiMan *this, GlobalContext *globalCtx) {
    s16 lastFrame = (f32)SkelAnime_GetFrameCount(&D_06000338);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000338, 1.0f, 0.0f, lastFrame, 0, -10.0f);
    this->actionFunc = func_80B109DC;
}

void func_80B109DC(EnSyatekiMan *this, GlobalContext *globalCtx) {
    if (this->unk_214 == 4) {
        this->unk_210 = 3;
    }

    this->actor.textId =  D_80B11690[this->unk_210];
    this->unk_212 = D_80B11698[this->unk_210];
    this->actionFunc = func_80B10A2C;
}

void func_80B10A2C(EnSyatekiMan *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8002F194(&this->actor, globalCtx) ) {
        this->actionFunc = func_80B10A84;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10C2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10D94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10EB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B11164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B111D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B112A0.s")

void func_80B11310(EnSyatekiMan *this) {
    s16 temp_v0 = this->unk_20E - 1;

    if (temp_v0 != 0) {
        this->unk_20E = temp_v0;
    } else {
        this->unk_224 = func_80B11344;
    }
}

void func_80B11344(EnSyatekiMan *this) {
    s16 temp_v0 = this->unk_20E - 1;

    if (temp_v0 != 0) {
        this->unk_20E = temp_v0;
    } else {
        s16 temp_v0_2 = this->unk_20C + 1;

        if (temp_v0_2 >= 3) {
            this->unk_20C = 0;
            this->unk_20E = 20 + (s32) (Math_Rand_ZeroOne() * 60.0f);
            this->unk_224 = func_80B11310;
        } else {
            this->unk_20C = temp_v0_2;
            this->unk_20E = 1;
        }
    }
}

void EnSyatekiMan_Update(Actor *thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnSyatekiMan* this = THIS;

    if (this->unk_216 != 0) {
        this->unk_216--;
    }
    this->actionFunc(this, globalCtx);
    func_80B1156C();
    this->unk_224(this);
    this->actor.posRot2.pos.y = 70.0f;
    Actor_SetHeight(&this->actor, 70.0f);
    func_80038290(globalCtx, &this->actor, &this->unk_200, &this->unk_206, this->actor.posRot2.pos);
}

s32 func_80B1148C(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, void* thisx) {
    EnSyatekiMan* this = THIS;
    s32 phi_a0;

    if (limbIndex == 1) {
        rot->x += this->unk_206.y;
    }
    if (limbIndex == 8) {
        *dList = D_06007E28;
        phi_a0 = 1;
        if (this->unk_214 == 4) {
            phi_a0 = -1;
        }
        rot->x += this->unk_200.y * phi_a0;
        rot->z += this->unk_200.z;
    }
    return false;
}

void EnSyatekiMan_Draw(Actor* thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnSyatekiMan* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, func_80B1148C, NULL, this);
}

void func_80B1156C(void) {
    if (BREG(80)) {
        BREG(80) = false;
        Audio_SetBGM(D_80B115E0[BREG(81)]);
    }
}
