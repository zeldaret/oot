#include "z_en_bom_chu.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000010

#define THIS ((EnBomChu*)thisx)

void EnBomChu_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBomChu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBomChu_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBomChu_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnBomChu_WaitForRelease(EnBomChu* this, GlobalContext* globalCtx);
void EnBomChu_Move(EnBomChu* this, GlobalContext* globalCtx);
void EnBomChu_WaitForKill(EnBomChu* this, GlobalContext* globalCtx);

const ActorInit En_Bom_Chu_InitVars = {
    ACTOR_EN_BOM_CHU,
    ACTORCAT_EXPLOSIVE,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnBomChu),
    (ActorFunc)EnBomChu_Init,
    (ActorFunc)EnBomChu_Destroy,
    (ActorFunc)EnBomChu_Update,
    (ActorFunc)EnBomChu_Draw,
};

static ColliderJntSphElementInit sJntSphElemInit[] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON,
            OCELEM_ON,
        },
        { 1, { { 0, 0, 0 }, 12 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_1 | OC1_TYPE_2,
        OC2_TYPE_2,
        COLSHAPE_JNTSPH,
    },
    1,
    sJntSphElemInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(targetMode, 2, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_STOP),
};

void EnBomChu_Init(Actor* thisx, GlobalContext* globalCtx) {
    static u8 p1StartColor[] = { 250, 0, 0, 250 };
    static u8 p2StartColor[] = { 200, 0, 0, 130 };
    static u8 p1EndColor[] = { 150, 0, 0, 100 };
    static u8 p2EndColor[] = { 100, 0, 0, 50 };
    EnBomChu* this = THIS;
    EffectBlureInit1 blureInit;
    s32 i;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->colliderElements);

    this->collider.elements[0].dim.worldSphere.radius = this->collider.elements[0].dim.modelSphere.radius;

    for (i = 0; i < 4; i++) {
        blureInit.p1StartColor[i] = p1StartColor[i];
        blureInit.p2StartColor[i] = p2StartColor[i];
        blureInit.p1EndColor[i] = p1EndColor[i];
        blureInit.p2EndColor[i] = p2EndColor[i];
    }

    blureInit.elemDuration = 16;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 0;

    Effect_Add(globalCtx, &this->blure1Index, EFFECT_BLURE1, 0, 0, &blureInit);
    Effect_Add(globalCtx, &this->blure2Index, EFFECT_BLURE1, 0, 0, &blureInit);

    this->actor.room = -1;
    this->timer = 120;
    this->actionFunc = EnBomChu_WaitForRelease;
}

void EnBomChu_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBomChu* this = THIS;

    Effect_Delete(globalCtx, this->blure1Index);
    Effect_Delete(globalCtx, this->blure2Index);
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void EnBomChu_Explode(EnBomChu* this, GlobalContext* globalCtx) {
    EnBom* bomb;
    s32 i;

    bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->actor.world.pos.x,
                               this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, BOMB_BODY);
    if (bomb != NULL) {
        bomb->timer = 0;
    }

    this->timer = 1;
    this->actor.speedXZ = 0.0f;

    if (this->actor.yDistToWater > 0.0f) {
        for (i = 0; i < 40; i++) {
            EffectSsBubble_Spawn(globalCtx, &this->actor.world.pos, 1.0f, 5.0f, 30.0f, 0.25f);
        }
    }

    this->actionFunc = EnBomChu_WaitForKill;
}

void EnBomChu_CrossProduct(Vec3f* a, Vec3f* b, Vec3f* dest) {
    dest->x = (a->y * b->z) - (a->z * b->y);
    dest->y = (a->z * b->x) - (a->x * b->z);
    dest->z = (a->x * b->y) - (a->y * b->x);
}

void func_809C5BA8(EnBomChu* this, CollisionPoly* floorPoly, GlobalContext* globalCtx) {
    Vec3f sp84;
    Vec3f sp78;
    f32 sp74;
    f32 magnitude;
    f32 temp_f12;
    MtxF mf;

    this->actor.floorPoly = floorPoly;

    sp84.x = COLPOLY_GET_NORMAL(floorPoly->normal.x);
    sp84.y = COLPOLY_GET_NORMAL(floorPoly->normal.y);
    sp84.z = COLPOLY_GET_NORMAL(floorPoly->normal.z);

    temp_f12 = (sp84.x * this->unk_160.x) + (sp84.y * this->unk_160.y) + (sp84.z * this->unk_160.z);

    if (!(fabsf(temp_f12) >= 1.0f)) {
        sp74 = Math_FAcosF(temp_f12);

        if (!(sp74 < 0.001f)) {
            EnBomChu_CrossProduct(&this->unk_160, &sp84, &sp78);
            func_800D23FC(sp74, &sp78, 0);
            Matrix_MultVec3f(&this->unk_16C, &sp78);
            this->unk_16C = sp78;
            EnBomChu_CrossProduct(&this->unk_16C, &sp84, &this->unk_154);

            magnitude = Math3D_Vec3fMagnitude(&this->unk_154);

            if (magnitude < 0.001f) {
                EnBomChu_Explode(this, globalCtx);
                return;
            }

            this->unk_154.x *= (1.0f / magnitude);
            this->unk_154.y *= (1.0f / magnitude);
            this->unk_154.z *= (1.0f / magnitude);

            this->unk_160 = sp84;

            if (1) {}

            mf.xx = this->unk_16C.x;
            mf.xy = this->unk_16C.y;
            mf.xz = this->unk_16C.z;

            mf.yx = sp84.x;
            mf.yy = sp84.y;
            mf.yz = sp84.z;

            mf.zx = this->unk_154.x;
            mf.zy = this->unk_154.y;
            mf.zz = this->unk_154.z;

            func_800D20CC(&mf, &this->actor.world.rot, 0);

            this->actor.world.rot.x = -this->actor.world.rot.x;
        }
    }
}

void EnBomChu_WaitForRelease(EnBomChu* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        EnBomChu_Explode(this, globalCtx);
        return;
    }

    if (Actor_HasNoParent(&this->actor, globalCtx)) {
        this->actor.world.pos = player->actor.world.pos;
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
        this->actor.shape.rot.y = player->actor.shape.rot.y;

        this->unk_154.x = Math_SinS(this->actor.shape.rot.y);
        this->unk_154.y = 0.0f;
        this->unk_154.z = Math_CosS(this->actor.shape.rot.y);

        this->unk_160.x = 0.0f;
        this->unk_160.y = 1.0f;
        this->unk_160.z = 0.0f;

        this->unk_16C.x = Math_SinS(this->actor.shape.rot.y + 0x4000);
        this->unk_16C.y = 0;
        this->unk_16C.z = Math_CosS(this->actor.shape.rot.y + 0x4000);

        this->actor.speedXZ = 8.0f;
        func_809C5BA8(this, this->actor.floorPoly, globalCtx);
        this->actor.flags |= 1; // make chu targetable
        func_8002F850(globalCtx, &this->actor);
        this->actionFunc = EnBomChu_Move;
    }
}

void EnBomChu_Move(EnBomChu* this, GlobalContext* globalCtx) {
    CollisionPoly* sp9C;
    CollisionPoly* sp98;
    s32 sp94;
    s32 sp90;
    s32 i;
    f32 sp54;
    Vec3f sp7C;
    Vec3f sp70;
    Vec3f sp64;
    Vec3f sp58;

    this->actor.speedXZ = 8.0f;
    sp54 = this->actor.speedXZ * 2.0f;

    if (this->timer != 0) {
        this->timer--;
    }

    if ((this->timer == 0) || (this->collider.base.acFlags & AC_HIT) ||
        ((this->collider.base.ocFlags1 & OC1_HIT) && (this->collider.base.oc->category != ACTORCAT_PLAYER))) {
        EnBomChu_Explode(this, globalCtx);
        return;
    }

    sp7C.x = this->actor.world.pos.x + (this->unk_160.x * 2.0f);
    sp7C.y = this->actor.world.pos.y + (this->unk_160.y * 2.0f);
    sp7C.z = this->actor.world.pos.z + (this->unk_160.z * 2.0f);

    sp70.x = this->actor.world.pos.x - (this->unk_160.x * 4.0f);
    sp70.y = this->actor.world.pos.y - (this->unk_160.y * 4.0f);
    sp70.z = this->actor.world.pos.z - (this->unk_160.z * 4.0f);

    if ((BgCheck_EntityLineTest1(&globalCtx->colCtx, &sp7C, &sp70, &sp58, &sp98, true, true, true, true, &sp90)) &&
        (!(func_80041DB8(&globalCtx->colCtx, sp98, sp90) & 0x30)) &&
        !SurfaceType_IsIgnoredByProjectiles(&globalCtx->colCtx, sp98, sp90)) {
        sp70.x = (this->unk_154.x * sp54) + sp7C.x;
        sp70.y = (this->unk_154.y * sp54) + sp7C.y;
        sp70.z = (this->unk_154.z * sp54) + sp7C.z;

        if ((BgCheck_EntityLineTest1(&globalCtx->colCtx, &sp7C, &sp70, &sp64, &sp9C, true, true, true, true, &sp94)) &&
            (!(func_80041DB8(&globalCtx->colCtx, sp9C, sp94) & 0x30)) &&
            !SurfaceType_IsIgnoredByProjectiles(&globalCtx->colCtx, sp9C, sp94)) {
            func_809C5BA8(this, sp9C, globalCtx);
            this->actor.world.pos = sp64;
            this->actor.floorBgId = sp94;
            this->actor.speedXZ = 0.0f;
        } else {
            if (this->actor.floorPoly != sp98) {
                func_809C5BA8(this, sp98, globalCtx);
            }

            this->actor.world.pos = sp58;
            this->actor.floorBgId = sp90;
        }
    } else {
        this->actor.speedXZ = 0.0f;
        sp54 = sp54 * 3.0f;
        sp7C = sp70;

        for (i = 0; i < 3; i++) {
            if (i == 0) {
                sp70.x = sp7C.x - (this->unk_154.x * sp54);
                sp70.y = sp7C.y - (this->unk_154.y * sp54);
                sp70.z = sp7C.z - (this->unk_154.z * sp54);
            } else if (i == 1) {
                sp70.x = sp7C.x + (this->unk_16C.x * sp54);
                sp70.y = sp7C.y + (this->unk_16C.y * sp54);
                sp70.z = sp7C.z + (this->unk_16C.z * sp54);
            } else {
                sp70.x = sp7C.x - (this->unk_16C.x * sp54);
                sp70.y = sp7C.y - (this->unk_16C.y * sp54);
                sp70.z = sp7C.z - (this->unk_16C.z * sp54);
            }

            if ((BgCheck_EntityLineTest1(&globalCtx->colCtx, &sp7C, &sp70, &sp64, &sp9C, true, true, true, true,
                                         &sp94)) &&
                (!(func_80041DB8(&globalCtx->colCtx, sp9C, sp94) & 0x30)) &&
                !SurfaceType_IsIgnoredByProjectiles(&globalCtx->colCtx, sp9C, sp94)) {
                func_809C5BA8(this, sp9C, globalCtx);
                this->actor.world.pos = sp64;
                this->actor.floorBgId = sp94;
                break;
            }
        }

        if (i == 3) {
            EnBomChu_Explode(this, globalCtx);
        }
    }

    Math_ScaledStepToS(&this->actor.shape.rot.x, -this->actor.world.rot.x, 0x800);
    Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.world.rot.y, 0x800);
    Math_ScaledStepToS(&this->actor.shape.rot.z, this->actor.world.rot.z, 0x800);

    func_8002F8F0(&this->actor, NA_SE_IT_BOMBCHU_MOVE - SFX_FLAG);
}

void EnBomChu_WaitForKill(EnBomChu* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        Actor_Kill(&this->actor);
    }
}

void func_809C649C(EnBomChu* this, Vec3f* arg1, Vec3f* dest) {
    f32 scale = arg1->x + this->unk_178;

    dest->x =
        this->actor.world.pos.x + (this->unk_16C.x * scale) + (this->unk_160.x * arg1->y) + (this->unk_154.x * arg1->z);
    dest->y =
        this->actor.world.pos.y + (this->unk_16C.y * scale) + (this->unk_160.y * arg1->y) + (this->unk_154.y * arg1->z);
    dest->z =
        this->actor.world.pos.z + (this->unk_16C.z * scale) + (this->unk_160.z * arg1->y) + (this->unk_154.z * arg1->z);
}

void EnBomChu_SpawnRipples(EnBomChu* this, GlobalContext* globalCtx, f32 height) {
    Vec3f pos;

    pos.x = this->actor.world.pos.x;
    pos.y = height;
    pos.z = this->actor.world.pos.z;

    EffectSsGRipple_Spawn(globalCtx, &pos, 70, 500, 0);
    EffectSsGRipple_Spawn(globalCtx, &pos, 70, 500, 4);
    EffectSsGRipple_Spawn(globalCtx, &pos, 70, 500, 8);
}

void EnBomChu_Update(Actor* thisx, GlobalContext* globalCtx2) {
    static Vec3f D_809C6D7C = { 0.0f, 7.0f, -6.0f };
    static Vec3f D_809C6D88 = { 12.0f, 0.0f, -5.0f };
    static Vec3f D_809C6D94 = { -12.0f, 0.0f, -5.0f };
    GlobalContext* globalCtx = globalCtx2;
    EnBomChu* this = THIS;
    s16 prevYaw;
    f32 sin;
    f32 cos;
    f32 tempX;
    Vec3f sp54;
    Vec3f sp48;
    WaterBox* waterBox;
    f32 waterHeight;

    if (this->actor.floorBgId != BGCHECK_SCENE) {
        prevYaw = this->actor.shape.rot.y;
        func_800433A4(&globalCtx->colCtx, this->actor.floorBgId, &this->actor);

        if (prevYaw != this->actor.shape.rot.y) {
            prevYaw = this->actor.shape.rot.y - prevYaw;

            sin = Math_SinS(prevYaw);
            cos = Math_CosS(prevYaw);

            tempX = this->unk_154.x;
            this->unk_154.x = (this->unk_154.z * sin) + (cos * tempX);
            this->unk_154.z = (this->unk_154.z * cos) - (sin * tempX);

            tempX = this->unk_160.x;
            this->unk_160.x = (this->unk_160.z * sin) + (cos * tempX);
            this->unk_160.z = (this->unk_160.z * cos) - (sin * tempX);

            tempX = this->unk_16C.x;
            this->unk_16C.x = (this->unk_16C.z * sin) + (cos * tempX);
            this->unk_16C.z = (this->unk_16C.z * cos) - (sin * tempX);
        }
    }

    this->actionFunc(this, globalCtx);
    func_8002D97C(&this->actor);

    this->collider.elements[0].dim.worldSphere.center.x = this->actor.world.pos.x;
    this->collider.elements[0].dim.worldSphere.center.y = this->actor.world.pos.y;
    this->collider.elements[0].dim.worldSphere.center.z = this->actor.world.pos.z;

    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

    if (this->actionFunc != EnBomChu_WaitForRelease) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }

    Actor_SetFocus(&this->actor, 0.0f);

    if (this->actionFunc == EnBomChu_Move) {
        this->unk_178 =
            (5.0f + (Rand_ZeroOne() * 3.0f)) * Math_SinS(((Rand_ZeroOne() * 512.0f) + 12288.0f) * this->timer);

        func_809C649C(this, &D_809C6D7C, &sp54);

        func_809C649C(this, &D_809C6D88, &sp48);
        EffectBlure_AddVertex(Effect_GetByIndex(this->blure1Index), &sp54, &sp48);

        func_809C649C(this, &D_809C6D94, &sp48);
        EffectBlure_AddVertex(Effect_GetByIndex(this->blure2Index), &sp54, &sp48);

        waterHeight = this->actor.world.pos.y;

        if (WaterBox_GetSurface1(globalCtx, &globalCtx->colCtx, this->actor.world.pos.x, this->actor.world.pos.z,
                                 &waterHeight, &waterBox)) {
            this->actor.yDistToWater = waterHeight - this->actor.world.pos.y;

            if (this->actor.yDistToWater < 0.0f) {
                if (this->actor.bgCheckFlags & 0x20) {
                    EnBomChu_SpawnRipples(this, globalCtx, waterHeight);
                }

                this->actor.bgCheckFlags &= ~0x20;
            } else {
                if (!(this->actor.bgCheckFlags & 0x20) && (this->timer != 120)) {
                    EnBomChu_SpawnRipples(this, globalCtx, waterHeight);
                } else {
                    EffectSsBubble_Spawn(globalCtx, &this->actor.world.pos, 0.0f, 3.0f, 15.0f, 0.25f);
                }

                this->actor.bgCheckFlags |= 0x20;
            }
        } else {
            this->actor.bgCheckFlags &= ~0x20;
            this->actor.yDistToWater = BGCHECK_Y_MIN;
        }
    }
}
void EnBomChu_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnBomChu* this = THIS;
    f32 colorIntensity;
    s32 phi_a1;
    s32 timerMod;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bom_chu.c", 921);

    func_80093D18(globalCtx->state.gfxCtx);
    func_8002EBCC(&this->actor, globalCtx, 0);

    if (this->timer >= 40) {
        timerMod = this->timer % 20;
        phi_a1 = 10;
    } else if (this->timer >= 10) {
        timerMod = this->timer % 10;
        phi_a1 = 5;
    } else {
        timerMod = this->timer & 1;
        phi_a1 = 1;
    }

    if (phi_a1 < timerMod) {
        timerMod = (phi_a1 * 2) - timerMod;
    }

    colorIntensity = timerMod / (f32)phi_a1;

    gDPSetEnvColor(POLY_OPA_DISP++, (9.0f + (colorIntensity * 209.0f)), (9.0f + (colorIntensity * 34.0f)),
                   (35.0f + (colorIntensity * -35.0f)), 255);
    Matrix_Translate(this->unk_178 * 100.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bom_chu.c", 956),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, gBombchuDL);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bom_chu.c", 961);
}
