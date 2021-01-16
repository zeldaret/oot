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

extern UNK_TYPE D_06000DE0;

/*
const ActorInit En_Encount2_InitVars = {
    ACTOR_EN_ENCOUNT2,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_EFC_STAR_FIELD,
    sizeof(EnEncount2),
    (ActorFunc)EnEncount2_Init,
    NULL,
    (ActorFunc)EnEncount2_Update,
    (ActorFunc)EnEncount2_Draw,
};
*/

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
        if ((player->actor.posRot.pos.y > 1500.0f) && (player->actor.posRot.pos.x > -700.0f) && (player->actor.posRot.pos.x < 100.0f) && (player->actor.posRot.pos.z < -1290.0f) && (player->actor.posRot.pos.z > -3600.0f)) {
            phi_v1 = 1;
        }
    } else {
        if ((this->actor.xzDistToLink < 700.0f) && (Flags_GetSwitch(globalCtx, 0x37))) {
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
        if (player->actor.posRot.pos.y > 1500.0f) {
            if ((player->actor.posRot.pos.x > -700.0f) && (player->actor.posRot.pos.x < 100.0f)) {
                if ((player->actor.posRot.pos.z < -1290.0f) && (player->actor.posRot.pos.z > -3860.0f)) {
                    sp5E = 2;
                    sp60 = 1;
                }
            }
        }
        Audio_PlayActorSound2(this, 0x2049);
    } else {
        if (this->actor.xzDistToLink < 700.0f) {
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
                    tempVec2X = Rand_CenteredFloat(10.0f) + player->actor.posRot.pos.x;
                    tempVec2Z = Rand_CenteredFloat(10.0f) + player->actor.posRot.pos.z;
                } else {
                    if (player->linearVelocity != 0.0f) {
                        // rock spawn pos is between 300 and 600 units from the camera depending on the camera yaw.
                        // Rocks will be spawn to camera if spawning along the X axis, and further if spawning along the Z axis.
                        // But also position is weird if camera faces away from a cardinal. The position shifts along +Z or -Z slightly?
                        tempVec2X = Rand_CenteredFloat(200.0f) + (globalCtx->view.eye.x + (tempVec2X * 300.0f));
                        tempVec2Z = Rand_CenteredFloat(50.0f) + (globalCtx->view.eye.z + (tempVec2Z * 600.0f));
                    } else {
                        // rock spawn pos X,Z near player
                        tempVec2X = Rand_CenteredFloat(10.0f) + player->actor.posRot.pos.x;
                        tempVec2Z = Rand_CenteredFloat(10.0f) + player->actor.posRot.pos.z;
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
                    tempVec2X = Rand_CenteredFloat(70.0f) + player->actor.posRot.pos.x;
                    tempVec2Z = Rand_CenteredFloat(70.0f) + player->actor.posRot.pos.z;
                }
            }
            temp_v0_2 = (EnFireRock*)Actor_SpawnAsChild(&globalCtx->actorCtx, this, globalCtx, ACTOR_EN_FIRE_ROCK, tempVec2X, tempVec1Y, tempVec2Z, 0, 0, 0, sp62);
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
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f2;
    f32 temp_f8;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v1;
    s16 temp_v1_2;
    u8 temp_t8;
    f32 phi_f8;
    f32 phi_return;

    temp_v0 = this->unk154;
    if (this->unk154 != 0) {
        this->unk154--;
    }
    temp_v0_2 = this->unk156;
    if (this->unk156 != 0) {
        this->unk156--;
    }
    temp_v0_3 = this->unk15E;
    if (this->unk15E != 0) {
        this->unk15E--;
    }
    this->unk14C(this, globalCtx);
    phi_return = func_80A08748(this, globalCtx);
    if (this->unk15A == 0) {
        temp_f0 = (f32) this->unk178 / 60.0f;
        temp_f2 = temp_f0 * -50.0f;
        this->unk17C = temp_f0;
        this->unk160 = temp_f2;
        globalCtx->unk10AB0 = (s16) (s32) ((f32) (s16) (s32) temp_f2 * -1.5f);
        temp_v1 = (s16) (s32) this->unk160;
        globalCtx->unk10AB4 = temp_v1;
        globalCtx->unk10AB2 = temp_v1;
        temp_f12 = this->unk17C * -20.0f;
        this->unk168 = temp_f12;
        globalCtx->unk10AB6 = (s16) (s32) ((f32) (s16) (s32) temp_f12 * -1.5f);
        temp_v1_2 = (s16) (s32) this->unk168;
        globalCtx->unk10ABA = temp_v1_2;
        globalCtx->unk10AB8 = temp_v1_2;
        temp_f0_2 = this->unk17C * -50.0f;
        this->unk170 = temp_f0_2;
        globalCtx->unk10AC2 = (s16) (s32) temp_f0_2;
        temp_t8 = globalCtx->unk10AF3;
        temp_f8 = (f32) temp_t8;
        phi_f8 = temp_f8;
        if ((s32) temp_t8 < 0) {
            phi_f8 = temp_f8 + 4294967296.0f;
        }
        globalCtx->unk10ABC = (s16) ((u32) ((160.0f - phi_f8) * this->unk17C) & 0xFF);
        globalCtx->unk10ABE = (s16) ((u32) ((160.0f - (f32) (u32) globalCtx->unk10AF4) * this->unk17C) & 0xFF);
        globalCtx->unk10AC0 = (s16) ((u32) ((150.0f - (f32) (u32) globalCtx->unk10AF5) * this->unk17C) & 0xFF);
        phi_return = temp_f0_2;
    }
    return phi_return;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/EnEncount2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/EnEncount2_Draw.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/func_80A08748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/func_80A0891C.s")
