#include "transition_circle.h"

#include "color.h"
#include "gfx.h"
#include "sfx.h"
#include "transition.h"

typedef enum TransitionCircleDirection {
    /* 0 */ TRANS_CIRCLE_DIR_IN,
    /* 1 */ TRANS_CIRCLE_DIR_OUT
} TransitionCircleDirection;

// unused
Gfx sTransCircleEmptyDL[] = {
    gsSPEndDisplayList(),
};

#include "assets/code/fbdemo_circle/code.c"

void TransitionCircle_Start(void* thisx) {
    TransitionCircle* this = (TransitionCircle*)thisx;

    this->isDone = false;

    switch (this->appearanceType) {
        case TCA_WAVE:
            this->texture = sTransCircleWaveTex;
            break;

        case TCA_RIPPLE:
            this->texture = sTransCircleRippleTex;
            break;

        case TCA_STARBURST:
            this->texture = sTransCircleStarburstTex;
            break;

        default:
            this->texture = sTransCircleNormalTex;
            break;
    }

    if (this->speedType == TCS_FAST) {
        this->speed = 20;
    } else {
        this->speed = 10;
    }

    if (this->colorType == TCC_BLACK) {
        this->color.rgba = RGBA8(0, 0, 0, 255);
    } else if (this->colorType == TCC_WHITE) {
        this->color.rgba = RGBA8(160, 160, 160, 255);
    } else if (this->colorType == TCC_GRAY) {
        this->color.r = 100;
        this->color.g = 100;
        this->color.b = 100;
        this->color.a = 255;
    } else {
        this->speed = 40;
        this->color.rgba = (this->appearanceType == TCA_WAVE) ? RGBA8(0, 0, 0, 255) : RGBA8(160, 160, 160, 255);
    }

    if (this->direction != TRANS_CIRCLE_DIR_IN) {
        this->texY = (s32)(0.0f * (1 << 2));
        if (this->colorType == TCC_SPECIAL) {
            this->texY = (s32)(62.5f * (1 << 2));
        }
    } else {
        this->texY = (s32)(125.0f * (1 << 2));
        if (this->appearanceType == TCA_RIPPLE) {
            SFX_PLAY_CENTERED(NA_SE_OC_SECRET_WARP_OUT);
        }
    }

    guPerspective(&this->projection, &this->normal, 60.0f, (4.0f / 3.0f), 10.0f, 12800.0f, 1.0f);
    guLookAt(&this->lookAt, 0.0f, 0.0f, 400.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
}

void* TransitionCircle_Init(void* thisx) {
    TransitionCircle* this = (TransitionCircle*)thisx;

    bzero(this, sizeof(TransitionCircle));
    return this;
}

void TransitionCircle_Destroy(void* thisx) {
}

void TransitionCircle_Update(void* thisx, s32 updateRate) {
    TransitionCircle* this = (TransitionCircle*)thisx;

    if (this->direction != TRANS_CIRCLE_DIR_IN) {
        if (this->texY == 0) {
            if (this->appearanceType == TCA_RIPPLE) {
                SFX_PLAY_CENTERED(NA_SE_OC_SECRET_WARP_IN);
            }
        }
        this->texY += this->speed * 3 / updateRate;
        if (this->texY >= (s32)(125.0f * (1 << 2))) {
            this->texY = (s32)(125.0f * (1 << 2));
            this->isDone = true;
        }
    } else {
        this->texY -= this->speed * 3 / updateRate;
        if (this->colorType != TCC_SPECIAL) {
            if (this->texY <= (s32)(0.0f * (1 << 2))) {
                this->texY = (s32)(0.0f * (1 << 2));
                this->isDone = true;
            }
        } else {
            if (this->texY <= (s32)(62.5f * (1 << 2))) {
                this->texY = (s32)(62.5f * (1 << 2));
                this->isDone = true;
            }
        }
    }
}

void TransitionCircle_Draw(void* thisx, Gfx** gfxP) {
    Gfx* gfx = *gfxP;
    Mtx* modelView;
    TransitionCircle* this = (TransitionCircle*)thisx;
    Gfx* texScroll;
    // These variables are a best guess based on the other transition types.
    f32 tPos = 0.0f;
    f32 rot = 0.0f;
    f32 scale = 14.8f;

    modelView = this->modelView[this->frame];

    this->frame ^= 1;
    gDPPipeSync(gfx++);
    texScroll = Gfx_BranchTexScroll(&gfx, this->texX, this->texY, 16, 64);
    gSPSegment(gfx++, 9, texScroll);
    gSPSegment(gfx++, 8, this->texture);
    gDPSetColor(gfx++, G_SETPRIMCOLOR, this->color.rgba);
    gDPSetColor(gfx++, G_SETENVCOLOR, this->color.rgba);
    gSPMatrix(gfx++, &this->projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPPerspNormalize(gfx++, this->normal);
    gSPMatrix(gfx++, &this->lookAt, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

    if (scale != 1.0f) {
        guScale(&modelView[0], scale, scale, 1.0f);
        gSPMatrix(gfx++, &modelView[0], G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }

    if (rot != 0.0f) {
        guRotate(&modelView[1], rot, 0.0f, 0.0f, 1.0f);
        gSPMatrix(gfx++, &modelView[1], G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    }

    if ((tPos != 0.0f) || (tPos != 0.0f)) {
        guTranslate(&modelView[2], tPos, tPos, 0.0f);
        gSPMatrix(gfx++, &modelView[2], G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    }
    gSPDisplayList(gfx++, sTransCircleDL);
    gDPPipeSync(gfx++);
    *gfxP = gfx;
}

s32 TransitionCircle_IsDone(void* thisx) {
    TransitionCircle* this = (TransitionCircle*)thisx;

    return this->isDone;
}

void TransitionCircle_SetType(void* thisx, s32 type) {
    TransitionCircle* this = (TransitionCircle*)thisx;

    if (type & TC_SET_PARAMS) {
        // SetType is called twice for circles, the actual direction value will be set on the second call.
        // The direction set here will be overwritten on that second call.
        this->direction = (type >> 5) & 1;

        this->colorType = (type >> 3) & 3;
        this->speedType = type & 1;
        this->appearanceType = (type >> 1) & 3;
    } else if (type == TRANS_INSTANCE_TYPE_FILL_OUT) {
        this->direction = TRANS_CIRCLE_DIR_OUT;
    } else {
        this->direction = TRANS_CIRCLE_DIR_IN;
    }
}

void TransitionCircle_SetColor(void* thisx, u32 color) {
    TransitionCircle* this = (TransitionCircle*)thisx;

    this->color.rgba = color;
}

void TransitionCircle_SetUnkColor(void* thisx, u32 color) {
    TransitionCircle* this = (TransitionCircle*)thisx;

    this->unkColor.rgba = color;
}
