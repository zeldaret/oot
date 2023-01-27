#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_human.h"

u64 gHumanEyeLookForwardOpenTex[] = {
#include "assets/objects/object_human/eye_look_forward_open.ci8.inc.c"
};

u64 gHumanEyeLookForwardHalfTex[] = {
#include "assets/objects/object_human/eye_look_forward_half.ci8.inc.c"
};

u64 gHumanEyeLookForwardClosedTex[] = {
#include "assets/objects/object_human/eye_look_forward_closed.ci8.inc.c"
};

u64 gHumanEyeLookRightOpenTex[] = {
#include "assets/objects/object_human/eye_look_right_open.ci8.inc.c"
};

u64 gHumanEyeLookRightHalfTex[] = {
#include "assets/objects/object_human/eye_look_right_half.ci8.inc.c"
};

u64 gHumanEyeLookLeftOpenTex[] = {
#include "assets/objects/object_human/eye_look_left_open.ci8.inc.c"
};

u64 gHumanEyeLookLeftHalfTex[] = {
#include "assets/objects/object_human/eye_look_left_half.ci8.inc.c"
};

u64 gHumanEyeLookUpOpenTex[] = {
#include "assets/objects/object_human/eye_look_up_open.ci8.inc.c"
};

u64 gHumanEyeLookDownOpenTex[] = {
#include "assets/objects/object_human/eye_look_down_open.ci8.inc.c"
};

u64 gHumanEyebrowNormalTex[] = {
#include "assets/objects/object_human/eyebrow_normal.ci8.inc.c"
};

u64 gHumanEyebrowSurprisedTex[] = {
#include "assets/objects/object_human/eyebrow_surprised.ci8.inc.c"
};

u64 gHumanEyebrowSadTex[] = {
#include "assets/objects/object_human/eyebrow_sad.ci8.inc.c"
};

u64 gHumanEyeLookForwardOpen2Tex[] = {
#include "assets/objects/object_human/eye_look_forward_open_2.ci8.inc.c"
};

u64 gHumanEyeLookForwardHalf2Tex[] = {
#include "assets/objects/object_human/eye_look_forward_half_2.ci8.inc.c"
};

u64 gHumanEyeLookForwardClosed2Tex[] = {
#include "assets/objects/object_human/eye_look_forward_closed_2.ci8.inc.c"
};

u64 gHumanEyeLookLeftOpen2Tex[] = {
#include "assets/objects/object_human/eye_look_left_open_2.ci8.inc.c"
};

u64 gHumanEyeLookLeftHalf2Tex[] = {
#include "assets/objects/object_human/eye_look_left_half_2.ci8.inc.c"
};

u64 gHumanEyeLookRightOpen2Tex[] = {
#include "assets/objects/object_human/eye_look_right_open_2.ci8.inc.c"
};

u64 gHumanEyeLookRightHalf2Tex[] = {
#include "assets/objects/object_human/eye_look_right_half_2.ci8.inc.c"
};

u64 gHumanEyeLookUpOpen2Tex[] = {
#include "assets/objects/object_human/eye_look_up_open_2.ci8.inc.c"
};

u64 gHumanEyeLookDownOpen2Tex[] = {
#include "assets/objects/object_human/eye_look_down_open_2.ci8.inc.c"
};

u64 gHumanEyebrowNormal2Tex[] = {
#include "assets/objects/object_human/eyebrow_normal_2.ci8.inc.c"
};

u64 gHumanEyebrowSurprised2Tex[] = {
#include "assets/objects/object_human/eyebrow_surprised_2.ci8.inc.c"
};

u64 gHumanEyebrowSad2Tex[] = {
#include "assets/objects/object_human/eyebrow_sad_2.ci8.inc.c"
};

u64 object_human_Tex_005400[] = {
#include "assets/objects/object_human/object_human_Tex_005400.ci8.inc.c"
};

u64 object_human_Tex_005500[] = {
#include "assets/objects/object_human/object_human_Tex_005500.ci8.inc.c"
};

u64 gHumanMouthClosed1Tex[] = {
#include "assets/objects/object_human/mouth_closed_1.ci8.inc.c"
};

u64 gHumanMouthOpen1Tex[] = {
#include "assets/objects/object_human/mouth_open_1.ci8.inc.c"
};

u64 gHumanMouthOpen2Tex[] = {
#include "assets/objects/object_human/mouth_open_2.ci8.inc.c"
};

u64 gHumanMouthClosed2Tex[] = {
#include "assets/objects/object_human/mouth_closed_2.ci8.inc.c"
};

u64 gHumanMouthOpen3Tex[] = {
#include "assets/objects/object_human/mouth_open_3.ci8.inc.c"
};

u64 gHumanMouthOpen4Tex[] = {
#include "assets/objects/object_human/mouth_open_4.ci8.inc.c"
};

u64 gHumanMouthClosed3Tex[] = {
#include "assets/objects/object_human/mouth_closed_3.ci8.inc.c"
};

u64 gHumanMouthOpen5Tex[] = {
#include "assets/objects/object_human/mouth_open_5.ci8.inc.c"
};

u64 gHumanMouthOpen6Tex[] = {
#include "assets/objects/object_human/mouth_open_6.ci8.inc.c"
};

u64 gHumanTLUT[] = {
#include "assets/objects/object_human/face_tlut.rgba16.inc.c"
};

s16 gHumanLookingBackAnimFrameData[] = {
    0x0000, 0x0D7B, 0x0D7A, 0x0D79, 0x0D78, 0x0D76, 0x0D74, 0x0D72, 
    0x0D6F, 0x0D6B, 0x0D68, 0x0D64, 0x0D60, 0x0D5C, 0x0D58, 0x0D54, 
    0x0D4F, 0x0D4B, 0x0D47, 0x0D43, 0x0D3F, 0x0D3B, 0x0D37, 0x0D33, 
    0x0D30, 0x0D2D, 0x0D2B, 0x0D29, 0x0D27, 0x0D25, 0x0D25, 0x0D24, 
    0x0D25, 0x0D25, 0x0D27, 0x0D29, 0x0D2B, 0x0D2D, 0x0D30, 0x0D34, 
    0x0D37, 0x0D3B, 0x0D3F, 0x0D43, 0x0D47, 0x0D4B, 0x0D50, 0x0D54, 
    0x0D58, 0x0D5D, 0x0D61, 0x0D65, 0x0D68, 0x0D6C, 0x0D6F, 0x0D72, 
    0x0D74, 0x0D77, 0x0D78, 0x0D7A, 0x0D7A, 0x0028, 0xC3DC, 0xEE3A, 
    0xFFE7, 0x11C6, 0xFFE7, 0xB569, 0xB566, 0xB55C, 0xB54C, 0xB537, 
    0xB51C, 0xB4FD, 0xB4D9, 0xB4B2, 0xB488, 0xB45B, 0xB42B, 0xB3FA, 
    0xB3C7, 0xB394, 0xB360, 0xB32C, 0xB2F8, 0xB2C5, 0xB294, 0xB265, 
    0xB237, 0xB20D, 0xB1E6, 0xB1C3, 0xB1A3, 0xB189, 0xB173, 0xB163, 
    0xB15A, 0xB156, 0xB15A, 0xB163, 0xB173, 0xB189, 0xB1A3, 0xB1C3, 
    0xB1E6, 0xB20D, 0xB237, 0xB265, 0xB294, 0xB2C5, 0xB2F8, 0xB32C, 
    0xB360, 0xB394, 0xB3C7, 0xB3FA, 0xB42B, 0xB45B, 0xB488, 0xB4B2, 
    0xB4D9, 0xB4FD, 0xB51C, 0xB537, 0xB54C, 0xB55C, 0xB566, 0xC001, 
    0xBFF9, 0xBFE2, 0xBFBE, 0xBF8C, 0xBF4F, 0xBF08, 0xBEB6, 0xBE5C, 
    0xBDFB, 0xBD93, 0xBD26, 0xBCB5, 0xBC40, 0xBBC9, 0xBB52, 0xBADA, 
    0xBA63, 0xB9EE, 0xB97D, 0xB910, 0xB8A8, 0xB847, 0xB7ED, 0xB79C, 
    0xB754, 0xB717, 0xB6E5, 0xB6C1, 0xB6AA, 0xB6A2, 0xB6AA, 0xB6C1, 
    0xB6E6, 0xB718, 0xB756, 0xB79E, 0xB7F0, 0xB84B, 0xB8AD, 0xB916, 
    0xB984, 0xB9F6, 0xBA6B, 0xBAE3, 0xBB5B, 0xBBD3, 0xBC4A, 0xBCBF, 
    0xBD31, 0xBD9E, 0xBE06, 0xBE67, 0xBEC0, 0xBF11, 0xBF58, 0xBF94, 
    0xBFC4, 0xBFE7, 0xBFFB, 0xC001, 0x8001, 0x8001, 0xFE4A, 0xFE4A, 
    0x1468, 0x1471, 0x148C, 0x14B6, 0x14EE, 0x1533, 0x1582, 0x15DC, 
    0x163C, 0x16A4, 0x170F, 0x177F, 0x17F1, 0x1863, 0x18D6, 0x1948, 
    0x19B8, 0x1A25, 0x1A8F, 0x1AF4, 0x1B54, 0x1BAE, 0x1C02, 0x1C4E, 
    0x1C93, 0x1CCF, 0x1D01, 0x1D2A, 0x1D48, 0x1D5A, 0x1D61, 0x1D5A, 
    0x1D48, 0x1D29, 0x1D00, 0x1CCD, 0x1C91, 0x1C4C, 0x1BFE, 0x1BAA, 
    0x1B4F, 0x1AEE, 0x1A88, 0x1A1E, 0x19B0, 0x193F, 0x18CD, 0x1859, 
    0x17E6, 0x1774, 0x1704, 0x1698, 0x1631, 0x15D0, 0x1578, 0x1529, 
    0x14E5, 0x14AF, 0x1487, 0x146F, 0x003A, 0x013A, 0x0266, 0x038C, 
    0x04AB, 0x05C3, 0x06D4, 0x07DD, 0x08DE, 0x09D8, 0x0AC9, 0x0BB1, 
    0x0C92, 0x0D69, 0x0E37, 0x0EFC, 0x0FB8, 0x106A, 0x1111, 0x11AE, 
    0x1241, 0x12C8, 0x1343, 0x13B3, 0x1416, 0x146B, 0x14B3, 0x14EC, 
    0x1517, 0x1531, 0x1539, 0x1530, 0x1516, 0x14EC, 0x14B2, 0x1469, 
    0x1413, 0x13AF, 0x133E, 0x12C2, 0x1239, 0x11A6, 0x1107, 0x105E, 
    0x0FAB, 0x0EED, 0x0E26, 0x0D56, 0x0C7D, 0x0B9B, 0x0AB0, 0x09BD, 
    0x08C1, 0x07BE, 0x06B2, 0x059F, 0x0485, 0x0363, 0x023A, 0x010C, 
    0xBF7C, 0xBF7D, 0x0095, 0x0095, 0x0096, 0x0097, 0x0099, 0x009B, 
    0x009D, 0x00A0, 0x00A3, 0x00A6, 0x00A9, 0x00AD, 0x00B0, 0x00B3, 
    0x00B7, 0x00BA, 0x00BE, 0x00C1, 0x00C5, 0x00C8, 0x00CB, 0x00CE, 
    0x00D0, 0x00D3, 0x00D5, 0x00D7, 0x00D8, 0x00D9, 0x00DA, 0x00DB, 
    0x00DB, 0x00DB, 0x00DA, 0x00D9, 0x00D8, 0x00D7, 0x00D5, 0x00D2, 
    0x00D0, 0x00CD, 0x00CB, 0x00C8, 0x00C4, 0x00C1, 0x00BE, 0x00BA, 
    0x00B7, 0x00B3, 0x00B0, 0x00AC, 0x00A9, 0x00A6, 0x00A2, 0x00A0, 
    0x009D, 0x009B, 0x0098, 0x0097, 0x0096, 0x0095, 0xFDF9, 0xFDF9, 
    0xFDF9, 0xFDF9, 0xFDF9, 0xFDF9, 0xFDF9, 0xFDF9, 0xFDFA, 0xFDFA, 
    0xFDFA, 0xFDFA, 0xFDFA, 0xFDFB, 0xFDFB, 0xFDFB, 0xFDFB, 0xFDFC, 
    0xFDFC, 0xFDFC, 0xFDFC, 0xFDFD, 0xFDFD, 0xFDFD, 0xFDFD, 0xFDFD, 
    0xFDFD, 0xFDFE, 0xFDFE, 0xFDFE, 0xFDFE, 0xFDFE, 0xFDFE, 0xFDFE, 
    0xFDFD, 0xFDFD, 0xFDFD, 0xFDFD, 0xFDFD, 0xFDFD, 0xFDFC, 0xFDFC, 
    0xFDFC, 0xFDFC, 0xFDFB, 0xFDFB, 0xFDFB, 0xFDFB, 0xFDFA, 0xFDFA, 
    0xFDFA, 0xFDFA, 0xFDF9, 0xFDF9, 0xFDF9, 0xFDF9, 0xFDF9, 0xFDF9, 
    0xFDF9, 0xFDF9, 0xBC31, 0xBC2C, 0xBC1E, 0xBC07, 0xBBE9, 0xBBC4, 
    0xBB99, 0xBB6A, 0xBB36, 0xBAFF, 0xBAC5, 0xBA89, 0xBA4D, 0xBA0F, 
    0xB9D2, 0xB996, 0xB95A, 0xB920, 0xB8E8, 0xB8B2, 0xB87F, 0xB84F, 
    0xB823, 0xB7FA, 0xB7D6, 0xB7B6, 0xB79C, 0xB786, 0xB776, 0xB76C, 
    0xB769, 0xB76C, 0xB776, 0xB786, 0xB79C, 0xB7B7, 0xB7D7, 0xB7FC, 
    0xB825, 0xB851, 0xB882, 0xB8B5, 0xB8EB, 0xB924, 0xB95E, 0xB99A, 
    0xB9D7, 0xBA15, 0xBA52, 0xBA8F, 0xBACB, 0xBB05, 0xBB3C, 0xBB70, 
    0xBB9F, 0xBBC9, 0xBBEE, 0xBC0B, 0xBC21, 0xBC2D, 0xBFE0, 0xBF52, 
    0xBEAB, 0xBE07, 0xBD68, 0xBCCC, 0xBC34, 0xBBA0, 0xBB11, 0xBA86, 
    0xBA00, 0xB97E, 0xB901, 0xB889, 0xB815, 0xB7A7, 0xB73F, 0xB6DB, 
    0xB67E, 0xB626, 0xB5D4, 0xB588, 0xB543, 0xB505, 0xB4CE, 0xB49E, 
    0xB475, 0xB455, 0xB43E, 0xB42F, 0xB42A, 0xB42F, 0xB43E, 0xB456, 
    0xB476, 0xB49F, 0xB4CF, 0xB507, 0xB546, 0xB58C, 0xB5D8, 0xB62B, 
    0xB683, 0xB6E2, 0xB746, 0xB7B0, 0xB81F, 0xB893, 0xB90C, 0xB98A, 
    0xBA0D, 0xBA95, 0xBB21, 0xBBB2, 0xBC47, 0xBCE0, 0xBD7D, 0xBE1E, 
    0xBEC4, 0xBF6B, 0xF843, 0xC001, 0x1FFF, 0x3FFF, 0x1FFF, 0x07BD, 
    0xC001, 0x3FFF, 0xE38F, 0x3FFF, 0x3FFE, 0x3FFA, 0x3FF5, 0x3FED, 
    0x3FE4, 0x3FD9, 0x3FCD, 0x3FBF, 0x3FB0, 0x3FA1, 0x3F90, 0x3F7F, 
    0x3F6D, 0x3F5B, 0x3F49, 0x3F37, 0x3F25, 0x3F13, 0x3F02, 0x3EF1, 
    0x3EE2, 0x3ED3, 0x3EC5, 0x3EB9, 0x3EAE, 0x3EA5, 0x3E9D, 0x3E98, 
    0x3E94, 0x3E93, 0x3E94, 0x3E98, 0x3E9D, 0x3EA5, 0x3EAE, 0x3EB9, 
    0x3EC5, 0x3ED3, 0x3EE2, 0x3EF1, 0x3F02, 0x3F13, 0x3F25, 0x3F37, 
    0x3F49, 0x3F5B, 0x3F6D, 0x3F7F, 0x3F90, 0x3FA1, 0x3FB0, 0x3FBF, 
    0x3FCD, 0x3FD9, 0x3FE4, 0x3FED, 0x3FF5, 0x3FFA, 0x3FFE, 0xFC72, 
    0x3FFF, 0x4000, 0x4004, 0x4009, 0x4011, 0x401A, 0x4025, 0x4031, 
    0x403F, 0x404E, 0x405D, 0x406E, 0x407F, 0x4091, 0x40A3, 0x40B5, 
    0x40C7, 0x40D9, 0x40EB, 0x40FC, 0x410D, 0x411C, 0x412B, 0x4139, 
    0x4145, 0x4150, 0x4159, 0x4161, 0x4166, 0x416A, 0x416B, 0x416A, 
    0x4166, 0x4161, 0x4159, 0x4150, 0x4145, 0x4139, 0x412B, 0x411C, 
    0x410D, 0x40FC, 0x40EB, 0x40D9, 0x40C7, 0x40B5, 0x40A3, 0x4091, 
    0x407F, 0x406E, 0x405D, 0x404E, 0x403F, 0x4031, 0x4025, 0x401A, 
    0x4011, 0x4009, 0x4004, 0x4000, 0x71C6, 0x58E2, 
};

JointKey gHumanLookingBackAnimJointKey[] = {
    {      1,      0,     60,      1,      1,     61 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,     62 },
    {      1,      0,      1,     63,      1,     64 },
    {      1,      0,      1,     65,      1,     66 },
    {      1,      0,      1,      0,     60,     67 },
    {      1,      0,      1,      0,     60,    127 },
    {      1,      0,      1,      0,      1,    187 },
    {      1,    188,      1,    189,      1,      0 },
    {      1,      0,      1,      0,      1,    190 },
    {      1,      0,      1,      0,      1,    191 },
    {      1,      0,      1,      0,     60,    192 },
    {      1,      0,      1,      0,     60,    252 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,    312 },
    {      1,      0,      1,      0,      1,    313 },
    {     60,    314,     60,    374,     60,    434 },
    {      1,      0,      1,      0,     60,    494 },
    {      1,    554,      1,      0,      1,    555 },
    {      1,    556,      1,    557,      1,    558 },
    {      1,    559,      1,      0,      1,    560 },
    {      1,      0,      1,    561,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,    562,     60,    563 },
    {      1,      0,      1,    623,     60,    624 },
    {      1,      0,      1,    684,      1,      0 },
    {      1,      0,      1,    685,      1,      0 },
};

LegacyAnimationHeader gHumanLookingBackAnim = { 
    60, 41,
    gHumanLookingBackAnimFrameData,
    gHumanLookingBackAnimJointKey
};

s16 gHumanLookingBackStartsAnimFrameData[] = {
    0x0000, 0x0D7B, 0x0028, 0x0000, 0x0050, 0x0121, 0x023E, 0x0375, 
    0x0492, 0x0563, 0x05B4, 0x0563, 0x0492, 0x0375, 0x023E, 0x0121, 
    0x0050, 0x0000, 0x0000, 0xFFC1, 0xFF1D, 0xFE3D, 0xFD49, 0xFC69, 
    0xFBC5, 0xFB85, 0xFBC5, 0xFC69, 0xFD49, 0xFE3D, 0xFF1D, 0xFFC1, 
    0x0000, 0xF0ED, 0xF0ED, 0xF0ED, 0xF0ED, 0xF0ED, 0xF0ED, 0xF0ED, 
    0xF0ED, 0xF1C3, 0xF3EA, 0xF6DC, 0xFA12, 0xFD03, 0xFF2B, 0x0000, 
    0xC3DC, 0xC484, 0xC634, 0xC882, 0xCB06, 0xCD55, 0xCF05, 0xCFAD, 
    0xCF05, 0xCD55, 0xCB06, 0xC882, 0xC634, 0xC484, 0xC3DC, 0xEE3A, 
    0xFFE7, 0x11C6, 0xFFE7, 0xC001, 0xBF22, 0xBD07, 0xBA73, 0xB82A, 
    0xB6EF, 0xB68C, 0xB646, 0xB612, 0xB5E8, 0xB5BF, 0xB599, 0xB57F, 
    0xB56E, 0xB569, 0xC001, 0xC001, 0x8001, 0x8001, 0xFE4A, 0xFDE5, 
    0xFCE1, 0xFB7D, 0xF9FA, 0xF896, 0xF792, 0xF72E, 0xF792, 0xF896, 
    0xF9FA, 0xFB7D, 0xFCE1, 0xFDE5, 0xFE4A, 0xFE4A, 0xFDE5, 0xFCE1, 
    0xFB7E, 0xF9FA, 0xF896, 0xF792, 0xF72E, 0xF792, 0xF896, 0xF9FA, 
    0xFB7E, 0xFCE1, 0xFDE5, 0xFE4A, 0x003A, 0x07DF, 0x0E89, 0x13D0, 
    0x1782, 0x195D, 0x197A, 0x187A, 0x16D5, 0x152D, 0x1468, 0x1468, 
    0x1468, 0x1468, 0x1468, 0x003A, 0xBF7C, 0xBFE8, 0xC0FF, 0xC27D, 
    0xC41D, 0xC59A, 0xC6B1, 0xC71D, 0xC6B1, 0xC59A, 0xC41D, 0xC27D, 
    0xC0FF, 0xBFE8, 0xBF7C, 0xBF7D, 0xBF20, 0xBE2F, 0xBCE5, 0xBB7D, 
    0xBA33, 0xB942, 0xB8E5, 0xB942, 0xBA33, 0xBB7D, 0xBCE5, 0xBE2F, 
    0xBF20, 0xBF7D, 0x0000, 0x0002, 0x000D, 0x0024, 0x0042, 0x005D, 
    0x0074, 0x0087, 0x0092, 0x0095, 0x0095, 0x0095, 0x0095, 0x0095, 
    0x0095, 0x0000, 0xFFEE, 0xFFBE, 0xFF7D, 0xFF3A, 0xFEFE, 0xFEC2, 
    0xFE7D, 0xFE3C, 0xFE0C, 0xFDF9, 0xFDF9, 0xFDF9, 0xFDF9, 0xFDF9, 
    0xBFE0, 0xBBE2, 0xB8DB, 0xB6D9, 0xB5CE, 0xB5AD, 0xB681, 0xB810, 
    0xB9E8, 0xBB80, 0xBC31, 0xBC31, 0xBC31, 0xBC31, 0xBC31, 0xBFE0, 
    0xF843, 0xC001, 0x1FFF, 0x3FFF, 0x1FFF, 0x07BD, 0xC001, 0x3FFF, 
    0x0000, 0xFF35, 0xFD0B, 0xF9DC, 0xF5FD, 0xF1C8, 0xED92, 0xE9B4, 
    0xE684, 0xE45B, 0xE38F, 0xE38F, 0xE38F, 0xE38F, 0xE38F, 0x3FFF, 
    0x0000, 0xFFE7, 0xFFA2, 0xFF3C, 0xFEC0, 0xFE39, 0xFDB3, 0xFD37, 
    0xFCD1, 0xFC8C, 0xFC72, 0xFC72, 0xFC72, 0xFC72, 0xFC72, 0x3FFF, 
    0x3FFF, 0x4164, 0x452C, 0x4ABF, 0x5184, 0x58E2, 0x6040, 0x6705, 
    0x6C98, 0x7061, 0x71C6, 0x71C6, 0x71C6, 0x71C6, 0x71C6, 0x3FFF, 
    0x40B1, 0x4296, 0x455F, 0x48C2, 0x4C71, 0x5020, 0x5382, 0x564C, 
    0x5830, 0x58E2, 0x58E2, 0x58E2, 0x58E2, 0x58E2, 
};

JointKey gHumanLookingBackStartsAnimJointKey[] = {
    {      1,      0,      1,      1,      1,      2 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     15,      3,     15,     18 },
    {      1,      0,     15,     33,     15,     48 },
    {      1,      0,      1,     63,      1,     64 },
    {      1,      0,      1,     65,      1,     66 },
    {      1,      0,      1,      0,     15,     67 },
    {      1,      0,      1,      0,      1,     82 },
    {      1,      0,      1,      0,      1,     83 },
    {      1,     84,      1,     85,      1,      0 },
    {      1,      0,      1,      0,     15,     86 },
    {      1,      0,      1,      0,     15,    101 },
    {      1,      0,      1,      0,     15,    116 },
    {      1,      0,      1,      0,      1,    131 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,     15,    132 },
    {      1,      0,      1,      0,     15,    147 },
    {     15,    162,     15,    177,     15,    192 },
    {      1,      0,      1,      0,      1,    207 },
    {      1,    208,      1,      0,      1,    209 },
    {      1,    210,      1,    211,      1,    212 },
    {      1,    213,      1,      0,      1,    214 },
    {      1,      0,      1,    215,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     15,    216,      1,    231 },
    {      1,      0,     15,    232,      1,    247 },
    {      1,      0,     15,    248,      1,      0 },
    {      1,      0,     15,    263,      1,      0 },
};

LegacyAnimationHeader gHumanLookingBackStartsAnim = { 
    15, 41,
    gHumanLookingBackStartsAnimFrameData,
    gHumanLookingBackStartsAnimJointKey
};

s16 gHumanTiltHeadAnimFrameData[] = {
    0x0000, 0x0D7B, 0x0D78, 0x0D71, 0x0D67, 0x0D5B, 0x0D4E, 0x0D40, 
    0x0D34, 0x0D2A, 0x0D23, 0x0D21, 0x0D21, 0x0D23, 0x0D26, 0x0D2A, 
    0x0D2F, 0x0D34, 0x0D3A, 0x0D40, 0x0D47, 0x0D4E, 0x0D54, 0x0D5B, 
    0x0D61, 0x0D67, 0x0D6C, 0x0D71, 0x0D75, 0x0D78, 0x0D7A, 0x0D7B, 
    0x0028, 0x0000, 0xFFC3, 0xFF1D, 0xFE27, 0xFCFE, 0xFBB9, 0xFA75, 
    0xF94B, 0xF856, 0xF7B0, 0xF772, 0xF782, 0xF7B0, 0xF7F7, 0xF856, 
    0xF8C8, 0xF94B, 0xF9DB, 0xFA75, 0xFB16, 0xFBB9, 0xFC5D, 0xFCFE, 
    0xFD97, 0xFE27, 0xFEAA, 0xFF1D, 0xFF7B, 0xFFC3, 0xFFF1, 0x0000, 
    0xC3DC, 0xEE3A, 0xFFE7, 0x11C6, 0xFFE7, 0xC001, 0xBFE2, 0xBF8C, 
    0xBF08, 0xBE5C, 0xBD93, 0xBCB5, 0xBBC9, 0xBADA, 0xB9EE, 0xB910, 
    0xB847, 0xB79C, 0xB717, 0xB6C1, 0xB6A2, 0xB6C1, 0xB717, 0xB79C, 
    0xB847, 0xB910, 0xB9EE, 0xBADA, 0xBBC9, 0xBCB5, 0xBD93, 0xBE5C, 
    0xBF08, 0xBF8C, 0xBFE2, 0xC001, 0xC001, 0xBFE2, 0xBF8C, 0xBF08, 
    0xBE5C, 0xBD93, 0xBCB5, 0xBBC9, 0xBADA, 0xB9EE, 0xB910, 0xB847, 
    0xB79C, 0xB717, 0xB6C1, 0xB6A2, 0xB6C1, 0xB717, 0xB79C, 0xB847, 
    0xB910, 0xB9EE, 0xBADA, 0xBBC9, 0xBCB5, 0xBD93, 0xBE5C, 0xBF08, 
    0xBF8C, 0xBFE2, 0xC001, 0xC001, 0x8001, 0x8001, 0xFE4A, 0xFE4A, 
    0x003A, 0x03A0, 0x06FB, 0x0A0F, 0x0CD8, 0x0F51, 0x1172, 0x1332, 
    0x1487, 0x1563, 0x15B1, 0x159D, 0x1563, 0x1505, 0x1487, 0x13EB, 
    0x1332, 0x125E, 0x1172, 0x106D, 0x0F51, 0x0E1F, 0x0CD8, 0x0B7D, 
    0x0A0F, 0x088E, 0x06FB, 0x0556, 0x03A0, 0x01DB, 0x003A, 0x0000, 
    0x03A0, 0x06FA, 0x0A0F, 0x0CD8, 0x0F51, 0x1171, 0x1332, 0x1487, 
    0x1563, 0x15B1, 0x159D, 0x1563, 0x1505, 0x1487, 0x13EB, 0x1332, 
    0x125E, 0x1171, 0x106D, 0x0F51, 0x0E1F, 0x0CD8, 0x0B7D, 0x0A0F, 
    0x088E, 0x06FA, 0x0556, 0x03A0, 0x01DA, 0x003A, 0x0000, 0xFFF6, 
    0xFFDB, 0xFFB2, 0xFF80, 0xFF4A, 0xFF15, 0xFEE3, 0xFEBA, 0xFE9F, 
    0xFE94, 0xFE97, 0xFE9F, 0xFEAB, 0xFEBA, 0xFECD, 0xFEE3, 0xFEFB, 
    0xFF15, 0xFF2F, 0xFF4A, 0xFF66, 0xFF80, 0xFF9A, 0xFFB2, 0xFFC8, 
    0xFFDB, 0xFFEA, 0xFFF6, 0xFFFE, 0x0000, 0xBF7C, 0x0000, 0xFFF6, 
    0xFFDB, 0xFFB2, 0xFF80, 0xFF4A, 0xFF15, 0xFEE3, 0xFEBA, 0xFE9F, 
    0xFE94, 0xFE97, 0xFE9F, 0xFEAB, 0xFEBA, 0xFECD, 0xFEE3, 0xFEFB, 
    0xFF15, 0xFF2F, 0xFF4A, 0xFF66, 0xFF80, 0xFF9A, 0xFFB2, 0xFFC8, 
    0xFFDB, 0xFFEA, 0xFFF6, 0xFFFE, 0x0000, 0xBF7D, 0xBFE0, 0xBDFC, 
    0xBC1E, 0xBA67, 0xB8D9, 0xB778, 0xB648, 0xB54D, 0xB48E, 0xB413, 
    0xB3E7, 0xB3F2, 0xB413, 0xB447, 0xB48E, 0xB4E6, 0xB54D, 0xB5C3, 
    0xB648, 0xB6DA, 0xB778, 0xB823, 0xB8D9, 0xB99B, 0xBA67, 0xBB3E, 
    0xBC1E, 0xBD09, 0xBDFC, 0xBEF9, 0xBFE0, 0xC001, 0xBDFC, 0xBC1E, 
    0xBA67, 0xB8D9, 0xB778, 0xB648, 0xB54D, 0xB48E, 0xB413, 0xB3E7, 
    0xB3F2, 0xB413, 0xB447, 0xB48E, 0xB4E6, 0xB54D, 0xB5C3, 0xB648, 
    0xB6DA, 0xB778, 0xB823, 0xB8D9, 0xB99B, 0xBA67, 0xBB3E, 0xBC1E, 
    0xBD09, 0xBDFC, 0xBEF9, 0xBFE0, 0xF843, 0xC001, 0x1FFF, 0x3FFF, 
    0x1FFF, 0x07BD, 0xC001, 0x3FFF, 0x0000, 0xFFB4, 0xFEE5, 0xFDB3, 
    0xFC3F, 0xFAAB, 0xF917, 0xF7A4, 0xF672, 0xF5A2, 0xF556, 0xF56A, 
    0xF5A2, 0xF5FC, 0xF672, 0xF701, 0xF7A4, 0xF857, 0xF917, 0xF9DF, 
    0xFAAB, 0xFB77, 0xFC3F, 0xFCFF, 0xFDB3, 0xFE56, 0xFEE5, 0xFF5B, 
    0xFFB4, 0xFFED, 0x0000, 0x3FFF, 0x4018, 0x405E, 0x40C4, 0x413F, 
    0x41C6, 0x424D, 0x42C9, 0x432F, 0x4374, 0x438D, 0x4387, 0x4374, 
    0x4356, 0x432F, 0x42FF, 0x42C9, 0x428D, 0x424D, 0x420A, 0x41C6, 
    0x4182, 0x413F, 0x40FF, 0x40C4, 0x408D, 0x405E, 0x4036, 0x4018, 
    0x4006, 0x3FFF, 0x0000, 0xFFF4, 0xFFD1, 0xFF9E, 0xFF60, 0xFF1D, 
    0xFEDA, 0xFE9C, 0xFE69, 0xFE46, 0xFE39, 0xFE3D, 0xFE46, 0xFE55, 
    0xFE69, 0xFE81, 0xFE9C, 0xFEBA, 0xFEDA, 0xFEFB, 0xFF1D, 0xFF3F, 
    0xFF60, 0xFF80, 0xFF9E, 0xFFB9, 0xFFD1, 0xFFE5, 0xFFF4, 0xFFFD, 
    0x0000, 0x3FFF, 0x3FFF, 0x3FFF, 
};

JointKey gHumanTiltHeadAnimJointKey[] = {
    {      1,      0,     31,      1,      1,     32 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     31,     33,      1,     64 },
    {      1,      0,      1,     65,      1,     66 },
    {      1,      0,      1,     67,      1,     68 },
    {      1,      0,      1,      0,     31,     69 },
    {      1,      0,      1,      0,     31,    100 },
    {      1,      0,      1,      0,      1,    131 },
    {      1,    132,      1,    133,      1,      0 },
    {      1,      0,      1,      0,      1,    134 },
    {      1,      0,      1,      0,      1,    135 },
    {      1,      0,      1,      0,     31,    136 },
    {      1,      0,      1,      0,     31,    167 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     31,    198,      1,    229 },
    {      1,      0,     31,    230,      1,    261 },
    {      1,      0,      1,      0,     31,    262 },
    {      1,      0,      1,      0,     31,    293 },
    {      1,    324,      1,      0,      1,    325 },
    {      1,    326,      1,    327,      1,    328 },
    {      1,    329,      1,      0,      1,    330 },
    {      1,      0,      1,    331,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {     31,    332,      1,      0,     31,    363 },
    {      1,      0,     31,    394,      1,    425 },
    {      1,      0,      1,    426,      1,      0 },
    {      1,      0,      1,    427,      1,      0 },
};

LegacyAnimationHeader gHumanTiltHeadAnim = { 
    31, 41,
    gHumanTiltHeadAnimFrameData,
    gHumanTiltHeadAnimJointKey
};

u8 object_human_possiblePadding_008CEC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 gHumanLookingAroundAnimFrameData[] = {
    0x0000, 0x0D7B, 0x0D7A, 0x0D79, 0x0D78, 0x0D76, 0x0D74, 0x0D72, 
    0x0D6F, 0x0D6B, 0x0D68, 0x0D64, 0x0D60, 0x0D5C, 0x0D58, 0x0D54, 
    0x0D4F, 0x0D4B, 0x0D47, 0x0D43, 0x0D3F, 0x0D3B, 0x0D37, 0x0D33, 
    0x0D30, 0x0D2D, 0x0D2B, 0x0D29, 0x0D27, 0x0D25, 0x0D25, 0x0D24, 
    0x0D25, 0x0D25, 0x0D27, 0x0D29, 0x0D2B, 0x0D2D, 0x0D30, 0x0D33, 
    0x0D37, 0x0D3B, 0x0D3E, 0x0D43, 0x0D47, 0x0D4B, 0x0D4F, 0x0D53, 
    0x0D58, 0x0D5C, 0x0D60, 0x0D64, 0x0D68, 0x0D6B, 0x0D6E, 0x0D71, 
    0x0D74, 0x0D76, 0x0D78, 0x0D79, 0x0D7A, 0x0D7B, 0x0028, 0x0000, 
    0xFFCC, 0xFF39, 0xFE57, 0xFD36, 0xFBE4, 0xFA73, 0xF8F0, 0xF76C, 
    0xF5F7, 0xF49F, 0xF375, 0xF287, 0xF1E6, 0xF1A1, 0xF1C8, 0xF27C, 
    0xF3C3, 0xF585, 0xF7A5, 0xFA0B, 0xFC9B, 0xFF3C, 0x01D3, 0x0448, 
    0x067E, 0x085D, 0x09CA, 0x0AAA, 0x0AF5, 0x0AC2, 0x0A25, 0x0935, 
    0x0806, 0x06AF, 0x0545, 0x03DD, 0x028C, 0x0169, 0x0088, 0x0000, 
    0xFFB3, 0xFF76, 0xFF48, 0xFF26, 0xFF10, 0xFF06, 0xFF04, 0xFF0B, 
    0xFF18, 0xFF2B, 0xFF42, 0xFF5D, 0xFF79, 0xFF95, 0xFFB0, 0xFFCA, 
    0xFFE0, 0xFFF1, 0xFFFC, 0x0000, 0xC3DC, 0x0000, 0x002E, 0x00AD, 
    0x0168, 0x024B, 0x0342, 0x0439, 0x051C, 0x05D7, 0x0656, 0x0684, 
    0x0684, 0x0684, 0x0684, 0x0684, 0x0684, 0x0684, 0x0684, 0x0684, 
    0x0684, 0x0684, 0x0681, 0x0678, 0x066A, 0x0656, 0x063D, 0x061F, 
    0x05FD, 0x05D7, 0x05AD, 0x0580, 0x054F, 0x051C, 0x04E6, 0x04AE, 
    0x0474, 0x0439, 0x03FC, 0x03BF, 0x0380, 0x0342, 0x0303, 0x02C5, 
    0x0288, 0x024B, 0x0210, 0x01D6, 0x019E, 0x0168, 0x0135, 0x0104, 
    0x00D7, 0x00AD, 0x0087, 0x0065, 0x0047, 0x002E, 0x001A, 0x000C, 
    0x0003, 0x0000, 0xEE3A, 0xFFE7, 0xFF91, 0xFEA8, 0xFD50, 0xFBAF, 
    0xF9E8, 0xF822, 0xF681, 0xF529, 0xF440, 0xF3EA, 0xF3EA, 0xF3EA, 
    0xF3EA, 0xF3EA, 0xF3EA, 0xF3EA, 0xF3EA, 0xF3EA, 0xF3EA, 0xF3EA, 
    0xF3F0, 0xF400, 0xF41B, 0xF440, 0xF46E, 0xF4A4, 0xF4E3, 0xF529, 
    0xF576, 0xF5C9, 0xF622, 0xF681, 0xF6E4, 0xF74B, 0xF7B5, 0xF822, 
    0xF892, 0xF903, 0xF975, 0xF9E8, 0xFA5B, 0xFACE, 0xFB3F, 0xFBAF, 
    0xFC1C, 0xFC86, 0xFCED, 0xFD50, 0xFDAE, 0xFE07, 0xFE5B, 0xFEA8, 
    0xFEEE, 0xFF2D, 0xFF63, 0xFF91, 0xFFB6, 0xFFD1, 0xFFE1, 0xFFE7, 
    0x0000, 0xFFD2, 0xFF53, 0xFE98, 0xFDB5, 0xFCBE, 0xFBC7, 0xFAE4, 
    0xFA29, 0xF9AA, 0xF97C, 0xF97C, 0xF97C, 0xF97C, 0xF97C, 0xF97C, 
    0xF97C, 0xF97C, 0xF97C, 0xF97C, 0xF97C, 0xF97F, 0xF988, 0xF996, 
    0xF9AA, 0xF9C3, 0xF9E1, 0xFA03, 0xFA29, 0xFA53, 0xFA80, 0xFAB1, 
    0xFAE4, 0xFB1A, 0xFB52, 0xFB8C, 0xFBC7, 0xFC04, 0xFC41, 0xFC80, 
    0xFCBE, 0xFCFD, 0xFD3B, 0xFD78, 0xFDB5, 0xFDF0, 0xFE2A, 0xFE62, 
    0xFE98, 0xFECB, 0xFEFC, 0xFF29, 0xFF53, 0xFF79, 0xFF9B, 0xFFB9, 
    0xFFD2, 0xFFE6, 0xFFF4, 0xFFFD, 0x0000, 0x11C6, 0xFFE7, 0xFF91, 
    0xFEA8, 0xFD50, 0xFBAF, 0xF9E8, 0xF822, 0xF681, 0xF529, 0xF440, 
    0xF3EA, 0xF3EA, 0xF3EA, 0xF3EA, 0xF3EA, 0xF3EA, 0xF3EA, 0xF3EA, 
    0xF3EA, 0xF3EA, 0xF3EA, 0xF3F0, 0xF400, 0xF41B, 0xF440, 0xF46E, 
    0xF4A4, 0xF4E3, 0xF529, 0xF576, 0xF5C9, 0xF622, 0xF681, 0xF6E4, 
    0xF74B, 0xF7B5, 0xF822, 0xF892, 0xF903, 0xF975, 0xF9E8, 0xFA5B, 
    0xFACE, 0xFB3F, 0xFBAF, 0xFC1C, 0xFC86, 0xFCED, 0xFD50, 0xFDAE, 
    0xFE07, 0xFE5B, 0xFEA8, 0xFEEE, 0xFF2D, 0xFF63, 0xFF91, 0xFFB6, 
    0xFFD1, 0xFFE1, 0xFFE7, 0xC001, 0xBFF9, 0xBFE1, 0xBFBB, 0xBF87, 
    0xBF48, 0xBEFD, 0xBEA8, 0xBE4A, 0xBDE4, 0xBD78, 0xBD06, 0xBC90, 
    0xBC16, 0xBB9A, 0xBB1D, 0xBAA0, 0xBA25, 0xB9AB, 0xB935, 0xB8C3, 
    0xB856, 0xB7F1, 0xB793, 0xB73E, 0xB6F3, 0xB6B3, 0xB680, 0xB65A, 
    0xB642, 0xB63A, 0xB642, 0xB65A, 0xB680, 0xB6B3, 0xB6F3, 0xB73E, 
    0xB793, 0xB7F1, 0xB856, 0xB8C3, 0xB935, 0xB9AB, 0xBA25, 0xBAA0, 
    0xBB1D, 0xBB9A, 0xBC16, 0xBC90, 0xBD06, 0xBD78, 0xBDE4, 0xBE4A, 
    0xBEA8, 0xBEFD, 0xBF48, 0xBF87, 0xBFBB, 0xBFE1, 0xBFF9, 0xC001, 
    0xC001, 0xBFF9, 0xBFE1, 0xBFBB, 0xBF87, 0xBF48, 0xBEFD, 0xBEA8, 
    0xBE4A, 0xBDE4, 0xBD78, 0xBD06, 0xBC90, 0xBC16, 0xBB9A, 0xBB1D, 
    0xBAA0, 0xBA25, 0xB9AB, 0xB935, 0xB8C3, 0xB856, 0xB7F1, 0xB793, 
    0xB73E, 0xB6F3, 0xB6B3, 0xB680, 0xB65A, 0xB642, 0xB63A, 0xB642, 
    0xB65A, 0xB680, 0xB6B3, 0xB6F3, 0xB73E, 0xB793, 0xB7F1, 0xB856, 
    0xB8C3, 0xB935, 0xB9AB, 0xBA25, 0xBAA0, 0xBB1D, 0xBB9A, 0xBC16, 
    0xBC90, 0xBD06, 0xBD78, 0xBDE4, 0xBE4A, 0xBEA8, 0xBEFD, 0xBF48, 
    0xBF87, 0xBFBB, 0xBFE1, 0xBFF9, 0xC001, 0xC001, 0x8001, 0x8001, 
    0xFE4A, 0xFE0A, 0xFD5C, 0xFC5B, 0xFB23, 0xF9D0, 0xF87D, 0xF745, 
    0xF644, 0xF596, 0xF556, 0xF556, 0xF556, 0xF556, 0xF556, 0xF556, 
    0xF556, 0xF556, 0xF556, 0xF556, 0xF556, 0xF55A, 0xF567, 0xF57B, 
    0xF596, 0xF5B8, 0xF5E1, 0xF610, 0xF644, 0xF67E, 0xF6BC, 0xF6FF, 
    0xF745, 0xF78F, 0xF7DC, 0xF82B, 0xF87D, 0xF8D0, 0xF925, 0xF97A, 
    0xF9D0, 0xFA26, 0xFA7B, 0xFAD0, 0xFB23, 0xFB75, 0xFBC4, 0xFC11, 
    0xFC5B, 0xFCA1, 0xFCE4, 0xFD22, 0xFD5C, 0xFD90, 0xFDBF, 0xFDE8, 
    0xFE0A, 0xFE25, 0xFE39, 0xFE46, 0xFE4A, 0xFE4A, 0xFE0A, 0xFD5C, 
    0xFC5B, 0xFB23, 0xF9D0, 0xF87D, 0xF745, 0xF644, 0xF596, 0xF556, 
    0xF556, 0xF556, 0xF556, 0xF556, 0xF556, 0xF556, 0xF556, 0xF556, 
    0xF556, 0xF556, 0xF55A, 0xF567, 0xF57B, 0xF596, 0xF5B8, 0xF5E1, 
    0xF610, 0xF644, 0xF67E, 0xF6BC, 0xF6FF, 0xF745, 0xF78F, 0xF7DC, 
    0xF82B, 0xF87D, 0xF8D0, 0xF925, 0xF97A, 0xF9D0, 0xFA26, 0xFA7B, 
    0xFAD0, 0xFB23, 0xFB75, 0xFBC4, 0xFC11, 0xFC5B, 0xFCA1, 0xFCE4, 
    0xFD22, 0xFD5C, 0xFD90, 0xFDBF, 0xFDE8, 0xFE0A, 0xFE25, 0xFE39, 
    0xFE46, 0xFE4A, 0x0000, 0x013A, 0x0266, 0x038C, 0x04AB, 0x05C4, 
    0x06D4, 0x07DD, 0x08DE, 0x09D8, 0x0AC9, 0x0BB2, 0x0C92, 0x0D69, 
    0x0E37, 0x0EFC, 0x0FB8, 0x106A, 0x1111, 0x11AF, 0x1241, 0x12C8, 
    0x1343, 0x13B3, 0x1416, 0x146B, 0x14B3, 0x14EC, 0x1517, 0x1531, 
    0x153A, 0x1531, 0x1517, 0x14ED, 0x14B4, 0x146D, 0x1418, 0x13B6, 
    0x1347, 0x12CD, 0x1247, 0x11B5, 0x1119, 0x1073, 0x0FC3, 0x0F08, 
    0x0E45, 0x0D78, 0x0CA2, 0x0BC3, 0x0ADC, 0x09ED, 0x08F5, 0x07F6, 
    0x06EF, 0x05E0, 0x04CA, 0x03AC, 0x0288, 0x015E, 0x0046, 0x003A, 
    0x013A, 0x0266, 0x038C, 0x04AB, 0x05C3, 0x06D4, 0x07DD, 0x08DE, 
    0x09D8, 0x0AC9, 0x0BB1, 0x0C92, 0x0D69, 0x0E37, 0x0EFC, 0x0FB8, 
    0x106A, 0x1111, 0x11AE, 0x1241, 0x12C8, 0x1343, 0x13B3, 0x1416, 
    0x146B, 0x14B3, 0x14EC, 0x1517, 0x1531, 0x1539, 0x1531, 0x1517, 
    0x14ED, 0x14B4, 0x146D, 0x1418, 0x13B6, 0x1347, 0x12CD, 0x1247, 
    0x11B5, 0x1119, 0x1073, 0x0FC2, 0x0F08, 0x0E45, 0x0D78, 0x0CA2, 
    0x0BC3, 0x0ADC, 0x09ED, 0x08F5, 0x07F6, 0x06EF, 0x05E0, 0x04C9, 
    0x03AC, 0x0288, 0x015E, 0x0044, 0xBF7C, 0xBF95, 0xBFD8, 0xC03D, 
    0xC0B9, 0xC144, 0xC1D5, 0xC261, 0xC2E0, 0xC348, 0xC38F, 0xC3BB, 
    0xC3D9, 0xC3E9, 0xC3EE, 0xC3EA, 0xC3DF, 0xC3CF, 0xC3BB, 0xC3A5, 
    0xC38F, 0xC379, 0xC362, 0xC349, 0xC32E, 0xC313, 0xC2F5, 0xC2D7, 
    0xC2B8, 0xC298, 0xC277, 0xC255, 0xC233, 0xC211, 0xC1EE, 0xC1CB, 
    0xC1A8, 0xC185, 0xC162, 0xC13F, 0xC11D, 0xC0FC, 0xC0DB, 0xC0BB, 
    0xC09B, 0xC07D, 0xC060, 0xC044, 0xC029, 0xC010, 0xBFF8, 0xBFE2, 
    0xBFCE, 0xBFBC, 0xBFAC, 0xBF9E, 0xBF92, 0xBF89, 0xBF82, 0xBF7E, 
    0xBF7C, 0xBF7C, 0xBF95, 0xBFD8, 0xC03D, 0xC0B9, 0xC144, 0xC1D5, 
    0xC261, 0xC2E0, 0xC348, 0xC38F, 0xC3BB, 0xC3D9, 0xC3E9, 0xC3EE, 
    0xC3EA, 0xC3DF, 0xC3CF, 0xC3BB, 0xC3A5, 0xC38F, 0xC379, 0xC362, 
    0xC349, 0xC32E, 0xC313, 0xC2F5, 0xC2D7, 0xC2B8, 0xC298, 0xC277, 
    0xC255, 0xC233, 0xC211, 0xC1EE, 0xC1CB, 0xC1A8, 0xC185, 0xC162, 
    0xC13F, 0xC11D, 0xC0FC, 0xC0DB, 0xC0BB, 0xC09B, 0xC07D, 0xC060, 
    0xC044, 0xC029, 0xC010, 0xBFF8, 0xBFE2, 0xBFCE, 0xBFBC, 0xBFAC, 
    0xBF9E, 0xBF92, 0xBF89, 0xBF82, 0xBF7E, 0xBF7C, 0xC001, 0xBF52, 
    0xBEAB, 0xBE07, 0xBD67, 0xBCCB, 0xBC34, 0xBBA0, 0xBB11, 0xBA86, 
    0xB9FF, 0xB97E, 0xB901, 0xB889, 0xB815, 0xB7A7, 0xB73F, 0xB6DB, 
    0xB67E, 0xB626, 0xB5D4, 0xB588, 0xB543, 0xB505, 0xB4CE, 0xB49E, 
    0xB475, 0xB455, 0xB43E, 0xB42F, 0xB42A, 0xB42F, 0xB43D, 0xB455, 
    0xB475, 0xB49D, 0xB4CC, 0xB503, 0xB541, 0xB586, 0xB5D1, 0xB622, 
    0xB679, 0xB6D6, 0xB739, 0xB7A1, 0xB80E, 0xB880, 0xB8F8, 0xB974, 
    0xB9F5, 0xBA7A, 0xBB04, 0xBB92, 0xBC25, 0xBCBC, 0xBD57, 0xBDF5, 
    0xBE98, 0xBF3E, 0xBFDA, 0xBFE0, 0xBF52, 0xBEAB, 0xBE07, 0xBD68, 
    0xBCCC, 0xBC34, 0xBBA0, 0xBB11, 0xBA86, 0xB9FF, 0xB97E, 0xB901, 
    0xB889, 0xB815, 0xB7A7, 0xB73F, 0xB6DB, 0xB67E, 0xB626, 0xB5D4, 
    0xB588, 0xB543, 0xB505, 0xB4CE, 0xB49E, 0xB475, 0xB455, 0xB43E, 
    0xB42F, 0xB42A, 0xB42F, 0xB43D, 0xB455, 0xB475, 0xB49D, 0xB4CC, 
    0xB503, 0xB541, 0xB586, 0xB5D1, 0xB622, 0xB679, 0xB6D6, 0xB739, 
    0xB7A1, 0xB80E, 0xB880, 0xB8F8, 0xB974, 0xB9F5, 0xBA7A, 0xBB04, 
    0xBB92, 0xBC25, 0xBCBC, 0xBD57, 0xBDF6, 0xBE98, 0xBF3E, 0xBFDB, 
    0xF843, 0xC001, 0x1FFF, 0x3FFF, 0x1FFF, 0x07BD, 0xC001, 0x3FFF, 
    0x0000, 0x001D, 0x006D, 0x00E1, 0x016C, 0x01FF, 0x028F, 0x030C, 
    0x0369, 0x0399, 0x038E, 0x0337, 0x029C, 0x01CD, 0x00DD, 0xFFDE, 
    0xFEE2, 0xFDFA, 0xFD38, 0xFCB0, 0xFC72, 0xFC63, 0xFC58, 0xFC52, 
    0xFC51, 0xFC54, 0xFC5B, 0xFC65, 0xFC74, 0xFC85, 0xFC9A, 0xFCB2, 
    0xFCCC, 0xFCE8, 0xFD07, 0xFD28, 0xFD4A, 0xFD6D, 0xFD92, 0xFDB8, 
    0xFDDE, 0xFE05, 0xFE2C, 0xFE53, 0xFE7A, 0xFEA1, 0xFEC6, 0xFEEB, 
    0xFF0E, 0xFF30, 0xFF50, 0xFF6E, 0xFF8B, 0xFFA4, 0xFFBB, 0xFFCF, 
    0xFFE0, 0xFFEE, 0xFFF8, 0xFFFE, 0x0000, 0x0000, 0x00B1, 0x028F, 
    0x0547, 0x0888, 0x0BFF, 0x0F5C, 0x124A, 0x147A, 0x1599, 0x1555, 
    0x134F, 0x0FAA, 0x0AD1, 0x0530, 0xFF34, 0xF947, 0xF3D7, 0xEF50, 
    0xEC1D, 0xEAAB, 0xEA4E, 0xEA0E, 0xE9EB, 0xE9E2, 0xE9F4, 0xEA1E, 
    0xEA5E, 0xEAB4, 0xEB1E, 0xEB9A, 0xEC28, 0xECC5, 0xED70, 0xEE28, 
    0xEEEB, 0xEFB9, 0xF08E, 0xF16B, 0xF24D, 0xF334, 0xF41D, 0xF508, 
    0xF5F2, 0xF6DB, 0xF7C1, 0xF8A2, 0xF97D, 0xFA52, 0xFB1D, 0xFBDE, 
    0xFC94, 0xFD3D, 0xFDD7, 0xFE61, 0xFEDA, 0xFF40, 0xFF92, 0xFFCF, 
    0xFFF4, 0x0000, 0x3FFF, 0x3FEA, 0x3FAF, 0x3F57, 0x3EEA, 0x3E71, 
    0x3DF3, 0x3D78, 0x3D0A, 0x3CAF, 0x3C71, 0x3C4A, 0x3C31, 0x3C22, 
    0x3C1E, 0x3C21, 0x3C2B, 0x3C39, 0x3C4B, 0x3C5E, 0x3C71, 0x3C84, 
    0x3C98, 0x3CAE, 0x3CC5, 0x3CDE, 0x3CF7, 0x3D11, 0x3D2D, 0x3D49, 
    0x3D65, 0x3D83, 0x3DA0, 0x3DBF, 0x3DDD, 0x3DFB, 0x3E1A, 0x3E39, 
    0x3E57, 0x3E75, 0x3E93, 0x3EB0, 0x3ECD, 0x3EE9, 0x3F05, 0x3F1F, 
    0x3F39, 0x3F51, 0x3F68, 0x3F7E, 0x3F93, 0x3FA6, 0x3FB8, 0x3FC8, 
    0x3FD6, 0x3FE2, 0x3FEC, 0x3FF4, 0x3FFA, 0x3FFE, 0x3FFF, 0x3FFF, 
    0x4000, 0x4004, 0x4009, 0x4011, 0x401A, 0x4025, 0x4031, 0x403F, 
    0x404E, 0x405D, 0x406E, 0x407F, 0x4091, 0x40A3, 0x40B5, 0x40C7, 
    0x40D9, 0x40EB, 0x40FC, 0x410D, 0x411C, 0x412B, 0x4139, 0x4145, 
    0x4150, 0x4159, 0x4161, 0x4166, 0x416A, 0x416B, 0x416A, 0x4166, 
    0x4161, 0x4159, 0x4150, 0x4145, 0x4139, 0x412B, 0x411C, 0x410D, 
    0x40FC, 0x40EB, 0x40D9, 0x40C7, 0x40B5, 0x40A3, 0x4091, 0x407F, 
    0x406E, 0x405D, 0x404E, 0x403F, 0x4031, 0x4025, 0x401A, 0x4011, 
    0x4009, 0x4004, 0x4000, 0x3FFF, 0x3FFF, 0x3FE1, 0x3F92, 0x3F1E, 
    0x3E93, 0x3DFF, 0x3D70, 0x3CF3, 0x3C95, 0x3C65, 0x3C71, 0x3CC7, 
    0x3D63, 0x3E31, 0x3F22, 0x4021, 0x411E, 0x4206, 0x42C7, 0x4350, 
    0x438D, 0x439D, 0x43A7, 0x43AD, 0x43AF, 0x43AC, 0x43A5, 0x439A, 
    0x438C, 0x437A, 0x4365, 0x434E, 0x4334, 0x4317, 0x42F8, 0x42D8, 
    0x42B6, 0x4292, 0x426D, 0x4248, 0x4221, 0x41FA, 0x41D3, 0x41AC, 
    0x4185, 0x415F, 0x4139, 0x4115, 0x40F1, 0x40D0, 0x40AF, 0x4091, 
    0x4075, 0x405B, 0x4044, 0x4030, 0x401F, 0x4011, 0x4007, 0x4001, 
    0x3FFF, 0x3FFF, 
};

JointKey gHumanLookingAroundAnimJointKey[] = {
    {      1,      0,     61,      1,      1,     62 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     61,     63,      1,    124 },
    {     61,    125,      1,    186,     61,    187 },
    {     61,    248,      1,    309,     61,    310 },
    {      1,      0,      1,      0,     61,    371 },
    {      1,      0,      1,      0,     61,    432 },
    {      1,      0,      1,      0,      1,    493 },
    {      1,    494,      1,    495,      1,      0 },
    {      1,      0,      1,      0,     61,    496 },
    {      1,      0,      1,      0,     61,    557 },
    {      1,      0,      1,      0,     61,    618 },
    {      1,      0,      1,      0,     61,    679 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,     61,    740 },
    {      1,      0,      1,      0,     61,    801 },
    {      1,      0,      1,      0,     61,    862 },
    {      1,      0,      1,      0,     61,    923 },
    {      1,    984,      1,      0,      1,    985 },
    {      1,    986,      1,    987,      1,    988 },
    {      1,    989,      1,      0,      1,    990 },
    {      1,      0,      1,    991,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {     61,    992,     61,   1053,     61,   1114 },
    {      1,      0,      1,      0,     61,   1175 },
    {      1,      0,     61,   1236,      1,      0 },
    {      1,      0,      1,   1297,      1,      0 },
};

LegacyAnimationHeader gHumanLookingAroundAnim = { 
    61, 41,
    gHumanLookingAroundAnimFrameData,
    gHumanLookingAroundAnimJointKey
};

u8 object_human_possiblePadding_009918[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 gHumanLookingBackEndsAnimFrameData[] = {
    0x0000, 0x0D7B, 0x0028, 0x0000, 0xFF98, 0xFE7A, 0xFCD5, 0xFAD4, 
    0xF8A3, 0xF66F, 0xF464, 0xF2AD, 0xF178, 0xF0F0, 0xC3DC, 0xEE3A, 
    0xFFE7, 0x11C6, 0xFFE7, 0xB569, 0xB571, 0xB58E, 0xB5C6, 0xB620, 
    0xB6A4, 0xB759, 0xB846, 0xBA99, 0xBDEF, 0xBFF5, 0xC001, 0xC001, 
    0x8001, 0x8002, 0xFE4A, 0xFE4A, 0x1468, 0x160A, 0x1972, 0x1CD5, 
    0x1F22, 0x1F9C, 0x1D93, 0x1934, 0x12E7, 0x0AF6, 0x0199, 0x003A, 
    0xBF7C, 0xBF7D, 0x0095, 0x009A, 0x00A0, 0x0099, 0x0085, 0x006B, 
    0x004B, 0x002A, 0x0010, 0x0003, 0x0000, 0xFDF9, 0xFE0F, 0xFE47, 
    0xFE91, 0xFEDC, 0xFF1A, 0xFF50, 0xFF8B, 0xFFC2, 0xFFED, 0x0000, 
    0xBC31, 0xBAFF, 0xB85A, 0xB572, 0xB311, 0xB1DD, 0xB224, 0xB3AB, 
    0xB65C, 0xBA2E, 0xBF1F, 0xBFE0, 0xF843, 0xC001, 0x1FFF, 0x3FFF, 
    0x1FFF, 0x07BD, 0xC001, 0x3FFF, 0xE38F, 0xE455, 0xE66F, 0xE98A, 
    0xED52, 0xF174, 0xF59C, 0xF978, 0xFCB3, 0xFEFB, 0xFFFB, 0x3FFF, 
    0xFC72, 0xFC8B, 0xFCCE, 0xFD32, 0xFDAB, 0xFE2F, 0xFEB4, 0xFF2F, 
    0xFF97, 0xFFE0, 0x0000, 0x3FFF, 0x71C6, 0x706B, 0x6CBE, 0x674F, 
    0x60B1, 0x5975, 0x522E, 0x4B6E, 0x45C6, 0x41C9, 0x4008, 0x58E2, 
    0x5835, 0x565E, 0x53A7, 0x5058, 0x4CBA, 0x4917, 0x45B7, 0x42E3, 
    0x40E4, 0x4003, 
};

JointKey gHumanLookingBackEndsAnimJointKey[] = {
    {      1,      0,      1,      1,      1,      2 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     11,      3,      1,     14 },
    {      1,      0,      1,     15,      1,     16 },
    {      1,      0,      1,     17,      1,     18 },
    {      1,      0,      1,      0,     11,     19 },
    {      1,      0,      1,      0,      1,     30 },
    {      1,      0,      1,      0,      1,     31 },
    {      1,     32,      1,     33,      1,      0 },
    {      1,      0,      1,      0,      1,     34 },
    {      1,      0,      1,      0,      1,     35 },
    {      1,      0,      1,      0,     11,     36 },
    {      1,      0,      1,      0,      1,     47 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,     48 },
    {      1,      0,      1,      0,      1,     49 },
    {     11,     50,     11,     61,     11,     72 },
    {      1,      0,      1,      0,      1,     83 },
    {      1,     84,      1,      0,      1,     85 },
    {      1,     86,      1,     87,      1,     88 },
    {      1,     89,      1,      0,      1,     90 },
    {      1,      0,      1,     91,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     11,     92,      1,    103 },
    {      1,      0,     11,    104,      1,    115 },
    {      1,      0,     11,    116,      1,      0 },
    {      1,      0,     11,    127,      1,      0 },
};

LegacyAnimationHeader gHumanLookingBackEndsAnim = { 
    11, 41,
    gHumanLookingBackEndsAnimFrameData,
    gHumanLookingBackEndsAnimJointKey
};

u8 object_human_possiblePadding_009C38[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 gHumanThinkingEndAnimFrameData[] = {
    0x0000, 0x0D7B, 0x0028, 0xC3DC, 0xE585, 0xE643, 0xE846, 0xEB3D, 
    0xEED7, 0xF2C3, 0xF6AE, 0xFA48, 0xFD3F, 0xFF43, 0x0000, 0xD630, 
    0xD6DC, 0xD8B0, 0xDB61, 0xDEA6, 0xE235, 0xE5C3, 0xE908, 0xEBBA, 
    0xED8D, 0xEE3A, 0xF962, 0xF991, 0xFA10, 0xFACB, 0xFBAE, 0xFCA5, 
    0xFD9C, 0xFE7F, 0xFF39, 0xFFB8, 0xFFE7, 0x0684, 0x0656, 0x05D7, 
    0x051C, 0x0439, 0x0342, 0x024B, 0x0168, 0x00AD, 0x002E, 0x0000, 
    0x1642, 0x1622, 0x15CA, 0x154A, 0x14AE, 0x1404, 0x135A, 0x12BE, 
    0x123E, 0x11E7, 0x11C6, 0xEECA, 0xEF45, 0xF092, 0xF27D, 0xF4D0, 
    0xF759, 0xF9E1, 0xFC35, 0xFE1F, 0xFF6C, 0xFFE7, 0xC001, 0xC001, 
    0xC001, 0x8001, 0x8001, 0x404D, 0x3E80, 0x399D, 0x3269, 0x29AB, 
    0x2026, 0x16A2, 0x0DE3, 0x06B0, 0x01CC, 0x0000, 0xEEE9, 0xEF63, 
    0xF0B0, 0xF29A, 0xF4ED, 0xF775, 0xF9FC, 0xFC4F, 0xFE39, 0xFF86, 
    0x0000, 0xAADB, 0xAD32, 0xB389, 0xBCE1, 0xC83A, 0xD493, 0xE0EC, 
    0xEC45, 0xF59D, 0xFBF4, 0xFE4A, 0x0DDA, 0x0D76, 0x0C69, 0x0ADC, 
    0x08F9, 0x06ED, 0x04E0, 0x02FD, 0x0170, 0x0063, 0x0000, 0xE3CE, 
    0xE48C, 0xE690, 0xE987, 0xED21, 0xF10C, 0xF4F8, 0xF892, 0xFB89, 
    0xFD8C, 0xFE4A, 0x0000, 0x003A, 0x0000, 0x003A, 0x0000, 0x003A, 
    0x0000, 0x003A, 0x0000, 0x003A, 0x0000, 0x0000, 0x003A, 0x0000, 
    0x003A, 0x0000, 0x003A, 0x0000, 0x003A, 0x0000, 0x003A, 0x0000, 
    0xFD64, 0xFD76, 0xFDA9, 0xFDF4, 0xFE4F, 0xFEB2, 0xFF15, 0xFF70, 
    0xFFBB, 0xFFEE, 0x0000, 0x9987, 0x9A97, 0x9D7A, 0xA1BA, 0xA6E3, 
    0xAC82, 0xB220, 0xB749, 0xBB8A, 0xBE6C, 0xBF7C, 0xB61E, 0xB662, 
    0xB718, 0xB825, 0xB96B, 0xBACE, 0xBC31, 0xBD77, 0xBE84, 0xBF3A, 
    0xBF7D, 0xC001, 0xBFE0, 0xC001, 0xBFE0, 0xC001, 0xBFE0, 0xC001, 
    0xBFE0, 0xC001, 0xBFE0, 0xC001, 0xC001, 0xBFE0, 0xC001, 0xBFE0, 
    0xC001, 0xBFE0, 0xC001, 0xBFE0, 0xC001, 0xBFE0, 0xC001, 0xF843, 
    0xC001, 0x1FFF, 0x3FFF, 0x1FFF, 0x07BD, 0xC001, 0x3FFF, 0x471B, 
    0x46E8, 0x465E, 0x4592, 0x449B, 0x438D, 0x4280, 0x4188, 0x40BC, 
    0x4032, 0x3FFF, 0xF1C8, 0xF22E, 0xF342, 0xF4DA, 0xF6C9, 0xF8E4, 
    0xFAFF, 0xFCEE, 0xFE86, 0xFF9B, 0x0000, 0x038E, 0x0374, 0x032F, 
    0x02C9, 0x024D, 0x01C7, 0x0140, 0x00C4, 0x005E, 0x0019, 0x0000, 
    0x471B, 0x46E8, 0x465E, 0x4592, 0x449B, 0x438D, 0x4280, 0x4188, 
    0x40BC, 0x4032, 0x3FFF, 0x3FFF, 0x3FFF, 0x0000, 
};

JointKey gHumanThinkingEndAnimJointKey[] = {
    {      1,      0,      1,      1,      1,      2 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      3 },
    {     11,      4,     11,     15,     11,     26 },
    {     11,     37,     11,     48,     11,     59 },
    {      1,      0,      1,      0,      1,     70 },
    {      1,      0,      1,      0,      1,     71 },
    {      1,      0,      1,      0,      1,     72 },
    {      1,     73,      1,     74,      1,      0 },
    {     11,     75,     11,     86,     11,     97 },
    {      1,      0,     11,    108,     11,    119 },
    {      1,      0,      1,      0,     11,    130 },
    {      1,      0,      1,      0,     11,    141 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     11,    152,     11,    163 },
    {      1,      0,      1,      0,     11,    174 },
    {      1,      0,      1,      0,     11,    185 },
    {      1,      0,      1,      0,     11,    196 },
    {      1,    207,      1,      0,      1,    208 },
    {      1,    209,      1,    210,      1,    211 },
    {      1,    212,      1,      0,      1,    213 },
    {      1,      0,      1,    214,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,     11,    215 },
    {     11,    226,     11,    237,     11,    248 },
    {      1,      0,      1,    259,      1,      0 },
    {      1,      0,      1,    260,      1,      0 },
};

LegacyAnimationHeader gHumanThinkingEndAnim = { 
    11, 41,
    gHumanThinkingEndAnimFrameData,
    gHumanThinkingEndAnimJointKey
};

s16 gHumanThinkingStartsAnimFrameData[] = {
    0x0000, 0x0D7B, 0x0D78, 0x0D72, 0x0D68, 0x0D5C, 0x0D4F, 0x0D43, 
    0x0D37, 0x0D2D, 0x0D27, 0x0D24, 0x0D25, 0x0D27, 0x0D2A, 0x0D2D, 
    0x0D32, 0x0D37, 0x0D3D, 0x0D43, 0x0D49, 0x0D4F, 0x0D56, 0x0D5C, 
    0x0D62, 0x0D68, 0x0D6D, 0x0D72, 0x0D75, 0x0D78, 0x0D7A, 0x0D7B, 
    0x0028, 0xC3DC, 0x0000, 0xFE89, 0xFAC0, 0xF594, 0xEFF1, 0xEAC5, 
    0xE6FC, 0xE585, 0xE585, 0xE585, 0xE585, 0xE585, 0xE585, 0xE585, 
    0xE585, 0xE585, 0xE585, 0xE585, 0xE585, 0xE585, 0xE585, 0xE585, 
    0xE585, 0xE585, 0xE585, 0xE585, 0xE585, 0xE585, 0xE585, 0xE585, 
    0xE585, 0xEE3A, 0xECE5, 0xE976, 0xE4C3, 0xDFA6, 0xDAF4, 0xD785, 
    0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 
    0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 
    0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 0xD630, 
    0xFFE7, 0xFF8B, 0xFE9C, 0xFD56, 0xFBF3, 0xFAAD, 0xF9BF, 0xF962, 
    0xF962, 0xF962, 0xF962, 0xF962, 0xF962, 0xF962, 0xF962, 0xF962, 
    0xF962, 0xF962, 0xF962, 0xF962, 0xF962, 0xF962, 0xF962, 0xF962, 
    0xF962, 0xF962, 0xF962, 0xF962, 0xF962, 0xF962, 0xF962, 0x0000, 
    0x001C, 0x006A, 0x00E1, 0x0178, 0x0226, 0x02E2, 0x03A2, 0x045E, 
    0x050C, 0x05A3, 0x061A, 0x0668, 0x0684, 0x0684, 0x0684, 0x0684, 
    0x0684, 0x0684, 0x0684, 0x0684, 0x0684, 0x0684, 0x0684, 0x0684, 
    0x0684, 0x0684, 0x0684, 0x0684, 0x0684, 0x0684, 0x11C6, 0x11D7, 
    0x1206, 0x124D, 0x12A9, 0x1314, 0x1389, 0x1404, 0x147F, 0x14F5, 
    0x1563, 0x15C2, 0x160E, 0x1642, 0x1664, 0x167D, 0x1690, 0x169B, 
    0x16A1, 0x16A2, 0x169E, 0x1698, 0x168E, 0x1683, 0x1676, 0x1669, 
    0x165D, 0x1652, 0x164A, 0x1644, 0x1642, 0xFFE7, 0xFF9D, 0xFED0, 
    0xFD97, 0xFC0A, 0xFA41, 0xF855, 0xF65C, 0xF470, 0xF2A7, 0xF11B, 
    0xEFE1, 0xEF14, 0xEECA, 0xEECA, 0xEECA, 0xEECA, 0xEECA, 0xEECA, 
    0xEECA, 0xEECA, 0xEECA, 0xEECA, 0xEECA, 0xEECA, 0xEECA, 0xEECA, 
    0xEECA, 0xEECA, 0xEECA, 0xEECA, 0xC001, 0xBFC4, 0xBF1D, 0xBE28, 
    0xBCFE, 0xBBBA, 0xBA76, 0xB94C, 0xB856, 0xB7B0, 0xB773, 0xB783, 
    0xB7B1, 0xB7F9, 0xB859, 0xB8CD, 0xB951, 0xB9E2, 0xBA7E, 0xBB1F, 
    0xBBC4, 0xBC69, 0xBD0A, 0xBDA4, 0xBE34, 0xBEB6, 0xBF28, 0xBF85, 
    0xBFCA, 0xBFF5, 0xC001, 0xC001, 0xBFC4, 0xBF1D, 0xBE28, 0xBCFE, 
    0xBBBA, 0xBA76, 0xB94C, 0xB856, 0xB7B0, 0xB773, 0xB783, 0xB7B1, 
    0xB7F9, 0xB859, 0xB8CD, 0xB951, 0xB9E2, 0xBA7E, 0xBB1F, 0xBBC4, 
    0xBC69, 0xBD0A, 0xBDA4, 0xBE34, 0xBEB6, 0xBF28, 0xBF85, 0xBFCA, 
    0xBFF5, 0xC001, 0xC001, 0x8001, 0x8001, 0x0000, 0x0370, 0x0C55, 
    0x1890, 0x2600, 0x3285, 0x3BFF, 0x404D, 0x405F, 0x405F, 0x405F, 
    0x405F, 0x405F, 0x405F, 0x405F, 0x405F, 0x405F, 0x405F, 0x405F, 
    0x405F, 0x405F, 0x405F, 0x405F, 0x405F, 0x405F, 0x405F, 0x405F, 
    0x405F, 0x405F, 0x405F, 0x405F, 0x0000, 0xFF17, 0xFCB9, 0xF979, 
    0xF5E7, 0xF293, 0xF00E, 0xEEE9, 0xEEE4, 0xEEE4, 0xEEE4, 0xEEE4, 
    0xEEE4, 0xEEE4, 0xEEE4, 0xEEE4, 0xEEE4, 0xEEE4, 0xEEE4, 0xEEE4, 
    0xEEE4, 0xEEE4, 0xEEE4, 0xEEE4, 0xEEE4, 0xEEE4, 0xEEE4, 0xEEE4, 
    0xEEE4, 0xEEE4, 0xEEE4, 0xFE4A, 0xF9D4, 0xEE49, 0xDE6B, 0xCCFC, 
    0xBCBE, 0xB072, 0xAADB, 0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 
    0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 
    0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 0xAAC4, 
    0xAAC4, 0xAAC4, 0x0000, 0x0063, 0x0170, 0x02FD, 0x04E0, 0x06ED, 
    0x08F9, 0x0ADC, 0x0C69, 0x0D76, 0x0DDA, 0x0DDA, 0x0DDA, 0x0DDA, 
    0x0DDA, 0x0DDA, 0x0DDA, 0x0DDA, 0x0DDA, 0x0DDA, 0x0DDA, 0x0DDA, 
    0x0DDA, 0x0DDA, 0x0DDA, 0x0DDA, 0x0DDA, 0x0DDA, 0x0DDA, 0x0DDA, 
    0x0DDA, 0xFE4A, 0xFD8C, 0xFB89, 0xF892, 0xF4F8, 0xF10C, 0xED21, 
    0xE987, 0xE690, 0xE48C, 0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 
    0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 
    0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 0xE3CE, 
    0x003A, 0x038C, 0x06D4, 0x09D8, 0x0C92, 0x0EFC, 0x1111, 0x12C8, 
    0x1416, 0x14EC, 0x1539, 0x1526, 0x14EC, 0x1491, 0x1416, 0x137D, 
    0x12C8, 0x11F9, 0x1111, 0x1012, 0x0EFC, 0x0DD1, 0x0C92, 0x0B3E, 
    0x09D8, 0x085F, 0x06D4, 0x0538, 0x038C, 0x01D1, 0x003A, 0x0000, 
    0x038C, 0x06D4, 0x09D8, 0x0C92, 0x0EFC, 0x1111, 0x12C8, 0x1416, 
    0x14EC, 0x1539, 0x1526, 0x14EC, 0x1491, 0x1416, 0x137D, 0x12C8, 
    0x11F9, 0x1111, 0x1012, 0x0EFC, 0x0DD1, 0x0C92, 0x0B3E, 0x09D8, 
    0x085F, 0x06D4, 0x0538, 0x038C, 0x01D0, 0x003A, 0x0000, 0xFFDB, 
    0xFF7C, 0xFEF9, 0xFE6B, 0xFDE8, 0xFD89, 0xFD64, 0xFD64, 0xFD64, 
    0xFD64, 0xFD64, 0xFD64, 0xFD64, 0xFD64, 0xFD64, 0xFD64, 0xFD64, 
    0xFD64, 0xFD64, 0xFD64, 0xFD64, 0xFD64, 0xFD64, 0xFD64, 0xFD64, 
    0xFD64, 0xFD64, 0xFD64, 0xFD64, 0xFD64, 0xBF7C, 0xBD62, 0xB7F6, 
    0xB08C, 0xA878, 0xA10D, 0x9BA1, 0x9987, 0x9987, 0x9987, 0x9987, 
    0x9987, 0x9987, 0x9987, 0x9987, 0x9987, 0x9987, 0x9987, 0x9987, 
    0x9987, 0x9987, 0x9987, 0x9987, 0x9987, 0x9987, 0x9987, 0x9987, 
    0x9987, 0x9987, 0x9987, 0x9987, 0xBF7D, 0xBF3A, 0xBE84, 0xBD77, 
    0xBC31, 0xBACE, 0xB96B, 0xB825, 0xB718, 0xB662, 0xB61E, 0xB61E, 
    0xB61E, 0xB61E, 0xB61E, 0xB61E, 0xB61E, 0xB61E, 0xB61E, 0xB61E, 
    0xB61E, 0xB61E, 0xB61E, 0xB61E, 0xB61E, 0xB61E, 0xB61E, 0xB61E, 
    0xB61E, 0xB61E, 0xB61E, 0xBFE0, 0xBE07, 0xBC34, 0xBA86, 0xB901, 
    0xB7A7, 0xB67E, 0xB588, 0xB4CE, 0xB455, 0xB42A, 0xB435, 0xB455, 
    0xB488, 0xB4CE, 0xB523, 0xB588, 0xB5FC, 0xB67E, 0xB70C, 0xB7A7, 
    0xB84E, 0xB901, 0xB9BE, 0xBA86, 0xBB58, 0xBC34, 0xBD19, 0xBE07, 
    0xBEFE, 0xBFE0, 0xC001, 0xBE07, 0xBC34, 0xBA86, 0xB901, 0xB7A7, 
    0xB67E, 0xB588, 0xB4CE, 0xB455, 0xB42A, 0xB435, 0xB455, 0xB488, 
    0xB4CE, 0xB523, 0xB588, 0xB5FC, 0xB67E, 0xB70C, 0xB7A7, 0xB84E, 
    0xB901, 0xB9BE, 0xBA86, 0xBB58, 0xBC34, 0xBD19, 0xBE07, 0xBEFE, 
    0xBFE0, 0xF843, 0xC001, 0x1FFF, 0x3FFF, 0x1FFF, 0x07BD, 0xC001, 
    0x3FFF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x00EB, 0x02A2, 0x038E, 0x0271, 
    0x0000, 0xFD8F, 0xFC72, 0xFD64, 0xFF78, 0x018B, 0x027D, 0x01E0, 
    0x0088, 0xFF31, 0xFE94, 0xFF4A, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x3FFF, 0x4024, 0x408C, 0x4128, 0x41EC, 0x42CB, 0x43B8, 0x44A5, 
    0x4585, 0x464C, 0x46EC, 0x4729, 0x470A, 0x46EC, 0x46EC, 0x46EC, 
    0x46EC, 0x46EC, 0x46EC, 0x46EC, 0x46EC, 0x46EC, 0x46EC, 0x46EC, 
    0x46EC, 0x46EC, 0x46EA, 0x46EC, 0x46FF, 0x4715, 0x471B, 0x0000, 
    0xFFAB, 0xFEC0, 0xFD61, 0xFBAE, 0xF9C8, 0xF7CF, 0xF5E6, 0xF42B, 
    0xF2C1, 0xF1C8, 0xF134, 0xF0DF, 0xF0BC, 0xF0C2, 0xF0E4, 0xF119, 
    0xF155, 0xF18D, 0xF1B7, 0xF1C8, 0xF1C8, 0xF1C8, 0xF1C8, 0xF1C8, 
    0xF1C8, 0xF1C8, 0xF1C8, 0xF1C8, 0xF1C8, 0xF1C8, 0x0000, 0x0015, 
    0x0050, 0x00A7, 0x0114, 0x018E, 0x020C, 0x0286, 0x02F5, 0x034F, 
    0x038E, 0x03B3, 0x03C8, 0x03D1, 0x03CF, 0x03C7, 0x03B9, 0x03AA, 
    0x039C, 0x0392, 0x038E, 0x038E, 0x038E, 0x038E, 0x038E, 0x038E, 
    0x038E, 0x038E, 0x038E, 0x038E, 0x038E, 0x3FFF, 0x4028, 0x4099, 
    0x4143, 0x4217, 0x4305, 0x43FD, 0x44F2, 0x45D2, 0x4690, 0x471B, 
    0x477E, 0x47CD, 0x480B, 0x4839, 0x485A, 0x4870, 0x487E, 0x4885, 
    0x4887, 0x4887, 0x487D, 0x4862, 0x4839, 0x4807, 0x47D1, 0x479C, 
    0x476A, 0x4741, 0x4726, 0x471B, 0x3FFF, 0x3FFF, 
};

JointKey gHumanThinkingStartsAnimJointKey[] = {
    {      1,      0,     31,      1,      1,     32 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,     33 },
    {     31,     34,     31,     65,     31,     96 },
    {     31,    127,     31,    158,     31,    189 },
    {      1,      0,      1,      0,     31,    220 },
    {      1,      0,      1,      0,     31,    251 },
    {      1,      0,      1,      0,      1,    282 },
    {      1,    283,      1,    284,      1,      0 },
    {     31,    285,     31,    316,     31,    347 },
    {      1,      0,     31,    378,     31,    409 },
    {      1,      0,      1,      0,     31,    440 },
    {      1,      0,      1,      0,     31,    471 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     31,    502,     31,    533 },
    {      1,      0,      1,      0,     31,    564 },
    {      1,      0,      1,      0,     31,    595 },
    {      1,      0,      1,      0,     31,    626 },
    {      1,    657,      1,      0,      1,    658 },
    {      1,    659,      1,    660,      1,    661 },
    {      1,    662,      1,      0,      1,    663 },
    {      1,      0,      1,    664,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     31,    665,     31,    696 },
    {     31,    727,     31,    758,     31,    789 },
    {      1,      0,      1,    820,      1,      0 },
    {      1,      0,      1,    821,      1,      0 },
};

LegacyAnimationHeader gHumanThinkingStartsAnim = { 
    31, 41,
    gHumanThinkingStartsAnimFrameData,
    gHumanThinkingStartsAnimJointKey
};

s16 gHumanThinkingAnimFrameData[] = {
    0x0000, 0x0D7B, 0x0D7A, 0x0D79, 0x0D78, 0x0D76, 0x0D74, 0x0D72, 
    0x0D6F, 0x0D6B, 0x0D68, 0x0D64, 0x0D60, 0x0D5C, 0x0D58, 0x0D54, 
    0x0D4F, 0x0D4B, 0x0D47, 0x0D43, 0x0D3F, 0x0D3B, 0x0D37, 0x0D33, 
    0x0D30, 0x0D2D, 0x0D2B, 0x0D29, 0x0D27, 0x0D25, 0x0D25, 0x0D24, 
    0x0D25, 0x0D25, 0x0D27, 0x0D29, 0x0D2B, 0x0D2D, 0x0D30, 0x0D33, 
    0x0D37, 0x0D3B, 0x0D3F, 0x0D43, 0x0D47, 0x0D4B, 0x0D4F, 0x0D54, 
    0x0D58, 0x0D5C, 0x0D60, 0x0D64, 0x0D68, 0x0D6B, 0x0D6F, 0x0D72, 
    0x0D74, 0x0D76, 0x0D78, 0x0D79, 0x0D7A, 0x0028, 0xC3DC, 0xE585, 
    0xD630, 0xF962, 0x0684, 0x1642, 0xEECA, 0xC001, 0xBFF5, 0xBFDB, 
    0xBFB4, 0xBF80, 0xBF41, 0xBEF7, 0xBEA5, 0xBE4A, 0xBDE8, 0xBD81, 
    0xBD14, 0xBCA3, 0xBC2F, 0xBBB9, 0xBB42, 0xBACB, 0xBA56, 0xB9E2, 
    0xB972, 0xB907, 0xB8A0, 0xB840, 0xB7E8, 0xB798, 0xB751, 0xB715, 
    0xB6E4, 0xB6C0, 0xB6AA, 0xB6A2, 0xB6AA, 0xB6C1, 0xB6E5, 0xB717, 
    0xB754, 0xB79C, 0xB7ED, 0xB847, 0xB8A8, 0xB910, 0xB97D, 0xB9EE, 
    0xBA63, 0xBADA, 0xBB52, 0xBBC9, 0xBC40, 0xBCB5, 0xBD26, 0xBD93, 
    0xBDFB, 0xBE5C, 0xBEB6, 0xBF08, 0xBF4F, 0xBF8C, 0xBFBE, 0xBFE2, 
    0xBFF9, 0xC001, 0xBFF5, 0xBFDB, 0xBFB4, 0xBF80, 0xBF41, 0xBEF7, 
    0xBEA5, 0xBE4A, 0xBDE8, 0xBD81, 0xBD14, 0xBCA3, 0xBC2F, 0xBBB9, 
    0xBB42, 0xBACB, 0xBA56, 0xB9E2, 0xB972, 0xB907, 0xB8A0, 0xB840, 
    0xB7E8, 0xB798, 0xB751, 0xB715, 0xB6E4, 0xB6C0, 0xB6AA, 0xB6A2, 
    0xB6AA, 0xB6C1, 0xB6E5, 0xB717, 0xB754, 0xB79C, 0xB7ED, 0xB847, 
    0xB8A8, 0xB910, 0xB97D, 0xB9EE, 0xBA63, 0xBADA, 0xBB52, 0xBBC9, 
    0xBC40, 0xBCB5, 0xBD26, 0xBD93, 0xBDFB, 0xBE5C, 0xBEB6, 0xBF08, 
    0xBF4F, 0xBF8C, 0xBFBE, 0xBFE2, 0xBFF9, 0xC001, 0x8001, 0x8001, 
    0x405F, 0xEEE4, 0xAAC4, 0x0DDA, 0xE3CE, 0x0000, 0x013A, 0x0266, 
    0x038C, 0x04AB, 0x05C3, 0x06D4, 0x07DD, 0x08DE, 0x09D8, 0x0AC9, 
    0x0BB1, 0x0C92, 0x0D69, 0x0E37, 0x0EFC, 0x0FB8, 0x106A, 0x1111, 
    0x11AE, 0x1241, 0x12C8, 0x1343, 0x13B3, 0x1416, 0x146B, 0x14B3, 
    0x14EC, 0x1517, 0x1531, 0x1539, 0x1531, 0x1517, 0x14EC, 0x14B3, 
    0x146B, 0x1416, 0x13B3, 0x1343, 0x12C8, 0x1241, 0x11AE, 0x1111, 
    0x106A, 0x0FB8, 0x0EFC, 0x0E37, 0x0D69, 0x0C92, 0x0BB1, 0x0AC9, 
    0x09D8, 0x08DE, 0x07DD, 0x06D4, 0x05C4, 0x04AB, 0x038C, 0x0266, 
    0x013A, 0x0000, 0x013A, 0x0266, 0x038C, 0x04AB, 0x05C3, 0x06D4, 
    0x07DD, 0x08DE, 0x09D8, 0x0AC9, 0x0BB1, 0x0C92, 0x0D69, 0x0E37, 
    0x0EFC, 0x0FB8, 0x106A, 0x1111, 0x11AE, 0x1241, 0x12C8, 0x1343, 
    0x13B3, 0x1416, 0x146B, 0x14B3, 0x14EC, 0x1517, 0x1531, 0x1539, 
    0x1531, 0x1517, 0x14EC, 0x14B3, 0x146B, 0x1416, 0x13B3, 0x1343, 
    0x12C8, 0x1241, 0x11AE, 0x1111, 0x106A, 0x0FB8, 0x0EFC, 0x0E37, 
    0x0D69, 0x0C92, 0x0BB1, 0x0AC9, 0x09D8, 0x08DE, 0x07DD, 0x06D4, 
    0x05C3, 0x04AB, 0x038C, 0x0266, 0x013A, 0xFD64, 0x9987, 0xB61E, 
    0xC001, 0xBF52, 0xBEAB, 0xBE07, 0xBD67, 0xBCCB, 0xBC34, 0xBBA0, 
    0xBB11, 0xBA86, 0xB9FF, 0xB97E, 0xB901, 0xB889, 0xB815, 0xB7A7, 
    0xB73F, 0xB6DB, 0xB67E, 0xB626, 0xB5D4, 0xB588, 0xB543, 0xB505, 
    0xB4CE, 0xB49E, 0xB475, 0xB455, 0xB43E, 0xB42F, 0xB42A, 0xB42F, 
    0xB43E, 0xB455, 0xB475, 0xB49E, 0xB4CE, 0xB505, 0xB543, 0xB588, 
    0xB5D4, 0xB626, 0xB67E, 0xB6DB, 0xB73F, 0xB7A7, 0xB815, 0xB889, 
    0xB901, 0xB97E, 0xB9FF, 0xBA86, 0xBB11, 0xBBA0, 0xBC34, 0xBCCB, 
    0xBD67, 0xBE07, 0xBEAB, 0xBF52, 0xC001, 0xBF52, 0xBEAB, 0xBE07, 
    0xBD67, 0xBCCC, 0xBC34, 0xBBA0, 0xBB11, 0xBA86, 0xBA00, 0xB97E, 
    0xB901, 0xB889, 0xB815, 0xB7A7, 0xB73F, 0xB6DB, 0xB67E, 0xB626, 
    0xB5D4, 0xB588, 0xB543, 0xB505, 0xB4CE, 0xB49E, 0xB475, 0xB455, 
    0xB43E, 0xB42F, 0xB42A, 0xB42F, 0xB43E, 0xB455, 0xB475, 0xB49E, 
    0xB4CE, 0xB505, 0xB543, 0xB588, 0xB5D4, 0xB626, 0xB67E, 0xB6DB, 
    0xB73F, 0xB7A7, 0xB815, 0xB889, 0xB901, 0xB97E, 0xBA00, 0xBA86, 
    0xBB11, 0xBBA0, 0xBC34, 0xBCCC, 0xBD68, 0xBE07, 0xBEAB, 0xBF52, 
    0xF843, 0xC001, 0x1FFF, 0x3FFF, 0x1FFF, 0x07BD, 0xC001, 0x3FFF, 
    0x471B, 0x4711, 0x4706, 0x46FA, 0x46ED, 0x46DF, 0x46D1, 0x46C2, 
    0x46B2, 0x46A2, 0x4692, 0x4682, 0x4672, 0x4661, 0x4651, 0x4641, 
    0x4632, 0x4623, 0x4614, 0x4606, 0x45F8, 0x45EC, 0x45E0, 0x45D6, 
    0x45CC, 0x45C4, 0x45BD, 0x45B7, 0x45B3, 0x45B0, 0x45AF, 0x45B0, 
    0x45B4, 0x45BA, 0x45C1, 0x45CA, 0x45D5, 0x45E2, 0x45EF, 0x45FE, 
    0x460E, 0x461E, 0x462F, 0x4641, 0x4653, 0x4665, 0x4678, 0x468A, 
    0x469B, 0x46AC, 0x46BD, 0x46CD, 0x46DC, 0x46E9, 0x46F6, 0x4700, 
    0x470A, 0x4711, 0x4717, 0x471A, 0xF1C8, 0x038E, 0x471B, 0x471D, 
    0x4720, 0x4726, 0x472D, 0x4736, 0x4741, 0x474E, 0x475B, 0x476A, 
    0x477A, 0x478A, 0x479C, 0x47AD, 0x47BF, 0x47D1, 0x47E4, 0x47F6, 
    0x4807, 0x4819, 0x4829, 0x4839, 0x4848, 0x4855, 0x4862, 0x486C, 
    0x4876, 0x487D, 0x4883, 0x4886, 0x4887, 0x4886, 0x4883, 0x487D, 
    0x4876, 0x486C, 0x4862, 0x4855, 0x4848, 0x4839, 0x4829, 0x4819, 
    0x4807, 0x47F6, 0x47E4, 0x47D1, 0x47BF, 0x47AD, 0x479C, 0x478A, 
    0x477A, 0x476A, 0x475B, 0x474E, 0x4741, 0x4736, 0x472D, 0x4726, 
    0x4720, 0x471D, 0x3FFF, 0x3FFF, 
};

JointKey gHumanThinkingAnimJointKey[] = {
    {      1,      0,     60,      1,      1,     61 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,     62 },
    {      1,     63,      1,     64,      1,     65 },
    {      1,     66,      1,     67,      1,     68 },
    {      1,      0,      1,      0,     60,     69 },
    {      1,      0,      1,      0,     60,    129 },
    {      1,      0,      1,      0,      1,    189 },
    {      1,    190,      1,    191,      1,      0 },
    {      1,    192,      1,    193,      1,    194 },
    {      1,      0,      1,    195,      1,    196 },
    {      1,      0,      1,      0,     60,    197 },
    {      1,      0,      1,      0,     60,    257 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,    317,      1,    318 },
    {      1,      0,      1,      0,      1,    319 },
    {      1,      0,      1,      0,     60,    320 },
    {      1,      0,      1,      0,     60,    380 },
    {      1,    440,      1,      0,      1,    441 },
    {      1,    442,      1,    443,      1,    444 },
    {      1,    445,      1,      0,      1,    446 },
    {      1,      0,      1,    447,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,     60,    448 },
    {      1,    508,      1,    509,     60,    510 },
    {      1,      0,      1,    570,      1,      0 },
    {      1,      0,      1,    571,      1,      0 },
};

LegacyAnimationHeader gHumanThinkingAnim = { 
    60, 41,
    gHumanThinkingAnimFrameData,
    gHumanThinkingAnimJointKey
};

Gfx gHumanArmLeftDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanDressOrnamentsTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00B068, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(1, 4, 2, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 3, 2, 0, 2, 7, 6, 0),
    gsSP2Triangles(8, 9, 4, 0, 10, 11, 4, 0),
    gsSP2Triangles(4, 11, 8, 0, 4, 1, 10, 0),
    gsSP2Triangles(5, 4, 9, 0, 9, 6, 5, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 9, 14, 0),
    gsSP2Triangles(13, 12, 6, 0, 9, 13, 6, 0),
    gsSP2Triangles(3, 12, 0, 0, 6, 12, 3, 0),
    gsSP2Triangles(14, 15, 12, 0, 12, 16, 0, 0),
    gsSP2Triangles(16, 12, 17, 0, 1, 0, 18, 0),
    gsSP2Triangles(18, 0, 16, 0, 18, 10, 1, 0),
    gsSP2Triangles(16, 10, 18, 0, 11, 10, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanArmLeftWrapperDL[] = {
    gsSPDisplayList(gHumanArmLeftDL),
    gsSPEndDisplayList(),
};

Gfx gHumanArmLeftWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanArmLeftWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00B060[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00B068[] = {
#include "assets/objects/object_human/object_humanVtx_00B068.vtx.inc"
};

Gfx gHumanForearmLeftDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanSkinTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00B2B0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 2, 6, 0, 2, 3, 7, 0),
    gsSP2Triangles(6, 2, 1, 0, 8, 7, 3, 0),
    gsSP2Triangles(5, 9, 3, 0, 3, 10, 8, 0),
    gsSP2Triangles(11, 7, 8, 0, 12, 8, 9, 0),
    gsSP2Triangles(8, 12, 13, 0, 1, 0, 11, 0),
    gsSP2Triangles(14, 9, 5, 0, 9, 14, 15, 0),
    gsSP2Triangles(1, 15, 14, 0, 1, 14, 6, 0),
    gsSP2Triangles(6, 14, 5, 0, 11, 15, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanForearmLeftWrapperDL[] = {
    gsSPDisplayList(gHumanForearmLeftDL),
    gsSPEndDisplayList(),
};

Gfx gHumanForearmLeftWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanForearmLeftWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00B2A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00B2B0[] = {
#include "assets/objects/object_human/object_humanVtx_00B2B0.vtx.inc"
};

Gfx gHumanFootLeftDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanShoeTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00B4B0, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 2, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 6, 0, 11, 7, 6, 0),
    gsSP2Triangles(7, 12, 13, 0, 7, 11, 12, 0),
    gsSP2Triangles(8, 14, 15, 0, 8, 15, 16, 0),
    gsSP2Triangles(9, 17, 18, 0, 18, 19, 10, 0),
    gsSP2Triangles(18, 10, 20, 0, 11, 19, 12, 0),
    gsSP2Triangles(11, 10, 19, 0, 21, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanFootLeftWrapperDL[] = {
    gsSPDisplayList(gHumanFootLeftDL),
    gsSPEndDisplayList(),
};

Gfx gHumanFootLeftWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanFootLeftWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00B4A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00B4B0[] = {
#include "assets/objects/object_human/object_humanVtx_00B4B0.vtx.inc"
};

Gfx gHumanHandLeftDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanSkinTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00B778, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 5, 6, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 6, 5, 0, 8, 5, 9, 0),
    gsSP2Triangles(10, 11, 1, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 1, 11, 0, 2, 1, 13, 0),
    gsSP2Triangles(2, 13, 4, 0, 8, 4, 13, 0),
    gsSP2Triangles(9, 4, 8, 0, 13, 12, 14, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanFingersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00B778[15], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 5, 0, 0, 0, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 9, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanHandLeftWrapperDL[] = {
    gsSPDisplayList(gHumanHandLeftDL),
    gsSPEndDisplayList(),
};

Gfx gHumanHandLeftWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanHandLeftWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00B770[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00B778[] = {
#include "assets/objects/object_human/object_humanVtx_00B778.vtx.inc"
};

Gfx gHumanLegLeftDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanSkinTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00BA08, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 3, 1, 0, 1, 0, 6, 0),
    gsSP2Triangles(4, 2, 1, 0, 2, 7, 0, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(4, 3, 9, 0, 9, 12, 13, 0),
    gsSP2Triangles(9, 8, 14, 0, 3, 5, 10, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanLegLeftWrapperDL[] = {
    gsSPDisplayList(gHumanLegLeftDL),
    gsSPEndDisplayList(),
};

Gfx gHumanLegLeftWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanLegLeftWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00BA00[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00BA08[] = {
#include "assets/objects/object_human/object_humanVtx_00BA08.vtx.inc"
};

Gfx gHumanArmRightDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanDressOrnamentsTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00BC20, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 1, 0, 0, 0, 3, 4, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 6, 7, 0),
    gsSP2Triangles(5, 6, 1, 0, 7, 8, 1, 0),
    gsSP2Triangles(2, 1, 8, 0, 2, 8, 9, 0),
    gsSP2Triangles(9, 10, 2, 0, 2, 10, 3, 0),
    gsSP2Triangles(3, 11, 12, 0, 10, 11, 3, 0),
    gsSP2Triangles(3, 12, 4, 0, 11, 13, 14, 0),
    gsSP2Triangles(9, 15, 11, 0, 13, 11, 15, 0),
    gsSP2Triangles(14, 12, 11, 0, 9, 11, 10, 0),
    gsSP2Triangles(5, 4, 12, 0, 16, 9, 8, 0),
    gsSP2Triangles(15, 9, 16, 0, 8, 7, 16, 0),
    gsSP2Triangles(15, 17, 13, 0, 16, 7, 15, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanArmRightWrapperDL[] = {
    gsSPDisplayList(gHumanArmRightDL),
    gsSPEndDisplayList(),
};

Gfx gHumanArmRightWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanArmRightWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00BC18[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00BC20[] = {
#include "assets/objects/object_human/object_humanVtx_00BC20.vtx.inc"
};

Gfx gHumanForearmRightDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanSkinTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00BE48, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 2, 6, 0),
    gsSP2Triangles(4, 7, 5, 0, 8, 0, 4, 0),
    gsSP2Triangles(4, 9, 8, 0, 5, 9, 4, 0),
    gsSP2Triangles(10, 0, 8, 0, 1, 0, 10, 0),
    gsSP2Triangles(9, 5, 11, 0, 3, 11, 5, 0),
    gsSP2Triangles(12, 9, 13, 0, 11, 13, 9, 0),
    gsSP2Triangles(10, 13, 1, 0, 8, 13, 10, 0),
    gsSP2Triangles(13, 14, 1, 0, 1, 14, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanForearmRightWrapperDL[] = {
    gsSPDisplayList(gHumanForearmRightDL),
    gsSPEndDisplayList(),
};

Gfx gHumanForearmRightWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanForearmRightWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00BE40[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00BE48[] = {
#include "assets/objects/object_human/object_humanVtx_00BE48.vtx.inc"
};

Gfx gHumanFootRightDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanShoeTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00C038, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 9, 6, 10, 0),
    gsSP2Triangles(7, 11, 12, 0, 12, 8, 7, 0),
    gsSP2Triangles(13, 14, 15, 0, 10, 13, 15, 0),
    gsSP2Triangles(15, 16, 10, 0, 16, 9, 10, 0),
    gsSP2Triangles(17, 18, 12, 0, 17, 12, 11, 0),
    gsSP2Triangles(18, 8, 12, 0, 19, 17, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanFootRightWrapperDL[] = {
    gsSPDisplayList(gHumanFootRightDL),
    gsSPEndDisplayList(),
};

Gfx gHumanFootRightWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanFootRightWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00C030[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00C038[] = {
#include "assets/objects/object_human/object_humanVtx_00C038.vtx.inc"
};

Gfx gHumanHandRightDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanSkinTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00C2E0, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(3, 4, 1, 0, 3, 0, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 4, 3, 0),
    gsSP2Triangles(3, 6, 7, 0, 8, 4, 7, 0),
    gsSP2Triangles(4, 9, 10, 0, 9, 4, 8, 0),
    gsSP2Triangles(8, 11, 9, 0, 12, 11, 8, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 6, 12, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanFingersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00C2E0[13], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(2, 1, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 6, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanHandRightWrapperDL[] = {
    gsSPDisplayList(gHumanHandRightDL),
    gsSPEndDisplayList(),
};

Gfx gHumanHandRightWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanHandRightWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00C2D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00C2E0[] = {
#include "assets/objects/object_human/object_humanVtx_00C2E0.vtx.inc"
};

Gfx gHumanLegRightDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanSkinTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00C540, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 6, 2, 0, 2, 6, 7, 0),
    gsSP2Triangles(2, 3, 5, 0, 4, 8, 9, 0),
    gsSP2Triangles(10, 9, 8, 0, 8, 11, 10, 0),
    gsSP2Triangles(12, 9, 10, 0, 13, 10, 11, 0),
    gsSP2Triangles(11, 7, 6, 0, 10, 6, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanLegRightWrapperDL[] = {
    gsSPDisplayList(gHumanLegRightDL),
    gsSPEndDisplayList(),
};

Gfx gHumanLegRightWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanLegRightWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00C538[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00C540[] = {
#include "assets/objects/object_human/object_humanVtx_00C540.vtx.inc"
};

Gfx gHumanTorsoDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(object_human_Tex_010C28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00C8D8, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 11, 12, 0),
    gsSP2Triangles(9, 12, 7, 0, 13, 11, 9, 0),
    gsSP1Triangle(9, 10, 13, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanDressOrnamentsTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00C8D8[14], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 4, 0, 0, 4, 3, 5, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 4, 8, 0),
    gsSP2Triangles(4, 7, 0, 0, 8, 4, 5, 0),
    gsSP2Triangles(9, 7, 8, 0, 10, 7, 9, 0),
    gsSP2Triangles(10, 0, 7, 0, 11, 1, 0, 0),
    gsSP2Triangles(11, 0, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 6, 12, 0, 12, 14, 15, 0),
    gsSP2Triangles(5, 6, 15, 0, 15, 16, 5, 0),
    gsSP2Triangles(17, 1, 11, 0, 9, 18, 10, 0),
    gsSP2Triangles(10, 18, 11, 0, 8, 16, 9, 0),
    gsSP2Triangles(5, 16, 8, 0, 11, 18, 19, 0),
    gsSP2Triangles(19, 17, 11, 0, 12, 6, 20, 0),
    gsSP1Triangle(20, 13, 12, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanBeltTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00C8D8[35], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 4, 0, 0, 0, 5, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 6, 8, 0, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 13, 0),
    gsSP2Triangles(13, 10, 9, 0, 14, 15, 11, 0),
    gsSP2Triangles(14, 16, 17, 0, 17, 15, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 9, 18, 0),
    gsSP1Triangle(18, 9, 21, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanNeckTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00C8D8[57], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 4, 3, 0),
    gsSP1Triangle(7, 8, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanTorsoWrapperDL[] = {
    gsSPDisplayList(gHumanTorsoDL),
    gsSPEndDisplayList(),
};

Gfx gHumanTorsoWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanTorsoWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00C8D0[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00C8D8[] = {
#include "assets/objects/object_human/object_humanVtx_00C8D8.vtx.inc"
};

Gfx gHumanHairDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanHairTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00CDF0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 5, 0, 0, 3, 5, 0),
    gsSP2Triangles(5, 6, 0, 0, 0, 6, 1, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 7, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 5, 7, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 1, 13, 10, 0),
    gsSP2Triangles(11, 10, 13, 0, 11, 13, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanHairWrapperDL[] = {
    gsSPDisplayList(gHumanHairDL),
    gsSPEndDisplayList(),
};

Gfx gHumanHairWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanHairWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00CDE8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00CDF0[] = {
#include "assets/objects/object_human/object_humanVtx_00CDF0.vtx.inc"
};

Gfx gHumanHeadDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00D528, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(0x0A000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gHumanTLUT),
    gsSPVertex(&object_humanVtx_00D528[3], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP1Triangle(3, 4, 2, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00D528[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00D528[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(0x0B000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00D528[16], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(0x0C000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00D528[21], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(0, 2, 4, 0, 1, 5, 2, 0),
    gsSP1Triangle(6, 5, 1, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(0x0D000000, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00D528[28], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 1, 0, 2, 1, 8, 0),
    gsSP2Triangles(9, 1, 5, 0, 1, 7, 8, 0),
    gsSP2Triangles(6, 1, 9, 0, 10, 11, 2, 0),
    gsSP2Triangles(2, 11, 3, 0, 2, 8, 10, 0),
    gsSP2Triangles(9, 5, 12, 0, 13, 6, 9, 0),
    gsSP2Triangles(9, 14, 13, 0, 12, 14, 9, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 16, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 18, 0, 28, 29, 30, 0),
    gsSPVertex(&object_humanVtx_00D528[59], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(0x0D000000, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00D528[64], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 9, 6, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gHumanHairTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00D528[74], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 1, 0, 0, 0, 3, 6, 0),
    gsSP2Triangles(6, 5, 0, 0, 7, 3, 8, 0),
    gsSP2Triangles(3, 4, 8, 0, 6, 3, 7, 0),
    gsSP2Triangles(9, 5, 6, 0, 10, 11, 12, 0),
    gsSP2Triangles(12, 11, 13, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 16, 13, 0, 17, 14, 13, 0),
    gsSP2Triangles(4, 18, 8, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 20, 0, 24, 20, 19, 0),
    gsSP2Triangles(25, 21, 20, 0, 20, 23, 25, 0),
    gsSP2Triangles(20, 24, 22, 0, 26, 21, 25, 0),
    gsSP2Triangles(19, 27, 24, 0, 24, 27, 28, 0),
    gsSP2Triangles(24, 28, 22, 0, 29, 30, 31, 0),
    gsSPVertex(&object_humanVtx_00D528[106], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 14, 13, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 20, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(22, 17, 20, 0, 23, 18, 17, 0),
    gsSP2Triangles(17, 24, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 14, 28, 26, 0),
    gsSP2Triangles(29, 26, 25, 0, 26, 29, 15, 0),
    gsSP2Triangles(14, 26, 15, 0, 14, 16, 28, 0),
    gsSP2Triangles(18, 23, 30, 0, 23, 31, 30, 0),
    gsSPVertex(&object_humanVtx_00D528[138], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 14, 13, 0),
    gsSP2Triangles(13, 16, 15, 0, 17, 15, 16, 0),
    gsSP2Triangles(17, 18, 15, 0, 14, 15, 18, 0),
    gsSP2Triangles(19, 2, 1, 0, 11, 20, 9, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(26, 25, 27, 0, 26, 28, 24, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanEarTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00D528[167], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanHairSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00D528[175], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 6, 9, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanHeadWrapperDL[] = {
    gsSPDisplayList(gHumanHeadDL),
    gsSPEndDisplayList(),
};

Gfx gHumanHeadWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanHeadWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00D520[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00D528[] = {
#include "assets/objects/object_human/object_humanVtx_00D528.vtx.inc"
};

Gfx gHumanWaistDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanDressOrnamentsTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00E240, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 5, 0, 2, 6, 0, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 6, 5, 0),
    gsSP2Triangles(7, 4, 8, 0, 9, 8, 4, 0),
    gsSP2Triangles(1, 4, 7, 0, 2, 1, 7, 0),
    gsSP2Triangles(9, 10, 8, 0, 11, 10, 12, 0),
    gsSP2Triangles(10, 11, 13, 0, 10, 13, 8, 0),
    gsSP2Triangles(12, 10, 3, 0, 6, 11, 5, 0),
    gsSP2Triangles(12, 5, 11, 0, 3, 5, 12, 0),
    gsSP2Triangles(8, 13, 14, 0, 14, 7, 8, 0),
    gsSP1Triangle(7, 14, 2, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanBeltTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_humanVtx_00E240[15], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 0, 2, 0),
    gsSP1Triangle(4, 6, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanWaistWrapperDL[] = {
    gsSPDisplayList(gHumanWaistDL),
    gsSPEndDisplayList(),
};

Gfx gHumanWaistWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanWaistWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00E238[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00E240[] = {
#include "assets/objects/object_human/object_humanVtx_00E240.vtx.inc"
};

Gfx gHumanDressLowerDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHumanDressOrnamentsTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_humanVtx_00E4A8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 1, 0, 5, 0),
    gsSP2Triangles(3, 1, 4, 0, 2, 6, 0, 0),
    gsSP2Triangles(5, 7, 4, 0, 5, 8, 7, 0),
    gsSP2Triangles(4, 7, 3, 0, 9, 2, 3, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 11, 10, 0, 10, 15, 14, 0),
    gsSP2Triangles(12, 7, 8, 0, 7, 12, 3, 0),
    gsSP2Triangles(12, 9, 3, 0, 8, 13, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gHumanDressLowerWrapperDL[] = {
    gsSPDisplayList(gHumanDressLowerDL),
    gsSPEndDisplayList(),
};

Gfx gHumanDressLowerWrapperWrapperDL[] = {
    gsSPDisplayList(gHumanDressLowerWrapperDL),
    gsSPEndDisplayList(),
};

u8 object_human_possiblePadding_00E4A0[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_humanVtx_00E4A8[] = {
#include "assets/objects/object_human/object_humanVtx_00E4A8.vtx.inc"
};

u64 gHumanEarTex[] = {
#include "assets/objects/object_human/ear.rgba16.inc.c"
};

u64 gHumanDressOrnamentsTex[] = {
#include "assets/objects/object_human/dress_ornaments.rgba16.inc.c"
};

u64 gHumanBeltTex[] = {
#include "assets/objects/object_human/belt.rgba16.inc.c"
};

u64 gHumanFingersTex[] = {
#include "assets/objects/object_human/fingers.rgba16.inc.c"
};

u64 gHumanNeckTex[] = {
#include "assets/objects/object_human/neck.rgba16.inc.c"
};

u64 gHumanHairSideTex[] = {
#include "assets/objects/object_human/hair_side.rgba16.inc.c"
};

u64 gHumanHairTex[] = {
#include "assets/objects/object_human/hair.rgba16.inc.c"
};

u64 object_human_Tex_010C28[] = {
#include "assets/objects/object_human/object_human_Tex_010C28.rgba16.inc.c"
};

u64 gHumanSkinTex[] = {
#include "assets/objects/object_human/skin.rgba16.inc.c"
};

u64 gHumanShoeTex[] = {
#include "assets/objects/object_human/shoe.rgba16.inc.c"
};

s16 gHumanIdleAnimFrameData[] = {
    0x0000, 0x0D7B, 0x0D7A, 0x0D79, 0x0D78, 0x0D76, 0x0D74, 0x0D72, 
    0x0D6F, 0x0D6B, 0x0D68, 0x0D64, 0x0D60, 0x0D5C, 0x0D58, 0x0D54, 
    0x0D4F, 0x0D4B, 0x0D47, 0x0D43, 0x0D3F, 0x0D3B, 0x0D37, 0x0D33, 
    0x0D30, 0x0D2D, 0x0D2B, 0x0D29, 0x0D27, 0x0D25, 0x0D25, 0x0D24, 
    0x0D25, 0x0D25, 0x0D27, 0x0D29, 0x0D2B, 0x0D2D, 0x0D30, 0x0D33, 
    0x0D37, 0x0D3B, 0x0D3E, 0x0D43, 0x0D47, 0x0D4B, 0x0D4F, 0x0D53, 
    0x0D58, 0x0D5C, 0x0D60, 0x0D64, 0x0D68, 0x0D6B, 0x0D6E, 0x0D71, 
    0x0D74, 0x0D76, 0x0D78, 0x0D79, 0x0D7A, 0x0D7B, 0x0028, 0xC3DC, 
    0xEE3A, 0xFFE7, 0x11C6, 0xFFE7, 0xC001, 0xBFF9, 0xBFE1, 0xBFBB, 
    0xBF87, 0xBF48, 0xBEFD, 0xBEA8, 0xBE4A, 0xBDE4, 0xBD78, 0xBD06, 
    0xBC90, 0xBC16, 0xBB9A, 0xBB1D, 0xBAA0, 0xBA25, 0xB9AB, 0xB935, 
    0xB8C3, 0xB856, 0xB7F1, 0xB793, 0xB73E, 0xB6F3, 0xB6B3, 0xB680, 
    0xB65A, 0xB642, 0xB63A, 0xB642, 0xB65A, 0xB680, 0xB6B3, 0xB6F3, 
    0xB73E, 0xB793, 0xB7F1, 0xB856, 0xB8C3, 0xB935, 0xB9AB, 0xBA25, 
    0xBAA0, 0xBB1D, 0xBB9A, 0xBC16, 0xBC90, 0xBD06, 0xBD78, 0xBDE4, 
    0xBE4A, 0xBEA8, 0xBEFD, 0xBF48, 0xBF87, 0xBFBB, 0xBFE1, 0xBFF9, 
    0xC001, 0xC001, 0xBFF9, 0xBFE1, 0xBFBB, 0xBF87, 0xBF48, 0xBEFD, 
    0xBEA8, 0xBE4A, 0xBDE4, 0xBD78, 0xBD06, 0xBC90, 0xBC16, 0xBB9A, 
    0xBB1D, 0xBAA0, 0xBA25, 0xB9AB, 0xB935, 0xB8C3, 0xB856, 0xB7F1, 
    0xB793, 0xB73E, 0xB6F3, 0xB6B3, 0xB680, 0xB65A, 0xB642, 0xB63A, 
    0xB642, 0xB65A, 0xB680, 0xB6B3, 0xB6F3, 0xB73E, 0xB793, 0xB7F1, 
    0xB856, 0xB8C3, 0xB935, 0xB9AB, 0xBA25, 0xBAA0, 0xBB1D, 0xBB9A, 
    0xBC16, 0xBC90, 0xBD06, 0xBD78, 0xBDE4, 0xBE4A, 0xBEA8, 0xBEFD, 
    0xBF48, 0xBF87, 0xBFBB, 0xBFE1, 0xBFF9, 0xC001, 0xC001, 0x8001, 
    0x8001, 0xFE4A, 0xFE4A, 0x0000, 0x013A, 0x0266, 0x038C, 0x04AB, 
    0x05C4, 0x06D4, 0x07DD, 0x08DE, 0x09D8, 0x0AC9, 0x0BB2, 0x0C92, 
    0x0D69, 0x0E37, 0x0EFC, 0x0FB8, 0x106A, 0x1111, 0x11AF, 0x1241, 
    0x12C8, 0x1343, 0x13B3, 0x1416, 0x146B, 0x14B3, 0x14EC, 0x1517, 
    0x1531, 0x153A, 0x1531, 0x1517, 0x14ED, 0x14B4, 0x146D, 0x1418, 
    0x13B6, 0x1347, 0x12CD, 0x1247, 0x11B5, 0x1119, 0x1073, 0x0FC3, 
    0x0F08, 0x0E45, 0x0D78, 0x0CA2, 0x0BC3, 0x0ADC, 0x09ED, 0x08F5, 
    0x07F6, 0x06EF, 0x05E0, 0x04CA, 0x03AC, 0x0288, 0x015E, 0x0046, 
    0x003A, 0x013A, 0x0266, 0x038C, 0x04AB, 0x05C3, 0x06D4, 0x07DD, 
    0x08DE, 0x09D8, 0x0AC9, 0x0BB1, 0x0C92, 0x0D69, 0x0E37, 0x0EFC, 
    0x0FB8, 0x106A, 0x1111, 0x11AE, 0x1241, 0x12C8, 0x1343, 0x13B3, 
    0x1416, 0x146B, 0x14B3, 0x14EC, 0x1517, 0x1531, 0x1539, 0x1531, 
    0x1517, 0x14ED, 0x14B4, 0x146D, 0x1418, 0x13B6, 0x1347, 0x12CD, 
    0x1247, 0x11B5, 0x1119, 0x1073, 0x0FC2, 0x0F08, 0x0E45, 0x0D78, 
    0x0CA2, 0x0BC3, 0x0ADC, 0x09ED, 0x08F5, 0x07F6, 0x06EF, 0x05E0, 
    0x04C9, 0x03AC, 0x0288, 0x015E, 0x0044, 0xBF7C, 0xBF7D, 0xC001, 
    0xBF52, 0xBEAB, 0xBE07, 0xBD67, 0xBCCB, 0xBC34, 0xBBA0, 0xBB11, 
    0xBA86, 0xB9FF, 0xB97E, 0xB901, 0xB889, 0xB815, 0xB7A7, 0xB73F, 
    0xB6DB, 0xB67E, 0xB626, 0xB5D4, 0xB588, 0xB543, 0xB505, 0xB4CE, 
    0xB49E, 0xB475, 0xB455, 0xB43E, 0xB42F, 0xB42A, 0xB42F, 0xB43D, 
    0xB455, 0xB475, 0xB49D, 0xB4CC, 0xB503, 0xB541, 0xB586, 0xB5D1, 
    0xB622, 0xB679, 0xB6D6, 0xB739, 0xB7A1, 0xB80E, 0xB880, 0xB8F8, 
    0xB974, 0xB9F5, 0xBA7A, 0xBB04, 0xBB92, 0xBC25, 0xBCBC, 0xBD57, 
    0xBDF5, 0xBE98, 0xBF3E, 0xBFDA, 0xBFE0, 0xBF52, 0xBEAB, 0xBE07, 
    0xBD68, 0xBCCC, 0xBC34, 0xBBA0, 0xBB11, 0xBA86, 0xB9FF, 0xB97E, 
    0xB901, 0xB889, 0xB815, 0xB7A7, 0xB73F, 0xB6DB, 0xB67E, 0xB626, 
    0xB5D4, 0xB588, 0xB543, 0xB505, 0xB4CE, 0xB49E, 0xB475, 0xB455, 
    0xB43E, 0xB42F, 0xB42A, 0xB42F, 0xB43D, 0xB455, 0xB475, 0xB49D, 
    0xB4CC, 0xB503, 0xB541, 0xB586, 0xB5D1, 0xB622, 0xB679, 0xB6D6, 
    0xB739, 0xB7A1, 0xB80E, 0xB880, 0xB8F8, 0xB974, 0xB9F5, 0xBA7A, 
    0xBB04, 0xBB92, 0xBC25, 0xBCBC, 0xBD57, 0xBDF6, 0xBE98, 0xBF3E, 
    0xBFDB, 0xF843, 0xC001, 0x1FFF, 0x3FFF, 0x1FFF, 0x07BD, 0xC001, 
    0x3FFF, 0x3FFF, 0x3FFE, 0x3FFA, 0x3FF5, 0x3FED, 0x3FE4, 0x3FD9, 
    0x3FCD, 0x3FBF, 0x3FB0, 0x3FA1, 0x3F90, 0x3F7F, 0x3F6D, 0x3F5B, 
    0x3F49, 0x3F37, 0x3F25, 0x3F13, 0x3F02, 0x3EF1, 0x3EE2, 0x3ED3, 
    0x3EC5, 0x3EB9, 0x3EAE, 0x3EA5, 0x3E9D, 0x3E98, 0x3E94, 0x3E93, 
    0x3E94, 0x3E98, 0x3E9D, 0x3EA5, 0x3EAE, 0x3EB9, 0x3EC5, 0x3ED3, 
    0x3EE2, 0x3EF1, 0x3F02, 0x3F13, 0x3F25, 0x3F37, 0x3F49, 0x3F5B, 
    0x3F6D, 0x3F7F, 0x3F90, 0x3FA1, 0x3FB0, 0x3FBF, 0x3FCD, 0x3FD9, 
    0x3FE4, 0x3FED, 0x3FF5, 0x3FFA, 0x3FFE, 0x3FFF, 0x3FFF, 0x4000, 
    0x4004, 0x4009, 0x4011, 0x401A, 0x4025, 0x4031, 0x403F, 0x404E, 
    0x405D, 0x406E, 0x407F, 0x4091, 0x40A3, 0x40B5, 0x40C7, 0x40D9, 
    0x40EB, 0x40FC, 0x410D, 0x411C, 0x412B, 0x4139, 0x4145, 0x4150, 
    0x4159, 0x4161, 0x4166, 0x416A, 0x416B, 0x416A, 0x4166, 0x4161, 
    0x4159, 0x4150, 0x4145, 0x4139, 0x412B, 0x411C, 0x410D, 0x40FC, 
    0x40EB, 0x40D9, 0x40C7, 0x40B5, 0x40A3, 0x4091, 0x407F, 0x406E, 
    0x405D, 0x404E, 0x403F, 0x4031, 0x4025, 0x401A, 0x4011, 0x4009, 
    0x4004, 0x4000, 0x3FFF, 0x3FFF, 0x3FFF, 0x0000, 
};

JointKey gHumanIdleAnimJointKey[] = {
    {      1,      0,     61,      1,      1,     62 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,     63 },
    {      1,      0,      1,     64,      1,     65 },
    {      1,      0,      1,     66,      1,     67 },
    {      1,      0,      1,      0,     61,     68 },
    {      1,      0,      1,      0,     61,    129 },
    {      1,      0,      1,      0,      1,    190 },
    {      1,    191,      1,    192,      1,      0 },
    {      1,      0,      1,      0,      1,    193 },
    {      1,      0,      1,      0,      1,    194 },
    {      1,      0,      1,      0,     61,    195 },
    {      1,      0,      1,      0,     61,    256 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,    317 },
    {      1,      0,      1,      0,      1,    318 },
    {      1,      0,      1,      0,     61,    319 },
    {      1,      0,      1,      0,     61,    380 },
    {      1,    441,      1,      0,      1,    442 },
    {      1,    443,      1,    444,      1,    445 },
    {      1,    446,      1,      0,      1,    447 },
    {      1,      0,      1,    448,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,     61,    449 },
    {      1,      0,      1,      0,     61,    510 },
    {      1,      0,      1,    571,      1,      0 },
    {      1,      0,      1,    572,      1,      0 },
};

LegacyAnimationHeader gHumanIdleAnim = { 
    61, 41,
    gHumanIdleAnimFrameData,
    gHumanIdleAnimJointKey
};

LegacyLimb gHumanDressLowerLimb = { 
    gHumanDressLowerWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanWaistLimb = { 
    gHumanWaistWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanHairLimb = { 
    gHumanHairWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanHandRightLimb = { 
    gHumanHandRightWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanForearmRightLimb = { 
    gHumanForearmRightWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanArmRightLimb = { 
    gHumanArmRightWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanHandLeftLimb = { 
    gHumanHandLeftWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanForearmLeftLimb = { 
    gHumanForearmLeftWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanArmLeftLimb = { 
    gHumanArmLeftWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanFootLeftLimb = { 
    gHumanFootLeftWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanLegLeftLimb = { 
    gHumanLegLeftWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanFootRightLimb = { 
    gHumanFootRightWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb gHumanLegRightLimb = { 
    gHumanLegRightWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    NULL
};

LegacyLimb object_human_Limb_011C48 = { 
    NULL,
    { 567.099976f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    &gHumanWaistLimb,
    &gHumanDressLowerLimb
};

LegacyLimb object_human_Limb_011C68 = { 
    NULL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0xC3DC },
    NULL,
    &gHumanHairLimb
};

LegacyLimb object_human_Limb_011C88 = { 
    NULL,
    { 718.299988f, 0.000000f, 0.000000f },
    { 0x0000, 0xEE3A, 0xFFE7 },
    &gHumanForearmRightLimb,
    &gHumanHandRightLimb
};

LegacyLimb object_human_Limb_011CA8 = { 
    NULL,
    { 718.200012f, 0.000000f, 0.000000f },
    { 0x0000, 0x11C6, 0xFFE7 },
    &gHumanForearmLeftLimb,
    &gHumanHandLeftLimb
};

LegacyLimb object_human_Limb_011CC8 = { 
    NULL,
    { 1440.400024f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0xC001 },
    &gHumanLegLeftLimb,
    &gHumanFootLeftLimb
};

LegacyLimb object_human_Limb_011CE8 = { 
    NULL,
    { 1440.400024f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0xC001 },
    &gHumanLegRightLimb,
    &gHumanFootRightLimb
};

LegacyLimb object_human_Limb_011D08 = { 
    NULL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0xC001 },
    NULL,
    &object_human_Limb_011C48
};

LegacyLimb object_human_Limb_011D28 = { 
    NULL,
    { -1222.599976f, -54.700001f, 0.000000f },
    { 0x8001, 0x8001, 0x0000 },
    NULL,
    &object_human_Limb_011C68
};

LegacyLimb object_human_Limb_011D48 = { 
    NULL,
    { 846.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0xFE4A },
    &gHumanArmRightLimb,
    &object_human_Limb_011C88
};

LegacyLimb object_human_Limb_011D68 = { 
    NULL,
    { 846.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0xFE4A },
    &gHumanArmLeftLimb,
    &object_human_Limb_011CA8
};

LegacyLimb object_human_Limb_011D88 = { 
    NULL,
    { 1148.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x003A },
    NULL,
    &object_human_Limb_011CC8
};

LegacyLimb object_human_Limb_011DA8 = { 
    NULL,
    { 1148.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x003A },
    NULL,
    &object_human_Limb_011CE8
};

LegacyLimb object_human_Limb_011DC8 = { 
    NULL,
    { 858.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    &object_human_Limb_011D28
};

LegacyLimb gHumanHeadLimb = { 
    gHumanHeadWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    &object_human_Limb_011DC8,
    NULL
};

LegacyLimb object_human_Limb_011E08 = { 
    NULL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0xBF7C },
    NULL,
    &object_human_Limb_011D48
};

LegacyLimb object_human_Limb_011E28 = { 
    NULL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0xBF7D },
    NULL,
    &object_human_Limb_011D68
};

LegacyLimb object_human_Limb_011E48 = { 
    NULL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0xBFE0 },
    NULL,
    &object_human_Limb_011D88
};

LegacyLimb object_human_Limb_011E68 = { 
    NULL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0xBFE0 },
    NULL,
    &object_human_Limb_011DA8
};

LegacyLimb object_human_Limb_011E88 = { 
    NULL,
    { 852.400024f, 54.500000f, 603.100037f },
    { 0xF843, 0x0000, 0xC001 },
    NULL,
    &object_human_Limb_011E28
};

LegacyLimb object_human_Limb_011EA8 = { 
    NULL,
    { -266.000000f, -534.700012f, 5.300000f },
    { 0x1FFF, 0x3FFF, 0x1FFF },
    NULL,
    &object_human_Limb_011E68
};

LegacyLimb object_human_Limb_011EC8 = { 
    NULL,
    { 852.400024f, 54.500000f, -603.100037f },
    { 0x07BD, 0x0000, 0xC001 },
    &object_human_Limb_011E88,
    &object_human_Limb_011E08
};

LegacyLimb object_human_Limb_011EE8 = { 
    NULL,
    { 266.000000f, -534.700012f, 5.300000f },
    { 0x0000, 0x3FFF, 0x0000 },
    &object_human_Limb_011EA8,
    &object_human_Limb_011E48
};

LegacyLimb gHumanTorsoLimb = { 
    gHumanTorsoWrapperWrapperDL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x0000 },
    &object_human_Limb_011EC8,
    NULL
};

LegacyLimb object_human_Limb_011F28 = { 
    NULL,
    { 1320.599976f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x3FFF },
    &gHumanTorsoLimb,
    &gHumanHeadLimb
};

LegacyLimb object_human_Limb_011F48 = { 
    NULL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x0000, 0x3FFF },
    NULL,
    &object_human_Limb_011F28
};

LegacyLimb object_human_Limb_011F68 = { 
    NULL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x3FFF, 0x0000 },
    &object_human_Limb_011EE8,
    &object_human_Limb_011F48
};

LegacyLimb object_human_Limb_011F88 = { 
    NULL,
    { 0.000000f, 0.000000f, 0.000000f },
    { 0x0000, 0x3FFF, 0x0000 },
    &object_human_Limb_011F68,
    &object_human_Limb_011D08
};

LegacyLimb gHumanRootLimb = { 
    NULL,
    { 0.000000f, 3451.100098f, 40.500000f },
    { 0x0000, 0x0000, 0x0000 },
    NULL,
    &object_human_Limb_011F88
};

LegacyLimb* gHumanLimbTable[] = {
    &gHumanRootLimb,
    &gHumanDressLowerLimb,
    &gHumanWaistLimb,
    &gHumanHairLimb,
    &gHumanHandRightLimb,
    &gHumanForearmRightLimb,
    &gHumanArmRightLimb,
    &gHumanHandLeftLimb,
    &gHumanForearmLeftLimb,
    &gHumanArmLeftLimb,
    &gHumanFootLeftLimb,
    &gHumanLegLeftLimb,
    &gHumanFootRightLimb,
    &gHumanLegRightLimb,
    &object_human_Limb_011C48,
    &object_human_Limb_011C68,
    &object_human_Limb_011C88,
    &object_human_Limb_011CA8,
    &object_human_Limb_011CC8,
    &object_human_Limb_011CE8,
    &object_human_Limb_011D08,
    &object_human_Limb_011D28,
    &object_human_Limb_011D48,
    &object_human_Limb_011D68,
    &object_human_Limb_011D88,
    &object_human_Limb_011DA8,
    &object_human_Limb_011DC8,
    &gHumanHeadLimb,
    &object_human_Limb_011E08,
    &object_human_Limb_011E28,
    &object_human_Limb_011E48,
    &object_human_Limb_011E68,
    &object_human_Limb_011E88,
    &object_human_Limb_011EA8,
    &object_human_Limb_011EC8,
    &object_human_Limb_011EE8,
    &gHumanTorsoLimb,
    &object_human_Limb_011F28,
    &object_human_Limb_011F48,
    &object_human_Limb_011F68,
    &object_human_Limb_011F88,
};

u8 object_human_possiblePadding_01206C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 gHumanWalkingAnimFrameData[] = {
    0x0000, 0x0CFE, 0x0D01, 0x0D0B, 0x0D19, 0x0D2A, 0x0D3C, 0x0D4F, 
    0x0D60, 0x0D6E, 0x0D77, 0x0D7B, 0x0D77, 0x0D6E, 0x0D60, 0x0D4F, 
    0x0D3C, 0x0D2A, 0x0D19, 0x0D0B, 0x0D01, 0x0CFE, 0x0D01, 0x0D0B, 
    0x0D19, 0x0D2A, 0x0D3C, 0x0D4F, 0x0D60, 0x0D6E, 0x0D77, 0x0D7B, 
    0x0D77, 0x0D6E, 0x0D60, 0x0D4F, 0x0D3C, 0x0D2A, 0x0D19, 0x0D0B, 
    0x0D01, 0x0028, 0xFCE1, 0xFCAB, 0xFC82, 0xFC72, 0xFC80, 0xFCA5, 
    0xFCE1, 0xFD30, 0xFD8F, 0xFDFC, 0xFE73, 0xFEF3, 0xFF78, 0x0000, 
    0x0088, 0x010D, 0x018D, 0x0204, 0x0271, 0x02D0, 0x031F, 0x035B, 
    0x0380, 0x038E, 0x0380, 0x035B, 0x031F, 0x02D0, 0x0271, 0x0204, 
    0x018D, 0x010D, 0x0088, 0x0000, 0xFF78, 0xFEF3, 0xFE73, 0xFDFC, 
    0xFD8F, 0xFD30, 0xC6CB, 0xC67D, 0xC5C3, 0xC4E4, 0xC42A, 0xC3DC, 
    0xC3E6, 0xC400, 0xC42A, 0xC460, 0xC49F, 0xC4E4, 0xC52E, 0xC579, 
    0xC5C3, 0xC608, 0xC647, 0xC67D, 0xC6A6, 0xC6C1, 0xC6CB, 0xC67D, 
    0xC5C3, 0xC4E4, 0xC42A, 0xC3DC, 0xC3E6, 0xC400, 0xC42A, 0xC460, 
    0xC49F, 0xC4E4, 0xC52E, 0xC579, 0xC5C3, 0xC608, 0xC647, 0xC67D, 
    0xC6A6, 0xC6C1, 0x071C, 0x0701, 0x06B6, 0x063F, 0x05A1, 0x04E3, 
    0x0409, 0x031A, 0x021A, 0x0110, 0x0000, 0xFEF0, 0xFDE6, 0xFCE6, 
    0xFBF7, 0xFB1D, 0xFA5F, 0xF9C1, 0xF94A, 0xF8FF, 0xF8E4, 0xF8FF, 
    0xF94A, 0xF9C1, 0xFA5F, 0xFB1D, 0xFBF7, 0xFCE6, 0xFDE6, 0xFEF0, 
    0x0000, 0x0110, 0x021A, 0x031A, 0x0409, 0x04E3, 0x05A1, 0x063F, 
    0x06B6, 0x0701, 0xEE3A, 0xFC72, 0xFC65, 0xFC3F, 0xFC04, 0xFBB5, 
    0xFB56, 0xFAE9, 0xFA71, 0xF9F2, 0xF96C, 0xF8E4, 0xF85C, 0xF7D7, 
    0xF757, 0xF6DF, 0xF672, 0xF613, 0xF5C5, 0xF589, 0xF563, 0xF556, 
    0xF563, 0xF589, 0xF5C5, 0xF613, 0xF672, 0xF6DF, 0xF757, 0xF7D7, 
    0xF85C, 0xF8E4, 0xF96C, 0xF9F2, 0xFA71, 0xFAE9, 0xFB56, 0xFBB5, 
    0xFC04, 0xFC3F, 0xFC65, 0x071C, 0x0701, 0x06B6, 0x063F, 0x05A1, 
    0x04E3, 0x0409, 0x031A, 0x021A, 0x0110, 0x0000, 0xFEF0, 0xFDE6, 
    0xFCE6, 0xFBF7, 0xFB1D, 0xFA5F, 0xF9C1, 0xF94A, 0xF8FF, 0xF8E4, 
    0xF8FF, 0xF94A, 0xF9C1, 0xFA5F, 0xFB1D, 0xFBF7, 0xFCE6, 0xFDE6, 
    0xFEF0, 0x0000, 0x0110, 0x021A, 0x031A, 0x0409, 0x04E3, 0x05A1, 
    0x063F, 0x06B6, 0x0701, 0x11C6, 0xF556, 0xF563, 0xF589, 0xF5C5, 
    0xF613, 0xF672, 0xF6DF, 0xF757, 0xF7D7, 0xF85C, 0xF8E4, 0xF96C, 
    0xF9F2, 0xFA71, 0xFAE9, 0xFB56, 0xFBB5, 0xFC04, 0xFC3F, 0xFC65, 
    0xFC72, 0xFC65, 0xFC3F, 0xFC04, 0xFBB5, 0xFB56, 0xFAE9, 0xFA71, 
    0xF9F2, 0xF96C, 0xF8E4, 0xF85C, 0xF7D7, 0xF757, 0xF6DF, 0xF672, 
    0xF613, 0xF5C5, 0xF589, 0xF563, 0xB04D, 0xB112, 0xB37A, 0xB556, 
    0xB61B, 0xB6B6, 0xB735, 0xB7A1, 0xB805, 0xB86E, 0xB8E5, 0xB94A, 
    0xB989, 0xB9BF, 0xBA07, 0xBA80, 0xBB45, 0xBC73, 0xBC27, 0xBD47, 
    0xC71D, 0xC6B4, 0xC61B, 0xC557, 0xC46C, 0xC35E, 0xC234, 0xC0F1, 
    0xBF9B, 0xBE36, 0xBCC6, 0xBB51, 0xB9DB, 0xB86A, 0xB701, 0xB5A5, 
    0xB45C, 0xB32A, 0xB213, 0xB11D, 0xC71D, 0xC6B4, 0xC61B, 0xC557, 
    0xC46C, 0xC35E, 0xC234, 0xC0F1, 0xBF9B, 0xBE36, 0xBCC6, 0xBB51, 
    0xB9DB, 0xB86A, 0xB701, 0xB5A5, 0xB45C, 0xB32A, 0xB213, 0xB11D, 
    0xB04D, 0xB112, 0xB37A, 0xB556, 0xB61B, 0xB6B6, 0xB735, 0xB7A1, 
    0xB805, 0xB86E, 0xB8E5, 0xB94A, 0xB989, 0xB9BF, 0xBA07, 0xBA80, 
    0xBB45, 0xBC73, 0xBC38, 0xBD69, 0xF8E4, 0xF8FF, 0xF94A, 0xF9C1, 
    0xFA5F, 0xFB1D, 0xFBF7, 0xFCE6, 0xFDE6, 0xFEF0, 0x0000, 0x0110, 
    0x021A, 0x031A, 0x0409, 0x04E3, 0x05A1, 0x063F, 0x06B6, 0x0701, 
    0x071C, 0x0701, 0x06B6, 0x063F, 0x05A1, 0x04E3, 0x0409, 0x031A, 
    0x021A, 0x0110, 0x0000, 0xFEF0, 0xFDE6, 0xFCE6, 0xFBF7, 0xFB1D, 
    0xFA5F, 0xF9C1, 0xF94A, 0xF8FF, 0xC001, 0x8001, 0x8001, 0xFC72, 
    0xFC69, 0xFC4F, 0xFC25, 0xFBEE, 0xFBAB, 0xFB5F, 0xFB0B, 0xFAB2, 
    0xFA54, 0xF9F5, 0xF996, 0xF939, 0xF8DF, 0xF88B, 0xF83F, 0xF7FD, 
    0xF7C5, 0xF79C, 0xF781, 0xF778, 0xF781, 0xF79C, 0xF7C5, 0xF7FD, 
    0xF83F, 0xF88B, 0xF8DF, 0xF939, 0xF996, 0xF9F5, 0xFA54, 0xFAB2, 
    0xFB0B, 0xFB5F, 0xFBAB, 0xFBEE, 0xFC25, 0xFC4F, 0xFC69, 0xF778, 
    0xF781, 0xF79C, 0xF7C5, 0xF7FD, 0xF83F, 0xF88B, 0xF8DF, 0xF939, 
    0xF996, 0xF9F5, 0xFA54, 0xFAB2, 0xFB0B, 0xFB5F, 0xFBAB, 0xFBEE, 
    0xFC25, 0xFC4F, 0xFC69, 0xFC72, 0xFC69, 0xFC4F, 0xFC25, 0xFBEE, 
    0xFBAB, 0xFB5F, 0xFB0B, 0xFAB2, 0xFA54, 0xF9F5, 0xF996, 0xF939, 
    0xF8DF, 0xF88B, 0xF83F, 0xF7FD, 0xF7C5, 0xF79C, 0xF781, 0x0842, 
    0x18E0, 0x27A5, 0x2E93, 0x2F67, 0x2EF1, 0x2D7F, 0x2B5D, 0x28DC, 
    0x265A, 0x2451, 0x229F, 0x20C5, 0x1EC2, 0x1C94, 0x1A35, 0x179C, 
    0x14BC, 0x1179, 0x0D95, 0x0842, 0x0C97, 0x0E5D, 0x0EC9, 0x0E3C, 
    0x0CE4, 0x0AD4, 0x0802, 0x03DD, 0x0000, 0x0000, 0x003B, 0x003B, 
    0x068D, 0x098D, 0x0BB6, 0x0D27, 0x0DD4, 0x0D94, 0x0C11, 0x0842, 
    0x0C9E, 0x0E75, 0x0EFB, 0x0E93, 0x0D71, 0x0BB3, 0x096D, 0x06B1, 
    0x038A, 0x003A, 0x038A, 0x06B1, 0x096D, 0x0BB3, 0x0D71, 0x0E93, 
    0x0EFB, 0x0E75, 0x0C9E, 0x0842, 0x18E0, 0x27A5, 0x2E93, 0x2F67, 
    0x2EF1, 0x2D7F, 0x2B5D, 0x28DC, 0x265A, 0x2451, 0x22B5, 0x2118, 
    0x1F6E, 0x1DA9, 0x1BB8, 0x1982, 0x16E6, 0x13AA, 0x0F57, 0xC71D, 
    0xC6FB, 0xC69B, 0xC607, 0xC548, 0xC469, 0xC373, 0xC271, 0xC16B, 
    0xC06B, 0xBF7C, 0xBE7B, 0xBD4B, 0xBBFD, 0xBAA2, 0xB94D, 0xB80E, 
    0xB6F8, 0xB61C, 0xB58B, 0xB556, 0xB58B, 0xB61C, 0xB6F8, 0xB80E, 
    0xB94D, 0xBAA2, 0xBBFD, 0xBD4B, 0xBE7B, 0xBF7C, 0xC06B, 0xC16B, 
    0xC271, 0xC373, 0xC469, 0xC548, 0xC607, 0xC69B, 0xC6FB, 0xB556, 
    0xB58B, 0xB61C, 0xB6F8, 0xB80F, 0xB94D, 0xBAA3, 0xBBFE, 0xBD4C, 
    0xBE7C, 0xBF7D, 0xC06C, 0xC16C, 0xC272, 0xC374, 0xC46A, 0xC549, 
    0xC607, 0xC69B, 0xC6FB, 0xC71D, 0xC6FB, 0xC69B, 0xC607, 0xC549, 
    0xC46A, 0xC374, 0xC272, 0xC16C, 0xC06C, 0xBF7D, 0xBE7C, 0xBD4C, 
    0xBBFE, 0xBAA3, 0xB94D, 0xB80F, 0xB6F8, 0xB61C, 0xB58B, 0xC772, 
    0xBD64, 0xB48A, 0xAFA8, 0xADCC, 0xAC9B, 0xABF5, 0xABB9, 0xABBE, 
    0xABCF, 0xABA6, 0xAB51, 0xAB19, 0xAAFD, 0xAAFF, 0xAB20, 0xAB66, 
    0xABD7, 0xAC82, 0xAD89, 0xAF5E, 0xAE1D, 0xAE52, 0xAF4E, 0xB0D8, 
    0xB2D3, 0xB533, 0xB7FB, 0xBB7D, 0xBED3, 0xC001, 0xC10D, 0xC23D, 
    0xBFEA, 0xBF73, 0xBF77, 0xBFE4, 0xC0BE, 0xC21B, 0xC427, 0xAF5E, 
    0xAE18, 0xAE44, 0xAF31, 0xB0A6, 0xB283, 0xB4B5, 0xB72F, 0xB9E8, 
    0xBCDA, 0xBFE0, 0xBF37, 0xBEA6, 0xBE53, 0xBE45, 0xBE85, 0xBF1E, 
    0xC01F, 0xC1A2, 0xC3DB, 0xC772, 0xBD64, 0xB48A, 0xAFA8, 0xADCC, 
    0xAC9B, 0xABF5, 0xABB9, 0xABBE, 0xABCF, 0xABA6, 0xAB45, 0xAAE9, 
    0xAA99, 0xAA5C, 0xAA3C, 0xAA47, 0xAA90, 0xAB39, 0xAC83, 0xF843, 
    0xC001, 0x1FFF, 0x3FFF, 0x1FFF, 0x07BD, 0xC001, 0x3FFF, 0xFC72, 
    0xFC80, 0xFCA5, 0xFCE1, 0xFD30, 0xFD8F, 0xFDFC, 0xFE73, 0xFEF3, 
    0xFF78, 0x0000, 0x0088, 0x010D, 0x018D, 0x0204, 0x0271, 0x02D0, 
    0x031F, 0x035B, 0x0380, 0x038E, 0x0380, 0x035B, 0x031F, 0x02D0, 
    0x0271, 0x0204, 0x018D, 0x010D, 0x0088, 0x0000, 0xFF78, 0xFEF3, 
    0xFE73, 0xFDFC, 0xFD8F, 0xFD30, 0xFCE1, 0xFCA5, 0xFC80, 0x41BC, 
    0x418E, 0x4120, 0x409C, 0x402D, 0x3FFF, 0x4005, 0x4015, 0x402D, 
    0x404D, 0x4072, 0x409C, 0x40C7, 0x40F4, 0x4120, 0x4149, 0x416E, 
    0x418E, 0x41A7, 0x41B7, 0x41BC, 0x418E, 0x4120, 0x409C, 0x402D, 
    0x3FFF, 0x4005, 0x4015, 0x402D, 0x404D, 0x4072, 0x409C, 0x40C7, 
    0x40F4, 0x4120, 0x4149, 0x416E, 0x418E, 0x41A7, 0x41B7, 0x3FFF, 
    0x3C71, 0x3C82, 0x3CB2, 0x3CFC, 0x3D5A, 0x3DC6, 0x3E3C, 0x3EB5, 
    0x3F2C, 0x3F9C, 0x3FFF, 0x4062, 0x40D2, 0x4149, 0x41C2, 0x4238, 
    0x42A4, 0x4302, 0x434C, 0x437C, 0x438D, 0x437C, 0x434B, 0x4301, 
    0x42A2, 0x4236, 0x41C0, 0x4147, 0x40D0, 0x4061, 0x3FFF, 0x3F9D, 
    0x3F2E, 0x3EB7, 0x3E3E, 0x3DC8, 0x3D5C, 0x3CFD, 0x3CB3, 0x3C82, 
    0x3FFF, 0x0000, 
};

JointKey gHumanWalkingAnimJointKey[] = {
    {      1,      0,     40,      1,      1,     41 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {     40,     42,      1,      0,      1,      0 },
    {      1,      0,      1,      0,     40,     82 },
    {     40,    122,      1,    162,     40,    163 },
    {     40,    203,      1,    243,     40,    244 },
    {      1,      0,      1,      0,     40,    284 },
    {      1,      0,      1,      0,     40,    324 },
    {     40,    364,      1,      0,      1,    404 },
    {      1,    405,      1,    406,      1,      0 },
    {      1,      0,      1,      0,     40,    407 },
    {      1,      0,      1,      0,     40,    447 },
    {      1,      0,      1,      0,     40,    487 },
    {      1,      0,      1,      0,     40,    527 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,     40,    567 },
    {      1,      0,      1,      0,     40,    607 },
    {      1,      0,      1,      0,     40,    647 },
    {      1,      0,      1,      0,     40,    687 },
    {      1,    727,      1,      0,      1,    728 },
    {      1,    729,      1,    730,      1,    731 },
    {      1,    732,      1,      0,      1,    733 },
    {      1,      0,      1,    734,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     40,    735,     40,    775 },
    {      1,      0,      1,      0,      1,    815 },
    {      1,      0,     40,    816,      1,      0 },
    {      1,      0,      1,    856,      1,      0 },
};

LegacyAnimationHeader gHumanWalkingAnim = { 
    40, 41,
    gHumanWalkingAnimFrameData,
    gHumanWalkingAnimJointKey
};

u8 object_human_possiblePadding_012928[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 gHumanWalkingEndAnimFrameData[] = {
    0x0000, 0x0CFE, 0x0D01, 0x0D0B, 0x0D19, 0x0D2A, 0x0D3C, 0x0D4F, 
    0x0D60, 0x0D6E, 0x0D77, 0x0D7B, 0x0028, 0xFCE1, 0xFCA5, 0xFC80, 
    0xFC72, 0xFCA5, 0xFD27, 0xFDD9, 0xFE9A, 0xFF4C, 0xFFCE, 0x0000, 
    0xC6CB, 0xC6B6, 0xC67D, 0xC629, 0xC5C3, 0xC553, 0xC4E4, 0xC47E, 
    0xC42A, 0xC3F1, 0xC3DC, 0x071C, 0x06E9, 0x065F, 0x0593, 0x049B, 
    0x038E, 0x0280, 0x0189, 0x00BD, 0x0032, 0x0000, 0xEE3A, 0xFC72, 
    0xFC8B, 0xFCCE, 0xFD31, 0xFDAA, 0xFE2D, 0xFEB0, 0xFF28, 0xFF8B, 
    0xFFCE, 0xFFE7, 0x071C, 0x06E9, 0x065F, 0x0593, 0x049B, 0x038E, 
    0x0280, 0x0189, 0x00BD, 0x0032, 0x0000, 0x11C6, 0xF556, 0xF5A2, 
    0xF66F, 0xF79E, 0xF90E, 0xFA9E, 0xFC2F, 0xFD9F, 0xFECE, 0xFF9B, 
    0xFFE7, 0xB04D, 0xB01D, 0xB0F1, 0xB28E, 0xB4B7, 0xB72F, 0xB9BC, 
    0xBC20, 0xBE20, 0xBF7F, 0xC001, 0xC71D, 0xC6EA, 0xC660, 0xC594, 
    0xC49D, 0xC38F, 0xC282, 0xC18A, 0xC0BE, 0xC034, 0xC001, 0xF8E4, 
    0xF917, 0xF9A1, 0xFA6D, 0xFB65, 0xFC72, 0xFD80, 0xFE77, 0xFF43, 
    0xFFCE, 0x0000, 0xC001, 0x8001, 0x8001, 0xFC72, 0xFC80, 0xFCA3, 
    0xFCD8, 0xFD18, 0xFD5E, 0xFDA4, 0xFDE4, 0xFE19, 0xFE3D, 0xFE4A, 
    0xF778, 0xF7A9, 0xF82E, 0xF8F1, 0xF9DF, 0xFAE1, 0xFBE3, 0xFCD1, 
    0xFD94, 0xFE19, 0xFE4A, 0x0842, 0x12D7, 0x194B, 0x1BE5, 0x1A5B, 
    0x17D2, 0x146D, 0x1047, 0x0B75, 0x0604, 0x0000, 0x0842, 0x0A69, 
    0x0B51, 0x0B6F, 0x0AF6, 0x0A03, 0x08A7, 0x06F0, 0x04E8, 0x0297, 
    0x003B, 0xC71D, 0xC6E7, 0xC652, 0xC577, 0xC46E, 0xC34D, 0xC22C, 
    0xC122, 0xC047, 0xBFB3, 0xBF7C, 0xB556, 0xB59F, 0xB665, 0xB788, 
    0xB8E9, 0xBA6A, 0xBBEB, 0xBD4C, 0xBE6F, 0xBF35, 0xBF7D, 0xC772, 
    0xBF4B, 0xB95B, 0xB570, 0xB58F, 0xB63C, 0xB766, 0xB8FF, 0xBAFD, 
    0xBD55, 0xC001, 0xAF5E, 0xAF5E, 0xB014, 0xB13B, 0xB2B7, 0xB476, 
    0xB66D, 0xB895, 0xBAE8, 0xBD61, 0xBFE0, 0xF843, 0xC001, 0x1FFF, 
    0x3FFF, 0x1FFF, 0x07BD, 0xC001, 0x3FFF, 0xFC72, 0xFC8C, 0xFCD1, 
    0xFD37, 0xFDB3, 0xFE39, 0xFEC0, 0xFF3C, 0xFFA2, 0xFFE7, 0x0000, 
    0x41BC, 0x41B0, 0x418E, 0x415C, 0x4120, 0x40DE, 0x409C, 0x405F, 
    0x402D, 0x400B, 0x3FFF, 0x3FFF, 0x3C71, 0x3C8A, 0x3CCF, 0x3D35, 
    0x3DB1, 0x3E38, 0x3EBF, 0x3F3A, 0x3FA0, 0x3FE6, 0x3FFF, 0x3FFF, 
};

JointKey gHumanWalkingEndAnimJointKey[] = {
    {      1,      0,     11,      1,      1,     12 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {     11,     13,      1,      0,      1,      0 },
    {      1,      0,      1,      0,     11,     24 },
    {     11,     35,      1,     46,     11,     47 },
    {     11,     58,      1,     69,     11,     70 },
    {      1,      0,      1,      0,     11,     81 },
    {      1,      0,      1,      0,     11,     92 },
    {     11,    103,      1,      0,      1,    114 },
    {      1,    115,      1,    116,      1,      0 },
    {      1,      0,      1,      0,     11,    117 },
    {      1,      0,      1,      0,     11,    128 },
    {      1,      0,      1,      0,     11,    139 },
    {      1,      0,      1,      0,     11,    150 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,     11,    161 },
    {      1,      0,      1,      0,     11,    172 },
    {      1,      0,      1,      0,     11,    183 },
    {      1,      0,      1,      0,     11,    194 },
    {      1,    205,      1,      0,      1,    206 },
    {      1,    207,      1,    208,      1,    209 },
    {      1,    210,      1,      0,      1,    211 },
    {      1,      0,      1,    212,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     11,    213,     11,    224 },
    {      1,      0,      1,      0,      1,    235 },
    {      1,      0,     11,    236,      1,      0 },
    {      1,      0,      1,    247,      1,      0 },
};

LegacyAnimationHeader gHumanWalkingEndAnim = { 
    11, 41,
    gHumanWalkingEndAnimFrameData,
    gHumanWalkingEndAnimJointKey
};

u8 object_human_possiblePadding_012D24[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 gHumanWalkingStartAnimFrameData[] = {
    0x0000, 0x0D7B, 0x0D7B, 0x0D7B, 0x0D7B, 0x0D77, 0x0D6E, 0x0D60, 
    0x0D4F, 0x0D3C, 0x0D2A, 0x0D19, 0x0D0B, 0x0D01, 0x0028, 0x0000, 
    0xFFF7, 0xFFDC, 0xFFB3, 0xFF7C, 0xFF3C, 0xFEF4, 0xFEA6, 0xFE54, 
    0xFE02, 0xFDB2, 0xFD65, 0xFD1F, 0xC3DC, 0xC3E9, 0xC40C, 0xC441, 
    0xC486, 0xC4D4, 0xC528, 0xC57F, 0xC5D3, 0xC621, 0xC665, 0xC69B, 
    0xC6BE, 0x0000, 0x001E, 0x0073, 0x00F6, 0x019A, 0x0258, 0x0325, 
    0x03F7, 0x04C3, 0x0581, 0x0626, 0x06A8, 0x06FD, 0xEE3A, 0xFFE7, 
    0xFFD8, 0xFFAF, 0xFF6F, 0xFF1F, 0xFEC3, 0xFE60, 0xFDFA, 0xFD96, 
    0xFD3A, 0xFCEA, 0xFCAB, 0xFC81, 0x0000, 0x001E, 0x0073, 0x00F6, 
    0x019A, 0x0258, 0x0325, 0x03F7, 0x04C3, 0x0581, 0x0626, 0x06A8, 
    0x06FD, 0x11C6, 0xFFE7, 0xFFB9, 0xFF3B, 0xFE79, 0xFD84, 0xFC6A, 
    0xFB3A, 0xFA03, 0xF8D3, 0xF7B9, 0xF6C4, 0xF602, 0xF583, 0xC001, 
    0xC001, 0xC001, 0xC001, 0xBFA1, 0xBE9B, 0xBD13, 0xBB2F, 0xB912, 
    0xB6E3, 0xB4C6, 0xB2E0, 0xB156, 0xC001, 0xBE3D, 0xBAE5, 0xB8E5, 
    0xB8A8, 0xB8A8, 0xB8E6, 0xB965, 0xBA26, 0xBB2A, 0xBC73, 0xBC27, 
    0xBD47, 0x0000, 0xFFE2, 0xFF8D, 0xFF0A, 0xFE66, 0xFDA8, 0xFCDB, 
    0xFC09, 0xFB3D, 0xFA7F, 0xF9DA, 0xF958, 0xF903, 0xC001, 0x8001, 
    0x8001, 0xFE4A, 0xFE42, 0xFE2C, 0xFE0A, 0xFDDF, 0xFDAE, 0xFD79, 
    0xFD43, 0xFD0E, 0xFCDD, 0xFCB2, 0xFC90, 0xFC7A, 0xFE4A, 0xFE2D, 
    0xFDDB, 0xFD5E, 0xFCC0, 0xFC0A, 0xFB46, 0xFA7C, 0xF9B8, 0xF902, 
    0xF864, 0xF7E7, 0xF795, 0x003A, 0x0000, 0x003A, 0x0000, 0x038A, 
    0x06B1, 0x096D, 0x0BB3, 0x0D71, 0x0E93, 0x0EFB, 0x0E75, 0x0C9E, 
    0x003A, 0x1260, 0x1F30, 0x2451, 0x23F8, 0x22FB, 0x216C, 0x1F5A, 
    0x1CCF, 0x19D1, 0x1661, 0x1277, 0x0DF1, 0xBF7C, 0xBF9D, 0xBFF9, 
    0xC084, 0xC135, 0xC201, 0xC2DC, 0xC3BD, 0xC499, 0xC564, 0xC615, 
    0xC6A1, 0xC6FC, 0xBF7D, 0xBF52, 0xBED8, 0xBE1E, 0xBD33, 0xBC24, 
    0xBB00, 0xB9D4, 0xB8B0, 0xB7A1, 0xB6B6, 0xB5FC, 0xB582, 0xBFE0, 
    0xC001, 0xBFE0, 0xC001, 0xBF37, 0xBEA6, 0xBE53, 0xBE45, 0xBE85, 
    0xBF1E, 0xC01F, 0xC1A2, 0xC3DB, 0xBFE0, 0xB5C3, 0xAE8F, 0xABA6, 
    0xAA8B, 0xA9D0, 0xA96E, 0xA95C, 0xA997, 0xAA18, 0xAADF, 0xABED, 
    0xAD54, 0xF843, 0xC001, 0x1FFF, 0x3FFF, 0x1FFF, 0x07BD, 0xC001, 
    0x3FFF, 0x0000, 0xFFF1, 0xFFC7, 0xFF85, 0xFF33, 0xFED4, 0xFE6E, 
    0xFE05, 0xFD9F, 0xFD40, 0xFCED, 0xFCAC, 0xFC82, 0x3FFF, 0x4007, 
    0x401B, 0x403B, 0x4064, 0x4092, 0x40C4, 0x40F7, 0x4129, 0x4158, 
    0x4180, 0x41A0, 0x41B5, 0x3FFF, 0x3FFF, 0x3FF0, 0x3FC5, 0x3F84, 
    0x3F32, 0x3ED3, 0x3E6C, 0x3E03, 0x3D9D, 0x3D3E, 0x3CEC, 0x3CAB, 
    0x3C80, 0x3FFF, 
};

JointKey gHumanWalkingStartAnimJointKey[] = {
    {      1,      0,     13,      1,      1,     14 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {     13,     15,      1,      0,      1,      0 },
    {      1,      0,      1,      0,     13,     28 },
    {     13,     41,      1,     54,     13,     55 },
    {     13,     68,      1,     81,     13,     82 },
    {      1,      0,      1,      0,     13,     95 },
    {      1,      0,      1,      0,     13,    108 },
    {     13,    121,      1,      0,      1,    134 },
    {      1,    135,      1,    136,      1,      0 },
    {      1,      0,      1,      0,     13,    137 },
    {      1,      0,      1,      0,     13,    150 },
    {      1,      0,      1,      0,     13,    163 },
    {      1,      0,      1,      0,     13,    176 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,      1,      0,     13,    189 },
    {      1,      0,      1,      0,     13,    202 },
    {      1,      0,      1,      0,     13,    215 },
    {      1,      0,      1,      0,     13,    228 },
    {      1,    241,      1,      0,      1,    242 },
    {      1,    243,      1,    244,      1,    245 },
    {      1,    246,      1,      0,      1,    247 },
    {      1,      0,      1,    248,      1,      0 },
    {      1,      0,      1,      0,      1,      0 },
    {      1,      0,     13,    249,     13,    262 },
    {      1,      0,      1,      0,      1,    275 },
    {      1,      0,     13,    276,      1,      0 },
    {      1,      0,      1,    289,      1,      0 },
};

LegacyAnimationHeader gHumanWalkingStartAnim = { 
    13, 41,
    gHumanWalkingStartAnimFrameData,
    gHumanWalkingStartAnimJointKey
};

