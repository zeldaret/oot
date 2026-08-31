#include "z_demo_ext.h"

#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "regs.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "play_state.h"
#include "skin.h"

#include "assets/objects/object_fhg/object_fhg.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void DemoExt_Init(Actor* thisx, PlayState* play);
void DemoExt_Destroy(Actor* thisx, PlayState* play);
void DemoExt_Update(Actor* thisx, PlayState* play);
void DemoExt_Draw(Actor* thisx, PlayState* play);

void func_80977854(DemoExt*, PlayState*);
void func_80977874(DemoExt* this, PlayState* play);
void func_809778AC(DemoExt* this, PlayState* arg1);
void func_80977944(DemoExt* arg0, PlayState* arg1);
void func_80977950(DemoExt* this, PlayState* play);

typedef void (*DemoExtUpdateFunc)(DemoExt*, PlayState*);
static DemoExtUpdateFunc sUpdateFuncs[] = {
    func_80977854,
    func_80977874,
    func_809778AC,
};
typedef void (*DemoExtDrawFunc)(DemoExt*, PlayState*);
static DemoExtDrawFunc sDrawFuncs[] = {
    func_80977944,
    func_80977950,
};
ActorProfile Demo_Ext_Profile = {
    /**/ ACTOR_DEMO_EXT,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_FHG,
    /**/ sizeof(DemoExt),
    /**/ DemoExt_Init,
    /**/ DemoExt_Destroy,
    /**/ DemoExt_Update,
    /**/ DemoExt_Draw,
};

void DemoExt_Destroy(Actor* thisx, PlayState* play) {
}

void DemoExt_Init(Actor* thisx, PlayState* play) {
    DemoExt* this = (DemoExt*)thisx;

    this->texScrollStep[0] = 25;
    this->texScrollStep[1] = 40;
    this->texScrollStep[2] = 5;
    this->texScrollStep[3] = 30;
    this->unk170 = kREG(28) + 0xFF;
    this->unk174 = kREG(32) + 0xFF;
    this->unk178.x = kREG(19) + 400.0f;
    this->unk178.y = kREG(20) + 100.0f;
    this->unk178.z = kREG(21) + 400.0f;
}

void func_80977450(DemoExt* this) {
    if (this->unk16C <= (kREG(35) + 40.0f - 15.0f)) {
        SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_EV_FANTOM_WARP_L - SFX_FLAG);
    }
}

CsCmdActorCue* func_809774D8(PlayState* play, s32 arg1) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[arg1];

        return cue;
    }
    return NULL;
}

void func_809774FC(DemoExt* this) {
    this->unk14C = 0;
    this->unk150 = 0;
}

void func_80977508(DemoExt* this, PlayState* play) {
    CsCmdActorCue* temp_v0;
    s16 temp_v1;

    temp_v0 = func_809774D8(play, 5);
    if (temp_v0 != NULL) {
        this->actor.world.pos.x = temp_v0->startPos.x;
        this->actor.world.pos.y = temp_v0->startPos.y;
        this->actor.world.pos.z = temp_v0->startPos.z;
        temp_v1 = temp_v0->rot.y;
        this->actor.shape.rot.y = temp_v1;
        this->actor.world.rot.y = temp_v1;
    }
    this->unk14C = 1;
    this->unk150 = 1;
}

void func_80977590(DemoExt* this) {
    this->unk14C = 2;
    this->unk150 = 1;
}

void func_809775A4(DemoExt* this) {
    this->unk16C += 1.0f;
    if ((kREG(35) + 40.0f) <= this->unk16C) {
        Actor_Kill(&this->actor);
    }
}

void func_80977610(DemoExt* this, PlayState* play) {
    CsCmdActorCue* temp_v0;
    s32 temp_a2;
    s32 v;

    temp_v0 = func_809774D8(play, 5);
    if (temp_v0 != NULL) {
        temp_a2 = temp_v0->id;
        v = this->cueId;
        if (temp_a2 != v) {
            switch (temp_a2) {
                case 1:
                    func_809774FC(this);
                    break;

                case 2:
                    func_80977508(this, play);
                    break;

                case 3:
                    func_80977590(this);
                    break;

                default:
                    PRINTF("Demo_Ext_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->cueId = temp_a2;
        }
    }
}

void func_809776D0(DemoExt* this) {
    s16* texScrollPos = this->texScrollPos;
    s16* texScrollStep = this->texScrollStep;
    s32 var_v0;

    for (var_v0 = 3; var_v0 != 0; var_v0--) {
        texScrollPos[var_v0] += texScrollStep[var_v0];
    }
    this->unk168 += (s16)(kREG(34) + 0x3E8);
}

void func_8097771C(DemoExt* this) {
    Vec3f* temp_v0;
    f32 var_fv0;

    temp_v0 = &this->unk178;
    var_fv0 = ((kREG(35) + 40.0f) - this->unk16C) / (kREG(35) + 40.0f);
    if (var_fv0 < 0.0f) {
        var_fv0 = 0.0f;
    }
    this->unk170 = (s32)((u32)(kREG(28) + 0xFF) * var_fv0);
    this->unk174 = (s32)((u32)(kREG(32) + 0xFF) * var_fv0);
    temp_v0->x = (kREG(19) + 400.0f) * var_fv0;
    temp_v0->y = (kREG(20) + 100.0f) * var_fv0;
    temp_v0->z = (kREG(21) + 400.0f) * var_fv0;
}

void func_80977854(DemoExt* this, PlayState* play) {
    func_80977610(this, play);
}

void func_80977874(DemoExt* this, PlayState* play) {
    func_80977450(this);
    func_809776D0(this);
    func_80977610(this, play);
}

void func_809778AC(DemoExt* this, PlayState* play) {
    func_80977450(this);
    func_809776D0(this);
    func_8097771C(this);
    func_809775A4(this);
}

void DemoExt_Update(Actor* thisx, PlayState* play) {
    DemoExt* this = (DemoExt*)thisx;

    if ((this->unk14C < 0) || (this->unk14C >= ARRAY_COUNT(sUpdateFuncs)) || (sUpdateFuncs[this->unk14C] == NULL)) {
        PRINTF("\x1b[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m");
        return;
    }
    sUpdateFuncs[this->unk14C](this, play);
}

void func_80977944(DemoExt* this, PlayState* play) {
}

void func_80977950(DemoExt* this, PlayState* play) {
    GraphicsContext* gfxCtx;
    Mtx* mtx;
    Vec3f* temp_v0;
    s16* texScrollPos;
    s32 pad;

    gfxCtx = play->state.gfxCtx;
    texScrollPos = this->texScrollPos;
    temp_v0 = &this->unk178;
    mtx = GRAPH_ALLOC(gfxCtx, 0x40U);
    OPEN_DISPS(gfxCtx, "../z_demo_ext.c", 460);
    Matrix_Push();
    Matrix_Scale(temp_v0->x, temp_v0->y, temp_v0->z, MTXMODE_APPLY);
    Matrix_RotateZYX(kREG(16) + 0x4000, this->unk168, kREG(18), MTXMODE_APPLY);
    Matrix_Translate(kREG(22), kREG(23), kREG(24), MTXMODE_APPLY);
    MATRIX_TO_MTX(mtx, "../z_demo_ext.c", 476);
    Matrix_Pop();
    Gfx_SetupDL_25Xlu(gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x00, kREG(33) + 0x80, kREG(25) + 0x8C, kREG(26) + 0x50, kREG(27) + 0x8C,
                    this->unk170);
    gDPSetEnvColor(POLY_XLU_DISP++, kREG(29) + 0x5A, kREG(30) + 0x32, kREG(31) + 0x5F, this->unk174);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(gfxCtx, 0, texScrollPos[0], texScrollPos[1], 64, 64, 1, texScrollPos[2],
                                texScrollPos[3], 64, 64));
    gSPMatrix(POLY_XLU_DISP++, mtx, G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, gPhantomWarpDL);
    gSPPopMatrix(POLY_XLU_DISP++, G_MTX_MODELVIEW);
    CLOSE_DISPS(gfxCtx, "../z_demo_ext.c", 512);
}

void DemoExt_Draw(Actor* thisx, PlayState* play) {
    DemoExt* this = (DemoExt*)thisx;

    if ((this->unk150 < 0) || (this->unk150 >= ARRAY_COUNT(sDrawFuncs)) || (sDrawFuncs[this->unk150] == NULL)) {
        PRINTF("\x1b[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m");
        return;
    }
    sDrawFuncs[this->unk150](this, play);
}
