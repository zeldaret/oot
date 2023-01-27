#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_rl.h"

s16 object_rl_Anim_00040CFrameData[] = {
    0x0000, 0x4000, 0xFC72, 0x038E, 0xFFFB, 0xFFB4, 0xFF2E, 0xFE80, 0xFDC2, 0xFD0D, 0xFC79, 0xFC1E, 0xFC13, 0xFC72, 
    0xFD25, 0xFE06, 0xFF0E, 0x0037, 0x017B, 0x02D6, 0x043F, 0x05B3, 0x072B, 0x08A0, 0x0A0E, 0x0B6F, 0x0CBB, 0x0DEF, 
    0x0F03, 0x0FF2, 0x10B7, 0x114A, 0x11A7, 0x11C7, 0xFFFE, 0xFFE2, 0xFFAF, 0xFF72, 0xFF37, 0xFF0D, 0xFEFF, 0xFF1A, 
    0xFF6C, 0x0000, 0x00D0, 0x01C7, 0x02DF, 0x0415, 0x0561, 0x06BF, 0x0829, 0x099B, 0x0B0D, 0x0C7C, 0x0DE2, 0x0F38, 
    0x107B, 0x11A4, 0x12AF, 0x1395, 0x1451, 0x14DE, 0x1537, 0x1555, 0xED83, 0xED7D, 0xED6D, 0xED50, 0xED21, 0xECDD, 
    0xEC7F, 0xEC05, 0xEB6A, 0xEAAB, 0xE9C5, 0xE8BC, 0xE796, 0xE657, 0xE504, 0xE3A3, 0xE238, 0xE0C9, 0xDF5A, 0xDDF0, 
    0xDC92, 0xDB43, 0xDA08, 0xD8E7, 0xD7E5, 0xD706, 0xD650, 0xD5C8, 0xD573, 0xD555, 0x7C91, 0x7E3D, 0x8172, 0x85A6, 
    0x8A4D, 0x8EDD, 0x92CA, 0x958A, 0x9691, 0x9555, 0x9250, 0x8E6C, 0x89C5, 0x8477, 0x7E9E, 0x7859, 0x71C1, 0x6AF5, 
    0x6411, 0x5D31, 0x5672, 0x4FEF, 0x49C6, 0x4413, 0x3EF2, 0x3A81, 0x36DA, 0x341B, 0x3261, 0x31C7, 0xFFFD, 0xFFD3, 
    0xFF7F, 0xFF0E, 0xFE8B, 0xFE01, 0xFD7A, 0xFD04, 0xFCA8, 0xFC72, 0xFC56, 0xFC40, 0xFC2F, 0xFC22, 0xFC1B, 0xFC17, 
    0xFC16, 0xFC18, 0xFC1D, 0xFC24, 0xFC2D, 0xFC36, 0xFC40, 0xFC4B, 0xFC55, 0xFC5E, 0xFC66, 0xFC6C, 0xFC70, 0xFC72, 
    0x0C12, 0x0BD2, 0x0B55, 0x0AAD, 0x09EB, 0x0922, 0x0864, 0x07C2, 0x074F, 0x071C, 0x0718, 0x0722, 0x0739, 0x075B, 
    0x0788, 0x07BD, 0x07F8, 0x0839, 0x087E, 0x08C5, 0x090C, 0x0952, 0x0996, 0x09D6, 0x0A11, 0x0A44, 0x0A6F, 0x0A8F, 
    0x0AA3, 0x0AAB, 0xFFE0, 0xFE26, 0xFAC3, 0xF631, 0xF0E8, 0xEB63, 0xE61C, 0xE18A, 0xDE29, 0xDC72, 0xDBE4, 0xDBAA, 
    0xDBBB, 0xDC10, 0xDC9F, 0xDD61, 0xDE4D, 0xDF5B, 0xE083, 0xE1BD, 0xE300, 0xE444, 0xE580, 0xE6AE, 0xE7C3, 0xE8B9, 
    0xE986, 0xEA23, 0xEA87, 0xEAAB, 0xFFF9, 0xFF9B, 0xFEE4, 0xFDED, 0xFCD3, 0xFBB0, 0xFA9F, 0xF9BB, 0xF91E, 0xF8E4, 
    0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 
    0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0x0002, 0x001E, 0x0051, 0x008E, 0x00C9, 0x00F3, 0x0101, 0x00E6, 
    0x0094, 0x0000, 0xFF30, 0xFE39, 0xFD21, 0xFBEB, 0xFA9F, 0xF941, 0xF7D7, 0xF665, 0xF4F3, 0xF384, 0xF21E, 0xF0C8, 
    0xEF85, 0xEE5C, 0xED51, 0xEC6B, 0xEBAF, 0xEB22, 0xEAC9, 0xEAAB, 0x127D, 0x1283, 0x1293, 0x12B0, 0x12DF, 0x1323, 
    0x1381, 0x13FB, 0x1496, 0x1555, 0x163B, 0x1744, 0x186A, 0x19A9, 0x1AFC, 0x1C5D, 0x1DC8, 0x1F37, 0x20A6, 0x2210, 
    0x236E, 0x24BD, 0x25F8, 0x2719, 0x281B, 0x28FA, 0x29B0, 0x2A38, 0x2A8D, 0x2AAB, 0x7C91, 0x7E3D, 0x8172, 0x85A6, 
    0x8A4D, 0x8EDD, 0x92CA, 0x958A, 0x9691, 0x9555, 0x9250, 0x8E6C, 0x89C5, 0x8477, 0x7E9E, 0x7859, 0x71C1, 0x6AF5, 
    0x6411, 0x5D31, 0x5672, 0x4FEF, 0x49C6, 0x4413, 0x3EF2, 0x3A81, 0x36DA, 0x341B, 0x3261, 0x31C7, 0x0003, 0x002D, 
    0x0081, 0x00F2, 0x0175, 0x01FF, 0x0286, 0x02FC, 0x0358, 0x038E, 0x03AA, 0x03C0, 0x03D1, 0x03DE, 0x03E5, 0x03E9, 
    0x03EA, 0x03E8, 0x03E3, 0x03DC, 0x03D3, 0x03CA, 0x03C0, 0x03B5, 0x03AB, 0x03A2, 0x039A, 0x0394, 0x0390, 0x038E, 
    0xF3EE, 0xF42E, 0xF4AB, 0xF553, 0xF615, 0xF6DE, 0xF79C, 0xF83E, 0xF8B1, 0xF8E4, 0xF8E8, 0xF8DE, 0xF8C7, 0xF8A5, 
    0xF878, 0xF843, 0xF808, 0xF7C7, 0xF782, 0xF73B, 0xF6F4, 0xF6AE, 0xF66A, 0xF62A, 0xF5EF, 0xF5BC, 0xF591, 0xF571, 
    0xF55D, 0xF555, 0xFFE0, 0xFE26, 0xFAC3, 0xF631, 0xF0E8, 0xEB63, 0xE61C, 0xE18A, 0xDE29, 0xDC72, 0xDBE4, 0xDBAA, 
    0xDBBB, 0xDC10, 0xDC9F, 0xDD61, 0xDE4D, 0xDF5B, 0xE083, 0xE1BD, 0xE300, 0xE444, 0xE580, 0xE6AE, 0xE7C3, 0xE8B9, 
    0xE986, 0xEA23, 0xEA87, 0xEAAB, 0xFFF9, 0xFF9B, 0xFEE4, 0xFDED, 0xFCD3, 0xFBB0, 0xFA9F, 0xF9BB, 0xF91E, 0xF8E4, 
    0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 
    0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0xF8E4, 0x4146, 0x41DD, 0x4300, 0x4480, 0x462E, 0x47D9, 0x4953, 0x4A6D, 
    0x4AF6, 0x4ABF, 0x49F5, 0x48E6, 0x479C, 0x461F, 0x4478, 0x42AE, 0x40CB, 0x3ED7, 0x3CDA, 0x3ADD, 0x38E9, 0x3705, 
    0x353A, 0x3391, 0x3212, 0x30C6, 0x2FB5, 0x2EE8, 0x2E66, 0x2E39, 
};

JointIndex object_rl_Anim_00040CJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0004, 0x0001 },
    { 0x0022, 0x0040, 0x005E },
    { 0x007C, 0x009A, 0x00B8 },
    { 0x0000, 0x0002, 0x00D6 },
    { 0x00F4, 0x0112, 0x0130 },
    { 0x014E, 0x016C, 0x018A },
    { 0x0000, 0x0003, 0x01A8 },
    { 0x0000, 0x0000, 0x01C6 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_rl_Anim_00040C = { 
    { 30 }, object_rl_Anim_00040CFrameData,
    object_rl_Anim_00040CJointIndices, 4
};

u8 object_rl_possiblePadding_00041C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 object_rl_Anim_000830FrameData[] = {
    0x0000, 0x4000, 0x1555, 0xD555, 0xEAAB, 0x2AAB, 0x11C7, 0x11CA, 0x11D1, 0x11DD, 0x11EB, 0x11FC, 0x120F, 0x1222, 
    0x1236, 0x1248, 0x1259, 0x1268, 0x1273, 0x127B, 0x127D, 0x127B, 0x1274, 0x126A, 0x125D, 0x124E, 0x123D, 0x122B, 
    0x1219, 0x1207, 0x11F6, 0x11E7, 0x11DA, 0x11D0, 0x11C9, 0x11C7, 0x31C7, 0x31C2, 0x31B3, 0x319C, 0x317F, 0x315D, 
    0x3138, 0x3111, 0x30EA, 0x30C5, 0x30A3, 0x3086, 0x306F, 0x3060, 0x305B, 0x3060, 0x306D, 0x3081, 0x309B, 0x30B9, 
    0x30DB, 0x30FF, 0x3123, 0x3147, 0x3169, 0x3187, 0x31A1, 0x31B5, 0x31C2, 0x31C7, 0xFC72, 0xFC70, 0xFC6C, 0xFC65, 
    0xFC5C, 0xFC52, 0xFC46, 0xFC3B, 0xFC2F, 0xFC23, 0xFC19, 0xFC10, 0xFC09, 0xFC05, 0xFC03, 0xFC05, 0xFC09, 0xFC0F, 
    0xFC17, 0xFC20, 0xFC2A, 0xFC35, 0xFC40, 0xFC4B, 0xFC55, 0xFC5E, 0xFC66, 0xFC6C, 0xFC70, 0xFC72, 0x0AAB, 0x0AAA, 
    0x0AA9, 0x0AA6, 0x0AA3, 0x0A9F, 0x0A9B, 0x0A97, 0x0A93, 0x0A8F, 0x0A8C, 0x0A89, 0x0A86, 0x0A85, 0x0A84, 0x0A85, 
    0x0A86, 0x0A88, 0x0A8B, 0x0A8E, 0x0A92, 0x0A95, 0x0A99, 0x0A9D, 0x0AA1, 0x0AA4, 0x0AA7, 0x0AA9, 0x0AAA, 0x0AAB, 
    0xEAAB, 0xEAA4, 0xEA93, 0xEA78, 0xEA55, 0xEA2D, 0xEA01, 0xE9D4, 0xE9A6, 0xE97A, 0xE952, 0xE930, 0xE915, 0xE903, 
    0xE8FD, 0xE902, 0xE912, 0xE92A, 0xE948, 0xE96C, 0xE994, 0xE9BE, 0xE9E9, 0xEA13, 0xEA3B, 0xEA5F, 0xEA7E, 0xEA96, 
    0xEAA5, 0xEAAB, 0x0000, 0x0001, 0x0003, 0x0005, 0x0009, 0x000D, 0x0012, 0x0017, 0x001C, 0x0020, 0x0025, 0x0028, 
    0x002B, 0x002D, 0x002E, 0x002D, 0x002B, 0x0029, 0x0026, 0x0022, 0x001E, 0x0019, 0x0015, 0x0010, 0x000C, 0x0008, 
    0x0005, 0x0002, 0x0001, 0x0000, 0xFC72, 0xFC72, 0xFC72, 0xFC72, 0xFC72, 0xFC72, 0xFC72, 0xFC72, 0xFC72, 0xFC73, 
    0xFC73, 0xFC73, 0xFC73, 0xFC73, 0xFC73, 0xFC73, 0xFC73, 0xFC73, 0xFC73, 0xFC73, 0xFC73, 0xFC72, 0xFC72, 0xFC72, 
    0xFC72, 0xFC72, 0xFC72, 0xFC72, 0xFC72, 0xFC72, 0x0000, 0xFFF8, 0xFFE3, 0xFFC2, 0xFF98, 0xFF67, 0xFF32, 0xFEFA, 
    0xFEC3, 0xFE8D, 0xFE5C, 0xFE32, 0xFE11, 0xFDFC, 0xFDF4, 0xFDFB, 0xFE0E, 0xFE2B, 0xFE50, 0xFE7C, 0xFEAD, 0xFEE0, 
    0xFF14, 0xFF48, 0xFF78, 0xFFA4, 0xFFCA, 0xFFE7, 0xFFF9, 0x0000, 0x31C7, 0x31C2, 0x31B3, 0x319C, 0x317F, 0x315D, 
    0x3138, 0x3111, 0x30EA, 0x30C5, 0x30A3, 0x3086, 0x306F, 0x3060, 0x305B, 0x3060, 0x306D, 0x3081, 0x309B, 0x30B9, 
    0x30DB, 0x30FF, 0x3123, 0x3147, 0x3169, 0x3187, 0x31A1, 0x31B5, 0x31C2, 0x31C7, 0x038E, 0x0391, 0x0399, 0x03A5, 
    0x03B4, 0x03C6, 0x03DA, 0x03EE, 0x0403, 0x0416, 0x0428, 0x0438, 0x0444, 0x044C, 0x044E, 0x044C, 0x0445, 0x043A, 
    0x042D, 0x041D, 0x040B, 0x03F8, 0x03E5, 0x03D2, 0x03C0, 0x03B0, 0x03A2, 0x0398, 0x0391, 0x038E, 0xF555, 0xF556, 
    0xF559, 0xF55E, 0xF563, 0xF56A, 0xF571, 0xF579, 0xF580, 0xF587, 0xF58E, 0xF593, 0xF598, 0xF59B, 0xF59C, 0xF59B, 
    0xF598, 0xF594, 0xF58F, 0xF589, 0xF583, 0xF57C, 0xF575, 0xF56E, 0xF568, 0xF562, 0xF55D, 0xF559, 0xF556, 0xF555, 
    0xEAAB, 0xEAA0, 0xEA81, 0xEA52, 0xEA16, 0xE9D0, 0xE983, 0xE933, 0xE8E3, 0xE896, 0xE850, 0xE814, 0xE7E5, 0xE7C6, 
    0xE7BB, 0xE7C5, 0xE7DF, 0xE809, 0xE83F, 0xE87E, 0xE8C4, 0xE90D, 0xE958, 0xE9A2, 0xE9E8, 0xEA27, 0xEA5C, 0xEA86, 
    0xEAA1, 0xEAAB, 0x0000, 0xFFFF, 0xFFFD, 0xFFFB, 0xFFF7, 0xFFF3, 0xFFEE, 0xFFE9, 0xFFE4, 0xFFE0, 0xFFDB, 0xFFD8, 
    0xFFD5, 0xFFD3, 0xFFD2, 0xFFD3, 0xFFD5, 0xFFD7, 0xFFDA, 0xFFDE, 0xFFE2, 0xFFE7, 0xFFEB, 0xFFF0, 0xFFF4, 0xFFF8, 
    0xFFFB, 0xFFFE, 0xFFFF, 0x0000, 0x038E, 0x038E, 0x038E, 0x038E, 0x038E, 0x038E, 0x038E, 0x038E, 0x038E, 0x038D, 
    0x038D, 0x038D, 0x038D, 0x038D, 0x038D, 0x038D, 0x038D, 0x038D, 0x038D, 0x038D, 0x038D, 0x038E, 0x038E, 0x038E, 
    0x038E, 0x038E, 0x038E, 0x038E, 0x038E, 0x038E, 0x0000, 0xFFF8, 0xFFE3, 0xFFC2, 0xFF98, 0xFF67, 0xFF32, 0xFEFA, 
    0xFEC3, 0xFE8D, 0xFE5C, 0xFE32, 0xFE11, 0xFDFC, 0xFDF4, 0xFDFB, 0xFE0E, 0xFE2B, 0xFE50, 0xFE7C, 0xFEAD, 0xFEE0, 
    0xFF14, 0xFF48, 0xFF78, 0xFFA4, 0xFFCA, 0xFFE7, 0xFFF9, 0x0000, 0x2E39, 0x2E40, 0x2E56, 0x2E76, 0x2EA0, 0x2ED1, 
    0x2F06, 0x2F3E, 0x2F75, 0x2FAA, 0x2FDB, 0x3005, 0x3026, 0x303B, 0x3042, 0x303C, 0x3029, 0x300C, 0x2FE7, 0x2FBB, 
    0x2F8B, 0x2F58, 0x2F24, 0x2EF0, 0x2EC0, 0x2E94, 0x2E6F, 0x2E52, 0x2E40, 0x2E39, 
};

JointIndex object_rl_Anim_000830JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0006, 0x0001 },
    { 0x0002, 0x0003, 0x0024 },
    { 0x0042, 0x0060, 0x007E },
    { 0x009C, 0x00BA, 0x00D8 },
    { 0x0004, 0x0005, 0x00F6 },
    { 0x0114, 0x0132, 0x0150 },
    { 0x016E, 0x018C, 0x01AA },
    { 0x0000, 0x0000, 0x01C8 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_rl_Anim_000830 = { 
    { 30 }, object_rl_Anim_000830FrameData,
    object_rl_Anim_000830JointIndices, 6
};

s16 object_rl_Anim_000A3CFrameData[] = {
    0x0000, 0x4000, 0xFC72, 0x038E, 0x0001, 0x0008, 0x0019, 0x0030, 0x004D, 0x006D, 0x0091, 0x00B6, 0x00DB, 0x00FF, 
    0x0120, 0x013C, 0x0153, 0x0164, 0x016C, 0x0168, 0x0157, 0x0139, 0x0112, 0x00E6, 0x00B6, 0x0086, 0x005A, 0x0033, 
    0x0015, 0x0004, 0x0000, 0xED82, 0xED79, 0xED65, 0xED4A, 0xED28, 0xED03, 0xECDA, 0xECB2, 0xEC8A, 0xEC65, 0xEC46, 
    0xEC2D, 0xEC1D, 0xEC17, 0xEC1D, 0xEC2F, 0xEC4A, 0xEC6D, 0xEC94, 0xECBE, 0xECE9, 0xED13, 0xED39, 0xED59, 0xED72, 
    0xED80, 0xED83, 0x7C73, 0x7C8B, 0x7CBC, 0x7D00, 0x7D54, 0x7DB2, 0x7E17, 0x7E7D, 0x7EE0, 0x7F3B, 0x7F8A, 0x7FC9, 
    0x7FF1, 0x8000, 0x7FF0, 0x7FC3, 0x7F7F, 0x7F29, 0x7EC6, 0x7E5D, 0x7DF1, 0x7D89, 0x7D2A, 0x7CDA, 0x7C9D, 0x7C79, 
    0x7C72, 0x0C18, 0x0C2A, 0x0C4F, 0x0C82, 0x0CC0, 0x0D06, 0x0D50, 0x0D99, 0x0DDF, 0x0E1D, 0x0E51, 0x0E75, 0x0E87, 
    0x0E84, 0x0E6E, 0x0E47, 0x0E15, 0x0DD8, 0x0D96, 0x0D50, 0x0D0A, 0x0CC7, 0x0C8B, 0x0C58, 0x0C32, 0x0C1B, 0x0C17, 
    0x127E, 0x1287, 0x129B, 0x12B6, 0x12D8, 0x12FD, 0x1326, 0x134E, 0x1376, 0x139B, 0x13BA, 0x13D3, 0x13E3, 0x13E9, 
    0x13E3, 0x13D1, 0x13B6, 0x1393, 0x136C, 0x1342, 0x1317, 0x12ED, 0x12C7, 0x12A7, 0x128E, 0x1280, 0x127D, 0x7C73, 
    0x7C8B, 0x7CBC, 0x7D00, 0x7D54, 0x7DB2, 0x7E17, 0x7E7D, 0x7EE0, 0x7F3B, 0x7F8B, 0x7FC9, 0x7FF1, 0x8000, 0x7FF0, 
    0x7FC3, 0x7F7F, 0x7F29, 0x7EC6, 0x7E5D, 0x7DF1, 0x7D89, 0x7D2A, 0x7CDA, 0x7C9D, 0x7C79, 0x7C72, 0xF3E8, 0xF3D8, 
    0xF3B8, 0xF38C, 0xF355, 0xF318, 0xF2D8, 0xF298, 0xF25B, 0xF225, 0xF1F8, 0xF1D8, 0xF1C8, 0xF1CB, 0xF1DF, 0xF200, 
    0xF22C, 0xF261, 0xF29B, 0xF2D8, 0xF315, 0xF34F, 0xF384, 0xF3B0, 0xF3D2, 0xF3E5, 0xF3E9, 0x413C, 0x414D, 0x416F, 
    0x419F, 0x41DB, 0x4220, 0x426B, 0x42B8, 0x4306, 0x4350, 0x4395, 0x43D1, 0x4402, 0x4424, 0x4434, 0x442E, 0x4409, 
    0x43CB, 0x437A, 0x431C, 0x42B8, 0x4254, 0x41F7, 0x41A6, 0x4167, 0x4142, 0x413B, 
};

JointIndex object_rl_Anim_000A3CJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0004, 0x0001 },
    { 0x0000, 0x001F, 0x003A },
    { 0x0000, 0x0055, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0070, 0x008B },
    { 0x0000, 0x00A6, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x00C1 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_rl_Anim_000A3C = { 
    { 27 }, object_rl_Anim_000A3CFrameData,
    object_rl_Anim_000A3CJointIndices, 4
};

Vtx object_rlVtx_000A50[] = {
#include "assets/objects/object_rl/object_rlVtx_000A50.vtx.inc"
};

Gfx object_rl_DL_002230[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006518, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rlVtx_000A50[359], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(6, 10, 2, 0, 11, 12, 7, 0),
    gsSP2Triangles(0, 13, 3, 0, 14, 11, 2, 0),
    gsSP2Triangles(15, 13, 0, 0, 14, 12, 11, 0),
    gsSP2Triangles(9, 15, 7, 0, 6, 16, 4, 0),
    gsSP2Triangles(2, 16, 6, 0, 1, 3, 16, 0),
    gsSP2Triangles(2, 10, 14, 0, 7, 15, 11, 0),
    gsSP2Triangles(0, 11, 15, 0, 16, 2, 1, 0),
    gsSP1Triangle(2, 11, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_007198, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(17, 18, 19, 0, 19, 20, 17, 0),
    gsSP2Triangles(19, 18, 21, 0, 21, 22, 19, 0),
    gsSPEndDisplayList(),
};

Gfx object_rl_DL_0023D8[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rlVtx_000A50[168], 12, 0),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_007198, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rlVtx_000A50[180], 6, 12),
    gsSP2Triangles(12, 11, 3, 0, 3, 13, 14, 0),
    gsSP2Triangles(15, 16, 5, 0, 5, 11, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_007598, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_rlVtx_000A50[186], 19, 12),
    gsSP2Triangles(12, 0, 1, 0, 13, 14, 7, 0),
    gsSP2Triangles(7, 0, 15, 0, 16, 8, 17, 0),
    gsSP2Triangles(4, 8, 18, 0, 19, 20, 4, 0),
    gsSP2Triangles(21, 1, 22, 0, 23, 1, 24, 0),
    gsSP2Triangles(1, 2, 25, 0, 26, 2, 9, 0),
    gsSP2Triangles(9, 27, 28, 0, 29, 10, 30, 0),
    gsSPVertex(&object_rlVtx_000A50[205], 9, 12),
    gsSP2Triangles(12, 10, 6, 0, 6, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006798, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(15, 16, 17, 0, 17, 18, 15, 0),
    gsSP2Triangles(17, 19, 20, 0, 20, 18, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006618, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_rlVtx_000A50[214], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 0, 5, 0, 5, 2, 6, 0),
    gsSP2Triangles(5, 7, 4, 0, 8, 1, 3, 0),
    gsSP2Triangles(0, 2, 5, 0, 3, 9, 8, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 10, 11, 0),
    gsSP2Triangles(12, 13, 8, 0, 14, 15, 16, 0),
    gsSP2Triangles(2, 10, 6, 0, 8, 13, 1, 0),
    gsSP2Triangles(11, 7, 6, 0, 8, 9, 12, 0),
    gsSP2Triangles(17, 18, 19, 0, 4, 9, 3, 0),
    gsSP2Triangles(11, 4, 7, 0, 3, 0, 4, 0),
    gsSP2Triangles(9, 4, 12, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_rlVtx_000A50[246], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006B98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_rlVtx_000A50[261], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 26, 29, 30, 0),
    gsSP1Triangle(26, 30, 27, 0),
    gsSPVertex(&object_rlVtx_000A50[292], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 25, 27, 0, 29, 28, 27, 0),
    gsSP1Triangle(26, 29, 27, 0),
    gsSPVertex(&object_rlVtx_000A50[322], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006F98, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSPVertex(&object_rlVtx_000A50[326], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 16, 13, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 20, 17, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSP1Triangle(28, 29, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_007998, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_rlVtx_000A50[356], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_rl_DL_0029A0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006518, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rlVtx_000A50[72], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 4, 0),
    gsSP2Triangles(4, 3, 8, 0, 10, 2, 7, 0),
    gsSP2Triangles(8, 3, 10, 0, 0, 10, 3, 0),
    gsSP2Triangles(1, 5, 2, 0, 7, 2, 5, 0),
    gsSP2Triangles(2, 10, 0, 0, 3, 1, 0, 0),
    gsSP2Triangles(10, 11, 8, 0, 7, 11, 10, 0),
    gsSPEndDisplayList(),
};

Gfx object_rl_DL_002AA0[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rlVtx_000A50[45], 5, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006518, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rlVtx_000A50[50], 12, 5),
    gsSP2Triangles(5, 6, 0, 0, 7, 8, 3, 0),
    gsSP2Triangles(0, 9, 10, 0, 4, 11, 12, 0),
    gsSP2Triangles(13, 1, 4, 0, 0, 1, 14, 0),
    gsSP2Triangles(3, 2, 15, 0, 16, 2, 0, 0),
    gsSPVertex(&object_rlVtx_000A50[62], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 3, 0, 2, 6, 7, 0),
    gsSP2Triangles(0, 8, 3, 0, 2, 9, 0, 0),
    gsSP2Triangles(7, 9, 2, 0, 3, 8, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_rl_DL_002BD8[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_rlVtx_000A50, 5, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006518, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rlVtx_000A50[5], 24, 5),
    gsSP2Triangles(5, 6, 0, 0, 7, 3, 1, 0),
    gsSP2Triangles(8, 9, 1, 0, 0, 10, 11, 0),
    gsSP2Triangles(12, 2, 0, 0, 0, 4, 13, 0),
    gsSP2Triangles(1, 14, 15, 0, 1, 2, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006618, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006658, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_rlVtx_000A50[29], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(2, 14, 0, 0, 9, 15, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_rl_DL_002E20[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006518, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rlVtx_000A50[156], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 3, 8, 9, 0),
    gsSP2Triangles(9, 4, 3, 0, 5, 0, 10, 0),
    gsSP2Triangles(10, 4, 9, 0, 4, 10, 2, 0),
    gsSP2Triangles(0, 7, 1, 0, 7, 0, 5, 0),
    gsSP2Triangles(2, 10, 0, 0, 2, 1, 4, 0),
    gsSP2Triangles(9, 11, 10, 0, 10, 11, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_rl_DL_002F20[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rlVtx_000A50[129], 5, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006518, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rlVtx_000A50[134], 12, 5),
    gsSP2Triangles(0, 5, 6, 0, 3, 7, 8, 0),
    gsSP2Triangles(9, 10, 0, 0, 11, 12, 4, 0),
    gsSP2Triangles(4, 1, 13, 0, 14, 1, 0, 0),
    gsSP2Triangles(15, 2, 3, 0, 0, 2, 16, 0),
    gsSPVertex(&object_rlVtx_000A50[146], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 0, 0),
    gsSP2Triangles(3, 8, 2, 0, 2, 9, 0, 0),
    gsSP2Triangles(0, 9, 6, 0, 5, 8, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_rl_DL_003058[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rlVtx_000A50[84], 5, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006518, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rlVtx_000A50[89], 24, 5),
    gsSP2Triangles(0, 5, 6, 0, 1, 3, 7, 0),
    gsSP2Triangles(1, 8, 9, 0, 10, 11, 0, 0),
    gsSP2Triangles(0, 2, 12, 0, 13, 4, 0, 0),
    gsSP2Triangles(14, 15, 1, 0, 16, 2, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006618, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rl_TLUT_006318),
    gsDPLoadTextureBlock(object_rl_Tex_006658, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_rlVtx_000A50[113], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(2, 14, 0, 0, 9, 15, 7, 0),
    gsSPEndDisplayList(),
};

u64 object_rl_TLUT_0032A0[] = {
#include "assets/objects/object_rl/tlut_000032A0.rgba16.inc.c"
};

u64 object_rlTex_0033E0[] = {
#include "assets/objects/object_rl/object_rlTex_0033E0.ci8.inc.c"
};

u64 object_rlTex_003420[] = {
#include "assets/objects/object_rl/object_rlTex_003420.ci8.inc.c"
};

u64 object_rl_Tex_003520[] = {
#include "assets/objects/object_rl/tex_00003520.ci8.inc.c"
};

u64 object_rl_Tex_003620[] = {
#include "assets/objects/object_rl/tex_00003620.ci8.inc.c"
};

u64 object_rl_Tex_003820[] = {
#include "assets/objects/object_rl/tex_00003820.ci8.inc.c"
};

u64 object_rl_Tex_003920[] = {
#include "assets/objects/object_rl/tex_00003920.ci8.inc.c"
};

u64 object_rl_Tex_003960[] = {
#include "assets/objects/object_rl/tex_00003960.ci8.inc.c"
};

u64 object_rl_Tex_003B60[] = {
#include "assets/objects/object_rl/tex_00003B60.ci8.inc.c"
};

u64 object_rl_Tex_003D60[] = {
#include "assets/objects/object_rl/tex_00003D60.ci8.inc.c"
};

u64 object_rl_Tex_003DA0[] = {
#include "assets/objects/object_rl/tex_00003DA0.ci8.inc.c"
};

Vtx object_rlVtx_003EA0[] = {
#include "assets/objects/object_rl/object_rlVtx_003EA0.vtx.inc"
};

Gfx object_rl_DL_005220[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_rl_Tex_003620, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_rl_TLUT_0032A0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(object_rlVtx_003EA0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[3], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[6], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 14, 16, 0, 21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003DA0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[30], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003D60, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[34], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[37], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(9, 3, 5, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 14, 0),
    gsSP2Triangles(12, 13, 15, 0, 14, 11, 10, 0),
    gsSP2Triangles(14, 16, 11, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_003420, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[63], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[67], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003620, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[70], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[73], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003820, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[76], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[79], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[100], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[103], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_003420, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[109], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[113], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_003420, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[116], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[121], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_003420, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[124], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[128], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[132], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[136], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[140], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[146], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003920, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rlVtx_003EA0[150], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[153], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_003420, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rlVtx_003EA0[156], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 2, 1, 0),
    gsSP2Triangles(1, 6, 5, 0, 1, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[163], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[169], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 16, 15, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 22, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_rlVtx_003EA0[201], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003DA0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[210], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[213], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003820, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[216], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[219], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003DA0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[222], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[225], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rlVtx_003EA0[228], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rlVtx_003EA0[231], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 0, 0),
    gsSP2Triangles(6, 1, 0, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 8, 1, 9, 0),
    gsSP2Triangles(10, 4, 8, 0, 4, 1, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSP1Triangle(13, 15, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003620, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[247], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003920, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rlVtx_003EA0[250], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rlVtx_003EA0[253], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003DA0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[256], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[262], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(3, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[267], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_0033E0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[282], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[285], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rlTex_003420, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[288], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[292], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003620, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[295], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_rl_Tex_003520, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[298], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_rlVtx_003EA0[301], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 1, 3, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 7, 10, 0, 7, 5, 10, 0),
    gsSPEndDisplayList(),
};

u64 object_rl_TLUT_006318[] = {
#include "assets/objects/object_rl/tlut_00006318.rgba16.inc.c"
};

u64 object_rl_Tex_006518[] = {
#include "assets/objects/object_rl/tex_00006518.ci8.inc.c"
};

u64 object_rl_Tex_006618[] = {
#include "assets/objects/object_rl/tex_00006618.ci8.inc.c"
};

u64 object_rl_Tex_006658[] = {
#include "assets/objects/object_rl/tex_00006658.ci8.inc.c"
};

u8 object_rl_Blob_006758[] = {
#include "assets/objects/object_rl/object_rl_Blob_006758.bin.inc.c"
};

u64 object_rl_Tex_006798[] = {
#include "assets/objects/object_rl/tex_00006798.ci8.inc.c"
};

u64 object_rl_Tex_006B98[] = {
#include "assets/objects/object_rl/tex_00006B98.ci8.inc.c"
};

u64 object_rl_Tex_006F98[] = {
#include "assets/objects/object_rl/tex_00006F98.ci8.inc.c"
};

u64 object_rl_Tex_007198[] = {
#include "assets/objects/object_rl/tex_00007198.ci8.inc.c"
};

u64 object_rl_Tex_007598[] = {
#include "assets/objects/object_rl/tex_00007598.ci8.inc.c"
};

u64 object_rl_Tex_007998[] = {
#include "assets/objects/object_rl/tex_00007998.ci8.inc.c"
};

StandardLimb object_rl_Limb_007A98 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb object_rl_Limb_007AA4 = { 
    { 0, 2800, 0 }, 0x02, 0x09,
    object_rl_DL_0023D8
};

StandardLimb object_rl_Limb_007AB0 = { 
    { 2200, -200, 1400 }, 0x03, 0x05,
    object_rl_DL_002E20
};

StandardLimb object_rl_Limb_007ABC = { 
    { 2100, 0, 0 }, 0x04, LIMB_DONE,
    object_rl_DL_002F20
};

StandardLimb object_rl_Limb_007AC8 = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_rl_DL_003058
};

StandardLimb object_rl_Limb_007AD4 = { 
    { 2200, -200, -1400 }, 0x06, 0x08,
    object_rl_DL_0029A0
};

StandardLimb object_rl_Limb_007AE0 = { 
    { 2100, 0, 0 }, 0x07, LIMB_DONE,
    object_rl_DL_002AA0
};

StandardLimb object_rl_Limb_007AEC = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_rl_DL_002BD8
};

StandardLimb object_rl_Limb_007AF8 = { 
    { 3270, 269, 0 }, LIMB_DONE, LIMB_DONE,
    object_rl_DL_005220
};

StandardLimb object_rl_Limb_007B04 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_rl_DL_002230
};

void* object_rl_Skel_007B38Limbs[] = {
    &object_rl_Limb_007A98,
    &object_rl_Limb_007AA4,
    &object_rl_Limb_007AB0,
    &object_rl_Limb_007ABC,
    &object_rl_Limb_007AC8,
    &object_rl_Limb_007AD4,
    &object_rl_Limb_007AE0,
    &object_rl_Limb_007AEC,
    &object_rl_Limb_007AF8,
    &object_rl_Limb_007B04,
};

FlexSkeletonHeader object_rl_Skel_007B38 = { 
    { object_rl_Skel_007B38Limbs, ARRAY_COUNT(object_rl_Skel_007B38Limbs) }, 9
};

