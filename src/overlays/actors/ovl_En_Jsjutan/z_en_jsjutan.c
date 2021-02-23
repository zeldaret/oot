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

void func_80A89A6C(EnJsjutan* this, GlobalContext* globalCtx);
/*
void func_80A89A6C(EnJsjutan* this, GlobalContext* globalCtx) {
    u8 sp127 = 0;
    Vec3f sp108;
    Vec3f spFC;
    s8 spE0[3];
    f32 spD4[3];
    f32 spC8[3];
    f32 spBC[3];
    Vec3f spB0;
    Player* player;
    f32 aux3_f;
    f32 temp_f20_4; //
    f32 temp_f22_4; //
    f32 temp_f24; //
    f32 temp_f2_3;
    Actor *parent;
    s16 i;
    Actor *phi_v1;
    Actor *phi_v0;
    Actor *phi_a2;
    Vtx *phi_s0;
    u8 phi_t3;
    f32 phi_f12_2;
    f32 phi_f28;
    f32 phi_f2_3;
    f32 phi_f18; //
    s16 j;
    Vtx *phi_s3;
    u16 daytime;
    f32 aux_f;
    Vtx *phi_s0_2;
    s16 phi_v1_5;
    f32 aux2_f; //
    s16 aux_s16_1;
    s16 aux_s16_2;


    player = PLAYER;
    parent = this->dyna.actor.parent;
    phi_a2 = globalCtx->actorCtx.actorLists[ACTORCAT_EXPLOSIVE].head;

    if (globalCtx->gameplayFrames & 1) {
        phi_s0_2 = SEGMENTED_TO_VIRTUAL(D_80A8CC98);
        phi_s3 = SEGMENTED_TO_VIRTUAL(D_80A8BA98);
    } else {
        phi_s0_2 = SEGMENTED_TO_VIRTUAL(D_80A8DAB8);
        phi_s3 = SEGMENTED_TO_VIRTUAL(D_80A8C398);
    }

    spB0.x = (player->actor.world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
    spB0.y = (player->actor.world.pos.y - this->unk_168) * 50.0f;
    spB0.z = (player->actor.world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;

    if ((fabsf(spB0.x) < 5500.0f) && (fabsf(spB0.y) < 3000.0f) && (fabsf(spB0.z) < 5500.0f)) {
        sp127 = 1;
    }

    spD4[0] = (parent->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
    spC8[0] = ((parent->world.pos.y - 8.0f) - this->unk_168) * 50.0f;
    spBC[0] = (parent->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;
    spE0[0] = 1;

    for (i = 1; i < 3; i++) {
        spE0[i] = 0;
    }

    if ((gSaveContext.entranceIndex == 0x157) && (gSaveContext.sceneSetupIndex == 8)) {

        phi_t3 = 1;
        //*((s32*)0) = 0;

        phi_v1 = globalCtx->actorCtx.actorLists[ACTORCAT_NPC].head;
        while (phi_v1 != NULL) {
            if (phi_v1->id == ACTOR_EN_MK) {
                break;
            }
            phi_v1 = phi_v1->next;
        }

        phi_v0 = globalCtx->actorCtx.actorLists[ACTORCAT_NPC].head;
        while (phi_v0 != NULL) {
            if (phi_v0->id == ACTOR_EN_MS) {
                break;
            }
            phi_v0 = phi_v0->next;
        }

        spD4[1] = (phi_v1->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
        spC8[1] = (phi_v1->world.pos.y - this->unk_168) * 50.0f;
        spBC[1] = (phi_v1->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;
        spE0[1] = 1;

        spD4[2] = (phi_v0->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
        spC8[2] = (phi_v0->world.pos.y - this->unk_168) * 50.0f;
        spBC[2] = (phi_v0->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;
        spE0[2] = 1;
    } else {
        phi_t3 = 0;
        //*((s32*)0) = 0;
        i = 1;
        while (phi_a2 != NULL) {
            if (i < 3) {
                spD4[i] = (phi_a2->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
                spC8[i] = (phi_a2->world.pos.y - this->unk_168) * 50.0f;
                spBC[i] = (phi_a2->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;
                if ((fabsf(spD4[i]) < 5500.0f) && (fabsf(spC8[i]) < 3000.0f) && (fabsf(spBC[i]) < 5500.0f)) {
                    if (phi_a2->params == 1) {
                        spE0[i] = 35;
                    } else {
                        spE0[i] = 1;
                    }
                }
                i++;
            }
            phi_a2 = phi_a2->next;
        }

    }

    phi_s0 = phi_s0_2;

    for (j = 0; j < 0x90; j++) {
        if (sp127 != 0) {

            aux2_f = sqrtf(((phi_s0->n.ob[0] - spB0.z) * (phi_s0->n.ob[0] - spB0.z)) + ((phi_s0->n.ob[2] - spB0.x) * (phi_s0->n.ob[2] - spB0.x)));

            aux_f = (2500.0f - aux2_f) / 2500.0f;
            //aux_f = CLAMP_MIN(aux_f, 0.0f);
            if (aux_f < 0.0f) {
                aux_f = 0.0f;
            }

            //*((s32*)0) = 0;

            phi_f28 = (spB0.y * aux_f) + ((this->unk_170 - (this->unk_170 * aux_f)) - 200.0f);

            aux3_f = aux2_f - 1500.0f;
            //aux3_f = CLAMP_MIN(aux3_f, 0.0f);
            if (aux3_f < 0.0f) {
                aux3_f = 0.0f;
            }

            phi_f18 = 100.0f * aux3_f * 0.01f;
            //phi_f18 = CLAMP_MAX(phi_f18, 100.0f);
            if (phi_f18 > 100.0f) {
                phi_f18 = 100.0f;
            }
        } else {
            phi_f28 = this->unk_170 - 200.0f;
            phi_f18 = 100.0f;
        }

        for (i = 0; i < 3; i++) {
            if (spE0[i] != 0) {
                aux2_f = sqrtf(((phi_s0->n.ob[0] - spD4[i]) * (phi_s0->n.ob[0] - spD4[i])) + ((phi_s0->n.ob[2] -
spBC[i]) * (phi_s0->n.ob[2] - spBC[i])));

                if ((i == 0) || (phi_t3 != 0)) {
                    aux_f = (3000.0f - aux2_f) / 3000.0f;
                } else {
                    aux_f = (2000.0f - aux2_f) / 2000.0f;
                }
                //aux_f = CLAMP_MIN(aux_f, 0.0f);
                if (aux_f < 0.0f) {
                    aux_f = 0.0f;
                }

                aux3_f = (spC8[i] * aux_f) + ((this->unk_170 - (this->unk_170 * aux_f)) - 200.0f);

                phi_f12_2 = aux2_f - 1500.0f;
                //phi_f12_2 = CLAMP_MIN(phi_f12_2, 0.0f);
                if (phi_f12_2 < 0.0f) {
                    phi_f12_2 = 0.0f;
                }

                phi_f2_3 = 100.0f * phi_f12_2 * 0.01f;
                //phi_f2_3 = CLAMP_MAX(phi_f2_3, 100.0f);
                if (phi_f2_3 > 100.0f) {
                    phi_f2_3 = 100.0f;
                }

                //phi_f28 = CLAMP_MAX(phi_f28, aux3_f);
                if (phi_f28 > aux3_f) {
                    phi_f28 = aux3_f;
                }

                //phi_f18 = CLAMP_MAX(phi_f18, phi_f2_3);
                if (phi_f18 > phi_f2_3) {
                    phi_f18 = phi_f2_3;
                }
            }
        }

        aux3_f = Math_SinS(globalCtx->gameplayFrames * 4000 + j * 10000);
        if (this->unk_174 != 0) {
            aux_s16_1 = (phi_f28 + (aux3_f * phi_f18));
            aux_s16_2 = (phi_s3->n.ob[1] - this->unk_168) * 50.0f;
            //aux_s16_1 = CLAMP_MIN(aux_s16_1, aux_s16_2);
            if (aux_s16_1 < aux_s16_2) {
                aux_s16_1 = aux_s16_2;
            }

            //*((s32*)0) = 0;

            phi_s0->n.ob[1] = aux_s16_1;
        } else {
            temp_f2_3 = aux3_f * phi_f18;

            phi_s0->n.ob[1] = (s16) (phi_f28 + temp_f2_3);
            phi_s0->n.ob[0] = (s16) (D_80A8EE10[j].x + (s16) (temp_f2_3 * 0.5f));
            phi_s0->n.ob[2] = (s16) (D_80A8EE10[j].z + (s16) (temp_f2_3 * 0.5f));
            phi_s3->n.ob[0] = (s16) (D_80A8EE10[j].x + (s16)temp_f2_3);
            phi_s3->n.ob[2] = (s16) (D_80A8EE10[j].z + (s16)temp_f2_3);
        }
        phi_s0++;
        phi_s3++;
    }


    if (this->unk_174 == 0) {
        this->dyna.actor.velocity.y = 0.0f;
        this->dyna.actor.world.pos.y = this->unk_168;

        daytime = gSaveContext.dayTime;
        if (gSaveContext.dayTime >= 0x8000) {
            daytime = (0xFFFF - gSaveContext.dayTime);
        }

        this->unk_170 = 1000.0f;
        this->shadowAlpha = (daytime * 0.00275f) + 10.0f;
    } else {
        Math_ApproachF(&this->dyna.actor.world.pos.y, this->unk_168 - 1000.0f, 1.0f, this->dyna.actor.velocity.y);
        Math_ApproachF(&this->dyna.actor.velocity.y, 5.0f, 1.0f, 0.5f);
        Math_ApproachF(&this->shadowAlpha, 0.0f, 1.0f, 3.0f);
        Math_ApproachF(&this->unk_170, -5000.0f, 1.0f, 100.0f);
    }


    phi_s0 = phi_s0_2;

    sp108.x = 0.0f;
    sp108.y = 0.0f;
    sp108.z = 120.0f;


    for (j = 0; j < ARRAY_COUNT(D_80A8CC98); j++) {
        if ((j % 0xC) == 0xB) {
            phi_v1_5 = j - 1;
            //aux_f = (f32) (phi_s0->n.ob[2] - (phi_s0_2 + (temp_v0_5 * 0x10))->n.ob[2]);
            aux_f = (f32) (phi_s0->n.ob[2] - phi_s0_2[phi_v1_5].n.ob[2]);
        } else {
            phi_v1_5 = j + 1;
            //aux_f = (f32) ((phi_s0_2 + ((j + 1) * 0x10))->n.ob[2] - phi_s0->n.ob[2]);
            aux_f = (f32) ((phi_s0_2[phi_v1_5]).n.ob[2] - phi_s0->n.ob[2]);
        }

        //temp_f24 = (f32) ((phi_s0_2 + (phi_v1_5 * 0x10))->n.ob[1] - phi_s0->n.ob[1]);
        temp_f24 = (f32) ((phi_s0_2[phi_v1_5]).n.ob[1] - phi_s0->n.ob[1]);
        temp_f22_4 = Math_Atan2F(aux_f, temp_f24);

        if (j >= 0x84) {
            //aux2_f = (f32) (phi_s0->n.ob[0] - *(phi_s0_2 + ((s16) (j - 0xC) * 0x10)));
            //aux2_f = (f32) (phi_s0->n.ob[0] - (*(phi_s0_2 + ((s16) (j - 0xC) * 0x10))).n.ob[0]);
            aux2_f = (f32) (phi_s0->n.ob[0] - ((phi_s0_2[(s16)(j-0xc)])).n.ob[0]);
        } else {
            //aux2_f = (f32) ((*(phi_s0_2 + ((s16) (j + 0xC) * 0x10))).n.ob[0] - phi_s0->n.ob[0]);
            aux2_f = (f32) (((phi_s0_2[(s16)(j+0xc)])).n.ob[0] - phi_s0->n.ob[0]);
        }

        temp_f20_4 = Math_Atan2F(aux2_f, temp_f24);
        Matrix_RotateX(temp_f22_4, MTXMODE_NEW);
        Matrix_RotateZ(temp_f20_4, MTXMODE_APPLY);
        Matrix_MultVec3f(&sp108, &spFC);
        phi_s0->n.n[0] = spFC.x;
        phi_s0->n.n[1] = spFC.y;
        phi_s0->n.n[2] = spFC.z;
        phi_s0++;
    }
}
*/
/*
void func_80A89A6C(EnJsjutan* this, GlobalContext* globalCtx) {
    u8 isPlayerOnTop;
    Vec3f sp108;
    Vec3f spFC;
    s8 spE0[3];
    f32 spD4[3];
    f32 spC8[3];
    f32 spBC[3];
    f32 spB8;
    f32 spB4;
    f32 spB0;
    f32 spA8; // wave amplitude (?)
    u8 isInCreditsScene;
    Player *player;
    Actor *parent;
    s16 i;
    Actor *actorExplosive;
    Vtx *phi_s0;
    s16 j;
    Vtx *vtx_phi_s3;
    Vtx *vtx_phi_s0_2;
    Vtx *phi_s0_3;
    //f32 distance;

    isPlayerOnTop = 0;
    player = PLAYER;
    parent = this->dyna.actor.parent;
    actorExplosive = globalCtx->actorCtx.actorLists[ACTORCAT_EXPLOSIVE].head;

    if (globalCtx->gameplayFrames & 1) {
        vtx_phi_s0_2 = SEGMENTED_TO_VIRTUAL(D_80A8CC98);
        vtx_phi_s3 = SEGMENTED_TO_VIRTUAL(D_80A8BA98);
    } else {
        vtx_phi_s0_2 = SEGMENTED_TO_VIRTUAL(D_80A8DAB8);
        vtx_phi_s3 = SEGMENTED_TO_VIRTUAL(D_80A8C398);
    }

    // *((s32*)0) = 0;

    spB8 = (player->actor.world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
    spB4 = (player->actor.world.pos.y - this->unk_168) * 50.0f;
    spB0 = (player->actor.world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;

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

    //if (1) { }

    // Credits scene. The magic carpet man is friends with the bean guy and the lakeside professor.
    if ((gSaveContext.entranceIndex == 0x157) && (gSaveContext.sceneSetupIndex == 8)) {
        Actor *actorProfessor;
        Actor *actorBeanGuy;

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

        isInCreditsScene = 1;
    } else {
        isInCreditsScene = 0;
        i = 1;
        //*((s32*)0) = 0;
        while (actorExplosive != NULL) {
            if (i < 3) {
                spD4[i] = (f32) ((actorExplosive->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f);
                spC8[i] = (f32) ((actorExplosive->world.pos.y - this->unk_168) * 50.0f);
                spBC[i] = (f32) ((actorExplosive->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f);

                if (fabsf(spD4[i]) < 5500.0f && (fabsf(spC8[i]) < 3000.0f) && (fabsf(spBC[i]) < 5500.0f)) {
                    if (actorExplosive->params == 1) {
                        spE0[i] = 35;
                    } else {
                        spE0[i] = 1;
                    }
                }
                i++;
            }
            actorExplosive = actorExplosive->next;
            isInCreditsScene = 0;
        }
    }

    //phi_s0 = vtx_phi_s0_2;

    for (j = 0, phi_s0 = vtx_phi_s0_2; j < 0x90; j++) {
        f32 temp_f0_3;
        f32 phi_f28;

        if (isPlayerOnTop) {
            //f32 distance = sqrtf(((phi_s0->n.ob[0] - spB8) * (phi_s0->n.ob[0] - spB8)) + ((phi_s0->n.ob[2] - spB0) * (phi_s0->n.ob[2] - spB0)));
            //f32 aux1 = (phi_s0->n.ob[0] - spB8);
            //f32 aux2 = (phi_s0->n.ob[2] - spB0);
            //f32 distance = sqrtf((aux1 * aux1) + (aux2 *aux2));
            f32 distance;
            f32 phi_f2_4;
            f32 aux1;
            f32 aux2;

            aux1 = ((f32) (phi_s0->n.ob[0] - spB8));
            aux2 = ((f32) (phi_s0->n.ob[2] - spB0));

            distance = sqrtf((aux1 * aux1) + (aux2 * aux2));
            phi_f2_4 = (2500.0f - distance) / 2500.0f;

            //*((s32*)0) = 0;

            if (phi_f2_4 < 0.0f) {
                phi_f2_4 = 0.0f;
            }
            //phi_f2_4 = CLAMP_MIN(phi_f2_4, 0.0f);

            phi_f28 = (spB4 * phi_f2_4) + ((this->unk_170 - (this->unk_170 * phi_f2_4)) - 200.0f);

            distance = distance - 1500.0f;
            if (distance < 0.0f) {
                distance = 0.0f;
            }
            //distance = CLAMP_MIN(distance, 0.0f);
            //if (1) { }

            spA8 = 100.0f * distance * 0.01f;
            if (spA8 > 100.0f) {
                spA8 = 100.0f;
            }
            //spA8 = CLAMP_MAX(spA8, 100.0f);

        } else {
            phi_f28 = this->unk_170 - 200.0f;
            spA8 = 100.0f;
        }

        for (i = 0; i < 3; i++) {
            if (spE0[i] != 0) {
                f32 temp_f14_2;
                f32 distance;
                f32 phi_f2_2;
                f32 phi_f2_3;
                f32 aux1;
                f32 aux2;

                aux1 = ((f32) phi_s0->n.ob[0] - spD4[i]);
                aux2 = ((f32) phi_s0->n.ob[2] - spBC[i]);

                distance = sqrtf((aux1 * aux1) + (aux2 * aux2));
                if ((i == 0) || isInCreditsScene) {
                    phi_f2_2 = (3000.0f - distance) / 3000.0f;
                } else {
                    phi_f2_2 = (2000.0f - distance) / 2000.0f;
                }
                //phi_f2_2 = CLAMP_MIN(phi_f2_2, 0.0f);
                if (phi_f2_2 < 0.0f) {
                    phi_f2_2 = 0.0f;
                }

                temp_f14_2 = (spC8[i] * phi_f2_2) + ((this->unk_170 - (this->unk_170 * phi_f2_2)) - 200.0f);

                distance = distance - 1500.0f;
                //distance = CLAMP_MIN(distance, 0.0f);
                if (distance < 0.0f) {
                    distance = 0.0f;
                }

                phi_f2_3 = 100.0f * distance * 0.01f;
                //phi_f2_3 = CLAMP_MAX(phi_f2_3, 100.0f);
                if (phi_f2_3 > 100.0f) {
                    phi_f2_3 = 100.0f;
                }

                //phi_f28 = CLAMP_MAX(phi_f28, temp_f14_2);
                //phi_f28 = phi_f28;
                if (phi_f28 > temp_f14_2) {
                    phi_f28 = temp_f14_2;
                }

                //spA8 = CLAMP_MAX(spA8, phi_f2_3);
                //spA8 = spA8;
                if (spA8 > phi_f2_3) {
                    spA8 = phi_f2_3;
                }
            }
        }

        temp_f0_3 = Math_SinS(globalCtx->gameplayFrames * 4000 + j * 10000);

        if (this->unk_174 != 0) {
            s16 phi_v1_4 = (phi_f28 + (temp_f0_3 * spA8));
            s16 temp_a0_3 = ((vtx_phi_s3->n.ob[1] - this->unk_168) * 50.0f);

            //phi_v1_4 = phi_v1_4;
            if (phi_v1_4 < temp_a0_3) {
                phi_v1_4 = temp_a0_3;
            }
            //phi_v1_4 = CLAMP_MIN(phi_v1_4, temp_a0_3);

            phi_s0->n.ob[1] = phi_v1_4;
        } else {
            phi_s0->n.ob[1] = (s16) (phi_f28 + (temp_f0_3 * spA8));

            phi_s0->n.ob[0] = (s16) (D_80A8EE10[j].x + (s16)((temp_f0_3 * spA8) * 0.5f));
            phi_s0->n.ob[2] = (s16) (D_80A8EE10[j].z + (s16)((temp_f0_3 * spA8) * 0.5f));

            vtx_phi_s3->n.ob[0] = (s16) (D_80A8EE10[j].x + (s16)(temp_f0_3 * spA8));
            vtx_phi_s3->n.ob[2] = (s16) (D_80A8EE10[j].z + (s16)(temp_f0_3 * spA8));
        }

        phi_s0++;
        vtx_phi_s3++;
    }

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
    } else {
        Math_ApproachF(&this->dyna.actor.world.pos.y, this->unk_168 - 1000.0f, 1.0f, this->dyna.actor.velocity.y);
        Math_ApproachF(&this->dyna.actor.velocity.y, 5.0f, 1.0f, 0.5f);
        Math_ApproachF(&this->shadowAlpha, 0.0f, 1.0f, 3.0f);
        Math_ApproachF(&this->unk_170, -5000.0f, 1.0f, 100.0f);
    }

    sp108.x = 0.0f;
    sp108.y = 0.0f;
    sp108.z = 120.0f;

    for (j = 0, phi_s0_3 = vtx_phi_s0_2; j < 0x90; j++, phi_s0_3++) {
        s16 index;
        f32 phi_f22;
        f32 temp_f24;
        f32 temp_f22_4;
        f32 temp_f20_4;

        if ((j % 0xC) == 0xB) {
            index = j - 1;
            phi_f22 = (f32) (phi_s0_3->n.ob[2] - vtx_phi_s0_2[index].n.ob[2]);
        } else {
            index = j + 1;
            phi_f22 = (f32) (vtx_phi_s0_2[index].n.ob[2] - phi_s0_3->n.ob[2]);
        }

        temp_f24 = (f32) (vtx_phi_s0_2[index].n.ob[1] - phi_s0_3->n.ob[1]);
        temp_f22_4 = Math_Atan2F(phi_f22, temp_f24);

        if (j >= 0x84) {
            phi_f22 = (f32) (phi_s0_3->n.ob[0] - vtx_phi_s0_2[(s16) (j - 0xC)].n.ob[0]);
        } else {
            phi_f22 = (f32) (vtx_phi_s0_2[(s16)(j + 0xC)].n.ob[0] - phi_s0_3->n.ob[0]);
        }
        temp_f20_4 = Math_Atan2F(phi_f22, temp_f24);

        Matrix_RotateX(temp_f22_4, MTXMODE_NEW);
        Matrix_RotateZ(temp_f20_4, MTXMODE_APPLY);
        Matrix_MultVec3f(&sp108, &spFC);

        phi_s0_3->n.n[0] = spFC.x;
        phi_s0_3->n.n[1] = spFC.y;
        phi_s0_3->n.n[2] = spFC.z;
        //phi_s0_3++;
    }
}
*/
void func_80A89A6C(EnJsjutan* this, GlobalContext* globalCtx) {
    u8 sp127;
    Vec3f sp108;
    Vec3f spFC;
    s8 spE2;
    s8 spE1;
    s8 spE0;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    f32 spC4;
    f32 spC0;
    f32 spBC;
    f32 spB8;
    f32 spB4;
    f32 spB0;
    f32 spA8;
    u8 sp8B;
    u32 *sp74;
    Actor *temp_a0;
    Actor *temp_a2;
    Actor *temp_a2_2;
    Player* player;
    Actor *temp_v0;
    Actor *temp_v1;
    f32 *temp_a0_2;
    f32 *temp_a1;
    f32 *temp_v1_2;
    f32 distance_f0;
    f32 distance_f0_2;
    f32 temp_f0_3;
    f32 temp_f10_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f18_3;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f20_4;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f22_4;
    f32 temp_f24;
    f32 temp_f28;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    s16 temp_a0_3;
    s16 temp_a0_4;
    s16 temp_s1;
    s16 temp_s1_2;
    s16 temp_s1_3;
    s16 temp_s2;
    s16 temp_v0_5;
    s16 temp_v1_3;
    s16 temp_v1_4;
    s32 temp_cond;
    s32 temp_f10;
    s32 temp_v0_2;
    s8 *temp_t2;
    struct Actor *parent;
    u16 temp_v0_4;
    Vtx *temp_s0;
    Vtx *temp_s4;
    Vec3s *temp_v0_3;
    s16 phi_s1;
    Actor *phi_v1;
    Actor *phi_v0;
    Actor *phi_v1_2;
    Actor *phi_v0_2;
    s32 phi_s1_2;
    Actor *phi_a2;
    Vtx *phi_s0;
    f32 phi_f12;
    s8 *phi_t2;
    s16 phi_v1_3;
    u8 phi_t3;
    f32 phi_f2;
    f32 phi_f12_2;
    f32 phi_f2_2;
    f32 phi_f16;
    f32 phi_f28;
    f32 phi_f2_3;
    f32 phi_f18;
    f32 phi_f18_2;
    s16 phi_s1_3;
    f32 phi_f28_2;
    Vtx *phi_s3;
    s16 phi_v1_4;
    s32 phi_v0_3;
    f32 phi_f10;
    s32 phi_s1_4;
    f32 phi_f22;
    Vtx *phi_s0_2;
    s16 phi_v1_5;
    Vtx *phi_s0_3;
    f32 phi_f20;
    s16 phi_s2;
    f32 phi_f2_4;

    sp127 = 0;
    player = PLAYER;
    parent = this->dyna.actor.parent;
    temp_a2 = globalCtx->actorCtx.actorLists[ACTORCAT_EXPLOSIVE].head;
    sp74 = (u32*)globalCtx + 0x10000/4;

    if (globalCtx->gameplayFrames & 1) {
        phi_s0_2 = SEGMENTED_TO_VIRTUAL(D_80A8CC98);
        phi_s3 = SEGMENTED_TO_VIRTUAL(D_80A8BA98);
    } else {
        phi_s0_2 = SEGMENTED_TO_VIRTUAL(D_80A8DAB8);
        phi_s3 = SEGMENTED_TO_VIRTUAL(D_80A8C398);
    }

    temp_f14 = this->dyna.actor.world.pos.x;
    temp_f18 = (player->actor.world.pos.x - temp_f14) * 50.0f;
    temp_f20 = (player->actor.world.pos.y - this->unk_168) * 50.0f;
    temp_s4 = phi_s0_2;
    temp_f22 = (player->actor.world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;

    if ((fabsf(temp_f18) < 5500.0f) && (fabsf(temp_f20) < 3000.0f) && (fabsf(temp_f22) < 5500.0f)) {
        sp127 = 1;
    }

    temp_t2 = &spE0;
    spD4 = (parent->world.pos.x - temp_f14) * 50.0f;
    spC8 = ((parent->world.pos.y - 8.0f) - this->unk_168) * 50.0f;
    spE0 = 1;
    spBC = (parent->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;

    phi_s1 = (u16)1;
loop_8:
    temp_s1 = phi_s1 + 1;
    temp_t2[phi_s1] = (u8)0;
    phi_s1 = temp_s1;
    if ((s32) temp_s1 < 3) {
        goto loop_8;
    }

    if ((gSaveContext.entranceIndex == 0x157) && (gSaveContext.sceneSetupIndex == 8)) {
        temp_a0 = globalCtx->actorCtx.actorLists[ACTORCAT_NPC].head;
        phi_v1 = temp_a0;
        phi_v1_2 = temp_a0;
        if (temp_a0 != 0) {
loop_12:
            phi_v1_2 = phi_v1;
            if (phi_v1->id != 0x14A) {
                temp_v1 = phi_v1->next;
                phi_v1 = temp_v1;
                phi_v1_2 = temp_v1;
                if (temp_v1 != 0) {
                    goto loop_12;
                }
            }
        }
        phi_v0_2 = temp_a0;
        if (temp_a0 != 0) {
            phi_v0 = temp_a0;
loop_16:
            phi_v0_2 = phi_v0;
            if (phi_v0->id != 0x13E) {
                temp_v0 = phi_v0->next;
                phi_v0 = temp_v0;
                phi_v0_2 = temp_v0;
                if (temp_v0 != 0) {
                    goto loop_16;
                }
            }
        }
        spD8 = (phi_v1_2->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
        spCC = (phi_v1_2->world.pos.y - this->unk_168) * 50.0f;
        spE1 = 1;
        spC0 = (phi_v1_2->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;
        spDC = (phi_v0_2->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f;
        spD0 = (phi_v0_2->world.pos.y - this->unk_168) * 50.0f;
        spE2 = 1;
        spC4 = (phi_v0_2->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f;
        phi_t3 = (u8)1U;
    } else {
        phi_t3 = (u8)0U;
        if (temp_a2 != 0) {
            phi_s1_2 = 1;
            phi_a2 = temp_a2;
loop_21:
            if (phi_s1_2 < 3) {
                temp_v1_2 = &(&spD4)[phi_s1_2];
                temp_a0_2 = &(&spC8)[phi_s1_2];
                temp_a1 = &(&spBC)[phi_s1_2];
                *temp_v1_2 = (f32) ((phi_a2->world.pos.x - this->dyna.actor.world.pos.x) * 50.0f);
                temp_cond = fabsf(*temp_v1_2) < 5500.0f;
                *temp_a0_2 = (f32) ((phi_a2->world.pos.y - this->unk_168) * 50.0f);
                *temp_a1 = (f32) ((phi_a2->world.pos.z - this->dyna.actor.world.pos.z) * 50.0f);
                if (temp_cond && (fabsf(*temp_a0_2) < 3000.0f) && (fabsf(*temp_a1) < 5500.0f)) {
                    if (phi_a2->params == 1) {
                        temp_t2[phi_s1_2] = (u8)0x23;
                    } else {
                        temp_t2[phi_s1_2] = (u8)1;
                    }
                }
                phi_s1_2 = (s32) (s16) (phi_s1_2 + 1);
            }
            temp_a2_2 = phi_a2->next;
            phi_a2 = temp_a2_2;
            phi_t3 = (u8)0U;
            if (temp_a2_2 != 0) {
                goto loop_21;
            }
        }
    }
    spB8 = temp_f18;
    spB4 = temp_f20;
    spB0 = temp_f22;
    phi_s0 = phi_s0_2;
    phi_t2 = temp_t2;
    phi_s1_3 = (u16)0;
loop_31:
    if (sp127 != 0) {
        temp_f20_2 = (f32) phi_s0->n.ob[0] - spB8;
        temp_f22_2 = (f32) phi_s0->n.ob[2] - spB0;
        distance_f0 = sqrtf((temp_f20_2 * temp_f20_2) + (temp_f22_2 * temp_f22_2));
        temp_f2 = (2500.0f - distance_f0) / 2500.0f;
        phi_f2_4 = temp_f2;
        if (temp_f2 < 0.0f) {
            phi_f2_4 = 0.0f;
        }
        temp_f16 = this->unk_170;
        temp_f12 = distance_f0 - 1500.0f;
        temp_f28 = (spB4 * phi_f2_4) + ((temp_f16 - (temp_f16 * phi_f2_4)) - 200.0f);
        phi_f12 = temp_f12;
        if (temp_f12 < 0.0f) {
            phi_f12 = 0.0f;
        }
        temp_f18_2 = 100.0f * phi_f12 * 0.01f;
        phi_v1_3 = (u16)0;
        phi_f16 = temp_f16;
        phi_f28 = temp_f28;
        phi_f18 = temp_f18_2;
        if (temp_f18_2 > 100.0f) {
            phi_v1_3 = (u16)0;
            phi_f16 = temp_f16;
            phi_f28 = temp_f28;
            phi_f18 = 100.0f;
        }
    } else {
        temp_f16_2 = this->unk_170;
        phi_v1_3 = (u16)0;
        phi_f16 = temp_f16_2;
        phi_f28 = temp_f16_2 - 200.0f;
        phi_f18 = 100.0f;
    }
loop_39:
    phi_f18_2 = phi_f18;
    phi_f28_2 = phi_f28;
    if (phi_t2[phi_v1_3] != 0) {
        temp_v0_2 = phi_v1_3 * 4;
        temp_f20_3 = (f32) phi_s0->n.ob[0] - *(&spD4 + temp_v0_2);
        temp_f22_3 = (f32) phi_s0->n.ob[2] - *(&spBC + temp_v0_2);
        distance_f0_2 = sqrtf((temp_f20_3 * temp_f20_3) + (temp_f22_3 * temp_f22_3));
        if ((phi_v1_3 == 0) || (phi_t3 != 0)) {
            phi_f2 = (3000.0f - distance_f0_2) / 3000.0f;
        } else {
            phi_f2 = (2000.0f - distance_f0_2) / 2000.0f;
        }
        phi_f2_2 = phi_f2;
        if (phi_f2 < 0.0f) {
            phi_f2_2 = 0.0f;
        }
        temp_f12_2 = distance_f0_2 - 1500.0f;
        temp_f14_2 = (*(&spC8 + temp_v0_2) * phi_f2_2) + ((phi_f16 - (phi_f16 * phi_f2_2)) - 200.0f);
        phi_f12_2 = temp_f12_2;
        if (temp_f12_2 < 0.0f) {
            phi_f12_2 = 0.0f;
        }
        temp_f2_2 = 100.0f * phi_f12_2 * 0.01f;
        phi_f2_3 = temp_f2_2;
        if (temp_f2_2 > 100.0f) {
            phi_f2_3 = 100.0f;
        }
        phi_f28_2 = phi_f28;
        if (temp_f14_2 < phi_f28) {
            phi_f28_2 = temp_f14_2;
        }
        phi_f18_2 = phi_f18;
        if (phi_f2_3 < phi_f18) {
            phi_f18_2 = phi_f2_3;
        }
    }
    temp_v1_3 = phi_v1_3 + 1;
    phi_v1_3 = temp_v1_3;
    phi_f28 = phi_f28_2;
    phi_f18 = phi_f18_2;
    if ((s32) temp_v1_3 < 3) {
        goto loop_39;
    }
    spA8 = phi_f18_2;
    sp8B = phi_t3;
    temp_f0_3 = Math_SinS((s16) ((*(sp74 + 0x1DE4/4) * 0xFA0) + (((((((phi_s1_3 * 4) + phi_s1_3) * 8) - phi_s1_3) * 0x10) + phi_s1_3) * 0x10)));
    temp_f18_3 = phi_f18_2;
    if (this->unk_174 != 0) {
        temp_f10 = (s32) (phi_f28_2 + (temp_f0_3 * temp_f18_3));
        temp_a0_3 = (s16) (s32) (((f32) phi_s3->n.ob[1] - this->unk_168) * 50.0f);
        phi_v1_4 = (s16) temp_f10;
        if ((s32) (s16) temp_f10 < (s32) temp_a0_3) {
            phi_v1_4 = temp_a0_3;
        }
        phi_s0->n.ob[1] = phi_v1_4;
    } else {
        temp_f2_3 = temp_f0_3 * temp_f18_3;
        temp_v0_3 = (((phi_s1_3 * 4) - phi_s1_3) * 2) + D_80A8EE10;
        phi_s0->n.ob[1] = (s16) (s32) (phi_f28_2 + temp_f2_3);
        temp_v1_4 = (s16) (s32) (temp_f2_3 * 0.5f);
        phi_s0->n.ob[0] = (s16) (temp_v0_3->x + temp_v1_4);
        phi_s0->n.ob[2] = (s16) (temp_v0_3->z + temp_v1_4);
        temp_a0_4 = (s16) (s32) temp_f2_3;
        phi_s3->n.ob[0] = (s16) (temp_v0_3->x + temp_a0_4);
        phi_s3->n.ob[2] = (s16) (temp_v0_3->z + temp_a0_4);
    }
    temp_s1_2 = phi_s1_3 + 1;
    phi_s0 = phi_s0 + 0x10;
    phi_t2 = &spE0;
    phi_s1_3 = temp_s1_2;
    phi_s3 = phi_s3 + 0x10;
    if ((s32) temp_s1_2 < 0x90) {
        goto loop_31;
    }
    if (this->unk_174 == 0) {
        this->dyna.actor.velocity.y = 0.0f;
        this->dyna.actor.world.pos.y = this->unk_168;
        temp_v0_4 = gSaveContext.dayTime;
        phi_v0_3 = (s32) temp_v0_4;
        if ((s32) temp_v0_4 >= 0x8000) {
            phi_v0_3 = (0xFFFF - temp_v0_4) & 0xFFFF;
        }
        temp_f10_2 = (f32) phi_v0_3;
        phi_f10 = temp_f10_2;
        if (phi_v0_3 < 0) {
            phi_f10 = temp_f10_2 + 4294967296.0f;
        }
        this->unk_170 = 1000.0f;
        this->shadowAlpha = (phi_f10 * 0.00275f) + 10.0f;
    } else {
        Math_ApproachF(&this->dyna.actor.world.pos.y, this->unk_168 - 1000.0f, 1.0f, this->dyna.actor.velocity.y);
        Math_ApproachF(&this->dyna.actor.velocity.y, 5.0f, 1.0f, 0.5f);
        Math_ApproachF(&this->shadowAlpha, 0.0f, 1.0f, 3.0f);
        Math_ApproachF(&this->unk_170, -5000.0f, 1.0f, 100.0f);
    }

    sp108.x = 0.0f;
    sp108.y = 0.0f;
    sp108.z = 120.0f;
    phi_s1_4 = 0;
    phi_s0_3 = temp_s4;

loop_69:
    temp_s2 = phi_s1_4 + 1;
    if ((phi_s1_4 % 0xC) == 0xB) {
        temp_v0_5 = phi_s1_4 - 1;
        //phi_f22 = (f32) (phi_s0_3->unk4 - (temp_s4 + (temp_v0_5 * 0x10))->unk4);
        phi_f22 = (f32) (phi_s0_3->n.ob[2] - (temp_s4[(temp_v0_5 * 0x10)]).n.ob[2]);
        phi_v1_5 = temp_v0_5;
        phi_s2 = phi_s1_4 + 1;
    } else {
        //phi_f22 = (f32) ((temp_s4 + (temp_s2 * 0x10))->unk4 - phi_s0_3->unk4);
        phi_f22 = (f32) ((temp_s4[(temp_s2 * 0x10)]).n.ob[2] - phi_s0_3->n.ob[2]);
        phi_v1_5 = temp_s2;
        phi_s2 = temp_s2;
    }
    temp_f24 = (f32) ((temp_s4[(phi_v1_5 * 0x10)]).n.ob[1] - phi_s0_3->n.ob[1]);
    temp_f22_4 = Math_Atan2F(phi_f22, temp_f24);
    if (phi_s1_4 >= 0x84) {
        phi_f20 = (f32) (phi_s0_3->n.ob[0] - (temp_s4[((s16) (phi_s1_4 - 0xC) * 0x10)].n.ob[0]));
    } else {
        phi_f20 = (f32) ((temp_s4[((s16) (phi_s1_4 + 0xC) * 0x10)].n.ob[0]) - phi_s0_3->n.ob[0]);
    }
    temp_f20_4 = Math_Atan2F(phi_f20, temp_f24);
    Matrix_RotateX(temp_f22_4, (u8)0U);
    Matrix_RotateZ(temp_f20_4, (u8)1U);
    Matrix_MultVec3f((Vec3f *) &sp108, &spFC);
    temp_s1_3 = phi_s2;
    //temp_s0 = phi_s0_3 + 0x10;
    //temp_s0->unk-4 = (s8) (s32) spFC.x;
    //temp_s0->unk-3 = (s8) (s32) spFC.y;
    //temp_s0->unk-2 = (s8) (s32) spFC.z;
    temp_s0 = phi_s0_3 + 0x10/0x10;
    *((u8*)temp_s0 - 4) = (s8) (s32) spFC.x;
    *((u8*)temp_s0 - 3) = (s8) (s32) spFC.y;
    *((u8*)temp_s0 - 2) = (s8) (s32) spFC.z;
    phi_s1_4 = (s32) temp_s1_3;
    phi_s0_3 = temp_s0;
    if ((s32) temp_s1_3 < 0x90) {
        goto loop_69;
    }

}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/func_80A89A6C.s")

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
