#include "z_arrow_fire.h"
#include "../ovl_En_Arrow/z_en_arrow.h"

#define ROOM 0x00
#define FLAGS 0x02000010

void ArrowFire_Init(ArrowFire* this, GlobalContext* globalCtx);
void ArrowFire_Destroy(ArrowFire* this, GlobalContext* globalCtx);
void ArrowFire_Update(ArrowFire* this, GlobalContext* globalCtx);
void ArrowFire_Draw(ArrowFire* this, GlobalContext* globalCtx);

void func_80865DD8(ArrowFire* this, GlobalContext* globalCtx);
void func_808660E8(ArrowFire* this, GlobalContext* globalCtx);
void func_80865F1C(ArrowFire* this, GlobalContext* globalCtx);
/*
const ActorInit Arrow_Fire_InitVars = {
    ACTOR_ARROW_FIRE,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ArrowFire),
    (ActorFunc)ArrowFire_Init,
    (ActorFunc)ArrowFire_Destroy,
    (ActorFunc)ArrowFire_Update,
    (ActorFunc)ArrowFire_Draw,
};
*/

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F(unk_F4, 2000, ICHAIN_STOP),
};

extern Gfx D_80867990;
extern Gfx D_80867A40;

// EnFire_SetupAction
void func_80865D10(ArrowFire* this, ActorFunc* actionFunc) {
    this->actionFunc = actionFunc;
}

void ArrowFire_Init(ArrowFire* this, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(&this->actor, initChain);
    this->fireRadius = 0;
    this->unk_158 = 1.0f;
    func_80865D10(this, func_80865DD8);
    Actor_SetScale(this, 0.01);
    this->alpha = 0xA0;
    this->timer = 0;
    this->unk_15C = 0.0f;
}

void ArrowFire_Destroy(ArrowFire* this, GlobalContext* globalCtx) {
    func_800876C8(globalCtx);
    LogUtils_LogThreadId("../z_arrow_fire.c", 421);
    osSyncPrintf("\"消滅\" = %s\n", "消滅");
}

// ArrowFire_DrawBack
void func_80865DD8(ArrowFire* this, GlobalContext* globalCtx) {
    EnArrow* arrow;

    arrow = this->actor.attachedA;
    if ((arrow == NULL) || (arrow->actor.update == NULL)) {
        Actor_Kill(&this->actor);
        return;
    }

    if (this->fireRadius < 10) {
        this->fireRadius += 1;
    }
    // copy position and rotation from the attached arrow
    this->actor.posRot.pos = arrow->actor.posRot.pos;
    this->actor.shape.rot = arrow->actor.shape.rot;

    func_8002F974(&this->actor, NA_SE_PL_ARROW_CHARGE_FIRE);

    // If arrow's attached is null, Link has fired the arrow
    if (arrow->actor.attachedA == NULL) {
        this->translatedPos = this->actor.posRot.pos;
        this->fireRadius = 10;
        func_80865D10(this, &func_808660E8);
        this->alpha = 0xFF;
    }
}

void func_80865ECC(Vec3f* translatedPos, Vec3f* firePos, f32 scale) {
    translatedPos->x += ((firePos->x - translatedPos->x) * scale);
    translatedPos->y += ((firePos->y - translatedPos->y) * scale);
    translatedPos->z += ((firePos->z - translatedPos->z) * scale);
}

// ArrowFire_Hit
void func_80865F1C(ArrowFire* this, GlobalContext* globalCtx) {
    f32 scale;
    f32 offset;
    u16 timer;
 
    if (this->actor.unk_F0 < 50.0f) {
        scale = 10.0f;
    } else {
        if (950.0f < this->actor.unk_F0) {
            scale = 310.0f;
        } else {
            scale = this->actor.unk_F0;
            scale = ((scale - 50.0f) * 0.33333334f) + 10.0f;
        }
    }
   
    timer = this->timer;
    if (timer != 0) {
        this->timer -= 1;
       
        if (this->timer >= 8){
            offset = ((this->timer - 8) * 0.041666668f);
            offset = SQ(offset);
            this->fireRadius = (((1.0f - offset) * scale) + 10.0f);
            this->unk_158 += ((2.0f - this->unk_158) * 0.1f);
            if (this->timer < 0x10) {
                if (1){} 
                this->alpha = ((this->timer * 0x23) - 0x118);
            }
        }
    }
 
    if (this->timer >= 9) {
        if (this->unk_15C < 1.0f) {
            this->unk_15C += 0.25f;
        }
    } else {
        if (this->unk_15C > 0.0f) {
            this->unk_15C -= 0.125f;
        }
    }
 
    if (this->timer < 8) { 
        this->alpha = 0;
    }
 
    if (this->timer == 0) {
        this->timer = 0xFF;
        Actor_Kill(&this->actor);
    }
}

// ArrowFire_Fly
void func_808660E8(ArrowFire* this, GlobalContext* globalCtx) {
    EnArrow* arrow;
    f32 distanceScaled;
    s32 pad;

    arrow = this->actor.attachedA;
    if ((arrow == NULL) || (arrow->actor.update == NULL)) {
        Actor_Kill(&this->actor);
        return;
    }
    // copy position and rotation from the attached arrow
    this->actor.posRot.pos = arrow->actor.posRot.pos;
    this->actor.shape.rot = arrow->actor.shape.rot;
    distanceScaled = Math_Vec3f_DistXYZ(&this->translatedPos, &this->actor.posRot.pos) * 0.041666668f;
    this->unk_158 = distanceScaled;
    if (distanceScaled < 1.0f) {
        this->unk_158 = 1.0f;
    }
    func_80865ECC(&this->translatedPos, &this->actor.posRot.pos, 0.05f);

    if (arrow->hitWall & 1) {
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_EXPLOSION_FRAME);
        func_80865D10(this, &func_80865F1C);
        this->timer = 32;
        this->alpha = 0xFF;
    } else if (arrow->timer < 0x22) {
        if (this->alpha < 0x23) {
            Actor_Kill(&this->actor);
        } else {
            this->alpha -= 0x19;
        }
    }
}

void ArrowFire_Update(ArrowFire* this, GlobalContext* globalCtx) {
    if (globalCtx->msgCtx.msgMode == 0xD || globalCtx->msgCtx.msgMode == 0x11) {
        Actor_Kill(&this->actor);
    } else {
        this->actionFunc(this, globalCtx);
    }
}

void ArrowFire_Draw(ArrowFire* this, GlobalContext* globalCtx){
    s32 pad1;
    s32 pad2;
    u32 stateFrames;
    GraphicsContext* gfxCtx;
    Actor* tranform; 
    EnArrow* arrow;
    s32 pad3;
    s32 pad4;
    Gfx* gfxArr[2];

    if (1) {
        stateFrames = globalCtx->state.frames;
        arrow = this->actor.attachedA;
    }

    if ((arrow != NULL) && (arrow->actor.update != NULL) && (this->timer < 0xFF)) {
        if (1) {}
        tranform = (arrow->hitWall & 2) ? &this->actor : &arrow->actor;
        gfxCtx = globalCtx->state.gfxCtx; func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_arrow_fire.c", 618); 
        Matrix_Translate(tranform->posRot.pos.x, tranform->posRot.pos.y, tranform->posRot.pos.z, MTXMODE_NEW);
        Matrix_RotateY(tranform->shape.rot.y * 9.58738E-05f, MTXMODE_APPLY); // 2*PI/65536, do we have a pi define?
        Matrix_RotateX(tranform->shape.rot.x * 9.58738E-05f, MTXMODE_APPLY); // 2*PI/65536, do we have a pi define?
        Matrix_RotateZ(tranform->shape.rot.z * 9.58738E-05f, MTXMODE_APPLY); // 2*PI/65536, do we have a pi define?
        Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);

        // Draw red effect over the screen when arrow hits
        if (this->unk_15C > 0) {
            gfxCtx->polyXlu.p = func_800937C0(gfxCtx->polyXlu.p);
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, (s32)(40.0f * this->unk_15C) & 0xFF, 0x00, 0x00, 
                            (s32)(150.0f * this->unk_15C) & 0xFF);
            gDPSetAlphaDither(gfxCtx->polyXlu.p++, G_AD_DISABLE);
            gDPSetColorDither(gfxCtx->polyXlu.p++, G_CD_DISABLE);
            gDPFillRectangle(gfxCtx->polyXlu.p++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
        }

        // Draw fire on the arrow
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xC8, 0x00, this->alpha);
        gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x00, 0x00, 0x80);
        Matrix_RotateZYX(0x4000, 0x0, 0x0, MTXMODE_APPLY);
        if (this->timer != 0) {
            Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        } else {
            Matrix_Translate(0.0f, 1500.0f, 0.0f, MTXMODE_APPLY);
        }
        Matrix_Scale(this->fireRadius * 0.2f, this->unk_158 * 4.0f, this->fireRadius * 0.2f, MTXMODE_APPLY);
        Matrix_Translate(0.0f, -700.0f, 0.0f, MTXMODE_APPLY);
        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_arrow_fire.c", 666), G_MTX_NOPUSH |
                  G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, &D_80867990);
        gSPDisplayList(gfxCtx->polyXlu.p++, Draw_TwoTexScroll(globalCtx->state.gfxCtx, 0, 
                       255 - (stateFrames * 2) % 256, 0, 64, 32, 1, 255 - stateFrames % 256, 
                       511 - (stateFrames * 10) % 512, 64, 64));
        gSPDisplayList(gfxCtx->polyXlu.p++, &D_80867A40);
        func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_arrow_fire.c", 682);
    }
}
