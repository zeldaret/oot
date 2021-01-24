#include "z_en_encount2.h"
#include "overlays/actors/ovl_En_Fire_Rock/z_en_fire_rock.h"
#include "vt.h"

#define FLAGS 0x00000030

#define THIS ((EnEncount2*)thisx)

void EnEncount2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnEncount2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnEncount2_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A07A4C(EnEncount2* this, GlobalContext* globalCtx);
void func_80A07CA4(EnEncount2* this, GlobalContext* globalCtx);
void func_80A08694(EnEncount2* this, Vec3f* arg1, f32 arg2);
void func_80A0891C(Actor* thisx, GlobalContext* globalCtx);
void func_80A08748(EnEncount2* this, GlobalContext* globalCtx);

extern Gfx* D_06000DE0[];

const ActorInit En_Encount2_InitVars = {
    ACTOR_EN_ENCOUNT2,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_EFC_STAR_FIELD,
    sizeof(EnEncount2),
    (ActorFunc)EnEncount2_Init,
    NULL,
    (ActorFunc)EnEncount2_Update,
    (ActorFunc)EnEncount2_Draw,
};

void EnEncount2_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnEncount2* this = THIS;

    if (globalCtx->sceneNum != 0x60) {
        this->unk15A = 1;
    }
    if (this->unk15A == 0) {
        osSyncPrintf("\n\n");
        // "☆☆☆☆☆ Death Mountain Encount2 set ☆☆☆☆☆"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ デスマウンテンエンカウント２セットされました ☆☆☆☆☆ %d\n" VT_RST, thisx->params);
        if (LINK_IS_ADULT && (gSaveContext.eventChkInf[4] & 0x200)) { //flag for having used fire temple blue warp
            Actor_Kill(thisx);
        }
    } else {
        osSyncPrintf("\n\n");
        // "☆☆☆☆☆ Ganon Tower Escape Encount2 set ☆☆☆☆☆"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ガノンタワー脱出エンカウント２セットされました ☆☆☆☆☆ %d\n" VT_RST, thisx->params);
    }
    this->unk14C = func_80A07A4C;
}

void func_80A07A4C(EnEncount2* this, GlobalContext *globalCtx) {
    s32 pad;
    s16 quakeIndex;
    s16 phi_v1;
    Player* player = PLAYER;

    phi_v1 = 0;
    if (this->unk15A == 0) {
        if ((player->actor.world.pos.y > 1500.0f) && (player->actor.world.pos.x > -700.0f) && (player->actor.world.pos.x < 100.0f) && (player->actor.world.pos.z < -1290.0f) && (player->actor.world.pos.z > -3600.0f)) {
            phi_v1 = 1;
        }
    } else {
        if ((this->actor.xzDistToPlayer < 700.0f) && (Flags_GetSwitch(globalCtx, 0x37))) {
            if ((globalCtx->sceneNum == 0x4F) || (globalCtx->sceneNum == 0x1A) || (globalCtx->sceneNum == 0xE) || (globalCtx->sceneNum == 0xF)) {
                if (this->unk_15C == 0) {
                    phi_v1 = 2;
                }
            }
        }
    }
    switch (phi_v1){
        case 0:
            this->unk180 = 0;
            this->unk178--;
            
            if (this->unk178 <= 0) {
                this->unk178 = 0;
            }
            break;
        case 1:
            if ((this->unk154 == 1) || (this->unk180 == 0)){
                quakeIndex = Quake_Add(ACTIVE_CAM, 1);
                Quake_SetSpeed(quakeIndex, 0x7FFF);
                Quake_SetQuakeValues(quakeIndex, 0x32, 0, 0, 0);
                Quake_SetCountdown(quakeIndex, 0x12C);
                this->unk180 = 1;
            }
        case 2:
            this->unk178++;
            if (this->unk178 >= 0x3D) {
                this->unk178 = 0x3C;
            }
            if (this->unk154 == 0) {
                this->unk154 = 0xC8;
                this->unk158 = 0;
                this->unk14C = func_80A07CA4;
            }
            break;
    }
    return;
}

void func_80A07CA4(EnEncount2* this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    EnFireRock* temp_v0_2;
    f32 tempVec1X;
    f32 tempVec1Y;
    f32 tempVec1Z;
    f32 magnitude;
    f32 tempVec2X;
    f32 tempVec2Y;
    f32 tempVec2Z;
    f32 randTemp;
    Vec3f particlePos;
    s16 sp62;
    s16 sp60;
    s16 sp5E;

    this->unk178++;
    if (this->unk178 > 0x3C) {
        this->unk178 = 0x3C;
    }
    sp60 = 0;
    if (this->unk15A == 0) {
        if (this->unk154 == 0) {
            this->unk154 = 0x64;
            this->unk14C = &func_80A07A4C;
            return;
        }
        if (player->actor.world.pos.y > 1500.0f) {
            if ((player->actor.world.pos.x > -700.0f) && (player->actor.world.pos.x < 100.0f)) {
                if ((player->actor.world.pos.z < -1290.0f) && (player->actor.world.pos.z > -3860.0f)) {
                    sp5E = 2;
                    sp60 = 1;
                }
            }
        }
        Audio_PlayActorSound2(&this->actor, 0x2049);
    } else {
        if (this->actor.xzDistToPlayer < 700.0f) {
            if (Flags_GetSwitch(globalCtx, 0x37) != 0) {
                if ((globalCtx->sceneNum == 0x4F) || (globalCtx->sceneNum == 0x1A) || (globalCtx->sceneNum == 0xE) || (globalCtx->sceneNum == 0xF)) {
                    if (this->unk_15C == 0) {
                        sp5E = 1;
                        sp60 = 2;
                    }
                }
            }
        }
    }
    if (sp60 != 0) {
        // TODO: Some of this is incorrect and will need going over

        // Direction vector for the direction the camera is facing
        tempVec1X = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
        tempVec1Y = globalCtx->view.lookAt.y - globalCtx->view.eye.y;
        tempVec1Z = globalCtx->view.lookAt.z - globalCtx->view.eye.z;

        // Normalised direction vector for the direction the camera is facing
        magnitude = sqrtf(SQ(tempVec1X) + SQ(tempVec1Y) + SQ(tempVec1Z));
        tempVec2X = tempVec1X / magnitude;
        tempVec2Y = tempVec1Y / magnitude;
        tempVec2Z = tempVec1Z / magnitude;

        // Some position between 160 and 300 units ahead of camera depending on pitch of camera, plus a 400 unit offset in Y
        // distance = 160 at +/-90 degrees pitch, 300 at 0 degrees pitch
        tempVec1X = globalCtx->view.eye.x + (tempVec2X * 300.0f);
        tempVec1Y = globalCtx->view.eye.y + (tempVec2Y * 160.0f) + 400.0f;
        tempVec1Z = globalCtx->view.eye.z + (tempVec2Z * 300.0f);

        // Position between 160 and 200 units ahead of camera depending on camera pitch, plus a 400 unit offset in Y, plus random variation
        // distance = 160 at +/-90 degrees pitch, 200 at 0 degrees pitch (plus some random variation)
        particlePos.x = Rand_CenteredFloat(200.0f) + (globalCtx->view.eye.x + (tempVec2X * 200.0f));
        particlePos.y = Rand_CenteredFloat(50.0f) + tempVec1Y;
        particlePos.z = Rand_CenteredFloat(200.0f) + (globalCtx->view.eye.z + (tempVec2Z * 200.0f));

        randTemp = Rand_CenteredFloat(0.005f) + 0.007f;
        if (sp60 == 1) {
            func_80A08694(this, &particlePos, randTemp);
        } else if (this->unk15E == 0) {
            func_80A08694(this, &particlePos, randTemp);
            this->unk15E = 5;
        }
        
        if ((this->unk158 < sp5E) && (this->unk156 == 0)) {
            if (sp60 == 1) {
                this->unk156 = 4;
                sp62 = 0;
                if ((Rand_ZeroFloat(1.99f) < 1.0f) && (LINK_IS_CHILD)) {
                    // rock spawn pos X,Z near player
                    tempVec2X = Rand_CenteredFloat(10.0f) + player->actor.world.pos.x;
                    tempVec2Z = Rand_CenteredFloat(10.0f) + player->actor.world.pos.z;
                } else {
                    if (player->linearVelocity != 0.0f) {
                        // rock spawn pos is between 300 and 600 units from the camera depending on the camera yaw.
                        // Rocks will be spawn to camera if spawning along the X axis, and further if spawning along the Z axis.
                        // But also position is weird if camera faces away from a cardinal. The position shifts along +Z or -Z slightly?
                        tempVec2X = Rand_CenteredFloat(200.0f) + (globalCtx->view.eye.x + (tempVec2X * 300.0f));
                        tempVec2Z = Rand_CenteredFloat(50.0f) + (globalCtx->view.eye.z + (tempVec2Z * 600.0f));
                    } else {
                        // rock spawn pos X,Z near player
                        tempVec2X = Rand_CenteredFloat(10.0f) + player->actor.world.pos.x;
                        tempVec2Z = Rand_CenteredFloat(10.0f) + player->actor.world.pos.z;
                    }
                    sp62 = 3;
                }
            } else {
                this->unk156 = 0x32;
                sp62 = 3;
                // rock spawn pos X,Z at a random position roughly 300 units ahead of camera
                tempVec2X = Rand_CenteredFloat(100.0f) + tempVec1X;
                tempVec2Z = Rand_CenteredFloat(100.0f) + tempVec1Z;
                if (Rand_ZeroFloat(3.99f) < 1.0f) {
                    tempVec2X = Rand_CenteredFloat(70.0f) + player->actor.world.pos.x;
                    tempVec2Z = Rand_CenteredFloat(70.0f) + player->actor.world.pos.z;
                }
            }
            temp_v0_2 = (EnFireRock*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FIRE_ROCK, tempVec2X, tempVec1Y, tempVec2Z, 0, 0, 0, sp62);
            if (temp_v0_2 != NULL) {
                temp_v0_2->spawner = this;
                this->unk158++;
                return;
            }
            // "☆☆☆☆☆ Can't occur! ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n\n" VT_RST);
        }
    }
}

void EnEncount2_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnEncount2* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;

    DECR(this->unk154);
    DECR(this->unk156);
    DECR(this->unk15E);
    this->unk14C(this, globalCtx2);
    func_80A08748(this, globalCtx2);
    if (this->unk15A == 0) {
        this->unk17C = this->unk178 / 60.0f;
        this->unk160 = this->unk17C * -50.0f;
        globalCtx2->envCtx.adjAmbientColor[0] = (s16)this->unk160 * -1.5f;
        globalCtx2->envCtx.adjAmbientColor[1] = globalCtx2->envCtx.adjAmbientColor[2] = this->unk160;
        this->unk168 = this->unk17C * -20.0f;
        globalCtx2->envCtx.adjLight1Color[0] = (s16)this->unk168 * -1.5f;
        globalCtx2->envCtx.adjLight1Color[1] = globalCtx2->envCtx.adjLight1Color[2] = this->unk168;
        this->unk170 = this->unk17C * -50.0f;
        globalCtx2->envCtx.adjFogNear = this->unk170;
        globalCtx2->envCtx.adjFogColor[0] = (u8)((160.0f - globalCtx2->envCtx.unk_CF[0]) * this->unk17C);
        globalCtx2->envCtx.adjFogColor[1] = (u8)((160.0f - globalCtx2->envCtx.unk_CF[1]) * this->unk17C);
        globalCtx2->envCtx.adjFogColor[2] = (u8)((150.0f - globalCtx2->envCtx.unk_CF[2]) * this->unk17C);
    }
}

void EnEncount2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnEncount2* this = THIS;
    func_80A0891C(&this->actor, globalCtx);
}

void func_80A08694(EnEncount2* this, Vec3f* arg1, f32 arg2) {
    unkStruct* struc = this->unk188;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(this->unk188); i++, struc++){
        if (struc->unk10 == 0){
            struc->unk0 = *arg1;
            struc->unkC = arg2;
            struc->unk20.x = 0.0f;
            struc->unk20.y = 0.0f;
            struc->unk20.z = 0.0f;
            struc->unk14.x = Rand_CenteredFloat(20.0f);
            struc->unk14.y = -20.0f;
            struc->unk14.z = Rand_CenteredFloat(20.0f);
            struc->unk10 = 1;
            break;
        }
    }
}

void func_80A08748(EnEncount2* this, GlobalContext* globalCtx) {
    s16 i;
    unkStruct* struc = this->unk188;
    Player* player = PLAYER;
    f32 temp1;
    f32 temp2;
    f32 temp3;

    for (i = 0; i < ARRAY_COUNT(this->unk188); struc++, i++){
        if (struc->unk10 != 0) {
            struc->unk20.x += (Rand_ZeroOne() * 500.0f);
            struc->unk20.y += (Rand_ZeroOne() * 500.0f);
            struc->unk20.z += (Rand_ZeroOne() * 500.0f);
            temp1 = (struc->unk0.x + struc->unk14.x);
            temp2 = (struc->unk0.y + struc->unk14.y);
            temp3 = (struc->unk0.z + struc->unk14.z);
            Math_ApproachF(&struc->unk0.x, temp1, 0.3f, 30.0f);
            Math_ApproachF(&struc->unk0.y, temp2, 0.8f, 250.0f);
            Math_ApproachF(&struc->unk0.z, temp3, 0.3f, 30.0f);
            Math_ApproachF(&struc->unk14.y, -20.0f, 0.9f, 1.0f);
            if (globalCtx->sceneNum != 0x60) {
                if (struc->unk0.y < (player->actor.floorHeight - 50.0f)) {
                    struc->unk10 = 0;
                }
            } else if (struc->unk0.y < 1500.0f) {
                struc->unk10 = 0;
            }
        }
    }
}

void func_80A0891C(Actor* thisx, GlobalContext* globalCtx) {
    EnEncount2* this = THIS;
    unkStruct* struc = this->unk188;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s16 i;
    s32 objBankIndex;

    OPEN_DISPS(gfxCtx, "../z_en_encount2.c", 642);
    objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_EFC_STAR_FIELD);
    if (objBankIndex >= 0) {
        
        gDPPipeSync(POLY_XLU_DISP++);
        gSPSegment(POLY_OPA_DISP++, 0x06, globalCtx->objectCtx.status[objBankIndex].segment);
        for (i = 0; i < ARRAY_COUNT(this->unk188); struc++, i++){
            if (struc->unk10 != 0) {
                Matrix_Translate(struc->unk0.x, struc->unk0.y, struc->unk0.z, 0);
                Matrix_RotateX(struc->unk20.x * (M_PI/180), 1);
                Matrix_RotateY(struc->unk20.y * (M_PI/180), 1);
                Matrix_RotateZ(struc->unk20.z * (M_PI/180), 1);
                Matrix_Scale(struc->unkC, struc->unkC, struc->unkC, 1);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0xFF, 0x9B, 0x37, 0xFF);
                gDPSetEnvColor(POLY_OPA_DISP++, 0x9B, 0xFF, 0x37, 0xFF);
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_encount2.c", 669), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, D_06000DE0);
            }
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_en_encount2.c", 678);
}
