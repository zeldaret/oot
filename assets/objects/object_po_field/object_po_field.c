#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_po_field.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

s16 sPoeFieldAttackAnimFrameData[] = {
    0x0000, 0x1130, 0x13EA, 0xE38A, 0x16EE, 0x96CB, 0x0000, 0x002F, 0x0096, 0x00FD, 0x012C, 0x00FD, 0x0096, 0x002F, 
    0x0BC0, 0x0B57, 0x0A95, 0x09FD, 0x09C5, 0x09FD, 0x0A95, 0x0B57, 0x5CB5, 0x5DDF, 0x6071, 0x6304, 0x642F, 0x6304, 
    0x6071, 0x5DDF, 0x3BD8, 0x3B58, 0x3A55, 0x396A, 0x3906, 0x396A, 0x3A55, 0x3B58, 0xF553, 0xEF5B, 0xE43C, 0xDB79, 
    0xD820, 0xDB79, 0xE43C, 0xEF5B, 0xA44A, 0xA281, 0x9DC1, 0x9846, 0x95A7, 0x9846, 0x9DC1, 0xA281, 0xDAD7, 0xDF05, 
    0xE6B1, 0xECB8, 0xEF15, 0xECB8, 0xE6B1, 0xDF05, 0xD0B4, 0xD2D8, 0xD5CA, 0xD708, 0xD716, 0xD708, 0xD5CA, 0xD2D8, 
    0x6872, 0x616F, 0x5A74, 0x5702, 0x55FD, 0x5702, 0x5A74, 0x616F, 0x095C, 0x0D08, 0x1148, 0x1304, 0x1329, 0x1304, 
    0x1148, 0x0D08, 0x003C, 0x10C2, 0x22A7, 0x2D08, 0x30A6, 0x2D08, 0x22A7, 0x10C2, 0xEB82, 0x0B82, 0x2B82, 0x4B82, 
    0x6B82, 0x8B82, 0xAB82, 0xCB82, 0x033E, 0x0813, 0x0E7B, 0x1004, 0x0FDB, 0x0F6F, 0x0D8C, 0x079B, 0x02DA, 0x0B34, 
    0x1634, 0x1891, 0x17FE, 0x1711, 0x13CD, 0x0A01, 0x018D, 0x0194, 0x0198, 0x0194, 0x018D, 0x0186, 0x0182, 0x0186, 
    0xF9DF, 0xF4F9, 0xF2BF, 0xF4F9, 0xF9DF, 0xFEC5, 0x00FF, 0xFEC5, 0xF9B1, 0xF981, 0xF96B, 0xF981, 0xF9B1, 0xF9E1, 
    0xF9F7, 0xF9E1, 
};

JointIndex sPoeFieldAttackAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0006 },
    { 0x000E, 0x0016, 0x001E },
    { 0x0026, 0x002E, 0x0036 },
    { 0x0002, 0x0003, 0x0004 },
    { 0x003E, 0x0046, 0x004E },
    { 0x0005, 0x0000, 0x0056 },
    { 0x005E, 0x0066, 0x006E },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0076, 0x007E, 0x0086 },
};

AnimationHeader gPoeFieldAttackAnim = { 
    { 8 }, sPoeFieldAttackAnimFrameData,
    sPoeFieldAttackAnimJointIndices, 6
};

u8 object_po_field_possiblePadding_000168[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sPoeFieldDamagedAnimFrameData[] = {
    0x0000, 0x1130, 0xC000, 0x0000, 0x01F4, 0xFE70, 0x0190, 0xFED4, 0x012C, 0xFF38, 0x00C8, 0xFF38, 0x0064, 0xFF9C, 
    0x0064, 0xFFCE, 0xFFD0, 0xFFED, 0x0000, 0x12E4, 0x1F62, 0x0E69, 0xF89B, 0xEDD0, 0xEDD0, 0xEDD0, 0xEDD0, 0xEDD0, 
    0xEDD0, 0xEDD0, 0xEDD0, 0xEDD0, 0xEDD0, 0xEDD0, 0xEDD0, 0x40F2, 0x3F93, 0x4079, 0xE5EB, 0xE953, 0xE953, 0xE953, 
    0xE953, 0xE953, 0xE953, 0xE953, 0xE953, 0xE953, 0xE953, 0xE953, 0xE953, 0xECA0, 0xF714, 0xDBEC, 0x9FB2, 0x9107, 
    0x9107, 0x9107, 0x9107, 0x9107, 0x9107, 0x9107, 0x9107, 0x9107, 0x9107, 0x9107, 0x9107, 0xEBF8, 0xDE70, 0xC9DB, 
    0x13C0, 0x0B31, 0x0B31, 0x0B31, 0x0B31, 0x0B31, 0x0B31, 0x0B31, 0x0B31, 0x0B31, 0x0B31, 0x0B31, 0x0B31, 0x0000, 
    0x003B, 0x13A3, 0x29EA, 0x348F, 0x348F, 0x348F, 0x348F, 0x348F, 0x348F, 0x348F, 0x348F, 0x348F, 0x348F, 0x348F, 
    0x348F, 0x0000, 0x0892, 0x0077, 0xF592, 0xF01C, 0xF01C, 0xF01C, 0xF01C, 0xF01C, 0xF01C, 0xF01C, 0xF01C, 0xF01C, 
    0xF01C, 0xF01C, 0xF01C, 0x330F, 0xE027, 0xE22E, 0xF3B6, 0xFE80, 0xFE80, 0xFE80, 0xFE80, 0xFE80, 0xFE80, 0xFE80, 
    0xFE80, 0xFE80, 0xFE80, 0xFE80, 0xFE80, 0x35A4, 0x29AA, 0x03C0, 0x0041, 0x0071, 0x0071, 0x0071, 0x0071, 0x0071, 
    0x0071, 0x0071, 0x0071, 0x0071, 0x0071, 0x0071, 0x0071, 0x28C2, 0x2FBE, 0x27E3, 0x13F4, 0x0B9B, 0x0B9B, 0x0B9B, 
    0x0B9B, 0x0B9B, 0x0B9B, 0x0B9B, 0x0B9B, 0x0B9B, 0x0B9B, 0x0B9B, 0x0B9B, 0xE0E8, 0xCD75, 0x9B6E, 0x92FD, 0x9414, 
    0x9414, 0x9414, 0x9414, 0x9414, 0x9414, 0x9414, 0x9414, 0x9414, 0x9414, 0x9414, 0x9414, 0xE040, 0xEF7D, 0x1102, 
    0x3287, 0x41C4, 0x41C4, 0x41C4, 0x41C4, 0x41C4, 0x41C4, 0x41C4, 0x41C4, 0x41C4, 0x41C4, 0x41C4, 0x41C4, 0xAAF1, 
    0xA2A3, 0x905C, 0x7E15, 0x75C6, 0x75C6, 0x75C6, 0x75C6, 0x75C6, 0x75C6, 0x75C6, 0x75C6, 0x75C6, 0x75C6, 0x75C6, 
    0x75C6, 0x074C, 0xF226, 0xC39E, 0x9517, 0x7FF0, 0x7FF0, 0x7FF0, 0x7FF0, 0x7FF0, 0x7FF0, 0x7FF0, 0x7FF0, 0x7FF0, 
    0x7FF0, 0x7FF0, 0x7FF0, 0x1DA4, 0x18A9, 0x0DB4, 0x02BF, 0xFDC4, 0xFDC4, 0xFDC4, 0xFDC4, 0xFDC4, 0xFDC4, 0xFDC4, 
    0xFDC4, 0xFDC4, 0xFDC4, 0xFDC4, 0xFDC4, 0x13EC, 0x11A4, 0x0CA0, 0x079C, 0x0554, 0x0554, 0x0554, 0x0554, 0x0554, 
    0x0554, 0x0554, 0x0554, 0x0554, 0x0554, 0x0554, 0x0554, 0x0510, 0x00A7, 0xF6F4, 0xED40, 0xE8D8, 0xE8D8, 0xE8D8, 
    0xE8D8, 0xE8D8, 0xE8D8, 0xE8D8, 0xE8D8, 0xE8D8, 0xE8D8, 0xE8D8, 0xE8D8, 0xF9E2, 0xFBB9, 0xFE1B, 0xFEDE, 0xFF2D, 
    0xFF56, 0xFF87, 0xFFB6, 0xFFE3, 0x000D, 0x0033, 0x0054, 0x006F, 0x0084, 0x0091, 0x0095, 0x02FB, 0x03EC, 0x03E4, 
    0x0036, 0xFB76, 0xF93B, 0xF9CA, 0xFAED, 0xFC7C, 0xFE52, 0x0048, 0x0239, 0x03FD, 0x0570, 0x066B, 0x06C7, 0x0D03, 
    0x1D09, 0x2538, 0x033D, 0xD4E9, 0xBEA8, 0xC3C8, 0xCE60, 0xDD06, 0xEE4F, 0x00D1, 0x1322, 0x23D7, 0x3187, 0x3AC7, 
    0x3E2D, 0xF197, 0xDFA0, 0xEA05, 0xF943, 0x0113, 0x0113, 0x0113, 0x0113, 0x0113, 0x0113, 0x0113, 0x0113, 0x0113, 
    0x0113, 0x0113, 0x0113, 0x0000, 
};

JointIndex sPoeFieldDamagedAnimJointIndices[] = {
    { 0x0003, 0x0001, 0x0000 },
    { 0x0002, 0x0013, 0x0002 },
    { 0x0023, 0x0033, 0x0043 },
    { 0x0053, 0x0063, 0x0073 },
    { 0x0083, 0x0093, 0x00A3 },
    { 0x00B3, 0x00C3, 0x00D3 },
    { 0x00E3, 0x00F3, 0x0103 },
    { 0x0113, 0x0123, 0x0133 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0143 },
};

AnimationHeader gPoeFieldDamagedAnim = { 
    { 16 }, sPoeFieldDamagedAnimFrameData,
    sPoeFieldDamagedAnimJointIndices, 3
};

u8 object_po_field_possiblePadding_000464[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sPoeFieldFleeAnimFrameData[] = {
    0x0000, 0x1130, 0xC000, 0x96CB, 0x0D0A, 0x0000, 0x0052, 0x008A, 0x002E, 0xFFA2, 0xFF1C, 0xFED4, 0xFF64, 0x1130, 
    0x1157, 0x11AD, 0x1203, 0x122A, 0x120D, 0x11C9, 0x1177, 0x0000, 0x0027, 0x007D, 0x00D3, 0x00FA, 0x00DD, 0x0099, 
    0x0047, 0xFA09, 0xF946, 0xF798, 0xF5E9, 0xF526, 0xF5E9, 0xF798, 0xF946, 0xFE8C, 0xFDF1, 0xFECE, 0xFDEA, 0xFE8C, 
    0xFE04, 0xFECE, 0xFDF1, 0x8D79, 0x96D3, 0xA0A7, 0x98D5, 0x8D79, 0x9501, 0xA0A7, 0x96D3, 0x439B, 0x4394, 0x3F8B, 
    0x4326, 0x439B, 0x43D4, 0x3F8B, 0x4394, 0xEA58, 0xE035, 0xD611, 0xE035, 0xEA58, 0xE035, 0xD611, 0xE035, 0xE617, 
    0xE8E2, 0xEBAE, 0xE8E2, 0xE617, 0xE8E2, 0xEBAE, 0xE8E2, 0x45CE, 0x4CAB, 0x5389, 0x4CAB, 0x45CE, 0x4CAB, 0x5389, 
    0x4CAB, 0x21AF, 0x1D3D, 0x1811, 0x159F, 0x1ACE, 0x266A, 0x2DED, 0x26BC, 0x20EE, 0x2373, 0x27C9, 0x2B0B, 0x2B3C, 
    0x273C, 0x2205, 0x21FD, 0xA4AC, 0xA3E6, 0xA287, 0x9F6C, 0xA213, 0xA904, 0xAC0F, 0xA638, 0x2C79, 0x2ACD, 0x2CE6, 
    0x395A, 0x42D8, 0x4532, 0x4143, 0x37C9, 0x42CF, 0x47E3, 0x4BF7, 0x47F0, 0x3CD9, 0x32FA, 0x314D, 0x3A1E, 0x1694, 
    0x19A4, 0x1E17, 0x2087, 0x21A5, 0x20D4, 0x1E91, 0x1957, 0x1590, 0x1511, 0x15CC, 0x1AF9, 0x1F5C, 0x1D4E, 0x1945, 
    0x160C, 0x009C, 0x0A8E, 0x0F13, 0x0A8E, 0x009C, 0xF6AB, 0xF226, 0xF6AB, 0x0182, 0x017F, 0x017C, 0x017A, 0x0179, 
    0x017A, 0x017C, 0x017F, 0x002F, 0x0480, 0x071C, 0x04A5, 0x0060, 0xFBE7, 0xF8E4, 0xFB77, 0xF842, 0xFACD, 0xFD9C, 
    0xFFE2, 0x00D2, 0xFFE2, 0xFD9C, 0xFACD, 0x0000, 
};

JointIndex sPoeFieldFleeAnimJointIndices[] = {
    { 0x0005, 0x000D, 0x0015 },
    { 0x0002, 0x001D, 0x0002 },
    { 0x0025, 0x002D, 0x0035 },
    { 0x003D, 0x0045, 0x004D },
    { 0x0055, 0x005D, 0x0065 },
    { 0x0003, 0x0000, 0x006D },
    { 0x0075, 0x007D, 0x0085 },
    { 0x008D, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0095, 0x009D, 0x00A5 },
};

AnimationHeader gPoeFieldFleeAnim = { 
    { 8 }, sPoeFieldFleeAnimFrameData,
    sPoeFieldFleeAnimJointIndices, 5
};

u8 object_po_field_possiblePadding_000618[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sPoeFieldFloatAnimFrameData[] = {
    0x0000, 0x1130, 0xC000, 0x96CB, 0x0000, 0x005E, 0x00C9, 0x011A, 0x012C, 0x00FA, 0x00A4, 0x0038, 0xFFC5, 0xFF5A, 
    0xFF05, 0xFED4, 0xFED8, 0xFF0A, 0xFF59, 0xFFB1, 0x1130, 0x113B, 0x1157, 0x117F, 0x11AD, 0x11DB, 0x1203, 0x121F, 
    0x122A, 0x121F, 0x1203, 0x11DB, 0x11AD, 0x117F, 0x1157, 0x113B, 0x0000, 0x000B, 0x0027, 0x004F, 0x007D, 0x00AB, 
    0x00D3, 0x00EF, 0x00FA, 0x00EF, 0x00D3, 0x00AB, 0x007D, 0x004F, 0x0027, 0x000B, 0x0300, 0x0329, 0x0393, 0x0429, 
    0x04D6, 0x0582, 0x0618, 0x0683, 0x06AB, 0x0683, 0x0618, 0x0582, 0x04D6, 0x0429, 0x0393, 0x0329, 0x1626, 0x1D23, 
    0x2A07, 0x32A0, 0x3515, 0x3251, 0x2959, 0x1469, 0x032C, 0x0BE9, 0x1D48, 0x291A, 0x2D6C, 0x2AA9, 0x2359, 0x1AA2, 
    0xCE90, 0xCF04, 0xD17B, 0xD54B, 0xD6E5, 0xD378, 0xCD3C, 0xC8AE, 0xC871, 0xC9B0, 0xCCA1, 0xD0AC, 0xD32F, 0xD2C5, 
    0xD0EF, 0xCF3A, 0x1BA9, 0x154C, 0x0989, 0x01B3, 0xFF2C, 0x0051, 0x06A0, 0x1941, 0x29D9, 0x236E, 0x1671, 0x0F23, 
    0x0D52, 0x0F17, 0x1347, 0x18B4, 0x016A, 0x0071, 0x0000, 0x0071, 0x016A, 0x0263, 0x02D4, 0x0263, 0x016A, 0x0071, 
    0x0000, 0x0071, 0x016A, 0x0263, 0x02D4, 0x0263, 0xFD00, 0xFC8B, 0xFC55, 0xFC8B, 0xFD00, 0xFD75, 0xFDAA, 0xFD75, 
    0xFD00, 0xFC8B, 0xFC55, 0xFC8B, 0xFD00, 0xFD75, 0xFDAA, 0xFD75, 0x0975, 0x15D0, 0x1B6D, 0x15D0, 0x0975, 0xFD1B, 
    0xF77E, 0xFD1B, 0x0975, 0x15D0, 0x1B6D, 0x15D0, 0x0975, 0xFD1B, 0xF77E, 0xFD1B, 0x77CC, 0x7A89, 0x7E54, 0x823D, 
    0x85A6, 0x87EF, 0x88B5, 0x87CD, 0x85A2, 0x82CE, 0x7FE0, 0x7D53, 0x7B1C, 0x7919, 0x779A, 0x7704, 0x1635, 0x1770, 
    0x190D, 0x1A64, 0x1AA7, 0x1979, 0x1756, 0x14A8, 0x11DF, 0x0F73, 0x0DD4, 0x0D63, 0x0E96, 0x10DB, 0x132B, 0x1504, 
    0xDA24, 0xDAAE, 0xDBC3, 0xDD4A, 0xDF64, 0xE1B1, 0xE369, 0xE429, 0xE3F6, 0xE30D, 0xE1C4, 0xE04D, 0xDEBE, 0xDD22, 
    0xDBA3, 0xDA86, 0x39E9, 0x38DB, 0x3874, 0x392D, 0x3C25, 0x4163, 0x4729, 0x4C24, 0x4F40, 0x4FFF, 0x4EBF, 0x4C02, 
    0x4849, 0x4413, 0x3FDB, 0x3C35, 0x0007, 0xFD1F, 0xF902, 0xF746, 0xF656, 0xF5E6, 0xF5B0, 0xF526, 0xF4D8, 0xF522, 
    0xF613, 0xF7C8, 0xF9E6, 0xFC19, 0xFE11, 0xFF7C, 0xFB0B, 0xF8B1, 0xF527, 0xF2A2, 0xF188, 0xF372, 0xF6F9, 0xFB97, 
    0x0047, 0x03F1, 0x064E, 0x0679, 0x053B, 0x02D6, 0xFFF7, 0xFCDE, 0x1287, 0x12F8, 0x13F8, 0x1558, 0x1705, 0x18FB, 
    0x1AEA, 0x1C9C, 0x1DBD, 0x1DBF, 0x1D1D, 0x1C38, 0x1AD0, 0x1889, 0x1619, 0x13CB, 0x0958, 0x0AA2, 0x0B1F, 0x0AA2, 
    0x0958, 0x0785, 0x056F, 0x0358, 0x0185, 0x003B, 0xFFBE, 0x003B, 0x0185, 0x0358, 0x056F, 0x0785, 0x07CA, 0x08DC, 
    0x0943, 0x08DC, 0x07CA, 0x0648, 0x048E, 0x02D3, 0x0151, 0x0040, 0xFFD8, 0x0040, 0x0151, 0x02D3, 0x048E, 0x0648, 
    0x0182, 0x0181, 0x0180, 0x017E, 0x017D, 0x017B, 0x017A, 0x0179, 0x0179, 0x0179, 0x017A, 0x017B, 0x017D, 0x017E, 
    0x0180, 0x0181, 0x002F, 0x0243, 0x0486, 0x0659, 0x071C, 0x0668, 0x04A5, 0x026F, 0x0060, 0xFE53, 0xFC0F, 0xFA14, 
    0xF8E4, 0xF957, 0xFB55, 0xFDED, 0xF9B4, 0xF9F1, 0xFADA, 0xFC37, 0xFDD0, 0xFF70, 0x00DD, 0x01E0, 0x0243, 0x01E0, 
    0x00DD, 0xFF70, 0xFDD0, 0xFC37, 0xFADA, 0xF9F1, 
};

JointIndex sPoeFieldFloatAnimJointIndices[] = {
    { 0x0004, 0x0014, 0x0024 },
    { 0x0002, 0x0034, 0x0002 },
    { 0x0044, 0x0054, 0x0064 },
    { 0x0074, 0x0084, 0x0094 },
    { 0x00A4, 0x00B4, 0x00C4 },
    { 0x0003, 0x0000, 0x00D4 },
    { 0x00E4, 0x00F4, 0x0104 },
    { 0x0114, 0x0000, 0x0124 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0134, 0x0144, 0x0154 },
};

AnimationHeader gPoeFieldFloatAnim = { 
    { 16 }, sPoeFieldFloatAnimFrameData,
    sPoeFieldFloatAnimJointIndices, 4
};

u8 object_po_field_possiblePadding_000934[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sPoeFieldAppearAnimFrameData[] = {
    0x0514, 0x12C0, 0xFC18, 0x0000, 0x0514, 0x0514, 0x0514, 0x0514, 0x0514, 0x0514, 0x0514, 0x0514, 0x0514, 0x0514, 
    0x0514, 0x0514, 0x04CF, 0x0484, 0x0433, 0x03DD, 0x0385, 0x032A, 0x02CF, 0x0274, 0x021B, 0x01C5, 0x0173, 0x0125, 
    0x00DF, 0x00A0, 0x0069, 0x003D, 0x001C, 0x0007, 0x12C0, 0x12C0, 0x12C0, 0x12C0, 0x12C0, 0x12C0, 0x12C0, 0x12C0, 
    0x12C0, 0x12C0, 0x12C0, 0x12C0, 0x12AB, 0x1294, 0x127B, 0x1260, 0x1245, 0x1229, 0x120D, 0x11F1, 0x11D6, 0x11BB, 
    0x11A2, 0x118A, 0x1175, 0x1161, 0x1150, 0x1143, 0x1139, 0x1132, 0xFC18, 0xFC18, 0xFC18, 0xFC18, 0xFC18, 0xFC18, 
    0xFC18, 0xFC18, 0xFC18, 0xFC18, 0xFC18, 0xFC18, 0xFC4D, 0xFC87, 0xFCC5, 0xFD07, 0xFD4B, 0xFD91, 0xFDD7, 0xFE1D, 
    0xFE61, 0xFEA4, 0xFEE3, 0xFF1E, 0xFF55, 0xFF85, 0xFFAF, 0xFFD1, 0xFFEB, 0xFFFA, 0xC000, 0xC000, 0xC000, 0xC000, 
    0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC624, 0xCC00, 0xD089, 0xD337, 0xD38A, 0xD1AE, 
    0xCE90, 0xCAB0, 0xC68E, 0xC2AC, 0xBF8F, 0xBDB8, 0xBD29, 0xBD59, 0xBDF1, 0xBEAC, 0xBF57, 0xBFD1, 0x3314, 0x3314, 
    0x3314, 0x3314, 0x3314, 0x3314, 0x3314, 0x3314, 0x3314, 0x3314, 0x3314, 0x3314, 0x2F6C, 0x2B10, 0x2695, 0x2297, 
    0x1FA7, 0x1DC9, 0x1C7D, 0x1B84, 0x1AA6, 0x19B2, 0x1880, 0x16EC, 0x14B7, 0x11EF, 0x0EE9, 0x0BF7, 0x0971, 0x07AD, 
    0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC3C8, 0xC6E4, 
    0xC8F3, 0xC9F1, 0xC9C2, 0xC87C, 0xC68E, 0xC43F, 0xC1D4, 0xBF99, 0xBDDB, 0xBCE2, 0xBCBC, 0xBD1B, 0xBDC5, 0xBE89, 
    0xBF41, 0xBFCA, 0x6979, 0x6979, 0x6979, 0x6979, 0x6979, 0x6979, 0x6979, 0x6979, 0x6979, 0x6979, 0x6979, 0x6948, 
    0x68B6, 0x67C7, 0x6678, 0x64C6, 0x62AA, 0x6023, 0x5D32, 0x59E4, 0x5653, 0x52A6, 0x4F0B, 0x4BB1, 0x48BB, 0x4640, 
    0x4446, 0x42CA, 0x41C2, 0x4127, 0xF982, 0xF982, 0xF982, 0xF982, 0xF982, 0xF982, 0xF982, 0xF982, 0xF982, 0xF982, 
    0xF982, 0xF92D, 0xF83E, 0xF6CE, 0xF4F9, 0xF2E2, 0xF0AC, 0xEE7C, 0xEC77, 0xEAC2, 0xE977, 0xE8A8, 0xE858, 0xE87B, 
    0xE8F9, 0xE9B3, 0xEA87, 0xEB56, 0xEC03, 0xEC77, 0xB0E4, 0xB0E4, 0xB0E4, 0xB0E4, 0xB0E4, 0xB0E4, 0xB0E4, 0xB0E4, 
    0xB0E4, 0xB0E4, 0xB0E4, 0xB120, 0xB1D1, 0xB2F7, 0xB499, 0xB6BE, 0xB972, 0xBCBA, 0xC096, 0xC4FA, 0xC9CB, 0xCEE0, 
    0xD403, 0xD8FC, 0xDD9C, 0xE1BB, 0xE540, 0xE817, 0xEA33, 0xEB84, 0x0C34, 0x0C34, 0x0C34, 0x0C34, 0x0C34, 0x0C34, 
    0x0C34, 0x0C34, 0x0C34, 0x0C34, 0x0C34, 0x090A, 0x011B, 0xF6BF, 0xEC4C, 0xE41A, 0xE080, 0xE1E2, 0xE65C, 0xECD9, 
    0xF447, 0xFB8F, 0x019F, 0x0562, 0x06BD, 0x069C, 0x0578, 0x03C5, 0x01FC, 0x0093, 0x0E42, 0x0E42, 0x0E42, 0x0E42, 
    0x0E42, 0x0E42, 0x0E42, 0x0E42, 0x0E42, 0x0E42, 0x0E42, 0x0F64, 0x123F, 0x1601, 0x19DA, 0x1CF7, 0x1E88, 0x1EA7, 
    0x1E11, 0x1CE6, 0x1B47, 0x1957, 0x1735, 0x1504, 0x1240, 0x0EA0, 0x0A9C, 0x06AB, 0x0347, 0x00E6, 0x6813, 0x6813, 
    0x6813, 0x6813, 0x6813, 0x6813, 0x6813, 0x6813, 0x6813, 0x6813, 0x6813, 0x6036, 0x4C6E, 0x326F, 0x17F0, 0x02A7, 
    0xF849, 0xF998, 0x01ED, 0x0EE2, 0x1E12, 0x2D16, 0x3988, 0x4103, 0x4353, 0x4288, 0x3FA2, 0x3BA2, 0x378A, 0x3458, 
    0x350E, 0x350E, 0x350E, 0x350E, 0x350E, 0x350E, 0x350E, 0x350E, 0x350E, 0x350E, 0x350E, 0x4A0E, 0x49A6, 0x4961, 
    0x4950, 0x4985, 0x4A15, 0x4B15, 0x4C95, 0x4E97, 0x50FF, 0x5393, 0x5602, 0x5805, 0x5977, 0x5A58, 0x5AC5, 0x5AE4, 
    0x5ADB, 0x5AC9, 0x0F8F, 0x0F8F, 0x0F8F, 0x0F8F, 0x0F8F, 0x0F8F, 0x0F8F, 0x0F8F, 0x0F8F, 0x0F8F, 0x0F8F, 0x0FA6, 
    0x12BA, 0x1613, 0x1995, 0x1D20, 0x2091, 0x23C3, 0x2694, 0x28E5, 0x2AA0, 0x2BBB, 0x2C40, 0x2C45, 0x2BE9, 0x2B50, 
    0x2A9B, 0x29E8, 0x294F, 0x28E9, 0xA8A3, 0xA8A3, 0xA8A3, 0xA8A3, 0xA8A3, 0xA8A3, 0xA8A3, 0xA8A3, 0xA8A3, 0xA8A3, 
    0xA8A3, 0xB186, 0xB437, 0xB732, 0xBA7A, 0xBE1B, 0xC224, 0xC6A7, 0xCBB1, 0xD13B, 0xD723, 0xDD1F, 0xE2D3, 0xE7E7, 
    0xEC27, 0xEF86, 0xF212, 0xF3E8, 0xF524, 0xF5DB, 0xE040, 0xE040, 0xE040, 0xE040, 0xE040, 0xE040, 0xE040, 0xE040, 
    0xE040, 0xE040, 0xE040, 0xE040, 0xDF29, 0xDDEE, 0xDDAF, 0xDFF9, 0xE33F, 0xE3F9, 0xE0D2, 0xDBCA, 0xD651, 0xD1DC, 
    0xCFDD, 0xD059, 0xD21A, 0xD4B6, 0xD7C5, 0xDADD, 0xDD95, 0xDF84, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xF7C7, 0xEE08, 0xE479, 0xDB73, 0xD29F, 0xCAB2, 0xC31F, 0xBB5D, 
    0xB430, 0xAE59, 0xAA9A, 0xA8BF, 0xA7E9, 0xA7D9, 0xA855, 0xA91E, 0xA9F9, 0xAAA9, 0x2588, 0x2588, 0x2588, 0x2588, 
    0x2588, 0x2588, 0x2588, 0x2588, 0x2588, 0x2588, 0x2588, 0x2588, 0x25BC, 0x25DD, 0x2434, 0x1EA4, 0x174A, 0x12C5, 
    0x126D, 0x13D0, 0x15DC, 0x1784, 0x17B7, 0x1655, 0x1428, 0x117C, 0x0EA0, 0x0BDF, 0x0988, 0x07E8, 0xE3B7, 0xE3D9, 
    0xE432, 0xE4A8, 0xE527, 0xE596, 0xE5DF, 0xE5EA, 0xE5A2, 0xE4ED, 0xE3B7, 0xD33F, 0xD7E1, 0xE068, 0xE7EB, 0xECC1, 
    0xF094, 0xF372, 0xF57C, 0xF6FB, 0xF83B, 0xF989, 0xFB30, 0xFD68, 0x000F, 0x02EB, 0x05C3, 0x085E, 0x0A81, 0x0BF4, 
    0xFADD, 0xFAF0, 0xFB21, 0xFB63, 0xFBAA, 0xFBE8, 0xFC10, 0xFC17, 0xFBEE, 0xFB8A, 0xFADD, 0xF1B1, 0xF313, 0xF671, 
    0xF9EA, 0xFCF5, 0x001A, 0x0314, 0x0612, 0x093B, 0x0C36, 0x0EAD, 0x1049, 0x1122, 0x1197, 0x11BF, 0x11AF, 0x117D, 
    0x113F, 0x1109, 0xD6EE, 0xD6D7, 0xD69C, 0xD64D, 0xD5F9, 0xD5B0, 0xD57F, 0xD578, 0xD5A8, 0xD620, 0xD6EE, 0xE1E0, 
    0xEAD0, 0xF350, 0xFADF, 0x0151, 0x06D2, 0x0B66, 0x0F5D, 0x1302, 0x1650, 0x1942, 0x1BD4, 0x1E45, 0x20C3, 0x2330, 
    0x2570, 0x2763, 0x28EC, 0x29EE, 0x0000, 0xF4A3, 0x039B, 0x0F94, 0x0074, 0xF16F, 0xFE71, 0x0D34, 0x0B29, 0x043D, 
    0x0000, 0xFFB1, 0xFF83, 0xFF74, 0xFF80, 0xFFA4, 0xFFDC, 0x0027, 0x007F, 0x00E3, 0x014F, 0x01BF, 0x0232, 0x02A2, 
    0x030E, 0x0372, 0x03CC, 0x0416, 0x0450, 0x0474, 0x0000, 0xFFF7, 0xFFF2, 0xFFEE, 0xFFE9, 0xFFE6, 0xFFE2, 0xFFE3, 
    0xFFED, 0xFFF9, 0x0000, 0x0001, 0x0002, 0x0003, 0x0003, 0x0004, 0x0004, 0x0004, 0x0004, 0x0003, 0x0003, 0x0003, 
    0x0002, 0x0002, 0x0002, 0x0001, 0x0001, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFDD, 0xFFC8, 0xFFB6, 0xFFA3, 0xFF94, 
    0xFF87, 0xFF8A, 0xFFBC, 0xFFFA, 0x0000, 0xFFCF, 0xFF97, 0xFF58, 0xFF15, 0xFECD, 0xFE83, 0xFE36, 0xFDE8, 0xFD9B, 
    0xFD4F, 0xFD05, 0xFCBE, 0xFC7C, 0xFC3F, 0xFC09, 0xFBDA, 0xFBB3, 0xFB97, 0xFB85, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFE5F, 0xFC59, 0xFA5D, 0xF8DB, 0xF842, 0xF940, 
    0xFB8C, 0xFE23, 0x0000, 0x0107, 0x01CC, 0x0254, 0x02A1, 0x02BA, 0x0272, 0x01C5, 0x00F6, 0x0049, 0xFC98, 0xFC98, 
    0xFC98, 0xFC98, 0xFC98, 0xFC98, 0xFC98, 0xFC98, 0xFC98, 0xFC98, 0xFC98, 0xFC98, 0xFDE7, 0xFF4C, 0xFE21, 0xF90B, 
    0xF1BF, 0xEA2C, 0xE441, 0xE1EE, 0xE2B9, 0xE4B4, 0xE799, 0xEB25, 0xEF15, 0xF324, 0xF70E, 0xFA8F, 0xFD64, 0xFF49, 
    
};

JointIndex sPoeFieldAppearAnimJointIndices[] = {
    { 0x0004, 0x0022, 0x0040 },
    { 0x005E, 0x007C, 0x009A },
    { 0x00B8, 0x00D6, 0x00F4 },
    { 0x0112, 0x0130, 0x014E },
    { 0x016C, 0x018A, 0x01A8 },
    { 0x01C6, 0x01E4, 0x0202 },
    { 0x0220, 0x023E, 0x025C },
    { 0x027A, 0x0298, 0x02B6 },
    { 0x0003, 0x0003, 0x0003 },
    { 0x0003, 0x02D4, 0x02F2 },
};

AnimationHeader gPoeFieldAppearAnim = { 
    { 30 }, sPoeFieldAppearAnimFrameData,
    sPoeFieldAppearAnimJointIndices, 4
};

u8 object_po_field_possiblePadding_000FAC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sPoeFieldDisappearAnimFrameData[] = {
    0x0000, 0x1130, 0x1130, 0x113E, 0x1164, 0x119C, 0x11E0, 0x122A, 0x1274, 0x12B8, 0x12F0, 0x1316, 0x1324, 0x1316, 
    0x12F0, 0x12B8, 0x1274, 0x122A, 0x11E0, 0x119C, 0x1164, 0x113E, 0xC000, 0xC039, 0xC073, 0xC0AC, 0xC0DD, 0xC0FD, 
    0xC101, 0xC0E5, 0xC0AD, 0xC05D, 0xC000, 0xBFA3, 0xBF53, 0xBF1B, 0xBEFF, 0xBF03, 0xBF23, 0xBF54, 0xBF8D, 0xBFC7, 
    0x0703, 0x0723, 0x0779, 0x07F8, 0x0892, 0x093C, 0x09E8, 0x0A8A, 0x0B10, 0x0B6D, 0x0B8F, 0x0B6D, 0x0B10, 0x0A8A, 
    0x09E8, 0x093C, 0x0892, 0x07F8, 0x0779, 0x0723, 0xC000, 0xC148, 0xC277, 0xC372, 0xC41E, 0xC461, 0xC426, 0xC37F, 
    0xC284, 0xC150, 0xC000, 0xBEB0, 0xBD7C, 0xBC81, 0xBBDA, 0xBB9F, 0xBBE2, 0xBC8E, 0xBD89, 0xBEB8, 0x4245, 0x41B9, 
    0x4039, 0x3DF9, 0x3B33, 0x382C, 0x352F, 0x3283, 0x3062, 0x2EFD, 0x2E7C, 0x2EFD, 0x3062, 0x3283, 0x352F, 0x382C, 
    0x3B33, 0x3DF9, 0x4039, 0x41B9, 0xE62D, 0xE616, 0xE5E4, 0xE5B8, 0xE5B3, 0xE5EC, 0xE665, 0xE70D, 0xE7BD, 0xE848, 
    0xE87F, 0xE848, 0xE7BD, 0xE70D, 0xE665, 0xE5EC, 0xE5B3, 0xE5B8, 0xE5E4, 0xE616, 0xF1CC, 0xF2A4, 0xF4F1, 0xF85C, 
    0xFC87, 0x010B, 0x0580, 0x0983, 0x0CBB, 0x0EDE, 0x0FA5, 0x0EDE, 0x0CBB, 0x0983, 0x0580, 0x010B, 0xFC87, 0xF85C, 
    0xF4F1, 0xF2A4, 0x0000, 0xFB47, 0xF320, 0xEA1D, 0xE2D1, 0xDFD0, 0xE2D1, 0xEA1D, 0xF320, 0xFB47, 0x0000, 0x01EE, 
    0x036F, 0x0482, 0x0526, 0x055D, 0x0526, 0x0482, 0x036F, 0x01EE, 0x330F, 0x26FD, 0x1223, 0xFB18, 0xE870, 0xE0C1, 
    0xE870, 0xFB18, 0x1223, 0x26FD, 0x330F, 0x37FF, 0x3BD6, 0x3E94, 0x403A, 0x40C6, 0x403A, 0x3E94, 0x3BD6, 0x37FF, 
    0x5AC0, 0x5ACC, 0x5AE8, 0x5B01, 0x5AFF, 0x5AC7, 0x5A38, 0x592C, 0x5794, 0x55C1, 0x54D4, 0x55C1, 0x5794, 0x592C, 
    0x5A38, 0x5AC7, 0x5AFF, 0x5B01, 0x5AE8, 0x5ACC, 0x28C4, 0x2949, 0x2AB2, 0x2CC5, 0x2F47, 0x31FD, 0x34AC, 0x371E, 
    0x391A, 0x3A6D, 0x3AE9, 0x3A6D, 0x391A, 0x371E, 0x34AC, 0x31FD, 0x2F47, 0x2CC5, 0x2AB2, 0x2949, 0xF618, 0xF61E, 
    0xF62F, 0xF640, 0xF645, 0xF627, 0xF5C4, 0xF4F2, 0xF397, 0xF1F4, 0xF119, 0xF1F4, 0xF397, 0xF4F2, 0xF5C4, 0xF627, 
    0xF645, 0xF640, 0xF62F, 0xF61E, 0xE040, 0xE0CD, 0xE24D, 0xE483, 0xE732, 0xEA1D, 0xED09, 0xEFB8, 0xF1EE, 0xF36E, 
    0xF3FB, 0xF36E, 0xF1EE, 0xEFB8, 0xED09, 0xEA1D, 0xE732, 0xE483, 0xE24D, 0xE0CD, 0xAAF1, 0xAB35, 0xABEC, 0xACFA, 
    0xAE42, 0xAFA7, 0xB10C, 0xB254, 0xB362, 0xB419, 0xB45D, 0xB419, 0xB362, 0xB254, 0xB10C, 0xAFA7, 0xAE42, 0xACFA, 
    0xABEC, 0xAB35, 0x074C, 0x06B1, 0x050C, 0x029F, 0xFFAD, 0xFC79, 0xF945, 0xF653, 0xF3E7, 0xF241, 0xF1A6, 0xF241, 
    0xF3E7, 0xF653, 0xF945, 0xFC79, 0xFFAD, 0x029F, 0x050C, 0x06B1, 0x0C7C, 0x0C59, 0x0C3D, 0x0C9D, 0x0E13, 0x1059, 
    0x130A, 0x15F7, 0x18AB, 0x1AFB, 0x1C7E, 0x1D14, 0x1D2F, 0x1CCA, 0x1B73, 0x193A, 0x167F, 0x137B, 0x10AB, 0x0DF0, 
    0x10F3, 0x10EC, 0x10DF, 0x10D4, 0x10CC, 0x10CD, 0x10DC, 0x10F0, 0x1109, 0x1122, 0x114D, 0x1196, 0x11EB, 0x1235, 
    0x1274, 0x1281, 0x1238, 0x11CC, 0x1169, 0x111A, 0x2A4B, 0x29D6, 0x28CF, 0x27B7, 0x2695, 0x2580, 0x24B5, 0x2407, 
    0x2377, 0x2304, 0x22F7, 0x2370, 0x2426, 0x24E5, 0x259F, 0x2671, 0x2768, 0x286B, 0x294F, 0x29FE, 0xFB0D, 0xF9C7, 
    0xF83A, 0xF68B, 0xF4DC, 0xF350, 0xF20A, 0xF12D, 0xF0DB, 0xF12D, 0xF20A, 0xF350, 0xF4DC, 0xF68B, 0xF83A, 0xF9C7, 
    0xFB0D, 0xFBEA, 0xFC3C, 0xFBEA, 0x011F, 0x0266, 0x03F2, 0x05A1, 0x0750, 0x08DC, 0x0A22, 0x0B00, 0x0B51, 0x0B00, 
    0x0A22, 0x08DC, 0x0750, 0x05A1, 0x03F2, 0x0266, 0x011F, 0x0042, 0xFFF0, 0x0042, 0x0000, 0x021B, 0x040A, 0x05A2, 
    0x06B6, 0x071C, 0x06C5, 0x05D5, 0x0470, 0x02B6, 0x00CA, 0xFECD, 0xFCE3, 0xFB2D, 0xF9CC, 0xF8E4, 0xF8C7, 0xF990, 
    0xFB09, 0xFCFD, 0x041D, 0x03C3, 0x02CD, 0x0163, 0xFFAB, 0xFDCD, 0xFBEE, 0xFA36, 0xF8CC, 0xF7D7, 0xF77C, 0xF7D7, 
    0xF8CC, 0xFA36, 0xFBEE, 0xFDCD, 0xFFAB, 0x0163, 0x02CD, 0x03C3, 
};

JointIndex sPoeFieldDisappearAnimJointIndices[] = {
    { 0x0000, 0x0002, 0x0000 },
    { 0x0016, 0x002A, 0x003E },
    { 0x0052, 0x0066, 0x007A },
    { 0x0000, 0x008E, 0x00A2 },
    { 0x00B6, 0x00CA, 0x00DE },
    { 0x00F2, 0x0106, 0x011A },
    { 0x012E, 0x0142, 0x0156 },
    { 0x016A, 0x0000, 0x017E },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0192, 0x01A6 },
};

AnimationHeader gPoeFieldDisappearAnim = { 
    { 20 }, sPoeFieldDisappearAnimFrameData,
    sPoeFieldDisappearAnimJointIndices, 2
};

u64 gBigPoeSoulTex[] = {
#include "assets/objects/object_po_field/big_poe_soul.i8.inc.c"
};

u64 gPoeFieldSoulTex[] = {
#include "assets/objects/object_po_field/poe_field_soul.i8.inc.c"
};

Vtx object_po_fieldVtx_002370[] = {
#include "assets/objects/object_po_field/object_po_fieldVtx_002370.vtx.inc"
};

Gfx gPoeFieldSoulDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(gDecorativeFlameMaskTex, 0x0100, 1, G_IM_FMT_I, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_po_fieldVtx_002370, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

u64 object_po_fieldTex_002470[] = {
#include "assets/objects/object_po_field/object_po_fieldTex_002470.rgba16.inc.c"
};

u64 object_po_fieldTex_002670[] = {
#include "assets/objects/object_po_field/object_po_fieldTex_002670.rgba16.inc.c"
};

u64 object_po_fieldTex_002870[] = {
#include "assets/objects/object_po_field/object_po_fieldTex_002870.rgba16.inc.c"
};

u64 object_po_fieldTex_003070[] = {
#include "assets/objects/object_po_field/object_po_fieldTex_003070.rgba16.inc.c"
};

u64 object_po_fieldTex_003270[] = {
#include "assets/objects/object_po_field/object_po_fieldTex_003270.rgba16.inc.c"
};

u64 object_po_fieldTex_0032F0[] = {
#include "assets/objects/object_po_field/object_po_fieldTex_0032F0.rgba16.inc.c"
};

u64 object_po_fieldTex_0033F0[] = {
#include "assets/objects/object_po_field/object_po_fieldTex_0033F0.rgba16.inc.c"
};

u64 object_po_fieldTex_0035F0[] = {
#include "assets/objects/object_po_field/object_po_fieldTex_0035F0.rgba16.inc.c"
};

u64 object_po_fieldTex_0037F0[] = {
#include "assets/objects/object_po_field/object_po_fieldTex_0037F0.rgba16.inc.c"
};

Vtx object_po_fieldVtx_0039F0[] = {
#include "assets/objects/object_po_field/object_po_fieldVtx_0039F0.vtx.inc"
};

Gfx gPoeFieldLanternDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_002670, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_po_fieldVtx_0039F0, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 4, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 5, 7, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 0, 9, 0, 8, 9, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_002470, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0, PRIM_LOD_FRAC,
                       COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&object_po_fieldVtx_0039F0[10], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 2, 0, 1, 0, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeFieldLanternTopDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_0033F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, ENVIRONMENT, 0, TEXEL1, 0, PRIM_LOD_FRAC,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 255, 85, 0, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[17], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 8, 1, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeFieldSkelLimbsLimb_0069DCDL_004D48[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_003070, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[27], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(0, 3, 1, 0, 5, 3, 0, 0),
    gsSP2Triangles(1, 4, 2, 0, 2, 4, 5, 0),
    gsSP2Triangles(3, 5, 4, 0, 5, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeFieldSkelLimbsLimb_006A00DL_004DF8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_002470, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[33], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_0032F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_po_fieldVtx_0039F0[37], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_002870, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 130, 105, 145, 255),
    gsSPVertex(&object_po_fieldVtx_0039F0[43], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 5, 0, 13, 6, 5, 0),
    gsSP2Triangles(11, 14, 15, 0, 14, 13, 12, 0),
    gsSP2Triangles(12, 15, 14, 0, 11, 15, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeFieldSkelLimbsLimb_0069A0DL_004F60[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_0035F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[59], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 4, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 7, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 6, 15, 0),
    gsSP2Triangles(9, 16, 7, 0, 6, 14, 5, 0),
    gsSP2Triangles(17, 11, 13, 0, 17, 13, 12, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_po_fieldVtx_0039F0[77], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeFieldSkelLimbsLimb_0069D0DL_005058[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_003070, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[86], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeFieldSkelLimbsLimb_0069C4DL_0050F8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_003070, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[94], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP1Triangle(5, 7, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeFieldSkelLimbsLimb_0069B8DL_0051A0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_003070, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[103], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(3, 1, 0, 0, 2, 4, 0, 0),
    gsSP1Triangle(4, 2, 3, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_po_fieldVtx_0039F0[108], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_po_fieldVtx_0039F0[111], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeFieldSkelLimbsLimb_0069ACDL_005288[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_003070, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[114], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeFieldSkelLimbsLimb_0069F4DL_005328[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_002870, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[122], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 6, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_003270, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[135], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_002870, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[138], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 3, 5, 7, 0),
    gsSP2Triangles(8, 2, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 8, 9, 16, 0),
    gsSP2Triangles(17, 7, 5, 0, 18, 19, 13, 0),
    gsSP2Triangles(6, 5, 4, 0, 20, 18, 15, 0),
    gsSP2Triangles(13, 15, 18, 0, 5, 6, 17, 0),
    gsSP2Triangles(21, 6, 3, 0, 18, 11, 10, 0),
    gsSP2Triangles(3, 22, 21, 0, 10, 12, 23, 0),
    gsSP1Triangle(6, 21, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_003270, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[162], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_002870, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[168], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_003270, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[174], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBigPoeCloakDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_0032F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[177], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_002470, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_po_fieldVtx_0039F0[183], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_0033F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 101, 127, 255),
    gsSPVertex(&object_po_fieldVtx_0039F0[187], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_003270, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 255, 255, 208, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[201], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_002870, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[211], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(3, 4, 2, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 8, 10, 0, 12, 11, 10, 0),
    gsSP2Triangles(9, 12, 10, 0, 13, 9, 8, 0),
    gsSP2Triangles(13, 8, 14, 0, 14, 8, 11, 0),
    gsSP2Triangles(14, 11, 15, 0, 15, 11, 12, 0),
    gsSP2Triangles(15, 12, 16, 0, 16, 12, 9, 0),
    gsSP2Triangles(16, 9, 13, 0, 17, 13, 14, 0),
    gsSP2Triangles(17, 14, 6, 0, 14, 15, 7, 0),
    gsSP2Triangles(6, 14, 7, 0, 7, 15, 16, 0),
    gsSP2Triangles(7, 16, 18, 0, 18, 16, 13, 0),
    gsSP2Triangles(18, 13, 17, 0, 19, 7, 20, 0),
    gsSP2Triangles(21, 20, 17, 0, 17, 6, 5, 0),
    gsSP2Triangles(22, 23, 3, 0, 24, 23, 22, 0),
    gsSP2Triangles(3, 25, 22, 0, 22, 25, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
    gsSPVertex(&object_po_fieldVtx_0039F0[241], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 5, 7, 0, 0),
    gsSP1Triangle(5, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBigPoeFaceDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_0037F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[251], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 4, 9, 0, 5, 7, 10, 0),
    gsSP2Triangles(10, 9, 11, 0, 10, 11, 5, 0),
    gsSP1Triangle(9, 10, 8, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_po_fieldVtx_0039F0[263], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gBigPoeBodyDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_002870, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 208, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_po_fieldVtx_0039F0[272], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 2, 5, 0, 6, 3, 7, 0),
    gsSP2Triangles(8, 2, 1, 0, 8, 1, 0, 0),
    gsSP2Triangles(9, 4, 6, 0, 4, 3, 6, 0),
    gsSP2Triangles(0, 5, 10, 0, 5, 4, 9, 0),
    gsSP2Triangles(9, 10, 5, 0, 0, 10, 8, 0),
    gsSPEndDisplayList(),
};

u64 object_po_fieldTex_005AB0[] = {
#include "assets/objects/object_po_field/object_po_fieldTex_005AB0.rgba16.inc.c"
};

u64 object_po_fieldTex_005CB0[] = {
#include "assets/objects/object_po_field/object_po_fieldTex_005CB0.rgba16.inc.c"
};

Vtx object_po_fieldVtx_005D30[] = {
#include "assets/objects/object_po_field/object_po_fieldVtx_005D30.vtx.inc"
};

Gfx gPoeFieldBurnDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_po_fieldTex_005AB0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_po_fieldVtx_005D30, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP1Triangle(2, 4, 0, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 238, 238, 238, 255),
    gsSPVertex(&object_po_fieldVtx_005D30[5], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 4, 0, 7, 0),
    gsSP2Triangles(6, 5, 8, 0, 2, 1, 9, 0),
    gsSP2Triangles(10, 5, 4, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 15, 0, 16, 12, 15, 0),
    gsSP2Triangles(12, 16, 13, 0, 15, 11, 13, 0),
    gsSP2Triangles(15, 13, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 17, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 21, 24, 0, 18, 25, 19, 0),
    gsSP2Triangles(25, 18, 20, 0, 21, 26, 24, 0),
    gsSP2Triangles(26, 21, 23, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 30, 28, 0, 31, 26, 23, 0),
    gsSP2Triangles(26, 31, 24, 0, 31, 22, 24, 0),
    gsSP1Triangle(22, 31, 23, 0),
    gsSPVertex(&object_po_fieldVtx_005D30[37], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 0, 2, 7, 0),
    gsSP2Triangles(8, 9, 4, 0, 4, 9, 10, 0),
    gsSP2Triangles(3, 11, 12, 0, 9, 13, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 11, 17, 12, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(18, 20, 15, 0, 3, 12, 8, 0),
    gsSP2Triangles(5, 24, 25, 0, 16, 3, 26, 0),
    gsSP2Triangles(3, 8, 4, 0, 27, 10, 13, 0),
    gsSP2Triangles(16, 15, 20, 0, 28, 6, 16, 0),
    gsSP2Triangles(29, 20, 30, 0, 31, 28, 26, 0),
    gsSP2Triangles(16, 26, 28, 0, 20, 29, 16, 0),
    gsSP1Triangle(3, 21, 23, 0),
    gsSPVertex(&object_po_fieldVtx_005D30[69], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 8, 5, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(9, 14, 15, 0, 16, 11, 17, 0),
    gsSP2Triangles(18, 19, 14, 0, 14, 0, 6, 0),
    gsSP2Triangles(16, 17, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 22, 0, 21, 24, 22, 0),
    gsSP2Triangles(26, 24, 21, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 31, 26, 25, 0),
    gsSPVertex(&object_po_fieldVtx_005D30[101], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 21, 23, 0, 22, 23, 24, 0),
    gsSP2Triangles(21, 25, 19, 0, 26, 21, 22, 0),
    gsSP2Triangles(27, 28, 29, 0, 26, 22, 24, 0),
    gsSPVertex(&object_po_fieldVtx_005D30[131], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 10, 0),
    gsSP1Triangle(13, 9, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_po_fieldTex_005CB0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 121, 235, 159, 255),
    gsSPVertex(&object_po_fieldVtx_005D30[146], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 4, 7, 0),
    gsSPEndDisplayList(),
};

StandardLimb gPoeFieldSkelLimbsLimb_0069A0 = { 
    { 0, 4400, 0 }, 0x01, LIMB_DONE,
    gPoeFieldSkelLimbsLimb_0069A0DL_004F60
};

StandardLimb gPoeFieldSkelLimbsLimb_0069AC = { 
    { 760, -492, 1400 }, 0x02, 0x03,
    gPoeFieldSkelLimbsLimb_0069ACDL_005288
};

StandardLimb gPoeFieldSkelLimbsLimb_0069B8 = { 
    { 1750, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gPoeFieldSkelLimbsLimb_0069B8DL_0051A0
};

StandardLimb gPoeFieldSkelLimbsLimb_0069C4 = { 
    { 760, -492, -1400 }, 0x04, 0x07,
    gPoeFieldSkelLimbsLimb_0069C4DL_0050F8
};

StandardLimb gPoeFieldSkelLimbsLimb_0069D0 = { 
    { 1300, 0, 0 }, 0x05, LIMB_DONE,
    gPoeFieldSkelLimbsLimb_0069D0DL_005058
};

StandardLimb gPoeFieldSkelLimbsLimb_0069DC = { 
    { 1200, 0, 0 }, 0x06, LIMB_DONE,
    gPoeFieldSkelLimbsLimb_0069DCDL_004D48
};

StandardLimb gPoeFieldSkelLimbsLimb_0069E8 = { 
    { 600, 400, 0 }, LIMB_DONE, LIMB_DONE,
    gPoeFieldLanternDL
};

StandardLimb gPoeFieldSkelLimbsLimb_0069F4 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x08,
    gPoeFieldSkelLimbsLimb_0069F4DL_005328
};

StandardLimb gPoeFieldSkelLimbsLimb_006A00 = { 
    { 671, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gPoeFieldSkelLimbsLimb_006A00DL_004DF8
};

void* gPoeFieldSkelLimbs[] = {
    &gPoeFieldSkelLimbsLimb_0069A0,
    &gPoeFieldSkelLimbsLimb_0069AC,
    &gPoeFieldSkelLimbsLimb_0069B8,
    &gPoeFieldSkelLimbsLimb_0069C4,
    &gPoeFieldSkelLimbsLimb_0069D0,
    &gPoeFieldSkelLimbsLimb_0069DC,
    &gPoeFieldSkelLimbsLimb_0069E8,
    &gPoeFieldSkelLimbsLimb_0069F4,
    &gPoeFieldSkelLimbsLimb_006A00,
};

SkeletonHeader gPoeFieldSkel = { 
    gPoeFieldSkelLimbs, ARRAY_COUNT(gPoeFieldSkelLimbs)
};

