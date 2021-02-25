/*
 * File: z_en_jsjutan.c
 * Overlay: ovl_En_Jsjutan
 * Description: Magic carpet man's carpet
 */

#include "z_en_jsjutan.h"

#define FLAGS 0x00000009

#define THIS ((EnJsjutan*)thisx)

void EnJsjutan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnJsjutan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnJsjutan_Update(Actor* thisx, GlobalContext* globalCtx);
void EnJsjutan_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Jsjutan_InitVars = {
    ACTOR_EN_JSJUTAN,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnJsjutan),
    (ActorFunc)EnJsjutan_Init,
    (ActorFunc)EnJsjutan_Destroy,
    (ActorFunc)EnJsjutan_Update,
    (ActorFunc)EnJsjutan_Draw,
};

#include "z_en_jsjutan_data.c"
/*
extern u8 D_80A8E610[0x800];
extern Vec3s D_80A8EE10[0x90];

extern u16 D_80A8AA98[0x800];
extern Vtx D_80A8BA98[];
extern Vtx D_80A8C398[];
extern Vtx D_80A8CC98[];
extern Gfx D_80A8D598[];
extern Gfx D_80A8D618[];
extern Gfx D_80A8D688[];
extern Vtx D_80A8DAB8[];
extern CamData D_80A8E3B8;
extern SurfaceType D_80A8E3C0;
extern CollisionPoly D_80A8E3C8[];
extern Vec3s D_80A8E3E8[];
extern CollisionHeader D_80A8E400;
*/

void EnJsjutan_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnJsjutan* this = THIS;
    s32 pad;
    CollisionHeader* header = NULL;

    this->dyna.actor.flags = this->dyna.actor.flags & ~1;
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    CollisionHeader_GetVirtual(&D_80A8E400, &header);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, header);
    Actor_SetScale(thisx, 0.02f);
    this->unk_164 = 1;
    this->shadowAlpha = 100.0f;
}

void EnJsjutan_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnJsjutan* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_80A89860(EnJsjutan* this, GlobalContext* globalCtx) {
    s32 pad;
    Vtx* phi_s0;
    Vtx* phi_s2;
    Vec3f actorPos = this->dyna.actor.world.pos;
    s16 i;

    phi_s0 = SEGMENTED_TO_VIRTUAL(D_80A8BA98);
    phi_s2 = SEGMENTED_TO_VIRTUAL(D_80A8C398);

    for (i = 0; i < ARRAY_COUNT(D_80A8EE10); i++) {
        D_80A8EE10[i].x = phi_s0->v.ob[0];
        D_80A8EE10[i].z = phi_s0->v.ob[2];
        if (this->dyna.actor.params == 1) {
            phi_s0->v.ob[1] = phi_s2->v.ob[1] = 0x585;
        } else {
            this->dyna.actor.world.pos.x = phi_s0->v.ob[0] * 0.02f + actorPos.x;
            this->dyna.actor.world.pos.z = phi_s0->v.ob[2] * 0.02f + actorPos.z;
            Actor_UpdateBgCheckInfo(globalCtx, &this->dyna.actor, 10.0f, 10.0f, 10.0f, 4);
            phi_s0->v.ob[1] = phi_s2->v.ob[1] = this->dyna.actor.floorHeight;
            this->dyna.actor.world.pos = actorPos;
        }
        phi_s0++;
        phi_s2++;
    }
}

#ifdef NON_MATCHING
void func_80A89A6C(EnJsjutan* this, GlobalContext* globalCtx) {
    u8 isPlayerOnTop;
    s16 i;
    s16 j;
    Vtx* phi_s0;
    Vtx* phi_s3;
    Vtx* phi_s0_2;
    Vec3f sp108;
    Vec3f spFC;
    Vtx* phi_s0_3;
    f32 temp_f0_3;
    Player* player;
    Actor* parent;
    Actor* actorExplosive;
    //f32 pad;
    f32 phi_f28;
    u8 spE0[3];
    f32 spD4[3];
    f32 spC8[3];
    f32 spBC[3];
    f32 spB8; // xDiff 
    f32 spB4; // yDiff 
    f32 spB0; // zDiff 
    f32 phi_f2_4;
    f32 spA8; // wave amplitude (?)
    Actor* actorProfessor;
    Actor* actorBeanGuy;
    f32 distance_1;
    f32 temp_f14_2;
    f32 distance_2;
    f32 phi_f2_2;
    f32 phi_f2_3;
    u8 isInCreditsScene;

    isPlayerOnTop = 0;
    player = PLAYER;
    parent = this->dyna.actor.parent;
    actorExplosive = globalCtx->actorCtx.actorLists[ACTORCAT_EXPLOSIVE].head;
    isInCreditsScene = 0;

    if (globalCtx->gameplayFrames & 1) {
        phi_s0 = SEGMENTED_TO_VIRTUAL(D_80A8CC98);
        phi_s3 = SEGMENTED_TO_VIRTUAL(D_80A8BA98);
    } else {
        phi_s0 = SEGMENTED_TO_VIRTUAL(D_80A8DAB8);
        phi_s3 = SEGMENTED_TO_VIRTUAL(D_80A8C398);
    }

    // *((s32*)0) = 0;

    spB8 = (player->actor.world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
    spB4 = (player->actor.world.pos.y - this->unk_168) * 50.0f;
    spB0 = (player->actor.world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;
    //phi_s0 = phi_s0_2
    phi_s0_2 = phi_s0;

    if ((fabsf(spB8) < 5500.0f) && (fabsf(spB4) < 3000.0f) && (fabsf(spB0) < 5500.0f)) {
        isPlayerOnTop = 1;
    }

    spD4[0] = (parent->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
    spC8[0] = ((parent->world.pos.y - 8.0f) - this->unk_168) * 50.0f;
    spBC[0] = (parent->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;
    spE0[0] = 1;

    for (i = 1; i < 3; i++) {
        spE0[i] = 0;
    }

    i = 1;

    //if (1) { }

    // Credits scene. The magic carpet man is friends with the bean guy and the lakeside professor.
    if ((gSaveContext.entranceIndex == 0x157) && (gSaveContext.sceneSetupIndex == 8)) {

        isInCreditsScene = 1;

        actorProfessor = globalCtx->actorCtx.actorLists[ACTORCAT_NPC].head;
        while (actorProfessor != NULL) {
            if (actorProfessor->id == ACTOR_EN_MK) {
                break;
            }
            actorProfessor = actorProfessor->next;
        }

        actorBeanGuy = globalCtx->actorCtx.actorLists[ACTORCAT_NPC].head;
        while (actorBeanGuy != NULL) {
            if (actorBeanGuy->id == ACTOR_EN_MS) {
                break;
            }
            actorBeanGuy = actorBeanGuy->next;
        }

        spD4[1] = (actorProfessor->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
        spC8[1] = (actorProfessor->world.pos.y - this->unk_168) * 50.0f;
        spBC[1] = (actorProfessor->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;
        spE0[1] = 1;

        spD4[2] = (actorBeanGuy->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
        spC8[2] = (actorBeanGuy->world.pos.y - this->unk_168) * 50.0f;
        spBC[2] = (actorBeanGuy->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;
        spE0[2] = 1;
    } else {
        //isInCreditsScene = 0;
        // if (actorExplosive != NULL) { }

        while (actorExplosive != NULL) {
            if (i < 3) {
                spD4[i] = (actorExplosive->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
                spC8[i] = (actorExplosive->world.pos.y - this->unk_168) * 50.0f;
                spBC[i] = (actorExplosive->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;

                if ((fabsf(spD4[i]) < 5500.0f) && (fabsf(spC8[i]) < 3000.0f) && (fabsf(spBC[i]) < 5500.0f)) {
                    if (actorExplosive->params == 1) {
                        spE0[i] = 35;
                    } else {
                        spE0[i] = 1;
                    }
                }
                i++;
            }
            actorExplosive = actorExplosive->next;
        }
    }

    //phi_s0 = phi_s0_2;

    if (!(&this->dyna.actor.world)) { }

    for (j = 0; j < 0x90; j++) {

        //if (*new_var) {
        if (isPlayerOnTop) {
            //f32 distance = sqrtf(((phi_s0->n.ob[0] - spB8) * (phi_s0->n.ob[0] - spB8)) + ((phi_s0->n.ob[2] - spB0) * (phi_s0->n.ob[2] - spB0)));
            //f32 aux1 = (phi_s0->n.ob[0] - spB8);
            //f32 aux2 = (phi_s0->n.ob[2] - spB0);
            //f32 distance = sqrtf((aux1 * aux1) + (aux2 *aux2));
            
            //distance = sqrtf(SQ(((f32) (phi_s0->n.ob[0] - spB8))) + SQ(((f32) (phi_s0->n.ob[2] - spB0))));
            distance_1 = sqrtf(SQ(phi_s0->n.ob[2] - spB0) + SQ(phi_s0->n.ob[0] - spB8));

            phi_f2_4 = (2500.0f - distance_1) / 2500.0f;

            //*((s32*)0) = 0;

            if (phi_f2_4 < 0.0f) {
                phi_f2_4 = 0.0f;
            }
            //phi_f2_4 = CLAMP_MIN(phi_f2_4, 0.0f);

            // phi_f16 = this->unk_170;
            
            //phi_f28 = (spB4 * phi_f2_4) + ((this->unk_170 - (this->unk_170 * phi_f2_4)) - 200.0f);
            //phi_f28 = ((this->unk_170 - (this->unk_170 * phi_f2_4)) - 200.0f) + (spB4 * phi_f2_4);
            //phi_f28 = (spB4 * phi_f2_4);
            //phi_f28 = phi_f28 + ((this->unk_170 - (this->unk_170 * phi_f2_4)) - 200.0f);
            spA8 = (spB4 * phi_f2_4) + ((this->unk_170 - (this->unk_170 * phi_f2_4)) - 200.0f);
            phi_f28 = spA8;

            distance_1 = distance_1 - 1500.0f;

            if (distance_1 < 0.0f) {
                distance_1 = 0.0f;
            }
            //distance = CLAMP_MIN(distance, 0.0f);
            //if (1) { }

            spA8 = (distance_1 * 100.0f) * 0.01f;
            if (spA8 > 100.0f) {
                spA8 = 100.0f;
            }
            //spA8 = CLAMP_MAX(spA8, 100.0f);

        } else {
            // temp_f16_2 = this->unk_170;
            phi_f28 = this->unk_170 - 200.f;
            spA8 = 100.0f;
        }

        for (i = 0; i < 3; i++) {
            if (spE0[i] != 0) {
                
                //distance = sqrtf(SQ((f32) phi_s0->n.ob[0] - spD4[i]) + SQ((f32) phi_s0->n.ob[2] - spBC[i]));
                distance_2 = sqrtf(SQ(phi_s0->n.ob[2] - spBC[i]) + SQ(phi_s0->n.ob[0] - spD4[i]));
                
                if ((i == 0) || isInCreditsScene) {
                    phi_f2_2 = (3000.0f - distance_2) / 3000.0f;
                } else {
                    phi_f2_2 = (2000.0f - distance_2) / 2000.0f;
                }

                //phi_f2_2 = CLAMP_MIN(phi_f2_2, 0.0f);
                if (phi_f2_2 < 0.0f) {
                    phi_f2_2 = 0.0f;
                }

                // distance = distance - 1500.0f;
                //temp_f14_2 = (spC8[i] * phi_f2_2) + ((this->unk_170 - (this->unk_170 * phi_f2_2)) - 200.0f);
                //temp_f14_2 = ((this->unk_170 - (this->unk_170 * phi_f2_2)) - 200.0f) + (spC8[i] * phi_f2_2);
                temp_f14_2 = (spC8[i] * phi_f2_2);
                temp_f14_2 +=  ((this->unk_170 - (this->unk_170 * phi_f2_2)) - 200.0f);

                distance_2 = distance_2 - 1500.0f;
                //distance = CLAMP_MIN(distance, 0.0f);
                if (distance_2 < 0.0f) {
                    distance_2 = 0.0f;
                }

                phi_f2_3 = 100.0f * distance_2 * 0.01f;
                //phi_f2_3 = CLAMP_MAX(phi_f2_3, 100.0f);
                if (phi_f2_3 > 100.0f) {
                    phi_f2_3 = 100.0f;
                }

                //phi_f28 = CLAMP_MAX(phi_f28, temp_f14_2);
                //phi_f28 = phi_f28;
                //if (phi_f28 > temp_f14_2) {
                //    phi_f28 = temp_f14_2;
                //}
                if (temp_f14_2 < phi_f28) {
                    phi_f28 = temp_f14_2;
                }

                //spA8 = CLAMP_MAX(spA8, phi_f2_3);
                //spA8 = spA8;
                //if (spA8 > phi_f2_3) {
                //    spA8 = phi_f2_3;
                //}
                if (phi_f2_3 < spA8) {
                    spA8 = phi_f2_3;
                }
            }
        }

        temp_f0_3 = Math_SinS(globalCtx->gameplayFrames * 4000 + j * 10000);

        if (this->unk_174 != 0) {
            s16 phi_v1_4;// = (phi_f28 + (temp_f0_3 * spA8));
            s16 temp_a0_3;// = ((phi_s3->n.ob[1] - this->unk_168) * 50.0f);

            temp_f14_2 = temp_f0_3 * spA8;

            phi_v1_4 = phi_f28 + (temp_f14_2);
            temp_a0_3 = (phi_s3->n.ob[1] - this->unk_168) * 50.0f;

            //phi_v1_4 = phi_v1_4;
            if (phi_v1_4 < temp_a0_3) {
                phi_v1_4 = temp_a0_3;
            }
            //phi_v1_4 = CLAMP_MIN(phi_v1_4, temp_a0_3);

            phi_s0->n.ob[1] = phi_v1_4;
        } else {
            //f32 temp_f2_3 = temp_f0_3 * spA8;
            temp_f14_2 = temp_f0_3 * spA8;

            phi_s0->n.ob[1] = phi_f28 + (temp_f14_2);

            //s16 temp_v1_4 = (s16) (temp_f2_3 * 0.5f);
            phi_s0->n.ob[0] = D_80A8EE10[j].x + (s16)((temp_f14_2) * 0.5f);
            phi_s0->n.ob[2] = D_80A8EE10[j].z + (s16)((temp_f14_2) * 0.5f);

            // s16 temp_a0_4 = (s16) (s32) temp_f2_3;
            phi_s3->n.ob[0] = D_80A8EE10[j].x + (s16)(temp_f14_2);
            phi_s3->n.ob[2] = D_80A8EE10[j].z + (s16)(temp_f14_2);
        }

        phi_s0++;
        phi_s3++;
    }

    // address: ac4 ~ bb8
    if (this->unk_174 == 0) {
        u16 dayTime;

        this->dyna.actor.velocity.y = 0.0f;
        this->dyna.actor.world.pos.y = this->unk_168;

        dayTime = gSaveContext.dayTime;
        if (dayTime >= 0x8000) {
            dayTime = 0xFFFF - dayTime;
        }

        this->shadowAlpha = (dayTime * 0.00275f) + 10.0f; // (1.0f / 364.0f) ?
        this->unk_170 = 1000.0f;
        //if (1) { }  if (1) { }  if (1) { }  if (1) { }  if (1) { }  if (1) { } 
    } else {
        Math_ApproachF(&this->dyna.actor.world.pos.y, this->unk_168 - 1000.0f, 1.0f, this->dyna.actor.velocity.y);
        Math_ApproachF(&this->dyna.actor.velocity.y, 5.0f, 1.0f, 0.5f);
        Math_ApproachF(&this->shadowAlpha, 0.0f, 1.0f, 3.0f);
        Math_ApproachF(&this->unk_170, -5000.0f, 1.0f, 100.0f);
    }

    // address: bbc
    phi_s0_3 = phi_s0_2;

    sp108.x = 0.0f;
    sp108.y = 0.0f;
    sp108.z = 120.0f;

    for (j = 0; j < 0x90; j++) {
        s16 index; // phi_v1_5
        //f32 temp_f24;
        f32 phi_f22;
        f32 aux_f20;

        if ((j % 0xC) == 0xB) {
            index = j - 1;
            phi_f22 = phi_s0_3->n.ob[2] - phi_s0_2[index].n.ob[2];
        } else {
            index = j + 1;
            phi_f22 = phi_s0_2[index].n.ob[2] - phi_s0_3->n.ob[2];
        }

        temp_f0_3 = phi_s0_2[index].n.ob[1] - phi_s0_3->n.ob[1];

        phi_f22 = Math_Atan2F(phi_f22, temp_f0_3);

        if (j >= 0x84) {
            index = j - 0xC;
            aux_f20 = phi_s0_3->n.ob[0] - phi_s0_2[index].n.ob[0];
        } else {
            index = j + 0xC;
            aux_f20 = phi_s0_2[index].n.ob[0] - phi_s0_3->n.ob[0];
        }

        aux_f20 = Math_Atan2F(aux_f20, temp_f0_3);

        Matrix_RotateX(phi_f22, MTXMODE_NEW);
        Matrix_RotateZ(aux_f20, MTXMODE_APPLY);
        Matrix_MultVec3f(&sp108, &spFC);

        phi_s0_3->n.n[0] = spFC.x;
        phi_s0_3->n.n[1] = spFC.y;
        phi_s0_3->n.n[2] = spFC.z;
        phi_s0_3++;
    }
}
#else
void func_80A89A6C(EnJsjutan* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/func_80A89A6C.s")
#endif

void EnJsjutan_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnJsjutan* this = THIS;

    this->dyna.actor.shape.rot.x = Math_SinS(globalCtx->gameplayFrames * 3000) * 300.0f;
    this->dyna.actor.shape.rot.z = Math_CosS(globalCtx->gameplayFrames * 3500) * 300.0f;
    if (!globalCtx) {}
}

void EnJsjutan_Draw(Actor* thisx, GlobalContext* globalCtx2) {
    EnJsjutan* this = THIS;
    GlobalContext* globalCtx = globalCtx2;
    s16 i;
    Actor* parent = thisx->parent;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_jsjutan.c", 701);

    if (thisx->params == 1) {
        thisx->world.pos.x = parent->world.pos.x;
        thisx->world.pos.y = parent->world.pos.y;
        thisx->world.pos.z = parent->world.pos.z;
        this->unk_168 = thisx->world.pos.y;
        if (this->unk_175 == 0) {
            this->unk_175 = 1;
            func_80A89860(this, globalCtx);
        }
    } else if (this->unk_175 == 0) {
        this->unk_175 = 1;
        thisx->world.pos.x = Math_SinS(parent->shape.rot.y) * 60.0f + parent->world.pos.x;
        thisx->world.pos.y = (parent->world.pos.y + 5.0f) - 10.0f;
        thisx->world.pos.z = Math_CosS(parent->shape.rot.y) * 60.0f + parent->world.pos.z;
        this->unk_168 = thisx->world.pos.y;
        func_80A89860(this, globalCtx);
    }

    func_80A89A6C(this, globalCtx);
    if (this->unk_164 != 0) {
        this->unk_164 = 0;
        for (i = 0; i < ARRAY_COUNT(D_80A8AA98); i++) {
            if (D_80A8AA98[i] != 0) {
                D_80A8E610[i] = 0xFF;
            } else {
                D_80A8E610[i] = 0;
            }
        }
    }
    func_80093D18(globalCtx->state.gfxCtx);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, (s16)this->shadowAlpha);

    Matrix_Translate(thisx->world.pos.x, 3.0f, thisx->world.pos.z, MTXMODE_NEW);
    Matrix_Scale(thisx->scale.x, 1.0f, thisx->scale.z, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_jsjutan.c", 782),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_80A8D618);
    gDPPipeSync(POLY_OPA_DISP++);

    if (globalCtx->gameplayFrames & 1) {
        gSPSegment(POLY_OPA_DISP++, 0x0C, D_80A8BA98);
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x0C, D_80A8C398);
    }
    gSPDisplayList(POLY_OPA_DISP++, D_80A8D688);

    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_Translate(thisx->world.pos.x, this->unk_168 + 3.0f, thisx->world.pos.z, MTXMODE_NEW);
    Matrix_Scale(thisx->scale.x, thisx->scale.y, thisx->scale.z, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_jsjutan.c", 805),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_80A8D598);
    gDPPipeSync(POLY_OPA_DISP++);

    if (globalCtx->gameplayFrames & 1) {
        gSPSegment(POLY_OPA_DISP++, 0x0C, D_80A8CC98);
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x0C, D_80A8DAB8);
    }
    gSPDisplayList(POLY_OPA_DISP++, D_80A8D688);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_jsjutan.c", 823);
}
