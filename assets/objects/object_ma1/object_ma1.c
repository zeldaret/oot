#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ma1.h"

s16 sMalonChildRaiseHandsAnimFrameData[] = {
    0x0000, 0x0738, 0xC000, 0xECEB, 0xC2CC, 0x7D8E, 0x871C, 0x0000, 0x000B, 0x0021, 0x002C, 0x0021, 0x000B, 0x0000, 
    0x0738, 0x0740, 0x074E, 0x0756, 0x074E, 0x0740, 0x0738, 0x0000, 0x0008, 0x0016, 0x001E, 0x0016, 0x0008, 0x0000, 
    0x0000, 0x0000, 0xFFFF, 0xFFFF, 0xFFFF, 0x0000, 0x0000, 0x0000, 0x0055, 0x00F1, 0x0143, 0x00F1, 0x0055, 0x0000, 
    0xFD82, 0xFDED, 0xFE5B, 0xFE94, 0xFE5A, 0xFDED, 0xFD82, 0x00AF, 0x004F, 0x004F, 0x004F, 0x004F, 0x004F, 0x00AF, 
    0x02D6, 0x0290, 0x01E2, 0x0100, 0x001E, 0xFF71, 0xFF2B, 0xFFB6, 0xFF41, 0xFF03, 0xFF24, 0xFFA8, 0xFFEE, 0xFFF1, 
    0x0751, 0x06CB, 0x058F, 0x041F, 0x023A, 0x00BE, 0x0068, 0x02C2, 0xFF47, 0xFB20, 0xF858, 0xF8AE, 0xF9B0, 0xF7A7, 
    0x0332, 0x08D4, 0x0E3C, 0x10AE, 0x0C75, 0x07E7, 0x0B7F, 0x0633, 0x057A, 0x04C1, 0x0408, 0x0327, 0x0247, 0x01E1, 
    0x10D0, 0x1104, 0x1138, 0x116D, 0x125D, 0x1388, 0x141B, 0xC0E3, 0xBF1E, 0xBD58, 0xBB93, 0xBC35, 0xBDC5, 0xBEA6, 
    0xFC72, 0xF9DF, 0xF3FD, 0xED8C, 0xE94C, 0xEB96, 0xEF00, 0xF8E4, 0xF9C7, 0xFBDA, 0xFE39, 0x0000, 0x004C, 0x0000, 
    0xF555, 0xEE3C, 0xDDBF, 0xCB10, 0xBD65, 0xBCE1, 0xC0BF, 0x0000, 0xFA0F, 0xEC5C, 0xDD1B, 0xD27C, 0xD4F8, 0xDA92, 
    0xFC42, 0xFB32, 0xF893, 0xF53F, 0xF211, 0xEDFF, 0xEB56, 0xF8E4, 0xFE70, 0x0AFF, 0x186E, 0x209A, 0x181B, 0x0DDD, 
    0x0000, 0x009D, 0x0208, 0x03A3, 0x04CE, 0x04D0, 0x0473, 0x0600, 0x07C4, 0x0BB1, 0x0FB8, 0x11CB, 0x0D3E, 0x087B, 
    0x871C, 0x87FB, 0x89FC, 0x8C38, 0x8DC9, 0x8D75, 0x8CAB, 0x071C, 0x0639, 0x0426, 0x01C7, 0x0000, 0xFFB4, 0x0000, 
    0xF555, 0xECF9, 0xD98D, 0xC38B, 0xB370, 0xB2D0, 0xB75C, 0x0000, 0x06D6, 0x16A8, 0x286F, 0x3521, 0x33F8, 0x2EE6, 
    0xFD39, 0xFE99, 0x01E8, 0x05ED, 0x096D, 0x0C87, 0x0E38, 0xF8E4, 0xFEA4, 0x0BBF, 0x19F9, 0x231A, 0x1CA1, 0x13E7, 
    0x0000, 0x0005, 0x000F, 0x0015, 0x000F, 0x0005, 0x0000, 0x020A, 0x021D, 0x0230, 0x0209, 0x015B, 0x0074, 0x0000, 
    0x0413, 0x04A6, 0x0596, 0x05B5, 0x03ED, 0x0154, 0x0000, 0x0000, 
};

JointIndex sMalonChildRaiseHandsAnimJointIndices[] = {
    { 0x0007, 0x000E, 0x0015 },
    { 0x0002, 0x0000, 0x0002 },
    { 0x001C, 0x0023, 0x002A },
    { 0x0000, 0x0000, 0x0031 },
    { 0x0038, 0x0003, 0x0004 },
    { 0x003F, 0x0046, 0x004D },
    { 0x0000, 0x0000, 0x0054 },
    { 0x005B, 0x0062, 0x0069 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0070, 0x0006 },
    { 0x0000, 0x0077, 0x007E },
    { 0x0085, 0x008C, 0x0093 },
    { 0x009A, 0x00A1, 0x00A8 },
    { 0x0000, 0x00AF, 0x00B6 },
    { 0x00BD, 0x00C4, 0x00CB },
    { 0x00D2, 0x00D9, 0x00E0 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gMalonChildRaiseHandsAnim = { 
    { 7 }, sMalonChildRaiseHandsAnimFrameData,
    sMalonChildRaiseHandsAnimJointIndices, 7
};

u8 object_ma1_possiblePadding_000254[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sMalonChildIdleAnimFrameData[] = {
    0x0000, 0x0738, 0xC000, 0x7D8E, 0xFC72, 0x871C, 0xF555, 0xF8E4, 0x0600, 0x071C, 0x0000, 0xFFFF, 0xFFFA, 0xFFF4, 
    0xFFEC, 0xFFE3, 0xFFD9, 0xFFCE, 0xFFC3, 0xFFB9, 0xFFB0, 0xFFA8, 0xFFA2, 0xFF9D, 0xFF9C, 0xFF9D, 0xFFA1, 0xFFA6, 
    0xFFAE, 0xFFB6, 0xFFBF, 0xFFC9, 0xFFD3, 0xFFDD, 0xFFE6, 0xFFEE, 0xFFF6, 0xFFFB, 0xFFFF, 0x0738, 0x0738, 0x0738, 
    0x0738, 0x0738, 0x0739, 0x0739, 0x0739, 0x0739, 0x0739, 0x073A, 0x073A, 0x073A, 0x073A, 0x073A, 0x073A, 0x073A, 
    0x073A, 0x073A, 0x0739, 0x0739, 0x0739, 0x0739, 0x0739, 0x0739, 0x0738, 0x0738, 0x0738, 0x0738, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0000, 0x0000, 0x0002, 0x0003, 0x0003, 0x0000, 0x0000, 
    0x0003, 0x0003, 0x0002, 0x0002, 0x0002, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0xFFF5, 0xFFD7, 0xFFA8, 0xFF6C, 0xFF27, 0xFEDB, 0xFE8C, 0xFE3D, 0xFDF1, 0xFDAC, 0xFD71, 0xFD42, 0xFD24, 0xFD19, 
    0xFD23, 0xFD3D, 0xFD66, 0xFD9B, 0xFDD9, 0xFE1E, 0xFE67, 0xFEB1, 0xFEFA, 0xFF3F, 0xFF7D, 0xFFB3, 0xFFDC, 0xFFF7, 
    0xFD82, 0xFDA3, 0xFDD9, 0xFDB2, 0xFDD9, 0xFDDA, 0xFDDA, 0xFDB2, 0xFDDA, 0xFDDA, 0xFDDA, 0xFDB2, 0xFDB2, 0xFDB2, 
    0xFDDA, 0xFDDA, 0xFDB2, 0xFDB2, 0xFDB2, 0xFDB2, 0xFDB2, 0xFDDA, 0xFDDA, 0xFDDA, 0xFDDA, 0xFDD9, 0xFDB2, 0xFDD9, 
    0xFD9D, 0x00AF, 0x006E, 0x0000, 0x004F, 0x0000, 0x0000, 0x0000, 0x004F, 0x0000, 0x0000, 0x0000, 0x004F, 0x0050, 
    0x004F, 0x0000, 0x0000, 0x004F, 0x004F, 0x004F, 0x004F, 0x004F, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x004F, 
    0x0000, 0x0078, 0xFFFC, 0xFFF0, 0xFFCD, 0xFF99, 0xFF56, 0xFF08, 0xFEB3, 0xFE5A, 0xFE02, 0xFDAD, 0xFD5F, 0xFD1C, 
    0xFCE7, 0xFCC5, 0xFCB9, 0xFCC4, 0xFCE2, 0xFD10, 0xFD4C, 0xFD92, 0xFDDF, 0xFE31, 0xFE84, 0xFED6, 0xFF23, 0xFF69, 
    0xFFA5, 0xFFD3, 0xFFF1, 0xECEB, 0xECEC, 0xECEE, 0xECF2, 0xECF7, 0xECFD, 0xED04, 0xED0C, 0xED14, 0xED1C, 0xED23, 
    0xED2A, 0xED30, 0xED33, 0xED35, 0xED33, 0xED30, 0xED2B, 0xED25, 0xED1E, 0xED17, 0xED0F, 0xED08, 0xED01, 0xECFB, 
    0xECF5, 0xECF1, 0xECEE, 0xECEB, 0xC2CC, 0xC2F3, 0xC33A, 0xC32C, 0xC375, 0xC39C, 0xC3C9, 0xC3D0, 0xC428, 0xC457, 
    0xC482, 0xC481, 0xC49F, 0xC4B3, 0xC4E1, 0xC4DB, 0xC4A2, 0xC488, 0xC466, 0xC43E, 0xC413, 0xC40E, 0xC3E1, 0xC3B7, 
    0xC38F, 0xC36B, 0xC326, 0xC337, 0xC2ED, 0xFFB6, 0xFFAF, 0xFF9E, 0xFF8C, 0xFF7B, 0xFF6D, 0xFF63, 0xFF5D, 0xFF5A, 
    0xFF5A, 0xFF5B, 0xFF5E, 0xFF60, 0xFF62, 0xFF63, 0xFF62, 0xFF60, 0xFF5E, 0xFF5C, 0xFF5A, 0xFF59, 0xFF5B, 0xFF5F, 
    0xFF67, 0xFF71, 0xFF7F, 0xFF8F, 0xFFA1, 0xFFAF, 0x0751, 0x0746, 0x0727, 0x06F7, 0x06BB, 0x0674, 0x0627, 0x05D7, 
    0x0587, 0x053A, 0x04F4, 0x04B8, 0x0489, 0x046B, 0x0460, 0x0469, 0x0484, 0x04AE, 0x04E3, 0x0522, 0x0568, 0x05B2, 
    0x05FD, 0x0647, 0x068D, 0x06CC, 0x0702, 0x072C, 0x0747, 0x02C2, 0x0297, 0x0233, 0x01B7, 0x0139, 0x00C0, 0x0051, 
    0xFFEF, 0xFF9A, 0xFF52, 0xFF18, 0xFEEB, 0xFECA, 0xFEB7, 0xFEB0, 0xFEB6, 0xFEC7, 0xFEE3, 0xFF0B, 0xFF3D, 0xFF7C, 
    0xFFC5, 0x001B, 0x007C, 0x00E7, 0x015A, 0x01D1, 0x0242, 0x029D, 0x0332, 0x0386, 0x044D, 0x0541, 0x063C, 0x072C, 
    0x0809, 0x08CD, 0x0978, 0x0A07, 0x0A7D, 0x0AD8, 0x0B1A, 0x0B42, 0x0B50, 0x0B44, 0x0B21, 0x0AE7, 0x0A98, 0x0A31, 
    0x09B4, 0x0920, 0x0875, 0x07B3, 0x06DE, 0x05FA, 0x050E, 0x042E, 0x037C, 0x0633, 0x05F5, 0x05B7, 0x0579, 0x053A, 
    0x04FC, 0x04BE, 0x0480, 0x0442, 0x0404, 0x03C6, 0x0387, 0x0349, 0x02E7, 0x0264, 0x01D5, 0x014C, 0x00DE, 0x009F, 
    0x00A3, 0x00EC, 0x0165, 0x0204, 0x02BA, 0x037B, 0x043B, 0x04EE, 0x0586, 0x05F6, 0x10D0, 0x10E0, 0x10F0, 0x1100, 
    0x1111, 0x1121, 0x1131, 0x1141, 0x1151, 0x1162, 0x1172, 0x1182, 0x1192, 0x11A2, 0x11B3, 0x11C4, 0x11D2, 0x11DC, 
    0x11DF, 0x11D9, 0x11C8, 0x11AF, 0x1191, 0x116E, 0x114A, 0x1127, 0x1107, 0x10EC, 0x10D9, 0xC0E3, 0xC04C, 0xBFB4, 
    0xBF1D, 0xBE85, 0xBDEE, 0xBD57, 0xBCBF, 0xBC28, 0xBB90, 0xBAF9, 0xBA61, 0xB9CA, 0xB8DF, 0xB7A7, 0xB652, 0xB50D, 
    0xB40A, 0xB376, 0xB382, 0xB431, 0xB557, 0xB6D5, 0xB88B, 0xBA5D, 0xBC2B, 0xBDD7, 0xBF44, 0xC052, 0xF8E4, 0xF8C9, 
    0xF882, 0xF819, 0xF799, 0xF70E, 0xF683, 0xF604, 0xF59A, 0xF553, 0xF539, 0xF540, 0xF556, 0xF578, 0xF5A4, 0xF5DA, 
    0xF617, 0xF659, 0xF6A0, 0xF6E9, 0xF733, 0xF77C, 0xF7C3, 0xF806, 0xF843, 0xF878, 0xF8A5, 0xF8C7, 0xF8DC, 0xFC42, 
    0xFC13, 0xFB9C, 0xFAF0, 0xFA21, 0xF942, 0xF864, 0xF79B, 0xF6F8, 0xF68E, 0xF651, 0xF626, 0xF60E, 0xF606, 0xF60E, 
    0xF624, 0xF648, 0xF677, 0xF6B2, 0xF6F7, 0xF758, 0xF7E3, 0xF88A, 0xF942, 0xF9FF, 0xFAB3, 0xFB54, 0xFBD4, 0xFC28, 
    0xFD39, 0xFD5F, 0xFDCB, 0xFE6F, 0xFF3F, 0x002E, 0x0130, 0x0238, 0x033A, 0x0429, 0x04F9, 0x059D, 0x0609, 0x062F, 
    0x0616, 0x05CD, 0x055C, 0x04C9, 0x041B, 0x0359, 0x028A, 0x01B4, 0x00DE, 0x000F, 0xFF4D, 0xFE9F, 0xFE0C, 0xFD9B, 
    0xFD52, 0x0000, 0x0000, 0x0002, 0x0004, 0x0006, 0x0009, 0x000C, 0x000F, 0x0011, 0x0013, 0x0014, 0x0015, 0x0015, 
    0x0014, 0x0013, 0x0012, 0x0011, 0x000F, 0x000E, 0x000C, 0x000A, 0x0009, 0x0007, 0x0005, 0x0004, 0x0003, 0x0002, 
    0x0001, 0x0000, 0x020A, 0x01F1, 0x01AF, 0x014B, 0x00D0, 0x0047, 0xFFB9, 0xFF30, 0xFEB5, 0xFE52, 0xFE0F, 0xFDF7, 
    0xFE00, 0xFE1B, 0xFE44, 0xFE7A, 0xFEBC, 0xFF05, 0xFF55, 0xFFAA, 0x0000, 0x0057, 0x00AB, 0x00FB, 0x0145, 0x0186, 
    0x01BC, 0x01E6, 0x0200, 0x0413, 0x03FD, 0x03C1, 0x0368, 0x02F9, 0x027D, 0x01FE, 0x0182, 0x0113, 0x00BA, 0x007E, 
    0x0068, 0x0070, 0x0088, 0x00AD, 0x00DE, 0x0119, 0x015B, 0x01A3, 0x01EF, 0x023D, 0x028B, 0x02D7, 0x0320, 0x0362, 
    0x039D, 0x03CD, 0x03F3, 0x040B, 0x0000, 0xFFAD, 0xFF52, 0xFEF5, 0xFE9C, 0xFE4E, 0xFE10, 0xFDE9, 0xFDDE, 0xFDF6, 
    0xFE39, 0xFEA2, 0xFF29, 0xFFC6, 0x006F, 0x011B, 0x01C0, 0x0257, 0x02D5, 0x0331, 0x0364, 0x0362, 0x0330, 0x02D9, 
    0x0266, 0x01E3, 0x0159, 0x00D4, 0x005D, 0x0000, 
};

JointIndex sMalonChildIdleAnimJointIndices[] = {
    { 0x000A, 0x0027, 0x0000 },
    { 0x0002, 0x0000, 0x0002 },
    { 0x0044, 0x0061, 0x007E },
    { 0x0000, 0x0000, 0x009B },
    { 0x00B8, 0x00D5, 0x00F2 },
    { 0x010F, 0x012C, 0x0149 },
    { 0x0000, 0x0000, 0x0166 },
    { 0x0183, 0x01A0, 0x01BD },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0004, 0x0005 },
    { 0x0000, 0x01DA, 0x0006 },
    { 0x0000, 0x01F7, 0x0007 },
    { 0x0000, 0x0008, 0x0005 },
    { 0x0000, 0x0009, 0x0006 },
    { 0x0000, 0x0214, 0x0007 },
    { 0x0231, 0x024E, 0x026B },
    { 0x0000, 0x0288, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gMalonChildIdleAnim = { 
    { 29 }, sMalonChildIdleAnimFrameData,
    sMalonChildIdleAnimJointIndices, 10
};

u64 gMalonChildDressTLUT[] = {
#include "assets/objects/object_ma1/dress_tlut.rgba16.inc.c"
};

u64 gMalonChildDressDesignTex[] = {
#include "assets/objects/object_ma1/dress_design.ci8.inc.c"
};

u64 gMalonChildFingersTex[] = {
#include "assets/objects/object_ma1/fingers.rgba16.inc.c"
};

u64 gMalonChildBowserTex[] = {
#include "assets/objects/object_ma1/bowser.rgba16.inc.c"
};

u64 gMalonChildScarfTex[] = {
#include "assets/objects/object_ma1/scarf.ci8.inc.c"
};

u64 gMalonChildBootTex[] = {
#include "assets/objects/object_ma1/boot.ci8.inc.c"
};

u64 gMalonChildHairTLUT[] = {
#include "assets/objects/object_ma1/hair_tlut.rgba16.inc.c"
};

u64 gMalonChildEyeTLUT[] = {
#include "assets/objects/object_ma1/eye_tlut.rgba16.inc.c"
};

u64 gMalonChildSkinGradientTex[] = {
#include "assets/objects/object_ma1/skin_gradient.rgba16.inc.c"
};

u64 gMalonChildBrownCircleTex[] = {
#include "assets/objects/object_ma1/unk_circle.rgba16.inc.c"
};

u64 gMalonChildEarTex[] = {
#include "assets/objects/object_ma1/ear.rgba16.inc.c"
};

u64 gMalonChildHairTex[] = {
#include "assets/objects/object_ma1/hair.ci8.inc.c"
};

u64 gMalonChildEyeOpenTex[] = {
#include "assets/objects/object_ma1/eye_open.ci8.inc.c"
};

u64 gMalonChildNeutralMouthTex[] = {
#include "assets/objects/object_ma1/neutral_mouth.rgba16.inc.c"
};

u64 gMalonChildEyeHalfTex[] = {
#include "assets/objects/object_ma1/eye_half.ci8.inc.c"
};

u64 gMalonChildEyeClosedTex[] = {
#include "assets/objects/object_ma1/eye_closed.ci8.inc.c"
};

u64 gMalonChildSmilingMouthTex[] = {
#include "assets/objects/object_ma1/smiling_mouth.rgba16.inc.c"
};

u64 gMalonChildTalkingMouthTex[] = {
#include "assets/objects/object_ma1/talking_mouth.rgba16.inc.c"
};

Vtx object_ma1Vtx_003318[] = {
#include "assets/objects/object_ma1/object_ma1Vtx_003318.vtx.inc"
};

Gfx gMalonChildHeadDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gMalonChildHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMalonChildHairTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ma1Vtx_003318, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma1Vtx_003318[9], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildEarTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[12], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(gMalonChildHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMalonChildHairTLUT),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma1Vtx_003318[15], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 5, 0, 6, 1, 7, 0),
    gsSP2Triangles(1, 0, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(19, 21, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 7, 5, 0, 25, 5, 26, 0),
    gsSP2Triangles(8, 27, 28, 0, 5, 7, 0, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_ma1Vtx_003318[47], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma1Vtx_003318[50], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(0, 4, 5, 0, 5, 1, 0, 0),
    gsSP1Triangle(4, 0, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma1Vtx_003318[56], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 3, 6, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP1Triangle(20, 16, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildNeutralMouthTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[78], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP1Triangle(0, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildBrownCircleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[83], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[86], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildBrownCircleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[89], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[92], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 7, 8, 9, 0),
    gsSP1Triangle(10, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildBrownCircleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[105], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[109], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildBrownCircleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[112], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[115], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildBrownCircleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[118], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(2, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildNeutralMouthTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[123], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(gMalonChildHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMalonChildHairTLUT),
    gsSPVertex(&object_ma1Vtx_003318[127], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 5, 7, 6, 0),
    gsSP2Triangles(6, 3, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 11, 0, 10, 9, 14, 0),
    gsSP2Triangles(11, 13, 9, 0, 15, 14, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 20, 0),
    gsSP2Triangles(17, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(24, 25, 22, 0, 26, 27, 28, 0),
    gsSP2Triangles(28, 27, 29, 0, 2, 30, 31, 0),
    gsSPVertex(&object_ma1Vtx_003318[159], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 5, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(11, 10, 22, 0, 11, 22, 23, 0),
    gsSP2Triangles(24, 22, 25, 0, 22, 10, 25, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma1Vtx_003318[185], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(2, 4, 0, 0, 1, 5, 3, 0),
    gsSP1Triangle(3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildEarTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[191], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[194], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMalonChildBrownCircleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ma1Vtx_003318[197], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 0, 0),
    gsSP1Triangle(2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMalonChildEyeTLUT),
    gsSPVertex(&object_ma1Vtx_003318[203], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 6, 3, 0),
    gsSP2Triangles(7, 3, 8, 0, 8, 3, 2, 0),
    gsSP2Triangles(9, 10, 0, 0, 0, 11, 9, 0),
    gsSP2Triangles(0, 12, 11, 0, 5, 12, 0, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 14, 15, 0),
    gsSP2Triangles(16, 11, 15, 0, 9, 11, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ma1Vtx_003318[220], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 2, 3, 0, 3, 5, 4, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsSPEndDisplayList(),
};

Vtx object_ma1Vtx_004B18[] = {
#include "assets/objects/object_ma1/object_ma1Vtx_004B18.vtx.inc"
};

Gfx gMalonChildDressLowerDL[] = {
    gsSPMatrix(0x0D0003C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_ma1Vtx_004B18, 13, 0),
    gsSPMatrix(0x0D000400, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildDressDesignTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[13], 17, 13),
    gsSP2Triangles(13, 0, 14, 0, 15, 2, 16, 0),
    gsSP2Triangles(1, 17, 18, 0, 19, 20, 3, 0),
    gsSP2Triangles(3, 21, 22, 0, 23, 24, 1, 0),
    gsSP2Triangles(12, 11, 25, 0, 1, 26, 11, 0),
    gsSP2Triangles(27, 28, 12, 0, 12, 29, 4, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[30], 18, 13),
    gsSP2Triangles(13, 7, 6, 0, 14, 15, 7, 0),
    gsSP2Triangles(0, 8, 16, 0, 6, 9, 17, 0),
    gsSP2Triangles(9, 18, 19, 0, 20, 10, 5, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP2Triangles(29, 26, 25, 0, 29, 25, 30, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[48], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildDressMiddleDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[52], 14, 0),
    gsSPMatrix(0x0D0003C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildDressDesignTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[66], 14, 14),
    gsSP2Triangles(8, 0, 14, 0, 15, 2, 6, 0),
    gsSP2Triangles(10, 16, 7, 0, 12, 9, 17, 0),
    gsSP2Triangles(18, 1, 19, 0, 20, 21, 3, 0),
    gsSP2Triangles(22, 3, 23, 0, 24, 4, 3, 0),
    gsSP2Triangles(25, 1, 26, 0, 1, 5, 27, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[80], 7, 14),
    gsSP2Triangles(14, 13, 15, 0, 16, 11, 17, 0),
    gsSP2Triangles(11, 13, 18, 0, 19, 11, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildChestDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[295], 11, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildDressDesignTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[306], 19, 11),
    gsSP2Triangles(11, 12, 0, 0, 13, 14, 4, 0),
    gsSP2Triangles(15, 2, 4, 0, 16, 6, 17, 0),
    gsSP2Triangles(0, 18, 6, 0, 2, 19, 20, 0),
    gsSP2Triangles(3, 21, 1, 0, 22, 23, 1, 0),
    gsSP1Triangle(24, 0, 1, 0),
    gsSP2Triangles(9, 10, 25, 0, 26, 27, 9, 0),
    gsSP2Triangles(8, 7, 28, 0, 9, 29, 5, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildBowserTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[325], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 5, 0, 2, 1, 5, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildScarfTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 14, 0),
    gsSP1Triangle(17, 18, 19, 0),
    gsSP1Triangle(20, 21, 22, 0),
    gsSP1Triangle(23, 24, 25, 0),
    gsSP1Triangle(26, 27, 28, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[354], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 1, 0, 7, 1, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(9, 8, 14, 0, 10, 9, 15, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(19, 20, 21, 0, 21, 20, 22, 0),
    gsSP2Triangles(22, 20, 23, 0, 20, 24, 23, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(26, 25, 21, 0, 21, 25, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildBrownCircleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(27, 28, 29, 0, 30, 28, 27, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[385], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP1Triangle(8, 9, 10, 0),
    gsSP1Triangle(11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildDressDesignTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSP2Triangles(14, 15, 16, 0, 17, 15, 14, 0),
    gsSP2Triangles(17, 14, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 20, 19, 23, 0),
    gsSP2Triangles(24, 25, 21, 0, 21, 25, 19, 0),
    gsSP2Triangles(24, 21, 26, 0, 27, 17, 18, 0),
    gsSP2Triangles(28, 29, 26, 0, 19, 25, 27, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildRightShoulderDL[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[255], 4, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildDressDesignTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[259], 24, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 1, 0, 0),
    gsSP2Triangles(0, 2, 7, 0, 8, 9, 3, 0),
    gsSP2Triangles(3, 1, 10, 0, 3, 11, 12, 0),
    gsSP2Triangles(13, 2, 3, 0, 2, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[283], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 5, 4, 0),
    gsSP2Triangles(9, 10, 7, 0, 7, 11, 6, 0),
    gsSP2Triangles(4, 10, 9, 0, 6, 11, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildRightArmDL[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[231], 4, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[235], 12, 4),
    gsSP2Triangles(2, 3, 4, 0, 5, 0, 2, 0),
    gsSP2Triangles(1, 0, 6, 0, 7, 3, 1, 0),
    gsSP2Triangles(8, 9, 2, 0, 2, 10, 11, 0),
    gsSP2Triangles(1, 12, 13, 0, 14, 15, 1, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[247], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 1, 0, 0, 6, 2, 3, 0),
    gsSP2Triangles(3, 7, 6, 0, 5, 7, 3, 0),
    gsSP2Triangles(2, 6, 0, 0, 0, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildRightHandDL[] = {
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[191], 4, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[195], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 1, 2, 6, 0),
    gsSP2Triangles(2, 0, 7, 0, 3, 1, 8, 0),
    gsSP2Triangles(9, 10, 3, 0, 11, 12, 1, 0),
    gsSP2Triangles(0, 3, 13, 0, 14, 15, 2, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[207], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 5, 4, 8, 0),
    gsSP2Triangles(1, 0, 5, 0, 8, 4, 7, 0),
    gsSP2Triangles(9, 10, 7, 0, 6, 9, 7, 0),
    gsSP2Triangles(9, 6, 11, 0, 4, 11, 6, 0),
    gsSP2Triangles(8, 7, 10, 0, 12, 2, 10, 0),
    gsSP2Triangles(2, 12, 0, 0, 8, 1, 5, 0),
    gsSP2Triangles(10, 4, 12, 0, 11, 4, 9, 0),
    gsSP1Triangle(4, 10, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildFingersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(15, 17, 13, 0, 16, 13, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 19, 21, 0),
    gsSP1Triangle(22, 21, 23, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildLeftShoulderDL[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[151], 4, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildDressDesignTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[155], 24, 4),
    gsSP2Triangles(4, 5, 1, 0, 1, 0, 6, 0),
    gsSP2Triangles(7, 2, 1, 0, 3, 8, 9, 0),
    gsSP2Triangles(10, 0, 3, 0, 11, 12, 3, 0),
    gsSP2Triangles(3, 2, 13, 0, 14, 15, 2, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[179], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 4, 0, 6, 5, 7, 0),
    gsSP2Triangles(9, 10, 7, 0, 4, 11, 9, 0),
    gsSP2Triangles(7, 10, 6, 0, 6, 11, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildLeftArmDL[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[127], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[131], 12, 4),
    gsSP2Triangles(4, 2, 3, 0, 3, 1, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 0, 2, 7, 0),
    gsSP2Triangles(3, 8, 9, 0, 10, 11, 3, 0),
    gsSP2Triangles(12, 13, 0, 0, 0, 14, 15, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[143], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 4, 0, 5, 0, 6, 0),
    gsSP2Triangles(6, 7, 5, 0, 5, 7, 3, 0),
    gsSP2Triangles(2, 6, 0, 0, 4, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildLeftHandDL[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[87], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[91], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 1, 2, 0),
    gsSP2Triangles(7, 0, 1, 0, 8, 2, 3, 0),
    gsSP2Triangles(3, 9, 10, 0, 2, 11, 12, 0),
    gsSP2Triangles(13, 3, 0, 0, 1, 14, 15, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[103], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 8, 4, 3, 0),
    gsSP2Triangles(3, 2, 1, 0, 6, 4, 8, 0),
    gsSP2Triangles(6, 9, 10, 0, 6, 10, 7, 0),
    gsSP2Triangles(11, 7, 10, 0, 7, 11, 4, 0),
    gsSP2Triangles(9, 6, 8, 0, 9, 0, 12, 0),
    gsSP2Triangles(2, 12, 0, 0, 3, 1, 8, 0),
    gsSP2Triangles(12, 4, 9, 0, 10, 4, 11, 0),
    gsSP1Triangle(10, 9, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildFingersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(15, 17, 13, 0, 17, 15, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP1Triangle(23, 19, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildDressUpperDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildDressDesignTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[513], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 1, 5, 0, 1, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP1Triangle(14, 15, 16, 0),
    gsSP1Triangle(17, 18, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildRightThighDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 255, 255, 253, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[461], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildRightShinDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildBootTex, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[444], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 4, 3, 0),
    gsSP2Triangles(3, 6, 5, 0, 2, 7, 0, 0),
    gsSP2Triangles(6, 0, 8, 0, 6, 8, 5, 0),
    gsSP1Triangle(0, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 14, 13, 0),
    gsSP2Triangles(15, 13, 16, 0, 13, 14, 16, 0),
    gsSP2Triangles(11, 15, 9, 0, 15, 16, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildRightFoorDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[415], 5, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildBootTex, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[420], 17, 5),
    gsSP2Triangles(2, 1, 5, 0, 6, 3, 7, 0),
    gsSP2Triangles(8, 3, 0, 0, 4, 9, 0, 0),
    gsSP2Triangles(4, 10, 11, 0, 0, 12, 13, 0),
    gsSP2Triangles(14, 15, 2, 0, 16, 17, 4, 0),
    gsSP2Triangles(3, 18, 19, 0, 2, 20, 4, 0),
    gsSP1Triangle(3, 21, 1, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[437], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 1, 0, 5, 0),
    gsSP2Triangles(6, 2, 1, 0, 5, 6, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildLeftThighDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 255, 255, 253, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[510], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildLeftShinDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildBootTex, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[493], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(0, 4, 3, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 2, 7, 0, 0),
    gsSP2Triangles(8, 2, 6, 0, 5, 8, 6, 0),
    gsSP1Triangle(8, 7, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMalonChildSkinGradientTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(9, 10, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(10, 13, 12, 0, 13, 14, 12, 0),
    gsSP2Triangles(15, 13, 16, 0, 15, 14, 13, 0),
    gsSP2Triangles(11, 16, 9, 0, 11, 15, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gMalonChildLeftFootDL[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[464], 5, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gMalonChildDressTLUT),
    gsDPLoadTextureBlock(gMalonChildBootTex, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[469], 17, 5),
    gsSP2Triangles(5, 1, 2, 0, 6, 3, 7, 0),
    gsSP2Triangles(0, 3, 8, 0, 0, 9, 4, 0),
    gsSP2Triangles(10, 11, 4, 0, 12, 13, 0, 0),
    gsSP2Triangles(2, 14, 15, 0, 4, 16, 17, 0),
    gsSP2Triangles(18, 19, 3, 0, 4, 20, 2, 0),
    gsSP1Triangle(1, 21, 3, 0),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ma1Vtx_004B18[486], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 4, 3, 0, 5, 2, 1, 0),
    gsSP2Triangles(1, 0, 6, 0, 1, 6, 5, 0),
    gsSPEndDisplayList(),
};

StandardLimb gMalonChildRootLimb = { 
    { 0, 1848, 0 }, 0x01, LIMB_DONE,
    gMalonChildDressUpperDL
};

StandardLimb gMalonChildLeftThighLimb = { 
    { 250, 250, 250 }, 0x02, 0x04,
    gMalonChildLeftThighDL
};

StandardLimb gMalonChildLeftShinLimb = { 
    { 700, 0, 0 }, 0x03, LIMB_DONE,
    gMalonChildLeftShinDL
};

StandardLimb gMalonChildLeftFootLimb = { 
    { 700, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonChildLeftFootDL
};

StandardLimb gMalonChildRightThighLimb = { 
    { 250, 250, -250 }, 0x05, 0x07,
    gMalonChildRightThighDL
};

StandardLimb gMalonChildRightShinLimb = { 
    { 700, 0, 0 }, 0x06, LIMB_DONE,
    gMalonChildRightShinDL
};

StandardLimb gMalonChildRightFootLimb = { 
    { 700, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonChildRightFoorDL
};

StandardLimb gMalonChildChestLimb = { 
    { 0, 0, 0 }, 0x08, 0x0F,
    gMalonChildChestDL
};

StandardLimb gMalonChildLeftShoulderLimb = { 
    { 950, -100, 500 }, 0x09, 0x0B,
    gMalonChildLeftShoulderDL
};

StandardLimb gMalonChildLeftArmLimb = { 
    { 550, 0, 0 }, 0x0A, LIMB_DONE,
    gMalonChildLeftArmDL
};

StandardLimb gMalonChildLeftHandLimb = { 
    { 550, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonChildLeftHandDL
};

StandardLimb gMalonChildRightShoulderLimb = { 
    { 950, -100, -500 }, 0x0C, 0x0E,
    gMalonChildRightShoulderDL
};

StandardLimb gMalonChildRightArmLimb = { 
    { 550, 0, 0 }, 0x0D, LIMB_DONE,
    gMalonChildRightArmDL
};

StandardLimb gMalonChildRightHandLimb = { 
    { 550, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonChildRightHandDL
};

StandardLimb gMalonChildHeadLimb = { 
    { 1600, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonChildHeadDL
};

StandardLimb gMalonChildLimb_0083F4 = { 
    { 450, 0, 0 }, 0x10, LIMB_DONE,
    NULL
};

StandardLimb gMalonChildDressMiddleLimb = { 
    { 0, 0, 0 }, LIMB_DONE, 0x11,
    gMalonChildDressMiddleDL
};

StandardLimb gMalonChildDressLowerLimb = { 
    { 450, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gMalonChildDressLowerDL
};

void* gMalonChildSkelLimbs[] = {
    &gMalonChildRootLimb,
    &gMalonChildLeftThighLimb,
    &gMalonChildLeftShinLimb,
    &gMalonChildLeftFootLimb,
    &gMalonChildRightThighLimb,
    &gMalonChildRightShinLimb,
    &gMalonChildRightFootLimb,
    &gMalonChildChestLimb,
    &gMalonChildLeftShoulderLimb,
    &gMalonChildLeftArmLimb,
    &gMalonChildLeftHandLimb,
    &gMalonChildRightShoulderLimb,
    &gMalonChildRightArmLimb,
    &gMalonChildRightHandLimb,
    &gMalonChildHeadLimb,
    &gMalonChildLimb_0083F4,
    &gMalonChildDressMiddleLimb,
    &gMalonChildDressLowerLimb,
};

FlexSkeletonHeader gMalonChildSkel = { 
    { gMalonChildSkelLimbs, ARRAY_COUNT(gMalonChildSkelLimbs) }, 17
};

u8 object_ma1_possiblePadding_00846C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sMalonChildSingAnimFrameData[] = {
    0xFF6A, 0x0738, 0x0000, 0xC000, 0xFFFC, 0xFDE7, 0x7D8E, 0x02C8, 0x04FC, 0x5ECA, 0x06E6, 0x1A9C, 0xD27F, 0xFCD9, 
    0x097F, 0xCE9E, 0xFB56, 0x0140, 0x700E, 0x00CC, 0xED19, 0xBCF0, 0x211E, 0xF5E2, 0xD3F1, 0xF6A1, 0xFF6A, 0xFF66, 
    0xFF66, 0xFF69, 0xFF6F, 0xFF78, 0xFF81, 0xFF8B, 0xFF95, 0xFF9E, 0xFFA5, 0xFFAB, 0xFFB2, 0xFFB8, 0xFFBF, 0xFFC5, 
    0xFFCB, 0xFFD0, 0xFFD4, 0xFFD8, 0xFFDC, 0xFFE1, 0xFFE6, 0xFFED, 0xFFF6, 0x0000, 0x0015, 0x0034, 0x0052, 0x0064, 
    0x006A, 0x006F, 0x0071, 0x0072, 0x0071, 0x0070, 0x006F, 0x006D, 0x006B, 0x006B, 0x006A, 0x0068, 0x0065, 0x0061, 
    0x005B, 0x0055, 0x004E, 0x0048, 0x0041, 0x003A, 0x0032, 0x0029, 0x001D, 0x0010, 0x0000, 0xFFE0, 0xFFB0, 0xFF82, 
    0xFF6A, 0x0738, 0x0737, 0x072F, 0x0723, 0x0713, 0x0702, 0x06F0, 0x06DF, 0x06D1, 0x06C7, 0x06C2, 0x06CC, 0x06E4, 
    0x0701, 0x0719, 0x071F, 0x0715, 0x0705, 0x06F0, 0x06D8, 0x06BE, 0x06A6, 0x0690, 0x067E, 0x0673, 0x0670, 0x068F, 
    0x06D2, 0x0716, 0x0738, 0x0739, 0x0733, 0x0726, 0x0716, 0x0703, 0x06F0, 0x06DD, 0x06CD, 0x06C2, 0x06BC, 0x06C6, 
    0x06DF, 0x06FD, 0x0716, 0x071F, 0x071A, 0x070F, 0x0701, 0x06F0, 0x06DD, 0x06CB, 0x06BB, 0x06AE, 0x06A6, 0x06A4, 
    0x06BC, 0x06EE, 0x0720, 0x0738, 0x0004, 0x0004, 0x001E, 0x009B, 0x00E0, 0x0110, 0x012E, 0x013C, 0x013D, 0x0135, 
    0x0126, 0x0105, 0x00D1, 0x0097, 0x0066, 0x0052, 0x0058, 0x0063, 0x006D, 0x0075, 0x0077, 0x0073, 0x0067, 0x0050, 
    0x002E, 0x0000, 0xFFAD, 0xFF65, 0xFF7C, 0x0000, 0xFFFD, 0xFFE1, 0xFF8C, 0xFF4F, 0xFF1C, 0xFEF1, 0xFECF, 0xFEB6, 
    0xFEA7, 0xFEA1, 0xFEB3, 0xFEE4, 0xFF24, 0xFF64, 0xFF86, 0xFF81, 0xFF75, 0xFF68, 0xFF5F, 0xFF5D, 0xFF64, 0xFF77, 
    0xFF97, 0xFFC5, 0x0000, 0x006B, 0x00C8, 0x009A, 0x0000, 0xFBA7, 0xFB87, 0xFB81, 0xFB9B, 0xFBC9, 0xFC06, 0xFC4D, 
    0xFC97, 0xFCE0, 0xFD22, 0xFD57, 0xFD86, 0xFDB8, 0xFDEA, 0xFE1B, 0xFE4A, 0xFE74, 0xFE97, 0xFEB6, 0xFED5, 0xFEF4, 
    0xFF18, 0xFF42, 0xFF75, 0xFFB3, 0x0000, 0x0099, 0x0182, 0x0265, 0x02E8, 0x0317, 0x0339, 0x034A, 0x0351, 0x034F, 
    0x0346, 0x033A, 0x032D, 0x0322, 0x031A, 0x0314, 0x0309, 0x02F5, 0x02D5, 0x02A8, 0x0276, 0x0247, 0x0218, 0x01E8, 
    0x01B2, 0x0175, 0x012E, 0x00DA, 0x0076, 0x0000, 0xFF12, 0xFDA9, 0xFC53, 0xFBA7, 0xFDB2, 0xFDB1, 0xFCC5, 0xF838, 
    0xF56B, 0xF319, 0xF123, 0xEF86, 0xEE46, 0xED6B, 0xED05, 0xEDB7, 0xEFBB, 0xF28A, 0xF55B, 0xF648, 0xF4DC, 0xF2DA, 
    0xF0AD, 0xEE8C, 0xEC94, 0xEAD7, 0xE966, 0xE84F, 0xE7A3, 0xE776, 0xE95D, 0xEE1F, 0xF51F, 0xFDD9, 0xFDB2, 0xFC4C, 
    0xF83D, 0xF56A, 0xF304, 0xF0F9, 0xEF46, 0xEDF5, 0xED11, 0xECAA, 0xED5F, 0xEF62, 0xF237, 0xF52E, 0xF68F, 0xF5B8, 
    0xF439, 0xF27A, 0xF0B4, 0xEF09, 0xED8E, 0xEC51, 0xEB63, 0xEAD1, 0xEAB0, 0xEC5D, 0xF09A, 0xF731, 0xFDD9, 0x004F, 
    0x0050, 0x021F, 0x0B21, 0x10A8, 0x153B, 0x1916, 0x1C42, 0x1EB7, 0x2065, 0x2131, 0x1FD8, 0x1BEC, 0x166B, 0x10E0, 
    0x0F0A, 0x11DB, 0x15D2, 0x1A19, 0x1E46, 0x221F, 0x2581, 0x284E, 0x2A6B, 0x2BB9, 0x2C10, 0x2861, 0x1F18, 0x1152, 
    0x0000, 0x004F, 0x0315, 0x0B22, 0x10B5, 0x156C, 0x1970, 0x1CC1, 0x1F53, 0x2110, 0x21D9, 0x2079, 0x1C8F, 0x1704, 
    0x1130, 0x0E78, 0x1023, 0x1318, 0x168A, 0x1A07, 0x1D4D, 0x2034, 0x22A0, 0x2473, 0x258F, 0x25D0, 0x228B, 0x1A36, 
    0x0D30, 0x0000, 0xED64, 0xED67, 0xED63, 0xED62, 0xED5E, 0xED59, 0xED52, 0xED4A, 0xED42, 0xED3B, 0xED35, 0xED2E, 
    0xED26, 0xED1E, 0xED17, 0xED12, 0xED0E, 0xED0C, 0xED09, 0xED07, 0xED05, 0xED02, 0xECFE, 0xECF9, 0xECF2, 0xECEB, 
    0xECDD, 0xECCD, 0xECC3, 0xECC0, 0xECBE, 0xECBB, 0xECBA, 0xECB9, 0xECB8, 0xECB7, 0xECB6, 0xECB6, 0xECB6, 0xECB6, 
    0xECB7, 0xECB9, 0xECBB, 0xECBE, 0xECC0, 0xECC2, 0xECC4, 0xECC6, 0xECC8, 0xECCA, 0xECCE, 0xECD2, 0xECD8, 0xECE0, 
    0xECEB, 0xED02, 0xED27, 0xED4B, 0xED64, 0xC592, 0xC595, 0xC454, 0xBFD0, 0xBD03, 0xBAA9, 0xB8A6, 0xB6F7, 0xB5A1, 
    0xB4AF, 0xB430, 0xB4BD, 0xB687, 0xB91B, 0xBBB9, 0xBC88, 0xBB10, 0xB90C, 0xB6E4, 0xB4CB, 0xB2DC, 0xB126, 0xAFB5, 
    0xAE93, 0xADCF, 0xAD78, 0xAEE7, 0xB2F0, 0xB94A, 0xC1DB, 0xC1B1, 0xBFF8, 0xBBEA, 0xB91F, 0xB6C6, 0xB4CA, 0xB32A, 
    0xB1EA, 0xB113, 0xB0B4, 0xB165, 0xB35E, 0xB62A, 0xB921, 0xBA93, 0xB9D8, 0xB879, 0xB6DB, 0xB53A, 0xB3B9, 0xB26B, 
    0xB162, 0xB0AD, 0xB05A, 0xB07D, 0xB297, 0xB764, 0xBE71, 0xC5B9, 0x0000, 0x0000, 0x0006, 0x00A4, 0x010D, 0x0155, 
    0x0187, 0x01A5, 0x01B2, 0x01B2, 0x01A8, 0x0182, 0x013C, 0x00EB, 0x00A3, 0x0088, 0x009B, 0x00B6, 0x00D3, 0x00ED, 
    0x0101, 0x010D, 0x010E, 0x0102, 0x00E6, 0x00BB, 0x0055, 0xFFE1, 0xFFBC, 0xFFFE, 0xFFFE, 0xFFD6, 0xFFAD, 0xFF89, 
    0xFF6A, 0xFF50, 0xFF3D, 0xFF30, 0xFF29, 0xFF27, 0xFF33, 0xFF52, 0xFF7A, 0xFFA2, 0xFFB9, 0xFFBC, 0xFFBD, 0xFFBE, 
    0xFFC4, 0xFFD1, 0xFFE5, 0x0004, 0x002C, 0x0060, 0x009C, 0x00F7, 0x012B, 0x00B9, 0x0005, 0xFA74, 0xFA54, 0xFA4C, 
    0xFA62, 0xFA91, 0xFACE, 0xFB15, 0xFB5F, 0xFBA8, 0xFBEA, 0xFC20, 0xFC4F, 0xFC81, 0xFCB3, 0xFCE4, 0xFD13, 0xFD3D, 
    0xFD60, 0xFD80, 0xFD9E, 0xFDBE, 0xFDE1, 0xFE0B, 0xFE3E, 0xFE7D, 0xFECA, 0xFF63, 0x004C, 0x012E, 0x01B3, 0x01E2, 
    0x0202, 0x0214, 0x021A, 0x0218, 0x020F, 0x0203, 0x01F6, 0x01EB, 0x01E3, 0x01DD, 0x01D2, 0x01BE, 0x019F, 0x0172, 
    0x013F, 0x0110, 0x00E2, 0x00B1, 0x007C, 0x003F, 0xFFF8, 0xFFA4, 0xFF40, 0xFECA, 0xFDDC, 0xFC72, 0xFB1B, 0xFA74, 
    0xFE55, 0xFE54, 0xFE2A, 0xF9A8, 0xF67A, 0xF400, 0xF1F3, 0xF047, 0xEEFD, 0xEE1C, 0xEDB0, 0xEE61, 0xF064, 0xF336, 
    0xF60E, 0xF6FB, 0xF581, 0xF374, 0xF141, 0xEF1D, 0xED23, 0xEB65, 0xE9F3, 0xE8DB, 0xE82D, 0xE7FC, 0xE9D7, 0xEE7D, 
    0xF53B, 0xFE2D, 0xFE2D, 0xFAFA, 0xF7F9, 0xF563, 0xF31C, 0xF123, 0xEF7E, 0xEE35, 0xED57, 0xECF2, 0xEDA4, 0xEF9C, 
    0xF25F, 0xF53B, 0xF68E, 0xF5CB, 0xF462, 0xF2B6, 0xF0FF, 0xEF60, 0xEDEF, 0xECBB, 0xEBD4, 0xEB4A, 0xEB30, 0xECEA, 
    0xF146, 0xF84F, 0xFE2D, 0x0000, 0x0000, 0x004F, 0x0936, 0x0F79, 0x145C, 0x1865, 0x1BB1, 0x1E3D, 0x1FFB, 0x20D1, 
    0x1F7D, 0x1B90, 0x1607, 0x106D, 0x0E9A, 0x1188, 0x1595, 0x19EB, 0x1E22, 0x2203, 0x256C, 0x2841, 0x2A65, 0x2BBB, 
    0x2C1C, 0x2884, 0x1F6B, 0x121C, 0x0050, 0x004F, 0x06AF, 0x0CA8, 0x11C8, 0x1648, 0x1A2C, 0x1D69, 0x1FEE, 0x21A3, 
    0x2267, 0x210B, 0x1D2F, 0x17C0, 0x121A, 0x0F7B, 0x10FF, 0x13C9, 0x1719, 0x1A7B, 0x1DAC, 0x2083, 0x22DF, 0x24A3, 
    0x25AF, 0x25DF, 0x2275, 0x19D3, 0x0BE7, 0x004F, 0x11A5, 0x11A5, 0x11A5, 0x11A6, 0x11A7, 0x11A8, 0x11A9, 0x11A9, 
    0x11AA, 0x11AA, 0x11A9, 0x11A8, 0x11A6, 0x11A4, 0x11A2, 0x11A1, 0x11A1, 0x11A0, 0x11A0, 0x11A0, 0x11A0, 0x11A0, 
    0x119F, 0x119D, 0x119B, 0x1197, 0x118E, 0x117F, 0x1170, 0x1168, 0x1164, 0x1161, 0x1160, 0x115E, 0x115E, 0x115D, 
    0x115D, 0x115E, 0x115E, 0x115E, 0x115F, 0x1162, 0x1165, 0x1168, 0x116C, 0x116F, 0x1172, 0x1175, 0x1178, 0x117C, 
    0x1180, 0x1184, 0x1189, 0x118F, 0x1196, 0x119F, 0x11A6, 0x11A7, 0x11A5, 0xC04F, 0xC036, 0xBFA8, 0xBB0D, 0xB7FD, 
    0xB5A6, 0xB3C1, 0xB23D, 0xB11A, 0xB05B, 0xB00A, 0xB0CB, 0xB2DA, 0xB5B6, 0xB89A, 0xB999, 0xB836, 0xB641, 0xB427, 
    0xB21E, 0xB040, 0xAEA1, 0xAD51, 0xAC5D, 0xABD6, 0xABCF, 0xADE3, 0xB2CE, 0xB9C6, 0xC2DC, 0xC304, 0xBFD1, 0xBCE2, 
    0xBA5E, 0xB826, 0xB63A, 0xB4A0, 0xB360, 0xB286, 0xB223, 0xB2C9, 0xB4A4, 0xB743, 0xB9FB, 0xBB32, 0xBA5B, 0xB8E4, 
    0xB72D, 0xB56B, 0xB3C0, 0xB23E, 0xB0F3, 0xAFEB, 0xAF34, 0xAEE0, 0xB017, 0xB3B1, 0xBA08, 0xC028, 0x0444, 0x0488, 
    0x048F, 0x0465, 0x0417, 0x03B3, 0x0345, 0x02D9, 0x027C, 0x023B, 0x0222, 0x0231, 0x025B, 0x029A, 0x02E7, 0x033C, 
    0x0394, 0x03E9, 0x0433, 0x046E, 0x0494, 0x049D, 0x0485, 0x0444, 0x0375, 0x01EF, 0x000C, 0xFE27, 0xFC99, 0xFBBC, 
    0xFB78, 0xFB71, 0xFB9B, 0xFBE9, 0xFC4D, 0xFCBB, 0xFD27, 0xFD84, 0xFDC5, 0xFDDE, 0xFDCF, 0xFDA5, 0xFD66, 0xFD19, 
    0xFCC4, 0xFC6C, 0xFC17, 0xFBCD, 0xFB92, 0xFB6C, 0xFB63, 0xFB7B, 0xFBBC, 0xFC8B, 0xFE11, 0xFFF4, 0x01D9, 0x0367, 
    0x0444, 0x0000, 0x009A, 0x0170, 0x025B, 0x0334, 0x03D4, 0x0413, 0x037A, 0x0222, 0x00C3, 0x0012, 0x000A, 0x0029, 
    0x0067, 0x00BA, 0x0119, 0x017A, 0x01D6, 0x0222, 0x0256, 0x0269, 0x025E, 0x0240, 0x0212, 0x01D4, 0x0189, 0x0133, 
    0x00D3, 0x006D, 0x0000, 0xFF66, 0xFE90, 0xFDA5, 0xFCCC, 0xFC2C, 0xFBED, 0xFC86, 0xFDDE, 0xFF3D, 0xFFEE, 0xFFF6, 
    0xFFD7, 0xFF99, 0xFF46, 0xFEE7, 0xFE86, 0xFE2A, 0xFDDE, 0xFDAA, 0xFD97, 0xFDA2, 0xFDC0, 0xFDEE, 0xFE2C, 0xFE77, 
    0xFECD, 0xFF2D, 0xFF93, 0x0000, 0x0000, 0xFF82, 0xFE8A, 0xFD3A, 0xFBB9, 0xFA29, 0xF8B0, 0xF772, 0xF694, 0xF639, 
    0xF6A9, 0xF7E1, 0xF994, 0xFB75, 0xFD38, 0xFE8F, 0xFF2F, 0xFF17, 0xFE90, 0xFDB9, 0xFCB1, 0xFB96, 0xFA87, 0xF9A4, 
    0xF90C, 0xF8DD, 0xFA0D, 0xFC90, 0xFF03, 0x0000, 0xFF82, 0xFE8A, 0xFD3A, 0xFBB9, 0xFA29, 0xF8B0, 0xF772, 0xF694, 
    0xF639, 0xF6A9, 0xF7E1, 0xF994, 0xFB75, 0xFD38, 0xFE8F, 0xFF2F, 0xFF17, 0xFE90, 0xFDB9, 0xFCB1, 0xFB96, 0xFA87, 
    0xF9A4, 0xF90C, 0xF8DD, 0xFA0D, 0xFC90, 0xFF03, 0x0000, 0x0000, 0x0113, 0x0310, 0x051D, 0x065E, 0x06CB, 0x06F4, 
    0x06E3, 0x06A1, 0x0639, 0x05B4, 0x04E8, 0x03C3, 0x0277, 0x0137, 0x0033, 0xFF9F, 0xFFB8, 0x0061, 0x0147, 0x0212, 
    0x026D, 0x024F, 0x01F5, 0x0176, 0x00EA, 0x0067, 0x0005, 0xFFDB, 0x0000, 0x0113, 0x0310, 0x051D, 0x065E, 0x06CB, 
    0x06F4, 0x06E3, 0x06A1, 0x0639, 0x05B4, 0x04E8, 0x03C3, 0x0277, 0x0137, 0x0033, 0xFF9F, 0xFFB8, 0x0061, 0x0147, 
    0x0212, 0x026D, 0x024F, 0x01F5, 0x0176, 0x00EA, 0x0067, 0x0005, 0xFFDB, 0x0000, 
};

JointIndex sMalonChildSingAnimJointIndices[] = {
    { 0x001A, 0x0055, 0x0002 },
    { 0x0003, 0x0002, 0x0003 },
    { 0x0090, 0x00CB, 0x0106 },
    { 0x0002, 0x0002, 0x0141 },
    { 0x0004, 0x017C, 0x01B7 },
    { 0x01F2, 0x022D, 0x0268 },
    { 0x0002, 0x0002, 0x02A3 },
    { 0x0005, 0x02DE, 0x0319 },
    { 0x0002, 0x0354, 0x0006 },
    { 0x0007, 0x0008, 0x0009 },
    { 0x000A, 0x000B, 0x000C },
    { 0x000D, 0x000E, 0x000F },
    { 0x0010, 0x0011, 0x0012 },
    { 0x0013, 0x0014, 0x0015 },
    { 0x0016, 0x0017, 0x0018 },
    { 0x0002, 0x038F, 0x0019 },
    { 0x0002, 0x0002, 0x03CA },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0405 },
};

AnimationHeader gMalonChildSingAnim = { 
    { 59 }, sMalonChildSingAnimFrameData,
    sMalonChildSingAnimJointIndices, 26
};

