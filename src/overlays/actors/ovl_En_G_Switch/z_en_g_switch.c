#include "z_en_g_switch.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Syateki_Itm/z_en_syateki_itm.h"

#define FLAGS 0x00000030

#define THIS ((EnGSwitch*)thisx)
#define GALLERY ((EnSyatekiItm*)this->actor.parent)

void EnGSwitch_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGSwitch_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGSwitch_Update(Actor* thisx, GlobalContext* globalCtx);
void func_80A230A8(Actor* thisx, GlobalContext* globalCtx);
void func_80A22FDC(Actor* thisx, GlobalContext* globalCtx);

void func_80A22250(EnGSwitch* this, GlobalContext* globalCtx);
void func_80A23204(EnGSwitch* this, Vec3f* arg1, s16 arg2, s16 arg3);
void func_80A23314(EnGSwitch* this, GlobalContext* globalCtx);
void func_80A234D4(EnGSwitch* this, GlobalContext* globalCtx);

void func_80A2248C(EnGSwitch* this, GlobalContext* globalCtx);
void func_80A22598(EnGSwitch* this, GlobalContext* globalCtx);
void func_80A223F8(EnGSwitch* this, GlobalContext* globalCtx);
void func_80A22680(EnGSwitch* this, GlobalContext* globalCtx);
void func_80A22764(EnGSwitch* this, GlobalContext* globalCtx);
void func_80A22B1C(EnGSwitch* this, GlobalContext* globalCtx);
void func_80A22E00(EnGSwitch* this, GlobalContext* globalCtx);

extern Gfx D_060017C0[];
extern Gfx D_06001960[];

static s16 sCollectedCount = 0;

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 13, 40, 0, { 0, 0, 0 } },
};

static s16 sUnused[] = { 0, 1, 2, 19, 20 }; // Unclear what these would have been

const ActorInit En_G_Switch_InitVars = {
    ACTOR_EN_G_SWITCH,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnGSwitch),
    (ActorFunc)EnGSwitch_Init,
    (ActorFunc)EnGSwitch_Destroy,
    (ActorFunc)EnGSwitch_Update,
    NULL,
};

void EnGSwitch_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGSwitch* this = THIS;

    this->type = (this->actor.params >> 0xC) & 0xF;
    this->switchFlag = this->actor.params & 0x3F;
    this->unk_15C = 100;
    // index
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ インデックス ☆☆☆☆☆ %x\n" VT_RST, this->type);
    // save
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ セーブ\t     ☆☆☆☆☆ %x\n" VT_RST, this->switchFlag);
    switch (this->type) {
        case 0:
            osSyncPrintf("\n\n");
            // parent switch occurs (better translation here)
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 親スイッチ発生 ☆☆☆☆☆ %x\n" VT_RST, this->actor.params);
            sCollectedCount = 0;
            this->rupeeCount = this->actor.params >> 6;
            this->rupeeCount &= 0x3F;
            // maximum number of checks
            osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ 最大チェック数 ☆☆☆☆☆ %d\n" VT_RST, this->rupeeCount);
            osSyncPrintf("\n\n");
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                // This is the chorus of the first opening of Hokuto no Ken
                osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n" VT_RST, this->switchFlag);
                Actor_Kill(&this->actor);
            } else {
                this->actionFunc = func_80A2248C;
            }
            break;
        case 1:
            osSyncPrintf("\n\n");
            // child switch generation (better translation here)
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 子スイッチ発生 ☆☆☆☆☆ %x\n" VT_RST, this->actor.params);
            this->unk_158 = 5;
            this->unk_15C = 20;
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
            this->actor.draw = func_80A230A8;
            this->actor.shape.unk_08 = 700.0f;
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n" VT_RST, this->switchFlag);
                Actor_Kill(&this->actor);
            } else {
                Actor_SetScale(&this->actor, 0.03f);
                this->actionFunc = func_80A22598;
            }
            break;
        case 2:
            osSyncPrintf("\n\n");
            // Horseback archery destructible pot
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ やぶさめぶち抜き壷 ☆☆☆☆☆ \n" VT_RST);
            this->actor.gravity = -3.0f;
            this->unk_158 = Math_Rand_ZeroFloat(2.99f);
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
            this->actor.scale.x = 0.25f;
            this->actor.scale.y = 0.45f;
            this->actor.scale.z = 0.25f;
            this->collider.body.bumper.flags = 0x1F820;
            this->objNum = OBJECT_TSUBO;
            this->objIndex = Object_GetIndex(&globalCtx->objectCtx, this->objNum);
            if (this->objIndex < 0) {
                Actor_Kill(&this->actor);
                // what?
                osSyncPrintf(VT_FGCOL(PURPLE) " なにみの？ %d\n"VT_RST"\n", this->objIndex);
                // bank is funny
                osSyncPrintf(VT_FGCOL(CYAN) " バンクおかしいしぞ！%d\n"VT_RST"\n", this->actor.params);
            }
            this->collider.dim.radius = 24;
            this->collider.dim.height = 74;
            this->collider.dim.yShift = 0;
            this->actionFunc = func_80A223F8;
            break;
        case 3:
            this->actor.shape.unk_08 = 700.0f;
            Actor_SetScale(&this->actor, 0.05f);
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
            this->actor.draw = func_80A230A8;
            this->collider.dim.radius = 20;
            this->collider.dim.height = 60;
            this->collider.dim.yShift = 5;
            this->actionFunc = func_80A22764;
            break;
    }
}

void EnGSwitch_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGSwitch* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80A22250(EnGSwitch* this, GlobalContext* globalCtx) {
    Vec3f sp5C;
    Vec3f sp50;
    Vec3f sp44 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp38 = { 0.0f, 0.0f, 0.0f };
    s32 i;

    sp5C.x = this->actor.posRot.pos.x + Math_Rand_CenteredFloat(40.0f);
    sp5C.y = this->actor.posRot.pos.y + 30.0f + Math_Rand_CenteredFloat(35.0f);
    sp5C.z = this->actor.posRot.pos.z + Math_Rand_CenteredFloat(40.0f);
    sp50.x = this->collider.body.bumper.unk_06.x;
    sp50.y = this->collider.body.bumper.unk_06.y;
    sp50.z = this->collider.body.bumper.unk_06.z;
    EffectSsHitMark_SpawnCustomScale(globalCtx, 0, 0x2BC, &sp50);
    if (this->type == 2) {
        sp38.y = 15.0f;
        EffectSsExtra_Spawn(globalCtx, &sp50, &sp38, &sp44, 5, 2);
    }
    if (this->type == 3) {
        for (i = 0; i < this->unk_15C; i++) {
            func_80A23204(this, &sp5C, ARRAY_COUNT(this->effects), this->unk_158);
        }
    }
}

void func_80A223F8(EnGSwitch* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objIndex)) {
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->objIndex].segment);
        this->actor.objBankIndex = this->objIndex;
        this->actor.draw = func_80A22FDC;
        this->actionFunc = func_80A22B1C;
    }
}

void func_80A2248C(EnGSwitch* this, GlobalContext* globalCtx) {
    static s8 rupeePitches[] = { 0, 2, 4, 5, 7 };

    if (this->pitchIndex < sCollectedCount) {
        if (sCollectedCount < 5) {
            // sound?
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 音？ ☆☆☆☆☆ %d\n" VT_RST, this->pitchIndex);
            func_800F4BF4(&D_801333D4, NA_SE_EV_FIVE_COUNT_LUPY, rupeePitches[this->pitchIndex]);
            this->pitchIndex = sCollectedCount;
        }
    }
    if (sCollectedCount >= this->rupeeCount) {
        // It is now the end of the century. (A line from the second opening of Hokuto no Ken)
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 時はまさに世紀末〜  ☆☆☆☆☆ %d\n" VT_RST, this->switchFlag);
        // Last!
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ らすとぉ！          ☆☆☆☆☆ \n" VT_RST);
        if ((globalCtx->sceneNum == SCENE_MEN) && (this->actor.room == 2)) {
            Flags_SetTempClear(globalCtx, this->actor.room);
        } else {
            func_80078884(NA_SE_SY_CORRECT_CHIME);
            Flags_SetSwitch(globalCtx, this->switchFlag);
        }
        func_80078884(NA_SE_SY_GET_RUPY);
        Actor_Kill(&this->actor);
    }
}

void func_80A22598(EnGSwitch* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->actor.shape.rot.y += 0x800;
    if (this->actor.xyzDistFromLinkSq < 900.0f) {
        Rupees_ChangeBy(5);
        sCollectedCount++;
        func_80078884(NA_SE_SY_GET_RUPY);
        this->actor.posRot.pos = player->actor.posRot.pos;
        this->actor.posRot.pos.y += 40.0f;
        if (gSaveContext.linkAge == 0) {
            this->actor.posRot.pos.y += 20.0f;
        }
        this->actor.gravity = 0.0f;
        this->killTimer = 15;
        this->actionFunc = func_80A22680;
    }
}

void func_80A22680(EnGSwitch* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->actor.shape.rot.y += 0x3C0;
    if (this->killTimer == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    this->actor.posRot.pos = player->actor.posRot.pos;
    this->actor.posRot.pos.y =
        player->actor.posRot.pos.y + 40.0f + (this->killTimer * 0.3f) * Math_Sins(this->killTimer * 0x3A98);
    if (gSaveContext.linkAge == 0) {
        this->actor.posRot.pos.y += 20.0f;
    }
}

void func_80A22764(EnGSwitch *this, GlobalContext *globalCtx) {
    EnSyatekiItm* gallery;

    this->actor.shape.rot.y += 0x3C0;
    if (this->unk_162 == 0) {
        switch(this->unk_166) {
            case 2:
                Actor_MoveForward(&this->actor);
                if ((this->actor.velocity.y < 0.0f) && (this->actor.posRot.pos.y < (this->actor.initPosRot.pos.y - 50.0f))) {
                    gallery = GALLERY;
                    this->actor.velocity.y = 0.0f;
                    this->actor.gravity = 0.0f;
                    if (gallery->actor.update != NULL) {
                        gallery->unk_166[this->unk_160] = 1;
                    }
                    Actor_Kill(&this->actor);
                }
                break;
            case 4:
                func_8002D7EC(&this->actor);
                if ((this->actor.velocity.x < 0.0f) && (this->actor.posRot.pos.x < this->unk_16C)) {
                    gallery = GALLERY;
                    if (gallery->actor.update != NULL) {
                        gallery->unk_166[this->unk_160] = 1;
                    }
                    Actor_Kill(&this->actor);
                }
                break;
            case 5:
                func_8002D7EC(&this->actor);
                if (this->unk_16C < this->actor.posRot.pos.x) {
                    gallery = GALLERY;
                    if (gallery->actor.update != NULL) {
                        gallery->unk_166[this->unk_160] = 1;
                    }
                    Actor_Kill(&this->actor);
                }
                break;
            default:
                switch(this->unk_168) {
                    case 0:
                        if ((5.0f < fabsf(this->actor.posRot.pos.x - this->unk_16C)) || (5.0f < fabsf(this->actor.posRot.pos.y - this->unk_170))) {
                            Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, this->unk_16C, 0.3f, 30.0f);
                            Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->unk_170, 0.3f, 30.0f);
                        } else {
                            this->unk_168 = 1;
                            this->unk_164 = 60;
                        }
                        break;
                    case 1:
                        if(this->unk_164 == 0) {
                            if ((5.0f < fabsf(this->actor.posRot.pos.x - this->actor.initPosRot.pos.x)) || (5.0f < fabsf(this->actor.posRot.pos.y - this->actor.initPosRot.pos.y))) {
                                Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 0.3f, 30.0f);
                                Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.3f, 30.0f);
                            } else {
                                gallery = GALLERY;
                                if (gallery->actor.update != NULL) {
                                    gallery->unk_166[this->unk_160] = 1;
                                }
                                Actor_Kill(&this->actor);
                            }
                        }
                        break;
                }
                break;
        }
        if ((this->collider.base.acFlags & 2) || BREG(8)) {
            gallery = GALLERY;
            this->collider.base.acFlags &= ~2;
            if (gallery->actor.update != NULL) {
                gallery->unk_156++;
                gallery->unk_166[this->unk_160] = 2;
                func_80078884(NA_SE_EV_HIT_SOUND);
                func_80078884(NA_SE_SY_GET_RUPY);
                // Yeah !
                osSyncPrintf(VT_FGCOL(YELLOW)"☆☆☆☆☆ いぇぇーす！ＨＩＴ！！ ☆☆☆☆☆ %d\n" VT_RST, gallery->unk_156);
                func_80A22250(this, globalCtx);
                this->killTimer = 50;
                this->broken = true;
                this->actionFunc = func_80A22E00;
            }
        }
    }
}

void func_80A22B1C(EnGSwitch* this, GlobalContext* globalCtx) {
    s32 i;
    s16 angle;
    Vec3f* thisPos = &this->actor.posRot.pos;

    this->actor.shape.rot.y += 0x3C0;
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        for (i = 0, angle = 0; i < 30; i++, angle += 0x4E20) {
            Vec3f pos;
            Vec3f vel;
            f32 sn = Math_Sins(angle);
            f32 cs = Math_Coss(angle);
            f32 rand;
            s32 phi_s0;
            s32 scale;
            s32 pad;

            pos.x = sn * 8.0f;
            pos.y = 10.0f + Math_Rand_CenteredFloat(5.0f);
            pos.z = cs * 8.0f;

            vel.x = pos.x / 2.0f;
            vel.y = 10.0f + Math_Rand_ZeroOne() * 15.0f;
            vel.z = pos.z / 2.0f;

            pos.x += thisPos->x;
            pos.y += thisPos->y;
            pos.z += thisPos->z;

            rand = Math_Rand_ZeroOne();
            if (rand < 0.2f) {
                phi_s0 = 0x60;
            } else if (rand < 0.6f) {
                phi_s0 = 0x40;
            } else {
                phi_s0 = 0x20;
            }

            scale = 30.0f + Math_Rand_ZeroOne() * 130.0f;

            EffectSsKakera_Spawn(globalCtx, &pos, &vel, thisPos, -240, phi_s0, 0xA, 0xA, 0, scale, 0, 0x20, 0x3C, -1,
                                 OBJECT_TSUBO, D_06001960);
        }
        func_80033480(globalCtx, thisPos, 30.0f, 4, 20, 50, 0);
        Audio_PlaySoundAtPosition(globalCtx, thisPos, 40, NA_SE_EV_POT_BROKEN);
        func_80A22250(this, globalCtx);
        this->killTimer = 50;
        this->broken = true;
        this->actionFunc = func_80A22E00;
    }
}

void func_80A22E00(EnGSwitch* this, GlobalContext* globalCtx) {
    if (this->killTimer == 0) {
        Actor_Kill(&this->actor);
    }
}

void EnGSwitch_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGSwitch* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->killTimer != 0) {
        this->killTimer--;
    }
    if (this->unk_164 != 0) {
        this->unk_164--;
    }
    if (this->unk_162 != 0) {
        this->unk_162--;
    }
    if ((this->type != 0) && (this->type != 1) && (this->type != 3)) {
        Actor_MoveForward(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 0x1C);
    }
    if (this->actor.draw != NULL) {
        if (this->type == 3) {
            func_80A23314(this, globalCtx);
        }
        if ((this->actionFunc != func_80A22E00) && (this->actionFunc != func_80A22598)) {
            Collider_CylinderUpdate(&this->actor, &this->collider);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
    if (BREG(0) && (this->type == 0)) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                               this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f,
                               1.0f, 255, 0, 0, 255, 4, globalCtx->state.gfxCtx);
    }
}

void func_80A22FDC(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGSwitch* this = THIS;

    if (!this->broken) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_g_switch.c", 918);
        func_80093D18(globalCtx->state.gfxCtx);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_g_switch.c", 925),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, D_060017C0);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_g_switch.c", 928);
    }
}

static u8* sRupeeTex[] = { 0x04042140, 0x04042160, 0x04042180, 0x040421C0, 0x040421A0, 0x040421E0 };

void func_80A230A8(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGSwitch* this = THIS;

    if (1) {}
    if (!this->broken) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_g_switch.c", 951);
        func_80093D18(globalCtx->state.gfxCtx);
        func_8002EBCC(&this->actor, globalCtx, 0);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_g_switch.c", 957),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sRupeeTex[this->unk_158]));
        gSPDisplayList(POLY_OPA_DISP++, D_04042440);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_g_switch.c", 961);
    }
    if (this->type == 3) {
        func_80A234D4(this, globalCtx);
    }
}

void func_80A23204(EnGSwitch* this, Vec3f* arg1, s16 arg2, s16 arg3) {
    EnGSwitchEffect* phi_s0 = this->effects;
    s16 i;

    for (i = 0; i < this->unk_15C; i++, phi_s0++) {
        if (phi_s0->unk_12 == 0) {
            Vec3f sp34;
            f32 sp30;
            f32 pad;

            phi_s0->unk_00 = *arg1;
            phi_s0->unk_0C = arg2;
            phi_s0->unk_10 = arg3;
            phi_s0->unk_0E = 30;
            phi_s0->unk_20.x = phi_s0->unk_20.y = phi_s0->unk_20.z = 0.0f;
            sp30 = Math_Rand_CenteredFloat(1000.0f) - 13000.0f;
            pad = Math_Rand_CenteredFloat(65535.0f);
            Matrix_RotateY(pad, MTXMODE_NEW);
            Matrix_RotateX(sp30, MTXMODE_APPLY);
            sp34.x = sp34.y = 0.0f;
            sp34.z = 20.0f;
            Matrix_MultVec3f(&sp34, &phi_s0->unk_14);
            phi_s0->unk_12 = 1;
            return;
        }
    }
}

void func_80A23314(EnGSwitch* this, GlobalContext* globalCtx) {
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f18;
    s16 i;
    EnGSwitchEffect* phi_s0 = this->effects;

    for (i = 0; i < this->unk_15C; i++, phi_s0++) {
        if (phi_s0->unk_12 != 0) {
            phi_s0->unk_20.x += Math_Rand_ZeroOne() * 10.0f + 15.0f;
            phi_s0->unk_20.y += Math_Rand_ZeroOne() * 10.0f + 15.0f;
            phi_s0->unk_20.z += Math_Rand_ZeroOne() * 10.0f + 15.0f;
            temp_f18 = phi_s0->unk_00.x + phi_s0->unk_14.x;
            temp_f20 = phi_s0->unk_00.y + phi_s0->unk_14.y;
            temp_f22 = phi_s0->unk_00.z + phi_s0->unk_14.z;
            Math_SmoothScaleMaxF(&phi_s0->unk_00.x, temp_f18, 0.3f, 30.0f);
            Math_SmoothScaleMaxF(&phi_s0->unk_00.y, temp_f20, 0.8f, 250.0f);
            Math_SmoothScaleMaxF(&phi_s0->unk_00.z, temp_f22, 0.3f, 30.0f);
            Math_SmoothScaleMaxF(&phi_s0->unk_14.y, -20.0f, 0.9f, 1.0f);
            if (phi_s0->unk_0E != 0) {
                phi_s0->unk_0E--;
            } else if (phi_s0->unk_0C < 10) {
                phi_s0->unk_12 = 0;
            } else {
                phi_s0->unk_0C -= 2;
            }
        }
    }
}

void func_80A234D4(EnGSwitch* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    EnGSwitchEffect* phi_s0 = this->effects;
    s16 i;
    f32 temp_f20;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_en_g_switch.c", 1073);
    func_80093D18(globalCtx->state.gfxCtx);
    for (i = 0; i < this->unk_15C; i++, phi_s0++) {
        if (phi_s0->unk_12 != 0) {
            temp_f20 = phi_s0->unk_0C / 10000.0f;
            Matrix_Translate(phi_s0->unk_00.x, phi_s0->unk_00.y, phi_s0->unk_00.z, MTXMODE_NEW);
            Matrix_Scale(temp_f20, temp_f20, temp_f20, MTXMODE_APPLY);
            Matrix_RotateX(phi_s0->unk_20.x, MTXMODE_APPLY);
            Matrix_RotateY(phi_s0->unk_20.y, MTXMODE_APPLY);
            Matrix_RotateZ(phi_s0->unk_20.z, MTXMODE_APPLY);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_g_switch.c", 1088),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sRupeeTex[phi_s0->unk_10]));
            gSPDisplayList(POLY_OPA_DISP++, D_04042440);
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_en_g_switch.c", 1095);
}
