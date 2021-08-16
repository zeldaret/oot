/*
 * File: z_en_ganon_mant.c
 * Overlay: ovl_En_Ganon_Mant
 * Description: Ganondorf's Cape
 */

#include "z_en_ganon_mant.h"
#include "overlays/actors/ovl_Boss_Ganon/z_boss_ganon.h"

#define FLAGS 0x00000030

#define THIS ((EnGanonMant*)thisx)

void EnGanonMant_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGanonMant_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGanonMant_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGanonMant_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Ganon_Mant_InitVars = {
    ACTOR_EN_GANON_MANT,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnGanonMant),
    (ActorFunc)EnGanonMant_Init,
    (ActorFunc)EnGanonMant_Destroy,
    (ActorFunc)EnGanonMant_Update,
    (ActorFunc)EnGanonMant_Draw,
};

s16 D_80A24D20[] = {
    0, 0, 0, 1, 1, 1, 1, 1, 0, 0,
};

s16 D_80A24D34[] = {
    0, 0, 0, 0, 1, 1, 2, 2, 2, 1, 1, 0, 0, 0, 0,
};

s16 D_80A24D54[] = {
    0, 0, 0, 0, 0, 0, 0,
};

typedef struct {
    s16* data;
    s16 count;
} Struct_80A24D64; // size = 0x8

Struct_80A24D64 D_80A24D64[] = {
    { D_80A24D20, ARRAY_COUNT(D_80A24D20) },
    { D_80A24D20, ARRAY_COUNT(D_80A24D20) },
    { D_80A24D34, ARRAY_COUNT(D_80A24D34) },
    { D_80A24D54, ARRAY_COUNT(D_80A24D54) },
};

/// How much each joint is affected by backwards/forwards swaying motion
f32 sBackSwayCoefficients[GANON_MANT_NUM_JOINTS] = {
    0.0f, 1.0f, 0.5f, 0.25f, 0.1f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
};

f32 D_80A24DB4[] = {
    0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f,
};

/// How much each joint is affected by sideways swaying motion, tends to 0
f32 sSideSwayCoefficients[GANON_MANT_NUM_JOINTS] = {
    0.0f, 1.0f, 0.9f, 0.8f, 0.7f, 0.6f, 0.5f, 0.4f, 0.3f, 0.2f, 0.1f, 0.0f, 
};

f32 D_80A24E00[] = {  
    0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f,
};

f32 sDistMultipliers[GANON_MANT_NUM_JOINTS] = {
    0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.1f, 1.2f, 1.3f, 1.4f, 1.5f, 1.6f, 1.7f, 
};

f32 D_80A24E48[] = {  
    1.8f,
};

#define MAP_STRAND_JOINTS(n)                                                                               \
    (n) + GANON_MANT_NUM_JOINTS * 0, (n) + GANON_MANT_NUM_JOINTS * 1, (n) + GANON_MANT_NUM_JOINTS * 2,     \
        (n) + GANON_MANT_NUM_JOINTS * 3, (n) + GANON_MANT_NUM_JOINTS * 4, (n) + GANON_MANT_NUM_JOINTS * 5, \
        (n) + GANON_MANT_NUM_JOINTS * 6, (n) + GANON_MANT_NUM_JOINTS * 7, (n) + GANON_MANT_NUM_JOINTS * 8, \
        (n) + GANON_MANT_NUM_JOINTS * 9, (n) + GANON_MANT_NUM_JOINTS * 10, (n) + GANON_MANT_NUM_JOINTS * 11

u16 sVerticesMap[GANON_MANT_NUM_STRANDS * GANON_MANT_NUM_JOINTS] = {
    MAP_STRAND_JOINTS(11), MAP_STRAND_JOINTS(10), MAP_STRAND_JOINTS(9), MAP_STRAND_JOINTS(8),
    MAP_STRAND_JOINTS(7),  MAP_STRAND_JOINTS(6),  MAP_STRAND_JOINTS(5), MAP_STRAND_JOINTS(4),
    MAP_STRAND_JOINTS(3),  MAP_STRAND_JOINTS(2),  MAP_STRAND_JOINTS(1), MAP_STRAND_JOINTS(0),
};

#include "ovl_en_ganon_mant_gfx.c"

void EnGanonMant_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGanonMant* this = THIS;

    this->actor.flags &= ~1;
}

void EnGanonMant_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

/**
 * Randomly zeros portions of the cloak texture
 */
void EnGanonMant_Tear(EnGanonMant* this) {
    s32 pad;
    s16 i;
    s16 txi;
    s16 tyi;
    s16 texIdx;
    f32 tx = Rand_ZeroFloat(MANT_TEX_WIDTH);
    f32 ty = Rand_ZeroFloat(MANT_TEX_HEIGHT);
    f32 randAngle = Rand_ZeroFloat(2 * M_PI);
    f32 randSin = sinf(randAngle);
    f32 randCos = cosf(randAngle);
    Struct_80A24D64* coeffs = &D_80A24D64[(s16)Rand_ZeroFloat(ARRAY_COUNT(D_80A24D64) - 0.01f)];
    s16 count = coeffs->count;
    s16* data = coeffs->data;

    for (i = 0; i < count; i++) {
        if ((0 <= tx && tx < MANT_TEX_WIDTH) && (0 <= ty && ty < MANT_TEX_HEIGHT)) {
            for (txi = 0; txi <= data[i]; txi++) {
                texIdx = 0;
                if (1) {}
                for (tyi = 0; tyi <= data[i]; tyi++) {
                    texIdx = (s16)((s16)tx + ((s16)ty * MANT_TEX_WIDTH)) + ((s16)txi + ((s16)tyi * MANT_TEX_WIDTH));
                    if (texIdx < ARRAY_COUNT(sMantTex)) {
                        sMantTex[texIdx] = 0;
                    }
                }
            }
        }
        tx += randSin;
        ty += randCos;
    }

    for (i = 0; i < 4; i++) {
        this->strands[(s16)Rand_ZeroFloat(11.9f)].torn[(s16)Rand_ZeroFloat(11.9f)] = true;
    }
}

#ifdef NON_MATCHING
// Stack only
void EnGanonMant_UpdateStrands(GlobalContext* globalCtx, EnGanonMant* this, Vec3f* root, Vec3f* pos, Vec3f* nextPos,
                               Vec3f* rot, Vec3f* vel, s16 strandNum) {
    f32 xDiff;
    f32 zDiff;
    f32 gravity;
    s32 pad;
    f32 yaw;
    s16 i;
    f32 x;
    f32 y;
    f32 z;
    f32 jointLength;
    Vec3f delta;
    Vec3f posStep;
    Vec3f backSwayOffset;
    Vec3f sideSwayOffset;

    delta.y = 0;
    if (this->actor.params == 0x23) {
        // Pushes all the strands away from the actor
        delta.x = 0.0f;
        delta.z = -30.0f;
        Matrix_RotateY(BINANG_TO_RAD(this->actor.shape.rot.y), MTXMODE_NEW);
        Matrix_MultVec3f(&delta, &posStep);
        for (i = 0; i < GANON_MANT_NUM_JOINTS; i++) {
            (pos + i)->x += posStep.x;
            (pos + i)->z += posStep.z;
        }
        // Set length
        jointLength = 6.5f;
    } else {
        jointLength = 9.5f;
    }

    for (i = 0; i < GANON_MANT_NUM_JOINTS; i++, pos++, vel++, rot++, nextPos++) {
        if (i == 0) {
            // Constraint: first position is always root
            pos->x = root->x;
            pos->y = root->y;
            pos->z = root->z;
        } else {
            // Decelerate
            Math_ApproachZeroF(&vel->x, 1.0f, 0.1f);
            Math_ApproachZeroF(&vel->y, 1.0f, 0.1f);
            Math_ApproachZeroF(&vel->z, 1.0f, 0.1f);

            // Push the cape away from attached actor, plus oscillations
            delta.x = 0;
            delta.z = (this->backPush + (sinf((strandNum * (2 * M_PI)) / 2.1f) * this->backSwayMagnitude)) * sBackSwayCoefficients[i];
            Matrix_RotateY(this->baseYaw, MTXMODE_NEW);
            Matrix_MultVec3f(&delta, &backSwayOffset);

            // Push the cape out to either side, in a swaying manner
            delta.x = cosf((strandNum * M_PI) / (GANON_MANT_NUM_STRANDS - 1.0f)) * this->sideSwayMagnitude * sSideSwayCoefficients[i];
            delta.z = 0;
            Matrix_MultVec3f(&delta, &sideSwayOffset);

            // Calculate position difference
            gravity = this->gravity;
            x = ((pos->x + vel->x) - (pos - 1)->x) + (backSwayOffset.x + sideSwayOffset.x);
            y = ((pos->y + vel->y) - (pos - 1)->y) + gravity;
            z = ((pos->z + vel->z) - (pos - 1)->z) + (backSwayOffset.z + sideSwayOffset.z);

            // Calculate rotations in the direction of the position difference
            yaw = Math_Atan2F(z, x);
            x = -Math_Atan2F(sqrtf(SQ(x) + SQ(z)), y);
            (rot - 1)->x = x;

            // Calculate real position difference of correct length in the correct direction
            delta.x = 0;
            delta.z = jointLength;
            Matrix_RotateY(yaw, MTXMODE_NEW);
            Matrix_RotateX(x, MTXMODE_APPLY);
            Matrix_MultVec3f(&delta, &posStep);

            // Save position
            x = pos->x;
            y = pos->y;
            z = pos->z;

            // Calculate next position
            pos->x = (pos - 1)->x + posStep.x;
            pos->y = (pos - 1)->y + posStep.y;
            pos->z = (pos - 1)->z + posStep.z;

            // Pushes the cape away from the actor if it is too close
            if (sqrtf(SQ(pos->x - this->actor.world.pos.x) + SQ(pos->z - this->actor.world.pos.z)) <
                (sDistMultipliers[i] * this->minDist)) {
                yaw = Math_Atan2F(pos->z - this->actor.world.pos.z, pos->x - this->actor.world.pos.x);
                delta.z = this->minDist * sDistMultipliers[i];
                Matrix_RotateY(yaw, MTXMODE_NEW);
                Matrix_MultVec3f(&delta, &posStep);
                pos->x = this->actor.world.pos.x + posStep.x;
                pos->z = this->actor.world.pos.z + posStep.z;
            }

            // Enforces minY constraint
            if (pos->y < this->minY) {
                pos->y = this->minY;
            }

            // Calculate next velocity
            vel->x = (pos->x - x) * 80.0f / 100.0f;
            vel->y = (pos->y - y) * 80.0f / 100.0f;
            vel->z = (pos->z - z) * 80.0f / 100.0f;

            if (this->actor.params != 0x23) {
                // Clamp elements of vel into [-5.0, 5.0]
                if (vel->x > 5.0f) {
                    vel->x = 5.0f;
                } else if (vel->x < -5.0f) {
                    vel->x = -5.0f;
                }
                if (vel->y > 5.0f) {
                    vel->y = 5.0f;
                } else if (vel->y < -5.0f) {
                    vel->y = -5.0f;
                }
                if (vel->z > 5.0f) {
                    vel->z = 5.0f;
                } else if (vel->z < -5.0f) {
                    vel->z = -5.0f;
                }
            }

            // update angle
            xDiff = pos->x - nextPos->x;
            zDiff = pos->z - nextPos->z;
            (rot - 1)->y = Math_Atan2F(zDiff, xDiff);
        }
    }
    rot[11].y = rot[10].y;
    rot[11].x = rot[10].x;
}
#else
void EnGanonMant_UpdateStrands(GlobalContext* globalCtx, EnGanonMant* this, Vec3f* root, Vec3f* pos, Vec3f* nextPos,
                               Vec3f* rot, Vec3f* vel, s16 strandNum);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ganon_Mant/EnGanonMant_UpdateStrands.s")
#endif

/**
 * Update the cloak vertices using the current state of the strands
 */
void EnGanonMant_UpdateVertices(EnGanonMant* this) {
    s16 i;
    Vtx* vtx;
    Vtx* vertices;
    MantStrand* strand;
    s16 j;
    s16 k;
    Vec3f up;
    Vec3f normal;

    if (this->frameTimer % 2 != 0) {
        vertices = (Vtx*)SEGMENTED_TO_VIRTUAL(sMantVtx1);
    } else {
        vertices = (Vtx*)SEGMENTED_TO_VIRTUAL(sMantVtx2);
    }
    up.x = 0.0f;
    up.y = 30.0f;
    up.z = 0.0f;

    strand = &this->strands[0];
    for (i = 0; i < GANON_MANT_NUM_STRANDS; i++, strand++) {
        for (j = 0, k = 0; j < GANON_MANT_NUM_JOINTS; j++, k += GANON_MANT_NUM_JOINTS) {
            vtx = &vertices[sVerticesMap[i + k]];
            vtx->n.ob[0] = strand->joints[j].x;
            vtx->n.ob[1] = strand->joints[j].y;
            vtx->n.ob[2] = strand->joints[j].z;
            Matrix_RotateY(strand->rotations[j].y, MTXMODE_NEW);
            Matrix_RotateX(strand->rotations[j].x, MTXMODE_APPLY);
            Matrix_MultVec3f(&up, &normal);
            vtx->n.n[0] = normal.x;
            vtx->n.n[1] = normal.y;
            vtx->n.n[2] = normal.z;
        }
    }
}

void EnGanonMant_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGanonMant* this = THIS;
    BossGanon* ganon = (BossGanon*)this->actor.parent;

    this->updateHasRun = true;
    this->frameTimer++;

    if (this->attachLeftArmTimer == 0.0f) {
    } else {
        this->attachLeftArmTimer -= 1.0f;
    }
    if (this->attachRightArmTimer != 0.0f) {
        this->attachRightArmTimer -= 1.0f;
    }
    if (this->attachShouldersTimer != 0.0f) {
        this->attachShouldersTimer -= 1.0f;
    }

    this->actor.shape.rot.y = ganon->actor.shape.rot.y;

    if (this->tearTimer != 0) {
        this->tearTimer--;
        EnGanonMant_Tear(this);
    }
}

void EnGanonMant_DrawCloak(GlobalContext* globalCtx, EnGanonMant* this) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ganon_mant.c", 564);

    Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_NEW);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ganon_mant.c", 572),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    // set texture
    gSPDisplayList(POLY_OPA_DISP++, sMantTexDl);

    // set vertices
    if (this->frameTimer % 2 != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x0C, sMantVtx1);
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x0C, sMantVtx2);
    }

    // draw cloak
    gSPDisplayList(POLY_OPA_DISP++, sMantDl);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ganon_mant.c", 584);
}

void EnGanonMant_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnGanonMant* this = THIS;
    f32 xDiff;
    f32 pitch;
    Vec3f strandOffset;
    Vec3f strandDivPos;
    f32 zDiff;
    f32 diffHalfDist;
    f32 yDiff;
    f32 yaw;
    Vec3f* rightPos;
    Vec3f* leftPos;
    s16 i;
    Vec3f midpoint;
    s16 next;

    if (this->updateHasRun) {
        // Only run this if update has run since last draw

        // Choose endpoints
        if (this->attachRightArmTimer != 0.0f) {
            rightPos = &this->rightForearmPos;
            leftPos = &this->leftShoulderPos;
            this->gravity = -13.0f;
        } else if (this->attachLeftArmTimer != 0.0f) {
            rightPos = &this->rightShoulderPos;
            leftPos = &this->leftForearmPos;
            this->gravity = -13.0f;
        } else if (this->attachShouldersTimer != 0.0f) {
            rightPos = &this->rightShoulderPos;
            leftPos = &this->leftShoulderPos;
            this->gravity = -3.0f;
        } else {
            rightPos = &this->rightForearmPos;
            leftPos = &this->leftForearmPos;
        }

        xDiff = leftPos->x - rightPos->x;
        yDiff = leftPos->y - rightPos->y;
        zDiff = leftPos->z - rightPos->z;

        midpoint.x = rightPos->x + xDiff * 0.5f;
        midpoint.y = rightPos->y + yDiff * 0.5f;
        midpoint.z = rightPos->z + zDiff * 0.5f;

        // Calculte base orientation for chosen endpoints
        yaw = Math_Atan2F(zDiff, xDiff);
        pitch = -Math_Atan2F(sqrtf(SQ(xDiff) + SQ(zDiff)), yDiff);
        diffHalfDist = sqrtf(SQ(xDiff) + SQ(yDiff) + SQ(zDiff)) * 0.5f;

        Matrix_RotateY(yaw, MTXMODE_NEW);
        Matrix_RotateX(pitch, MTXMODE_APPLY);
        this->baseYaw = yaw - M_PI / 2.0f;

        for (i = 0; i < GANON_MANT_NUM_STRANDS; i++) {
            Matrix_Push();

            // Calculate root positions for chosen endpoints 
            strandOffset.x = sinf((i * M_PI) / (GANON_MANT_NUM_STRANDS - 1.0f)) * diffHalfDist;
            strandOffset.y = 0;
            strandOffset.z = -cosf((i * M_PI) / (GANON_MANT_NUM_STRANDS - 1.0f)) * diffHalfDist;
            Matrix_MultVec3f(&strandOffset, &strandDivPos);
            this->strands[i].root.x = midpoint.x + strandDivPos.x;
            this->strands[i].root.y = midpoint.y + strandDivPos.y;
            this->strands[i].root.z = midpoint.z + strandDivPos.z;

            next = i + 1;
            if (next >= GANON_MANT_NUM_STRANDS) {
                next = i - 1;
            }

            EnGanonMant_UpdateStrands(globalCtx, this, &this->strands[i].root, this->strands[i].joints,
                                      this->strands[next].joints, this->strands[i].rotations,
                                      this->strands[i].velocities, i);
            Matrix_Pop();
        }
        EnGanonMant_UpdateVertices(this);
        this->updateHasRun = false;
    }

    EnGanonMant_DrawCloak(globalCtx, this);
}
