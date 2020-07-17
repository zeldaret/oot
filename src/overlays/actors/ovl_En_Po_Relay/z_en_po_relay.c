/*
 * File: z_en_po_relay.c
 * Overlay: ovl_En_Po_Relay
 * Description: Dampé's Ghost
 */

#include "z_en_po_relay.h"

#define FLAGS 0x00011019

#define THIS ((EnPoRelay*)thisx)

void EnPoRelay_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPoRelay_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPoRelay_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPoRelay_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AD7B34(EnPoRelay* this, GlobalContext* globalCtx);
void func_80AD7C64(EnPoRelay* this, GlobalContext* globalCtx);
void func_80AD8174(EnPoRelay* this, GlobalContext* globalCtx);
void func_80AD7BF0(EnPoRelay* this, GlobalContext* globalCtx);
void func_80AD8234(EnPoRelay* this, GlobalContext* globalCtx);
void func_80AD830C(EnPoRelay* this, GlobalContext* globalCtx);

void func_80AD790C(EnPoRelay* this);

Vec3s D_80AD8C30[] = {
    {0xFFC4, 0xFDEE, 0xF47A},
    {0x0186, 0xFE0C, 0xF47A},
    {0x0186, 0xFE0C, 0xF0F6},
    {0x00D2, 0xFDEE, 0xF0F6},
    {0x00D2, 0xFD9E, 0xEEDA},
    {0x023A, 0xFDC6, 0xEEDA},
    {0x023A, 0xFDC6, 0xED18},
    {0x00D2, 0xFDC6, 0xED18},
    {0x00D2, 0xFDC6, 0xEBCE},
    {0x00D2, 0xFDC6, 0xEAA2},
    {0x023A, 0xFDC6, 0xEAA2},
    {0x023A, 0xFDC6, 0xEBB0},
    {0x04EC, 0xFD9E, 0xEBB0},
    {0x0672, 0xFD62, 0xED18},
    {0x0672, 0xFD30, 0xEE80},
    {0x07DA, 0xFD26, 0xEE80},
    {0x07DA, 0xFD26, 0xEF70},
    {0x07DA, 0xFD26, 0xF204},
    {0x0672, 0xFD44, 0xF204},
    {0x0672, 0xFD6C, 0xF3C6},
    {0x088E, 0xFD6C, 0xF3C6},
    {0x088E, 0xFDB2, 0xF5E2},
    {0x099C, 0xFDD0, 0xF5E2},
    {0x0B54, 0xFE66, 0xF772},
    {0x0B4E, 0xFE66, 0xF87E},
    {0x0B4A, 0xFE66, 0xF97A},
    {0x0B4A, 0xFE98, 0xF9FC},
    {0x0BAE, 0xFE98, 0xF9FC},
};

const ActorInit En_Po_Relay_InitVars = {
    ACTOR_EN_PO_RELAY,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_TK,
    sizeof(EnPoRelay),
    (ActorFunc)EnPoRelay_Init,
    (ActorFunc)EnPoRelay_Destroy,
    (ActorFunc)EnPoRelay_Update,
    (ActorFunc)EnPoRelay_Draw,
};

ColliderCylinderInit D_80AD8CF8 = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 30, 52, 0, { 0, 0, 0 } },
};

s32 D_80AD8D24 = 0;

InitChainEntry D_80AD8D28[] = {
    ICHAIN_S8(naviEnemyId, 0x4F, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 1500, ICHAIN_STOP),
};

Vec3f D_80AD8D30 = { 0.0f, 1.5f, 0.0f };

Vec3f D_80AD8D3C = { 0.0f, 0.0f, 0.0f };

Vec3f D_80AD8D48 = { 0.0f, 1200.0f, 0.0f };

u32 D_80AD8D54[] = {
    0x06003B40, 0x06004340, 0x06004B40,
};

extern SkeletonHeader D_0600BE40;
extern AnimationHeader D_06003768;
extern Gfx D_0600B838[];
extern Gfx D_0600BBA0[];

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/EnPoRelay_Init.s")
void EnPoRelay_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnPoRelay* this;
    s32 temp;

    this = THIS;
    Actor_ProcessInitChain(&this->actor, D_80AD8D28);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 42.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600BE40, &D_06003768, &this->unk_1A0, &this->unk_20C, 0x12);
    Collider_InitCylinder(globalCtx,  &this->collider);
    Collider_SetCylinder(globalCtx,  &this->collider, &this->actor, &D_80AD8CF8);
    this->light = Lights_Insert(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_InitType0PositionalLight(&this->lightInfo, this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 0xFF, 0xFF, 0xFF, 0xC8);
    this->unk_27B = 0xFF;
    temp = 1;
    if (D_80AD8D24 != 0) {
        Actor_Kill(&this->actor);
    } else {
        D_80AD8D24 = temp;
        Actor_SetTextWithPrefix(globalCtx, &this->actor, 0x41);
        this->unk_19C = this->actor.textId;
        func_80AD790C(this);
    }
    this->actor.params &= 0x3F;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/EnPoRelay_Destroy.s")
void EnPoRelay_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPoRelay* this = THIS;

    Lights_Remove(globalCtx, &globalCtx->lightCtx, this->light);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD790C.s")
void func_80AD790C(EnPoRelay* this) {
    this->unk_195 = 0x20;
    this->unk_198 = 0;
    this->actor.room = -1;
    this->actor.shape.rot.y = 0;
    this->actor.posRot.rot.y = -0x8000;
    this->actor.colChkInfo.mass = 0xFE;
    this->actionFunc = func_80AD7B34;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7944.s")
void func_80AD7944(Vec3f* dest, Vec3s* in) {
    dest->x = in->x;
    dest->y = in->y;
    dest->z = in->z;
}

#ifdef NON_MATCHING
// Single Regalloc
void func_80AD7984(EnPoRelay* this) {
    Vec3f vec;

    func_80AD7944(&vec, &D_80AD8C30[this->unk_198]);
    this->unk_196 = (u16)((u16)(this->actor.shape.rot.y - this->actor.posRot.rot.y - 0x8000) >> 0xB) & 0x1F;
    func_80088B34(0);
    this->unk_194 = INV_CONTENT(ITEM_HOOKSHOT) != ITEM_NONE;
    this->unk_19A = func_8002DAC0(&this->actor, &vec);
    this->actor.flags |= 0x8000000;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    this->actionFunc = func_80AD7C64;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7984.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7A4C.s")
void func_80AD7A4C(EnPoRelay* this) {
    this->actor.posRot.rot.y = this->actor.initPosRot.rot.y + 0xC000;
    this->actor.flags &= ~0x08000000;
    this->actor.speedXZ = 0.0f;
    this->actionFunc = func_80AD8174;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7A88.s")
void func_80AD7A88(EnPoRelay* this) {
    Math_ApproxF(&this->actor.initPosRot.pos.y, D_80AD8C30[(this->unk_198 >= 0x1C) ? 0x1B : this->unk_198].y + 45.0f, 2.0f);
    this->actor.posRot.pos.y = Math_Sins(this->unk_195 * 0x800) * 8.0f + this->actor.initPosRot.pos.y;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7B34.s")
void func_80AD7B34(EnPoRelay* this, GlobalContext* globalCtx) {
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0x100);
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->actor.flags &= 0xFFFEFFFF;
        this->actionFunc = func_80AD7BF0;
    } else if (this->actor.xzDistFromLink < 250.0f) {
        this->actor.flags |= 0x10000;
        this->actor.textId = this->unk_19C;
        func_8002F2CC(&this->actor, globalCtx, 250.0f);
    }
    func_8002F974(&this->actor, 0x3071);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7BF0.s")
void func_80AD7BF0(EnPoRelay* this, GlobalContext* globalCtx) {
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0x100);
    if (func_8002F334(&this->actor, globalCtx) != 0) {
        Actor_SetTextWithPrefix(globalCtx, &this->actor, 0x2F);
        this->unk_19C = this->actor.textId;
        func_80AD7984(this);
    }
    func_8002F974(&this->actor, 0x3071);
}

#ifdef NON_MATCHING
// Single stack difference, f reg swaps
void func_80AD7C64(EnPoRelay* this, GlobalContext* globalCtx) { // saved, sp64
    Player* player; // sp5C
    Vec3f vec; // sp50
    f32 temp_f12_2;
    f32 speed; // sp48
    f32 rand;

    player = PLAYER;
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (this->unk_196 == 0 && Math_Rand_ZeroOne() < 0.029999999329447746f) {
        this->unk_196 = 0x20;
        if (this->unk_198 < 0x17) {
            rand = Math_Rand_ZeroOne() * 3.0f;
            if (rand < 1.0f) {
                speed = 1.0f;
            } else if (rand < 2.0f) {
                speed = -1.0f;
            } else {
                speed = 0.0f;
            }
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HONOTRAP, 
                        Math_Coss(this->unk_19A) * (30.0f * speed) + this->actor.posRot.pos.x, 
                        this->actor.posRot.pos.y, 
                        Math_Sins(this->unk_19A) * (30.0f * speed) + this->actor.posRot.pos.z, 
                        0, (this->unk_19A + 0x8000) - (8192.0f * speed), 0, 2);
        }
    }
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_19A, 2, 0x1000, 0x100);
    this->actor.shape.rot.y = this->actor.posRot.rot.y + (this->unk_196 * 0x800) + 0x8000;
    if (this->unk_198 < 0x17) {
        if ((func_800CB198(660.0f, 840.0f, -4480.0f, -3760.0f, player->actor.posRot.pos.x, player->actor.posRot.pos.z) != 0) || 
            (func_800CB198(1560.0f, 1740.0f, -4030.0f, -3670.0f, player->actor.posRot.pos.x, player->actor.posRot.pos.z) != 0) || 
            (func_800CB198(1580.0f, 2090.0f, -3030.0f, -2500.0f, player->actor.posRot.pos.x, player->actor.posRot.pos.z) != 0)) {
            speed = (this->unk_194 != 0) ? player->actor.speedXZ * 1.399999976158142f : player->actor.speedXZ * 1.2000000476837158f;
        } else if (this->actor.xzDistFromLink < 150.0f) {
            speed = (this->unk_194 != 0) ? player->actor.speedXZ * 1.2000000476837158f : player->actor.speedXZ;
        } else if (this->actor.xzDistFromLink < 300.0f) {
            speed = (this->unk_194 != 0) ? player->actor.speedXZ : player->actor.speedXZ * 0.800000011920929f;
        } else if (this->unk_194 != 0) {
            speed = 4.5f;
        } else {
            speed = 3.5f;
        }
        temp_f12_2 = 250.0f - this->actor.xzDistFromLink;
        if (temp_f12_2 < 0.0f) {
            temp_f12_2 = 0.0f;
        }
        speed += (temp_f12_2 * 0.019999999552965164f + 1.0f);
        Math_SmoothScaleMaxF(&this->actor.speedXZ, speed, 0.5f, 1.5f);
    } else {
        Math_SmoothScaleMaxF(&this->actor.speedXZ, 3.5f, 0.5f, 1.5f);
    }
    func_80AD7944(&vec, &D_80AD8C30[this->unk_198]);
    if (func_8002DBB0(&this->actor, &vec) < 40.0f) {
        this->unk_198++;
        func_80AD7944(&vec, &D_80AD8C30[this->unk_198]);
        if (this->unk_198 == 0x1C) {
            func_80AD7A4C(this);
        } else if (this->unk_198 == 9) {
            Flags_SetSwitch(globalCtx, 0x35);
        } else if (this->unk_198 == 0x11) {
            Flags_SetSwitch(globalCtx, 0x36);
        } else if (this->unk_198 == 0x19) {
            Flags_SetSwitch(globalCtx, 0x37);
        }
    }
    this->unk_19A = func_8002DAC0(&this->actor, &vec);
    func_8002F974(&this->actor, NA_SE_EN_PO_AWAY & ~0x0800);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7C64.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD8174.s")
void func_80AD8174(EnPoRelay* this, GlobalContext* globalCtx) {
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, -0x4000, 0x800);
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->actionFunc = func_80AD8234;
    } else if (globalCtx->roomCtx.curRoom.num == 5) {
        Actor_Kill(&this->actor);
        gSaveContext.timer1State = 0;
    } else if (func_8002E12C(&this->actor, 150.0f, 0x3000) != 0) {
        this->actor.textId = this->unk_19C;
        func_8002F2CC(&this->actor, globalCtx, 250.0f);
    }
    func_8002F974(&this->actor, 0x3071);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD8234.s")
void func_80AD8234(EnPoRelay* this, GlobalContext* globalCtx) {
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0x100);
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            if (this->unk_194 != 0) {
                Actor_SetTextWithPrefix(globalCtx, &this->actor, 0x2E);
            } else {
                Actor_SetTextWithPrefix(globalCtx, &this->actor, 0x2D);
            }
            this->unk_19C = this->actor.textId;
            func_8010B720(globalCtx, this->actor.textId);
        }
    } else if (func_8002F334(&this->actor, globalCtx) != 0) {
        gSaveContext.timer1State = 0;
        this->unk_196 = 0;
        this->actionFunc = func_80AD830C;
    }
    func_8002F974(&this->actor, 0x3071);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD830C.s")
void func_80AD830C(EnPoRelay* this, GlobalContext* globalCtx) {
    Vec3f vec;
    f32 multiplier;
    s32 pad;
    Vec3f sp60;
    s32 pad1;

    this->unk_196++;
    if (this->unk_196 < 8) {
        if (this->unk_196 < 5) {
            vec.y = Math_Sins((this->unk_196 * 0x1000) - 0x4000) * 23.0f + (this->actor.posRot.pos.y + 40.0f);
            multiplier = Math_Coss((this->unk_196 * 0x1000) - 0x4000) * 23.0f;
            vec.x = (Math_Sins(func_8005A9F4(ACTIVE_CAM) + 0x4800) * multiplier) + this->actor.posRot.pos.x;
            vec.z = (Math_Coss(func_8005A9F4(ACTIVE_CAM) + 0x4800) * multiplier) + this->actor.posRot.pos.z;
        } else {
            vec.y = this->actor.posRot.pos.y + 40.0f + 15.0f * (this->unk_196 - 5);
            vec.x = (Math_Sins(func_8005A9F4(ACTIVE_CAM) + 0x4800) * 23.0f) + this->actor.posRot.pos.x;
            vec.z = (Math_Coss(func_8005A9F4(ACTIVE_CAM) + 0x4800) * 23.0f) + this->actor.posRot.pos.z;
        }
        func_8002A6B8(globalCtx, &vec, &D_80AD8D30, &D_80AD8D3C, (this->unk_196 * 0xA) + 0x50, 0, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 0xFF, 1, 9, 1);
        vec.x = (this->actor.posRot.pos.x + this->actor.posRot.pos.x) - vec.x;
        vec.z = (this->actor.posRot.pos.z + this->actor.posRot.pos.z) - vec.z;
        func_8002A6B8(globalCtx, &vec, &D_80AD8D30, &D_80AD8D3C, (this->unk_196 * 0xA) + 0x50, 0, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 0xFF, 1, 9, 1);
        vec.x = this->actor.posRot.pos.x;
        vec.z = this->actor.posRot.pos.z;
        func_8002A6B8(globalCtx, &vec, &D_80AD8D30, &D_80AD8D3C, (this->unk_196 * 0xA) + 0x50, 0, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 0xFF, 1, 9, 1);
        if (this->unk_196 == 1) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_EXTINCT);
        }
    }
    if (Math_ApproxF(&this->actor.scale.x, 0.0f, 0.0010000000474974513f) != 0) {
        if (this->unk_194 != 0) {
            sp60.x = this->actor.posRot.pos.x;
            sp60.y = this->actor.groundY;
            sp60.z = this->actor.posRot.pos.z;
            if (gSaveContext.timer1Value < gSaveContext.unk_ED0) {
                gSaveContext.unk_ED0 = gSaveContext.timer1Value;
            }
            if (Flags_GetCollectible(globalCtx, this->actor.params) == 0 && gSaveContext.timer1Value < 0x3D) {
                Item_DropCollectible2(globalCtx, &sp60, (this->actor.params << 8) + 0x4006);
            } else {
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ITEM00, sp60.x, sp60.y, sp60.z, 0, 0, 0, 2);
            }
        } else {
            Flags_SetTempClear(globalCtx, 4);
            gSaveContext.unk_ED0 = gSaveContext.timer1Value;
        }
        Actor_Kill(&this->actor);
    }
    this->actor.scale.y = this->actor.scale.x;
    this->actor.scale.z = this->actor.scale.x;
    this->actor.posRot.pos.y += 10.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/EnPoRelay_Update.s")
void EnPoRelay_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnPoRelay* this;
    ColliderCylinder* collider;

    this = THIS;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_80AD7A88(this);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 27.0f, 60.0f, 4);
    collider = &this->collider;
    Collider_CylinderUpdate(&this->actor, collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider->base);
    Actor_SetHeight(&this->actor, 50.0f);
    if (this->unk_195 != 0) {
        this->unk_195 -= 1;
    }
    if (this->unk_195 == 0) {
        this->unk_195 = 0x20;
    }
    this->unk_19E++;
    if (this->unk_19E == 3) {
        this->unk_19E = 0;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD88D0.s")
// PostLimbDraw
void func_80AD88D0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnPoRelay* this = THIS;

    if (limbIndex == 0xE) {
        f32 rand;
        Vec3f vec;
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx* dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_relay.c", 0x375);
        rand = Math_Rand_ZeroOne();
        this->unk_278 = (s16)(rand * 30.0f) + 0xE1;
        this->unk_279 = (s16)(rand * 100.0f) + 0x9B;
        this->unk_27A = (s16)(rand * 160.0f) + 0x5F;
        do {
            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetEnvColor(gfxCtx->polyOpa.p++, this->unk_278, this->unk_279, this->unk_27A, 0x80);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_0600B838);
        } while (0);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_relay.c", 0x385);
        Matrix_MultVec3f(&D_80AD8D48, &vec);
        Lights_InitType0PositionalLight(&this->lightInfo, vec.x, vec.y, vec.z, this->unk_278, this->unk_279, this->unk_27A, 0xC8);
    } else if (limbIndex == 8) {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx* dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_relay.c", 0x394);
        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_relay.c", 0x396), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_0600BBA0);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_relay.c", 0x39A);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/EnPoRelay_Draw.s")
void EnPoRelay_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnPoRelay* this;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    this = THIS;
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_relay.c", 0x3AC);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AD8D54[this->unk_19E]));
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, NULL, func_80AD88D0, &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_relay.c", 0x3BA);
}
