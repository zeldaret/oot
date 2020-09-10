/*
 * File: z_bg_vb_sima.c
 * Overlay: ovl_Bg_Vb_Sima
 * Description: Volvagia's platform
 */

#include "z_bg_vb_sima.h"
#include "../ovl_Boss_Fd/z_boss_fd.h"

#define FLAGS 0x00000000

#define THIS ((BgVbSima*)thisx)

#define BOSSFD ((BossFd*)this->dyna.actor.parent)

void BgVbSima_Init(Actor* thisx, GlobalContext* globalCtx);
void BgVbSima_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgVbSima_Update(Actor* thisx, GlobalContext* globalCtx);
void BgVbSima_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000D68;
extern Gfx D_06000240[];

const ActorInit Bg_Vb_Sima_InitVars = {
    ACTOR_BG_VB_SIMA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_FD,
    sizeof(BgVbSima),
    (ActorFunc)BgVbSima_Init,
    (ActorFunc)BgVbSima_Destroy,
    (ActorFunc)BgVbSima_Update,
    (ActorFunc)BgVbSima_Draw,
};

static InitChainEntry sInitChain[] = { ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP) };

static Color_RGBA8_n colorYellow = { 255, 255, 0, 255 };
static Color_RGBA8_n colorRed = { 255, 10, 0, 255 };

void BgVbSima_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgVbSima* this = THIS;
    s32 pad;
    s32 local_c = 0;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna, DPM_PLAYER);
    DynaPolyInfo_Alloc(&D_06000D68, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, local_c);
}

void BgVbSima_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgVbSima* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void BgVbSima_SpawnEmber(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == 0) {
            particle->type = 1;
            particle->pos = *position;
            particle->vel = *velocity;
            particle->accel = *acceleration;
            particle->scale = scale / 1000.0f;
            particle->opacity = 255;
            particle->timer1 = (s16)Math_Rand_ZeroFloat(10.0f);
            break;
        }
    }
}

void BgVbSima_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgVbSima* this = THIS;
    BossFd* bossFd = BOSSFD;
    u32 colPlat;
    f32 edgeX;
    f32 edgeZ;
    s16 i2;
    s16 i1;
    Vec3f splashVel;
    Vec3f splashAcc;
    Vec3f splashPos;
    Vec3f emberPos;
    Vec3f emberVel;
    Vec3f emberAcc;
    f32 minus1;

    this->shakeTimer++;
    if (!Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
        colPlat = bossFd->collapsePlatform;
        if (colPlat == 1) {
            Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.y, -1000.0f, 1.0f, 1.5f, 0.0f);
            this->dyna.actor.posRot.pos.z += 2.0f * Math_Coss(this->shakeTimer * 0x8000);
            this->dyna.actor.shape.rot.x = (s16)Math_Sins(this->shakeTimer * 0x7000) * 0x37;
            this->dyna.actor.shape.rot.z = (s16)Math_Sins(this->shakeTimer * 0x5000) * 0x37;
            Audio_PlaySoundGeneral(NA_SE_EV_BLOCKSINK - SFX_FLAG, &this->dyna.actor.projectedPos, 4, &D_801333E0,
                                   &D_801333E0, &D_801333E8);
        } else if (colPlat == 2) {
            Actor_Kill(&this->dyna.actor);
        }
        if (bossFd->collapsePlatform != 0) {
            for (i1 = 0; i1 < 10; i1++) {
                if (Math_Rand_ZeroOne() < 0.33f) {
                    edgeX = -80.0f;
                    edgeZ = Math_Rand_CenteredFloat(160.0f);
                } else {
                    edgeZ = 80.0f;
                    if (Math_Rand_ZeroOne() < 0.5f) {
                        minus1 = -1.0f; // Not a fake match; the game really does this.
                        edgeZ = 80.0f * minus1;
                    }
                    edgeX = Math_Rand_CenteredFloat(160.0f);
                }

                splashVel.x = edgeX * 0.05f;
                splashVel.y = Math_Rand_ZeroFloat(3.0f) + 3.0f;
                splashVel.z = edgeZ * 0.05f;
                splashAcc.y = -0.3f;
                splashAcc.x = splashVel.x;
                splashAcc.z = splashVel.z;
                splashPos.x = this->dyna.actor.posRot.pos.x + edgeX;
                splashPos.y = -80.0f;
                splashPos.z = this->dyna.actor.posRot.pos.z + edgeZ;

                func_8002836C(globalCtx, &splashPos, &splashVel, &splashAcc, &colorYellow, &colorRed,
                              (s16)Math_Rand_ZeroFloat(100.0f) + 500, 0xA, 0x14);

                for (i2 = 0; i2 < 3; i2++) {
                    emberVel.x = splashVel.x;
                    emberVel.y = Math_Rand_ZeroFloat(5.0f);
                    emberVel.z = splashVel.z;

                    emberAcc.y = 0.4f;
                    emberAcc.x = Math_Rand_CenteredFloat(0.5f);
                    emberAcc.z = Math_Rand_CenteredFloat(0.5f);

                    emberPos.x = Math_Rand_CenteredFloat(60.0f) + splashPos.x;
                    emberPos.y = Math_Rand_ZeroFloat(40.0f) + splashPos.y;
                    emberPos.z = Math_Rand_CenteredFloat(60.0f) + splashPos.z;

                    BgVbSima_SpawnEmber(bossFd->particles, &emberPos, &emberVel, &emberAcc,
                                        (s16)Math_Rand_ZeroFloat(2.0f) + 8);
                }
            }
        }
    }
}

void BgVbSima_Draw(Actor* thisx, GlobalContext* globalCtx) {

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_vb_sima.c", 285);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_vb_sima.c", 291),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000240);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_vb_sima.c", 296);
}
