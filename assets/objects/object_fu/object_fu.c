#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_fu.h"

s16 sWindmillManPlayAndMoveHeadAnimFrameData[] = {
    0x0000, 0x0B54, 0x0032, 0xC000, 0xF497, 0x0A30, 0x0B54, 0x0B4A, 0x0B31, 0x0B13, 0x0AFA, 0x0AF0, 0x0B00, 0x0B22, 
    0x0B44, 0x0B54, 0x0B4A, 0x0B31, 0x0B13, 0x0AFA, 0x0AF0, 0x0B00, 0x0B22, 0x0B44, 0x0B54, 0x0B4A, 0x0B31, 0x0B13, 
    0x0AFA, 0x0AF0, 0x0B00, 0x0B22, 0x0B44, 0x0032, 0x0028, 0x000F, 0xFFF1, 0xFFD8, 0xFFCE, 0xFFDE, 0x0000, 0x0022, 
    0x0032, 0x0028, 0x000F, 0xFFF1, 0xFFD8, 0xFFCE, 0xFFDE, 0x0000, 0x0022, 0x0032, 0x0028, 0x000F, 0xFFF1, 0xFFD8, 
    0xFFCE, 0xFFDE, 0x0000, 0x0022, 0xF59D, 0xF5D0, 0xF649, 0xF6D9, 0xF751, 0xF784, 0xF738, 0xF691, 0xF5E9, 0xF59D, 
    0xF5D0, 0xF649, 0xF6D9, 0xF751, 0xF784, 0xF738, 0xF691, 0xF5E9, 0xF59D, 0xF5D0, 0xF649, 0xF6D9, 0xF751, 0xF784, 
    0xF738, 0xF691, 0xF5E9, 0xED18, 0xECFA, 0xECB5, 0xEC69, 0xEC2E, 0xEC17, 0xEC3A, 0xEC8E, 0xECEB, 0xED18, 0xECFA, 
    0xECB5, 0xEC69, 0xEC2E, 0xEC17, 0xEC3A, 0xEC8E, 0xECEB, 0xED18, 0xECFA, 0xECB5, 0xEC69, 0xEC2E, 0xEC17, 0xEC3A, 
    0xEC8E, 0xECEB, 0xE73D, 0xE6AA, 0xE54F, 0xE3B5, 0xE260, 0xE1D2, 0xE2A8, 0xE481, 0xE661, 0xE73D, 0xE6AA, 0xE54F, 
    0xE3B5, 0xE260, 0xE1D2, 0xE2A8, 0xE481, 0xE661, 0xE73D, 0xE6AA, 0xE54F, 0xE3B5, 0xE260, 0xE1D2, 0xE2A8, 0xE481, 
    0xE661, 0x2C48, 0x2CE0, 0x2E40, 0x2FD4, 0x3118, 0x319D, 0x30D5, 0x2F0C, 0x2D2C, 0x2C48, 0x2CE0, 0x2E40, 0x2FD4, 
    0x3118, 0x319D, 0x30D5, 0x2F0C, 0x2D2C, 0x2C48, 0x2CE0, 0x2E40, 0x2FD4, 0x3118, 0x319D, 0x30D5, 0x2F0C, 0x2D2C, 
    0x04F7, 0x0500, 0x0516, 0x0530, 0x0545, 0x054E, 0x0540, 0x0523, 0x0505, 0x04F7, 0x0500, 0x0516, 0x0530, 0x0545, 
    0x054E, 0x0540, 0x0523, 0x0505, 0x04F7, 0x0500, 0x0516, 0x0530, 0x0545, 0x054E, 0x0540, 0x0523, 0x0505, 0xB004, 
    0xAFF4, 0xAFD4, 0xAFBA, 0xAFAD, 0xAFAA, 0xAFAF, 0xAFC6, 0xAFED, 0xB004, 0xAFF4, 0xAFD4, 0xAFBA, 0xAFAD, 0xAFAA, 
    0xAFAF, 0xAFC6, 0xAFED, 0xB004, 0xAFF4, 0xAFD4, 0xAFBA, 0xAFAD, 0xAFAA, 0xAFAF, 0xAFC6, 0xAFED, 0x1117, 0x10D7, 
    0x103F, 0x0F89, 0x0EEF, 0x0EAF, 0x0F10, 0x0FE4, 0x10B7, 0x1117, 0x10D7, 0x103F, 0x0F89, 0x0EEF, 0x0EAF, 0x0F10, 
    0x0FE4, 0x10B7, 0x1117, 0x10D7, 0x103F, 0x0F89, 0x0EEF, 0x0EAF, 0x0F10, 0x0FE4, 0x10B7, 0x1784, 0x17B0, 0x1815, 
    0x1885, 0x18DB, 0x18FE, 0x18CA, 0x184E, 0x17C6, 0x1784, 0x17B0, 0x1815, 0x1885, 0x18DB, 0x18FE, 0x18CA, 0x184E, 
    0x17C6, 0x1784, 0x17B0, 0x1815, 0x1885, 0x18DB, 0x18FE, 0x18CA, 0x184E, 0x17C6, 0xE910, 0xE87A, 0xE716, 0xE56F, 
    0xE40E, 0xE37B, 0xE459, 0xE642, 0xE82E, 0xE910, 0xE87A, 0xE716, 0xE56F, 0xE40E, 0xE37B, 0xE459, 0xE642, 0xE82E, 
    0xE910, 0xE87A, 0xE716, 0xE56F, 0xE40E, 0xE37B, 0xE459, 0xE642, 0xE82E, 0x2B8B, 0x2C24, 0x2D88, 0x2F1E, 0x3065, 
    0x30EB, 0x3021, 0x2E55, 0x2C71, 0x2B8B, 0x2C24, 0x2D88, 0x2F1E, 0x3065, 0x30EB, 0x3021, 0x2E55, 0x2C71, 0x2B8B, 
    0x2C24, 0x2D88, 0x2F1E, 0x3065, 0x30EB, 0x3021, 0x2E55, 0x2C71, 0xF4E7, 0xF4DF, 0xF4CF, 0xF4BC, 0xF4AC, 0xF4A6, 
    0xF4B0, 0xF4C5, 0xF4DC, 0xF4E7, 0xF4DF, 0xF4CF, 0xF4BC, 0xF4AC, 0xF4A6, 0xF4B0, 0xF4C5, 0xF4DC, 0xF4E7, 0xF4DF, 
    0xF4CF, 0xF4BC, 0xF4AC, 0xF4A6, 0xF4B0, 0xF4C5, 0xF4DC, 0xB11A, 0xB10B, 0xB0EE, 0xB0D6, 0xB0CB, 0xB0C9, 0xB0CD, 
    0xB0E0, 0xB104, 0xB11A, 0xB10B, 0xB0EE, 0xB0D6, 0xB0CB, 0xB0C9, 0xB0CD, 0xB0E0, 0xB104, 0xB11A, 0xB10B, 0xB0EE, 
    0xB0D6, 0xB0CB, 0xB0C9, 0xB0CD, 0xB0E0, 0xB104, 0x8D72, 0x8DD8, 0x8E83, 0x8EAB, 0x8DAB, 0x8C28, 0x8B44, 0x8B9D, 
    0x8C95, 0x8D72, 0x8E18, 0x8EA3, 0x8EAB, 0x8DAB, 0x8C28, 0x8B44, 0x8B9D, 0x8C95, 0x8D72, 0x8E18, 0x8EA3, 0x8EAB, 
    0x8DAB, 0x8C28, 0x8B44, 0x8BBD, 0x8CD6, 0x40D1, 0x3EF8, 0x3AE8, 0x36D8, 0x3500, 0x363A, 0x3929, 0x3CA8, 0x3F96, 
    0x40D1, 0x3EF8, 0x3AE8, 0x36D8, 0x3500, 0x363A, 0x3929, 0x3CA8, 0x3F96, 0x40D1, 0x3EF8, 0x3AE8, 0x36D8, 0x3500, 
    0x363A, 0x3929, 0x3CA8, 0x3F96, 0xC000, 0xDC72, 0xF8E4, 0x1555, 0x31C7, 0x4E39, 0x6AAB, 0x871C, 0xA38E, 0xC000, 
    0xDC72, 0xF8E4, 0x1555, 0x31C7, 0x4E39, 0x6AAB, 0x871C, 0xA38E, 0xC000, 0xDC72, 0xF8E4, 0x1555, 0x31C7, 0x4E39, 
    0x6AAB, 0x871C, 0xA38E, 0x0376, 0x0250, 0x012A, 0x0023, 0xFF9D, 0x00AE, 0x0203, 0x0356, 0x0400, 0x0376, 0x0250, 
    0x012A, 0x0023, 0xFF9D, 0x00AE, 0x0203, 0x0356, 0x0400, 0x0376, 0x0250, 0x012A, 0x0023, 0xFF9D, 0x00AE, 0x0203, 
    0x0356, 0x0400, 0x06A1, 0x0649, 0x0600, 0x05CC, 0x05B7, 0x05E6, 0x0634, 0x0696, 0x06D0, 0x06A1, 0x0649, 0x0600, 
    0x05CC, 0x05B7, 0x05E6, 0x0634, 0x0696, 0x06D0, 0x06A1, 0x0649, 0x0600, 0x05CC, 0x05B7, 0x05E6, 0x0634, 0x0696, 
    0x06D0, 0x79F7, 0x71E6, 0x6B10, 0x660F, 0x662C, 0x726E, 0x7DF3, 0x83E0, 0x8189, 0x79F7, 0x71E6, 0x6B10, 0x660F, 
    0x662C, 0x726E, 0x7DF3, 0x83E0, 0x8189, 0x79F7, 0x71E6, 0x6B10, 0x660F, 0x662C, 0x726E, 0x7DF3, 0x83E0, 0x8189, 
    0xC5F2, 0xD29C, 0xE200, 0xF1EE, 0xFAA0, 0xE945, 0xD662, 0xC739, 0xC0DA, 0xC5F2, 0xD29C, 0xE200, 0xF1EE, 0xFAA0, 
    0xE945, 0xD662, 0xC739, 0xC0DA, 0xC5F2, 0xD29C, 0xE200, 0xF1EE, 0xFAA0, 0xE945, 0xD662, 0xC739, 0xC0DA, 0xF1C8, 
    0xE38E, 0xE38A, 0xE388, 0xE389, 0xE38A, 0xE38C, 0xE38F, 0xE391, 0xE393, 0xE393, 0xE392, 0xE38E, 0xF24C, 0x0DB1, 
    0x1C72, 0x1C72, 0x1C71, 0x1C71, 0x1C72, 0x1C72, 0x1C72, 0x1C72, 0x1C72, 0x1C72, 0x1C72, 0x0E39, 0xF061, 0xEFFE, 
    0xEF67, 0xEEA7, 0xEDCB, 0xECDE, 0xEBEA, 0xEAFD, 0xEA20, 0xE961, 0xE8CA, 0xE867, 0xE843, 0xE85E, 0xE8AA, 0xE91F, 
    0xE9B6, 0xEA67, 0xEB2B, 0xEBFA, 0xECCD, 0xED9D, 0xEE61, 0xEF12, 0xEFA9, 0xF01E, 0xF06A, 0x0000, 0x097B, 0x12F7, 
    0x1C72, 0x25ED, 0x2F68, 0x38E4, 0x425F, 0x4BDA, 0x5555, 0x5ED1, 0x684C, 0x71C7, 0x7B42, 0x84BE, 0x8E39, 0x97B4, 
    0xA12F, 0xAAAB, 0xB426, 0xBDA1, 0xC71C, 0xD098, 0xDA13, 0xE38E, 0xED09, 0xF685, 
};

JointIndex sWindmillManPlayAndMoveHeadAnimJointIndices[] = {
    { 0x0000, 0x0006, 0x0021 },
    { 0x0003, 0x0000, 0x0003 },
    { 0x003C, 0x0057, 0x0072 },
    { 0x0000, 0x0000, 0x008D },
    { 0x0004, 0x00A8, 0x00C3 },
    { 0x00DE, 0x00F9, 0x0114 },
    { 0x0000, 0x0000, 0x012F },
    { 0x0005, 0x014A, 0x0165 },
    { 0x0000, 0x0000, 0x0180 },
    { 0x0000, 0x0000, 0x019B },
    { 0x0000, 0x0000, 0x01B6 },
    { 0x01D1, 0x01EC, 0x0207 },
    { 0x0000, 0x0000, 0x0222 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x023D, 0x0000, 0x0258 },
    { 0x0273, 0x0000, 0x0000 },
};

AnimationHeader gWindmillManPlayAndMoveHeadAnim = { 
    { 27 }, sWindmillManPlayAndMoveHeadAnimFrameData,
    sWindmillManPlayAndMoveHeadAnimJointIndices, 6
};

u8 object_fu_possiblePadding_00058C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sWindmillManPlayStillAnimFrameData[] = {
    0x0000, 0x0B54, 0x0032, 0xC000, 0xF497, 0x0A30, 0x0B54, 0x0B4A, 0x0B31, 0x0B13, 0x0AFA, 0x0AF0, 0x0B00, 0x0B22, 
    0x0B44, 0x0B54, 0x0B4A, 0x0B31, 0x0B13, 0x0AFA, 0x0AF0, 0x0B00, 0x0B22, 0x0B44, 0x0B54, 0x0B4A, 0x0B31, 0x0B13, 
    0x0AFA, 0x0AF0, 0x0B00, 0x0B22, 0x0B44, 0x0B54, 0x0032, 0x0028, 0x000F, 0xFFF1, 0xFFD8, 0xFFCE, 0xFFDE, 0x0000, 
    0x0022, 0x0032, 0x0028, 0x000F, 0xFFF1, 0xFFD8, 0xFFCE, 0xFFDE, 0x0000, 0x0022, 0x0032, 0x0028, 0x000F, 0xFFF1, 
    0xFFD8, 0xFFCE, 0xFFDE, 0x0000, 0x0022, 0x0032, 0xF59D, 0xF5D0, 0xF649, 0xF6D9, 0xF751, 0xF784, 0xF738, 0xF691, 
    0xF5E9, 0xF59D, 0xF5D0, 0xF649, 0xF6D9, 0xF751, 0xF784, 0xF738, 0xF691, 0xF5E9, 0xF59D, 0xF5D0, 0xF649, 0xF6D9, 
    0xF751, 0xF784, 0xF738, 0xF691, 0xF5E9, 0xF59D, 0xED18, 0xECFA, 0xECB5, 0xEC69, 0xEC2E, 0xEC17, 0xEC3A, 0xEC8E, 
    0xECEB, 0xED18, 0xECFA, 0xECB5, 0xEC69, 0xEC2E, 0xEC17, 0xEC3A, 0xEC8E, 0xECEB, 0xED18, 0xECFA, 0xECB5, 0xEC69, 
    0xEC2E, 0xEC17, 0xEC3A, 0xEC8E, 0xECEB, 0xED18, 0xE73D, 0xE6AA, 0xE54F, 0xE3B5, 0xE260, 0xE1D2, 0xE2A8, 0xE481, 
    0xE661, 0xE73D, 0xE6AA, 0xE54F, 0xE3B5, 0xE260, 0xE1D2, 0xE2A8, 0xE481, 0xE661, 0xE73D, 0xE6AA, 0xE54F, 0xE3B5, 
    0xE260, 0xE1D2, 0xE2A8, 0xE481, 0xE661, 0xE73D, 0x2C48, 0x2CE0, 0x2E40, 0x2FD4, 0x3118, 0x319D, 0x30D5, 0x2F0C, 
    0x2D2C, 0x2C48, 0x2CE0, 0x2E40, 0x2FD4, 0x3118, 0x319D, 0x30D5, 0x2F0C, 0x2D2C, 0x2C48, 0x2CE0, 0x2E40, 0x2FD4, 
    0x3118, 0x319D, 0x30D5, 0x2F0C, 0x2D2C, 0x2C48, 0x04F7, 0x0500, 0x0516, 0x0530, 0x0545, 0x054E, 0x0540, 0x0523, 
    0x0505, 0x04F7, 0x0500, 0x0516, 0x0530, 0x0545, 0x054E, 0x0540, 0x0523, 0x0505, 0x04F7, 0x0500, 0x0516, 0x0530, 
    0x0545, 0x054E, 0x0540, 0x0523, 0x0505, 0x04F7, 0xB004, 0xAFF4, 0xAFD4, 0xAFBA, 0xAFAD, 0xAFAA, 0xAFAF, 0xAFC6, 
    0xAFED, 0xB004, 0xAFF4, 0xAFD4, 0xAFBA, 0xAFAD, 0xAFAA, 0xAFAF, 0xAFC6, 0xAFED, 0xB004, 0xAFF4, 0xAFD4, 0xAFBA, 
    0xAFAD, 0xAFAA, 0xAFAF, 0xAFC6, 0xAFED, 0xB004, 0x1117, 0x10D7, 0x103F, 0x0F89, 0x0EEF, 0x0EAF, 0x0F10, 0x0FE4, 
    0x10B7, 0x1117, 0x10D7, 0x103F, 0x0F89, 0x0EEF, 0x0EAF, 0x0F10, 0x0FE4, 0x10B7, 0x1117, 0x10D7, 0x103F, 0x0F89, 
    0x0EEF, 0x0EAF, 0x0F10, 0x0FE4, 0x10B7, 0x1117, 0x1784, 0x17B0, 0x1815, 0x1885, 0x18DB, 0x18FE, 0x18CA, 0x184E, 
    0x17C6, 0x1784, 0x17B0, 0x1815, 0x1885, 0x18DB, 0x18FE, 0x18CA, 0x184E, 0x17C6, 0x1784, 0x17B0, 0x1815, 0x1885, 
    0x18DB, 0x18FE, 0x18CA, 0x184E, 0x17C6, 0x1784, 0xE910, 0xE87A, 0xE716, 0xE56F, 0xE40E, 0xE37B, 0xE459, 0xE642, 
    0xE82E, 0xE910, 0xE87A, 0xE716, 0xE56F, 0xE40E, 0xE37B, 0xE459, 0xE642, 0xE82E, 0xE910, 0xE87A, 0xE716, 0xE56F, 
    0xE40E, 0xE37B, 0xE459, 0xE642, 0xE82E, 0xE910, 0x2B8B, 0x2C24, 0x2D88, 0x2F1E, 0x3065, 0x30EB, 0x3021, 0x2E55, 
    0x2C71, 0x2B8B, 0x2C24, 0x2D88, 0x2F1E, 0x3065, 0x30EB, 0x3021, 0x2E55, 0x2C71, 0x2B8B, 0x2C24, 0x2D88, 0x2F1E, 
    0x3065, 0x30EB, 0x3021, 0x2E55, 0x2C71, 0x2B8B, 0xF4E7, 0xF4DF, 0xF4CF, 0xF4BC, 0xF4AC, 0xF4A6, 0xF4B0, 0xF4C5, 
    0xF4DC, 0xF4E7, 0xF4DF, 0xF4CF, 0xF4BC, 0xF4AC, 0xF4A6, 0xF4B0, 0xF4C5, 0xF4DC, 0xF4E7, 0xF4DF, 0xF4CF, 0xF4BC, 
    0xF4AC, 0xF4A6, 0xF4B0, 0xF4C5, 0xF4DC, 0xF4E7, 0xB11A, 0xB10B, 0xB0EE, 0xB0D6, 0xB0CB, 0xB0C9, 0xB0CD, 0xB0E0, 
    0xB104, 0xB11A, 0xB10B, 0xB0EE, 0xB0D6, 0xB0CB, 0xB0C9, 0xB0CD, 0xB0E0, 0xB104, 0xB11A, 0xB10B, 0xB0EE, 0xB0D6, 
    0xB0CB, 0xB0C9, 0xB0CD, 0xB0E0, 0xB104, 0xB11A, 0x8D72, 0x8DD8, 0x8E83, 0x8EAB, 0x8DAB, 0x8C28, 0x8B44, 0x8B9D, 
    0x8C95, 0x8D72, 0x8E18, 0x8EA3, 0x8EAB, 0x8DAB, 0x8C28, 0x8B44, 0x8B9D, 0x8C95, 0x8D72, 0x8E18, 0x8EA3, 0x8EAB, 
    0x8DAB, 0x8C28, 0x8B44, 0x8BBD, 0x8CD6, 0x8D72, 0x40D1, 0x3EF8, 0x3AE8, 0x36D8, 0x3500, 0x363A, 0x3929, 0x3CA8, 
    0x3F96, 0x40D1, 0x3EF8, 0x3AE8, 0x36D8, 0x3500, 0x363A, 0x3929, 0x3CA8, 0x3F96, 0x40D1, 0x3EF8, 0x3AE8, 0x36D8, 
    0x3500, 0x363A, 0x3929, 0x3CA8, 0x3F96, 0x40D1, 0xC000, 0xDC72, 0xF8E4, 0x1555, 0x31C7, 0x4E39, 0x6AAB, 0x871C, 
    0xA38E, 0xC000, 0xDC72, 0xF8E4, 0x1555, 0x31C7, 0x4E39, 0x6AAB, 0x871C, 0xA38E, 0xC000, 0xDC72, 0xF8E4, 0x1555, 
    0x31C7, 0x4E39, 0x6AAB, 0x871C, 0xA38E, 0xC000, 0x0376, 0x0250, 0x012A, 0x0023, 0xFF9D, 0x00AE, 0x0203, 0x0356, 
    0x0400, 0x0376, 0x0250, 0x012A, 0x0023, 0xFF9D, 0x00AE, 0x0203, 0x0356, 0x0400, 0x0376, 0x0250, 0x012A, 0x0023, 
    0xFF9D, 0x00AE, 0x0203, 0x0356, 0x0400, 0x0376, 0x06A1, 0x0649, 0x0600, 0x05CC, 0x05B7, 0x05E6, 0x0634, 0x0696, 
    0x06D0, 0x06A1, 0x0649, 0x0600, 0x05CC, 0x05B7, 0x05E6, 0x0634, 0x0696, 0x06D0, 0x06A1, 0x0649, 0x0600, 0x05CC, 
    0x05B7, 0x05E6, 0x0634, 0x0696, 0x06D0, 0x06A1, 0x79F7, 0x71E6, 0x6B10, 0x660F, 0x662C, 0x726E, 0x7DF3, 0x83E0, 
    0x8189, 0x79F7, 0x71E6, 0x6B10, 0x660F, 0x662C, 0x726E, 0x7DF3, 0x83E0, 0x8189, 0x79F7, 0x71E6, 0x6B10, 0x660F, 
    0x662C, 0x726E, 0x7DF3, 0x83E0, 0x8189, 0x79F7, 0xC5F2, 0xD29C, 0xE200, 0xF1EE, 0xFAA0, 0xE945, 0xD662, 0xC739, 
    0xC0DA, 0xC5F2, 0xD29C, 0xE200, 0xF1EE, 0xFAA0, 0xE945, 0xD662, 0xC739, 0xC0DA, 0xC5F2, 0xD29C, 0xE200, 0xF1EE, 
    0xFAA0, 0xE945, 0xD662, 0xC739, 0xC0DA, 0xC5F2, 0xF084, 0xF13D, 0xF2F5, 0xF501, 0xF6B9, 0xF772, 0xF65D, 0xF3FB, 
    0xF19A, 0xF084, 0xF13D, 0xF2F5, 0xF501, 0xF6B9, 0xF772, 0xF65D, 0xF3FB, 0xF19A, 0xF084, 0xF13D, 0xF2F5, 0xF501, 
    0xF6B9, 0xF772, 0xF65D, 0xF3FB, 0xF19A, 0xF084, 0x0000, 0x097B, 0x12F7, 0x1C72, 0x25ED, 0x2F68, 0x38E4, 0x425F, 
    0x4BDA, 0x5555, 0x5ED1, 0x684C, 0x71C7, 0x7B42, 0x84BE, 0x8E39, 0x97B4, 0xA12F, 0xAAAB, 0xB426, 0xBDA1, 0xC71C, 
    0xD098, 0xDA13, 0xE38E, 0xED09, 0xF685, 0x0000, 
};

JointIndex sWindmillManPlayStillAnimJointIndices[] = {
    { 0x0000, 0x0006, 0x0022 },
    { 0x0003, 0x0000, 0x0003 },
    { 0x003E, 0x005A, 0x0076 },
    { 0x0000, 0x0000, 0x0092 },
    { 0x0004, 0x00AE, 0x00CA },
    { 0x00E6, 0x0102, 0x011E },
    { 0x0000, 0x0000, 0x013A },
    { 0x0005, 0x0156, 0x0172 },
    { 0x0000, 0x0000, 0x018E },
    { 0x0000, 0x0000, 0x01AA },
    { 0x0000, 0x0000, 0x01C6 },
    { 0x01E2, 0x01FE, 0x021A },
    { 0x0000, 0x0000, 0x0236 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0252 },
    { 0x026E, 0x0000, 0x0000 },
};

AnimationHeader gWindmillManPlayStillAnim = { 
    { 27 }, sWindmillManPlayStillAnimFrameData,
    sWindmillManPlayStillAnimJointIndices, 6
};

u8 object_fu_possiblePadding_000B14[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_fuVtx_000B20[] = {
#include "assets/objects/object_fu/object_fuVtx_000B20.vtx.inc"
};

Gfx gWindmillManHornDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManHornAndPipeTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[168], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 10, 7, 0, 6, 11, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(6, 16, 17, 0, 17, 11, 6, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 21, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 24, 25, 22, 0),
    gsSP2Triangles(24, 23, 20, 0, 20, 19, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 27, 22, 25, 0),
    gsSP2Triangles(18, 21, 27, 0, 27, 26, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManUpperHornAndCrankTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_fuVtx_000B20[196], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 7, 4, 3, 0),
    gsSP2Triangles(8, 9, 6, 0, 10, 7, 11, 0),
    gsSP2Triangles(3, 11, 7, 0, 11, 12, 10, 0),
    gsSP2Triangles(5, 13, 3, 0, 6, 14, 8, 0),
    gsSP2Triangles(6, 9, 2, 0, 2, 15, 0, 0),
    gsSP2Triangles(16, 13, 5, 0, 0, 15, 17, 0),
    gsSP2Triangles(17, 8, 14, 0, 10, 12, 16, 0),
    gsSP2Triangles(16, 18, 10, 0, 14, 19, 17, 0),
    gsSP2Triangles(5, 18, 16, 0, 17, 19, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManChestAndMusicBoxPipeDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[349], 6, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[355], 18, 6),
    gsSP2Triangles(6, 0, 1, 0, 2, 0, 7, 0),
    gsSP2Triangles(2, 8, 3, 0, 9, 2, 10, 0),
    gsSP2Triangles(11, 12, 0, 0, 13, 4, 14, 0),
    gsSP2Triangles(15, 1, 4, 0, 16, 17, 1, 0),
    gsSP2Triangles(4, 5, 18, 0, 4, 19, 20, 0),
    gsSP2Triangles(21, 5, 3, 0, 5, 22, 23, 0),
    gsSPVertex(&object_fuVtx_000B20[373], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 0, 5, 1, 0),
    gsSP2Triangles(3, 5, 4, 0, 3, 7, 5, 0),
    gsSP2Triangles(1, 5, 7, 0, 0, 6, 5, 0),
    gsSP2Triangles(0, 2, 8, 0, 4, 8, 2, 0),
    gsSP2Triangles(9, 3, 2, 0, 7, 3, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 2, 1, 0),
    gsSP2Triangles(1, 7, 13, 0, 11, 14, 15, 0),
    gsSP2Triangles(10, 14, 11, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 19, 17, 0, 11, 19, 16, 0),
    gsSP2Triangles(11, 15, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 21, 20, 0, 18, 23, 20, 0),
    gsSP2Triangles(20, 12, 18, 0, 23, 17, 24, 0),
    gsSP2Triangles(18, 17, 23, 0, 24, 21, 23, 0),
    gsSP2Triangles(25, 14, 10, 0, 26, 27, 28, 0),
    gsSP2Triangles(29, 27, 26, 0, 29, 30, 27, 0),
    gsSP2Triangles(31, 30, 25, 0, 30, 14, 25, 0),
    gsSP2Triangles(15, 14, 30, 0, 29, 15, 30, 0),
    gsSPVertex(&object_fuVtx_000B20[405], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 4, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManMusicBoxTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 13, 20, 0),
    gsSP2Triangles(20, 21, 19, 0, 15, 20, 13, 0),
    gsSP2Triangles(18, 22, 16, 0, 12, 23, 10, 0),
    gsSP2Triangles(15, 14, 9, 0, 9, 8, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManHornAndPipeTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_fuVtx_000B20[429], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 4, 8, 0),
    gsSP2Triangles(3, 0, 10, 0, 2, 1, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 14, 16, 0),
    gsSP2Triangles(12, 14, 15, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 20, 19, 0),
    gsSP2Triangles(21, 22, 20, 0, 23, 22, 21, 0),
    gsSP2Triangles(24, 22, 23, 0, 25, 22, 24, 0),
    gsSP2Triangles(19, 25, 24, 0, 25, 19, 18, 0),
    gsSP2Triangles(17, 16, 26, 0, 26, 27, 12, 0),
    gsSP2Triangles(16, 27, 26, 0, 27, 13, 12, 0),
    gsSP2Triangles(11, 28, 2, 0, 10, 29, 3, 0),
    gsSP2Triangles(8, 30, 31, 0, 9, 8, 31, 0),
    gsSP2Triangles(5, 31, 30, 0, 6, 5, 30, 0),
    gsSP2Triangles(29, 28, 3, 0, 2, 28, 29, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManHeadDL[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[216], 13, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManHeadSkinTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[229], 4, 13),
    gsSP2Triangles(0, 13, 3, 0, 6, 14, 0, 0),
    gsSP2Triangles(1, 15, 9, 0, 3, 16, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_fuVtx_000B20[233], 18, 13),
    gsSP2Triangles(13, 14, 7, 0, 15, 16, 4, 0),
    gsSP2Triangles(17, 8, 18, 0, 19, 8, 2, 0),
    gsSP2Triangles(20, 21, 2, 0, 2, 10, 22, 0),
    gsSP2Triangles(23, 24, 4, 0, 5, 25, 26, 0),
    gsSP2Triangles(27, 11, 28, 0, 12, 29, 30, 0),
    gsSPVertex(&object_fuVtx_000B20[251], 6, 13),
    gsSP2Triangles(4, 13, 14, 0, 15, 16, 5, 0),
    gsSP1Triangle(4, 17, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManHeadSkinTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_fuVtx_000B20[257], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 8, 7, 13, 0),
    gsSP2Triangles(14, 13, 15, 0, 14, 16, 13, 0),
    gsSP2Triangles(14, 17, 18, 0, 15, 17, 14, 0),
    gsSP2Triangles(19, 20, 21, 0, 16, 22, 23, 0),
    gsSP2Triangles(18, 16, 14, 0, 18, 22, 16, 0),
    gsSP2Triangles(24, 25, 17, 0, 8, 26, 6, 0),
    gsSP2Triangles(15, 24, 17, 0, 17, 25, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 18, 17, 27, 0),
    gsSP2Triangles(31, 22, 18, 0, 27, 31, 18, 0),
    gsSPVertex(&object_fuVtx_000B20[289], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 10, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 18, 13, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 20, 0),
    gsSP2Triangles(23, 20, 22, 0, 24, 21, 25, 0),
    gsSP1Triangle(21, 24, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManEarTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_fuVtx_000B20[315], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_fuVtx_000B20[321], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 3, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(2, 14, 0, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 15, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 10, 9, 27, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManRightShoulderDL[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[144], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[148], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 6, 1, 0),
    gsSP2Triangles(7, 2, 8, 0, 9, 3, 2, 0),
    gsSP2Triangles(10, 2, 11, 0, 1, 3, 12, 0),
    gsSP2Triangles(1, 13, 14, 0, 2, 0, 15, 0),
    gsSPVertex(&object_fuVtx_000B20[160], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(4, 5, 2, 0, 6, 1, 0, 0),
    gsSP2Triangles(4, 3, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(2, 5, 0, 0, 0, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManRightArmDL[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[120], 4, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManHeadSkinTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[124], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 9, 0, 0, 1, 10, 11, 0),
    gsSP2Triangles(12, 2, 1, 0, 0, 2, 13, 0),
    gsSP2Triangles(14, 3, 0, 0, 1, 3, 15, 0),
    gsSPVertex(&object_fuVtx_000B20[136], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(1, 5, 6, 0, 6, 5, 4, 0),
    gsSP2Triangles(0, 7, 3, 0, 2, 7, 0, 0),
    gsSP2Triangles(6, 2, 1, 0, 4, 3, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManRightHandAndCrankDL[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[62], 4, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManFingersAndToesTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[66], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 9, 2, 0, 10, 11, 0, 0),
    gsSP2Triangles(2, 1, 12, 0, 0, 2, 13, 0),
    gsSP2Triangles(14, 3, 0, 0, 1, 3, 15, 0),
    gsSPVertex(&object_fuVtx_000B20[78], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 2, 5, 0, 0),
    gsSP2Triangles(6, 7, 3, 0, 3, 1, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 6, 1, 8, 0),
    gsSP2Triangles(10, 11, 9, 0, 7, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 14, 20, 0, 14, 13, 20, 0),
    gsSP2Triangles(15, 21, 13, 0, 2, 1, 3, 0),
    gsSP2Triangles(8, 1, 0, 0, 7, 0, 3, 0),
    gsSP2Triangles(11, 10, 12, 0, 4, 3, 0, 0),
    gsSP2Triangles(22, 18, 17, 0, 0, 5, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManEarTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_fuVtx_000B20[101], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 9, 6, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManUpperHornAndCrankTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 14, 0),
    gsSP2Triangles(17, 14, 13, 0, 16, 15, 18, 0),
    gsSP1Triangle(16, 18, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManLeftArmAndMusicBoxDL[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[3], 4, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManHeadSkinTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[7], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 8, 0, 0, 0, 2, 9, 0),
    gsSP2Triangles(10, 3, 11, 0, 12, 2, 3, 0),
    gsSP2Triangles(13, 14, 3, 0, 1, 15, 3, 0),
    gsSPVertex(&object_fuVtx_000B20[19], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 4, 0),
    gsSP2Triangles(4, 3, 5, 0, 7, 6, 5, 0),
    gsSP2Triangles(2, 7, 0, 0, 7, 2, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManMusicBoxTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 10, 17, 16, 0),
    gsSP2Triangles(13, 18, 11, 0, 10, 19, 8, 0),
    gsSP2Triangles(16, 19, 10, 0, 17, 14, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManFingersAndToesTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_fuVtx_000B20[47], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 4, 5, 2, 0),
    gsSP2Triangles(6, 7, 0, 0, 0, 2, 6, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 10, 7, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 6, 2, 13, 0),
    gsSP2Triangles(12, 6, 13, 0, 12, 8, 6, 0),
    gsSP2Triangles(8, 14, 11, 0, 12, 14, 8, 0),
    gsSP1Triangle(10, 9, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManBlueTriangleDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManPantsTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_fuVtx_000B20, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManTorsoDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManPantsTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[591], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(8, 9, 10, 0, 5, 8, 10, 0),
    gsSP2Triangles(4, 1, 0, 0, 11, 12, 3, 0),
    gsSP2Triangles(3, 12, 4, 0, 13, 9, 8, 0),
    gsSP2Triangles(2, 14, 5, 0, 2, 5, 15, 0),
    gsSP2Triangles(5, 14, 6, 0, 2, 15, 0, 0),
    gsSP2Triangles(16, 4, 12, 0, 17, 16, 14, 0),
    gsSP2Triangles(17, 4, 16, 0, 16, 6, 14, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManRightThighDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[568], 5, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManPantsTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[573], 15, 5),
    gsSP2Triangles(0, 5, 6, 0, 7, 1, 8, 0),
    gsSP2Triangles(0, 9, 10, 0, 11, 12, 2, 0),
    gsSP2Triangles(0, 2, 13, 0, 3, 1, 14, 0),
    gsSP2Triangles(15, 1, 16, 0, 0, 17, 4, 0),
    gsSP2Triangles(1, 4, 18, 0, 2, 3, 19, 0),
    gsSPVertex(&object_fuVtx_000B20[588], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManRightLegDL[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[540], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManHeadSkinTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[544], 12, 4),
    gsSP2Triangles(0, 1, 4, 0, 2, 5, 6, 0),
    gsSP2Triangles(7, 3, 0, 0, 8, 1, 2, 0),
    gsSP2Triangles(9, 2, 10, 0, 2, 3, 11, 0),
    gsSP2Triangles(0, 12, 13, 0, 14, 15, 0, 0),
    gsSPVertex(&object_fuVtx_000B20[556], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 4, 5, 0, 5, 6, 2, 0),
    gsSP2Triangles(5, 7, 3, 0, 2, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 6, 8, 0, 0),
    gsSP2Triangles(8, 10, 0, 0, 0, 10, 9, 0),
    gsSP2Triangles(0, 4, 3, 0, 5, 11, 6, 0),
    gsSP2Triangles(2, 6, 0, 0, 9, 4, 0, 0),
    gsSP1Triangle(4, 11, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManRightFootDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[526], 5, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManFingersAndToesTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[531], 9, 5),
    gsSP2Triangles(0, 5, 6, 0, 7, 1, 0, 0),
    gsSP2Triangles(2, 8, 3, 0, 9, 0, 4, 0),
    gsSP2Triangles(10, 11, 3, 0, 4, 3, 12, 0),
    gsSP1Triangle(2, 1, 13, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManLeftThighDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[503], 5, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManClothesTLUT),
    gsDPLoadTextureBlock(gWindmillManPantsTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[508], 15, 5),
    gsSP2Triangles(5, 6, 0, 0, 7, 1, 8, 0),
    gsSP2Triangles(9, 10, 0, 0, 2, 11, 12, 0),
    gsSP2Triangles(13, 2, 0, 0, 14, 1, 3, 0),
    gsSP2Triangles(15, 1, 16, 0, 4, 17, 0, 0),
    gsSP2Triangles(18, 4, 1, 0, 19, 3, 2, 0),
    gsSPVertex(&object_fuVtx_000B20[523], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManLeftLegDL[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[475], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManHeadSkinTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[479], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 6, 2, 0),
    gsSP2Triangles(1, 3, 7, 0, 2, 0, 8, 0),
    gsSP2Triangles(9, 2, 10, 0, 11, 3, 2, 0),
    gsSP2Triangles(12, 13, 1, 0, 1, 14, 15, 0),
    gsSPVertex(&object_fuVtx_000B20[491], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 0, 6, 4, 0),
    gsSP2Triangles(3, 7, 4, 0, 4, 7, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 2, 10, 6, 0),
    gsSP2Triangles(2, 8, 10, 0, 9, 8, 2, 0),
    gsSP2Triangles(3, 5, 2, 0, 6, 11, 4, 0),
    gsSP2Triangles(2, 6, 0, 0, 2, 5, 9, 0),
    gsSP1Triangle(4, 11, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gWindmillManLeftFootDL[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fuVtx_000B20[461], 5, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gWindmillManSkinTLUT),
    gsDPLoadTextureBlock(gWindmillManFingersAndToesTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fuVtx_000B20[466], 9, 5),
    gsSP2Triangles(5, 6, 0, 0, 0, 1, 7, 0),
    gsSP2Triangles(2, 8, 3, 0, 4, 0, 9, 0),
    gsSP2Triangles(2, 10, 11, 0, 12, 2, 4, 0),
    gsSP1Triangle(13, 1, 3, 0),
    gsSPEndDisplayList(),
};

u64 gWindmillManClothesTLUT[] = {
#include "assets/objects/object_fu/clothes_tlut.rgba16.inc.c"
};

u64 gWindmillManSkinTLUT[] = {
#include "assets/objects/object_fu/skin_tlut.rgba16.inc.c"
};

u64 gWindmillManPantsTex[] = {
#include "assets/objects/object_fu/pants.ci8.inc.c"
};

u64 gWindmillManHeadSkinTex[] = {
#include "assets/objects/object_fu/head_skin.ci8.inc.c"
};

u64 gWindmillManMusicBoxTex[] = {
#include "assets/objects/object_fu/music_box.ci8.inc.c"
};

u64 gWindmillManFingersAndToesTex[] = {
#include "assets/objects/object_fu/fingers_and_toes.ci8.inc.c"
};

u64 gWindmillManEarTex[] = {
#include "assets/objects/object_fu/ear.ci8.inc.c"
};

u64 gWindmillManUpperHornAndCrankTex[] = {
#include "assets/objects/object_fu/upper_horn_and_crank.ci8.inc.c"
};

u64 gWindmillManShirtTex[] = {
#include "assets/objects/object_fu/shirt.ci8.inc.c"
};

u64 gWindmillManHornAndPipeTex[] = {
#include "assets/objects/object_fu/horn_and_pipe.ci8.inc.c"
};

u64 gWindmillManEyeClosedTex[] = {
#include "assets/objects/object_fu/eye_closed.ci8.inc.c"
};

u64 gWindmillManEyeAngryTex[] = {
#include "assets/objects/object_fu/eye_angry.ci8.inc.c"
};

u64 gWindmillManMouthOpenTex[] = {
#include "assets/objects/object_fu/mouth_open.ci8.inc.c"
};

u64 gWindmillManMouthAngryTex[] = {
#include "assets/objects/object_fu/mouth_angry.ci8.inc.c"
};

u64 gWindmillManHairTex[] = {
#include "assets/objects/object_fu/hair.ci8.inc.c"
};

StandardLimb gWindmillManTorsoLimb = { 
    { 0, 2900, 50 }, 0x01, LIMB_DONE,
    gWindmillManTorsoDL
};

StandardLimb gWindmillManLeftThighLimb = { 
    { 250, 50, 350 }, 0x02, 0x04,
    gWindmillManLeftThighDL
};

StandardLimb gWindmillManLeftLegLimb = { 
    { 1200, 0, 0 }, 0x03, LIMB_DONE,
    gWindmillManLeftLegDL
};

StandardLimb gWindmillManLeftFootLimb = { 
    { 1500, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWindmillManLeftFootDL
};

StandardLimb gWindmillManRightThighLimb = { 
    { 250, 50, -350 }, 0x05, 0x07,
    gWindmillManRightThighDL
};

StandardLimb gWindmillManRightLegLimb = { 
    { 1200, 0, 0 }, 0x06, LIMB_DONE,
    gWindmillManRightLegDL
};

StandardLimb gWindmillManRightFootLimb = { 
    { 1500, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWindmillManRightFootDL
};

StandardLimb gWindmillManChestAndMusicBoxPipeLimb = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    gWindmillManChestAndMusicBoxPipeDL
};

StandardLimb gWindmillManLeftArmAndMusicBoxLimb = { 
    { 450, 500, 0 }, 0x09, 0x0A,
    gWindmillManLeftArmAndMusicBoxDL
};

StandardLimb gWindmillManLimb_006C0C = { 
    { 600, 300, -1000 }, LIMB_DONE, LIMB_DONE,
    gWindmillManBlueTriangleDL
};

StandardLimb gWindmillManRightShoulderLimb = { 
    { 1450, 200, -750 }, 0x0B, 0x0D,
    gWindmillManRightShoulderDL
};

StandardLimb gWindmillManRightArmLimb = { 
    { 1050, 0, 0 }, 0x0C, LIMB_DONE,
    gWindmillManRightArmDL
};

StandardLimb gWindmillManRightHandAndCrankLimb = { 
    { 751, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWindmillManRightHandAndCrankDL
};

StandardLimb gWindmillManHeadLimb = { 
    { 1850, 450, 0 }, LIMB_DONE, 0x0E,
    gWindmillManHeadDL
};

StandardLimb gWindmillManHornLimb = { 
    { 1750, -700, 0 }, LIMB_DONE, LIMB_DONE,
    gWindmillManHornDL
};

void* gWindmillManSkelLimbs[] = {
    &gWindmillManTorsoLimb,
    &gWindmillManLeftThighLimb,
    &gWindmillManLeftLegLimb,
    &gWindmillManLeftFootLimb,
    &gWindmillManRightThighLimb,
    &gWindmillManRightLegLimb,
    &gWindmillManRightFootLimb,
    &gWindmillManChestAndMusicBoxPipeLimb,
    &gWindmillManLeftArmAndMusicBoxLimb,
    &gWindmillManLimb_006C0C,
    &gWindmillManRightShoulderLimb,
    &gWindmillManRightArmLimb,
    &gWindmillManRightHandAndCrankLimb,
    &gWindmillManHeadLimb,
    &gWindmillManHornLimb,
};

FlexSkeletonHeader gWindmillManSkel = { 
    { gWindmillManSkelLimbs, ARRAY_COUNT(gWindmillManSkelLimbs) }, 15
};

