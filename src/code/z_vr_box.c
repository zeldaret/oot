#include "global.h"
#include "terminal.h"
#include "z64environment.h"

typedef struct {
    /* 0x000 */ s32 xStart;
    /* 0x004 */ s32 yStart;
    /* 0x008 */ s32 zStart;
    /* 0x00C */ s32 outerIncrVal;
    /* 0x010 */ s32 innerIncrVal;
} SkyboxFaceParams; // size = 0x14

// Converts texture coordinate values to s10.5 fixed point
#define TC(x) ((s16)((x)*32))

// Texture offsets for each face in the static segment buffer
u32 sSkybox256TexOffsets[4] = {
    256 * 256 * 0,
    256 * 256 * 1,
    256 * 256 * 2,
    256 * 256 * 3,
};

// Maps vertex buffer index to coordinate buffer index
u16 sSkybox256VtxBufIndices[2][32] = {
    {
        0, 2, 10, 12, 2, 4, 12, 14, 10, 12, 20, 22, 12, 14, 22, 24,
        1, 3, 5,  6,  7, 8, 9,  11, 13, 15, 16, 17, 18, 19, 21, 23,
    },
    {
        20, 22, 30, 32, 22, 24, 32, 34, 30, 32, 40, 42, 32, 34, 42, 44,
        21, 23, 25, 26, 27, 28, 29, 31, 33, 35, 36, 37, 38, 39, 41, 43,
    },
};

// S coordinates for all faces
s16 sSkybox256TexSCoords[5] = {
    TC(126 * 0), TC(126 * 1), TC(126 * 2), TC(126 * 3), TC(126 * 4),
};

// T coordinates for all faces
s16 sSkybox256TexTCoords[9] = {
    TC(62 * 0), TC(62 * 1), TC(62 * 2), TC(62 * 3), TC(62 * 4), TC(62 * 5), TC(62 * 6), TC(62 * 7), TC(62 * 8),
};

// Maps vertex index to vertex buffer index
s16 sSkybox256VtxIndices[64] = {
    0,  16, 19, 18, 16, 1,  20, 19, 1,  17, 21, 20, 17, 5,  22, 21, 18, 19, 23, 2,  19, 20,
    3,  23, 20, 21, 24, 3,  21, 22, 7,  24, 2,  23, 26, 25, 23, 3,  27, 26, 3,  24, 28, 27,
    24, 7,  29, 28, 25, 26, 30, 10, 26, 27, 11, 30, 27, 28, 31, 11, 28, 29, 15, 31,
};

/**
 * Build the vertex and display list data for a skybox with 256x256 face textures.
 *
 * While the textures are nominally 256x256 the 4x8 tiles that cover it are only 63x31, therefore only a
 * 253x249 area is ever sampled (253 = 4 * 63 + 1, the additional +1 accounts for bilinear filtering,
 * similarly 249 = 8 * 31 + 1)
 *
 * Each texture dimension is padded to the next power of 2, resulting in a final size of 256x256.
 */
s32 Skybox_CalculateFace256(SkyboxContext* skyboxCtx, Vtx* roomVtx, s32 roomVtxStartIndex, s32 xStart, s32 yStart,
                            s32 zStart, s32 innerIncrVal, s32 outerIncrVal, s32 faceNum, s32 dlistBufStartIndex) {
    u32 innerIncr;
    s32 outerIncr;
    s32 n;
    s32 i;
    s32 j;
    s32 k;
    u16 index;
    s16 m;
    s16 ult;
    s16 uls;
    s16 vtxIdx;
    s16 l;
    s32 xPoints[9 * 5];
    s32 yPoints[9 * 5];
    s32 zPoints[9 * 5];
    s32 tcS[9 * 5];
    s32 tcT[9 * 5];
    s32 pad;

    // Collect all vertex positions for this face
    switch (faceNum) {
        case 0: // xy plane
        case 2:
            outerIncr = yStart;

            for (i = 0, k = 0; k < 9 * 5; i++) {
                innerIncr = xStart;

                for (j = 0; j < 5; j++, k++) {
                    zPoints[k] = zStart;
                    xPoints[k] = innerIncr;
                    yPoints[k] = outerIncr;
                    tcS[k] = sSkybox256TexSCoords[j];
                    tcT[k] = sSkybox256TexTCoords[i];
                    innerIncr += innerIncrVal;
                }
                outerIncr += outerIncrVal;
            }
            break;

        case 1: // yz plane
        case 3:
            outerIncr = yStart;

            for (i = 0, k = 0; k < 9 * 5; i++) {
                innerIncr = zStart;

                for (j = 0; j < 5; j++, k++) {
                    xPoints[k] = xStart;
                    yPoints[k] = outerIncr;
                    zPoints[k] = innerIncr;
                    tcS[k] = sSkybox256TexSCoords[j];
                    tcT[k] = sSkybox256TexTCoords[i];
                    innerIncr += innerIncrVal;
                }
                outerIncr += outerIncrVal;
            }
            break;

        case 4: // xz plane
        case 5:
            outerIncr = zStart;

            for (i = 0, k = 0; k < 9 * 5; i++) {
                innerIncr = xStart;

                for (j = 0; j < 5; j++, k++) {
                    yPoints[k] = yStart;
                    xPoints[k] = innerIncr;
                    zPoints[k] = outerIncr;
                    tcS[k] = sSkybox256TexSCoords[j];
                    tcT[k] = sSkybox256TexTCoords[i];
                    innerIncr += innerIncrVal;
                }
                outerIncr += outerIncrVal;
            }
            break;
    }

    // For a 256x256 texture with 63x31 tiles there are 32 tiles which requires at least 45 vertices,
    // 45 > 32 (the maximum number of vertices that can be loaded at once) so it is split into two passes
    for (ult = 0, n = 0; n < 2; n++) {
        // Each iteration is 16 tiles of the texture, first iteration is the top 16 tiles

        // Select gfx buffer
        skyboxCtx->gfx = skyboxCtx->dListBuf[dlistBufStartIndex + n];

        // Generate and load Vertex structures
        for (i = 0; i < 32; i++) {
            index = sSkybox256VtxBufIndices[n][i];

            roomVtx[roomVtxStartIndex + i].v.ob[0] = xPoints[index];
            roomVtx[roomVtxStartIndex + i].v.ob[1] = yPoints[index];
            roomVtx[roomVtxStartIndex + i].v.ob[2] = zPoints[index];
            roomVtx[roomVtxStartIndex + i].v.flag = 0;
            roomVtx[roomVtxStartIndex + i].v.tc[0] = tcS[index];
            roomVtx[roomVtxStartIndex + i].v.tc[1] = tcT[index];
            roomVtx[roomVtxStartIndex + i].v.cn[1] = 0;
            roomVtx[roomVtxStartIndex + i].v.cn[2] = 0;
            roomVtx[roomVtxStartIndex + i].v.cn[0] = 255;
        }
        gSPVertex(skyboxCtx->gfx++, &roomVtx[roomVtxStartIndex], 32, 0);
        roomVtxStartIndex += i; // += 32

        // Cull the face if not within the viewing volume
        gSPCullDisplayList(skyboxCtx->gfx++, 0, 15);

        // Draw face, load the texture in several tiles to work around TMEM size limitations
        for (vtxIdx = 0, l = 0; l < 4; l++, ult += 31) {
            for (uls = 0, m = 0; m < 4; m++, uls += 63, vtxIdx += 4) {
                gDPLoadTextureTile(skyboxCtx->gfx++, (u8*)skyboxCtx->staticSegments[0] + sSkybox256TexOffsets[faceNum],
                                   G_IM_FMT_CI, G_IM_SIZ_8b, 256, 0, uls, ult, uls + 63, ult + 31, 0,
                                   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP,
                                   G_TX_NOMASK, G_TX_NOLOD);
                gSP1Quadrangle(skyboxCtx->gfx++, sSkybox256VtxIndices[vtxIdx + 1], sSkybox256VtxIndices[vtxIdx + 2],
                               sSkybox256VtxIndices[vtxIdx + 3], sSkybox256VtxIndices[vtxIdx + 0], 3);
            }
        }
        gSPEndDisplayList(skyboxCtx->gfx++);
    }
    return roomVtxStartIndex;
}

// Texture offsets for each face in the static segment buffer
u32 sSkybox128TexOffsets[6] = {
    128 * 64 * 0, 128 * 64 * 1, 128 * 64 * 2, 128 * 64 * 3, 128 * 64 * 4, 128 * 64 * 4 + 128 * 128,
};

// Maps vertex buffer index to coordinate buffer index
u16 sSkybox128VtxBufIndices[32] = {
    0, 2, 10, 12, 2, 4, 12, 14, 10, 12, 20, 22, 12, 14, 22, 24, 1, 3, 5, 6, 7, 8, 9, 11, 13, 15, 16, 17, 18, 19, 21, 23,
};

// S coordinates for all faces
s16 sSkybox128TexSCoords[5] = {
    TC(62 * 0), TC(62 * 1), TC(62 * 2), TC(62 * 3), TC(62 * 4),
};

// T coordinates for top and bottom faces
s16 sSkybox128TexTCoordsXZ[5] = {
    TC(62 * 0), TC(62 * 1), TC(62 * 2), TC(62 * 3), TC(62 * 4),
};

// T coordinates for side faces
s16 sSkybox128TexTCoords[5] = {
    TC(62 * 0), TC(62 * 1), TC(62 * 2), TC(62 * 1), TC(62 * 0),
};

// Maps vertex index to vertex buffer index
s16 sSkybox128VtxIndices[64] = {
    0,  16, 19, 18, 16, 1,  20, 19, 1,  17, 21, 20, 17, 5,  22, 21, 18, 19, 23, 2,  19, 20,
    3,  23, 20, 21, 24, 3,  21, 22, 7,  24, 2,  23, 26, 25, 23, 3,  27, 26, 3,  24, 28, 27,
    24, 7,  29, 28, 25, 26, 30, 10, 26, 27, 11, 30, 27, 28, 31, 11, 28, 29, 15, 31,
};

/**
 * Build the vertex and display list data for a skybox with 128x128 and 128x64 face textures.
 *
 * While the textures are nominally 128x128 (128x64) the 4x4 (4x2) tiles that cover it are only 31x31,
 * therefore only a 125x125 (125x63) area is ever sampled (see `Skybox_CalculateFace256` for more details)
 *
 * Each texture dimension is padded to the next power of 2, resulting in a final size of 128x128 (128x64)
 */
s32 Skybox_CalculateFace128(SkyboxContext* skyboxCtx, Vtx* roomVtx, s32 roomVtxStartIndex, s32 xStart, s32 yStart,
                            s32 zStart, s32 innerIncrVal, s32 outerIncrVal, s32 faceNum) {
    s32 i;
    s32 j;
    s32 k;
    s16 uls;
    s16 m;
    s32 outerIncr;
    u16 index;
    s16 ult;
    s16 l;
    s16 vtxIdx;
    s32 innerIncr;
    s32 xPoints[5 * 5];
    s32 yPoints[5 * 5];
    s32 zPoints[5 * 5];
    s32 tcS[5 * 5];
    s32 tcT[5 * 5];
    s32 pad;

    // Collect all vertex positions for this face
    switch (faceNum) {
        case 0: // xy plane
        case 1:
            outerIncr = yStart;

            for (i = 0, k = 0; k < 25; i++) {
                innerIncr = xStart;

                for (j = 0; j < 5; j++, k++) {
                    zPoints[k] = zStart;
                    xPoints[k] = innerIncr;
                    yPoints[k] = outerIncr;
                    tcS[k] = sSkybox128TexSCoords[j];
                    tcT[k] = sSkybox128TexTCoords[i];
                    innerIncr += innerIncrVal;
                }
                outerIncr += outerIncrVal;
            }
            break;

        case 2: // yz plane
        case 3:
            outerIncr = yStart;

            for (i = 0, k = 0; k < 25; i++) {
                innerIncr = zStart;

                for (j = 0; j < 5; j++, k++) {
                    xPoints[k] = xStart;
                    yPoints[k] = outerIncr;
                    zPoints[k] = innerIncr;
                    tcS[k] = sSkybox128TexSCoords[j];
                    tcT[k] = sSkybox128TexTCoords[i];
                    innerIncr += innerIncrVal;
                }
                outerIncr += outerIncrVal;
            }
            break;

        case 4: // xz plane
        case 5:
            outerIncr = zStart;

            for (i = 0, k = 0; k < 25; i++) {
                innerIncr = xStart;

                for (j = 0; j < 5; j++, k++) {
                    yPoints[k] = yStart;
                    xPoints[k] = innerIncr;
                    zPoints[k] = outerIncr;
                    tcS[k] = sSkybox128TexSCoords[j];
                    tcT[k] = sSkybox128TexTCoordsXZ[i];
                    innerIncr += innerIncrVal;
                }
                outerIncr += outerIncrVal;
            }
            break;
    }

    // Select gfx buffer
    skyboxCtx->gfx = &skyboxCtx->dListBuf[2 * faceNum][0];

    // Generate and load Vertex structures
    for (i = 0; i < 32; i++) {
        index = sSkybox128VtxBufIndices[i];

        roomVtx[roomVtxStartIndex + i].v.ob[0] = xPoints[index];
        roomVtx[roomVtxStartIndex + i].v.ob[1] = yPoints[index];
        roomVtx[roomVtxStartIndex + i].v.ob[2] = zPoints[index];
        roomVtx[roomVtxStartIndex + i].v.flag = 0;
        roomVtx[roomVtxStartIndex + i].v.tc[0] = tcS[index];
        roomVtx[roomVtxStartIndex + i].v.tc[1] = tcT[index];
        roomVtx[roomVtxStartIndex + i].v.cn[1] = 0;
        roomVtx[roomVtxStartIndex + i].v.cn[2] = 0;
        roomVtx[roomVtxStartIndex + i].v.cn[0] = 255;
    }
    gSPVertex(skyboxCtx->gfx++, &roomVtx[roomVtxStartIndex], 32, 0);
    roomVtxStartIndex += i;

    // Cull the face if not within the viewing volume
    gSPCullDisplayList(skyboxCtx->gfx++, 0, 15);

    // Draw face, load the texture in several tiles to work around TMEM size limitations
    if (faceNum == 4 || faceNum == 5) {
        // top/bottom faces, 128x128 texture

        ult = 0;
        for (vtxIdx = 0, l = 0; l < 4; l++, ult += 31) {
            for (uls = 0, m = 0; m < 4; m++, uls += 31, vtxIdx += 4) {
                gDPLoadMultiTile(skyboxCtx->gfx++, (u8*)skyboxCtx->staticSegments[0] + sSkybox128TexOffsets[faceNum], 0,
                                 G_TX_RENDERTILE, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, uls, ult, uls + 31, ult + 31, 0,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP,
                                 G_TX_NOMASK, G_TX_NOLOD);
                gDPLoadMultiTile(skyboxCtx->gfx++, (u8*)skyboxCtx->staticSegments[1] + sSkybox128TexOffsets[faceNum],
                                 0x80, 1, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, uls, ult, uls + 31, ult + 31, 0,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP,
                                 G_TX_NOMASK, G_TX_NOLOD);
                gSP1Quadrangle(skyboxCtx->gfx++, sSkybox128VtxIndices[vtxIdx + 1], sSkybox128VtxIndices[vtxIdx + 2],
                               sSkybox128VtxIndices[vtxIdx + 3], sSkybox128VtxIndices[vtxIdx + 0], 3);
            }
        }
    } else {
        // other faces, 128x64 texture

        ult = 0;
        for (vtxIdx = 0, l = 0; l < 2; l++, ult += 31) {
            for (uls = 0, m = 0; m < 4; m++, uls += 31, vtxIdx += 4) {
                gDPLoadMultiTile(skyboxCtx->gfx++, (u8*)skyboxCtx->staticSegments[0] + sSkybox128TexOffsets[faceNum], 0,
                                 G_TX_RENDERTILE, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, uls, ult, uls + 31, ult + 31, 0,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP,
                                 G_TX_NOMASK, G_TX_NOLOD);
                gDPLoadMultiTile(skyboxCtx->gfx++, (u8*)skyboxCtx->staticSegments[1] + sSkybox128TexOffsets[faceNum],
                                 0x80, 1, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, uls, ult, uls + 31, ult + 31, 0,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP,
                                 G_TX_NOMASK, G_TX_NOLOD);
                gSP1Quadrangle(skyboxCtx->gfx++, sSkybox128VtxIndices[vtxIdx + 1], sSkybox128VtxIndices[vtxIdx + 2],
                               sSkybox128VtxIndices[vtxIdx + 3], sSkybox128VtxIndices[vtxIdx + 0], 3);
            }
        }
        ult -= 31;
        for (l = 0; l < 2; l++, ult -= 31) {
            for (uls = 0, m = 0; m < 4; m++, uls += 31, vtxIdx += 4) {
                gDPLoadMultiTile(skyboxCtx->gfx++, (u8*)skyboxCtx->staticSegments[0] + sSkybox128TexOffsets[faceNum], 0,
                                 G_TX_RENDERTILE, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, uls, ult, uls + 31, ult + 31, 0,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP,
                                 G_TX_NOMASK, G_TX_NOLOD);
                gDPLoadMultiTile(skyboxCtx->gfx++, (u8*)skyboxCtx->staticSegments[1] + sSkybox128TexOffsets[faceNum],
                                 0x80, 1, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, uls, ult, uls + 31, ult + 31, 0,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP,
                                 G_TX_NOMASK, G_TX_NOLOD);
                gSP1Quadrangle(skyboxCtx->gfx++, sSkybox128VtxIndices[vtxIdx + 1], sSkybox128VtxIndices[vtxIdx + 2],
                               sSkybox128VtxIndices[vtxIdx + 3], sSkybox128VtxIndices[vtxIdx + 0], 3);
            }
        }
    }
    gSPEndDisplayList(skyboxCtx->gfx++);
    return roomVtxStartIndex;
}

SkyboxFaceParams sSkybox256FaceParams[4] = {
    { -126, 124, -126, 63, -31 },
    { 126, 124, -126, 63, -31 },
    { 126, 124, 126, -63, -31 },
    { -126, 124, 126, -63, -31 },
};

/**
 * Computes the display list for a skybox where each face is a 256x256 CI8 texture.
 * The number of faces is determined by the skybox id or from the drawType field in SkyboxContext.
 */
void Skybox_Calculate256(SkyboxContext* skyboxCtx, s16 skyboxId) {
    s32 faceNum;
    s32 dlistBufStartIndex;
    s32 roomVtxStartIndex = 0;

    if (skyboxId == SKYBOX_BAZAAR || (skyboxId > SKYBOX_HOUSE_KAKARIKO && skyboxId <= SKYBOX_BOMBCHU_SHOP)) {
        // 2 faces, one in xy plane and one in yz plane
        for (dlistBufStartIndex = 0, faceNum = 0; faceNum < 2; faceNum++, dlistBufStartIndex += 2) {
            roomVtxStartIndex = Skybox_CalculateFace256(
                skyboxCtx, skyboxCtx->roomVtx, roomVtxStartIndex, sSkybox256FaceParams[faceNum].xStart,
                sSkybox256FaceParams[faceNum].yStart, sSkybox256FaceParams[faceNum].zStart,
                sSkybox256FaceParams[faceNum].outerIncrVal, sSkybox256FaceParams[faceNum].innerIncrVal, faceNum,
                dlistBufStartIndex);
        }
    } else if (skyboxCtx->drawType == SKYBOX_DRAW_256_3FACE) {
        // 3 faces, 2 in xy plane and 1 in yz plane
        for (dlistBufStartIndex = 0, faceNum = 0; faceNum < 3; faceNum++, dlistBufStartIndex += 2) {
            roomVtxStartIndex = Skybox_CalculateFace256(
                skyboxCtx, skyboxCtx->roomVtx, roomVtxStartIndex, sSkybox256FaceParams[faceNum].xStart,
                sSkybox256FaceParams[faceNum].yStart, sSkybox256FaceParams[faceNum].zStart,
                sSkybox256FaceParams[faceNum].outerIncrVal, sSkybox256FaceParams[faceNum].innerIncrVal, faceNum,
                dlistBufStartIndex);
        }
    } else {
        // 4 faces, 2 in xy plane and 2 in yz plane
        for (dlistBufStartIndex = 0, faceNum = 0; faceNum < 4; faceNum++, dlistBufStartIndex += 2) {
            roomVtxStartIndex = Skybox_CalculateFace256(
                skyboxCtx, skyboxCtx->roomVtx, roomVtxStartIndex, sSkybox256FaceParams[faceNum].xStart,
                sSkybox256FaceParams[faceNum].yStart, sSkybox256FaceParams[faceNum].zStart,
                sSkybox256FaceParams[faceNum].outerIncrVal, sSkybox256FaceParams[faceNum].innerIncrVal, faceNum,
                dlistBufStartIndex);
        }
    }
}

SkyboxFaceParams sSkybox128FaceParams[6] = {
    { -64, 64, -64, 32, -32 }, { 64, 64, 64, -32, -32 }, { -64, 64, 64, -32, -32 },
    { 64, 64, -64, 32, -32 },  { -64, 64, 64, 32, -32 }, { -64, -64, -64, 32, 32 },
};

/**
 * Computes the display list for a skybox with up to 6 faces, where the sides are 128x64 CI8 textures and the
 * top/bottom faces are 128x128 CI8 textures.
 */
void Skybox_Calculate128(SkyboxContext* skyboxCtx, s32 nFaces) {
    s32 roomVtxStartIndex = 0;
    s32 faceNum;

    for (faceNum = 0; faceNum < nFaces; faceNum++) {
        roomVtxStartIndex = Skybox_CalculateFace128(
            skyboxCtx, skyboxCtx->roomVtx, roomVtxStartIndex, sSkybox128FaceParams[faceNum].xStart,
            sSkybox128FaceParams[faceNum].yStart, sSkybox128FaceParams[faceNum].zStart,
            sSkybox128FaceParams[faceNum].outerIncrVal, sSkybox128FaceParams[faceNum].innerIncrVal, faceNum);
    }
}

void Skybox_Setup(PlayState* play, SkyboxContext* skyboxCtx, s16 skyboxId) {
    u32 size;
    s16 i;
    u8 skybox1Index;
    u8 skybox2Index;
    uintptr_t start;
    s32 skyboxConfig;

    switch (skyboxId) {
        case SKYBOX_NORMAL_SKY:
            skyboxConfig = 0;
            if (gSaveContext.retainWeatherMode && !IS_CUTSCENE_LAYER && gWeatherMode > WEATHER_MODE_CLEAR &&
                gWeatherMode <= WEATHER_MODE_HEAVY_RAIN) {
                skyboxConfig = 1;
            }

            for (i = 0; i < ARRAY_COUNT(gTimeBasedSkyboxConfigs[skyboxConfig]); i++) {
                if (gSaveContext.skyboxTime >= gTimeBasedSkyboxConfigs[skyboxConfig][i].startTime &&
                    (gSaveContext.skyboxTime < gTimeBasedSkyboxConfigs[skyboxConfig][i].endTime ||
                     gTimeBasedSkyboxConfigs[skyboxConfig][i].endTime == 0xFFFF)) {
                    play->envCtx.skybox1Index = skybox1Index = gTimeBasedSkyboxConfigs[skyboxConfig][i].skybox1Index;
                    play->envCtx.skybox2Index = skybox2Index = gTimeBasedSkyboxConfigs[skyboxConfig][i].skybox2Index;
                    if (gTimeBasedSkyboxConfigs[skyboxConfig][i].changeSkybox) {
                        play->envCtx.skyboxBlend =
                            Environment_LerpWeight(gTimeBasedSkyboxConfigs[skyboxConfig][i].endTime,
                                                   gTimeBasedSkyboxConfigs[skyboxConfig][i].startTime,
                                                   ((void)0, gSaveContext.skyboxTime)) *
                            255.0f;
                    } else {
                        play->envCtx.skyboxBlend = 0;
                    }
                    break;
                }
            }

            size = gNormalSkyFiles[skybox1Index].file.vromEnd - gNormalSkyFiles[skybox1Index].file.vromStart;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1054);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1055);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], gNormalSkyFiles[skybox1Index].file.vromStart, size,
                                    "../z_vr_box.c", 1058);

            size = gNormalSkyFiles[skybox2Index].file.vromEnd - gNormalSkyFiles[skybox2Index].file.vromStart;
            skyboxCtx->staticSegments[1] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1060);
            ASSERT(skyboxCtx->staticSegments[1] != NULL, "vr_box->vr_box_staticSegment[1] != NULL", "../z_vr_box.c",
                   1061);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[1], gNormalSkyFiles[skybox2Index].file.vromStart, size,
                                    "../z_vr_box.c", 1064);

            if ((skybox1Index & 1) ^ ((skybox1Index & 4) >> 2)) {
                size = gNormalSkyFiles[skybox1Index].palette.vromEnd - gNormalSkyFiles[skybox1Index].palette.vromStart;

                skyboxCtx->palettes = GameState_Alloc(&play->state, size * 2, "../z_vr_box.c", 1072);

                ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1073);

                DmaMgr_RequestSyncDebug(skyboxCtx->palettes, gNormalSkyFiles[skybox1Index].palette.vromStart, size,
                                        "../z_vr_box.c", 1075);
                DmaMgr_RequestSyncDebug((u8*)skyboxCtx->palettes + size,
                                        gNormalSkyFiles[skybox2Index].palette.vromStart, size, "../z_vr_box.c", 1077);
            } else {
                size = gNormalSkyFiles[skybox1Index].palette.vromEnd - gNormalSkyFiles[skybox1Index].palette.vromStart;

                skyboxCtx->palettes = GameState_Alloc(&play->state, size * 2, "../z_vr_box.c", 1085);

                ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1086);

                DmaMgr_RequestSyncDebug(skyboxCtx->palettes, gNormalSkyFiles[skybox2Index].palette.vromStart, size,
                                        "../z_vr_box.c", 1088);
                DmaMgr_RequestSyncDebug((u8*)skyboxCtx->palettes + size,
                                        gNormalSkyFiles[skybox1Index].palette.vromStart, size, "../z_vr_box.c", 1090);
            }
            break;

        case SKYBOX_BAZAAR:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_SP1a_staticSegmentRomStart;
            size = (uintptr_t)_vr_SP1a_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1127);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1128);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1129);

            start = (uintptr_t)_vr_SP1a_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_SP1a_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1132);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1133);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1134);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_OVERCAST_SUNSET:
            start = (uintptr_t)_vr_cloud2_staticSegmentRomStart;
            size = (uintptr_t)_vr_cloud2_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1155);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1156);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1159);

            skyboxCtx->staticSegments[1] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1162);
            ASSERT(skyboxCtx->staticSegments[1] != NULL, "vr_box->vr_box_staticSegment[1] != NULL", "../z_vr_box.c",
                   1163);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[1], start, size, "../z_vr_box.c", 1166);

            start = (uintptr_t)_vr_cloud2_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_cloud2_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size * 2, "../z_vr_box.c", 1170);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1171);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1173);
            DmaMgr_RequestSyncDebug((u8*)skyboxCtx->palettes + size, start, size, "../z_vr_box.c", 1175);
            break;
        case SKYBOX_MARKET_ADULT:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_RUVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_RUVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1182);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1183);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1184);

            start = (uintptr_t)_vr_RUVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_RUVR_pal_staticSegmentRomEnd - start;
            osSyncPrintf("ＳＩＺＥ = %d\n", size);

            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1188);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1189);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1190);
            break;
        case SKYBOX_CUTSCENE_MAP:
            start = (uintptr_t)_vr_holy0_staticSegmentRomStart;
            size = (uintptr_t)_vr_holy0_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1196);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1197);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1200);

            start = (uintptr_t)_vr_holy1_staticSegmentRomStart;
            size = (uintptr_t)_vr_holy1_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[1] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1203);
            ASSERT(skyboxCtx->staticSegments[1] != NULL, "vr_box->vr_box_staticSegment[1] != NULL", "../z_vr_box.c",
                   1204);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[1], start, size, "../z_vr_box.c", 1207);

            start = (uintptr_t)_vr_holy0_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_holy0_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size * 2, "../z_vr_box.c", 1211);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1212);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1214);
            DmaMgr_RequestSyncDebug((u8*)skyboxCtx->palettes + size, (uintptr_t)_vr_holy1_pal_staticSegmentRomStart,
                                    size, "../z_vr_box.c", 1216);
            break;
        case SKYBOX_HOUSE_LINK:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_LHVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_LHVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1226);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1227);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1228);

            start = (uintptr_t)_vr_LHVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_LHVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1231);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1232);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1233);
            break;
        case SKYBOX_MARKET_CHILD_DAY:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_MDVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_MDVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1257);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1258);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1259);

            start = (uintptr_t)_vr_MDVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_MDVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1262);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1263);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1264);
            break;
        case SKYBOX_MARKET_CHILD_NIGHT:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_MNVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_MNVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1271);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1272);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1273);

            start = (uintptr_t)_vr_MNVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_MNVR_pal_staticSegmentRomEnd - start;
            osSyncPrintf("ＳＩＺＥ = %d\n", size);

            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1277);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1278);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1279);
            break;
        case SKYBOX_HAPPY_MASK_SHOP:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_FCVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_FCVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1286);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1287);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1288);

            start = (uintptr_t)_vr_FCVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_FCVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1291);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1292);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1293);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_HOUSE_KNOW_IT_ALL_BROTHERS:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_KHVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_KHVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1301);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1302);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1303);

            start = (uintptr_t)_vr_KHVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_KHVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1306);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1307);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1308);
            break;
        case SKYBOX_HOUSE_OF_TWINS:
            skyboxCtx->drawType = SKYBOX_DRAW_256_3FACE;

            start = (uintptr_t)_vr_K3VR_staticSegmentRomStart;
            size = (uintptr_t)_vr_K3VR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1331);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1332);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1333);

            start = (uintptr_t)_vr_K3VR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_K3VR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1336);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1337);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1338);
            break;
        case SKYBOX_STABLES:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_MLVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_MLVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1345);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1346);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1347);

            start = (uintptr_t)_vr_MLVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_MLVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1350);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1351);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1352);
            break;
        case SKYBOX_HOUSE_KAKARIKO:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_KKRVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_KKRVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1359);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1360);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1361);

            start = (uintptr_t)_vr_KKRVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_KKRVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1364);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1365);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1366);
            break;
        case SKYBOX_KOKIRI_SHOP:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_KSVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_KSVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1373);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1374);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1375);

            start = (uintptr_t)_vr_KSVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_KSVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1378);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1379);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1380);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_GORON_SHOP:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_GLVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_GLVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1405);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1406);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1407);

            start = (uintptr_t)_vr_GLVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_GLVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1410);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1411);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1412);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_ZORA_SHOP:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_ZRVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_ZRVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1420);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1421);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1422);

            start = (uintptr_t)_vr_ZRVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_ZRVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1425);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1426);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1427);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_POTION_SHOP_KAKARIKO:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_DGVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_DGVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1451);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1452);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1453);

            start = (uintptr_t)_vr_DGVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_DGVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1456);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1457);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1458);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_POTION_SHOP_MARKET:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_ALVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_ALVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1466);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1467);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1468);

            start = (uintptr_t)_vr_ALVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_ALVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1471);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1472);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1473);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_BOMBCHU_SHOP:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_NSVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_NSVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1481);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1482);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1483);

            start = (uintptr_t)_vr_NSVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_NSVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1486);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1487);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1488);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_HOUSE_RICHARD:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_IPVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_IPVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1512);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1513);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1514);

            start = (uintptr_t)_vr_IPVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_IPVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1517);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1518);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1519);
            break;
        case SKYBOX_HOUSE_IMPA:
            skyboxCtx->drawType = SKYBOX_DRAW_256_4FACE;

            start = (uintptr_t)_vr_LBVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_LBVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1526);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1527);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1528);

            start = (uintptr_t)_vr_LBVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_LBVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1531);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1532);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1533);
            break;
        case SKYBOX_TENT:
            skyboxCtx->drawType = SKYBOX_DRAW_256_3FACE;

            start = (uintptr_t)_vr_TTVR_staticSegmentRomStart;
            size = (uintptr_t)_vr_TTVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1540);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1541);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1542);

            start = (uintptr_t)_vr_TTVR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_TTVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1545);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1546);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1547);
            break;
        case SKYBOX_HOUSE_MIDO:
            skyboxCtx->drawType = SKYBOX_DRAW_256_3FACE;

            start = (uintptr_t)_vr_K4VR_staticSegmentRomStart;
            size = (uintptr_t)_vr_K4VR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1560);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1561);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1562);

            start = (uintptr_t)_vr_K4VR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_K4VR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1565);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1566);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1567);
            break;
        case SKYBOX_HOUSE_SARIA:
            skyboxCtx->drawType = SKYBOX_DRAW_256_3FACE;

            start = (uintptr_t)_vr_K5VR_staticSegmentRomStart;
            size = (uintptr_t)_vr_K5VR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1574);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1575);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1576);

            start = (uintptr_t)_vr_K5VR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_K5VR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1579);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1580);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1581);
            break;
        case SKYBOX_HOUSE_ALLEY:
            skyboxCtx->drawType = SKYBOX_DRAW_256_3FACE;

            start = (uintptr_t)_vr_KR3VR_staticSegmentRomStart;
            size = (uintptr_t)_vr_KR3VR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1588);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1589);

            DmaMgr_RequestSyncDebug(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1590);

            start = (uintptr_t)_vr_KR3VR_pal_staticSegmentRomStart;
            size = (uintptr_t)_vr_KR3VR_pal_staticSegmentRomEnd - start;
            skyboxCtx->palettes = GameState_Alloc(&play->state, size, "../z_vr_box.c", 1593);
            ASSERT(skyboxCtx->palettes != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c", 1594);

            DmaMgr_RequestSyncDebug(skyboxCtx->palettes, start, size, "../z_vr_box.c", 1595);
            break;
        case SKYBOX_UNSET_27:
            break;
    }
}

void Skybox_Init(GameState* state, SkyboxContext* skyboxCtx, s16 skyboxId) {
    PlayState* play = (PlayState*)state;

    skyboxCtx->drawType = SKYBOX_DRAW_128;
    skyboxCtx->rot.x = skyboxCtx->rot.y = skyboxCtx->rot.z = 0.0f;

    // DMA required assets based on skybox id
    Skybox_Setup(play, skyboxCtx, skyboxId);
    osSyncPrintf("\n\n\n＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊\n\n\n"
                 "ＴＹＰＥ＝%d"
                 "\n\n\n＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊\n\n\n",
                 skyboxId);

    // Precompute vertices and display lists for drawing the skybox
    if (skyboxId != SKYBOX_NONE) {
        osSyncPrintf(VT_FGCOL(GREEN));

        if (skyboxCtx->drawType != SKYBOX_DRAW_128) {
            skyboxCtx->dListBuf = GameState_Alloc(state, 8 * 150 * sizeof(Gfx), "../z_vr_box.c", 1636);
            ASSERT(skyboxCtx->dListBuf != NULL, "vr_box->dpList != NULL", "../z_vr_box.c", 1637);

            skyboxCtx->roomVtx = GameState_Alloc(state, 8 * 32 * sizeof(Vtx), "../z_vr_box.c", 1639);
            ASSERT(skyboxCtx->roomVtx != NULL, "vr_box->roomVtx != NULL", "../z_vr_box.c", 1640);

            Skybox_Calculate256(skyboxCtx, skyboxId);
        } else {
            skyboxCtx->dListBuf = GameState_Alloc(state, 12 * 150 * sizeof(Gfx), "../z_vr_box.c", 1643);
            ASSERT(skyboxCtx->dListBuf != NULL, "vr_box->dpList != NULL", "../z_vr_box.c", 1644);

            if (skyboxId == SKYBOX_CUTSCENE_MAP) {
                skyboxCtx->roomVtx = GameState_Alloc(state, 6 * 32 * sizeof(Vtx), "../z_vr_box.c", 1648);
                ASSERT(skyboxCtx->roomVtx != NULL, "vr_box->roomVtx != NULL", "../z_vr_box.c", 1649);

                Skybox_Calculate128(skyboxCtx, 6); // compute all 6 faces
            } else {
                skyboxCtx->roomVtx = GameState_Alloc(state, 5 * 32 * sizeof(Vtx), "../z_vr_box.c", 1653);
                ASSERT(skyboxCtx->roomVtx != NULL, "vr_box->roomVtx != NULL", "../z_vr_box.c", 1654);

                Skybox_Calculate128(skyboxCtx, 5); // compute 5 faces, excludes the bottom face
            }
        }
        osSyncPrintf(VT_RST);
    }
}
