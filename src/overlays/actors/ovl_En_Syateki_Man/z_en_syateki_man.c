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

const ActorInit En_Syateki_Man_InitVars = {
    ACTOR_EN_SYATEKI_MAN,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OSSAN,
    sizeof(EnSyatekiMan),
    (ActorFunc)EnSyatekiMan_Init,
    (ActorFunc)EnSyatekiMan_Destroy,
    (ActorFunc)EnSyatekiMan_Update,
    (ActorFunc)EnSyatekiMan_Draw,
};

static u16 D_80B115E0[] = {
    0x00, 0x01,  0x02, 0x18, 0x19, 0x02, 0x19, 0x1A, 0x1A,  0x81A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x922,
    0x23, 0x924, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x92B, 0x2C,  0x2D, 0x2E, 0x2F, 0x30, 0x32, 0x33, 0x34, 0x35,
    0x36, 0x37,  0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E,  0x3F,  0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47,
    0x48, 0x49,  0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50,  0x51,  0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59,
    0x5A, 0x5B,  0x5C, 0x5D, 0x6D, 0x5E, 0x5E, 0x5F, 0x60,  0x61,  0x6D, 0x62, 0x63, 0x64, 0x65, 0x66,
};
static s16 D_80B11690[] = { 0x2B, 0x2E, 0xC8, 0x2D };

static s16 D_80B11698[] = { 4, 5, 5, 5 };

void EnSyatekiMan_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSyatekiMan* this = THIS;

    osSyncPrintf("\n\n");
    // Old man appeared!! Muhohohohohohohon
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 親父登場！！むほほほほほほほーん ☆☆☆☆☆ \n" VT_RST );
    this->actor.unk_1F = 1;
    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06009B38, &D_06000338, this->limbDrawTbl,
                       this->transitionDrawTbl, 9);
    if (gSaveContext.linkAge != 0) {
        this->unk_200.z = 20;
    }
    this->unk_20E = 20;
    this->unk_20C = 0;
    this->unk_224 = func_80B11310;
    this->actor.colChkInfo.unk_10 = 100;
    this->actionFunc = func_80B10948;
}

void EnSyatekiMan_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80B10948(EnSyatekiMan* this, GlobalContext* globalCtx) {
    f32 lastFrame = SkelAnime_GetFrameCount(&D_06000338);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000338, 1.0f, 0.0f, (s16)lastFrame, 0, -10.0f);
    this->actionFunc = func_80B109DC;
}

void func_80B109DC(EnSyatekiMan* this, GlobalContext* globalCtx) {
    if (this->unk_214 == 4) {
        this->unk_210 = 3;
    }

    this->actor.textId = D_80B11690[this->unk_210];
    this->unk_212 = D_80B11698[this->unk_210];
    this->actionFunc = func_80B10A2C;
}

void func_80B10A2C(EnSyatekiMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = func_80B10A84;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    }
}

void func_80B10A84(EnSyatekiMan* this, GlobalContext* globalCtx) {
    s16 sp26 = 0;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_21C != 0) {
        globalCtx->unk_11E5C = -2;
    }
    if ((this->unk_212 == func_8010BDBC(&globalCtx->msgCtx)) && func_80106BC8(globalCtx)) {
        if (this->unk_210 == 0) {
            switch (globalCtx->msgCtx.choiceIndex) {
                case 0:
                    if (gSaveContext.rupees >= 0x14) {
                        Rupees_ChangeBy(-0x14);
                        this->unk_210 = 1;
                        sp26 = 1;
                    } else {
                        this->unk_210 = 2;
                        sp26 = 2;
                    }
                    this->actor.textId = D_80B11690[this->unk_210];
                    this->unk_212 = D_80B11698[this->unk_210];
                    break;
                case 1:
                    this->actor.textId = D_80B11690[3];
                    this->unk_212 = D_80B11698[3];
                    sp26 = 2;
                    break;
            }
            func_8010B720(globalCtx, this->actor.textId);
        } else {
            func_80106CCC(globalCtx);
        }
        switch (sp26) {
            case 0:
                this->actionFunc = func_80B109DC;
                break;
            case 1:
                this->actionFunc = func_80B10CD4;
                break;
            case 2:
                this->actionFunc = func_80B10C2C;
                break;
        }
    }
}

void func_80B10C2C(EnSyatekiMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_21C != 0) {
        globalCtx->unk_11E5C = -2;
    }
    if ((this->unk_212 == func_8010BDBC(&globalCtx->msgCtx)) && func_80106BC8(globalCtx)) {
        if (this->unk_21C != 0) {
            func_800803F0(globalCtx, this->unk_228);
            this->unk_228 = -1;
            this->unk_21C = 0;
        }
        func_80106CCC(globalCtx);
        this->actionFunc = func_80B109DC;
    }
}

void func_80B10CD4(EnSyatekiMan* this, GlobalContext* globalCtx) {
    EnSyatekiItm* gallery;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_21C != 0) {
        globalCtx->unk_11E5C = -2;
    }
    if ((this->unk_212 == func_8010BDBC(&globalCtx->msgCtx)) && func_80106BC8(globalCtx)) {
        if (this->unk_21C != 0) {
            func_800803F0(globalCtx, this->unk_228);
            this->unk_228 = -1;
            this->unk_21C = 0;
        }
        func_80106CCC(globalCtx);
        gallery = (EnSyatekiItm*)this->actor.parent;
        if (gallery->actor.update != NULL) {
            gallery->unk_154 = 1;
            this->actionFunc = func_80B10D94;
        }
    }
}

void func_80B10D94(EnSyatekiMan* this, GlobalContext* globalCtx) {
    EnSyatekiItm* gallery;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (1) {}
    gallery = (EnSyatekiItm*)this->actor.parent;
    if ((gallery->actor.update != NULL) && (gallery->unk_154 == 2)) {
        this->unk_228 = func_800800F8(globalCtx, 0x1F42, -0x63, &this->actor, 0);
        switch (gallery->unk_156) {
            case 10:
                this->unk_214 = 1;
                this->actor.textId = 0x71AF;
                break;
            case 8:
            case 9:
                this->unk_214 = 2;
                this->actor.textId = 0x71AE;
                break;
            default:
                this->unk_214 = 3;
                this->actor.textId = 0x71AD;
                if (globalCtx->unk_11E5C == 0x10) {
                    this->unk_214 = 4;
                    this->actor.textId = 0x2D;
                }
                break;
        }
        globalCtx->unk_11E5C = -2;
        func_8010B680(globalCtx, this->actor.textId, NULL);
        this->actionFunc = func_80B10EB0;
    }
}

void func_80B10EB0(EnSyatekiMan* this, GlobalContext* globalCtx) {
    EnSyatekiItm* gallery;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((this->unk_212 == func_8010BDBC(&globalCtx->msgCtx)) && func_80106BC8(globalCtx)) {
        if (this->unk_214 != 3) {
            func_800803F0(globalCtx, this->unk_228);
            this->unk_228 = -1;
        }
        func_80106CCC(globalCtx);
        gallery = (EnSyatekiItm*)this->actor.parent;
        if (gallery->actor.update != NULL) {
            gallery->unk_154 = 3;
            this->unk_210 = 0;
            switch (this->unk_214) {
                case 1:
                    this->unk_220 = this->actor.parent;
                    this->actor.parent = NULL;
                    if (gSaveContext.linkAge != 0) {
                        if (!(gSaveContext.itemGetInf[0] & 0x2000)) {
                            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ Equip_Pachinko ☆☆☆☆☆ %d\n" VT_RST ,
                                         (s32)(gSaveContext.inventory.upgrades & gUpgradeMasks[5]) >>
                                             gUpgradeShifts[5]);
                            if ((s32)(gSaveContext.inventory.upgrades & gUpgradeMasks[5]) >> gUpgradeShifts[5] == 1) {
                                this->unk_218 = 0x60;
                            } else {
                                this->unk_218 = 0x7B;
                            }
                        } else {
                            this->unk_218 = 0x55;
                        }
                    } else if (!(gSaveContext.itemGetInf[0] & 0x4000)) {
                        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ Equip_Bow ☆☆☆☆☆ %d\n" VT_RST ,
                                     (s32)(gSaveContext.inventory.upgrades & gUpgradeMasks[0]) >> gUpgradeShifts[0]);
                        switch ((s32)(gSaveContext.inventory.upgrades & gUpgradeMasks[0]) >> gUpgradeShifts[0]) {
                            case 0:
                                this->unk_218 = 0x55;
                                break;
                            case 1:
                                this->unk_218 = 0x30;
                                break;
                            case 2:
                                this->unk_218 = 0x31;
                                break;
                        }
                    } else {
                        this->unk_218 = 0x55;
                    }
                    func_8002F434(&this->actor, globalCtx, this->unk_218, 2000.0f, 1000.0f);
                    this->actionFunc = func_80B11164;
                    break;
                case 2:
                    this->unk_216 = 0x14;
                    func_8008EF44(globalCtx, 0xF);
                    this->actionFunc = func_80B112A0;
                    break;
                default:
                    if (this->unk_214 == 4) {
                        this->actionFunc = func_80B109DC;
                    } else {
                        this->unk_21C = 1;
                        this->actor.textId = D_80B11690[this->unk_210];
                        this->unk_212 = D_80B11698[this->unk_210];
                        func_8010B680(globalCtx, this->actor.textId, NULL);
                        this->actionFunc = func_80B10A84;
                    }
                    break;
            }
        }
    }
}

void func_80B11164(EnSyatekiMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actionFunc = func_80B111D4;
    } else {
        func_8002F434(&this->actor, globalCtx, this->unk_218, 2000.0f, 1000.0f);
    }
}

void func_80B111D4(EnSyatekiMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && func_80106BC8(globalCtx)) {
        // Successful completion
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n" VT_RST );
        if (gSaveContext.linkAge != 0) {
            gSaveContext.itemGetInf[0] |= 0x2000;
        } else if ((this->unk_218 == 0x30) || (this->unk_218 == 0x31)) {
            gSaveContext.itemGetInf[0] |= 0x4000;
        }
        this->unk_214 = 0;
        this->actor.parent = this->unk_220;
        this->actor.flags |= 1;
        this->actionFunc = func_80B109DC;
    }
}

void func_80B112A0(EnSyatekiMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_216 == 0) {
        EnSyatekiItm* gallery = (EnSyatekiItm*)this->actor.parent;

        if (gallery->actor.update != 0) {
            gallery->unk_154 = 1;
            this->unk_214 = 0;
            this->actionFunc = func_80B10D94;
            // Let's try again! Baby!
            osSyncPrintf(VT_FGCOL(BLUE) "再挑戦だぜ！ベイビー！" VT_RST "\n", this);
        }
    }
}

void func_80B11310(EnSyatekiMan* this) {
    s16 temp_v0 = this->unk_20E - 1;

    if (temp_v0 != 0) {
        this->unk_20E = temp_v0;
    } else {
        this->unk_224 = func_80B11344;
    }
}

void func_80B11344(EnSyatekiMan* this) {
    s16 temp_v0 = this->unk_20E - 1;

    if (temp_v0 != 0) {
        this->unk_20E = temp_v0;
    } else {
        s16 temp_v0_2 = this->unk_20C + 1;

        if (temp_v0_2 >= 3) {
            this->unk_20C = 0;
            this->unk_20E = 20 + (s32)(Math_Rand_ZeroOne() * 60.0f);
            this->unk_224 = func_80B11310;
        } else {
            this->unk_20C = temp_v0_2;
            this->unk_20E = 1;
        }
    }
}

void EnSyatekiMan_Update(Actor* thisx, GlobalContext* globalCtx) {
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

s32 func_80B1148C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
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

void EnSyatekiMan_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSyatekiMan* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                          func_80B1148C, NULL, this);
}

void func_80B1156C(void) {
    if (BREG(80)) {
        BREG(80) = false;
        Audio_SetBGM(D_80B115E0[BREG(81)]);
    }
}
