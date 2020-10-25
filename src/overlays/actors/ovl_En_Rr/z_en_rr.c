#include "z_en_rr.h"

#define FLAGS 0x00000435

#define THIS ((EnRr*)thisx)

void EnRr_Init(Actor* thisx, GlobalContext* globalCtx);
void EnRr_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnRr_Update(Actor* thisx, GlobalContext* globalCtx);
void EnRr_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AE861C(EnRr* this, f32 speed);

void func_80AE8644(EnRr* this);
void func_80AE8744(EnRr* this);
void func_80AE8810(EnRr* this, Player* player);
u8 func_80AE8918(u8 shield, u8 tunic);
void func_80AE8968(EnRr* this, GlobalContext* globalCtx);
void func_80AE8B78(EnRr* this);
void func_80AE8C44(EnRr* this);
void func_80AE8CF8(EnRr* this);
void func_80AE8D9C(EnRr* this);

void func_80AE8EA4(EnRr* this, GlobalContext* globalCtx);
void func_80AE926C(EnRr* this, GlobalContext* globalCtx);
void func_80AE942C(EnRr* this, GlobalContext* globalCtx);

void func_80AE95B0(EnRr* this, GlobalContext* globalCtx);
void func_80AE9670(EnRr* this, GlobalContext* globalCtx);
void func_80AE978C(EnRr* this, GlobalContext* globalCtx);
void func_80AE9880(EnRr* this, GlobalContext* globalCtx);
void func_80AE98F8(EnRr* this, GlobalContext* globalCtx);
void func_80AE9C88(EnRr* this, GlobalContext* globalCtx);
void func_80AE9D1C(EnRr* this, GlobalContext* globalCtx);

extern Gfx D_06000470[];

const ActorInit En_Rr_InitVars = {
    ACTOR_EN_RR,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_RR,
    sizeof(EnRr),
    (ActorFunc)EnRr_Init,
    (ActorFunc)EnRr_Destroy,
    (ActorFunc)EnRr_Update,
    (ActorFunc)EnRr_Draw,
};

static char* sDropNames[] = {
    // "type 7", "small magic jar", "arrow", "fairy", "20 rupees", "50 rupees"
    "タイプ７  ", "魔法の壷小", "矢        ", "妖精      ", "20ルピー  ", "50ルピー  ",
};

static ColliderCylinderInit_Set3 sCylinderInit1 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x09, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 30, 55, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit_Set3 sCylinderInit2 = {
    { COLTYPE_UNK10, 0x00, 0x0D, 0x0D, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 20, 20, -10, { 0, 0, 0 } },
};

static DamageTable sDamageTable = {
    0x00, 0xF2, 0xF1, 0xF2, 0x10, 0xF2, 0xF2, 0x10, 0xF1, 0xF2, 0xF4, 0x24, 0x34, 0xBF, 0xD4, 0xCF,
    0xEF, 0x24, 0x33, 0x4A, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0xEA, 0x00, 0x00, 0x00,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 55, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 30, ICHAIN_STOP),
};

static f32 D_80AEA6DC[] = { 0.0f, 500.0f, 750.0f, 1000.0f, 1000.0f };

Vec3f D_80AEA6F0[] = {
    { 25.0f, 0.0f, 0.0f },
    { -25.0f, 0.0f, 0.0f },
    { 0.0f, 0.0f, 25.0f },
    { 0.0f, 0.0f, -25.0f },
};

void EnRr_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnRr* this = THIS;
    s32 i;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.colChkInfo.damageTable = &sDamageTable;
    this->actor.colChkInfo.health = 4;
    Collider_InitCylinder(globalCtx, &this->collider1);
    Collider_SetCylinder_Set3(globalCtx, &this->collider1, &this->actor, &sCylinderInit1);
    Collider_InitCylinder(globalCtx, &this->collider2);
    Collider_SetCylinder_Set3(globalCtx, &this->collider2, &this->actor, &sCylinderInit2);
    Actor_SetHeight(&this->actor, 30.0f);
    this->actor.scale.y = 0.013f;
    this->actor.scale.x = this->actor.scale.z = 0.014f;
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.velocity.y = this->actor.speedXZ = 0.0f;
    this->actor.gravity = -0.4f;
    this->unk_1EA = 0;
    this->unk_372 = 0;
    this->unk_373 = 0;
    this->unk_375 = false;
    this->unk_1EE = 0;
    this->unk_1F0 = 0;
    this->unk_1F2 = 0;
    this->unk_378 = false;
    this->unk_376 = false;
    this->unk_1F4 = 0;
    this->unk_370 = this->unk_371 = 0;
    this->actionFunc = func_80AE95B0;
    for (i = 0; i < 5; i++) {
        this->unk_224[i].unk_00 = this->unk_224[i].unk_04 = this->unk_224[i].unk_20.x = this->unk_224[i].unk_20.y =
            this->unk_224[i].unk_20.z = 0.0f;
    }
    func_80AE926C(this, globalCtx);
}

void EnRr_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnRr* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider1);
    Collider_DestroyCylinder(globalCtx, &this->collider2);
}

void func_80AE861C(EnRr* this, f32 speed) {
    this->actor.speedXZ = speed;
    Audio_PlayActorSound2(&this->actor, 0x3990);
}

void func_80AE8644(EnRr* this) {
    s32 i;

    this->unk_370 = 1;
    this->unk_1EA = 20;
    this->unk_1FC = 2500.0f;
    this->unk_364 = 0.0f;
    for (i = 0; i < 5; i++) {
        this->unk_224[i].unk_04 = D_80AEA6DC[i];
        this->unk_224[i].unk_14.x = this->unk_224[i].unk_14.z = 0.8f;
        this->unk_224[i].unk_2C.x = 6000.0f;
        this->unk_224[i].unk_2C.z = 0.0f;
    }
    this->actionFunc = func_80AE9670;
    Audio_PlayActorSound2(&this->actor, 0x3991);
}

void func_80AE8744(EnRr* this) {
    s32 i;

    this->unk_370 = 0;
    this->unk_364 = 0.0f;
    this->unk_1FC = 2500.0f;
    for (i = 0; i < 5; i++) {
        this->unk_224[i].unk_04 = 0.0f;
        this->unk_224[i].unk_2C.x = this->unk_224[i].unk_2C.z = 0.0f;
        this->unk_224[i].unk_14.x = this->unk_224[i].unk_14.z = 1.0f;
    }
    if (this->unk_375) {
        this->unk_1EA = 100;
        this->actionFunc = func_80AE9C88;
    } else {
        this->unk_1EA = 60;
        this->actionFunc = func_80AE95B0;
    }
}

void func_80AE8810(EnRr* this, Player* player) {
    s32 i;

    this->unk_1EE = 100;
    this->actor.flags &= ~1;
    this->unk_1F4 = 8;
    this->unk_378 = true;
    this->unk_370 = 0;
    this->unk_364 = this->unk_36C = this->actor.speedXZ = 0.0f;
    this->unk_218 = 0.15f;
    this->unk_1FC = 5000.0f;
    this->unk_220 = 512.0f;
    for (i = 0; i < 5; i++) {
        this->unk_224[i].unk_04 = 0.0f;
        this->unk_224[i].unk_2C.x = this->unk_224[i].unk_2C.z = 0.0f;
        this->unk_224[i].unk_14.x = this->unk_224[i].unk_14.z = 1.0f;
    }
    this->actionFunc = func_80AE978C;
    Audio_PlayActorSound2(&this->actor, 0x3992);
}

u8 func_80AE8918(u8 shield, u8 tunic) {
    u8 phi_v1 = 0;

    if ((shield == 1) || (shield == 2)) {
        phi_v1 = 1;
    }
    if ((tunic == 2) || (tunic == 3)) {
        phi_v1 |= 2;
    }

    return phi_v1;
}

void func_80AE8968(EnRr* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    u8 sp2B;
    u8 sp2A;

    this->actor.flags |= 1;
    this->unk_378 = false;
    this->unk_1F4 = 110;
    this->unk_364 = 0.0f;
    this->unk_1FC = 2500.0f;
    this->unk_220 = 2048.0f;
    sp2A = 0;
    sp2B = 0;
    if (((gSaveContext.equips.equipment & gEquipMasks[1]) >> gEquipShifts[1]) != 3) {
        sp2B = Inventory_DeleteEquipment(globalCtx, 1);
        if (sp2B != 0) {
            this->unk_372 = sp2B;
            this->unk_375 = true;
        }
    }
    if (((gSaveContext.equips.equipment & gEquipMasks[2]) >> gEquipShifts[2]) != 1) {
        sp2A = Inventory_DeleteEquipment(globalCtx, 2);
        if (sp2A != 0) {
            this->unk_373 = sp2A;
            this->unk_375 = true;
        }
    }
    player->actor.parent = NULL;
    switch (func_80AE8918(sp2B, sp2A)) {
        case 1:
            func_8010B680(globalCtx, 0x305F, NULL);
            break;
        case 2:
            func_8010B680(globalCtx, 0x3060, NULL);
            break;
        case 3:
            func_8010B680(globalCtx, 0x3061, NULL);
            break;
    }
    osSyncPrintf("\x1b[33m%s[%d] : Rr_Catch_Cancel\x1b[m\n", "../z_en_rr.c", 650);
    func_8002F6D4(globalCtx, &this->actor, 4.0f, this->actor.shape.rot.y, 12.0f, 8);
    if (this->actor.dmgEffectTimer == 0) {
        this->actionFunc = func_80AE95B0;
        Audio_PlayActorSound2(&this->actor, 0x3994);
    } else if (this->actor.colChkInfo.health != 0) {
        func_80AE8B78(this);
    } else {
        func_80AE8CF8(this);
    }
}

void func_80AE8B78(EnRr* this) {
    s32 i;

    this->unk_370 = 0;
    this->unk_1EA = 20;
    this->unk_364 = 0.0f;
    this->unk_1FC = 2500.0f;
    this->unk_218 = 0.0f;
    this->unk_220 = 0.0f;
    for (i = 0; i < 5; i++) {
        this->unk_224[i].unk_04 = 0.0f;
        this->unk_224[i].unk_2C.x = this->unk_224[i].unk_2C.z = 0.0f;
        this->unk_224[i].unk_14.x = this->unk_224[i].unk_14.z = 1.0f;
    }
    this->actionFunc = func_80AE9880;
    Audio_PlayActorSound2(&this->actor, 0x3995);
}

void func_80AE8C44(EnRr* this) {
    s32 i;

    this->unk_364 = 0.0f;
    this->unk_218 = 0.15f;
    this->unk_1FC = 2500.0f;
    this->unk_220 = 2048.0f;
    for (i = 0; i < 5; i++) {
        this->unk_224[i].unk_04 = 0.0f;
        this->unk_224[i].unk_2C.x = this->unk_224[i].unk_2C.z = 0.0f;
        this->unk_224[i].unk_14.x = this->unk_224[i].unk_14.z = 1.0f;
    }
    this->actionFunc = func_80AE95B0;
}

void func_80AE8CF8(EnRr* this) {
    s32 i;

    this->unk_371 = 1;
    this->unk_1E8 = 0;
    this->unk_368 = 0.0f;
    this->unk_364 = 0.0f;
    for (i = 0; i < 5; i++) {
        this->unk_224[i].unk_04 = 0.0f;
        this->unk_224[i].unk_2C.x = this->unk_224[i].unk_2C.z = 0.0f;
    }
    this->actionFunc = func_80AE98F8;
    Audio_PlayActorSound2(&this->actor, 0x3996);
    this->actor.flags &= ~1;
}

void func_80AE8D9C(EnRr* this) {
    s32 i;

    this->unk_376 = true;
    this->unk_1F6 = 0;
    this->unk_1F8 = 0.0f;
    this->unk_1FC = 2500.0f;
    this->unk_200 = 0.0f;
    this->unk_204 = 0.0f;
    this->unk_208 = 3.0f;
    this->unk_20C = 0.0f;
    this->unk_210 = 1.0f;
    this->unk_214 = 0.0f;
    this->unk_218 = 0.15f;
    this->unk_21C = 0.0f;
    this->unk_220 = 2048.0f;
    for (i = 0; i < 5; i++) {
        this->unk_224[i].unk_20.y = 0.0f;
        this->unk_224[i].unk_2C.x = 0.0f;
        this->unk_224[i].unk_2C.y = 0.0f;
        this->unk_224[i].unk_2C.z = 0.0f;
        this->unk_224[i].unk_08.x = this->unk_224[i].unk_08.y = this->unk_224[i].unk_08.z = this->unk_224[i].unk_14.x =
            this->unk_224[i].unk_14.y = this->unk_224[i].unk_14.z = 1.0f;
    }
    this->actionFunc = func_80AE9D1C;
}

void func_80AE8EA4(EnRr* this, GlobalContext* globalCtx) {
    Vec3f sp3C;
    Player* player = PLAYER;

    if (this->collider2.base.acFlags & 2) {
        this->collider2.base.acFlags &= ~2;
        // Kakin (not sure what this means)
        osSyncPrintf("\x1b[32mカキン(%d)！！\x1b[m\n", this->unk_1E8);
        sp3C.x = this->collider2.body.bumper.unk_06.x;
        sp3C.y = this->collider2.body.bumper.unk_06.y;
        sp3C.z = this->collider2.body.bumper.unk_06.z;
        func_80062DF4(globalCtx, &sp3C);
    } else {
        if (this->collider1.base.acFlags & 2) {
            u8 sp37 = 0;

            this->collider1.base.acFlags &= ~2;
            if (this->actor.colChkInfo.damageEffect != 0) {
                sp3C.x = this->collider1.body.bumper.unk_06.x;
                sp3C.y = this->collider1.body.bumper.unk_06.y;
                sp3C.z = this->collider1.body.bumper.unk_06.z;
                func_8005DFAC(globalCtx, NULL, &sp3C);
            }
            switch (this->actor.colChkInfo.damageEffect) {
                case 11:
                    sp37++;
                case 12:
                    sp37++;
                case 13:
                    sp37++;
                case 14:
                    sp37++;
                case 15:
                    // ouch
                    osSyncPrintf("\x1b[31mいてっ( %d : LIFE %d : DAMAGE %d : %x )！！\x1b[m\n", this->unk_1E8,
                                 this->actor.colChkInfo.health, this->actor.colChkInfo.damage,
                                 this->actor.colChkInfo.damageEffect);
                    this->unk_376 = false;
                    Actor_ApplyDamage(&this->actor);
                    this->unk_1F0 = 40;
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0x2000, this->unk_1F0);
                    if (this->unk_378) {
                        func_80AE8968(this, globalCtx);
                    } else if (this->actor.colChkInfo.health != 0) {
                        func_80AE8B78(this);
                    } else {
                        this->unk_374 = sp37;
                        func_80AE8CF8(this);
                    }
                    return;
                case 2:
                    Actor_ApplyDamage(&this->actor);
                    if (this->actor.colChkInfo.health == 0) {
                        this->unk_374 = 0;
                    }
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0x2000, 0x50);
                    this->unk_1F2 = 20;
                    func_80AE8D9C(this);
                    return;
                case 3:
                    Actor_ApplyDamage(&this->actor);
                    if (this->actor.colChkInfo.health == 0) {
                        this->unk_374 = 0;
                    }
                    if (this->actor.dmgEffectTimer == 0) {
                        this->unk_1F2 = 20;
                        func_8003426C(&this->actor, 0, 0xFF, 0x2000, 0x50);
                    }
                    func_80AE8D9C(this);
                    return;
                case 4:
                    Actor_ApplyDamage(&this->actor);
                    if (this->actor.colChkInfo.health == 0) {
                        this->unk_374 = 5;
                    }
                    func_8003426C(&this->actor, -0x8000, 0xFF, 0x2000, 0x50);
                    func_80AE8D9C(this);
                    return;
                case 1:
                    Audio_PlayActorSound2(&this->actor, 0x389E);
                    func_8003426C(&this->actor, 0, 0xFF, 0x2000, 0x50);
                    func_80AE8D9C(this);
                    return;
            }
        }
        if ((this->unk_1F4 == 0) && (this->actor.dmgEffectTimer == 0) && (player->invincibilityTimer == 0) &&
            !(player->stateFlags2 & 0x80) && ((this->collider1.base.maskA & 2) || (this->collider2.base.maskA & 2))) {
            this->collider1.base.maskA &= ~2;
            this->collider2.base.maskA &= ~2;
            // catch
            osSyncPrintf("\x1b[32mキャッチ(%d)！！\x1b[m\n", this->unk_1E8);
            if (globalCtx->grabPlayer(globalCtx, player)) {
                player->actor.parent = &this->actor;
                this->unk_376 = false;
                func_80AE8810(this, player);
            }
        }
    }
}

void func_80AE926C(EnRr* this, GlobalContext* globalCtx) {
    s32 i;

    this->unk_1F6 = 0;
    this->unk_1F8 = 0.0f;
    this->unk_1FC = 2500.0f;
    this->unk_200 = 0.0f;
    this->unk_204 = 0.0f;
    this->unk_208 = 3.0f;
    this->unk_20C = 0.0f;
    this->unk_210 = 1.0f;
    this->unk_214 = 0.0f;
    this->unk_218 = 0.15f;
    this->unk_21C = 0.0f;
    this->unk_220 = 2048.0f;
    for (i = 0; i < 5; i++) {
        this->unk_224[i].unk_20.y = 0.0f;
        this->unk_224[i].unk_2C.x = 0.0f;
        this->unk_224[i].unk_2C.y = 0.0f;
        this->unk_224[i].unk_2C.z = 0.0f;
        this->unk_224[i].unk_08.x = this->unk_224[i].unk_08.y = this->unk_224[i].unk_08.z = this->unk_224[i].unk_14.x =
            this->unk_224[i].unk_14.y = this->unk_224[i].unk_14.z = 1.0f;
    }
    for (i = 0; i < 5; i++) {
        this->unk_224[i].unk_20.x = this->unk_224[i].unk_20.z =
            Math_Coss(i * (u32)(s16)this->unk_200 * 0x1000) * this->unk_214;
    }
    for (i = 1; i < 5; i++) {
        this->unk_224[i].unk_2C.x = Math_Coss(i * (u32)(s16)this->unk_204 * 0x1000) * this->unk_21C;
        this->unk_224[i].unk_2C.z = Math_Sins(i * (u32)(s16)this->unk_20C * 0x1000) * this->unk_21C;
    }
}

void func_80AE942C(EnRr* this, GlobalContext* globalCtx) {
    s32 i;
    s16 temp = this->unk_1F6;

    if (this->unk_371 == 0) {
        for (i = 0; i < 5; i++) {
            this->unk_224[i].unk_20.x = this->unk_224[i].unk_20.z =
                Math_Coss(temp + i * (s16)this->unk_200 * 0x1000) * this->unk_214;
        }
        temp = this->unk_1F6;
        if ((this->unk_371 == 0) && (this->unk_370 == 0)) {
            for (i = 1; i < 5; i++) {
                this->unk_224[i].unk_2C.x = Math_Coss(temp + i * (s16)this->unk_204 * 0x1000) * this->unk_21C;
                this->unk_224[i].unk_2C.z = Math_Sins(temp + i * (s16)this->unk_20C * 0x1000) * this->unk_21C;
            }
        }
    }
    if (!this->unk_376) {
        this->unk_1F6 += (s16)this->unk_1F8;
    }
}

void func_80AE95B0(EnRr* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0xA, 0x1F4, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if ((this->unk_1EA == 0) && (this->actor.xzDistFromLink < 160.0f)) {
        func_80AE8644(this);
    } else if ((this->actor.xzDistFromLink < 400.0f) && (this->actor.speedXZ == 0.0f)) {
        func_80AE861C(this, 2.0f);
    }
}

void func_80AE9670(EnRr* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0xA, 0x1F4, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    switch (this->unk_370) {
        case 1:
            if (this->unk_1EA == 0) {
                this->unk_370 = 2;
            }
            break;
        case 2:
            if (this->unk_1EA == 0) {
                this->unk_1EA = 5;
                this->unk_224[4].unk_14.x = this->unk_224[4].unk_14.z = 1.5f;
                this->unk_370 = 3;
            }
            break;
        case 3:
            if (this->unk_1EA == 0) {
                this->unk_1EA = 2;
                this->unk_224[4].unk_04 = 2000.0f;
                this->unk_370 = 4;
            }
            break;
        case 4:
            if (this->unk_1EA == 0) {
                this->unk_1EA = 20;
                this->unk_224[4].unk_14.x = this->unk_224[4].unk_14.z = 0.8f;
                this->unk_370 = 5;
            }
            break;
        case 5:
            if (this->unk_1EA == 0) {
                func_80AE8744(this);
            }
            break;
    }
}

void func_80AE978C(EnRr* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    func_800AA000(this->actor.xyzDistFromLinkSq, 0x78, 2, 0x78);
    if ((this->unk_1E8 % 8) == 0) {
        Audio_PlayActorSound2(&this->actor, 0x3993);
    }
    this->unk_1F4 = 8;
    if ((this->unk_1EE == 0) || !(player->stateFlags2 & 0x80)) {
        func_80AE8968(this, globalCtx);
    } else {
        Math_SmoothScaleMaxF(&player->actor.posRot.pos.x, this->unk_37C.x, 1.0f, 30.0f);
        Math_SmoothScaleMaxF(&player->actor.posRot.pos.y, this->unk_37C.y + this->unk_36C, 1.0f, 30.0f);
        Math_SmoothScaleMaxF(&player->actor.posRot.pos.z, this->unk_37C.z, 1.0f, 30.0f);
        Math_SmoothScaleMaxF(&this->unk_36C, -55.0f, 1.0f, 5.0f);
    }
}

void func_80AE9880(EnRr* this, GlobalContext* globalCtx) {
    s32 i;

    if (this->actor.dmgEffectTimer == 0) {
        func_80AE8C44(this);
    } else if ((this->actor.dmgEffectTimer & 8) != 0) {
        for (i = 1; i < 5; i++) {
            this->unk_224[i].unk_2C.z = 5000.0f;
        }
    } else {
        for (i = 1; i < 5; i++) {
            this->unk_224[i].unk_2C.z = -5000.0f;
        }
    }
}

void func_80AE98F8(EnRr* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 i;
    Vec3f sp9C;
    Vec3f sp90;
    Vec3f sp84;
    Vec3f sp78;

    if (this->unk_1E8 < 40) {
        for (i = 0; i < 5; i++) {
            Math_SmoothScaleMaxF(&this->unk_224[i].unk_04, i + 59 - (this->unk_1E8 * 25.0f), 1.0f, 50.0f);
            this->unk_224[i].unk_14.x = this->unk_224[i].unk_14.z = (SQ(4 - i) * (f32)this->unk_1E8 * 0.003f) + 1.0f;
        }
    } else if (this->unk_1E8 >= 95) {
        sp9C.x = this->actor.posRot.pos.x;
        sp9C.y = this->actor.posRot.pos.y;
        sp9C.z = this->actor.posRot.pos.z;
        switch (this->unk_372) {
            case 1:
                Item_DropCollectible(globalCtx, &sp9C, 0x15);
                break;
            case 2:
                Item_DropCollectible(globalCtx, &sp9C, 0x16);
                break;
        }
        switch (this->unk_373) {
            case 2:
                Item_DropCollectible(globalCtx, &sp9C, 0x18);
                break;
            case 3:
                Item_DropCollectible(globalCtx, &sp9C, 0x17);
                break;
        }
        // dropped
        osSyncPrintf("\x1b[32m「%s」が出た！！\x1b[m\n", sDropNames[this->unk_374]);
        switch (this->unk_374) {
            case 1:
                Item_DropCollectible(globalCtx, &sp9C, 0xF);
                break;
            case 2:
                Item_DropCollectible(globalCtx, &sp9C, 5);
                break;
            case 3:
                Item_DropCollectible(globalCtx, &sp9C, 0x12);
                break;
            case 4:
                Item_DropCollectible(globalCtx, &sp9C, 0x14);
                break;
            case 5:
                Item_DropCollectible(globalCtx, &sp9C, 2);
                break;
            case 0:
            default:
                Item_DropCollectibleRandom(globalCtx, &this->actor, &sp9C, 0xC0);
                break;
        }
        Actor_Kill(&this->actor);
    } else if (this->unk_1E8 == 88) {
        sp90.x = this->actor.posRot.pos.x;
        sp90.y = this->actor.posRot.pos.y + 20.0f;
        sp90.z = this->actor.posRot.pos.z;
        sp84.x = 0.0f;
        sp84.y = 0.0f;
        sp84.z = 0.0f;
        sp78.x = 0.0f;
        sp78.y = 0.0f;
        sp78.z = 0.0f;

        EffectSsDeadDb_Spawn(globalCtx, &sp90, &sp84, &sp78, 0x64, 0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 1, 9, 1);
    } else {
        Math_SmoothScaleMaxF(&this->actor.scale.x, 0.0f, 1.0f, this->unk_368);
        Math_SmoothScaleMaxF(&this->unk_368, 0.001f, 1.0f, 0.00001f);
        this->actor.scale.z = this->actor.scale.x;
    }
}

void func_80AE9C88(EnRr* this, GlobalContext* globalCtx) {
    if (this->unk_1EA == 0) {
        this->unk_375 = false;
        this->actionFunc = func_80AE95B0;
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink + 0x8000, 0xA, 0x3E8, 0);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        if (this->actor.speedXZ == 0.0f) {
            func_80AE861C(this, 2.0f);
        }
    }
}

void func_80AE9D1C(EnRr* this, GlobalContext* globalCtx) {
    if (this->actor.dmgEffectTimer == 0) {
        this->unk_376 = false;
        if (this->unk_378) {
            func_80AE8968(this, globalCtx);
        } else if (this->actor.colChkInfo.health != 0) {
            this->actionFunc = func_80AE95B0;
        } else {
            func_80AE8CF8(this);
        }
    }
}

void EnRr_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnRr* this = THIS;
    s32 i;

    this->unk_1E8++;
    if (!this->unk_376) {
        this->unk_1EC++;
    }
    if (this->unk_1EA != 0) {
        this->unk_1EA--;
    }
    if (this->unk_1EE != 0) {
        this->unk_1EE--;
    }
    if (this->unk_1F4 != 0) {
        this->unk_1F4--;
    }
    if (this->unk_1F0 != 0) {
        this->unk_1F0--;
    }
    if (this->unk_1F2 != 0) {
        this->unk_1F2--;
    }

    Actor_SetHeight(&this->actor, 30.0f);
    func_80AE942C(this, globalCtx);
    if ((this->unk_371 == 0) && ((this->actor.dmgEffectTimer == 0) || !(this->actor.dmgEffectParams & 0x4000))) {
        func_80AE8EA4(this, globalCtx);
    }

    this->actionFunc(this, globalCtx);
    if (this->unk_378 == 0x3F80) {
        __assert("0", "../z_en_rr.c", 1355);
    }

    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.1f);
    Actor_MoveForward(&this->actor);
    Collider_CylinderUpdate(&this->actor, &this->collider1);
    this->collider2.dim.pos.x = this->unk_37C.x;
    this->collider2.dim.pos.y = this->unk_37C.y;
    this->collider2.dim.pos.z = this->unk_37C.z;
    if ((this->unk_371 == 0) && (this->unk_1F0 == 0)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
        if (this->unk_1F4 == 0) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        }
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    } else {
        this->collider2.base.maskA &= ~2;
        this->collider2.base.acFlags &= ~2;
        this->collider1.base.maskA &= ~2;
        this->collider1.base.acFlags &= ~2;
    }
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 30.0f, 20.0f, 7);
    if (!this->unk_376) {
        Math_SmoothScaleMaxF(&this->unk_1F8, this->unk_1FC, 1.0f, 50.0f);
        Math_SmoothScaleMaxF(&this->unk_200, 4.0f, 1.0f, 5.0f);
        Math_SmoothScaleMaxF(&this->unk_204, this->unk_208, 1.0f, 0.04f);
        Math_SmoothScaleMaxF(&this->unk_20C, this->unk_210, 1.0f, 0.01f);
        Math_SmoothScaleMaxF(&this->unk_214, this->unk_218, 1.0f, 0.0015f);
        Math_SmoothScaleMaxF(&this->unk_21C, this->unk_220, 1.0f, 20.0f);
        for (i = 0; i < 5; i++) {
            Math_SmoothScaleMaxMinS(&this->unk_224[i].unk_38.x, this->unk_224[i].unk_2C.x, 5, this->unk_364 * 1000.0f,
                                    0);
            Math_SmoothScaleMaxMinS(&this->unk_224[i].unk_38.z, this->unk_224[i].unk_2C.z, 5, this->unk_364 * 1000.0f,
                                    0);
            Math_SmoothScaleMaxF(&this->unk_224[i].unk_08.x, this->unk_224[i].unk_14.x, 1.0f, this->unk_364 * 0.2f);
            this->unk_224[i].unk_08.z = this->unk_224[i].unk_08.x;
            Math_SmoothScaleMaxF(&this->unk_224[i].unk_00, this->unk_224[i].unk_04, 1.0f, this->unk_364 * 300.0f);
        }
        Math_SmoothScaleMaxF(&this->unk_364, 1.0f, 1.0f, 0.2f);
    }
}

#ifdef NON_MATCHING
void EnRr_Draw(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnRr* this = THIS;
    s32 i;
    Mtx* temp_s4;
    Vec3f spB8;

    temp_s4 = Graph_Alloc(globalCtx->state.gfxCtx, 0x100);
    if (1) {}
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_rr.c", 1478);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x0C, &temp_s4[0]);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 % 0x80, 0 % 0x40, 0x20, 0x10, 1, 0 % 0x40,
                                (this->unk_1EC * -6) & 0x7F, 0x20, 0x10));
    Matrix_Push();
    Matrix_Scale((1.0f + this->unk_224[0].unk_20.x) * this->unk_224[0].unk_08.x,
                 (1.0f + this->unk_224[0].unk_20.y) * this->unk_224[0].unk_08.y,
                 (1.0f + this->unk_224[0].unk_20.z) * this->unk_224[0].unk_08.z, 1);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_rr.c", 1501),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    Matrix_Pull();
    spB8.x = 0.0f;
    spB8.y = 0.0f;
    spB8.z = 0.0f;

    for (i = 1; i < 5; i++) {
        Matrix_Translate(0.0f, this->unk_224[i].unk_00 + 1000.0f, 0.0f, 1);
        Matrix_RotateRPY(this->unk_224[i].unk_38.x, this->unk_224[i].unk_38.y, this->unk_224[i].unk_38.z, 1);
        Matrix_Push();
        Matrix_Scale((1.0f + this->unk_224[i].unk_20.x) * this->unk_224[i].unk_08.x,
                     (1.0f + this->unk_224[i].unk_20.y) * this->unk_224[i].unk_08.y,
                     (1.0f + this->unk_224[i].unk_20.z) * this->unk_224[i].unk_08.z, 1);
        Matrix_ToMtx(&temp_s4[i - 1], "../z_en_rr.c", 1527);
        Matrix_Pull();
        Matrix_MultVec3f(&spB8, &this->unk_388[i]);
    }
    this->unk_388[0] = this->actor.posRot.pos;
    Matrix_MultVec3f(&spB8, &this->unk_37C);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000470);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_rr.c", 1551);
    if (this->unk_1F2 != 0) {
        s16 temp_s0 = this->unk_1F2 - 1;

        this->actor.dmgEffectTimer++;
        if ((temp_s0 & 1) == 0) {
            Vec3f sp7C;
            s32 temp1 = 4 - (temp_s0 >> 2);
            s32 temp2 = (temp_s0 >> 1) & 3;

            sp7C.x = this->unk_388[temp1].x + D_80AEA6F0[temp2].x + Math_Rand_CenteredFloat(10.0f);
            sp7C.y = this->unk_388[temp1].y + D_80AEA6F0[temp2].y + Math_Rand_CenteredFloat(10.0f);
            sp7C.z = this->unk_388[temp1].z + D_80AEA6F0[temp2].z + Math_Rand_CenteredFloat(10.0f);
            if (this->actor.dmgEffectParams & 0x4000) {
                EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &sp7C, 0x64, 0, 0, -1);
            } else {
                EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &sp7C, 0x96, 0x96, 0x96, 0xFA, 0xEB, 0xF5, 0xFF,
                                               3.0f);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/EnRr_Draw.s")
#endif
