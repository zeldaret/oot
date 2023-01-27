#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ma2.h"

s16 sMalonAdultIdleAnimFrameData[] = {
    0xFF46, 0x0D7A, 0x0000, 0xC000, 0xEC09, 0xFE28, 0xFF63, 0xC765, 0xFF6B, 0x0CA1, 0x4000, 0xFBD4, 0xF9F5, 0x059B, 
    0x0D7A, 0x0D7A, 0x0D79, 0x0D78, 0x0D76, 0x0D75, 0x0D73, 0x0D71, 0x0D6F, 0x0D6D, 0x0D6B, 0x0D6A, 0x0D68, 0x0D68, 
    0x0D67, 0x0D68, 0x0D68, 0x0D69, 0x0D6B, 0x0D6C, 0x0D6E, 0x0D70, 0x0D72, 0x0D73, 0x0D75, 0x0D77, 0x0D78, 0x0D79, 
    0x0D7A, 0x0D7A, 0xFCD6, 0xFCD6, 0xFCD5, 0xFCD5, 0xFCD5, 0xFCD4, 0xFCD4, 0xFCD3, 0xFCD2, 0xFCD2, 0xFCD1, 0xFCD1, 
    0xFCD0, 0xFCD0, 0xFCD0, 0xFCD0, 0xFCD0, 0xFCD1, 0xFCD1, 0xFCD2, 0xFCD2, 0xFCD3, 0xFCD3, 0xFCD4, 0xFCD4, 0xFCD5, 
    0xFCD5, 0xFCD5, 0xFCD6, 0xFCD6, 0xF9BD, 0xF9BD, 0xF9BD, 0xF9BC, 0xF9BB, 0xF9BA, 0xF9B9, 0xF9B8, 0xF9B7, 0xF9B5, 
    0xF9B4, 0xF9B3, 0xF9B3, 0xF9B2, 0xF9B2, 0xF9B2, 0xF9B3, 0xF9B3, 0xF9B4, 0xF9B5, 0xF9B6, 0xF9B7, 0xF9B8, 0xF9B9, 
    0xF9BA, 0xF9BB, 0xF9BC, 0xF9BD, 0xF9BD, 0xF9BD, 0x000E, 0x000E, 0x000F, 0x0010, 0x0011, 0x0012, 0x0013, 0x0014, 
    0x0015, 0x0016, 0x0017, 0x0018, 0x0018, 0x0019, 0x0019, 0x0019, 0x0018, 0x0018, 0x0017, 0x0017, 0x0016, 0x0015, 
    0x0014, 0x0013, 0x0012, 0x0010, 0x000F, 0x000E, 0x000E, 0x000E, 0xFF21, 0xFF0D, 0xFED9, 0xFE91, 0xFE40, 0xFDEC, 
    0xFD9A, 0xFD4B, 0xFD03, 0xFCC2, 0xFC8B, 0xFC5D, 0xFC3A, 0xFC24, 0xFC1C, 0xFC23, 0xFC36, 0xFC55, 0xFC7D, 0xFCAF, 
    0xFCE8, 0xFD29, 0xFD6F, 0xFDBA, 0xFE08, 0xFE56, 0xFEA0, 0xFEE1, 0xFF0F, 0xFF21, 0x0403, 0x042E, 0x049F, 0x053B, 
    0x05EA, 0x06A0, 0x0753, 0x07FC, 0x0899, 0x0926, 0x099F, 0x0A03, 0x0A4F, 0x0A7F, 0x0A8F, 0x0A81, 0x0A57, 0x0A14, 
    0x09BC, 0x0950, 0x08D3, 0x0847, 0x07AF, 0x070C, 0x0663, 0x05BA, 0x0519, 0x048D, 0x0429, 0x0403, 0x0000, 0xFFFF, 
    0xFFFB, 0xFFF6, 0xFFEF, 0xFFE7, 0xFFDF, 0xFFD6, 0xFFCD, 0xFFC4, 0xFFBC, 0xFFB5, 0xFFB0, 0xFFAD, 0xFFAB, 0xFFAC, 
    0xFFB0, 0xFFB4, 0xFFBA, 0xFFC1, 0xFFC9, 0xFFD1, 0xFFDA, 0xFFE2, 0xFFEA, 0xFFF1, 0xFFF7, 0xFFFC, 0xFFFF, 0x0000, 
    0x03AB, 0x03AB, 0x03AB, 0x03AA, 0x03AA, 0x03AA, 0x03A9, 0x03A9, 0x03A8, 0x03A8, 0x03A8, 0x03A7, 0x03A7, 0x03A7, 
    0x03A7, 0x03A7, 0x03A7, 0x03A7, 0x03A8, 0x03A8, 0x03A8, 0x03A9, 0x03A9, 0x03A9, 0x03AA, 0x03AA, 0x03AA, 0x03AB, 
    0x03AB, 0x03AB, 0xBC34, 0xBC27, 0xBC00, 0xBBC5, 0xBB7A, 0xBB22, 0xBAC2, 0xBA5D, 0xB9F9, 0xB999, 0xB941, 0xB8F5, 
    0xB8BA, 0xB894, 0xB886, 0xB892, 0xB8B4, 0xB8E8, 0xB92B, 0xB97A, 0xB9D2, 0xBA2E, 0xBA8C, 0xBAE9, 0xBB40, 0xBB8F, 
    0xBBD2, 0xBC07, 0xBC28, 0xBC34, 0x00A1, 0x009F, 0x009B, 0x0095, 0x008D, 0x0083, 0x0079, 0x006E, 0x0064, 0x005A, 
    0x0050, 0x0048, 0x0042, 0x003E, 0x003C, 0x003E, 0x0041, 0x0047, 0x004E, 0x0056, 0x0060, 0x0069, 0x0073, 0x007D, 
    0x0087, 0x008F, 0x0096, 0x009C, 0x009F, 0x00A1, 0xFAB5, 0xFABA, 0xFAC6, 0xFAD9, 0xFAF2, 0xFB0E, 0xFB2D, 0xFB4E, 
    0xFB6E, 0xFB8D, 0xFBA9, 0xFBC2, 0xFBD5, 0xFBE1, 0xFBE6, 0xFBE2, 0xFBD7, 0xFBC6, 0xFBB0, 0xFB97, 0xFB7B, 0xFB5D, 
    0xFB3E, 0xFB21, 0xFB04, 0xFAEB, 0xFAD5, 0xFAC4, 0xFAB9, 0xFAB5, 0x025E, 0x026A, 0x028C, 0x02C1, 0x0305, 0x0354, 
    0x03AA, 0x0403, 0x045D, 0x04B3, 0x0502, 0x0545, 0x057A, 0x059D, 0x05A9, 0x059E, 0x0580, 0x0551, 0x0515, 0x04CE, 
    0x0480, 0x042D, 0x03D9, 0x0387, 0x0338, 0x02F2, 0x02B5, 0x0287, 0x0269, 0x025E, 0x4000, 0x4000, 0x3FFF, 0x3FFE, 
    0x3FFC, 0x3FFA, 0x3FF8, 0x3FF6, 0x3FF4, 0x3FF2, 0x3FF0, 0x3FEE, 0x3FED, 0x3FEB, 0x3FEB, 0x3FEA, 0x3FEB, 0x3FEC, 
    0x3FED, 0x3FEF, 0x3FF1, 0x3FF3, 0x3FF5, 0x3FF7, 0x3FFA, 0x3FFC, 0x3FFD, 0x3FFF, 0x4000, 0x4000, 0x0272, 0x0276, 
    0x0281, 0x0292, 0x02A8, 0x02C2, 0x02DF, 0x02FD, 0x031C, 0x033A, 0x0357, 0x0371, 0x0387, 0x0398, 0x03A3, 0x03A7, 
    0x03A2, 0x0396, 0x0382, 0x036A, 0x034D, 0x032D, 0x030C, 0x02EB, 0x02CC, 0x02AF, 0x0296, 0x0283, 0x0276, 0x0272, 
    0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA3, 0xFFA3, 0xFFA3, 0xFFA3, 
    0xFFA3, 0xFFA3, 0xFFA3, 0xFFA3, 0xFFA3, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 0xFFA2, 
    0xFFA2, 0xFFA2, 0xF8AD, 0xF8BA, 0xF8E1, 0xF91B, 0xF967, 0xF9BE, 0xFA1E, 0xFA82, 0xFAE6, 0xFB46, 0xFB9D, 0xFBE8, 
    0xFC23, 0xFC4A, 0xFC57, 0xFC4B, 0xFC2A, 0xFBF6, 0xFBB3, 0xFB64, 0xFB0D, 0xFAB1, 0xFA53, 0xF9F7, 0xF9A0, 0xF951, 
    0xF90E, 0xF8DA, 0xF8B9, 0xF8AD, 0x8906, 0x8906, 0x8905, 0x8905, 0x8904, 0x8903, 0x8902, 0x8901, 0x8901, 0x8900, 
    0x88FF, 0x88FE, 0x88FE, 0x88FD, 0x88FD, 0x88FD, 0x88FE, 0x88FE, 0x88FF, 0x88FF, 0x8900, 0x8901, 0x8902, 0x8903, 
    0x8904, 0x8904, 0x8905, 0x8905, 0x8906, 0x8906, 0x01BB, 0x01BB, 0x01BC, 0x01BC, 0x01BD, 0x01BE, 0x01C0, 0x01C1, 
    0x01C2, 0x01C4, 0x01C5, 0x01C6, 0x01C7, 0x01C7, 0x01C7, 0x01C7, 0x01C7, 0x01C6, 0x01C5, 0x01C4, 0x01C3, 0x01C2, 
    0x01C0, 0x01BF, 0x01BE, 0x01BD, 0x01BC, 0x01BB, 0x01BB, 0x01BB, 0xF938, 0xF926, 0xF8F3, 0xF8A5, 0xF841, 0xF7CC, 
    0xF74C, 0xF6C7, 0xF642, 0xF5C3, 0xF54E, 0xF4EA, 0xF49B, 0xF468, 0xF456, 0xF466, 0xF493, 0xF4D8, 0xF531, 0xF59A, 
    0xF60E, 0xF689, 0xF706, 0xF780, 0xF7F4, 0xF85D, 0xF8B6, 0xF8FC, 0xF929, 0xF938, 0xF900, 0xF8FF, 0xF8FD, 0xF8F9, 
    0xF8F5, 0xF8EF, 0xF8EA, 0xF8E4, 0xF8DE, 0xF8D8, 0xF8D3, 0xF8CF, 0xF8CB, 0xF8C9, 0xF8C8, 0xF8C9, 0xF8CB, 0xF8CE, 
    0xF8D2, 0xF8D7, 0xF8DC, 0xF8E1, 0xF8E7, 0xF8EC, 0xF8F1, 0xF8F6, 0xF8FA, 0xF8FD, 0xF8FF, 0xF900, 0xFFC8, 0xFFC8, 
    0xFFC8, 0xFFC8, 0xFFC8, 0xFFC8, 0xFFC8, 0xFFC7, 0xFFC7, 0xFFC7, 0xFFC7, 0xFFC7, 0xFFC7, 0xFFC7, 0xFFC7, 0xFFC7, 
    0xFFC7, 0xFFC7, 0xFFC7, 0xFFC7, 0xFFC7, 0xFFC7, 0xFFC7, 0xFFC8, 0xFFC8, 0xFFC8, 0xFFC8, 0xFFC8, 0xFFC8, 0xFFC8, 
    0x026F, 0x027B, 0x029E, 0x02D2, 0x0315, 0x0363, 0x03B8, 0x0410, 0x0469, 0x04BE, 0x050C, 0x054F, 0x0583, 0x05A6, 
    0x05B2, 0x05A7, 0x0589, 0x055B, 0x051F, 0x04D9, 0x048C, 0x043A, 0x03E7, 0x0395, 0x0348, 0x0302, 0x02C6, 0x0298, 
    0x027A, 0x026F, 0xFC54, 0xFC54, 0xFC53, 0xFC53, 0xFC53, 0xFC52, 0xFC52, 0xFC51, 0xFC51, 0xFC50, 0xFC50, 0xFC50, 
    0xFC4F, 0xFC4F, 0xFC4F, 0xFC4F, 0xFC4F, 0xFC50, 0xFC50, 0xFC50, 0xFC51, 0xFC51, 0xFC52, 0xFC52, 0xFC52, 0xFC53, 
    0xFC53, 0xFC53, 0xFC54, 0xFC54, 0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 
    0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0056, 0x0056, 0x0056, 
    0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 0x0890, 0x0885, 0x0867, 0x0839, 0x07FD, 0x07B8, 0x076A, 0x0718, 
    0x06C5, 0x0673, 0x0626, 0x05E0, 0x05A4, 0x0576, 0x0558, 0x054D, 0x055A, 0x057C, 0x05B0, 0x05F3, 0x0641, 0x0696, 
    0x06EF, 0x0747, 0x079D, 0x07EA, 0x082D, 0x0862, 0x0884, 0x0890, 0x8695, 0x8695, 0x8694, 0x8694, 0x8694, 0x8693, 
    0x8692, 0x8692, 0x8691, 0x8690, 0x8690, 0x868F, 0x868F, 0x868E, 0x868E, 0x868E, 0x868E, 0x868E, 0x868F, 0x868F, 
    0x8690, 0x8691, 0x8691, 0x8692, 0x8693, 0x8693, 0x8694, 0x8694, 0x8695, 0x8695, 0x0000, 0xFFFB, 0xFFED, 0xFFD8, 
    0xFFBD, 0xFF9D, 0xFF79, 0xFF53, 0xFF2D, 0xFF07, 0xFEE4, 0xFEC4, 0xFEA8, 0xFE93, 0xFE85, 0xFE80, 0xFE86, 0xFE96, 
    0xFEAE, 0xFECC, 0xFEF0, 0xFF17, 0xFF40, 0xFF69, 0xFF90, 0xFFB4, 0xFFD3, 0xFFEB, 0xFFFA, 0x0000, 0x0000, 0x0015, 
    0x004F, 0x00A9, 0x011D, 0x01A5, 0x023C, 0x02DB, 0x037D, 0x041D, 0x04B3, 0x053C, 0x05B0, 0x060A, 0x0644, 0x0659, 
    0x0641, 0x05FF, 0x0599, 0x0516, 0x047F, 0x03D9, 0x032C, 0x027F, 0x01DA, 0x0142, 0x00C0, 0x005A, 0x0018, 0x0000, 
    0xF5D0, 0xF5D3, 0xF5D9, 0xF5E3, 0xF5F0, 0xF5FF, 0xF60F, 0xF621, 0xF633, 0xF644, 0xF655, 0xF664, 0xF670, 0xF67A, 
    0xF681, 0xF683, 0xF680, 0xF679, 0xF66E, 0xF660, 0xF64F, 0xF63D, 0xF62A, 0xF617, 0xF604, 0xF5F4, 0xF5E6, 0xF5DA, 
    0xF5D3, 0xF5D0, 0x0000, 0x0001, 0x0003, 0x0005, 0x0009, 0x000E, 0x0013, 0x0018, 0x001E, 0x0024, 0x002A, 0x002F, 
    0x0034, 0x0039, 0x003C, 0x003F, 0x0041, 0x0042, 0x0041, 0x003D, 0x0038, 0x0031, 0x0029, 0x0021, 0x0019, 0x0011, 
    0x000A, 0x0005, 0x0001, 0x0000, 0x05B4, 0x05AD, 0x0598, 0x0578, 0x054E, 0x051B, 0x04E3, 0x04A6, 0x0466, 0x0425, 
    0x03E6, 0x03A9, 0x0370, 0x033E, 0x0314, 0x02F3, 0x02DE, 0x02D7, 0x02E6, 0x030D, 0x034A, 0x0395, 0x03EB, 0x0446, 
    0x04A0, 0x04F6, 0x0542, 0x057E, 0x05A6, 0x05B4, 
};

JointIndex sMalonAdultIdleAnimJointIndices[] = {
    { 0x0000, 0x000E, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0003, 0x0002, 0x0003 },
    { 0x0002, 0x002C, 0x004A },
    { 0x0004, 0x0002, 0x0002 },
    { 0x0005, 0x0006, 0x0007 },
    { 0x0068, 0x0008, 0x0086 },
    { 0x0009, 0x0002, 0x00A4 },
    { 0x00C2, 0x00E0, 0x00FE },
    { 0x0002, 0x0002, 0x0002 },
    { 0x011C, 0x013A, 0x0158 },
    { 0x0176, 0x0194, 0x000A },
    { 0x01B2, 0x01D0, 0x01EE },
    { 0x020C, 0x022A, 0x0248 },
    { 0x0266, 0x0284, 0x02A2 },
    { 0x02C0, 0x02DE, 0x02FC },
    { 0x031A, 0x0338, 0x0356 },
    { 0x000B, 0x000C, 0x000D },
    { 0x0374, 0x0002, 0x0392 },
};

AnimationHeader gMalonAdultIdleAnim = { 
    { 30 }, sMalonAdultIdleAnimFrameData,
    sMalonAdultIdleAnimJointIndices, 14
};

u8 object_ma2_possiblePadding_0007E4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gMalonAdultClothesTLUT[] = {
#include "assets/objects/object_ma2/clothes_tlut.rgba16.inc.c"
};

u64 gMalonAdultFingersTex[] = {
#include "assets/objects/object_ma2/fingers.rgba16.inc.c"
};

u64 gMalonAdultShirtTex[] = {
#include "assets/objects/object_ma2/shirt.ci8.inc.c"
};

u64 gMalonAdultShirtCuffTex[] = {
#include "assets/objects/object_ma2/shirt_cuff.ci8.inc.c"
};

u64 gMalonAdultScarfTex[] = {
#include "assets/objects/object_ma2/scarf.ci8.inc.c"
};

u64 gMalonBowserTex[] = {
#include "assets/objects/object_ma2/bowser.rgba16.inc.c"
};

u64 gMalonAdultMiddleDressTex[] = {
#include "assets/objects/object_ma2/middle_dress.ci8.inc.c"
};

u64 gMalonAdultFrontDressTex[] = {
#include "assets/objects/object_ma2/front_dress.rgba16.inc.c"
};

u64 gMalonAdultDressPatternTex[] = {
#include "assets/objects/object_ma2/dress_pattern.ci8.inc.c"
};

u64 gMalonAdultBootTex[] = {
#include "assets/objects/object_ma2/boot.ci8.inc.c"
};

u64 gMalonAdultBeltTex[] = {
#include "assets/objects/object_ma2/belt.ci8.inc.c"
};

u64 gMalonAdultHairTLUT[] = {
#include "assets/objects/object_ma2/hair_tlut.rgba16.inc.c"
};

u64 gMalonAdultFaceTLUT[] = {
#include "assets/objects/object_ma2/face_tlut.rgba16.inc.c"
};

u64 gMalonAdultGradientTex[] = {
#include "assets/objects/object_ma2/gradient.rgba16.inc.c"
};

u64 gMalonAdultNoseTex[] = {
#include "assets/objects/object_ma2/nose.rgba16.inc.c"
};

u64 gMalonAdultEarTex[] = {
#include "assets/objects/object_ma2/ear.rgba16.inc.c"
};

u64 gMalonAdultHairTex[] = {
#include "assets/objects/object_ma2/hair.ci8.inc.c"
};

u64 gMalonAdultEyeOpenTex[] = {
#include "assets/objects/object_ma2/eye_open.ci8.inc.c"
};

u64 gMalonAdultMouthNeutralTex[] = {
#include "assets/objects/object_ma2/mouth_neutral.ci8.inc.c"
};

u64 gMalonAdultBasketTex[] = {
#include "assets/objects/object_ma2/basket.rgba16.inc.c"
};

u64 gMalonAdultEyeHalfTex[] = {
#include "assets/objects/object_ma2/eye_half.ci8.inc.c"
};

u64 gMalonAdultEyeClosedTex[] = {
#include "assets/objects/object_ma2/eye_closed.ci8.inc.c"
};

u64 gMalonAdultBasketInsideTex[] = {
#include "assets/objects/object_ma2/basket_inside.rgba16.inc.c"
};

u64 gMalonAdultMouthSadTex[] = {
#include "assets/objects/object_ma2/mouth_sad.ci8.inc.c"
};

u64 gMalonAdultMouthHappyTex[] = {
#include "assets/objects/object_ma2/mouth_happy.ci8.inc.c"
};

Vtx object_ma2Vtx_003970[] = {
#include "assets/objects/object_ma2/object_ma2Vtx_003970.vtx.inc"
};

Gfx gMalonAdultHeadDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gMalonAdultHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMalonAdultHairTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ma2Vtx_003970, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[3], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonAdultNoseTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[6], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[9], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonAdultNoseTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[14], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 0, 0),
    gsSP1Triangle(9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[26], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 6, 0, 6, 7, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonAdultNoseTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[34], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 5, 4, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(gMalonAdultHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMalonAdultHairTLUT),
    gsSPVertex(&object_ma2Vtx_003970[49], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 9, 1, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 15, 17, 0, 18, 16, 17, 0),
    gsSP2Triangles(19, 10, 20, 0, 10, 21, 20, 0),
    gsSP1Triangle(22, 23, 24, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[74], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(1, 0, 3, 0, 2, 5, 0, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[80], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 5, 4, 0),
    gsSP2Triangles(15, 2, 16, 0, 13, 12, 17, 0),
    gsSP2Triangles(18, 11, 13, 0, 15, 9, 2, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSPVertex(&object_ma2Vtx_003970[111], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 9, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultEarTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[124], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[127], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonAdultEarTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[130], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[133], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(gMalonAdultHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMalonAdultHairTLUT),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[136], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 1, 9, 2, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 13, 17, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 12, 11, 0, 19, 20, 12, 0),
    gsSP1Triangle(21, 22, 23, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[160], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 2, 1, 0, 2, 5, 0, 0),
    gsSP1Triangle(0, 3, 1, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[166], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 0, 0),
    gsSP2Triangles(11, 12, 13, 0, 4, 3, 14, 0),
    gsSP2Triangles(15, 0, 16, 0, 11, 13, 17, 0),
    gsSP2Triangles(0, 10, 16, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&object_ma2Vtx_003970[196], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 7, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultNoseTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[209], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 5, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMalonAdultFaceTLUT),
    gsSPVertex(&object_ma2Vtx_003970[215], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 4, 3, 0, 5, 4, 2, 0),
    gsSP2Triangles(3, 4, 6, 0, 7, 8, 2, 0),
    gsSP2Triangles(2, 9, 7, 0, 8, 10, 2, 0),
    gsSP2Triangles(2, 10, 5, 0, 11, 10, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[227], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 2, 3, 0, 3, 5, 4, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultBasketDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gMalonAdultBasketInsideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_ma2Vtx_003970[234], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonAdultBasketTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma2Vtx_003970[249], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[252], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[255], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[261], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[273], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(2, 3, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 9, 8, 0),
    gsSP1Triangle(9, 11, 5, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[285], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_003970[288], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsSPEndDisplayList(),
};

Vtx object_ma2Vtx_0055F8[] = {
#include "assets/objects/object_ma2/object_ma2Vtx_0055F8.vtx.inc"
};

Gfx gMalonAdultChestAndNeckDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[208], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 4, 3, 0),
    gsSP2Triangles(5, 2, 4, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 5, 3, 0, 2, 9, 0, 0),
    gsSP2Triangles(10, 0, 9, 0, 11, 2, 5, 0),
    gsSP2Triangles(11, 9, 2, 0, 11, 10, 9, 0),
    gsSP2Triangles(3, 12, 13, 0, 12, 1, 0, 0),
    gsSP2Triangles(12, 3, 1, 0, 14, 6, 15, 0),
    gsSP2Triangles(11, 14, 10, 0, 14, 5, 7, 0),
    gsSP2Triangles(11, 5, 14, 0, 7, 6, 14, 0),
    gsSP2Triangles(12, 16, 13, 0, 17, 18, 10, 0),
    gsSP2Triangles(16, 18, 17, 0, 12, 18, 16, 0),
    gsSP2Triangles(0, 18, 12, 0, 0, 10, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(19, 20, 21, 0, 22, 20, 19, 0),
    gsSP2Triangles(23, 20, 22, 0, 23, 24, 20, 0),
    gsSP2Triangles(25, 24, 23, 0, 26, 25, 23, 0),
    gsSP2Triangles(19, 25, 26, 0, 21, 25, 19, 0),
    gsSPVertex(&object_ma2Vtx_0055F8[235], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP1Triangle(0, 4, 1, 0),
    gsSP1Triangle(5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultScarfTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 10, 9, 0, 15, 9, 8, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsSP1Triangle(19, 20, 21, 0),
    gsSP1Triangle(22, 23, 24, 0),
    gsSP1Triangle(25, 26, 27, 0),
    gsSPVertex(&object_ma2Vtx_0055F8[263], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 0, 6, 0, 2, 1, 7, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonBowserTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(9, 12, 13, 0, 10, 9, 13, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultScarfTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP1Triangle(25, 26, 27, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_ma2Vtx_0055F8[294], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultRightShoulderDL[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[168], 4, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_0055F8[172], 24, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 0, 1, 0),
    gsSP2Triangles(1, 7, 8, 0, 1, 2, 9, 0),
    gsSP2Triangles(10, 11, 1, 0, 3, 0, 12, 0),
    gsSP2Triangles(13, 2, 3, 0, 3, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 17, 16, 0, 20, 19, 21, 0),
    gsSP2Triangles(20, 22, 18, 0, 16, 23, 21, 0),
    gsSP2Triangles(21, 23, 20, 0, 18, 22, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultShirtCuffTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSPVertex(&object_ma2Vtx_0055F8[196], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultRightArmDL[] = {
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[144], 5, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_0055F8[149], 12, 5),
    gsSP2Triangles(1, 5, 6, 0, 7, 8, 2, 0),
    gsSP2Triangles(9, 10, 0, 0, 0, 11, 12, 0),
    gsSP2Triangles(13, 3, 0, 0, 0, 4, 14, 0),
    gsSP2Triangles(15, 4, 2, 0, 2, 3, 16, 0),
    gsSPVertex(&object_ma2Vtx_0055F8[161], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 2, 6, 0, 0),
    gsSP2Triangles(5, 2, 1, 0, 0, 6, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultRightHandDL[] = {
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[104], 4, 0),
    gsSPMatrix(0x0D000380, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_0055F8[108], 12, 4),
    gsSP2Triangles(4, 5, 1, 0, 3, 0, 6, 0),
    gsSP2Triangles(7, 8, 2, 0, 9, 10, 0, 0),
    gsSP2Triangles(0, 2, 11, 0, 1, 3, 12, 0),
    gsSP2Triangles(2, 1, 13, 0, 14, 15, 3, 0),
    gsSPVertex(&object_ma2Vtx_0055F8[120], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 0, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 4, 9, 0, 4, 8, 1, 0),
    gsSP2Triangles(5, 10, 1, 0, 0, 3, 11, 0),
    gsSP2Triangles(2, 11, 3, 0, 11, 2, 10, 0),
    gsSP2Triangles(2, 1, 10, 0, 5, 0, 10, 0),
    gsSP2Triangles(6, 9, 7, 0, 7, 0, 5, 0),
    gsSP2Triangles(11, 10, 0, 0, 12, 0, 7, 0),
    gsSP1Triangle(9, 6, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultFingersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(13, 14, 15, 0, 16, 15, 14, 0),
    gsSP2Triangles(13, 15, 17, 0, 14, 18, 16, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 20, 0),
    gsSP1Triangle(19, 22, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultLeftShoulderDL[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[64], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_0055F8[68], 24, 4),
    gsSP2Triangles(4, 5, 1, 0, 0, 1, 6, 0),
    gsSP2Triangles(7, 8, 0, 0, 9, 2, 0, 0),
    gsSP2Triangles(0, 10, 11, 0, 12, 1, 3, 0),
    gsSP2Triangles(3, 2, 13, 0, 14, 15, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(18, 17, 21, 0, 21, 20, 19, 0),
    gsSP2Triangles(16, 22, 19, 0, 21, 23, 18, 0),
    gsSP2Triangles(19, 23, 21, 0, 18, 22, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultShirtCuffTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSPVertex(&object_ma2Vtx_0055F8[92], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultLeftArmDL[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[40], 5, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_0055F8[45], 12, 5),
    gsSP2Triangles(5, 6, 1, 0, 2, 7, 8, 0),
    gsSP2Triangles(0, 9, 10, 0, 11, 12, 0, 0),
    gsSP2Triangles(0, 3, 13, 0, 14, 4, 0, 0),
    gsSP2Triangles(2, 4, 15, 0, 16, 3, 2, 0),
    gsSPVertex(&object_ma2Vtx_0055F8[57], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 4, 3, 0, 2, 6, 0, 0),
    gsSP2Triangles(1, 0, 5, 0, 4, 6, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultLeftHandDL[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_ma2Vtx_0055F8, 4, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_0055F8[4], 12, 4),
    gsSP2Triangles(1, 4, 5, 0, 6, 0, 3, 0),
    gsSP2Triangles(2, 7, 8, 0, 0, 9, 10, 0),
    gsSP2Triangles(11, 2, 0, 0, 12, 3, 1, 0),
    gsSP2Triangles(13, 1, 2, 0, 3, 14, 15, 0),
    gsSPVertex(&object_ma2Vtx_0055F8[16], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 4, 9, 0, 1, 9, 4, 0),
    gsSP2Triangles(1, 10, 7, 0, 11, 3, 2, 0),
    gsSP2Triangles(3, 11, 0, 0, 10, 0, 11, 0),
    gsSP2Triangles(10, 1, 0, 0, 10, 2, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 7, 2, 5, 0),
    gsSP2Triangles(2, 10, 11, 0, 5, 2, 12, 0),
    gsSP1Triangle(9, 6, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultFingersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(13, 14, 15, 0, 14, 13, 16, 0),
    gsSP2Triangles(17, 13, 15, 0, 16, 18, 14, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 23, 0),
    gsSP1Triangle(20, 23, 21, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultDressDL[] = {
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[299], 8, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultMiddleDressTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_0055F8[307], 20, 8),
    gsSP2Triangles(8, 4, 9, 0, 0, 5, 10, 0),
    gsSP2Triangles(5, 3, 11, 0, 12, 3, 13, 0),
    gsSP2Triangles(14, 4, 6, 0, 15, 0, 16, 0),
    gsSP2Triangles(3, 4, 17, 0, 18, 6, 19, 0),
    gsSP1Triangle(20, 5, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultFrontDressTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(1, 22, 23, 0, 24, 2, 1, 0),
    gsSP2Triangles(25, 26, 7, 0, 7, 2, 27, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultDressPatternTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSPVertex(&object_ma2Vtx_0055F8[327], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 6, 9, 0),
    gsSP2Triangles(10, 11, 1, 0, 12, 13, 11, 0),
    gsSP2Triangles(5, 4, 8, 0, 5, 14, 3, 0),
    gsSP2Triangles(8, 7, 5, 0, 11, 10, 12, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 15, 2, 0),
    gsSP2Triangles(1, 0, 10, 0, 2, 15, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultTorsoDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultBeltTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[449], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 9, 10, 7, 0),
    gsSP1Triangle(11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 23, 24, 21, 0),
    gsSP1Triangle(25, 26, 27, 0),
    gsSPVertex(&object_ma2Vtx_0055F8[477], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultFrontDressTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(7, 8, 9, 0, 9, 10, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultDressPatternTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(11, 12, 13, 0, 13, 14, 11, 0),
    gsSP2Triangles(14, 13, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 19, 17, 0, 20, 17, 19, 0),
    gsSP1Triangle(19, 21, 20, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonAdultFrontDressTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(22, 23, 24, 0, 24, 25, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultRightThighDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[446], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultRightLegDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultBootTex, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[427], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultRightFootDL[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[396], 9, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultBootTex, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_0055F8[405], 22, 9),
    gsSP2Triangles(5, 7, 9, 0, 10, 11, 5, 0),
    gsSP2Triangles(12, 13, 4, 0, 4, 0, 14, 0),
    gsSP2Triangles(15, 16, 3, 0, 3, 17, 8, 0),
    gsSP2Triangles(1, 18, 19, 0, 6, 20, 1, 0),
    gsSP2Triangles(2, 21, 22, 0, 23, 0, 2, 0),
    gsSP1Triangle(24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 29, 30, 27, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultLeftThighDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[393], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultLeftLegDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultBootTex, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[374], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonAdultLeftFootDL[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma2Vtx_0055F8[343], 9, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonAdultClothesTLUT),
    gsDPLoadTextureBlock(gMalonAdultBootTex, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma2Vtx_0055F8[352], 22, 9),
    gsSP2Triangles(9, 8, 5, 0, 5, 10, 11, 0),
    gsSP2Triangles(4, 12, 13, 0, 14, 0, 4, 0),
    gsSP2Triangles(3, 15, 16, 0, 7, 17, 3, 0),
    gsSP2Triangles(18, 19, 1, 0, 1, 20, 6, 0),
    gsSP2Triangles(21, 22, 2, 0, 2, 0, 23, 0),
    gsSP1Triangle(24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 29, 30, 27, 0),
    gsSPEndDisplayList(),
};

StandardLimb gMalonAdultRootLimb = { 
    { -186, 3450, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gMalonAdultLowerControlLimb = { 
    { 0, 0, 0 }, 0x02, 0x0A,
    NULL
};

StandardLimb gMalonAdultLeftThighLimb = { 
    { 500, 250, 250 }, 0x03, 0x05,
    gMalonAdultLeftThighDL
};

StandardLimb gMalonAdultLeftLegLimb = { 
    { 1400, 0, 0 }, 0x04, LIMB_DONE,
    gMalonAdultLeftLegDL
};

StandardLimb gMalonAdultLeftFootLimb = { 
    { 1204, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonAdultLeftFootDL
};

StandardLimb gMalonAdultRightThighLimb = { 
    { 500, 250, -250 }, 0x06, 0x08,
    gMalonAdultRightThighDL
};

StandardLimb gMalonAdultRightLegLimb = { 
    { 1400, 0, 0 }, 0x07, LIMB_DONE,
    gMalonAdultRightLegDL
};

StandardLimb gMalonAdultRightFootLimb = { 
    { 1204, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonAdultRightFootDL
};

StandardLimb gMalonAdultTorsoLimb = { 
    { 0, 0, 0 }, LIMB_DONE, 0x09,
    gMalonAdultTorsoDL
};

StandardLimb gMalonAdultDressLimb = { 
    { 400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonAdultDressDL
};

StandardLimb gMalonAdultChestAndNeckLimb = { 
    { 0, 0, 0 }, 0x0B, LIMB_DONE,
    gMalonAdultChestAndNeckDL
};

StandardLimb gMalonAdultLeftShoulderLimb = { 
    { 750, -150, 500 }, 0x0C, 0x0E,
    gMalonAdultLeftShoulderDL
};

StandardLimb gMalonAdultLeftArmLimb = { 
    { 800, 0, 0 }, 0x0D, LIMB_DONE,
    gMalonAdultLeftArmDL
};

StandardLimb gMalonAdultLeftHandLimb = { 
    { 750, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonAdultLeftHandDL
};

StandardLimb gMalonAdultRightShoulderLimb = { 
    { 750, -150, -500 }, 0x0F, 0x11,
    gMalonAdultRightShoulderDL
};

StandardLimb gMalonAdultRightArmLimb = { 
    { 800, 0, 0 }, 0x10, LIMB_DONE,
    gMalonAdultRightArmDL
};

StandardLimb gMalonAdultRightHandLimb = { 
    { 750, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonAdultRightHandDL
};

StandardLimb gMalonAdultHeadLimb = { 
    { 1450, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonAdultHeadDL
};

void* gMalonAdultSkelLimbs[] = {
    &gMalonAdultRootLimb,
    &gMalonAdultLowerControlLimb,
    &gMalonAdultLeftThighLimb,
    &gMalonAdultLeftLegLimb,
    &gMalonAdultLeftFootLimb,
    &gMalonAdultRightThighLimb,
    &gMalonAdultRightLegLimb,
    &gMalonAdultRightFootLimb,
    &gMalonAdultTorsoLimb,
    &gMalonAdultDressLimb,
    &gMalonAdultChestAndNeckLimb,
    &gMalonAdultLeftShoulderLimb,
    &gMalonAdultLeftArmLimb,
    &gMalonAdultLeftHandLimb,
    &gMalonAdultRightShoulderLimb,
    &gMalonAdultRightArmLimb,
    &gMalonAdultRightHandLimb,
    &gMalonAdultHeadLimb,
};

FlexSkeletonHeader gMalonAdultSkel = { 
    { gMalonAdultSkelLimbs, ARRAY_COUNT(gMalonAdultSkelLimbs) }, 16
};

u8 object_ma2_possiblePadding_008D9C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sMalonAdultSingToIdleAnimFrameData[] = {
    0xFFEC, 0x0D7A, 0x0000, 0x00B0, 0xFF7C, 0x4000, 0xFFEC, 0xFFE5, 0xFFD8, 0xFFCF, 0xFFCD, 0xFFCD, 0xFFCE, 0xFFCF, 
    0xFFCF, 0xFFCF, 0xFFCF, 0xFFCF, 0xFFCF, 0xFFCF, 0xFFCF, 0x0D7A, 0x0D78, 0x0D75, 0x0D73, 0x0D73, 0x0D73, 0x0D73, 
    0x0D73, 0x0D73, 0x0D73, 0x0D73, 0x0D73, 0x0D73, 0x0D73, 0x0D73, 0x0000, 0xFFEE, 0xFFD1, 0xFFC8, 0xFFE0, 0x0007, 
    0x0032, 0x0058, 0x006F, 0x0077, 0x0077, 0x0070, 0x0068, 0x0060, 0x005D, 0xC000, 0xC000, 0xBFFE, 0xBFFE, 0xBFFF, 
    0xC000, 0xC002, 0xC004, 0xC005, 0xC005, 0xC005, 0xC005, 0xC004, 0xC004, 0xC004, 0x0000, 0xFFCB, 0xFF70, 0xFF57, 
    0xFFA0, 0x0014, 0x0096, 0x0109, 0x0151, 0x0169, 0x0167, 0x0154, 0x013A, 0x0123, 0x0119, 0xC03C, 0xC050, 0xC078, 
    0xC093, 0xC09A, 0xC09B, 0xC098, 0xC095, 0xC093, 0xC093, 0xC093, 0xC093, 0xC093, 0xC093, 0xC093, 0xFFFB, 0x0009, 
    0x0000, 0x0002, 0x0002, 0x0001, 0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0000, 0x0000, 0x0000, 0x0000, 0x0042, 
    0xFF27, 0xFDCE, 0xFD94, 0xFDAF, 0xFDCA, 0xFDCA, 0xFDCB, 0xFDCB, 0xFDCB, 0xFDCB, 0xFDCB, 0xFDCB, 0xFDCB, 0xFDCB, 
    0xFBF3, 0xFC0A, 0xFC4B, 0xFBAF, 0xFB7D, 0xFB68, 0xFB69, 0xFB81, 0xFBAE, 0xFB96, 0xFB96, 0xFBAE, 0xFBAB, 0xFBA8, 
    0xFBA6, 0x0641, 0x03AE, 0x0000, 0x003C, 0x003A, 0x003B, 0x003B, 0x003A, 0x0000, 0x003B, 0x003A, 0x0000, 0x0000, 
    0x0000, 0x0000, 0xECE9, 0xF193, 0xF5C7, 0xF661, 0xF61A, 0xF5CB, 0xF5C2, 0xF5B8, 0xF5B2, 0xF5B0, 0xF5B0, 0xF5B2, 
    0xF5B4, 0xF5B5, 0xF5B6, 0xBEC6, 0xC1F9, 0xC66D, 0xC715, 0xC702, 0xC69D, 0xC61A, 0xC58E, 0xC554, 0xC51A, 0xC51D, 
    0xC551, 0xC56E, 0xC587, 0xC592, 0x0009, 0xFFFD, 0xFFD9, 0xFFBC, 0xFFBD, 0xFFC0, 0xFFC3, 0xFFC8, 0xFFCB, 0xFFCC, 
    0xFFCB, 0xFFCB, 0xFFCA, 0xFFC9, 0xFFC8, 0xFF9B, 0x0017, 0x0105, 0x0199, 0x0198, 0x0198, 0x0198, 0x0199, 0x0199, 
    0x0199, 0x0199, 0x0199, 0x0199, 0x0199, 0x0199, 0xFBA5, 0xFAE0, 0xFA03, 0xF9BB, 0xF9DA, 0xFA2B, 0xFA9F, 0xFB1A, 
    0xFB70, 0xFB8D, 0xFB8A, 0xFB73, 0xFB54, 0xFB3A, 0xFB2F, 0x0778, 0x09D5, 0x0D0A, 0x0E87, 0x0E5B, 0x0DD0, 0x0CFE, 
    0x0C17, 0x0B72, 0x0B3A, 0x0B40, 0x0B6C, 0x0BA7, 0x0BD8, 0x0BED, 0x1188, 0x10C7, 0x0FDC, 0x1051, 0x129D, 0x14C3, 
    0x15EA, 0x15ED, 0x15EF, 0x15F0, 0x15F0, 0x15EF, 0x15EF, 0x15EE, 0x15ED, 0xBD29, 0xBB2B, 0xB82F, 0xB6B3, 0xB749, 
    0xB885, 0xB94A, 0xB946, 0xB94D, 0xB950, 0xB950, 0xB94E, 0xB94C, 0xB94B, 0xB94B, 0x0000, 0x0011, 0x001E, 0x0010, 
    0xFFFA, 0xFFE4, 0xFFD6, 0xFFD4, 0xFFD8, 0xFFDF, 0xFFE6, 0xFFEB, 0xFFF2, 0xFFF8, 0xFFFB, 0xFDF6, 0xFDF7, 0xFDF8, 
    0xFDF8, 0xFDF8, 0xFDF8, 0xFDF8, 0xFDF8, 0xFDF8, 0xFDF7, 0xFDF7, 0xFDF7, 0xFDF7, 0xFDF7, 0xFDF7, 0x0272, 0x0121, 
    0x0017, 0x012B, 0x02E5, 0x049F, 0x05B5, 0x05E6, 0x0590, 0x0501, 0x0483, 0x040D, 0x0381, 0x030B, 0x02DA, 0x0272, 
    0x01F4, 0x00B6, 0xFF10, 0xFD59, 0xFBEB, 0xFB1C, 0xFAE9, 0xFB01, 0xFB50, 0xFBC0, 0xFC3D, 0xFCB0, 0xFD05, 0xFD26, 
    0xFC5D, 0xFC94, 0xFD18, 0xFDB6, 0xFE3D, 0xFEAD, 0xFED9, 0xFE93, 0xFE22, 0xFDB8, 0xFD89, 0xFDBE, 0xFE31, 0xFEA4, 
    0xFED9, 0xFD37, 0xFBC0, 0xF85D, 0xF48F, 0xF1D9, 0xF210, 0xF33E, 0xF36B, 0xF377, 0xF371, 0xF36C, 0xF365, 0xF355, 
    0xF345, 0xF33E, 0x6654, 0x695E, 0x708E, 0x78FC, 0x7FC2, 0x82D7, 0x842A, 0x85A5, 0x8706, 0x880B, 0x8870, 0x87C5, 
    0x864D, 0x84D5, 0x842A, 0xFBA9, 0xFB80, 0xFB57, 0xFBA9, 0xFCFB, 0xFEC8, 0x0000, 0x0063, 0x007D, 0x006B, 0x004B, 
    0x0039, 0x002A, 0x000F, 0x0000, 0x1EC4, 0x1FD4, 0x20E5, 0x1EC4, 0x15FD, 0x0A05, 0x020A, 0xFFBD, 0xFF72, 0x004E, 
    0x0174, 0x0206, 0x0207, 0x0209, 0x020A, 0xBF0C, 0xBDE1, 0xBCB6, 0xBF0C, 0xC88F, 0xD594, 0xDE97, 0xE1F0, 0xE36A, 
    0xE3A9, 0xE355, 0xE314, 0xE1EA, 0xDFC1, 0xDE97, 0xE3DA, 0xE850, 0xF09F, 0xF961, 0x0311, 0x0BE2, 0x1206, 0x146E, 
    0x1440, 0x1305, 0x1245, 0x123B, 0x1226, 0x1210, 0x1206, 0x06EA, 0xF72F, 0xE7B0, 0xEC95, 0xF71B, 0x026E, 0x09B9, 
    0x0B0E, 0x0937, 0x0675, 0x050A, 0x05C5, 0x0762, 0x08FE, 0x09B9, 0xD457, 0xE83C, 0xFEF7, 0x012A, 0xFE6F, 0xF9D4, 
    0xF664, 0xF467, 0xF26B, 0xF0E4, 0xF048, 0xF13C, 0xF356, 0xF570, 0xF664, 0xFB18, 0xFBBA, 0xFD4D, 0xFF56, 0x0158, 
    0x03F5, 0x061B, 0x06B6, 0x06E1, 0x06D2, 0x06C0, 0x06A7, 0x066E, 0x0635, 0x061B, 0x0764, 0x077A, 0x07B3, 0x0802, 
    0x0859, 0x08F3, 0x096F, 0x096D, 0x0943, 0x0913, 0x08FC, 0x090E, 0x0936, 0x095D, 0x096F, 0x6577, 0x695C, 0x7260, 
    0x7C84, 0x83CA, 0x8347, 0x807C, 0x80E5, 0x81E5, 0x82E9, 0x8360, 0x82EC, 0x81EE, 0x80EF, 0x807C, 0x0374, 0x03B3, 
    0x03F3, 0x0374, 0x016F, 0xFEAD, 0xFCC4, 0xFC3E, 0xFC51, 0xFCA2, 0xFCD1, 0xFCCF, 0xFCCB, 0xFCC6, 0xFCC4, 0xF0AD, 
    0xF016, 0xEF7F, 0xF0AD, 0xF578, 0xFC08, 0x0098, 0x01ED, 0x01DC, 0x0137, 0x00D2, 0x00C9, 0x00B5, 0x00A1, 0x0098, 
    0xB670, 0xB44B, 0xB226, 0xB670, 0xC7D2, 0xDFA5, 0xF061, 0xF5B5, 0xF624, 0xF468, 0xF339, 0xF2C7, 0xF1CD, 0xF0D3, 
    0xF061, 0x2E8E, 0x22B6, 0x12FD, 0x0C2A, 0x06F9, 0x030A, 0x0000, 0xFECB, 0xFF66, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0xEE34, 0xFF42, 0x1279, 0x1376, 0x0FEB, 0x0B13, 0x0826, 0x08CF, 0x0AF8, 0x0C39, 0x0BCD, 0x0ACA, 
    0x0995, 0x0893, 0x0826, 0xCC2C, 0xDBE1, 0xEFE6, 0xF6D8, 0xFB1E, 0xFDCF, 0x0000, 0x0106, 0x0083, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0xF6A1, 0xFC61, 0x025F, 0x0156, 0xFE66, 0xFB39, 0xF97B, 0xF943, 0xF976, 0xF9F6, 
    0xFAA4, 0xFB61, 0xFC0E, 0xFC8D, 0xFCBE, 0x0000, 
};

JointIndex sMalonAdultSingToIdleAnimJointIndices[] = {
    { 0x0006, 0x0015, 0x0024 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0033, 0x0042, 0x0051 },
    { 0x0060, 0x006F, 0x007E },
    { 0x0002, 0x0002, 0x008D },
    { 0x0003, 0x009C, 0x00AB },
    { 0x00BA, 0x00C9, 0x00D8 },
    { 0x0002, 0x0002, 0x00E7 },
    { 0x0004, 0x00F6, 0x0105 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0114, 0x0123, 0x0132 },
    { 0x0005, 0x0141, 0x0005 },
    { 0x0150, 0x015F, 0x016E },
    { 0x017D, 0x018C, 0x019B },
    { 0x01AA, 0x01B9, 0x01C8 },
    { 0x01D7, 0x01E6, 0x01F5 },
    { 0x0204, 0x0213, 0x0222 },
    { 0x0231, 0x0240, 0x024F },
    { 0x0002, 0x0002, 0x025E },
};

AnimationHeader gMalonAdultSingToIdleAnim = { 
    { 15 }, sMalonAdultSingToIdleAnimFrameData,
    sMalonAdultSingToIdleAnimJointIndices, 6
};

s16 sMalonAdultStandStillAnimFrameData[] = {
    0x0000, 0x0D42, 0xC000, 0x00FD, 0xFD0F, 0xFBFA, 0x1CA6, 0x00B9, 0x0E8A, 0xB179, 0xFFC7, 0x0130, 0xF556, 0x103C, 
    0x029F, 0xF60C, 0xB97F, 0x06ED, 0x4000, 0x054C, 0x0151, 0x037F, 0x6F75, 0x1185, 0xFEC7, 0x1068, 0x0E30, 0x0426, 
    0x0303, 0xFAF0, 0x6F97, 0xE7F6, 0xE85A, 0xF8B1, 0x053B, 0x0755, 
};

JointIndex sMalonAdultStandStillAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0002, 0x0000, 0x0002 },
    { 0x0003, 0x0004, 0x0005 },
    { 0x0000, 0x0000, 0x0006 },
    { 0x0007, 0x0008, 0x0009 },
    { 0x000A, 0x000B, 0x000C },
    { 0x0000, 0x0000, 0x000D },
    { 0x000E, 0x000F, 0x0010 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0011 },
    { 0x0012, 0x0013, 0x0012 },
    { 0x0014, 0x0015, 0x0016 },
    { 0x0017, 0x0018, 0x0000 },
    { 0x0019, 0x001A, 0x001B },
    { 0x001C, 0x001D, 0x001E },
    { 0x001F, 0x0000, 0x0000 },
    { 0x0020, 0x0021, 0x0022 },
    { 0x0000, 0x0000, 0x0023 },
};

AnimationHeader gMalonAdultStandStillAnim = { 
    { 2 }, sMalonAdultStandStillAnimFrameData,
    sMalonAdultStandStillAnimJointIndices, 36
};

u8 object_ma2_possiblePadding_0093CC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sMalonAdultSingAnimFrameData[] = {
    0xFF6A, 0x0D7A, 0x0000, 0xC000, 0xC05B, 0xFC5D, 0xFD37, 0x6654, 0xFBA9, 0x1EC4, 0xBF0C, 0xE3DA, 0x06EA, 0xD457, 
    0xFB18, 0x0764, 0x6577, 0x0374, 0xF0AD, 0xB670, 0x2E8E, 0xEE34, 0xCC2C, 0xF6A1, 0xFF6A, 0xFF66, 0xFF66, 0xFF69, 
    0xFF6F, 0xFF78, 0xFF81, 0xFF8B, 0xFF95, 0xFF9E, 0xFFA5, 0xFFAB, 0xFFB2, 0xFFB8, 0xFFBF, 0xFFC5, 0xFFCB, 0xFFD0, 
    0xFFD4, 0xFFD8, 0xFFDC, 0xFFE1, 0xFFE6, 0xFFED, 0xFFF6, 0x0000, 0x0015, 0x0034, 0x0052, 0x0064, 0x006A, 0x006F, 
    0x0071, 0x0072, 0x0071, 0x0070, 0x006F, 0x006D, 0x006B, 0x006B, 0x006A, 0x0068, 0x0065, 0x0061, 0x005B, 0x0055, 
    0x004E, 0x0048, 0x0041, 0x003A, 0x0032, 0x0029, 0x001D, 0x0010, 0x0000, 0xFFE0, 0xFFB0, 0xFF82, 0x0D7A, 0x0D78, 
    0x0D71, 0x0D64, 0x0D55, 0x0D43, 0x0D32, 0x0D21, 0x0D13, 0x0D09, 0x0D04, 0x0D0D, 0x0D26, 0x0D43, 0x0D5A, 0x0D61, 
    0x0D57, 0x0D47, 0x0D32, 0x0D19, 0x0D00, 0x0CE7, 0x0CD1, 0x0CC0, 0x0CB5, 0x0CB2, 0x0CD1, 0x0D14, 0x0D58, 0x0D7A, 
    0x0D7B, 0x0D74, 0x0D68, 0x0D58, 0x0D45, 0x0D31, 0x0D1F, 0x0D0F, 0x0D03, 0x0CFE, 0x0D07, 0x0D20, 0x0D3E, 0x0D57, 
    0x0D61, 0x0D5C, 0x0D51, 0x0D42, 0x0D31, 0x0D1F, 0x0D0D, 0x0CFC, 0x0CEF, 0x0CE7, 0x0CE5, 0x0CFD, 0x0D2F, 0x0D62, 
    0x0015, 0x001A, 0x002D, 0x003F, 0x004E, 0x0057, 0x005C, 0x005D, 0x005A, 0x0054, 0x004D, 0x0043, 0x0034, 0x0025, 
    0x0018, 0x0013, 0x0012, 0x0011, 0x0011, 0x000F, 0x000C, 0x0007, 0x0000, 0xFFF6, 0xFFE9, 0xFFD8, 0xFFBE, 0xFFAA, 
    0xFFB9, 0xFFE3, 0xFFE7, 0xFFD4, 0xFFBC, 0xFFA6, 0xFF91, 0xFF80, 0xFF72, 0xFF68, 0xFF62, 0xFF60, 0xFF67, 0xFF7A, 
    0xFF95, 0xFFAF, 0xFFBD, 0xFFBB, 0xFFB6, 0xFFAF, 0xFFAA, 0xFFA8, 0xFFA9, 0xFFAE, 0xFFB9, 0xFFC9, 0xFFDE, 0x0007, 
    0x0033, 0x0037, 0xFE13, 0xFE02, 0xFE02, 0xFE0F, 0xFE26, 0xFE46, 0xFE6B, 0xFE92, 0xFEB9, 0xFEDC, 0xFEF8, 0xFF12, 
    0xFF2E, 0xFF4A, 0xFF66, 0xFF80, 0xFF96, 0xFFA8, 0xFFB8, 0xFFC7, 0xFFD8, 0xFFEA, 0x0000, 0x001B, 0x003D, 0x0066, 
    0x00BA, 0x013A, 0x01B5, 0x01FD, 0x0217, 0x0227, 0x0231, 0x0234, 0x0233, 0x022E, 0x0228, 0x0221, 0x021A, 0x0216, 
    0x0213, 0x020D, 0x0202, 0x01F2, 0x01DA, 0x01BE, 0x01A5, 0x018C, 0x0171, 0x0154, 0x0133, 0x010C, 0x00DE, 0x00A8, 
    0x0068, 0xFFE8, 0xFF27, 0xFE71, 0xFD16, 0xFCC1, 0xFB48, 0xF9B3, 0xF835, 0xF6DB, 0xF5AD, 0xF4B0, 0xF3EA, 0xF363, 
    0xF324, 0xF398, 0xF4E2, 0xF6A9, 0xF867, 0xF8F8, 0xF820, 0xF6E3, 0xF585, 0xF42B, 0xF2E9, 0xF1CD, 0xF0E2, 0xF030, 
    0xEFC3, 0xEFA7, 0xF0DC, 0xF3E4, 0xF83F, 0xFC8C, 0xFCE7, 0xFB94, 0xF9EE, 0xF857, 0xF6E4, 0xF59F, 0xF48E, 0xF3B9, 
    0xF328, 0xF2E7, 0xF35B, 0xF4A2, 0xF66B, 0xF83F, 0xF913, 0xF899, 0xF7B5, 0xF6A2, 0xF586, 0xF478, 0xF387, 0xF2BE, 
    0xF227, 0xF1CA, 0xF1B5, 0xF2C6, 0xF56E, 0xF948, 0x03CA, 0x0481, 0x07AF, 0x0B17, 0x0E4F, 0x1138, 0x13C4, 0x15E6, 
    0x1791, 0x18B5, 0x193E, 0x1845, 0x157E, 0x11A8, 0x0DE7, 0x0CB0, 0x0E81, 0x112C, 0x141F, 0x170A, 0x19C0, 0x1C25, 
    0x1E22, 0x1FA1, 0x208D, 0x20CA, 0x1E2C, 0x17A0, 0x0E3B, 0x04F4, 0x042F, 0x070B, 0x0A97, 0x0E04, 0x1122, 0x13DF, 
    0x162B, 0x17F6, 0x192E, 0x19BA, 0x18C1, 0x1601, 0x1228, 0x0E39, 0x0C71, 0x0D78, 0x0F64, 0x11B5, 0x1419, 0x165F, 
    0x1868, 0x1A1A, 0x1B62, 0x1C2A, 0x1C58, 0x1A0C, 0x144F, 0x0C00, 0xFBCC, 0xFBD2, 0xFBE0, 0xFBF8, 0xFC18, 0xFC40, 
    0xFC6E, 0xFCA3, 0xFCDD, 0xFD1B, 0xFD5E, 0xFDA3, 0xFDEC, 0xFE36, 0xFE81, 0xFECC, 0xFF17, 0xFF62, 0xFFAA, 0xFFF0, 
    0x0032, 0x0071, 0x00AB, 0x00DF, 0x010D, 0x0135, 0x0155, 0x016D, 0x017C, 0x0181, 0x017C, 0x016D, 0x0155, 0x0135, 
    0x010D, 0x00DF, 0x00AB, 0x0071, 0x0032, 0xFFF0, 0xFFAA, 0xFF62, 0xFF17, 0xFECC, 0xFE81, 0xFE36, 0xFDEC, 0xFDA3, 
    0xFD5E, 0xFD1B, 0xFCDD, 0xFCA3, 0xFC6E, 0xFC40, 0xFC18, 0xFBF8, 0xFBE0, 0xFBD2, 0xED0F, 0xED11, 0xED11, 0xED10, 
    0xED0E, 0xED0C, 0xED09, 0xED06, 0xED04, 0xED01, 0xECFF, 0xECFD, 0xECFB, 0xECF9, 0xECF7, 0xECF5, 0xECF4, 0xECF2, 
    0xECF2, 0xECF1, 0xECF0, 0xECEE, 0xECED, 0xECEB, 0xECE9, 0xECE7, 0xECE2, 0xECDD, 0xECD8, 0xECD6, 0xECD5, 0xECD5, 
    0xECD4, 0xECD4, 0xECD4, 0xECD4, 0xECD4, 0xECD4, 0xECD4, 0xECD4, 0xECD4, 0xECD5, 0xECD5, 0xECD6, 0xECD7, 0xECD8, 
    0xECD9, 0xECDA, 0xECDB, 0xECDC, 0xECDD, 0xECDF, 0xECE1, 0xECE3, 0xECE7, 0xECEF, 0xECFB, 0xED08, 0xC142, 0xC0E8, 
    0xBF35, 0xBD5B, 0xBB97, 0xB9F8, 0xB889, 0xB751, 0xB659, 0xB5AA, 0xB553, 0xB5CA, 0xB738, 0xB937, 0xBB2B, 0xBBC5, 
    0xBAC1, 0xB94A, 0xB7AD, 0xB614, 0xB497, 0xB345, 0xB228, 0xB14B, 0xB0BA, 0xB082, 0xB1BE, 0xB502, 0xB9D0, 0xBEA8, 
    0xBF05, 0xBD73, 0xBB86, 0xB9AD, 0xB7FF, 0xB688, 0xB54E, 0xB45A, 0xB3B5, 0xB36B, 0xB3F3, 0xB573, 0xB78B, 0xB9B2, 
    0xBAB4, 0xBA34, 0xB939, 0xB807, 0xB6CB, 0xB5A0, 0xB49A, 0xB3C4, 0xB32C, 0xB2DD, 0xB2E6, 0xB466, 0xB7DE, 0xBCAC, 
    0x0027, 0x002C, 0x0041, 0x0058, 0x006C, 0x007B, 0x0085, 0x0089, 0x008A, 0x0086, 0x0081, 0x0074, 0x0060, 0x0049, 
    0x0036, 0x002D, 0x0030, 0x0034, 0x0039, 0x003D, 0x0040, 0x0040, 0x003D, 0x0036, 0x002A, 0x001A, 0xFFFA, 0xFFD7, 
    0xFFD1, 0xFFE3, 0xFFE2, 0xFFD8, 0xFFCA, 0xFFBB, 0xFFAE, 0xFFA3, 0xFF9A, 0xFF94, 0xFF90, 0xFF8F, 0xFF94, 0xFFA2, 
    0xFFB4, 0xFFC6, 0xFFD0, 0xFFD1, 0xFFD0, 0xFFCF, 0xFFCF, 0xFFD2, 0xFFD8, 0xFFE1, 0xFFEE, 0x0000, 0x0016, 0x003B, 
    0x005C, 0x0051, 0xFD6C, 0xFD5B, 0xFD5A, 0xFD67, 0xFD7F, 0xFD9F, 0xFDC3, 0xFDEA, 0xFE11, 0xFE33, 0xFE50, 0xFE6A, 
    0xFE86, 0xFEA3, 0xFEBF, 0xFED8, 0xFEEE, 0xFF00, 0xFF10, 0xFF1F, 0xFF2F, 0xFF41, 0xFF57, 0xFF72, 0xFF94, 0xFFBD, 
    0x0012, 0x0092, 0x010E, 0x0156, 0x0170, 0x0180, 0x018A, 0x018D, 0x018B, 0x0187, 0x0180, 0x0179, 0x0172, 0x016E, 
    0x016B, 0x0165, 0x015B, 0x014A, 0x0132, 0x0117, 0x00FE, 0x00E4, 0x00CA, 0x00AC, 0x008B, 0x0064, 0x0036, 0x0000, 
    0xFFBF, 0xFF3F, 0xFE7F, 0xFDCA, 0xFCB8, 0xFC7A, 0xFB33, 0xF9B6, 0xF844, 0xF6F1, 0xF5C6, 0xF4CC, 0xF407, 0xF380, 
    0xF341, 0xF3B2, 0xF4F4, 0xF6AF, 0xF85A, 0xF8E1, 0xF812, 0xF6E1, 0xF58C, 0xF439, 0xF2FD, 0xF1E5, 0xF0FC, 0xF04C, 
    0xEFDF, 0xEFC2, 0xF0F0, 0xF3E2, 0xF805, 0xFB9A, 0xFBCE, 0xFAE1, 0xF981, 0xF812, 0xF6B7, 0xF581, 0xF47B, 0xF3AD, 
    0xF321, 0xF2E2, 0xF352, 0xF48F, 0xF647, 0xF800, 0xF8C5, 0xF858, 0xF785, 0xF683, 0xF574, 0xF471, 0xF388, 0xF2C5, 
    0xF233, 0xF1DA, 0xF1C8, 0xF2D9, 0xF57E, 0xF946, 0x0524, 0x05A9, 0x0869, 0x0B9E, 0x0EBC, 0x1198, 0x141D, 0x163B, 
    0x17E5, 0x1909, 0x1993, 0x18A0, 0x15E8, 0x122D, 0x0E93, 0x0D70, 0x0F2F, 0x11C2, 0x14A2, 0x177F, 0x1A2C, 0x1C8A, 
    0x1E82, 0x2000, 0x20EC, 0x212C, 0x1E9D, 0x183C, 0x0F4C, 0x0791, 0x071F, 0x091F, 0x0C16, 0x0F2E, 0x121B, 0x14B8, 
    0x16EE, 0x18AB, 0x19DA, 0x1A62, 0x196F, 0x16C2, 0x130D, 0x0F55, 0x0DAC, 0x0E99, 0x105F, 0x128E, 0x14D7, 0x1707, 
    0x18FF, 0x1AA4, 0x1BE2, 0x1CA1, 0x1CC8, 0x1A78, 0x14BF, 0x0C92, 0xFDDB, 0xFDDD, 0xFDE3, 0xFDED, 0xFDFB, 0xFE0C, 
    0xFE20, 0xFE36, 0xFE4F, 0xFE6A, 0xFE87, 0xFEA4, 0xFEC3, 0xFEE3, 0xFF03, 0xFF24, 0xFF44, 0xFF64, 0xFF83, 0xFFA1, 
    0xFFBD, 0xFFD8, 0xFFF1, 0x0007, 0x001B, 0x002C, 0x003A, 0x0044, 0x004A, 0x004C, 0x004A, 0x0044, 0x003A, 0x002C, 
    0x001B, 0x0007, 0xFFF1, 0xFFD8, 0xFFBD, 0xFFA1, 0xFF83, 0xFF64, 0xFF44, 0xFF24, 0xFF03, 0xFEE3, 0xFEC3, 0xFEA4, 
    0xFE87, 0xFE6A, 0xFE4F, 0xFE36, 0xFE20, 0xFE0C, 0xFDFB, 0xFDED, 0xFDE3, 0xFDDD, 0x1190, 0x1190, 0x1190, 0x1190, 
    0x1190, 0x1190, 0x1190, 0x1190, 0x1190, 0x118F, 0x118F, 0x118F, 0x118E, 0x118E, 0x118D, 0x118C, 0x118C, 0x118C, 
    0x118B, 0x118B, 0x118B, 0x118B, 0x118A, 0x1189, 0x1188, 0x1187, 0x1184, 0x117F, 0x117A, 0x1177, 0x1176, 0x1175, 
    0x1175, 0x1174, 0x1174, 0x1174, 0x1174, 0x1174, 0x1175, 0x1175, 0x1175, 0x1176, 0x1176, 0x1177, 0x1179, 0x117A, 
    0x117B, 0x117C, 0x117D, 0x117E, 0x1180, 0x1181, 0x1183, 0x1185, 0x1187, 0x118B, 0x118E, 0x1190, 0xBD5A, 0xBD0B, 
    0xBB90, 0xB9DC, 0xB838, 0xB6BD, 0xB572, 0xB45F, 0xB38C, 0xB2FE, 0xB2C2, 0xB351, 0xB4D6, 0xB6E6, 0xB8E3, 0xB98C, 
    0xB8A6, 0xB74C, 0xB5C7, 0xB443, 0xB2DA, 0xB19C, 0xB096, 0xAFD5, 0xAF66, 0xAF58, 0xB0E2, 0xB48E, 0xB993, 0xBDD9, 
    0xBE22, 0xBD17, 0xBB85, 0xB9DE, 0xB84C, 0xB6E4, 0xB5B2, 0xB4C0, 0xB41B, 0xB3D0, 0xB451, 0xB5BD, 0xB7B4, 0xB9AB, 
    0xBA83, 0xB9F8, 0xB8F8, 0xB7C1, 0xB67B, 0xB540, 0xB422, 0xB32D, 0xB26C, 0xB1EB, 0xB1B7, 0xB2B9, 0xB573, 0xB986, 
    0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 
    0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 
    0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 
    0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 0xFFC1, 
    0xFFC1, 0xFFC1, 0xFA50, 0xF948, 0xF85C, 0xF7B1, 0xF76C, 0xF7B3, 0xF879, 0xF98B, 0xFAD5, 0xFC42, 0xFDBE, 0xFF35, 
    0x0092, 0x01C3, 0x02B1, 0x0357, 0x03C0, 0x03F0, 0x03EB, 0x03B7, 0x0358, 0x02C9, 0x020D, 0x012F, 0x003C, 0xFF40, 
    0xFE48, 0xFD60, 0xFC94, 0xFBF1, 0xFB80, 0xFB43, 0xFB3A, 0xFB66, 0xFBC6, 0xFC53, 0xFCFE, 0xFDBF, 0xFE91, 0xFF6D, 
    0x004B, 0x0125, 0x01F4, 0x02B1, 0x0383, 0x0477, 0x0562, 0x0617, 0x066B, 0x0632, 0x0572, 0x0460, 0x030F, 0x0192, 
    0xFFFE, 0xFE66, 0xFCDF, 0xFB7B, 0x0417, 0x0418, 0x041A, 0x041B, 0x041C, 0x041C, 0x041C, 0x041B, 0x041A, 0x0418, 
    0x0417, 0x0415, 0x0414, 0x0413, 0x0412, 0x0411, 0x0410, 0x040F, 0x040E, 0x040E, 0x040E, 0x040E, 0x040F, 0x040F, 
    0x0410, 0x0411, 0x0412, 0x0413, 0x0414, 0x0414, 0x0415, 0x0415, 0x0416, 0x0416, 0x0416, 0x0416, 0x0415, 0x0415, 
    0x0415, 0x0414, 0x0414, 0x0413, 0x0412, 0x0412, 0x0410, 0x040F, 0x040D, 0x040B, 0x040A, 0x0409, 0x040A, 0x040B, 
    0x040C, 0x040E, 0x0410, 0x0412, 0x0414, 0x0415, 0x4041, 0x4046, 0x4046, 0x4043, 0x403F, 0x4039, 0x4032, 0x402C, 
    0x4026, 0x4022, 0x4021, 0x4022, 0x4024, 0x4028, 0x402D, 0x4032, 0x4037, 0x403C, 0x4040, 0x4044, 0x4046, 0x4047, 
    0x4045, 0x4041, 0x4035, 0x401E, 0x4001, 0x3FE4, 0x3FCC, 0x3FBF, 0x3FBA, 0x3FBA, 0x3FBD, 0x3FC1, 0x3FC7, 0x3FCE, 
    0x3FD4, 0x3FDA, 0x3FDE, 0x3FDF, 0x3FDE, 0x3FDC, 0x3FD8, 0x3FD3, 0x3FCE, 0x3FC9, 0x3FC4, 0x3FC0, 0x3FBC, 0x3FBA, 
    0x3FB9, 0x3FBB, 0x3FBF, 0x3FCB, 0x3FE2, 0x3FFF, 0x401C, 0x4034, 0x026E, 0x026E, 0x026E, 0x026E, 0x026F, 0x026F, 
    0x0270, 0x0270, 0x0271, 0x0271, 0x0271, 0x0271, 0x0271, 0x0271, 0x0270, 0x0270, 0x026F, 0x026F, 0x026E, 0x026E, 
    0x026E, 0x026E, 0x026E, 0x026E, 0x0270, 0x0271, 0x0272, 0x0271, 0x0270, 0x026E, 0x026E, 0x026E, 0x026E, 0x026F, 
    0x026F, 0x0270, 0x0270, 0x0271, 0x0271, 0x0271, 0x0271, 0x0271, 0x0271, 0x0270, 0x0270, 0x026F, 0x026F, 0x026E, 
    0x026E, 0x026E, 0x026E, 0x026E, 0x026E, 0x0270, 0x0271, 0x0272, 0x0271, 0x0270, 0x4446, 0x448A, 0x4491, 0x4467, 
    0x4419, 0x43B5, 0x4346, 0x42DA, 0x427D, 0x423C, 0x4223, 0x4232, 0x425C, 0x429B, 0x42E8, 0x433E, 0x4396, 0x43EA, 
    0x4435, 0x4470, 0x4496, 0x449F, 0x4487, 0x4446, 0x4376, 0x41F0, 0x400C, 0x3E26, 0x3C97, 0x3BBA, 0x3B76, 0x3B6F, 
    0x3B99, 0x3BE7, 0x3C4B, 0x3CBA, 0x3D26, 0x3D83, 0x3DC4, 0x3DDD, 0x3DCE, 0x3DA4, 0x3D65, 0x3D18, 0x3CC2, 0x3C6A, 
    0x3C16, 0x3BCB, 0x3B90, 0x3B6A, 0x3B61, 0x3B79, 0x3BBA, 0x3C8A, 0x3E10, 0x3FF4, 0x41DA, 0x4369, 0x0000, 0x009A, 
    0x0170, 0x025B, 0x0334, 0x03D4, 0x0413, 0x037A, 0x0222, 0x00C3, 0x0012, 0x000A, 0x0029, 0x0067, 0x00BA, 0x0119, 
    0x017A, 0x01D6, 0x0222, 0x0256, 0x0269, 0x025E, 0x0240, 0x0212, 0x01D4, 0x0189, 0x0133, 0x00D3, 0x006D, 0x0000, 
    0xFF66, 0xFE90, 0xFDA5, 0xFCCC, 0xFC2C, 0xFBED, 0xFC86, 0xFDDE, 0xFF3D, 0xFFEE, 0xFFF6, 0xFFD7, 0xFF99, 0xFF46, 
    0xFEE7, 0xFE86, 0xFE2A, 0xFDDE, 0xFDAA, 0xFD97, 0xFDA2, 0xFDC0, 0xFDEE, 0xFE2C, 0xFE77, 0xFECD, 0xFF2D, 0xFF93, 
    
};

JointIndex sMalonAdultSingAnimJointIndices[] = {
    { 0x0018, 0x0052, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0003, 0x0002, 0x0004 },
    { 0x008C, 0x00C6, 0x0100 },
    { 0x0002, 0x0002, 0x013A },
    { 0x0174, 0x01AE, 0x01E8 },
    { 0x0222, 0x025C, 0x0296 },
    { 0x0002, 0x0002, 0x02D0 },
    { 0x030A, 0x0344, 0x037E },
    { 0x0002, 0x0002, 0x0002 },
    { 0x03B8, 0x03F2, 0x042C },
    { 0x0466, 0x04A0, 0x04DA },
    { 0x0005, 0x0006, 0x0007 },
    { 0x0008, 0x0009, 0x000A },
    { 0x000B, 0x000C, 0x000D },
    { 0x000E, 0x000F, 0x0010 },
    { 0x0011, 0x0012, 0x0013 },
    { 0x0014, 0x0015, 0x0016 },
    { 0x0002, 0x0514, 0x0017 },
};

AnimationHeader gMalonAdultSingAnim = { 
    { 58 }, sMalonAdultSingAnimFrameData,
    sMalonAdultSingAnimJointIndices, 24
};

