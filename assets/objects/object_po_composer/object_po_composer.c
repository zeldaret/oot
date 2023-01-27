#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_po_composer.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

s16 sPoeComposerAttackAnimFrameData[] = {
    0x00E1, 0x0D93, 0xFC61, 0x8000, 0xF6E7, 0xE240, 0x0000, 0xDD84, 0xCFB3, 0x24C6, 0x00E1, 0x00D7, 0x00C2, 0x00AC, 
    0x00A3, 0x00AC, 0x00C2, 0x00D7, 0x0D93, 0x0D7C, 0x0D48, 0x0D15, 0x0CFD, 0x0D15, 0x0D48, 0x0D7C, 0xFC61, 0xFCAA, 
    0xFD49, 0xFDE8, 0xFE30, 0xFDE8, 0xFD49, 0xFCAA, 0x096B, 0x0927, 0x08A6, 0x083C, 0x0813, 0x083C, 0x08A6, 0x0927, 
    0x5C5F, 0x5D4E, 0x5F5B, 0x6169, 0x6258, 0x6169, 0x5F5B, 0x5D4E, 0x3EE8, 0x3E94, 0x3DE8, 0x3D4C, 0x3D0A, 0x3D4C, 
    0x3DE8, 0x3E94, 0xBF05, 0xC6BA, 0xDCED, 0xF219, 0xF94D, 0xF219, 0xDCED, 0xC6BA, 0xDA6D, 0xD7C5, 0xD5B4, 0xD9EC, 
    0xDD6C, 0xD9EC, 0xD5B4, 0xD7C5, 0x08CB, 0x0037, 0xE8F9, 0xD3D7, 0xCCFE, 0xD3D7, 0xE8F9, 0x0037, 0x0000, 0x054B, 
    0x0A10, 0x073F, 0x023B, 0xFD0E, 0xF9C2, 0xFC76, 0xEEE3, 0xEEB9, 0xF204, 0xFBFD, 0x08E5, 0x13F1, 0x1857, 0x037C, 
    0xF0B1, 0xE334, 0xD67E, 0xDC19, 0xE6DA, 0xF24E, 0xFA05, 0xF672, 0x0000, 0x0000, 0x0000, 0xFDDD, 0x0000, 0x1337, 
    0x2229, 0x1115, 0x0000, 0x0000, 0x0000, 0xFEE3, 0x0000, 0x0A03, 0x11CD, 0x08E7, 0x022D, 0x1526, 0x23FE, 0x00C5, 
    0xE12D, 0xFE4D, 0x200B, 0x132C, 0x46FB, 0x4794, 0x482C, 0x47AA, 0x4729, 0x47AA, 0x482C, 0x4794, 0x6842, 0x61E9, 
    0x5AF8, 0x5860, 0x57E4, 0x5860, 0x5AF8, 0x61E9, 0x07E7, 0x091C, 0x0A4A, 0x09EF, 0x096A, 0x09EF, 0x0A4A, 0x091C, 
    0x0000, 0xF158, 0xDF47, 0xD585, 0xD249, 0xD585, 0xDF47, 0xF158, 0x0685, 0x0623, 0x054C, 0x0475, 0x0413, 0x0475, 
    0x054C, 0x0623, 0x0000, 0xFF34, 0xFD73, 0xFBB3, 0xFAE7, 0xFBB3, 0xFD73, 0xFF34, 0x054C, 0x0AFD, 0x1781, 0x2405, 
    0x29B6, 0x2405, 0x1781, 0x0AFD, 0x0000, 0xE000, 0x4000, 0x2000, 0x0000, 0xE000, 0xC000, 0x2000, 0xFD98, 0xFD98, 
    0x8268, 0x8268, 0x8268, 0x8268, 0x8268, 0xFD98, 0x7F01, 0x7F01, 0xFF01, 0xFF01, 0xFF01, 0xFF01, 0xFF01, 0x7F01, 
    0x6101, 0x6226, 0x64AC, 0x6731, 0x6857, 0x6731, 0x64AC, 0x6226, 0x0B71, 0x0000, 0xF32F, 0xEB39, 0xF32F, 0x0000, 
    0x0B71, 0x1207, 
};

JointIndex sPoeComposerAttackAnimJointIndices[] = {
    { 0x000A, 0x0012, 0x001A },
    { 0x0022, 0x002A, 0x0032 },
    { 0x003A, 0x0042, 0x004A },
    { 0x0052, 0x005A, 0x0062 },
    { 0x006A, 0x0072, 0x007A },
    { 0x0003, 0x0004, 0x0005 },
    { 0x0082, 0x008A, 0x0092 },
    { 0x0006, 0x0006, 0x009A },
    { 0x00A2, 0x00AA, 0x00B2 },
    { 0x00BA, 0x00C2, 0x00CA },
    { 0x00D2, 0x0007, 0x0008 },
    { 0x0006, 0x00DA, 0x0009 },
};

AnimationHeader gPoeComposerAttackAnim = { 
    { 8 }, sPoeComposerAttackAnimFrameData,
    sPoeComposerAttackAnimJointIndices, 10
};

u8 object_po_composer_possiblePadding_00021C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sPoeComposerDamagedAnimFrameData[] = {
    0x0000, 0x0C1C, 0xC000, 0x0000, 0x01F4, 0xFE70, 0x0190, 0xFED4, 0x012C, 0xFF38, 0x00C8, 0xFF38, 0x0064, 0xFF9C, 
    0x0064, 0xFFCE, 0xFFD0, 0xFFED, 0x0000, 0xB1C7, 0xC000, 0xC195, 0xC0CA, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 
    0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0x0482, 0x1F70, 0x0FDB, 0xF8FF, 0xED49, 0xED49, 0xED49, 
    0xED49, 0xED49, 0xED49, 0xED49, 0xED49, 0xED49, 0xED49, 0xED49, 0xED49, 0xC000, 0xC54A, 0x0976, 0x2BDF, 0x3167, 
    0x3167, 0x3167, 0x3167, 0x3167, 0x3167, 0x3167, 0x3167, 0x3167, 0x3167, 0x3167, 0x3167, 0xDF5F, 0xD510, 0xC9D4, 
    0xDD7A, 0xE762, 0xE762, 0xE762, 0xE762, 0xE762, 0xE762, 0xE762, 0xE762, 0xE762, 0xE762, 0xE762, 0xE762, 0xFB7E, 
    0xF56C, 0xB24C, 0x94E0, 0x933C, 0x933C, 0x933C, 0x933C, 0x933C, 0x933C, 0x933C, 0x933C, 0x933C, 0x933C, 0x933C, 
    0x933C, 0xCEB3, 0xD667, 0xE75A, 0xF84C, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0xEA68, 0x1185, 0x37D2, 0x0D72, 0xE3E3, 0xE3E3, 0xE3E3, 0xE3E3, 0xE3E3, 0xE3E3, 0xE3E3, 
    0xE3E3, 0xE3E3, 0xE3E3, 0xE3E3, 0xE3E3, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 
    0x8000, 0x8000, 0x8000, 0x8000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x8000, 0x8000, 0x8000, 0xFF97, 0xE654, 0x02D7, 0x1C84, 0x0BBA, 
    0xF638, 0xF0BF, 0xEC5F, 0xEABB, 0xED78, 0xF638, 0x0AE4, 0x2A64, 0xCBDB, 0xE66F, 0xF143, 0x07CA, 0x00ED, 0xE9C8, 
    0xD0F5, 0xCB2D, 0xCB2D, 0xCB2D, 0xCB2D, 0xCB2D, 0xCB2D, 0xCB2D, 0xCB2D, 0xCB2D, 0xCB2D, 0xCB2D, 0xCB2D, 0x11A4, 
    0x183D, 0x218F, 0x1A9A, 0x12C1, 0x12C1, 0x12C1, 0x12C1, 0x12C1, 0x12C1, 0x12C1, 0x12C1, 0x12C1, 0x12C1, 0x12C1, 
    0x12C1, 0xCD19, 0xC95F, 0xB4BA, 0x9A1E, 0x927F, 0x927F, 0x927F, 0x927F, 0x927F, 0x927F, 0x927F, 0x927F, 0x927F, 
    0x927F, 0x927F, 0x927F, 0x0000, 0x08D5, 0x068B, 0x024A, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xF2F6, 0xF963, 0xFC8D, 0xFF03, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xEA68, 0xC793, 0xD89A, 0xF292, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x047B, 0x0048, 0xF709, 0xEDCB, 0xE997, 
    0xE997, 0xE997, 0xE997, 0xE997, 0xE997, 0xE997, 0xE997, 0xE997, 0xE997, 0xE997, 0xE997, 0x0000, 0xEA68, 0xD4D0, 
    0xDEA3, 0xF210, 0x0000, 0x0378, 0x0316, 0x0128, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x8000, 
    0x8258, 0x8000, 0x712D, 0x5E2F, 0x5125, 0x4B4D, 0x4841, 0x49A7, 0x5125, 0x610E, 0x77BD, 0x90E3, 0xA830, 0xB954, 
    0xC000, 0xFB78, 0x11BA, 0xF82E, 0x202B, 0x3A4C, 0x3A4C, 0x3A4C, 0x3A4C, 0x3A4C, 0x3A4C, 0x3A4C, 0x3A4C, 0x3A4C, 
    0x3A4C, 0x3A4C, 0x3A4C, 0xB1A9, 0xC000, 0xC1A7, 0xC19A, 0xC1E2, 0xC1E2, 0xC1E2, 0xC1E2, 0xC1E2, 0xC1E2, 0xC1E2, 
    0xC1E2, 0xC1E2, 0xC1E2, 0xC1E2, 0xC1E2, 0x40A2, 0x11BA, 0x2F4C, 0x1083, 0xFB7E, 0xFB7E, 0xFB7E, 0xFB7E, 0xFB7E, 
    0xFB7E, 0xFB7E, 0xFB7E, 0xFB7E, 0xFB7E, 0xFB7E, 0xFB7E, 0x075E, 0xEF85, 0xFFD0, 0x16EC, 0x22AA, 0x22AA, 0x22AA, 
    0x22AA, 0x22AA, 0x22AA, 0x22AA, 0x22AA, 0x22AA, 0x22AA, 0x22AA, 0x22AA, 0x0000, 
};

JointIndex sPoeComposerDamagedAnimJointIndices[] = {
    { 0x0003, 0x0001, 0x0000 },
    { 0x0013, 0x0023, 0x0002 },
    { 0x0033, 0x0043, 0x0053 },
    { 0x0000, 0x0000, 0x0063 },
    { 0x0000, 0x0000, 0x0073 },
    { 0x0083, 0x0093, 0x00A3 },
    { 0x00B3, 0x00C3, 0x00D3 },
    { 0x00E3, 0x00F3, 0x0103 },
    { 0x0000, 0x0000, 0x0113 },
    { 0x0123, 0x0000, 0x0133 },
    { 0x0143, 0x0153, 0x0163 },
    { 0x0000, 0x0000, 0x0173 },
};

AnimationHeader gPoeComposerDamagedAnim = { 
    { 16 }, sPoeComposerDamagedAnimFrameData,
    sPoeComposerDamagedAnimJointIndices, 3
};

s16 sPoeComposerFleeAnimFrameData[] = {
    0x0000, 0x0C1C, 0x0190, 0xC000, 0xF895, 0xE95A, 0xDC02, 0x8000, 0xFFFC, 0xFB4F, 0x13A4, 0xE307, 0xCD7E, 0x0194, 
    0x78DC, 0x0000, 0xFF6A, 0xFED4, 0xFF44, 0x0000, 0x00BC, 0x012C, 0x0096, 0xF1C7, 0xF2FD, 0xF5A6, 0xF84F, 0xF985, 
    0xF84F, 0xF5A6, 0xF2FD, 0xE7FC, 0xE915, 0xEA2E, 0xE976, 0xE7FC, 0xE5A7, 0xE416, 0xE609, 0x17E4, 0x14CA, 0x11AF, 
    0x13FA, 0x17E4, 0x1C13, 0x1EA2, 0x1B43, 0xC615, 0xC852, 0xCA90, 0xC8FF, 0xC615, 0xC244, 0xBFCB, 0xC2F0, 0x33BF, 
    0x30E4, 0x095F, 0x1B81, 0x33BF, 0x30E4, 0x095F, 0x1ECC, 0x0FCB, 0x0F07, 0x0E8F, 0x0F1F, 0x0FCB, 0x0DB8, 0x0B24, 
    0x0DEE, 0x134F, 0x0F34, 0x0B55, 0x0E23, 0x134F, 0x18E0, 0x1BD1, 0x17CE, 0xE029, 0xDE96, 0xDCD1, 0xDEAA, 0xE029, 
    0xDC93, 0xD8C8, 0xDCEF, 0xFE5F, 0xFC19, 0xF9BA, 0xFAD3, 0xFD9E, 0x02D5, 0x068A, 0x0280, 0x0A98, 0x0E57, 0x1211, 
    0x0F02, 0x0A74, 0x076E, 0x05F1, 0x0847, 0x0A10, 0x0B23, 0x0BD7, 0x090F, 0x071E, 0x0B68, 0x0F99, 0x0D04, 0x1C9F, 
    0x113F, 0x0000, 0xF3E6, 0xEDAA, 0xF3E6, 0x0000, 0x113F, 0x1A7C, 0xF97B, 0xF97B, 0xF97B, 0x1A7C, 0xF97B, 0xF97B, 
    0xF97B, 0xC000, 0xB846, 0xB08C, 0xB697, 0xC000, 0xC769, 0xCB74, 0xC5BA, 0x1A7C, 0x3B7E, 0x3B7E, 0x3B7E, 0x1A7C, 
    0x3B7E, 0x3B7E, 0x3B7E, 0x0F1C, 0x0971, 0x0000, 0xF693, 0xF0ED, 0xF693, 0x0000, 0x0971, 0xFA54, 0xF86C, 0xF4E1, 
    0xF2F8, 0xF3BC, 0xF58F, 0xF7BD, 0xF990, 0x0000, 
};

JointIndex sPoeComposerFleeAnimJointIndices[] = {
    { 0x000F, 0x0001, 0x0002 },
    { 0x0003, 0x0017, 0x0003 },
    { 0x0004, 0x0005, 0x0006 },
    { 0x001F, 0x0027, 0x002F },
    { 0x0000, 0x0000, 0x0037 },
    { 0x0007, 0x0008, 0x0009 },
    { 0x003F, 0x0047, 0x004F },
    { 0x000A, 0x000B, 0x000C },
    { 0x0057, 0x005F, 0x0067 },
    { 0x006F, 0x000D, 0x000E },
    { 0x0077, 0x007F, 0x0087 },
    { 0x0000, 0x008F, 0x0097 },
};

AnimationHeader gPoeComposerFleeAnim = { 
    { 8 }, sPoeComposerFleeAnimFrameData,
    sPoeComposerFleeAnimJointIndices, 15
};

u8 object_po_composer_possiblePadding_000718[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sPoeComposerFloatAnimFrameData[] = {
    0x0000, 0x0C1C, 0x0190, 0xB1C7, 0x0482, 0xC000, 0xFB7E, 0x8000, 0xFF97, 0x0000, 0xFFC5, 0xFF83, 0xFF4E, 0xFF38, 
    0xFF4E, 0xFF83, 0xFFC5, 0x0000, 0x003B, 0x007D, 0x00B2, 0x00C8, 0x00B2, 0x007D, 0x003B, 0x0190, 0x01A8, 0x01E6, 
    0x023E, 0x02A3, 0x0308, 0x0360, 0x039E, 0x03B6, 0x039E, 0x0360, 0x0308, 0x02A3, 0x023E, 0x01E6, 0x01A8, 0xDF5F, 
    0xE2D3, 0xE443, 0xDC2C, 0xD136, 0xCB42, 0xCF05, 0xD7CA, 0xDF5F, 0xE30A, 0xE3DF, 0xE18F, 0xDDE9, 0xDB9D, 0xDC26, 
    0xDDFE, 0xCEB3, 0xD1A8, 0xD727, 0xDA1C, 0xD8DA, 0xD5E3, 0xD268, 0xCF9C, 0xCEB3, 0xD2BF, 0xD9CE, 0xDD90, 0xDC04, 
    0xD855, 0xD3EE, 0xD03F, 0xEA68, 0xE0E3, 0xDAEC, 0xF204, 0x06D8, 0x0536, 0xFD8A, 0xF369, 0xEA68, 0xDFC0, 0xDB5A, 
    0xEE1F, 0xFF82, 0xFD9F, 0xF636, 0xEE2C, 0x07CA, 0x07AB, 0x078A, 0x0772, 0x0768, 0x0772, 0x078A, 0x07AB, 0x07CA, 
    0x07EA, 0x0811, 0x0832, 0x0841, 0x0832, 0x0811, 0x07EA, 0x11A4, 0x101E, 0x0E63, 0x0D00, 0x0C6F, 0x0D00, 0x0E63, 
    0x101E, 0x11A4, 0x1304, 0x1479, 0x15A2, 0x161B, 0x15A2, 0x1479, 0x1304, 0xCD19, 0xCCDA, 0xCC88, 0xCC34, 0xCC0C, 
    0xCC34, 0xCC88, 0xCCDA, 0xCD19, 0xCD62, 0xCDB4, 0xCDF3, 0xCE0C, 0xCDF3, 0xCDB4, 0xCD62, 0x0000, 0xFFEF, 0xFFD2, 
    0xFFCC, 0x0000, 0x00A4, 0x0196, 0x0270, 0x02CF, 0x0270, 0x0195, 0x00A3, 0x0000, 0xFFCD, 0xFFD3, 0xFFEF, 0xF2F6, 
    0xF41A, 0xF56F, 0xF68D, 0xF709, 0xF6A3, 0xF59F, 0xF45E, 0xF342, 0xF235, 0xF113, 0xF028, 0xEFC3, 0xF012, 0xF0E3, 
    0xF1F1, 0xEA68, 0xEA05, 0xE900, 0xE78F, 0xE5E8, 0xE441, 0xE2D0, 0xE1CB, 0xE168, 0xE1CB, 0xE2D0, 0xE441, 0xE5E8, 
    0xE78F, 0xE900, 0xEA05, 0x047B, 0x06AB, 0x09F0, 0x0C68, 0x0DB2, 0x0E8F, 0x0ED0, 0x0E43, 0x0C54, 0x094A, 0x063D, 
    0x0441, 0x036B, 0x0310, 0x0325, 0x03A2, 0x0000, 0xFEF6, 0xFDAE, 0xFD26, 0xFD75, 0xFDFF, 0xFEB0, 0xFF75, 0x003C, 
    0x00F2, 0x0183, 0x01DD, 0x01E7, 0x01A6, 0x0130, 0x009B, 0x8000, 0x8185, 0x838F, 0x85A0, 0x8734, 0x87CB, 0x8772, 
    0x869F, 0x8575, 0x8415, 0x82A1, 0x8139, 0x8001, 0x7F18, 0x7EC6, 0x7F20, 0xFB78, 0xF0D1, 0xE92E, 0xECAB, 0xF46C, 
    0xFDD9, 0x0444, 0x00EF, 0xFB78, 0xFECD, 0x0129, 0xFB1D, 0xF2FF, 0xEEDB, 0xF1CB, 0xF86C, 0xB1A9, 0xB0B7, 0xAF09, 
    0xB002, 0xB153, 0xB1E3, 0xB1BA, 0xB1C7, 0xB1A9, 0xB1BB, 0xB1BC, 0xB1B0, 0xB101, 0xB052, 0xB0CF, 0xB180, 0x40A2, 
    0x4C03, 0x544C, 0x507C, 0x4822, 0x3E16, 0x3744, 0x3AD0, 0x40A2, 0x3D15, 0x3A92, 0x4102, 0x49AD, 0x4E23, 0x4AF8, 
    0x43E1, 0x0000, 0xFD73, 0xFA7F, 0xF80E, 0xF709, 0xF80E, 0xFA7F, 0xFD73, 0x0000, 0x024E, 0x04B7, 0x069D, 0x0762, 
    0x069D, 0x04B7, 0x024E, 0x075E, 0x07F2, 0x0978, 0x0B9F, 0x0E17, 0x108F, 0x12B6, 0x143C, 0x14D0, 0x143C, 0x12B6, 
    0x108F, 0x0E17, 0x0B9F, 0x0978, 0x07F2, 0x0000, 
};

JointIndex sPoeComposerFloatAnimJointIndices[] = {
    { 0x0009, 0x0001, 0x0019 },
    { 0x0003, 0x0004, 0x0005 },
    { 0x0005, 0x0029, 0x0006 },
    { 0x0000, 0x0000, 0x0039 },
    { 0x0000, 0x0000, 0x0049 },
    { 0x0007, 0x0000, 0x0008 },
    { 0x0059, 0x0069, 0x0079 },
    { 0x0089, 0x0099, 0x00A9 },
    { 0x0000, 0x0000, 0x00B9 },
    { 0x00C9, 0x0000, 0x00D9 },
    { 0x00E9, 0x00F9, 0x0109 },
    { 0x0000, 0x0119, 0x0129 },
};

AnimationHeader gPoeComposerFloatAnim = { 
    { 16 }, sPoeComposerFloatAnimFrameData,
    sPoeComposerFloatAnimJointIndices, 9
};

u8 object_po_composer_possiblePadding_0009EC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sPoeComposerAppearAnimFrameData[] = {
    0x0000, 0x0C1C, 0x0190, 0x8000, 0xFF97, 0xC000, 0xB877, 0x2532, 0x0E46, 0xF6E4, 0x57B6, 0x2C92, 0x0C4B, 0xF573, 
    0xDFBB, 0xCCD7, 0xC538, 0xC176, 0xC18B, 0xC197, 0xC199, 0xC18E, 0xC177, 0xC150, 0xC119, 0xC0D0, 0xC072, 0xC000, 
    0xBEDA, 0xBCAE, 0xB9EC, 0xB704, 0xB466, 0xB281, 0xB1C7, 0x1BBC, 0x1B6C, 0x68B0, 0x74EE, 0x87A3, 0xE6F7, 0xE5D0, 
    0xF661, 0x09AC, 0x1754, 0x1CE3, 0x1DD8, 0x1E1D, 0x1E40, 0x1E54, 0x1E57, 0x1E46, 0x1E20, 0x1DE0, 0x1D86, 0x1D0E, 
    0x1C76, 0x1BBC, 0x19DC, 0x1650, 0x11CF, 0x0D10, 0x08C9, 0x05B2, 0x0482, 0xC000, 0xBB42, 0x2FCC, 0x25EE, 0x24AE, 
    0xB18A, 0xCCA4, 0xDB92, 0xDBD7, 0xD321, 0xC7B0, 0xC297, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 
    0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xFC0A, 0xFC17, 0xFC3D, 
    0xFC78, 0xFCC2, 0xFD18, 0xFD77, 0xFDD8, 0xFE3B, 0xFE99, 0xFEF0, 0xFF3D, 0xFF7D, 0xFFAC, 0xFFC7, 0xFFCB, 0xFFB5, 
    0xFF80, 0xFF29, 0xFEAB, 0xFE00, 0xFD22, 0xFC0A, 0xF90F, 0xF2B7, 0xE925, 0xDCCB, 0xCF5E, 0xC469, 0xC000, 0xF8E6, 
    0xF8F3, 0xF917, 0xF950, 0xF999, 0xF9EE, 0xFA4B, 0xFAAE, 0xFB11, 0xFB72, 0xFBCD, 0xFC1E, 0xFC61, 0xFC92, 0xFCAF, 
    0xFCB4, 0xFC9C, 0xFC64, 0xFC08, 0xFB85, 0xFAD6, 0xF9F7, 0xF8E6, 0xF626, 0xF101, 0xEACB, 0xE519, 0xE14A, 0xDFAE, 
    0xDF5F, 0xC422, 0xC413, 0xC3E7, 0xC3A2, 0xC34B, 0xC2E5, 0xC274, 0xC1FD, 0xC185, 0xC110, 0xC0A3, 0xC041, 0xBFF0, 
    0xBFB4, 0xBF91, 0xBF8C, 0xBFA9, 0xBFEC, 0xC05B, 0xC0FA, 0xC1CD, 0xC2D9, 0xC422, 0xC779, 0xCE01, 0xD712, 0xE22E, 
    0xEE06, 0xF7A2, 0xFB7E, 0xF897, 0xF79C, 0xF4FA, 0xF12B, 0xECA7, 0xE7E6, 0xE362, 0xDF93, 0xDCF1, 0xDBF6, 0xDC2F, 
    0xDCD5, 0xDDE1, 0xDF4D, 0xE113, 0xE32A, 0xE58D, 0xE835, 0xEB1B, 0xEE38, 0xF185, 0xF4FD, 0xF897, 0x01C1, 0x0F23, 
    0x1690, 0x13A2, 0x0BCF, 0x03B9, 0x0000, 0x21A6, 0x21FD, 0x22E7, 0x2439, 0x25CA, 0x2770, 0x2901, 0x2A54, 0x2B3D, 
    0x2B94, 0x2B77, 0x2B22, 0x2A9E, 0x29F3, 0x2926, 0x2841, 0x274A, 0x2648, 0x2544, 0x2443, 0x234F, 0x226D, 0x21A6, 
    0x2201, 0x227E, 0x201F, 0x1866, 0x0DA8, 0x041E, 0x0000, 0xFF49, 0xFE53, 0xFBC0, 0xF805, 0xF399, 0xEEF2, 0xEA86, 
    0xE6CB, 0xE437, 0xE341, 0xE3B0, 0xE4E7, 0xE6C2, 0xE920, 0xEBDF, 0xEEDB, 0xF1F3, 0xF505, 0xF7EE, 0xFA8B, 0xFCBB, 
    0xFE5B, 0xFF49, 0xFC07, 0xF418, 0xEBDA, 0xE364, 0xD9CE, 0xD1F4, 0xCEB3, 0xEC09, 0xED35, 0xF05A, 0xF4E6, 0xFA49, 
    0xFFF3, 0x0553, 0x09D9, 0x0CF4, 0x0E14, 0x0B45, 0x0455, 0xFB50, 0xF246, 0xEB46, 0xE867, 0xE8FD, 0xED70, 0xF1BB, 
    0xF052, 0xEE2E, 0xEFBC, 0xF11A, 0xEDA7, 0xEC09, 0xF497, 0xFD95, 0xFFFC, 0x0043, 0x0000, 0x09C7, 0x091C, 0x0752, 
    0x04BA, 0x01A8, 0xFE6E, 0xFB5D, 0xF8C9, 0xF703, 0xF65E, 0xF82D, 0xFC8D, 0x0201, 0x0709, 0x0A27, 0x06BB, 0x0202, 
    0x045B, 0x0665, 0x0070, 0xFBCA, 0x0298, 0x0A9F, 0x09EF, 0x09C7, 0x14F8, 0x1CE5, 0x1489, 0x070F, 0x0000, 0xDE97, 
    0xE044, 0xE4C2, 0xEB42, 0xF2F6, 0xFB10, 0x02C3, 0x093F, 0x0DB7, 0x0F5D, 0x0BAA, 0x0257, 0xF5F1, 0xE906, 0xDE23, 
    0xD365, 0xD041, 0xE4DF, 0xF6EF, 0xE5F7, 0xD4A6, 0xE615, 0xF88E, 0xEE2F, 0xDE97, 0xD915, 0xD8BC, 0xDE5E, 0xE659, 
    0xEA68, 0x10C1, 0x10C5, 0x10CF, 0x10DE, 0x10F1, 0x1108, 0x1121, 0x113C, 0x1157, 0x1171, 0x118A, 0x119F, 0x11B2, 
    0x11BF, 0x11C7, 0x11C8, 0x11C2, 0x11B2, 0x119A, 0x1176, 0x1147, 0x110B, 0x10C1, 0x1005, 0x0EA2, 0x0CE2, 0x0B0D, 
    0x096A, 0x083D, 0x07CA, 0x0D95, 0x0D93, 0x0D8F, 0x0D88, 0x0D80, 0x0D76, 0x0D6C, 0x0D60, 0x0D55, 0x0D4A, 0x0D3F, 
    0x0D36, 0x0D2E, 0x0D28, 0x0D25, 0x0D25, 0x0D27, 0x0D2E, 0x0D38, 0x0D47, 0x0D5C, 0x0D75, 0x0D95, 0x0DE6, 0x0E81, 
    0x0F48, 0x101D, 0x10DF, 0x116D, 0x11A4, 0xCA60, 0xCA5E, 0xCA5B, 0xCA57, 0xCA51, 0xCA4A, 0xCA42, 0xCA3A, 0xCA31, 
    0xCA29, 0xCA21, 0xCA1B, 0xCA15, 0xCA11, 0xCA0E, 0xCA0E, 0xCA10, 0xCA15, 0xCA1C, 0xCA27, 0xCA36, 0xCA49, 0xCA60, 
    0xCA9A, 0xCB07, 0xCB90, 0xCC1E, 0xCC9D, 0xCCF7, 0xCD19, 0x0D7E, 0x0A8D, 0x0333, 0xF9A3, 0xF014, 0xE8BA, 0xE5C9, 
    0xE6E7, 0xE9F0, 0xEE6D, 0xF3E4, 0xF9DF, 0xFFE3, 0x057A, 0x0A2B, 0x0D7E, 0x0F85, 0x10B6, 0x1128, 0x10F6, 0x1038, 
    0x0F08, 0x0D7E, 0x08D0, 0x0185, 0xFCAE, 0xFC1D, 0xFD60, 0xFF1F, 0x0000, 0xF0BB, 0xF21B, 0xF58C, 0xFA04, 0xFE7D, 
    0x01ED, 0x034E, 0x02C8, 0x015C, 0xFF43, 0xFCB4, 0xF9E8, 0xF718, 0xF47A, 0xF249, 0xF0BB, 0xEFA6, 0xEEC9, 0xEE3A, 
    0xEE0E, 0xEE5B, 0xEF38, 0xF0BB, 0xF650, 0xFECB, 0x0358, 0x00F7, 0xFB50, 0xF595, 0xF2F6, 0xBD97, 0xBE0C, 0xBF31, 
    0xC0AE, 0xC22B, 0xC350, 0xC3C5, 0xC399, 0xC320, 0xC26D, 0xC193, 0xC0A5, 0xBFB5, 0xBED6, 0xBE1B, 0xBD97, 0xBD23, 
    0xBCA2, 0xBC33, 0xBBF6, 0xBC07, 0xBC88, 0xBD97, 0xC057, 0xC53A, 0xCB54, 0xD3C9, 0xDE11, 0xE6C0, 0xEA68, 0x1C85, 
    0x1C8E, 0x1CA8, 0x1CD0, 0x1D04, 0x1D40, 0x1D82, 0x1DC8, 0x1E0E, 0x1E53, 0x1E93, 0x1ECD, 0x1EFD, 0x1F20, 0x1F35, 
    0x1F38, 0x1F27, 0x1EFF, 0x1EBD, 0x1E60, 0x1DE4, 0x1D47, 0x1C85, 0x1A94, 0x16E9, 0x123F, 0x0D56, 0x08E9, 0x05B6, 
    0x047B, 0x0000, 0x0082, 0x01E6, 0x03FB, 0x068C, 0x0968, 0x0C5B, 0x0F34, 0x11C0, 0x13CB, 0x1524, 0x1598, 0x1490, 
    0x11EE, 0x0E38, 0x09F1, 0x059F, 0x01C4, 0xFEE7, 0xFFBC, 0x01CF, 0x0185, 0x0000, 0xFB8B, 0xF913, 0xFDAF, 0x04A2, 
    0x08F8, 0x04D5, 0x0000, 0x15CD, 0xE8DB, 0xEABB, 0xEA85, 0xEA69, 0xEA3C, 0xEA0F, 0xE9DE, 0xE9AD, 0xE97D, 0xE950, 
    0xE927, 0xE906, 0xE8ED, 0xE8DE, 0xE8DC, 0xE8E8, 0xE904, 0xE932, 0xE973, 0xE9CA, 0xEA37, 0x15CD, 0xEC1C, 0xEEAC, 
    0xF1EC, 0xF557, 0xF868, 0xFA9E, 0xFB78, 0xC000, 0xC005, 0xC015, 0xC02D, 0xC04B, 0xC06F, 0xC097, 0xC0C0, 0xC0EA, 
    0xC114, 0xC13A, 0xC15C, 0xC179, 0xC18E, 0xC19A, 0xC19C, 0xC192, 0xC17A, 0xC153, 0xC11B, 0xC0D1, 0xC073, 0xC000, 
    0xBED8, 0xBCA7, 0xB9DF, 0xB6F0, 0xB44C, 0xB264, 0xB1A9, 0x15CD, 0x40E8, 0x40D8, 0x40DA, 0x40D9, 0x40DA, 0x40DA, 
    0x40DA, 0x40D9, 0x40D9, 0x40D9, 0x40D9, 0x40D9, 0x40D9, 0x40D9, 0x40D9, 0x40D9, 0x40D9, 0x40D9, 0x40D9, 0x40D9, 
    0x40DA, 0x15CD, 0x40D9, 0x40D7, 0x40D0, 0x40C3, 0x40B5, 0x40A7, 0x40A2, 0xEAD9, 0xEACE, 0xEAAF, 0xEA80, 0xEA43, 
    0xE9FB, 0xE9AD, 0xE95A, 0xE906, 0xE8B5, 0xE868, 0xE824, 0xE7EB, 0xE7C1, 0xE7A9, 0xE7A5, 0xE7BA, 0xE7E9, 0xE836, 
    0xE8A5, 0xE938, 0xE9F3, 0xEAD9, 0xED26, 0xF181, 0xF709, 0xFCDD, 0x021D, 0x05E8, 0x075E, 0x0000, 
};

JointIndex sPoeComposerAppearAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0005, 0x0023, 0x0041 },
    { 0x005F, 0x007D, 0x009B },
    { 0x00B9, 0x00D7, 0x00F5 },
    { 0x0113, 0x0131, 0x014F },
    { 0x0003, 0x0000, 0x0004 },
    { 0x016D, 0x018B, 0x01A9 },
    { 0x01C7, 0x01E5, 0x0203 },
    { 0x0000, 0x0000, 0x0221 },
    { 0x023F, 0x0000, 0x0003 },
    { 0x025D, 0x027B, 0x0299 },
    { 0x0000, 0x0000, 0x02B7 },
};

AnimationHeader gPoeComposerAppearAnim = { 
    { 30 }, sPoeComposerAppearAnimFrameData,
    sPoeComposerAppearAnimJointIndices, 5
};

u8 object_po_composer_possiblePadding_000FF4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sPoeComposerDisappearAnimFrameData[] = {
    0x0000, 0x0C1C, 0x0190, 0xC000, 0xFB7E, 0x8000, 0xFF97, 0x0C1C, 0x0C2E, 0x0C60, 0x0CA8, 0x0D01, 0x0D61, 0x0DC1, 
    0x0E1A, 0x0E62, 0x0E94, 0x0EA6, 0x0E94, 0x0E62, 0x0E1A, 0x0DC1, 0x0D61, 0x0D01, 0x0CA8, 0x0C60, 0x0C2E, 0xB1C7, 
    0xB1C4, 0xB1BD, 0xB1B3, 0xB1A6, 0xB19A, 0xB195, 0xB1A0, 0xB1B3, 0xB1C2, 0xB1C7, 0xB1C8, 0xB1C9, 0xB1CA, 0xB1CA, 
    0xB1CA, 0xB1CA, 0xB1CA, 0xB1C9, 0xB1C8, 0x0482, 0x04EA, 0x0598, 0x0665, 0x0728, 0x07BA, 0x07F4, 0x0776, 0x065B, 
    0x0530, 0x0482, 0x044A, 0x0420, 0x0403, 0x03F2, 0x03EE, 0x03F6, 0x0409, 0x0427, 0x0450, 0xC000, 0xBFDA, 0xBF9A, 
    0xBF4E, 0xBF06, 0xBECF, 0xBEB9, 0xBEE8, 0xBF52, 0xBFC0, 0xC000, 0xC014, 0xC024, 0xC02F, 0xC034, 0xC036, 0xC033, 
    0xC02C, 0xC021, 0xC012, 0xDF5F, 0xE0B2, 0xE309, 0xE3F4, 0xE184, 0xDDA7, 0xDBB5, 0xDE19, 0xE268, 0xE4B7, 0xE346, 
    0xE01F, 0xDD03, 0xDBB5, 0xDE54, 0xE31D, 0xE5F8, 0xE53C, 0xE2EF, 0xE080, 0x0000, 0xFF87, 0xFE69, 0xFD1A, 0xFC10, 
    0xFB67, 0xFB7A, 0xFC77, 0xFDCD, 0xFF33, 0x0062, 0x013D, 0x01E1, 0x0259, 0x02B4, 0x02E4, 0x02C3, 0x0224, 0x0136, 
    0x005E, 0x0000, 0xFF05, 0xFCB2, 0xF9EE, 0xF7A5, 0xF5A7, 0xF58C, 0xF855, 0xFC22, 0x0037, 0x03D9, 0x0730, 0x0A29, 
    0x0BAA, 0x0AD0, 0x087E, 0x0643, 0x0458, 0x024C, 0x00AA, 0xCEB3, 0xD06C, 0xD486, 0xD96B, 0xDD83, 0xDFE5, 0xE1AD, 
    0xE3F7, 0xE673, 0xE875, 0xE94E, 0xE7C4, 0xE492, 0xE203, 0xE192, 0xE1C3, 0xE076, 0xDC22, 0xD633, 0xD0F5, 0x0000, 
    0xFEF6, 0xFCAE, 0xFA67, 0xF964, 0xFBFF, 0x0032, 0x03E6, 0x0812, 0x0BF6, 0x0ED5, 0x0FF0, 0x08C6, 0x0000, 0xFE7E, 
    0xFF15, 0xFFBC, 0xFFC6, 0xFFDE, 0xFFF5, 0x0000, 0xFEB6, 0xFB92, 0xF7AA, 0xF415, 0xEFC7, 0xEDAB, 0xEFBD, 0xF2EA, 
    0xF6A0, 0xFA50, 0xFD6A, 0xFF25, 0x0000, 0x00D6, 0x017C, 0x01BF, 0x0179, 0x00DF, 0x0046, 0xEA68, 0xED96, 0xF493, 
    0xFB8B, 0xFEAB, 0xF4B1, 0xE9F4, 0xE9EB, 0xEC25, 0xEF59, 0xF23C, 0xF387, 0xEDDE, 0xEA68, 0xF48B, 0x02B1, 0x09DA, 
    0x04F0, 0xFA21, 0xEF52, 0x07CA, 0x08A5, 0x09F5, 0x0B36, 0x0C0C, 0x0C53, 0x0C0F, 0x0B54, 0x0A2D, 0x08CE, 0x0791, 
    0x06D4, 0x0684, 0x0655, 0x0644, 0x064F, 0x0673, 0x06AE, 0x06FC, 0x075C, 0x11A4, 0x1187, 0x1115, 0x1039, 0x0F4A, 
    0x0EEF, 0x0F7B, 0x107C, 0x116F, 0x11FF, 0x1223, 0x1213, 0x11FF, 0x11EA, 0x11D8, 0x11CA, 0x11C0, 0x11B9, 0x11B4, 
    0x11AD, 0xCD19, 0xCEF8, 0xD204, 0xD547, 0xD7CA, 0xD8AF, 0xD7AA, 0xD553, 0xD238, 0xCEFD, 0xCC50, 0xCACD, 0xCA32, 
    0xC9DC, 0xC9C4, 0xC9E3, 0xCA36, 0xCAB6, 0xCB5F, 0xCC2C, 0x0000, 0x0096, 0x01DB, 0x0365, 0x04C7, 0x0596, 0x05CC, 
    0x05B9, 0x0571, 0x050A, 0x0496, 0x042C, 0x03B9, 0x0329, 0x0287, 0x01DF, 0x013F, 0x00B3, 0x0047, 0x0007, 0xF2F6, 
    0xF331, 0xF3A2, 0xF425, 0xF494, 0xF4CD, 0xF4C9, 0xF4A2, 0xF466, 0xF421, 0xF3E2, 0xF3B5, 0xF394, 0xF370, 0xF34C, 
    0xF32B, 0xF30E, 0xF2F8, 0xF2EB, 0xF2EA, 0xEA68, 0xE73F, 0xE126, 0xDA15, 0xD401, 0xD0E1, 0xD107, 0xD303, 0xD623, 
    0xD9B7, 0xDD0C, 0xDF72, 0xE145, 0xE340, 0xE540, 0xE725, 0xE8CD, 0xEA16, 0xEADF, 0xEB05, 0x047B, 0x054E, 0x079F, 
    0x0AA0, 0x0D84, 0x0F7C, 0x10A4, 0x1199, 0x1249, 0x12A5, 0x129D, 0x1221, 0x111A, 0x0F96, 0x0DBD, 0x0BB8, 0x09AF, 
    0x07C8, 0x062E, 0x0507, 0x8000, 0x7F31, 0x7E35, 0x7D36, 0x7C62, 0x7BE6, 0x7BED, 0x7C9E, 0x7DDB, 0x7F6B, 0x8115, 
    0x82A1, 0x83D6, 0x847B, 0x8487, 0x8429, 0x837D, 0x829F, 0x81AE, 0x80C4, 0xFB78, 0x0136, 0x0970, 0x11EC, 0x15DF, 
    0x1344, 0x0D17, 0x05FE, 0xFFE7, 0xFB78, 0xF776, 0xF310, 0xEEDE, 0xEB66, 0xE90F, 0xE831, 0xE969, 0xECA5, 0xF149, 
    0xF68C, 0xB1A9, 0xB2EB, 0xB465, 0xB545, 0xB57F, 0xB55B, 0xB4D6, 0xB3D9, 0xB29F, 0xB1A9, 0xB117, 0xB08C, 0xAFF6, 
    0xAF60, 0xAEEA, 0xAEBB, 0xAEFC, 0xAF97, 0xB04D, 0xB0F9, 0x40A2, 0x3A84, 0x31C6, 0x28C5, 0x2494, 0x2759, 0x2DE6, 
    0x356F, 0x3BE9, 0x40A2, 0x44E7, 0x499A, 0x4E1D, 0x51E0, 0x546E, 0x5561, 0x540B, 0x5084, 0x4B82, 0x45E0, 0x0000, 
    0x004D, 0x007C, 0x008B, 0x007C, 0x004D, 0x0000, 0xFF79, 0xFEB2, 0xFDCA, 0xFCDF, 0xFC12, 0xFB80, 0xFB48, 0xFB80, 
    0xFC12, 0xFCDF, 0xFDCA, 0xFEB2, 0xFF79, 0x0000, 0x0256, 0x0519, 0x07D1, 0x0A05, 0x0B3D, 0x0B00, 0x08DC, 0x051C, 
    0x006B, 0xFB72, 0xF6D9, 0xF34B, 0xF16F, 0xF16C, 0xF2B8, 0xF4F4, 0xF7C3, 0xFAC9, 0xFDA7, 0x075E, 0x0570, 0x02DF, 
    0x0027, 0xFDC5, 0xFC35, 0xFBF5, 0xFD51, 0xFFED, 0x034F, 0x06F7, 0x0A6A, 0x0D2B, 0x0EBD, 0x0F1B, 0x0EB3, 0x0DB2, 
    0x0C48, 0x0AA2, 0x08F0, 0x0000, 
};

JointIndex sPoeComposerDisappearAnimJointIndices[] = {
    { 0x0000, 0x0007, 0x0002 },
    { 0x001B, 0x002F, 0x0043 },
    { 0x0003, 0x0057, 0x0004 },
    { 0x006B, 0x007F, 0x0093 },
    { 0x00A7, 0x00BB, 0x00CF },
    { 0x0005, 0x0000, 0x0006 },
    { 0x00E3, 0x00F7, 0x010B },
    { 0x011F, 0x0133, 0x0147 },
    { 0x0000, 0x0000, 0x015B },
    { 0x0000, 0x0000, 0x016F },
    { 0x0183, 0x0197, 0x01AB },
    { 0x01BF, 0x01D3, 0x01E7 },
};

AnimationHeader gPoeComposerDisappearAnim = { 
    { 20 }, sPoeComposerDisappearAnimFrameData,
    sPoeComposerDisappearAnimJointIndices, 7
};

u64 object_po_composerTex_001450[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_001450.i8.inc.c"
};

Vtx object_po_composerVtx_001C50[] = {
#include "assets/objects/object_po_composer/object_po_composerVtx_001C50.vtx.inc"
};

Gfx gPoeComposerSoulDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_composerTex_001450, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(gDecorativeFlameMaskTex, 0x0100, 1, G_IM_FMT_I, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_po_composerVtx_001C50, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx object_po_composerVtx_001D50[] = {
#include "assets/objects/object_po_composer/object_po_composerVtx_001D50.vtx.inc"
};

Gfx gPoeComposerSkelLimbsLimb_006EE0DL_002970[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x0A000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_0058E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 175, 59, 29, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_po_composerVtx_001D50[21], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 9, 6, 0, 11, 10, 6, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 15, 12, 0, 17, 16, 12, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_006CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_005CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 200, 200, 140, 255),
    gsSPVertex(&object_po_composerVtx_001D50[43], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 6, 4, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 2, 0, 2, 14, 12, 0),
    gsSP2Triangles(7, 15, 6, 0, 4, 16, 0, 0),
    gsSP2Triangles(4, 5, 16, 0, 6, 17, 5, 0),
    gsSP2Triangles(18, 11, 8, 0, 10, 9, 3, 0),
    gsSP2Triangles(0, 16, 1, 0, 3, 7, 4, 0),
    gsSP2Triangles(1, 14, 2, 0, 15, 7, 11, 0),
    gsSP2Triangles(11, 18, 15, 0, 17, 12, 14, 0),
    gsSP1Triangle(14, 5, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerSkelLimbsLimb_006F58DL_002B70[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_po_composerVtx_001D50, 6, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_005CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 200, 200, 140, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_po_composerVtx_001D50[6], 15, 6),
    gsSP2Triangles(0, 1, 6, 0, 2, 3, 7, 0),
    gsSP2Triangles(2, 8, 9, 0, 4, 10, 11, 0),
    gsSP2Triangles(1, 12, 13, 0, 14, 15, 3, 0),
    gsSP2Triangles(16, 1, 4, 0, 17, 18, 2, 0),
    gsSP2Triangles(19, 3, 0, 0, 20, 5, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerSkelLimbsLimb_006F1CDL_002C60[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_po_composerVtx_001D50[76], 8, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_005CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 200, 200, 140, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_po_composerVtx_001D50[84], 18, 8),
    gsSP2Triangles(8, 9, 7, 0, 5, 10, 11, 0),
    gsSP2Triangles(12, 13, 5, 0, 14, 4, 6, 0),
    gsSP2Triangles(7, 4, 15, 0, 6, 16, 17, 0),
    gsSP2Triangles(5, 7, 18, 0, 19, 6, 5, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x0A000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_0058E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 175, 59, 29, 255),
    gsSP2Triangles(0, 20, 21, 0, 22, 0, 1, 0),
    gsSP2Triangles(3, 2, 23, 0, 24, 25, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_0054E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_po_composerVtx_001D50[102], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_005CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 200, 200, 140, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 12, 0),
    gsSP2Triangles(10, 11, 8, 0, 12, 9, 8, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x0A000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_0058E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 175, 59, 29, 255),
    gsSP2Triangles(13, 14, 15, 0, 16, 14, 13, 0),
    gsSP2Triangles(16, 13, 17, 0, 18, 19, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerSkelLimbsLimb_006F28DL_002F28[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_0054E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_po_composerVtx_001D50[68], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerSkelLimbsLimb_006F34DL_002FD8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_0060E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_po_composerVtx_001D50[62], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(0, 3, 1, 0, 5, 3, 0, 0),
    gsSP2Triangles(1, 4, 2, 0, 2, 4, 5, 0),
    gsSP2Triangles(3, 5, 4, 0, 5, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerSkelLimbsLimb_006EECDL_003090[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_po_composerVtx_001D50[147], 8, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_005CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 200, 200, 140, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_po_composerVtx_001D50[155], 18, 8),
    gsSP2Triangles(8, 6, 7, 0, 9, 10, 4, 0),
    gsSP2Triangles(11, 7, 4, 0, 12, 13, 5, 0),
    gsSP2Triangles(7, 14, 15, 0, 4, 16, 17, 0),
    gsSP2Triangles(5, 6, 18, 0, 4, 5, 19, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x0A000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_0058E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 175, 59, 29, 255),
    gsSP2Triangles(2, 20, 21, 0, 22, 2, 3, 0),
    gsSP2Triangles(1, 0, 23, 0, 24, 25, 0, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_0054E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPVertex(&object_po_composerVtx_001D50[173], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_005CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 200, 200, 140, 255),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 12, 0),
    gsSP2Triangles(12, 9, 8, 0, 10, 11, 8, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x0A000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_0058E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 175, 59, 29, 255),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 20, 19, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerSkelLimbsLimb_006EF8DL_003348[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_0054E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_po_composerVtx_001D50[139], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerSkelLimbsLimb_006F04DL_0033F8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_po_composerTex_0062E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_po_composerVtx_001D50[123], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 1, 7, 8, 0),
    gsSP2Triangles(9, 7, 1, 0, 2, 8, 10, 0),
    gsSP2Triangles(6, 10, 3, 0, 0, 11, 12, 0),
    gsSP2Triangles(4, 12, 13, 0, 9, 0, 12, 0),
    gsSP2Triangles(14, 11, 2, 0, 3, 8, 7, 0),
    gsSP2Triangles(3, 10, 8, 0, 6, 5, 15, 0),
    gsSP2Triangles(13, 11, 10, 0, 10, 15, 13, 0),
    gsSP2Triangles(7, 9, 3, 0, 11, 0, 2, 0),
    gsSP2Triangles(15, 10, 6, 0, 4, 15, 5, 0),
    gsSP2Triangles(3, 9, 4, 0, 1, 0, 9, 0),
    gsSP2Triangles(10, 14, 2, 0, 11, 14, 10, 0),
    gsSP2Triangles(13, 15, 4, 0, 8, 2, 1, 0),
    gsSP2Triangles(11, 13, 12, 0, 12, 4, 9, 0),
    gsSPEndDisplayList(),
};

Vtx object_po_composerVtx_003500[] = {
#include "assets/objects/object_po_composer/object_po_composerVtx_003500.vtx.inc"
};

Gfx gPoeComposerSkelLimbsLimb_006F4CDL_004100[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_composerTex_0066E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(object_po_composerVtx_003500, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(4, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_0062E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_composerVtx_003500[5], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 2, 1, 5, 0),
    gsSP2Triangles(2, 5, 6, 0, 4, 2, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 13, 20, 21, 0),
    gsSP2Triangles(9, 8, 22, 0, 10, 9, 22, 0),
    gsSP2Triangles(17, 23, 18, 0, 24, 15, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_0064E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_composerVtx_003500[30], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_005CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, ENVIRONMENT, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetPrimColor(0, 0, 90, 85, 50, 255),
    gsSPVertex(&object_po_composerVtx_003500[38], 23, 0),
    gsSPDisplayList(0x0B000000),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 1, 6, 0, 7, 3, 8, 0),
    gsSP2Triangles(2, 1, 5, 0, 2, 9, 8, 0),
    gsSP2Triangles(8, 3, 2, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 13, 12, 0, 13, 14, 12, 0),
    gsSP2Triangles(12, 5, 10, 0, 12, 15, 9, 0),
    gsSP2Triangles(14, 15, 12, 0, 9, 5, 12, 0),
    gsSP2Triangles(1, 0, 16, 0, 17, 4, 3, 0),
    gsSP2Triangles(7, 18, 19, 0, 11, 10, 6, 0),
    gsSP2Triangles(6, 10, 5, 0, 7, 17, 3, 0),
    gsSP2Triangles(4, 20, 2, 0, 2, 20, 0, 0),
    gsSP2Triangles(1, 16, 6, 0, 8, 18, 7, 0),
    gsSP2Triangles(5, 9, 2, 0, 11, 21, 13, 0),
    gsSP2Triangles(16, 21, 6, 0, 6, 21, 11, 0),
    gsSP2Triangles(22, 7, 19, 0, 22, 17, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_0060E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_composerVtx_003500[61], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerSkelLimbsLimb_006F10DL_004410[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, ENVIRONMENT, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 243, 191, 113, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_composerVtx_003500[69], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_po_composerVtx_003500[73], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 2, 3, 0, 2, 1, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerLanternBottomDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_composerTex_0056E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0, PRIM_LOD_FRAC,
                       COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_po_composerVtx_003500[78], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 2, 0, 1, 0, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerLanternTopDL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_0058E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, ENVIRONMENT, 0, TEXEL1, 0, PRIM_LOD_FRAC,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 75, 20, 25, 255),
    gsSPVertex(&object_po_composerVtx_003500[85], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 8, 1, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerLanternDL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_005AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_po_composerVtx_003500[95], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 4, 0, 1, 5, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 9, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 11, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeComposerFlatHeadDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_composerTex_0068E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_composerVtx_003500[108], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_0062E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_composerVtx_003500[113], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 5, 9, 6, 0),
    gsSP2Triangles(0, 10, 1, 0, 8, 9, 5, 0),
    gsSP2Triangles(6, 11, 7, 0, 12, 13, 14, 0),
    gsSP2Triangles(14, 15, 12, 0, 12, 16, 13, 0),
    gsSP2Triangles(13, 17, 18, 0, 18, 14, 13, 0),
    gsSP2Triangles(14, 18, 19, 0, 19, 20, 14, 0),
    gsSP2Triangles(17, 21, 9, 0, 9, 8, 17, 0),
    gsSP2Triangles(1, 4, 2, 0, 15, 22, 10, 0),
    gsSP2Triangles(10, 0, 15, 0, 7, 11, 19, 0),
    gsSP2Triangles(19, 18, 7, 0, 3, 4, 16, 0),
    gsSP2Triangles(16, 12, 3, 0, 17, 8, 7, 0),
    gsSP2Triangles(7, 18, 17, 0, 3, 12, 15, 0),
    gsSP2Triangles(15, 0, 3, 0, 13, 21, 17, 0),
    gsSP2Triangles(15, 14, 20, 0, 20, 22, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_0064E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_composerVtx_003500[136], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_0060E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_composerVtx_003500[142], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 2, 1, 5, 0),
    gsSP2Triangles(2, 5, 6, 0, 4, 2, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 8, 0),
    gsSP2Triangles(8, 7, 10, 0, 8, 11, 12, 0),
    gsSP2Triangles(13, 9, 8, 0, 9, 14, 7, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_005CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, ENVIRONMENT, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 100, 90, 100, 255),
    gsSPDisplayList(0x0B000000),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_composerVtx_003500[163], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 6, 4, 3, 0),
    gsSP2Triangles(6, 8, 9, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 9, 8, 0, 7, 9, 0, 0),
    gsSP2Triangles(7, 11, 2, 0, 2, 4, 7, 0),
    gsSP2Triangles(12, 13, 1, 0, 13, 14, 1, 0),
    gsSP2Triangles(15, 16, 1, 0, 1, 0, 12, 0),
    gsSP2Triangles(16, 2, 1, 0, 2, 11, 0, 0),
    gsSP2Triangles(17, 16, 15, 0, 13, 12, 18, 0),
    gsSP2Triangles(9, 18, 12, 0, 12, 0, 9, 0),
    gsSP2Triangles(17, 5, 4, 0, 9, 10, 18, 0),
    gsSP2Triangles(17, 4, 2, 0, 2, 16, 17, 0),
    gsSP2Triangles(0, 11, 7, 0, 19, 14, 13, 0),
    gsSP2Triangles(10, 19, 18, 0, 18, 19, 13, 0),
    gsSP2Triangles(20, 17, 15, 0, 20, 5, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_0060E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_composerVtx_003500[184], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx object_po_composerVtx_004A30[] = {
#include "assets/objects/object_po_composer/object_po_composerVtx_004A30.vtx.inc"
};

Gfx gPoeComposerBurnDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_composerTex_006CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_po_composerVtx_004A30, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_0060E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&object_po_composerVtx_004A30[4], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_composerTex_006AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_po_composerVtx_004A30[10], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 6, 5, 0, 9, 6, 8, 0),
    gsSP2Triangles(9, 7, 6, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 17, 16, 0, 20, 17, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 23, 24, 21, 0),
    gsSP2Triangles(23, 25, 24, 0, 26, 25, 23, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 25, 26, 0),
    gsSP1Triangle(26, 29, 28, 0),
    gsSPVertex(&object_po_composerVtx_004A30[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 9, 11, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 10, 7, 0, 16, 17, 10, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 24, 23, 0),
    gsSP2Triangles(29, 27, 26, 0, 29, 24, 27, 0),
    gsSP1Triangle(0, 30, 31, 0),
    gsSPVertex(&object_po_composerVtx_004A30[72], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(7, 4, 8, 0, 9, 5, 10, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 6, 5, 0),
    gsSP2Triangles(12, 6, 9, 0, 13, 6, 12, 0),
    gsSP2Triangles(6, 13, 14, 0, 9, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(1, 3, 20, 0, 19, 21, 16, 0),
    gsSP2Triangles(18, 22, 19, 0, 23, 22, 18, 0),
    gsSP2Triangles(24, 19, 22, 0, 24, 21, 19, 0),
    gsSP2Triangles(14, 4, 6, 0, 14, 8, 4, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_po_composerVtx_004A30[104], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(1, 4, 5, 0, 6, 0, 2, 0),
    gsSP2Triangles(7, 0, 6, 0, 7, 3, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 12, 0),
    gsSP2Triangles(8, 11, 9, 0, 13, 10, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 14, 0, 22, 20, 16, 0),
    gsSP1Triangle(21, 20, 22, 0),
    gsSPEndDisplayList(),
};

u64 object_po_composerTex_0054E0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_0054E0.rgba16.inc.c"
};

u64 object_po_composerTex_0056E0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_0056E0.rgba16.inc.c"
};

u64 object_po_composerTex_0058E0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_0058E0.rgba16.inc.c"
};

u64 object_po_composerTex_005AE0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_005AE0.rgba16.inc.c"
};

u64 object_po_composerTex_005CE0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_005CE0.rgba16.inc.c"
};

u64 object_po_composerTex_0060E0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_0060E0.rgba16.inc.c"
};

u64 object_po_composerTex_0062E0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_0062E0.rgba16.inc.c"
};

u64 object_po_composerTex_0064E0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_0064E0.rgba16.inc.c"
};

u64 object_po_composerTex_0066E0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_0066E0.rgba16.inc.c"
};

u64 object_po_composerTex_0068E0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_0068E0.rgba16.inc.c"
};

u64 object_po_composerTex_006AE0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_006AE0.rgba16.inc.c"
};

u64 object_po_composerTex_006CE0[] = {
#include "assets/objects/object_po_composer/object_po_composerTex_006CE0.rgba16.inc.c"
};

StandardLimb gPoeComposerSkelLimbsLimb_006EE0 = { 
    { 0, 3100, 400 }, 0x01, LIMB_DONE,
    gPoeComposerSkelLimbsLimb_006EE0DL_002970
};

StandardLimb gPoeComposerSkelLimbsLimb_006EEC = { 
    { -547, -32, 1400 }, 0x02, 0x05,
    gPoeComposerSkelLimbsLimb_006EECDL_003090
};

StandardLimb gPoeComposerSkelLimbsLimb_006EF8 = { 
    { 1300, 0, 0 }, 0x03, LIMB_DONE,
    gPoeComposerSkelLimbsLimb_006EF8DL_003348
};

StandardLimb gPoeComposerSkelLimbsLimb_006F04 = { 
    { 1200, 0, 0 }, 0x04, LIMB_DONE,
    gPoeComposerSkelLimbsLimb_006F04DL_0033F8
};

StandardLimb gPoeComposerSkelLimbsLimb_006F10 = { 
    { 1300, 90, -258 }, LIMB_DONE, LIMB_DONE,
    gPoeComposerSkelLimbsLimb_006F10DL_004410
};

StandardLimb gPoeComposerSkelLimbsLimb_006F1C = { 
    { -547, -32, -1400 }, 0x06, 0x09,
    gPoeComposerSkelLimbsLimb_006F1CDL_002C60
};

StandardLimb gPoeComposerSkelLimbsLimb_006F28 = { 
    { 1300, 0, 0 }, 0x07, LIMB_DONE,
    gPoeComposerSkelLimbsLimb_006F28DL_002F28
};

StandardLimb gPoeComposerSkelLimbsLimb_006F34 = { 
    { 1200, 0, 0 }, 0x08, LIMB_DONE,
    gPoeComposerSkelLimbsLimb_006F34DL_002FD8
};

StandardLimb gPoeComposerSkelLimbsLimb_006F40 = { 
    { 600, 240, 8 }, LIMB_DONE, LIMB_DONE,
    gPoeComposerLanternBottomDL
};

StandardLimb gPoeComposerSkelLimbsLimb_006F4C = { 
    { -867, -105, 0 }, LIMB_DONE, 0x0A,
    gPoeComposerSkelLimbsLimb_006F4CDL_004100
};

StandardLimb gPoeComposerSkelLimbsLimb_006F58 = { 
    { 906, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gPoeComposerSkelLimbsLimb_006F58DL_002B70
};

void* gPoeComposerSkelLimbs[] = {
    &gPoeComposerSkelLimbsLimb_006EE0,
    &gPoeComposerSkelLimbsLimb_006EEC,
    &gPoeComposerSkelLimbsLimb_006EF8,
    &gPoeComposerSkelLimbsLimb_006F04,
    &gPoeComposerSkelLimbsLimb_006F10,
    &gPoeComposerSkelLimbsLimb_006F1C,
    &gPoeComposerSkelLimbsLimb_006F28,
    &gPoeComposerSkelLimbsLimb_006F34,
    &gPoeComposerSkelLimbsLimb_006F40,
    &gPoeComposerSkelLimbsLimb_006F4C,
    &gPoeComposerSkelLimbsLimb_006F58,
};

FlexSkeletonHeader gPoeComposerSkel = { 
    { gPoeComposerSkelLimbs, ARRAY_COUNT(gPoeComposerSkelLimbs) }, 11
};

