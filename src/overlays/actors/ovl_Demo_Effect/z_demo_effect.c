#include "z_demo_effect.h"

#define FLAGS 0x00000030

#define THIS ((DemoEffect*)thisx)

/**
 * Basic Actor Functions
 */
void DemoEffect_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoEffect_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoEffect_Update(Actor* thisx, GlobalContext* globalCtx);

/**
 * Draw Functions
 */
void DemoEffect_DrawMedal(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawCrystalLight(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawTriforceSpot(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawFireBall(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawBlueOrb(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawLgtShower(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawLightEffect(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawGodLgt(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawJewel(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawLightRing(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawTimeWarp(DemoEffect* this, GlobalContext* globalCtx);

/**
 * Update Functions
 */
void DemoEffect_Wait(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateTriforceSpot(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateGodLgtFarore(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateGodLgtNayru(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateGodLgtDin(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateLightEffect(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateLightRing3(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateLightRing2(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateLightRing1(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateLgtShower(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateBlueOrb(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateFireBall(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateCrystalLight(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateJewelAdult(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateJewelChild(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateMedal(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateTimeWarp(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateArrow(DemoEffect* this, GlobalContext* globalCtx);
void func_80972868(DemoEffect* this, GlobalContext* globalCtx);
void func_80972A04(DemoEffect* this, GlobalContext* globalCtx);
void func_809729B8(DemoEffect* this, GlobalContext* globalCtx);
void func_809721D0(DemoEffect* this, GlobalContext* globalCtx);
void func_80972008(DemoEffect* this, GlobalContext* globalCtx);
void func_80972344(DemoEffect* this, GlobalContext* globalCtx);
void func_80972288(DemoEffect* this, GlobalContext* globalCtx);

/**
 * Misc Functions
 */
void DemoEffect_SetupUpdate(DemoEffect* this, DemoEffectFunc updateFunc);
void func_809742B0(DemoEffect* this, GlobalContext* globalCtx);
void func_80970FB4(GlobalContext* globalCtx, DemoEffect* this);
void func_8097414C(DemoEffect* this, GlobalContext* globalCtx, s32 arg2);
void func_80971A28(DemoEffect* this, GlobalContext* globalCtx, s32 arg2);
void func_809767B0(DemoEffect* this, GlobalContext* globalCtx, s32 csActionIndex);
void func_80973424(DemoEffect* this);
void func_80971070(DemoEffect* this);
void func_80973524(DemoEffect* this, f32 arg1);
void func_80973CA0(PosRot* posRot, DemoEffect* this);
s32 func_809746B4(DemoEffect* this, GlobalContext* globalCtx, s32 arg2);
void func_80973EE0(DemoEffect* this, GlobalContext* globalCtx);
s32 func_80976254(GlobalContext* globalCtx, SkelAnimeCurve* skelCuve, s32 limbIndex, Actor* thisx);
void func_80973CFC(f32 arg0, f32 arg1, Vec3f startPos, Vec3f endPos, f32 arg4, Vec3s arg5, DemoEffect* this);
void func_809764FC(DemoEffect* this, Vec3f startPos, Vec3f endPos);
f32 func_80970F58(GlobalContext* globalCtx, s32 arg1);
void func_8097670C(DemoEffect* this, GlobalContext* globalCtx, s32 arg2, f32 arg3);
void func_809765AC(DemoEffect* this, GlobalContext* globalCtx, s32 arg2, s32 arg3);
void func_809733C8(Vec3f arg0, DemoEffect* this, f32 arg2);

// TODO: Document this data.
extern Gfx kokiriJewel[];
extern Gfx kokiriJewelHolder[];
extern Gfx goronJewel[];
extern Gfx goronJewelHolder[];
extern Gfx zoraJewel[];
extern Gfx zoraJewelHolder[];

extern Gfx D_04010130[];

extern Vtx D_06000000[];
extern Vtx D_06000060[];

extern TransformUpdateIndex D_06000050;
extern SkelCurveLimbList D_060012E8;

extern Gfx D_06000040[];
extern Gfx D_06000190[];
extern Gfx D_06000330[];
extern Gfx D_06000600[];
extern Gfx D_06000840[];
extern Gfx D_06000980[];
extern Gfx D_060011D0[];
extern Gfx D_06003C50[];

const ActorInit Demo_Effect_InitVars = {
    ACTOR_DEMO_EFFECT,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(DemoEffect),
    (ActorFunc)DemoEffect_Init,
    (ActorFunc)DemoEffect_Destroy,
    (ActorFunc)DemoEffect_Update,
    NULL,
};

s16 D_80976810[] = { 0x0000, 0x0000 };

// The object used by the effectType
s16 D_80976814[] = {
    /* 0x00 */ OBJECT_EFC_CRYSTAL_LIGHT,
    /* 0x01 */ OBJECT_EFC_FIRE_BALL,
    /* 0x02 */ OBJECT_GAMEPLAY_KEEP,
    /* 0x03 */ OBJECT_EFC_LGT_SHOWER,
    /* 0x04 */ OBJECT_GOD_LGT,
    /* 0x05 */ OBJECT_GOD_LGT,
    /* 0x06 */ OBJECT_GOD_LGT,
    /* 0x07 */ OBJECT_LIGHT_RING,
    /* 0x08 */ OBJECT_TRIFORCE_SPOT,
    /* 0x09 */ OBJECT_GI_MEDAL,
    /* 0x0A */ OBJECT_GI_MEDAL,
    /* 0x0B */ OBJECT_GI_MEDAL,
    /* 0x0C */ OBJECT_GI_MEDAL,
    /* 0x0D */ OBJECT_GI_MEDAL,
    /* 0x0E */ OBJECT_GI_MEDAL,
    /* 0x0F */ OBJECT_EFC_TW,
    /* 0x10 */ OBJECT_LIGHT_RING,
    /* 0x11 */ OBJECT_LIGHT_RING,
    /* 0x12 */ OBJECT_GAMEPLAY_KEEP,
    /* 0x13 */ OBJECT_GI_JEWEL,
    /* 0x14 */ OBJECT_GI_JEWEL,
    /* 0x15 */ OBJECT_GI_JEWEL,
    /* 0x16 */ OBJECT_GI_JEWEL,
    /* 0x17 */ OBJECT_GI_M_ARROW,
    /* 0x18 */ OBJECT_EFC_TW,
    /* 0x19 */ OBJECT_EFC_TW
};

// TODO: tw indices for func_809720AC
u8 D_80976848[] = {
    0x01, 0x01, 0x02, 0x00, 0x01, 0x01, 0x02, 0x00, 0x01, 0x02, 0x00, 0x02,
    0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00 // Likely alignment.
};

// TODO: jewel softsprite/particle related
Color_RGB8 D_80976860[5][2] = { { { 0xFF, 0xFF, 0xFF }, { 0x64, 0xFF, 0x00 } },
                                { { 0xFF, 0xFF, 0xFF }, { 0xC8, 0x00, 0x96 } },
                                { { 0xFF, 0xFF, 0xFF }, { 0x00, 0x64, 0xFF } },
                                { { 0x00, 0x00, 0x00 }, { 0x00, 0x00, 0x00 } },
                                { { 0xDF, 0x00, 0x00 }, { 0x00, 0x00, 0x00 } } };

void DemoEffect_SetupUpdate(DemoEffect* this, DemoEffectFunc updateFunc) {
    this->updateFunc = updateFunc;
}

f32 func_80970F58(GlobalContext* globalCtx, s32 arg1) {
    f32 frameDivisor = func_8006F93C(globalCtx->csCtx.npcActions[arg1]->endFrame,
                                     globalCtx->csCtx.npcActions[arg1]->startFrame, globalCtx->csCtx.frames);
    if (frameDivisor > 1.0f) {
        frameDivisor = 1.0f;
    }
    return frameDivisor;
}

void func_80970FB4(GlobalContext* globalCtx, DemoEffect* this) {
    this->initDrawFunc = &DemoEffect_DrawJewel;
    if (LINK_IS_CHILD) {
        this->initUpdateFunc = &DemoEffect_UpdateJewelChild;
    } else {
        this->initUpdateFunc = &DemoEffect_UpdateJewelAdult;
    }
    if (globalCtx->sceneNum == SCENE_TOKINOMA) {
        Actor_SetScale(&this->actor, 0.35f);
    } else {
        Actor_SetScale(&this->actor, 0.10f);
    }
    this->unk_18C = 0x01;
    this->actor.shape.rot.x = 0x4000;
    func_80973424(this);
    this->unk_vec3s.z = 0x00;
    this->unk_186 = 0x00;
    this->unk_vec3s.x = this->unk_vec3s.y = this->unk_vec3s.z;
    D_80976810[0x00] = 0x00;
}

void func_80971070(DemoEffect* this) {
    this->unk_184 = 0x00;
    this->unk_185 = 0x00;
    this->initDrawFunc = &DemoEffect_DrawMedal;
    this->initUpdateFunc = &DemoEffect_UpdateMedal;
    Actor_SetScale(&this->actor, 0.25f);
    this->unk_18C = 0x06;
}

void DemoEffect_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DemoEffect* this = THIS;
    s32 effectType;
    s32 lightEffect;
    s32 objectIndex;
    DemoEffect* crystalLight;
    DemoEffect* lightRing;

    effectType = GET_EFFECT_TYPE(&this->actor);
    lightEffect = GET_LIGHT_EFFECT_COLOUR_PARAM(&this->actor);

    osSyncPrintf("\x1b[36m no = %d\n\x1b[m", effectType);

    objectIndex =
        D_80976814[effectType] == 0x01 ? 0x00 : Object_GetIndex(&globalCtx->objectCtx, D_80976814[effectType]);

    osSyncPrintf("\x1b[36m bank_ID = %d\n\x1b[m", objectIndex);

    if (objectIndex < 0x00) {
        __assert("0", "../z_demo_effect.c", 0x2D3);
    } else {
        this->initObjectBankIndex = objectIndex;
    }

    this->unk_18A = 0x00;
    Actor_SetScale(&this->actor, 0.2f);

    switch (effectType) {
        case Demo_Effect_Crystal_Light:
            this->initDrawFunc = &DemoEffect_DrawCrystalLight;
            this->initUpdateFunc = &DemoEffect_UpdateCrystalLight;
            break;

        case Demo_Effect_Fire_Ball:
            this->initDrawFunc = &DemoEffect_DrawFireBall;
            this->initUpdateFunc = &DemoEffect_UpdateFireBall;
            Actor_SetScale(&this->actor, 0.1f);
            break;

        case Demo_Effect_Blue_Orb:
            this->initDrawFunc = &DemoEffect_DrawBlueOrb;
            this->initUpdateFunc = &DemoEffect_UpdateBlueOrb;
            this->unk_184 = 0xFF;
            this->unk_185 = 0x05;
            this->unk_188 = 0x00;
            Actor_SetScale(&this->actor, 0.05f);
            this->primXluColor[0] = 0xBC;
            this->primXluColor[1] = 0xFF;
            this->primXluColor[2] = 0xFF;
            this->envXluColor[1] = 0x64;
            this->envXluColor[2] = 0xFF;
            this->envXluColor[0] = 0x00;
            break;

        case Demo_Effect_Light_Effect:
            this->initDrawFunc = &DemoEffect_DrawLightEffect;
            this->initUpdateFunc = &DemoEffect_UpdateLightEffect;
            this->unk_184 = 0xFF;
            this->unk_185 = 0x00;
            this->unk_186 = 0x00;
            this->unk_188 = 0x00;
            // TODO: lightEffect enums
            switch (lightEffect) {
                case 0x00:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[1] = 0x32;
                    this->envXluColor[0] = 0xFF;
                    this->envXluColor[2] = 0x00;
                    break;

                case 0x01:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[1] = 0x96;
                    this->envXluColor[0] = 0x00;
                    this->envXluColor[2] = 0xFF;
                    break;

                case 0x02:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[1] = 0xC8;
                    this->envXluColor[0] = 0x00;
                    this->envXluColor[2] = 0x00;
                    break;

                case 0x03:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[1] = 0x96;
                    this->envXluColor[0] = 0xFF;
                    this->envXluColor[2] = 0x00;
                    break;

                case 0x04:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[0] = 0xC8;
                    this->envXluColor[1] = 0xFF;
                    this->envXluColor[2] = 0x00;
                    break;

                case 0x05:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    // clang-format off
                    this->envXluColor[0] = 0xC8;this->envXluColor[1] = 0x32; // Sameline prevents reordering
                    // clang-format on
                    this->envXluColor[2] = 0xFF;
                    break;

                case 0x06:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[1] = 0xC8;
                    this->envXluColor[0] = 0x00;
                    this->envXluColor[2] = 0x00;
                    break;
            }
            this->unk_18C = 0x07;
            Actor_SetScale(thisx, 0.0f);
            break;

        case Demo_Effect_Lgt_Shower:
            this->unk_184 = 0xFF;
            this->initDrawFunc = &DemoEffect_DrawLgtShower;
            this->initUpdateFunc = &DemoEffect_UpdateLgtShower;
            break;

        case Demo_Effect_God_Lgt_Din:
            Actor_SetScale(&this->actor, 0.1f);
            this->initDrawFunc = &DemoEffect_DrawGodLgt;
            this->primXluColor[1] = 0xAA;
            this->primXluColor[0] = 0xFF;
            this->primXluColor[2] = 0xFF;
            this->envXluColor[0] = 0xFF;
            this->envXluColor[2] = 0xFF;
            this->envXluColor[1] = 0x00;
            this->unk_184 = 0x00;
            this->unk_186 = 0x00;
            this->initUpdateFunc = &DemoEffect_UpdateGodLgtDin;
            this->unk_18C = 0x00;
            break;

        case Demo_Effect_God_Lgt_Nayru:
            if (gSaveContext.entranceIndex == 0x013D) {
                Actor_SetScale(&this->actor, 1.0f);
            } else {
                Actor_SetScale(&this->actor, 0.1f);
            }
            this->initDrawFunc = &DemoEffect_DrawGodLgt;
            this->primXluColor[0] = 0xAA;
            this->primXluColor[1] = 0xFF;
            this->primXluColor[2] = 0xFF;
            this->envXluColor[1] = 0x28;
            this->envXluColor[2] = 0xFF;
            this->envXluColor[0] = 0x00;
            this->unk_184 = 0x01;
            this->unk_185 = 0x04;
            this->unk_186 = 0x00;
            this->unk_188 = 0x00;
            this->initUpdateFunc = &DemoEffect_UpdateGodLgtNayru;
            this->unk_18C = 0x01;
            break;

        case Demo_Effect_God_Lgt_Farore:
            if (gSaveContext.entranceIndex == 0xEE) {
                Actor_SetScale(&this->actor, 2.4f);
            } else {
                Actor_SetScale(&this->actor, 0.1f);
            }
            this->initDrawFunc = &DemoEffect_DrawGodLgt;
            this->primXluColor[0] = 0xAA;
            this->primXluColor[2] = 0xAA;
            this->primXluColor[1] = 0xFF;
            this->envXluColor[1] = 0xC8;
            this->envXluColor[0] = 0x00;
            this->envXluColor[2] = 0x00;
            this->unk_184 = 0x02;
            this->unk_186 = 0x00;
            this->initUpdateFunc = &DemoEffect_UpdateGodLgtFarore;
            this->unk_18C = 0x02;
            break;

        case Demo_Effect_Light_Ring_1:
            this->initDrawFunc = &DemoEffect_DrawLightRing;
            this->initUpdateFunc = &DemoEffect_UpdateLightRing1;
            this->unk_188 = 0x14;
            this->unk_184 = 0x04;
            this->unk_185 = 0xFF;
            break;

        case Demo_Effect_Light_Ring_3:
            this->initDrawFunc = &DemoEffect_DrawLightRing;
            this->initUpdateFunc = &DemoEffect_UpdateLightRing3;
            this->unk_188 = 0x14;
            this->unk_184 = 0x04;
            this->unk_185 = 0x00;
            this->unk_18C = 0x04;
            break;

        case Demo_Effect_Light_Ring_2:
            this->initDrawFunc = &DemoEffect_DrawLightRing;
            this->initUpdateFunc = &DemoEffect_UpdateLightRing2;
            this->unk_188 = 0x015F;
            this->unk_184 = 0x02;
            this->unk_185 = 0x00;
            break;

        case Demo_Effect_Triforce_Spot:
            this->initDrawFunc = &DemoEffect_DrawTriforceSpot;
            this->initUpdateFunc = &DemoEffect_UpdateTriforceSpot;
            this->unk_186 = 0x00;
            this->unk_185 = 0x00;
            this->unk_184 = 0x00;
            this->unk_188 = 0x00;
            this->primXluColor[0] = 0x00;
            this->unk_18C = 0x03;

            Actor_SetScale(&this->actor, 0.020f);

            crystalLight = (DemoEffect*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT,
                                           this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                           0x00, 0x00, 0x00, Demo_Effect_Crystal_Light);

            if (crystalLight) {
                Actor_SetScale(&crystalLight->actor, 0.6f);
            }

            // Necessary to match. Otherwise has function argument reordering.
            if (globalCtx) {}

            lightRing = (DemoEffect*)Actor_SpawnAsChild(&globalCtx->actorCtx, crystalLight, globalCtx, ACTOR_DEMO_EFFECT,
                                           this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                           0x00, 0x00, 0x00, Demo_Effect_Light_Ring_3);

            if (lightRing) {
                Actor_SetScale(&lightRing->actor, 0.4f);
            }
            break;

        case Demo_Effect_Medal_Fire:
            func_80971070(this);
            this->unk_186 = 0x0C;
            break;

        case Demo_Effect_Medal_Water:
            func_80971070(this);
            this->unk_186 = 0x0D;
            break;

        case Demo_Effect_Medal_Forest:
            func_80971070(this);
            this->unk_186 = 0x0B;
            break;

        case Demo_Effect_Medal_Spirit:
            func_80971070(this);
            this->unk_186 = 0x0E;
            break;

        case Demo_Effect_Medal_Shadow:
            func_80971070(this);
            this->unk_186 = 0x0F;
            break;

        case Demo_Effect_Medal_Light:
            func_80971070(this);
            this->unk_186 = 0x10;
            break;

        case Demo_Effect_Unknown:
            func_80971070(this);
            this->unk_186 = 0x61;
            break;

        case Demo_Effect_TW_2:
        case Demo_Effect_TW_3:
            this->actor.flags |= 0x2000000;
        case Demo_Effect_TW_1:
            this->initDrawFunc = &DemoEffect_DrawTimeWarp;
            this->initUpdateFunc = &DemoEffect_UpdateTimeWarp;
            this->envXluColor[0] = 0x00;
            this->envXluColor[1] = 0x64;
            this->envXluColor[2] = 0xFF;
            SkelCurve_Clear(&this->skelCurve);
            this->unk_188 = 0x00;
            break;

        case Demo_Effect_Jewel_Kokiri:
            this->jewelDisplayList = kokiriJewel;
            this->jewelHolderDisplayList = kokiriJewelHolder;
            this->unk_184 = 0x13;
            this->unk_185 = 0x00;
            func_80970FB4(globalCtx, this);
            break;

        case Demo_Effect_Jewel_Goron:
            this->jewelDisplayList = goronJewel;
            this->jewelHolderDisplayList = goronJewelHolder;
            this->unk_184 = 0x14;
            this->unk_185 = 0x00;
            func_80970FB4(globalCtx, this);
            break;

        case Demo_Effect_Jewel_Zora:
            this->jewelDisplayList = zoraJewel;
            this->jewelHolderDisplayList = zoraJewelHolder;
            this->unk_184 = 0x15;
            this->unk_185 = 0x00;
            func_80970FB4(globalCtx, this);
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTOR_EN_DOOR);
            if ((globalCtx->sceneNum == SCENE_BDAN) && (gSaveContext.infTable[20] & 0x20)) {
                Actor_Kill(&this->actor);
                return;
            }
            break;

        case Demo_Effect_Arrow:
            this->initDrawFunc = NULL;
            this->initUpdateFunc = &DemoEffect_UpdateArrow;
            this->unk_184 = 0x00;
            this->unk_18C = 0x02;
            break;

        default:
            __assert("0", "../z_demo_effect.c", 0x0426);
            break;
    }

    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    DemoEffect_SetupUpdate(this, &DemoEffect_Wait);
}

void DemoEffect_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 effectType = GET_EFFECT_TYPE(thisx);

    if (effectType == Demo_Effect_TW_1 || effectType == Demo_Effect_TW_2 || effectType == Demo_Effect_TW_3) {
        SkelCurve_Destroy(globalCtx, &THIS->skelCurve);
    }
}

void DemoEffect_Wait(DemoEffect* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->initObjectBankIndex)) {
        this->actor.objBankIndex = this->initObjectBankIndex;
        this->actor.draw = (ActorFunc)this->initDrawFunc;
        this->updateFunc = this->initUpdateFunc;

        osSyncPrintf("\x1b[36m 転送終了 move_wait \x1b[m");
    }
}

void DemoEffect_UpdateFireBall(DemoEffect* this, GlobalContext* globalCtx) {
    if (this->actor.parent) {
        // Struct copy affects regalloc
        this->actor.posRot.pos.x = this->actor.parent->posRot.pos.x;
        this->actor.posRot.pos.y = this->actor.parent->posRot.pos.y;
        this->actor.posRot.pos.z = this->actor.parent->posRot.pos.z;
    }
}

void DemoEffect_UpdateCrystalLight(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect_UpdateFireBall(this, globalCtx);
    this->actor.posRot.pos.y += 14.0f;
}

void func_80971A28(DemoEffect* this, GlobalContext* globalCtx, s32 arg2) {
    Vec3f vec1, vec2, ssPos;
    Color_RGBA8 color1, color2;

    if (arg2 != 0x01 || (globalCtx->gameplayFrames & 1) == 0x00) {
        color1.r = 0xFF;
        color1.g = 0xFF;
        color1.b = 0xFF;
        color2.r = 0xFF;
        color2.g = 0xFF;
        color2.b = 0x64;
        // Necessary to set color1.a after color2 to match
        color1.a = 0x00;

        vec1.y = 0.0f;

        vec2.x = 0.0f;
        vec2.y = -0.1f;
        vec2.z = 0.0f;

        if (arg2) {
            vec1.x = Math_Rand_ZeroOne() - 0.5f;
            vec1.z = Math_Rand_ZeroOne() - 0.5f;
        } else {
            vec1.x = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
            vec1.z = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
        }

        ssPos.x = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.x;
        ssPos.y = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.y;
        ssPos.z = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.z;

        EffectSsKiraKira_SpawnDispersed(globalCtx, &ssPos, &vec1, &vec2, &color1, &color2, 0x03E8, 0x10);
    }
}

void DemoEffect_UpdateMedal(DemoEffect* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->unk_18C]) {
        if (this->unk_184) {
            func_8097670C(this, globalCtx, this->unk_18C, 0.1f);
        } else {
            func_809767B0(this, globalCtx, this->unk_18C);
            this->unk_184 = 0x01;
        }

        if (this->unk_186 != 0x61) {
            this->actor.shape.rot.x = -0x1F40;
        } else {
            this->actor.shape.rot.y += 0x400;
        }

        Actor_SetScale(thisx, 0.20f);

        if (gSaveContext.entranceIndex == 0x53) {
            switch (globalCtx->csCtx.npcActions[this->unk_18C]->action) {
                case 0x02:
                    func_80971A28(this, globalCtx, 0x00);
                    break;
                case 0x03:
                    func_80971A28(this, globalCtx, 0x01);
                    break;
            }
        }
        switch (globalCtx->csCtx.npcActions[this->unk_18C]->action) {
            case 0x02:
                if (gSaveContext.entranceIndex == 0x53) {
                    Audio_PlayActorSound2(thisx, NA_SE_EV_MEDAL_APPEAR_L - SFX_FLAG);
                } else {
                    func_800788CC(NA_SE_EV_MEDAL_APPEAR_S - SFX_FLAG);
                }
                if (this->unk_186 != 0x61) {
                    this->actor.shape.rot.y += 0x3E80;
                }
                this->unk_188 = 0x3E80;
                break;
            case 0x03:
                this->unk_188 -= (s16)((f32)(this->unk_188 - 0x3E8) * 0.10f);
                if (this->unk_186 != 0x61) {
                    this->actor.shape.rot.y += this->unk_188;
                }
                if (gSaveContext.entranceIndex == 0x53) {
                    Audio_PlayActorSound2(thisx, NA_SE_EV_MEDAL_APPEAR_L - SFX_FLAG);
                } else {
                    func_800788CC(NA_SE_EV_MEDAL_APPEAR_S - SFX_FLAG);
                }
                break;
            case 0x04:
                Audio_PlayActorSound2(thisx, NA_SE_EV_MEDAL_APPEAR_S - SFX_FLAG);
                break;
        }
    }
}

void DemoEffect_UpdateTimeWarp(DemoEffect* this, GlobalContext* globalCtx) {
    s32 actorType = GET_EFFECT_TYPE(&this->actor);

    if (!SkelCurve_Init(globalCtx, &this->skelCurve, &D_060012E8, &D_06000050)) {
        __assert("0", "../z_demo_effect.c", 0x0503);
    }

    if (actorType == Demo_Effect_TW_2 || actorType == Demo_Effect_TW_3) {
        SkelCurve_SetAnim(&this->skelCurve, &D_06000050, 1.0f, 59.0f, 1.0f, 1.7f);
        SkelCurve_Update(globalCtx, &this->skelCurve);
        this->updateFunc = &func_80972344;

        if (actorType == Demo_Effect_TW_2) {
            Actor_SetScale(&this->actor, 0.14f);
            return;
        }

        Actor_SetScale(&this->actor, 84 * 0.001f);
        return;
    }

    if (gSaveContext.sceneSetupIndex == 5 || gSaveContext.sceneSetupIndex == 4 ||
        (gSaveContext.entranceIndex == 0x0324 && !((gSaveContext.eventChkInf[0x0C] & 0x0200)))) {
        SkelCurve_SetAnim(&this->skelCurve, &D_06000050, 1.0f, 59.0f, 59.0f, 0.0f);
        SkelCurve_Update(globalCtx, &this->skelCurve);
        this->updateFunc = &func_809721D0;
        osSyncPrintf("\x1b[36m 縮むバージョン \n\x1b[m");
        return;
    }

    SkelCurve_SetAnim(&this->skelCurve, &D_06000050, 1.0f, 59.0f, 1.0f, 1.0f);
    SkelCurve_Update(globalCtx, &this->skelCurve);
    this->updateFunc = &func_80972008;
    osSyncPrintf("\x1b[36m 通常 バージョン \n\x1b[m");
    // Necessary to match
    if (1) {}
}

void func_80972008(DemoEffect* this, GlobalContext* globalCtx) {
    if (Flags_GetEnv(globalCtx, 0x01)) {
        if (!(this->unk_18A & 0x02)) {
            func_800F3F3C(0x00);
            this->unk_18A |= 0x02;
        }

        if (SkelCurve_Update(globalCtx, &this->skelCurve)) {
            SkelCurve_SetAnim(&this->skelCurve, &D_06000050, 1.0f, 60.0f, 59.0f, 0.0f);
        }
    }
}

void func_809720AC(f32 arg0) {
    Vtx* data;
    s32 i;
    u8 unk[3];

    // This function uses the data in obj_efc_tw offset 0x0060 to 0x01B0
    data = (Vtx*)SEGMENTED_TO_VIRTUAL(D_06000060);

    unk[0] = 0x00;
    unk[1] = (s32)(202.0f * arg0);
    unk[2] = (s32)(255.0f * arg0);

    for (i = 0; i < 0x15; i++) {
        if (D_80976848[i]) {
            (data + i)->v.cn[0x03] = unk[D_80976848[i]];
        }
    }
}

void func_809721D0(DemoEffect* this, GlobalContext* globalCtx) {
    f32 unk_1;

    this->unk_188++;

    if (this->unk_188 >= 0xFB) {
        if (gSaveContext.entranceIndex == 0x0324) {
            gSaveContext.eventChkInf[0x0C] |= 0x200;
        }

        Actor_Kill(&this->actor);
        return;
    }

    if (this->unk_188 >= 0x65) {
        unk_1 = (0xFA - this->unk_188) * (1.0f / 750.0f);
        this->actor.scale.x = unk_1;
        this->actor.scale.z = unk_1;
        func_809720AC(unk_1 * 5.0f);
    }

    func_8002F948(&this->actor, NA_SE_EV_TIMETRIP_LIGHT - SFX_FLAG);
}

void func_80972288(DemoEffect* this, GlobalContext* globalCtx) {
    f32 unk_1;
    f32 unk_2;

    this->unk_188++;

    if (this->unk_188 < 0x65) {
        unk_1 = (0x64 - this->unk_188) * 0.010f;
        unk_2 = unk_1 * 0.14f;

        if (GET_EFFECT_TYPE(&this->actor) == Demo_Effect_TW_3) {
            unk_2 *= 0.6f;
        }

        this->actor.scale.x = unk_2;
        this->actor.scale.z = unk_2;
        func_809720AC(unk_1);
        func_8002F948(&this->actor, NA_SE_EV_TIMETRIP_LIGHT - SFX_FLAG);
        return;
    }

    func_809720AC(1.0f);
    Actor_Kill(&this->actor);
}

void func_80972344(DemoEffect* this, GlobalContext* globalCtx) {
    func_8002F948(&this->actor, NA_SE_EV_TIMETRIP_LIGHT - SFX_FLAG);

    if (SkelCurve_Update(globalCtx, &this->skelCurve)) {
        SkelCurve_SetAnim(&this->skelCurve, &D_06000050, 1.0f, 60.0f, 59.0f, 0.0f);
        this->updateFunc = &func_80972288;
        this->unk_188 = 0x00;
    }
}

void DemoEffect_UpdateTriforceSpot(DemoEffect* this, GlobalContext* globalCtx) {
    this->unk_188 += 0x03E8;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->unk_18C]) {
        func_809765AC(this, globalCtx, this->unk_18C, 0x00);

        if (globalCtx->csCtx.npcActions[this->unk_18C]->action == 0x02) {
            if (this->primXluColor[0] < 0x8C) {
                this->primXluColor[0]++;
            }

            if (this->primXluColor[0] < 0x1E) {
                this->unk_184 = ((s32)this->primXluColor[0]) * 8.5f;
            } else {
                this->unk_184 = 0xFF;

                if (this->primXluColor[0] < 0x3C) {
                    this->unk_185 = (((s32)this->primXluColor[0]) - 0x1E) * 8.5f;
                } else {
                    if (this->primXluColor[0] < 0x8D) {
                        this->unk_185 = 0xFF;
                        this->unk_186 = (((s32)this->primXluColor[0]) - 0x3C) * 3.1875f;
                    }
                }
            }
        }

        if (gSaveContext.entranceIndex == 0xA0 && gSaveContext.sceneSetupIndex == 0x06 &&
            globalCtx->csCtx.frames == 0x8F) {
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_RING_EXPLOSION);
        }
    }
}

void DemoEffect_UpdateLightRing2(DemoEffect* this, GlobalContext* globalCtx) {
    if (this->unk_188 < this->unk_184) {
        Actor_Kill(&this->actor);
        this->unk_188 = 0x00;
    } else {
        this->unk_188 -= this->unk_184;
    }

    if (this->unk_188 < 0x0100) {
        if (this->unk_188 >= 0xE1) {
            this->unk_185 = (-this->unk_188 * 0x08) + 0x800;
        } else {
            this->unk_185 = 0xFF;
        }
    }

    if (this->unk_188 == 0xFF) {
        func_800F3F3C(0x05);
    }
}

void DemoEffect_UpdateLightRing1(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect_UpdateFireBall(this, globalCtx);
    this->unk_188 += this->unk_184;

    if (this->unk_188 >= 0xE1) {
        this->unk_185 = (-this->unk_188 * 0x08) + 0x0800;
    }
    if (this->unk_188 >= 0x0100) {
        this->unk_188 = 0xFF;
        Actor_Kill(&this->actor);
        this->unk_188 = 0x00;
    }
}

void DemoEffect_UpdateLightRing3(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect* blueOrb;

    DemoEffect_UpdateFireBall(this, globalCtx);

    if (globalCtx->csCtx.state) {
        if (globalCtx->csCtx.npcActions[this->unk_18C] && globalCtx->csCtx.npcActions[this->unk_18C]->action == 0x02) {
            blueOrb = (DemoEffect*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT,
                                               this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                                               this->actor.posRot.pos.z, 0x00, 0x00, 0x00, Demo_Effect_Blue_Orb);

            if (blueOrb) {
                Actor_SetScale(&blueOrb->actor, 0.0f);
            }

            this->updateFunc = &DemoEffect_UpdateLightRing1;
            this->unk_185 = 0xFF;
        }
    }
}

void func_80972868(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect* effect;

    Actor_MoveForward(&this->actor);
    this->actor.speedXZ = this->actor.speedXZ + (this->actor.gravity * 0.5f);

    if (this->unk_184) {
        this->unk_184--;
        return;
    }

    effect = (DemoEffect*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                                      this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0x00, 0x00, 0x00,
                                      Demo_Effect_Blue_Orb);
    if (effect) {
        Actor_SetScale(&effect->actor, 0.0f);
    }

    effect = (DemoEffect*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                                      this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0x00, 0x00, 0x00,
                                      Demo_Effect_Light_Ring_1);
    if (effect) {
        Actor_SetScale(&effect->actor, 0.1f);
    }

    effect = (DemoEffect*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                                      this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0x00, 0x00, 0x00,
                                      Demo_Effect_Light_Ring_2);
    if (effect) {
        Actor_SetScale(&effect->actor, 0.2f);
    }

    func_800788CC(NA_SE_IT_DM_RING_EXPLOSION);
    Actor_Kill(&this->actor);
}

void func_809729B8(DemoEffect* this, GlobalContext* globalCtx) {
    Actor* parent = this->actor.parent;

    this->actor.posRot.rot.y = parent->shape.rot.y;
    this->unk_184 = 0x32;
    this->actor.speedXZ = 1.5f;
    this->actor.minVelocityY = -1.5f;
    this->actor.gravity = -0.03f;
    this->updateFunc = &func_80972868;
}

void func_80972A04(DemoEffect* this, GlobalContext* globalCtx) {
    this->unk_184 = this->unk_185 << 0x04;
    this->unk_185--;
    Actor_SetScale(&this->actor, this->actor.scale.x * 0.9f);
    if (!this->unk_185) {
        Actor_Kill(&this->actor);
    }
}

void DemoEffect_UpdateBlueOrb(DemoEffect* this, GlobalContext* globalCtx) {
    if (this->actor.parent) {
        // s32 cast necessary to match codegen. Without the explicit cast to u32 the compiler generates complex cast of
        // u8 to float
        Actor_SetScale(&this->actor, (((5.0f - (s32)this->unk_185) * 0.01f) * 10.0f) * this->actor.parent->scale.x);
    } else {
        Actor_SetScale(&this->actor, (5.0f - (s32)this->unk_185) * 0.01f);
    }

    if (this->unk_185) {
        this->unk_185--;
    } else {
        this->unk_185 = 0x0F;
        this->updateFunc = &func_80972A04;
    }
}

void DemoEffect_UpdateLightEffect(DemoEffect* this, GlobalContext* globalCtx) {
    u16 action;
    s32 unkParam;

    unkParam = GET_LIGHT_EFFECT_SIZE_PARAM(&this->actor);

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->unk_18C]) {
        func_809765AC(this, globalCtx, this->unk_18C, 0x00);
        switch (globalCtx->csCtx.npcActions[this->unk_18C]->action) {
            case 0x02:
                if (this->unk_188 < 0xF0) {
                    if (!unkParam) {
                        if (this->actor.scale.x < 0.23f) {
                            this->actor.scale.x += 0.001f;
                            Actor_SetScale(&this->actor, this->actor.scale.x);
                        }
                    } else {
                        if (this->actor.scale.x < 2.03f) {
                            this->actor.scale.x += 0.05f;
                            Actor_SetScale(&this->actor, this->actor.scale.x);
                        }
                    }
                }
                this->unk_188 += 0x06;
                this->unk_185 += 0x01;
                break;

            case 0x03:
                Math_SmoothScaleMaxMinF(&this->actor.scale.x, 0.0f, 0.1f, 0.1f, 0.005f);
                Actor_SetScale(&this->actor, this->actor.scale.x);
                break;

            default:
                break;
        }

        if (globalCtx->sceneNum == SCENE_SPOT04 && gSaveContext.sceneSetupIndex == 0x06 &&
            globalCtx->csCtx.frames == 0xC5) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_WHITE_OUT);
        }

        if (globalCtx->sceneNum == SCENE_SPOT16 && gSaveContext.sceneSetupIndex == 0x05) {
            if (func_809746B4(this, globalCtx, 0x01) == 0x00) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
            }
            if (globalCtx->csCtx.frames == 0x0280) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_WHITE_OUT);
            }

            // Necessary to match
            if (0) {}
        }

        if (globalCtx->sceneNum == SCENE_SPOT08 && gSaveContext.sceneSetupIndex == 0x04) {
            if (func_809746B4(this, globalCtx, 0x01) == 0x00) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
            }
            if (globalCtx->csCtx.frames == 0x0288) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_WHITE_OUT);
            }

            // Necessary to match
            if (0) {}
        }

        if (globalCtx->sceneNum == SCENE_TOKINOMA && gSaveContext.sceneSetupIndex == 0x0E) {
            // do {} while(0) necessary to match
            do {
                if (globalCtx->csCtx.npcActions[this->unk_18C]->action == 0x02) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
                }
            } while (0);
        }

        if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI || globalCtx->sceneNum == SCENE_YOUSEI_IZUMI_YOKO) {
            if (globalCtx->csCtx.npcActions[this->unk_18C]->action == 0x02) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
            }
        }
    }
}

void DemoEffect_UpdateLgtShower(DemoEffect* this, GlobalContext* globalCtx) {
    if (this->unk_184 >= 0x04) {
        this->unk_184 -= 0x03;
        this->actor.scale.x *= 1.05f;
        this->actor.scale.y *= 1.05f;
        this->actor.scale.z *= 1.05f;
    } else {
        Actor_Kill(&this->actor);
    }
}

void DemoEffect_UpdateGodLgtDin(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect* fireBall;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->unk_18C]) {
        func_809765AC(this, globalCtx, this->unk_18C, 0x01);

        if (globalCtx->csCtx.npcActions[this->unk_18C]->action == 0x03) {
            fireBall = (DemoEffect*)Actor_SpawnAsChild(
                &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0x00, 0x00, 0x00, Demo_Effect_Fire_Ball);

            if (fireBall) {
                fireBall->initUpdateFunc = &func_809729B8;
                Actor_SetScale(&fireBall->actor, 0.020f);
            }
        }

        if (gSaveContext.entranceIndex == 0xA0) {
            switch (gSaveContext.sceneSetupIndex) {
                case 0x04:
                    if (globalCtx->csCtx.frames == 0x0120) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    if (globalCtx->csCtx.frames == 0x027B) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    break;

                case 0x06:
                    if (globalCtx->csCtx.frames == 0x37) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                case 0x0B:
                    if (globalCtx->csCtx.frames == 0x015E) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                default:
                    break;
            }
        }
    }
}

void DemoEffect_UpdateGodLgtNayru(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect* lightRing;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->unk_18C]) {
        func_809765AC(this, globalCtx, this->unk_18C, 0x01);

        if (globalCtx->csCtx.npcActions[this->unk_18C]->action == 0x03) {
            if (this->unk_188) {
                this->unk_188--;
            } else {
                this->unk_188 = this->unk_185;
                lightRing = (DemoEffect*)Actor_Spawn(
                    &globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                    this->actor.posRot.pos.y, this->actor.posRot.pos.z, this->actor.posRot.rot.x + 0x4000,
                    this->actor.posRot.rot.y, this->actor.posRot.rot.z, Demo_Effect_Light_Ring_1);

                if (lightRing) {
                    Actor_SetScale(&lightRing->actor, 1.0f);
                }
            }
        }

        if (gSaveContext.entranceIndex == 0xA0) {
            switch (gSaveContext.sceneSetupIndex) {
                case 0x04:
                    if (globalCtx->csCtx.frames == 0x012A) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    break;

                case 0x06:
                    if (globalCtx->csCtx.frames == 0x69) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                case 0x0B:
                    if (globalCtx->csCtx.frames == 0x0168) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                default:
                    break;
            }
        }

        if (gSaveContext.entranceIndex == 0x013D && gSaveContext.sceneSetupIndex == 0x04) {
            if (globalCtx->csCtx.frames == 0x48) {
                Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
            }
            if (globalCtx->csCtx.frames == 0x50) {
                func_800F3F3C(0x04);
            }
        }
    }
}

void DemoEffect_UpdateGodLgtFarore(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect* lgtShower;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->unk_18C]) {
        func_809765AC(this, globalCtx, this->unk_18C, 0x01);

        if (globalCtx->csCtx.npcActions[this->unk_18C]->action == 0x03) {
            lgtShower = (DemoEffect*)Actor_SpawnAsChild(
                &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                this->actor.posRot.pos.y - 150.0f, this->actor.posRot.pos.z, 0x00, 0x00, 0x00, Demo_Effect_Lgt_Shower);

            if (lgtShower) {
                lgtShower->actor.scale.x = 0.23f;
                lgtShower->actor.scale.y = 0.15f;
                lgtShower->actor.scale.z = 0.23f;
            }

            Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
            func_800F3F3C(0x03);
        }

        if (gSaveContext.entranceIndex == 0xA0) {
            switch (gSaveContext.sceneSetupIndex) {
                case 0x04:
                    if (globalCtx->csCtx.frames == 0x013B) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    break;

                case 0x06:
                    if (globalCtx->csCtx.frames == 0x50) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                case 0x0B:
                    if (globalCtx->csCtx.frames == 0x0172) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                default:
                    break;
            }
        }
    }
}

void func_809733C8(Vec3f arg0, DemoEffect* this, f32 arg2) {
    this->actor.posRot.pos.x += (arg0.x - this->actor.posRot.pos.x) * arg2;
    this->actor.posRot.pos.y += (arg0.y - this->actor.posRot.pos.y) * arg2;
    this->actor.posRot.pos.z += (arg0.z - this->actor.posRot.pos.z) * arg2;
}

void func_80973424(DemoEffect* this) {
    u8 unk_184 = this->unk_184;
    u8 unk_17F;
    u8 unk_183;

    // TODO: Needs enums in the switch
    switch (unk_184) {
        case 0x13:
            this->primXluColor[2] = 0xA0;
            this->primXluColor[0] = 0xFF;
            this->primXluColor[1] = 0xFF;
            this->envXluColor[0] = 0x00;
            this->envXluColor[1] = 0xFF;
            this->envXluColor[2] = 0x00;
            this->primOpaColor[2] = 0xAA;
            this->primOpaColor[0] = 0xFF;
            this->primOpaColor[1] = 0xFF;
            this->envOpaColor[1] = 0x78;
            this->envOpaColor[0] = 0x96;
            this->envOpaColor[2] = 0x00;
            break;

        case 0x14:
            this->primXluColor[1] = 0xAA;
            this->primXluColor[0] = 0xFF;
            this->primXluColor[2] = 0xFF;
            this->envXluColor[2] = 0x64;
            this->envXluColor[0] = 0xFF;
            this->envXluColor[1] = 0x00;
            this->primOpaColor[2] = 0xAA;
            this->primOpaColor[0] = 0xFF;
            this->primOpaColor[1] = 0xFF;
            this->envOpaColor[1] = 0x78;
            this->envOpaColor[0] = 0x96;
            this->envOpaColor[2] = 0x00;
            break;

        case 0x15:
            this->primXluColor[0] = 0x32;
            this->primXluColor[1] = 0xFF;
            this->primXluColor[2] = 0xFF;
            this->envXluColor[2] = 0x96;
            this->envXluColor[0] = 0x32;
            this->envXluColor[1] = 0x00;
            this->primOpaColor[2] = 0xAA;
            this->primOpaColor[0] = 0xFF;
            this->primOpaColor[1] = 0xFF;
            this->envOpaColor[1] = 0x78;
            this->envOpaColor[0] = 0x96;
            this->envOpaColor[2] = 0x00;
            break;
    }
}

void func_80973524(DemoEffect* this, f32 alpha) {
    func_80973424(this);

    // s32 casts needed to prevent u8s from casting to float
    this->primXluColor[0] = (((s32)this->primXluColor[0]) * alpha) + (255.0f * (1.0f - alpha));
    this->primXluColor[1] = (((s32)this->primXluColor[1]) * alpha) + (255.0f * (1.0f - alpha));
    this->primXluColor[2] = (((s32)this->primXluColor[2]) * alpha) + (255.0f * (1.0f - alpha));
    this->primOpaColor[0] = (((s32)this->primOpaColor[0]) * alpha) + (255.0f * (1.0f - alpha));
    this->primOpaColor[1] = (((s32)this->primOpaColor[1]) * alpha) + (255.0f * (1.0f - alpha));
    this->primOpaColor[2] = (((s32)this->primOpaColor[2]) * alpha) + (255.0f * (1.0f - alpha));
    this->envXluColor[0] = ((s32)this->envXluColor[0]) * alpha;
    this->envXluColor[1] = ((s32)this->envXluColor[1]) * alpha;
    this->envXluColor[2] = ((s32)this->envXluColor[2]) * alpha;
    this->envOpaColor[0] = ((s32)this->envOpaColor[0]) * alpha;
    this->envOpaColor[1] = ((s32)this->envOpaColor[1]) * alpha;
    this->envOpaColor[2] = ((s32)this->envOpaColor[2]) * alpha;
}

void func_80973CA0(PosRot* posRot, DemoEffect* this) {
    // TODO: DemoEffect_JewelMove
    switch (this->unk_184) {
        case Demo_Effect_Jewel_Kokiri:
            posRot->pos.x -= 40.0f;
            break;
        case Demo_Effect_Jewel_Goron:
            break;
        case Demo_Effect_Jewel_Zora:
            posRot->pos.x += 40.0f;
            break;
        default:
            break;
    }
}

void func_80973CFC(f32 arg0, f32 arg1, Vec3f startPos, Vec3f endPos, f32 arg4, Vec3s arg5, DemoEffect* this) {
    s32 pad;
    s32 pad2;
    f32 distance;
    f32 unk_1;
    f32 unk_3;
    f32 unk_4;

    distance = arg1 * sqrtf(SQ(endPos.x - startPos.x) + SQ(endPos.y - startPos.y) + SQ(endPos.z - startPos.z));

    this->actor.posRot.pos.x = arg4 * cosf(arg0 * (M_PI / 180));
    this->actor.posRot.pos.y = distance;
    this->actor.posRot.pos.z = arg4 * sinf(arg0 * (M_PI / 180));

    unk_1 = this->actor.posRot.pos.x;
    unk_3 = (this->actor.posRot.pos.y * cosf(arg5.x * (M_PI / 32768))) -
            (sinf(arg5.x * (M_PI / 32768)) * this->actor.posRot.pos.z);
    unk_4 = (this->actor.posRot.pos.z * cosf(arg5.x * (M_PI / 32768))) +
            (sinf(arg5.x * (M_PI / 32768)) * this->actor.posRot.pos.y);

    this->actor.posRot.pos.x = (unk_1 * cosf(arg5.y * (M_PI / 32768))) - (sinf(arg5.y * (M_PI / 32768)) * unk_4);
    this->actor.posRot.pos.y = unk_3;
    this->actor.posRot.pos.z = (unk_4 * cosf(arg5.y * (M_PI / 32768))) + (sinf(arg5.y * (M_PI / 32768)) * unk_1);

    this->actor.posRot.pos.x += startPos.x;
    this->actor.posRot.pos.y += startPos.y;
    this->actor.posRot.pos.z += startPos.z;
}

void func_80973EE0(DemoEffect* this, GlobalContext* globalCtx) {
    Vec3f startPos;
    Vec3f endPos;
    f32 unk1;
    f32 unk4;
    f32 unk2;
    s32 unk_18C;

    unk_18C = this->unk_18C;
    startPos.x = globalCtx->csCtx.npcActions[unk_18C]->startPos.x;
    startPos.y = globalCtx->csCtx.npcActions[unk_18C]->startPos.y;
    startPos.z = globalCtx->csCtx.npcActions[unk_18C]->startPos.z;
    endPos.x = globalCtx->csCtx.npcActions[unk_18C]->endPos.x;
    endPos.y = globalCtx->csCtx.npcActions[unk_18C]->endPos.y;
    endPos.z = globalCtx->csCtx.npcActions[unk_18C]->endPos.z;

    unk1 = func_80970F58(globalCtx, unk_18C);

    switch (this->unk_184) {
        case Demo_Effect_Jewel_Kokiri:
            unk4 = 0.0f;
            break;
        case Demo_Effect_Jewel_Goron:
            unk4 = 120.0f;
            break;
        case Demo_Effect_Jewel_Zora:
            unk4 = 240.0f;
            break;
    }

    unk2 = 50.0f * unk1;
    // CLAMP_MAX macro is not OK
    if (unk2 > 30.0f) {
        unk2 = 30.0f;
    }

    if (startPos.x != endPos.x || startPos.y != endPos.y || startPos.z != endPos.z) {
        this->unk_vec3s.x = atan2f(endPos.z - startPos.z, -(endPos.x - startPos.x)) * 10430.3779296875f;
        this->unk_vec3s.y = Math_Vec3f_Yaw(&startPos, &endPos);
    }

    this->unk_vec3s.z += 0x0400;

    unk4 += this->unk_vec3s.z * (45.0f / 8192.0f);
    func_80973CFC(unk4, unk1, startPos, endPos, unk2, this->unk_vec3s, this);
}

void func_8097414C(DemoEffect* this, GlobalContext* globalCtx, s32 arg2) {
    // TODO: DemoEffect_JewelSparkle
    Vec3f unkVec1;
    Vec3f unkVec2;
    Color_RGBA8 unkColor1;
    Color_RGBA8 unkColor2;
    Color_RGB8* ssColourData;
    s32 i;

    i = 0;

    unkVec1.y = 0.0f;

    unkVec2.x = 0.0f;
    unkVec2.y = -0.1f;
    unkVec2.z = 0.0f;

    // TODO: This assignment gives compiler warning
    ssColourData = &D_80976860[this->unk_184 - Demo_Effect_Jewel_Kokiri];

    unkColor1.r = (ssColourData + 0x00)->r;
    unkColor1.g = (ssColourData + 0x00)->g;
    unkColor1.b = (ssColourData + 0x00)->b;
    unkColor2.r = (ssColourData + 0x01)->r;
    unkColor2.g = (ssColourData + 0x01)->g;
    unkColor2.b = (ssColourData + 0x01)->b;
    unkColor1.a = 0;

    while (i < arg2) {
        unkVec1.x = (Math_Rand_ZeroOne() - 0.5f) * 1.5f;
        unkVec1.z = (Math_Rand_ZeroOne() - 0.5f) * 1.5f;

        EffectSsKiraKira_SpawnDispersed(globalCtx, &this->actor.posRot.pos, &unkVec1, &unkVec2, &unkColor1, &unkColor2,
                                        0x0BB8, 0x10);

        i++;
    }
}

void func_809742B0(DemoEffect* this, GlobalContext* globalCtx) {
    if (!func_809746B4(this, globalCtx, 0x01)) {
        if (this->actor.params == D_80976810[0x00]) {
            // TODO: Needs SFX ID
            func_8002F974(&this->actor, 0x206E);
        } else if (!D_80976810[0]) {
            D_80976810[0] = this->actor.params;
            // TODO: Needs SFX ID
            func_8002F974(&this->actor, 0x206E);
        }
    }
}

void DemoEffect_UpdateJewelAdult(DemoEffect* this, GlobalContext* globalCtx) {
    this->unk_188++;
    this->actor.shape.rot.y += 0x0400;
    func_809742B0(this, globalCtx);
    func_80973524(this, 1.0f);
}

void DemoEffect_UpdateJewelChild(DemoEffect* this, GlobalContext* globalCtx) {
    s32 hasCmdAction;
    Actor* thisx = &this->actor;

    this->unk_188++;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->unk_18C]) {
        switch (globalCtx->csCtx.npcActions[this->unk_18C]->action) {
            case 0x03:
                if (gSaveContext.eventChkInf[4] & 0x0800) {
                    gSaveContext.eventChkInf[4] |= 0x0800;
                }
                func_80973EE0(this, globalCtx);
                if ((globalCtx->gameplayFrames & 0x01) == 0x00) {
                    func_8097414C(this, globalCtx, 0x01);
                }
                break;
            case 0x04:
                if (this->unk_185) {
                    func_809765AC(this, globalCtx, this->unk_18C, 0x00);
                    func_80973CA0(&thisx->posRot, this);
                    if (!(globalCtx->gameplayFrames & 0x01)) {
                        func_8097414C(this, globalCtx, 0x01);
                    }
                } else {
                    func_809767B0(this, globalCtx, this->unk_18C);
                    func_80973CA0(&thisx->posRot, this);
                    this->unk_185 = 0x01;
                }
                break;
            case 0x06:
                Actor_Kill(thisx);
                return;
            default:
                func_809765AC(this, globalCtx, this->unk_18C, 0x00);
                if (gSaveContext.entranceIndex == 0x53) {
                    func_80973CA0(&thisx->posRot, this);
                }
                break;
        }
    }

    if (gSaveContext.entranceIndex == 0x53) {
        if ((gSaveContext.eventChkInf[4] & 0x800) == 0x00) {
            hasCmdAction = globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->unk_18C];
            if (!hasCmdAction) {
                this->unk_18A |= 1;
                return;
            }
        }
    }

    thisx->shape.rot.y += 0x0400;
    func_809742B0(this, globalCtx);
    this->unk_18A &= 0xFFFE;
}

void DemoEffect_UpdateArrow(DemoEffect* this, GlobalContext* globalCtx) {
    Vec3f pos, velocity, accel;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->unk_18C] &&
        globalCtx->csCtx.npcActions[this->unk_18C]->action == 2) {
        pos = this->actor.posRot.pos;

        pos.y += 600.0f;
        pos.x += Math_Rand_CenteredFloat(300.0f);
        pos.z += 200.0f + Math_Rand_CenteredFloat(300.0f);

        velocity.z = 0.0f;
        velocity.x = 0.0f;
        velocity.y = -20.0f;

        accel.z = 0.0f;
        accel.x = 0.0f;
        accel.y = 0.2f;

        func_8002873C(globalCtx, &pos, &velocity, &accel, 0x012C, 0x00, 0x1E);

        this->unk_184++;
    }
}

void DemoEffect_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoEffect* this = THIS;
    this->updateFunc(this, globalCtx);
}

s32 func_809746B4(DemoEffect* this, GlobalContext* globalCtx, s32 arg2) {
    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->unk_18C] &&
        globalCtx->csCtx.npcActions[this->unk_18C]->action == arg2) {
        return 0x01;
    }

    return 0x00;
}

void DemoEffect_DrawJewel(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    GlobalContext* globalCtx2;
    u32 scroll = this->unk_188;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x09EF);

    if (!func_809746B4(this, globalCtx, 0x01)) {
        // Necessary to match
        if (1) {}

        if (!(this->unk_18A & 0x01)) {
            globalCtx2 = globalCtx;

            switch (this->unk_184) {
                case Demo_Effect_Jewel_Kokiri:
                    gSPSegment(oGfxCtx->polyXlu.p++, 0x09,
                               Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0x00, (scroll * 0x04) % 0x0100,
                                                (0x0100 - ((scroll * 0x02) % 0x0100)) - 0x01, 0x40, 0x40, 0x01,
                                                (scroll * 2) % 0x0100, (0x0100 - (scroll % 0x0100)) - 0x01, 0x10,
                                                0x10));
                    break;

                case Demo_Effect_Jewel_Goron:
                    gSPSegment(oGfxCtx->polyXlu.p++, 0x09,
                               Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0x00, (scroll * 0x04) % 0x80,
                                                (0x0100 - ((scroll * 0x02) % 0x0100)) - 0x01, 0x20, 0x40, 0x01,
                                                (scroll * 2) % 0x0100, (0x0100 - (scroll % 0x0100)) - 0x01, 0x10,
                                                0x08));
                    break;

                case Demo_Effect_Jewel_Zora:
                    gSPSegment(oGfxCtx->polyXlu.p++, 0x09,
                               Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0x00, (scroll * 0x04) % 0x0100,
                                                (0x0100 - ((scroll * 0x02) % 0x0100)) - 0x01, 0x20, 0x20, 0x01,
                                                (scroll * 2) % 0x0100, (0x0100 - (scroll % 0x0100)) - 0x01, 0x10,
                                                0x10));
                    break;
            }

            // Necessary to match
            if (!scroll) {}

            gSPSegment(oGfxCtx->polyOpa.p++, 0x08,
                       Gfx_TexScroll(globalCtx->state.gfxCtx, (u8)scroll, (u8)scroll, 0x10, 0x10));
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0A25),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0A27),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            func_80093D84(globalCtx->state.gfxCtx);
            func_8002ED80(&this->actor, globalCtx, 0x00);
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x00, 0x80, this->primXluColor[0],
                            this->primXluColor[1], this->primXluColor[2], 0xFF);
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->envXluColor[0], this->envXluColor[1],
                           this->envXluColor[2], 0xFF);
            gSPDisplayList(oGfxCtx->polyXlu.p++, this->jewelDisplayList);
            func_80093D18(globalCtx->state.gfxCtx);
            func_8002EBCC(&this->actor, globalCtx, 0x00);
            gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0x00, 0x80, this->primOpaColor[0],
                            this->primOpaColor[1], this->primOpaColor[2], 0xFF);
            gDPSetEnvColor(oGfxCtx->polyOpa.p++, this->envOpaColor[0], this->envOpaColor[1],
                           this->envOpaColor[2], 0xFF);
            gSPDisplayList(oGfxCtx->polyOpa.p++, this->jewelHolderDisplayList);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0A3C);
}

void DemoEffect_DrawCrystalLight(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    DemoEffect* parent;
    u32 scroll;

    parent = (DemoEffect*)this->actor.parent;
    scroll = globalCtx->gameplayFrames & 0xFFFF;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0A4A);

    if (parent) {
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xAA, parent->unk_186);
    } else {
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xAA, 0xFF);
    }

    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0x00, (scroll * 0x02) % 0x0200,
                                0x0200 - (scroll % 0x0200) - 0x01, 0x80, 0x80, 0x01,
                                0x200 - ((scroll * 0x02) % 0x0200) - 0x01, 0x00, 0x40, 0x40));
    Matrix_Push();
    Matrix_RotateY(0.0f, MTXMODE_APPLY);
    Matrix_RotateX((11.0 * M_PI) / 180.0, MTXMODE_APPLY);
    Matrix_Translate(0.0f, 150.0f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0A65),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000980);
    Matrix_Pull();
    Matrix_Push();
    Matrix_RotateY((2.0f * M_PI) / 3.0f, MTXMODE_APPLY);
    Matrix_RotateX((11.0 * M_PI) / 180.0, MTXMODE_APPLY);
    Matrix_Translate(0.0f, 150.0f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0A70),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000980);
    Matrix_Pull();
    Matrix_Push();
    Matrix_RotateY((4.0f * M_PI) / 3.0f, MTXMODE_APPLY);
    Matrix_RotateX((11.0 * M_PI) / 180.0, MTXMODE_APPLY);
    Matrix_Translate(0.0f, 150.0f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0A7B),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000980);
    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0A80);
}

void DemoEffect_DrawFireBall(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    u32 scroll;

    scroll = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0A8D);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x40, 0x40, 0xFF, 0xC8, 0x00, 0xFF);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0xFF, 0x00, 0x00, 0xFF);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0A95),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPMatrix(oGfxCtx->polyXlu.p++, globalCtx->unk_11DE0, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0x00, 0x00, 0x00, 0x20, 0x20, 0x01, 0x00,
                                0x80 - ((scroll * 0x14) % 0x80) - 0x01, 0x20, 0x20));
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000040);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0AA3);
}

void DemoEffect_DrawGodLgt(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;
    u32 scroll;

    scroll = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0AB1);

    if (!func_809746B4(this, globalCtx, 0x02)) {
        if (gSaveContext.entranceIndex == 0xA0) {
            if (gSaveContext.sceneSetupIndex == 0x04) {
                if (globalCtx->csCtx.frames < 0x02A9) {
                    func_80078914(&this->actor.projectedPos, NA_SE_EV_GOD_FLYING - SFX_FLAG);
                }
            } else {
                func_80078914(&this->actor.projectedPos, NA_SE_EV_GOD_FLYING - SFX_FLAG);
            }
        } else {
            func_80078914(&this->actor.projectedPos, NA_SE_EV_GOD_FLYING - SFX_FLAG);
        }

        gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0x00, (scroll * 4) % 0x0200, 0x00, 0x80, 0x40, 0x01,
                                    (scroll * 0x02) % 0x0100, 0x200 - ((scroll * 0x46) % 0x0200) - 0x01, 0x40, 0x20));
        gSPSegment(oGfxCtx->polyXlu.p++, 0x09,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0x00, 0x00, 0x00, 0x10, 0x60, 0x01,
                                    (scroll * 0x0A) % 0x0100, 0x0100 - ((scroll * 0x1E) % 0x0200) - 0x01, 0x08, 0x20));
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, this->primXluColor[0], this->primXluColor[1],
                        this->primXluColor[2], 0xFF);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->envXluColor[0], this->envXluColor[1],
                       this->envXluColor[2], 0xFF);
        func_80093D84(globalCtx->state.gfxCtx);
        Matrix_Push();
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0AF1),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000330);
        func_80093D18(globalCtx->state.gfxCtx);
        func_8002EBCC(&this->actor, globalCtx, 0x00);
        Matrix_Pull();

        this->unk_186++;
        if (this->unk_186 >= 0x79) {
            if (1) {
                this->unk_186 = 0x00;
            }
        }

        Matrix_RotateZ((((s32)this->unk_186) * 3.0f) * (M_PI / 180.0f), MTXMODE_APPLY);
        Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
        Matrix_Translate(0.0f, -140.0f, 0.0f, MTXMODE_APPLY);
        Matrix_Scale(0.03f, 0.03f, 0.03f, MTXMODE_APPLY);
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B08),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06003C50);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B0D);
}

void DemoEffect_DrawLightEffect(DemoEffect* this, GlobalContext* globalCtx) {
    // TODO: This should be one of the last functions to document. Deduce if unk_184 is part of a struct first.
    s32 pad;
    u8* unk_184;
    u32 disp;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B1A);

    if (!func_809746B4(this, globalCtx, 0x01)) {

        if (this->unk_186 == 0x00) {
            this->unk_186 = 0x01;
        } else {
            disp = (u32)D_04010130;
            unk_184 = &this->unk_184;
            func_80093D84(globalCtx->state.gfxCtx);
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x00, 0x80, this->primXluColor[0],
                            this->primXluColor[1], this->primXluColor[2], *unk_184);
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->envXluColor[0], this->envXluColor[1],
                           this->envXluColor[2], 0xFF);
            Matrix_Scale(((this->unk_185 & 0x01) * 0.05f) + 1.0f, ((this->unk_185 & 0x01) * 0.05f) + 1.0f,
                         ((this->unk_185 & 0x01) * 0.05f) + 1.0f, MTXMODE_APPLY);
            Matrix_Push();
            Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
            Matrix_RotateZ(this->unk_188 * (M_PI / 180), MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B32),
                      G_MTX_MODELVIEW | G_MTX_LOAD | G_MTX_NOPUSH);
            if (disp) {};
            gSPDisplayList(oGfxCtx->polyXlu.p++, disp);
            Matrix_Pull();
            Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
            Matrix_RotateZ(-(f32)this->unk_188 * (M_PI / 180), MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B3A),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyXlu.p++, disp);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B41);
}

void DemoEffect_DrawBlueOrb(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B4C);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xBC, 0xFF, 0xFF, this->unk_184);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0x64, 0xFF, 0xFF);
    func_80093D84(globalCtx->state.gfxCtx);
    Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
    Matrix_RotateZ(this->unk_188 * (M_PI / 32768.0f), MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B55),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    this->unk_188 += 0x01F4;
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_04010130);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B5B);
}

void DemoEffect_DrawLgtShower(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad1;
    s32 pad2;
    u32 scroll;
    scroll = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B69);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x40, 0x40, 0xFF, 0xFF, 0xA0, this->unk_184);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x32, 0xC8, 0x00, 0xFF);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B6F),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0x00, (scroll * 0x05) % 0x0400, 0x00, 0x0100, 0x40, 0x01,
                                (scroll * 0x0A) % 0x80, 0x200 - ((scroll * 0x32) % 0x0200), 0x20, 0x10));
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_060011D0);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0B7E);
}

void DemoEffect_DrawLightRing(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    GlobalContext* globalCtx2 = globalCtx;
    u32 scroll = this->unk_188;

    OPEN_DISPS(globalCtx2->state.gfxCtx, "../z_demo_effect.c", 0x0B8C);

    func_80093D84(globalCtx2->state.gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xAA, 0xFF, 0xFF, this->unk_185);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0x64, 0xFF, 0xFF);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx2->state.gfxCtx, "../z_demo_effect.c", 0x0B93),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0x00, (scroll * 0x05) % 0x40, 0x1FF - ((scroll * 2) % 0x200),
                                0x10, 0x80, 0x01, 0x00, 0x00, 0x08, 0x400));
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000190);

    CLOSE_DISPS(globalCtx2->state.gfxCtx, "../z_demo_effect.c", 0x0BA2);
}

void DemoEffect_DrawTriforceSpot(DemoEffect* this, GlobalContext* globalCtx) {
    // TODO: TRIFORCE DRAW FUNC
    s32 pad1;
    s32 pad2;
    Vtx* data;
    u32 scroll;

    data = (Vtx*)SEGMENTED_TO_VIRTUAL(D_06000000);
    scroll = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0BB2);
    if (gSaveContext.entranceIndex != 0x0400 || globalCtx->csCtx.frames < 0x0375) {
        func_80093D84(globalCtx->state.gfxCtx);

        if (this->unk_185 > 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_AURORA - SFX_FLAG);
            Matrix_Push();
            Matrix_Scale(1.0f, 2.4f, 1.0f, MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0BC3),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(oGfxCtx->polyXlu.p++, 0x09,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0x00, 0x00, 0x0100 - ((scroll * 0x04) % 0x0100) - 0x01,
                                        0x40, 0x40, 0x01, 0x00, 0x0100 - ((scroll * 0x02) % 0x0100) - 0x01, 0x40,
                                        0x20));
            (data + 0x56)->n.a = (data + 0x57)->n.a = (data + 0x58)->n.a = (data + 0x59)->n.a = (data + 0x5C)->n.a =
                (data + 0x5D)->n.a = (data + 0x5E)->n.a = (data + 0x5F)->n.a = (s8)this->unk_185;
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xB4, 0xFF, 0xFF, this->unk_185);
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0xFF, 0x96, 0xFF);
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000840);
            Matrix_Pull();
        }

        if (this->unk_184) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_TRIFORCE - SFX_FLAG);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0BE2),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            if (this->unk_184 < 0xFA) {
                func_8002ED80(&this->actor, globalCtx, 0x00);
                func_80093D84(globalCtx->state.gfxCtx);
                gDPSetRenderMode(oGfxCtx->polyXlu.p++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
                Matrix_RotateY(this->unk_188 * (M_PI / 32768.0f), MTXMODE_APPLY);
                gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0BED),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0x00, 0x00, 0x00, 0x20, 0x10, 0x01, 0x00, 0x00,
                                            0x10, 0x08));
                gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xA0, this->unk_184);
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0xAA, 0x8C, 0x00, 0xFF);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000600);
            } else {
                func_8002EBCC(&this->actor, globalCtx, 0x00);
                func_80093D18(globalCtx->state.gfxCtx);
                gDPSetRenderMode(oGfxCtx->polyOpa.p++, G_RM_PASS, G_RM_AA_ZB_OPA_SURF2);
                Matrix_RotateY(this->unk_188 * (M_PI / 32768.0f), MTXMODE_APPLY);
                gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0C0D),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPSegment(oGfxCtx->polyOpa.p++, 0x08,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0x00, 0x00, 0x00, 0x20, 0x10, 0x01, 0x00, 0x00,
                                            0x10, 0x08));
                gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0x80, 0x80, 0xFF, 0xFF, 0xA0, 0xFF);
                gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0xAA, 0x8C, 0x00, 0xFF);
                gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000600);
            }
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0C28);
}

void DemoEffect_DrawMedal(DemoEffect* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    if (func_809746B4(this, globalCtx, 0x01) == 0x00) {
        if (func_809746B4(this, globalCtx, 0x04) == 0x00) {
            if (!this->unk_185) {
                this->unk_185 = 0x01;
                return;
            }
            func_8002EBCC(thisx, globalCtx, 0x00);
            func_8002ED80(thisx, globalCtx, 0x00);
            func_800694A0(globalCtx, this->unk_186);
        }
    }
}

s32 func_80976254(GlobalContext* globalCtx, SkelAnimeCurve* skelCuve, s32 limbIndex, Actor* thisx) {
    s32 pad;
    DemoEffect* this = THIS;
    u32 scroll = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0C52);
    func_80093D84(globalCtx->state.gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x00, 0x80, 0xAA, 0xFF, 0xFF, 0xFF);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->envXluColor[0], this->envXluColor[1],
                   this->envXluColor[2], 0xFF);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0x00, (scroll * 0x06) % 0x0400,
                                0xFF - ((scroll * 0x10) % 0x0100), 0x0100, 0x40, 0x01, (scroll * 0x04) % 0x0200,
                                0x7F - ((scroll * 0x0C) % 0x80), 0x80, 0x20));
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 0x0C64);

    if (limbIndex == 0x00) {
        LimbTransform* transforms = skelCuve->transforms;
        transforms->scale.x = 0x0400;
        transforms->scale.y = 0x0400;
        transforms->scale.z = transforms->scale.x;
    }

    return 1;
}

void DemoEffect_DrawTimeWarp(DemoEffect* this, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    u8 effectType = GET_EFFECT_TYPE(&this->actor);
    GraphicsContext* gfxCtx2 = globalCtx2->state.gfxCtx;

    if (effectType == Demo_Effect_TW_2 || effectType == Demo_Effect_TW_3 || Flags_GetEnv(globalCtx, 0x01) ||
        gSaveContext.sceneSetupIndex >= 0x04 || gSaveContext.entranceIndex == 0x0324) {
        OPEN_DISPS(gfxCtx2, "../z_demo_effect.c", 0x0C81);
        oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0x19);
        Matrix_Scale(2.0f, 2.0f, 2.0f, MTXMODE_APPLY);
        SkelCurve_Draw(&this->actor, globalCtx2, &this->skelCurve, &func_80976254, (void*)0, 0x01, &this->actor);
        CLOSE_DISPS(gfxCtx2, "../z_demo_effect.c", 0x0C90);
    }
}

void func_809764FC(DemoEffect* this, Vec3f startPos, Vec3f endPos) {
    s32 pad;
    f32 x = endPos.x - startPos.x;
    f32 z = endPos.z - startPos.z;
    f32 xzDistance = sqrtf(SQ(x) + SQ(z));

    this->actor.shape.rot.y = Math_atan2f(x, z) * (32768.0f / M_PI);
    this->actor.shape.rot.x = Math_atan2f(-(endPos.y - startPos.y), xzDistance) * (32768.0f / M_PI);
}

void func_809765AC(DemoEffect* this, GlobalContext* globalCtx, s32 arg2, s32 arg3) {
    Vec3f startPos;
    Vec3f endPos;
    f32 frameDivisor;

    startPos.x = globalCtx->csCtx.npcActions[arg2]->startPos.x;
    startPos.y = globalCtx->csCtx.npcActions[arg2]->startPos.y;
    startPos.z = globalCtx->csCtx.npcActions[arg2]->startPos.z;
    endPos.x = globalCtx->csCtx.npcActions[arg2]->endPos.x;
    endPos.y = globalCtx->csCtx.npcActions[arg2]->endPos.y;
    endPos.z = globalCtx->csCtx.npcActions[arg2]->endPos.z;

    frameDivisor = func_80970F58(globalCtx, arg2);

    this->actor.posRot.pos.x = ((endPos.x - startPos.x) * frameDivisor) + startPos.x;
    this->actor.posRot.pos.y = ((endPos.y - startPos.y) * frameDivisor) + startPos.y;
    this->actor.posRot.pos.z = ((endPos.z - startPos.z) * frameDivisor) + startPos.z;

    if (arg3) {
        func_809764FC(this, startPos, endPos);
    }
}

void func_8097670C(DemoEffect* this, GlobalContext* globalCtx, s32 arg2, f32 arg3) {
    Vec3f endPos;
    endPos.x = globalCtx->csCtx.npcActions[arg2]->endPos.x;
    endPos.y = globalCtx->csCtx.npcActions[arg2]->endPos.y;
    endPos.z = globalCtx->csCtx.npcActions[arg2]->endPos.z;
    func_809733C8(endPos, this, arg3);
}

void func_809767B0(DemoEffect* this, GlobalContext* globalCtx, s32 csActionIndex) {
    f32 x = globalCtx->csCtx.npcActions[csActionIndex]->startPos.x;
    f32 y = globalCtx->csCtx.npcActions[csActionIndex]->startPos.y;
    f32 z = globalCtx->csCtx.npcActions[csActionIndex]->startPos.z;

    this->actor.posRot.pos.x = x;
    this->actor.posRot.pos.y = y;
    this->actor.posRot.pos.z = z;
}
