#include "transition_wipe.h"

#include "gfx.h"
#include "save.h"
#include "transition_instances.h"

typedef enum TransitionWipeDirection {
    /* 0 */ TRANS_WIPE_DIR_IN,
    /* 1 */ TRANS_WIPE_DIR_OUT
} TransitionWipeDirection;

#include "assets/code/fbdemo_wipe1/code.c"

// unused.
Gfx sTransWipeSyncDL[] = {
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

void TransitionWipe_Start(void* thisx) {
    TransitionWipe* this = (TransitionWipe*)thisx;

    this->isDone = false;

    if (this->direction != TRANS_WIPE_DIR_IN) {
        this->texY = (s32)(83.25f * (1 << 2));
    } else {
        this->texY = (s32)(153.0f * (1 << 2));
    }

    guPerspective(&this->projection, &this->normal, 60.0f, (4.0f / 3.0f), 10.0f, 12800.0f, 1.0f);
    guLookAt(&this->lookAt, 0.0f, 0.0f, 400.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
}

void* TransitionWipe_Init(void* thisx) {
    TransitionWipe* this = (TransitionWipe*)thisx;

    bzero(this, sizeof(TransitionWipe));
    return this;
}

void TransitionWipe_Destroy(void* thisx) {
}

void TransitionWipe_Update(void* thisx, s32 updateRate) {
    TransitionWipe* this = (TransitionWipe*)thisx;

    if (this->direction != TRANS_WIPE_DIR_IN) {
        this->texY += (((void)0, gSaveContext.transWipeSpeed) * 3) / updateRate;
        if (this->texY >= (s32)(153.0f * (1 << 2))) {
            this->texY = (s32)(153.0f * (1 << 2));
            this->isDone = true;
        }
    } else {
        this->texY -= (((void)0, gSaveContext.transWipeSpeed) * 3) / updateRate;
        if (this->texY <= (s32)(83.25f * (1 << 2))) {
            this->texY = (s32)(83.25f * (1 << 2));
            this->isDone = true;
        }
    }
}

void TransitionWipe_Draw(void* thisx, Gfx** gfxP) {
    Gfx* gfx = *gfxP;
    Mtx* modelView;
    TransitionWipe* this = (TransitionWipe*)thisx;
    Color_RGBA8_u32* color;
    s32 pad[3];
    Gfx* texScroll;

    modelView = this->modelView[this->frame];
    this->frame ^= 1;

    guScale(&modelView[0], 0.56f, 0.56f, 1.0f);
    guRotate(&modelView[1], 0.0f, 0.0f, 0.0f, 1.0f);
    guTranslate(&modelView[2], 0.0f, 0.0f, 0.0f);

    gDPPipeSync(gfx++);

    texScroll = Gfx_BranchTexScroll(&gfx, this->texX, this->texY, 0, 0);
    gSPSegment(gfx++, 8, texScroll);

    color = &this->color;
    gDPSetPrimColor(gfx++, 0, 0x80, color->r, color->g, color->b, 255);

    gSPMatrix(gfx++, &this->projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPPerspNormalize(gfx++, this->normal);
    gSPMatrix(gfx++, &this->lookAt, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    gSPMatrix(gfx++, &modelView[0], G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPMatrix(gfx++, &modelView[1], G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPMatrix(gfx++, &modelView[2], G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPDisplayList(gfx++, sTransWipeDL);
    gDPPipeSync(gfx++);
    *gfxP = gfx;
}

s32 TransitionWipe_IsDone(void* thisx) {
    TransitionWipe* this = (TransitionWipe*)thisx;

    return this->isDone;
}

void TransitionWipe_SetType(void* thisx, s32 type) {
    TransitionWipe* this = (TransitionWipe*)thisx;

    if (type == TRANS_INSTANCE_TYPE_FILL_OUT) {
        this->direction = TRANS_WIPE_DIR_OUT;
    } else {
        this->direction = TRANS_WIPE_DIR_IN;
    }

    if (this->direction != TRANS_WIPE_DIR_IN) {
        this->texY = (s32)(83.25f * (1 << 2));
    } else {
        this->texY = (s32)(153.0f * (1 << 2));
    }
}

void TransitionWipe_SetColor(void* thisx, u32 color) {
    TransitionWipe* this = (TransitionWipe*)thisx;

    this->color.rgba = color;
}

void TransitionWipe_SetUnkColor(void* thisx, u32 color) {
    TransitionWipe* this = (TransitionWipe*)thisx;

    this->unkColor.rgba = color;
}
