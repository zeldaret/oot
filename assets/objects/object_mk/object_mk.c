#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_mk.h"

s16 object_mk_Anim_000368FrameData[] = {
    0x0000, 0x0960, 0xC000, 0xDD5E, 0x0960, 0x0960, 0x0960, 0x0960, 0x097B, 0x09B6, 0x09F1, 0x0A0C, 0x09F1, 0x09B6, 
    0x097B, 0x0960, 0x0960, 0x0960, 0xFAB4, 0xFACD, 0xFB0E, 0xFB6A, 0xFBD3, 0xFC3C, 0xFC98, 0xFCD9, 0xFCF2, 0xFCF3, 
    0xFCF3, 0xFCF3, 0xFCF3, 0xFCF3, 0x7CBE, 0x7C7F, 0x7BD9, 0x7AEF, 0x79E3, 0x78D7, 0x77EE, 0x7748, 0x7709, 0x778C, 
    0x78D4, 0x7A7F, 0x7C29, 0x7D72, 0x0000, 0xFBDF, 0xF138, 0xE2A7, 0xD2C8, 0x4438, 0x3991, 0x3570, 0x3677, 0x385E, 
    0x3964, 0x38C6, 0x376A, 0x360E, 0xF701, 0xF3A5, 0xEAF8, 0xDF1C, 0xD230, 0xB9AC, 0xC258, 0xC5B4, 0xC8A9, 0xCE26, 
    0xD11B, 0xCF53, 0xCB68, 0xC77D, 0x98DB, 0x9925, 0x99E7, 0x9AF0, 0x9C11, 0x1D1A, 0x1DDC, 0x1E26, 0x1B66, 0x164C, 
    0x138C, 0x1535, 0x18DA, 0x1C7F, 0x0000, 0xFE07, 0xF8D2, 0xF174, 0xE901, 0xE08D, 0xD92D, 0xD3F4, 0xD1F7, 0xD1F3, 
    0xD1F0, 0xD1EE, 0xD1ED, 0xD1EB, 0x2169, 0x2101, 0x1FF1, 0x1E71, 0x1CB8, 0x1B00, 0x1980, 0x1871, 0x180A, 0x180A, 
    0x180A, 0x180A, 0x180A, 0x180A, 0x088E, 0x063A, 0x0016, 0xF769, 0xED76, 0xE384, 0xDAD7, 0xD4B3, 0xD25F, 0xD25F, 
    0xD25F, 0xD25F, 0xD25F, 0xD25F, 0x1D56, 0x1D7E, 0x1DE9, 0x1E7F, 0x1F2C, 0x1FD8, 0x206E, 0x20D9, 0x2101, 0x2100, 
    0x2100, 0x2100, 0x2100, 0x2100, 0x02DA, 0x01DF, 0xFF4A, 0xFBA3, 0xF772, 0xF342, 0xEF9A, 0xED04, 0xEC09, 0xEC09, 
    0xEC09, 0xEC09, 0xEC09, 0xEC09, 0x1256, 0x0FEF, 0x099C, 0x00AB, 0xF66B, 0xEC2B, 0xE33B, 0xDCE9, 0xDA84, 0xDA85, 
    0xDA86, 0xDA87, 0xDA87, 0xDA87, 0x0000, 0x02B5, 0x09B1, 0x133D, 0x1DA5, 0xA732, 0xAE2E, 0xB0E4, 0xB0E6, 0xB0E7, 
    0xB0E8, 0xB0E7, 0xB0E6, 0xB0E4, 0x041B, 0x072E, 0x0F1A, 0x19ED, 0x25B8, 0x4F75, 0x478B, 0x447B, 0x4101, 0x3A89, 
    0x370D, 0x3926, 0x3DC3, 0x4261, 0x9185, 0x908F, 0x8E0F, 0x8AA3, 0x86E8, 0x037B, 0x00F9, 0x0000, 0x0000, 0xFFFF, 
    0xFFFF, 0xFFFF, 0x0000, 0x0000, 0x0000, 0x01EE, 0x0702, 0x0E30, 0x166B, 0x1EA5, 0x25D2, 0x2AE5, 0x2CD1, 0x2CD0, 
    0x2CD0, 0x2CCF, 0x2CCF, 0x2CCF, 0xE2AA, 0xE2AA, 0xE2AA, 0xE2AA, 0xE2AA, 0xE2AA, 0xE2AA, 0xE2AA, 0xE2AA, 0xE2AA, 
    0xE2AB, 0xE2AB, 0xE2AC, 0xE2AC, 0x0DDA, 0x0ADB, 0x02F6, 0xF7CE, 0xEB05, 0xDE3B, 0xD313, 0xCB2E, 0xC82E, 0xC82D, 
    0xC82C, 0xC82B, 0xC82B, 0xC82B, 0x0342, 0x044F, 0x0714, 0x0AFE, 0x0F7C, 0x13F9, 0x17E3, 0x1AA8, 0x1BB5, 0x1BB4, 
    0x1BB4, 0x1BB4, 0x1BB4, 0x1BB4, 0x0F7C, 0x0D42, 0x0766, 0xFF1C, 0xF59B, 0xEC1B, 0xE3D2, 0xDDF5, 0xDBBD, 0xDBBE, 
    0xDBBF, 0xDBBF, 0xDBBF, 0xDBBF, 0x0F7C, 0x0F7C, 0x0F7C, 0x0F7C, 0x0F7C, 0x0F7D, 0x0F7D, 0x0F7D, 0x0F7D, 0x0F7D, 
    0x0F7D, 0x0F7D, 0x0F7D, 0x0F7D, 0x0000, 0xFFF9, 0xFFE8, 0xFFD2, 0xFFB8, 0xFF9F, 0xFF8A, 0xFF7A, 0xFF75, 0xFF75, 
    0xFF76, 0xFF76, 0xFF76, 0xFF77, 0x3C55, 0x3A4C, 0x34ED, 0x2D55, 0x24A2, 0x1BF1, 0x145F, 0x0F0A, 0x0D0D, 0x0D1A, 
    0x0D22, 0x0D26, 0x0D26, 0x0D25, 0x1739, 0x1688, 0x14B5, 0x1220, 0x0F2A, 0x0C35, 0x09A0, 0x07CD, 0x071B, 0x071B, 
    0x071B, 0x071B, 0x071B, 0x071B, 0xF6A1, 0xF8C1, 0xFE5B, 0x0646, 0x0F5A, 0x186D, 0x2058, 0x25F1, 0x2810, 0x280F, 
    0x280D, 0x280C, 0x280A, 0x2809, 0xF3C7, 0xF3C0, 0xF3AD, 0xF392, 0xF373, 0xF354, 0xF339, 0xF326, 0xF31F, 0xF31F, 
    0xF31E, 0xF31E, 0xF31D, 0xF31C, 0x0000, 0xFFF7, 0xFFF1, 0xFFEB, 0xFFE7, 0xFFE3, 0xFFE0, 0xFFDD, 0xFFDA, 0xFFD7, 
    0xFFD6, 0xFFD5, 0xFFD4, 0xFFD3, 0x01A1, 0x03E1, 0x08CD, 0x0F7A, 0x16FE, 0x1E6F, 0x24E2, 0x296D, 0x2B26, 0x2B27, 
    0x2B2A, 0x2B2C, 0x2B2F, 0x2B30, 
};

JointIndex object_mk_Anim_000368JointIndices[] = {
    { 0x0000, 0x0004, 0x0000 },
    { 0x0002, 0x0000, 0x0002 },
    { 0x0000, 0x0012, 0x0020 },
    { 0x002E, 0x003C, 0x004A },
    { 0x0058, 0x0066, 0x0074 },
    { 0x0082, 0x0090, 0x009E },
    { 0x00AC, 0x00BA, 0x00C8 },
    { 0x00D6, 0x00E4, 0x00F2 },
    { 0x0003, 0x0100, 0x010E },
    { 0x0000, 0x0000, 0x011C },
    { 0x0000, 0x012A, 0x0138 },
    { 0x0146, 0x0000, 0x0154 },
    { 0x0162, 0x0170, 0x017E },
};

AnimationHeader object_mk_Anim_000368 = { 
    { 14 }, object_mk_Anim_000368FrameData,
    object_mk_Anim_000368JointIndices, 4
};

u8 object_mk_possiblePadding_000378[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 object_mk_Anim_000724FrameData[] = {
    0x0000, 0x0960, 0xC000, 0xCD67, 0x02D8, 0x0960, 0x0961, 0x0963, 0x0965, 0x0968, 0x096B, 0x096D, 0x096F, 0x0970, 
    0x096F, 0x096D, 0x0969, 0x0966, 0x0963, 0x0961, 0x0000, 0xFF99, 0xFEB4, 0xFDCF, 0xFD66, 0xFDAD, 0xFE65, 0xFF61, 
    0x0073, 0x016F, 0x0227, 0x026F, 0x0237, 0x01A5, 0x00DC, 0xFCF3, 0xFCF4, 0xFCF7, 0xFCFA, 0xFCFE, 0xFD03, 0xFD0A, 
    0xFD11, 0xFD17, 0xFD1D, 0xFD21, 0xFD21, 0xFD18, 0xFD07, 0xFCF7, 0x85A0, 0x859F, 0x859F, 0x859F, 0x859E, 0x859E, 
    0x859E, 0x859D, 0x859D, 0x859D, 0x859D, 0x859D, 0x859D, 0x859E, 0x859E, 0xF311, 0xF310, 0xF30E, 0xF30D, 0xF30D, 
    0xF30D, 0xF30F, 0xF311, 0xF311, 0xF310, 0xF30E, 0xF30D, 0xF30D, 0xF30D, 0xF30D, 0xEE26, 0xEE69, 0xEEF8, 0xEF87, 
    0xEFC8, 0xEF86, 0xEEF6, 0xEE67, 0xEE26, 0xEE69, 0xEEF8, 0xEF87, 0xEFC8, 0xEF85, 0xEEF4, 0x63DB, 0x63DC, 0x63DD, 
    0x63DD, 0x63DD, 0x63DC, 0x63DC, 0x63DB, 0x63DB, 0x63DC, 0x63DD, 0x63DD, 0x63DD, 0x63DC, 0x63DC, 0xD1F8, 0xD1F9, 
    0xD1F9, 0xD1F9, 0xD1F8, 0xD1F9, 0xD1F9, 0xD1F9, 0xD1F8, 0xD1F8, 0xD1F8, 0xD1F8, 0xD1F8, 0xD1F8, 0xD1F8, 0x2926, 
    0x26B4, 0x2442, 0x26B4, 0x2926, 0x26B4, 0x2442, 0x26B4, 0x2926, 0x2926, 0x2925, 0x2924, 0x2923, 0x2923, 0x2924, 
    0x405E, 0x405E, 0x405D, 0x405C, 0x405B, 0x405A, 0x4058, 0x4057, 0x4056, 0x4055, 0x4055, 0x4056, 0x4057, 0x4058, 
    0x405B, 0xED41, 0xED44, 0xED46, 0xED47, 0xED48, 0xED48, 0xED48, 0xED48, 0xED47, 0xED47, 0xED46, 0xED45, 0xED44, 
    0xED43, 0xED42, 0xEC77, 0xEC7C, 0xEC7F, 0xEC81, 0xEC82, 0xEC82, 0xEC81, 0xEC80, 0xEC7F, 0xEC7D, 0xEC7B, 0xEC79, 
    0xEC78, 0xEC77, 0xEC77, 0x10C4, 0x0FF2, 0x0E21, 0x0C4F, 0x0B7B, 0x0C4E, 0x0E1E, 0x0FF0, 0x10C4, 0x0FF2, 0x0E21, 
    0x0C4F, 0x0B7B, 0x0C4D, 0x0E1E, 0x5D88, 0x5D87, 0x5D86, 0x5D86, 0x5D86, 0x5D86, 0x5D88, 0x5D89, 0x5D88, 0x5D87, 
    0x5D86, 0x5D86, 0x5D86, 0x5D86, 0x5D88, 0x2CC7, 0x2CC6, 0x2CC5, 0x2CC4, 0x2CC3, 0x2CC1, 0x2CC0, 0x2CBF, 0x2CBE, 
    0x2CBE, 0x2CBD, 0x2CBE, 0x2CBF, 0x2CC1, 0x2CC3, 0xD328, 0xD32A, 0xD32A, 0xD32A, 0xD329, 0xD328, 0xD326, 0xD325, 
    0xD324, 0xD322, 0xD322, 0xD321, 0xD322, 0xD323, 0xD325, 0xCFD7, 0xCFD8, 0xCFD8, 0xCFD8, 0xCFD9, 0xCFD9, 0xCFD9, 
    0xCFD9, 0xCFD9, 0xCFD9, 0xCFD8, 0xCFD8, 0xCFD8, 0xCFD8, 0xCFD8, 0xC897, 0xC895, 0xC893, 0xC892, 0xC890, 0xC88E, 
    0xC88C, 0xC889, 0xD2B8, 0xDCE9, 0xD2B9, 0xC889, 0xD2B8, 0xDCE9, 0xD2C0, 0x1BB4, 0x1BB5, 0x1BB5, 0x1BB6, 0x1BB6, 
    0x1BB7, 0x1BB7, 0x1BB8, 0x1BB8, 0x1BB8, 0x1BB8, 0x1BB8, 0x1BB8, 0x1BB8, 0x1BB6, 0xDBBF, 0xDBC0, 0xDBC0, 0xDBC1, 
    0xDBC1, 0xDBC2, 0xDBC2, 0xDBC3, 0xDBC3, 0xDBC3, 0xDBC3, 0xDBC3, 0xDBC3, 0xDBC3, 0xDBC1, 0x0F7D, 0x0F7D, 0x0F7C, 
    0x0F7C, 0x0F7C, 0x0F7C, 0x0F7C, 0x0F7C, 0x0F7C, 0x0F7B, 0x0F7B, 0x0F7B, 0x0F7B, 0x0F7B, 0x0F7B, 0xFF77, 0xFF77, 
    0xFF77, 0xFF77, 0xFF77, 0xFF77, 0xFF77, 0xFF76, 0xFF76, 0xFF76, 0xFF76, 0xFF76, 0xFF75, 0xFF75, 0xFF75, 0x0D22, 
    0x0CFB, 0x0C95, 0x0C04, 0x0B5E, 0x0AB8, 0x0A27, 0x09C0, 0x0998, 0x09C9, 0x0A47, 0x0AF4, 0x0BB1, 0x0C5F, 0x0CDD, 
    0x071B, 0x071C, 0x071C, 0x071D, 0x071D, 0x071D, 0x071E, 0x071E, 0x071E, 0x071E, 0x071D, 0x071D, 0x071D, 0x071C, 
    0x071C, 0x2C57, 0x2C89, 0x2D09, 0x2DBE, 0x2E8D, 0x2F5D, 0x3011, 0x3091, 0x30C2, 0x3083, 0x2FE2, 0x2F05, 0x2E15, 
    0x2D38, 0x2C97, 0xF31C, 0xF31A, 0xF318, 0xF316, 0xF314, 0xF312, 0xF310, 0xF30F, 0xF30E, 0xF30E, 0xF30D, 0xF30C, 
    0xF30C, 0xF30E, 0xF313, 0xFFD3, 0xFFD3, 0xFFD3, 0xFFD2, 0xFFD1, 0xFFD1, 0xFFD0, 0xFFD0, 0xFFD0, 0xFFD0, 0xFFCF, 
    0xFFCF, 0xFFCF, 0xFFD0, 0xFFD1, 0x0A04, 0x0A39, 0x0AC6, 0x0B8E, 0x0C74, 0x0D59, 0x0E21, 0x0EAF, 0x0EE5, 0x0E9F, 
    0x0DED, 0x0CF9, 0x0BEF, 0x0AFB, 0x0A49, 0x0000, 
};

JointIndex object_mk_Anim_000724JointIndices[] = {
    { 0x0000, 0x0005, 0x0000 },
    { 0x0002, 0x0000, 0x0002 },
    { 0x0014, 0x0023, 0x0032 },
    { 0x0041, 0x0050, 0x005F },
    { 0x006E, 0x007D, 0x0003 },
    { 0x008C, 0x009B, 0x00AA },
    { 0x0004, 0x00B9, 0x00C8 },
    { 0x00D7, 0x00E6, 0x00F5 },
    { 0x0104, 0x0113, 0x0122 },
    { 0x0000, 0x0000, 0x0131 },
    { 0x0000, 0x0140, 0x014F },
    { 0x015E, 0x0000, 0x016D },
    { 0x017C, 0x018B, 0x019A },
};

AnimationHeader object_mk_Anim_000724 = { 
    { 15 }, object_mk_Anim_000724FrameData,
    object_mk_Anim_000724JointIndices, 5
};

u8 object_mk_possiblePadding_000734[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 object_mk_Anim_000AC0FrameData[] = {
    0x0000, 0x0960, 0xC000, 0xDD5E, 0x0F7D, 0xFF77, 0x071B, 0xC000, 0xBF61, 0xBEE4, 0xBE9A, 0xBE94, 0xBED1, 0xBF39, 
    0xBFBB, 0xC045, 0xC0C7, 0xC12F, 0xC16C, 0xC164, 0xC117, 0xC099, 0xC000, 0xFCF3, 0xFCF3, 0xFCF4, 0xFCF4, 0xFCF4, 
    0xFCF3, 0xFCF3, 0xFCF3, 0xFCF3, 0xFCF3, 0xFCF3, 0xFCF4, 0xFCF4, 0xFCF3, 0xFCF3, 0xFCF3, 0x7DF6, 0x7DC8, 0x7D5D, 
    0x7CE1, 0x7C82, 0x7C73, 0x7CF1, 0x7D9E, 0x7DF6, 0x7DAF, 0x7D19, 0x7C90, 0x7C73, 0x7CF0, 0x7D9D, 0x7DF6, 0x3570, 
    0x360F, 0x376B, 0x38C7, 0x3964, 0x38C6, 0x376A, 0x360E, 0x3570, 0x360F, 0x376B, 0x38C7, 0x3964, 0x38C6, 0x376A, 
    0x360E, 0xC5B4, 0xC77C, 0xCB67, 0xCF52, 0xD11B, 0xCF53, 0xCB68, 0xC77D, 0xC5B4, 0xC77C, 0xCB67, 0xCF52, 0xD11B, 
    0xCF53, 0xCB68, 0xC77D, 0x1E26, 0x1C7E, 0x18D9, 0x1534, 0x138C, 0x1535, 0x18DA, 0x1C7F, 0x1E26, 0x1C7E, 0x18D9, 
    0x1535, 0x138C, 0x1534, 0x18D7, 0x1C7B, 0xD1EB, 0xD1EB, 0xD1EB, 0xD1EB, 0xD1EC, 0xD1ED, 0xD1EE, 0xD1EF, 0xD1F1, 
    0xD1F2, 0xD1F3, 0xD1F4, 0xD1F5, 0xD1F6, 0xD1F6, 0xD1F7, 0x180A, 0x180A, 0x180A, 0x1809, 0x1809, 0x180A, 0x180A, 
    0x180A, 0x180A, 0x180A, 0x180A, 0x180A, 0x180A, 0x180A, 0x180A, 0x180A, 0xD25E, 0xD25E, 0xD25E, 0xD25E, 0xD25E, 
    0xD25E, 0xD25E, 0xD25E, 0xD25E, 0xD25E, 0xD25F, 0xD25F, 0xD25F, 0xD25F, 0xD25F, 0xD25F, 0x2100, 0x2100, 0x2100, 
    0x2100, 0x2101, 0x2101, 0x2101, 0x2101, 0x2101, 0x2101, 0x2101, 0x2101, 0x2101, 0x2101, 0x2101, 0x2101, 0xEC09, 
    0xEC09, 0xEC09, 0xEC09, 0xEC09, 0xEC09, 0xEC09, 0xEC09, 0xEC0A, 0xEC0A, 0xEC0A, 0xEC0A, 0xEC0A, 0xEC0A, 0xEC09, 
    0xEC09, 0xDA87, 0xDA86, 0xDA86, 0xDA85, 0xDA84, 0xDA84, 0xDA83, 0xDA82, 0xDA82, 0xDA81, 0xDA81, 0xDA81, 0xDA81, 
    0xDA82, 0xDA83, 0xDA84, 0xB0E4, 0xB0E5, 0xB0E7, 0xB0E7, 0xB0E8, 0xB0E7, 0xB0E6, 0xB0E4, 0xB0E4, 0xB0E6, 0xB0E7, 
    0xB0E8, 0xB0E8, 0xB0E7, 0xB0E6, 0xB0E3, 0x447B, 0x4263, 0x3DC5, 0x3927, 0x370D, 0x3926, 0x3DC3, 0x4261, 0x447B, 
    0x4263, 0x3DC6, 0x3927, 0x370D, 0x3925, 0x3DC0, 0x425C, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0x2CCF, 0x2CD0, 0x2CD0, 0x2CD1, 0x2CD1, 
    0x2CD2, 0x2CD2, 0x2CD3, 0x2CD3, 0x2CD3, 0x2CD4, 0x2CD4, 0x2CD3, 0x2CD3, 0x2CD2, 0x2CD1, 0xE2AD, 0xE2AE, 0xE2AF, 
    0xE2B0, 0xE2B0, 0xE2B1, 0xE2B1, 0xE2B2, 0xE2B2, 0xE2B2, 0xE2B1, 0xE2B1, 0xE2B0, 0xE2AE, 0xE2AC, 0xE2AA, 0xC82B, 
    0xC82C, 0xC82C, 0xC82D, 0xC82E, 0xC82F, 0xC830, 0xC831, 0xC831, 0xC832, 0xC832, 0xC832, 0xC832, 0xC831, 0xC830, 
    0xC82E, 0x1BB4, 0x1BB4, 0x1BB4, 0x1BB5, 0x1BB5, 0x1BB5, 0x1BB5, 0x1BB5, 0x1BB5, 0x1BB5, 0x1BB5, 0x1BB5, 0x1BB5, 
    0x1BB5, 0x1BB5, 0x1BB5, 0xDBBF, 0xDBBF, 0xDBBE, 0xDBBE, 0xDBBD, 0xDBBD, 0xDBBC, 0xDBBC, 0xDBBB, 0xDBBB, 0xDBBB, 
    0xDBBB, 0xDBBB, 0xDBBB, 0xDBBC, 0xDBBD, 0x0D22, 0x0DB2, 0x0EF5, 0x1039, 0x10CC, 0x1039, 0x0EF5, 0x0DB2, 0x0D22, 
    0x0DB6, 0x0EF9, 0x103A, 0x10CC, 0x103A, 0x0EF7, 0x0DB4, 0x2808, 0x278B, 0x267B, 0x256B, 0x24EF, 0x256B, 0x267B, 
    0x278C, 0x2808, 0x278C, 0x267B, 0x256B, 0x24EF, 0x256B, 0x267C, 0x278C, 0xF31C, 0xF31B, 0xF31B, 0xF31B, 0xF31C, 
    0xF31C, 0xF31C, 0xF31C, 0xF31C, 0xF31C, 0xF31C, 0xF31C, 0xF31C, 0xF31C, 0xF31C, 0xF31C, 0xFFD3, 0xFFD2, 0xFFD2, 
    0xFFD2, 0xFFD2, 0xFFD2, 0xFFD3, 0xFFD3, 0xFFD3, 0xFFD3, 0xFFD3, 0xFFD2, 0xFFD2, 0xFFD2, 0xFFD3, 0xFFD3, 0x2B30, 
    0x27FA, 0x20EB, 0x19DD, 0x16A8, 0x19DD, 0x20EC, 0x27FB, 0x2B30, 0x27FB, 0x20EC, 0x19DD, 0x16A8, 0x19DD, 0x20EC, 
    0x27FB, 0x0000, 
};

JointIndex object_mk_Anim_000AC0JointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0002, 0x0000, 0x0007 },
    { 0x0000, 0x0017, 0x0027 },
    { 0x0037, 0x0047, 0x0057 },
    { 0x0067, 0x0077, 0x0087 },
    { 0x0097, 0x00A7, 0x00B7 },
    { 0x00C7, 0x00D7, 0x00E7 },
    { 0x00F7, 0x0107, 0x0117 },
    { 0x0003, 0x0127, 0x0137 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0005, 0x0147 },
    { 0x0006, 0x0000, 0x0157 },
    { 0x0167, 0x0177, 0x0187 },
};

AnimationHeader object_mk_Anim_000AC0 = { 
    { 16 }, object_mk_Anim_000AC0FrameData,
    object_mk_Anim_000AC0JointIndices, 7
};

s16 object_mk_Anim_000D88FrameData[] = {
    0x0000, 0x0960, 0xC000, 0x7CBE, 0xF701, 0x98DB, 0x2169, 0x088E, 0x1D56, 0x02DA, 0x1256, 0x041B, 0x9185, 0xE2AA, 
    0x0DDA, 0xDD5E, 0x0342, 0x0F7C, 0xFAB4, 0xFAD6, 0xFB36, 0xFBCA, 0xFC89, 0xFD69, 0xFE61, 0xFF67, 0x0072, 0x0178, 
    0x0270, 0x0350, 0x040F, 0x04A3, 0x0503, 0x0525, 0x04FE, 0x0491, 0x03EA, 0x0313, 0x021A, 0x0109, 0xFFED, 0xFED0, 
    0xFDBF, 0xFCC6, 0xFBF0, 0xFB48, 0xFADB, 0x0000, 0x001B, 0x0068, 0x00DE, 0x0174, 0x0223, 0x02E3, 0x03AB, 0x0473, 
    0x0532, 0x05E1, 0x0678, 0x06ED, 0x073A, 0x0755, 0x073E, 0x06FA, 0x0692, 0x060C, 0x056F, 0x04C1, 0x0408, 0x034D, 
    0x0295, 0x01E7, 0x0149, 0x00C3, 0x005B, 0x0018, 0x0F7C, 0x0F52, 0x0EE0, 0x0E2F, 0x0D4D, 0x0C46, 0x0B27, 0x09FB, 
    0x08D0, 0x07B0, 0x06AA, 0x05C8, 0x0517, 0x04A4, 0x047B, 0x049F, 0x0504, 0x05A0, 0x0669, 0x0755, 0x085B, 0x096F, 
    0x0A88, 0x0B9C, 0x0CA1, 0x0D8E, 0x0E57, 0x0EF3, 0x0F58, 0x0000, 0xFF32, 0xFE57, 0xFD7F, 0xFCBA, 0xFC19, 0xFBAC, 
    0xFB85, 0xFBAE, 0xFC1E, 0xFCC3, 0xFD8B, 0xFE64, 0xFF3C, 0x0000, 0x00CE, 0x01C0, 0x02C3, 0x03C3, 0x04AD, 0x056C, 
    0x05ED, 0x061D, 0x05DE, 0x0535, 0x0443, 0x0326, 0x01FC, 0x00E5, 0x3C55, 0x3D74, 0x3E9E, 0x3FBF, 0x40C3, 0x4196, 
    0x4224, 0x4258, 0x4222, 0x418F, 0x40B6, 0x3FAD, 0x3E8B, 0x3D66, 0x3C55, 0x3B2F, 0x39CF, 0x3854, 0x36DA, 0x3581, 
    0x3465, 0x33A5, 0x335F, 0x33BC, 0x34B6, 0x361D, 0x37C2, 0x3977, 0x3B0D, 0x1739, 0x1810, 0x1846, 0x17F6, 0x1739, 
    0x15D0, 0x13C5, 0x119F, 0x0FE4, 0x0E8F, 0x0D4B, 0x0C22, 0x0B21, 0x0A54, 0x09C7, 0x0963, 0x090C, 0x08CD, 0x08AE, 
    0x08B8, 0x08F6, 0x0970, 0x0A30, 0x0B6C, 0x0D34, 0x0F53, 0x1197, 0x13CC, 0x15BE, 0xF6A1, 0xF78F, 0xF909, 0xFA87, 
    0xFB85, 0xFBB4, 0xFB69, 0xFB15, 0xFB25, 0xFBCF, 0xFCD2, 0xFDF1, 0xFEF0, 0xFF91, 0xFF98, 0xFEFB, 0xFDF2, 0xFC9F, 
    0xFB21, 0xF99C, 0xF831, 0xF701, 0xF62E, 0xF5B5, 0xF576, 0xF56A, 0xF58A, 0xF5CD, 0xF62D, 0xF3C7, 0xF448, 0xF52A, 
    0xF65A, 0xF7C2, 0xF94D, 0xFAE8, 0xFC7C, 0xFDF6, 0xFFAB, 0x01C2, 0x03E8, 0x05C7, 0x0709, 0x075A, 0x06D0, 0x05CB, 
    0x0466, 0x02BB, 0x00E6, 0xFF00, 0xFD25, 0xFB6F, 0xF9F8, 0xF890, 0xF714, 0xF5AE, 0xF48C, 0xF3DB, 0x0000, 0x005B, 
    0x00E3, 0x0188, 0x023C, 0x02F1, 0x0396, 0x041F, 0x047B, 0x04A0, 0x0496, 0x0468, 0x0426, 0x03DC, 0x0398, 0x0357, 
    0x030F, 0x02C2, 0x0271, 0x021F, 0x01CE, 0x0180, 0x0137, 0x00F5, 0x00AF, 0x0062, 0x001C, 0xFFEB, 0xFFDD, 0x01A1, 
    0x01C5, 0x0335, 0x0587, 0x0851, 0x0B29, 0x0DA6, 0x0F5D, 0x0FE4, 0x0E67, 0x0B03, 0x06BE, 0x029C, 0xFF9F, 0xFECD, 
    0x0028, 0x02C3, 0x0640, 0x0A40, 0x0E64, 0x124C, 0x159A, 0x17EF, 0x18EB, 0x176A, 0x1356, 0x0DE6, 0x0853, 0x03D4, 
    
};

JointIndex object_mk_Anim_000D88JointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0002, 0x0000, 0x0002 },
    { 0x0000, 0x0012, 0x0003 },
    { 0x0000, 0x0004, 0x0005 },
    { 0x0000, 0x0006, 0x0007 },
    { 0x0008, 0x0009, 0x000A },
    { 0x0000, 0x000B, 0x000C },
    { 0x0000, 0x000D, 0x000E },
    { 0x000F, 0x0010, 0x0011 },
    { 0x0000, 0x002F, 0x004C },
    { 0x0000, 0x0069, 0x0086 },
    { 0x00A3, 0x0000, 0x00C0 },
    { 0x00DD, 0x00FA, 0x0117 },
};

AnimationHeader object_mk_Anim_000D88 = { 
    { 29 }, object_mk_Anim_000D88FrameData,
    object_mk_Anim_000D88JointIndices, 18
};

u8 object_mk_possiblePadding_000D98[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_mkVtx_000DA0[] = {
#include "assets/objects/object_mk/object_mkVtx_000DA0.vtx.inc"
};

Gfx object_mk_DL_003470[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_mkVtx_000DA0[539], 13, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_0052B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[552], 18, 13),
    gsSP2Triangles(13, 6, 1, 0, 6, 14, 15, 0),
    gsSP2Triangles(16, 0, 2, 0, 4, 17, 18, 0),
    gsSP2Triangles(19, 1, 4, 0, 20, 4, 0, 0),
    gsSP2Triangles(2, 21, 22, 0, 0, 23, 24, 0),
    gsSP2Triangles(25, 26, 2, 0, 2, 11, 27, 0),
    gsSP2Triangles(11, 3, 28, 0, 29, 30, 11, 0),
    gsSPVertex(&object_mkVtx_000DA0[570], 16, 13),
    gsSP2Triangles(13, 14, 9, 0, 3, 9, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005BF0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(5, 16, 17, 0, 18, 19, 5, 0),
    gsSP2Triangles(20, 21, 12, 0, 12, 22, 23, 0),
    gsSP2Triangles(24, 25, 7, 0, 10, 8, 26, 0),
    gsSP1Triangle(10, 27, 28, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_0052B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_mkVtx_000DA0[586], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005BF0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSPEndDisplayList(),
};

Gfx object_mk_DL_003760[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_mkVtx_000DA0[305], 13, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_0052B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[318], 15, 13),
    gsSP2Triangles(13, 14, 6, 0, 1, 0, 15, 0),
    gsSP2Triangles(16, 1, 17, 0, 6, 1, 18, 0),
    gsSP2Triangles(2, 19, 20, 0, 21, 0, 2, 0),
    gsSP2Triangles(22, 3, 8, 0, 23, 3, 24, 0),
    gsSP2Triangles(25, 2, 3, 0, 8, 26, 27, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_mkVtx_000DA0[333], 15, 13),
    gsSP2Triangles(13, 14, 10, 0, 10, 15, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005BF0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 11, 4, 0, 5, 12, 18, 0),
    gsSP2Triangles(19, 9, 5, 0, 4, 7, 20, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_0052B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP1Triangle(27, 25, 24, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_mkVtx_000DA0[348], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_mk_DL_003AB0[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_mkVtx_000DA0[285], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[289], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 6, 7, 3, 0),
    gsSP2Triangles(3, 0, 8, 0, 0, 1, 9, 0),
    gsSP2Triangles(10, 1, 2, 0, 11, 2, 3, 0),
    gsSP2Triangles(3, 12, 13, 0, 2, 14, 15, 0),
    gsSPVertex(&object_mkVtx_000DA0[301], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_mk_DL_003BC8[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_mkVtx_000DA0[54], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[58], 20, 4),
    gsSP2Triangles(0, 4, 5, 0, 1, 6, 7, 0),
    gsSP2Triangles(1, 8, 9, 0, 0, 10, 11, 0),
    gsSP2Triangles(2, 12, 0, 0, 2, 13, 14, 0),
    gsSP2Triangles(2, 1, 15, 0, 16, 1, 3, 0),
    gsSP2Triangles(17, 18, 3, 0, 0, 19, 3, 0),
    gsSP2Triangles(20, 21, 0, 0, 22, 23, 1, 0),
    gsSPVertex(&object_mkVtx_000DA0[78], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 9, 0, 15, 16, 17, 0),
    gsSP2Triangles(14, 16, 15, 0, 14, 18, 16, 0),
    gsSP2Triangles(19, 20, 21, 0, 11, 19, 22, 0),
    gsSP2Triangles(23, 13, 12, 0, 23, 24, 13, 0),
    gsSP2Triangles(7, 9, 15, 0, 25, 9, 7, 0),
    gsSP2Triangles(26, 27, 28, 0, 25, 29, 9, 0),
    gsSPVertex(&object_mkVtx_000DA0[108], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 16, 15, 0, 14, 19, 15, 0),
    gsSP2Triangles(17, 14, 15, 0, 20, 14, 17, 0),
    gsSP2Triangles(16, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(20, 23, 25, 0, 26, 23, 20, 0),
    gsSP2Triangles(14, 20, 25, 0, 27, 14, 13, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_mkVtx_000DA0[139], 12, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005270, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0),
    gsSP2Triangles(7, 3, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 11, 4, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_0052B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_mkVtx_000DA0[151], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 19, 0, 20, 21, 12, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_mkVtx_000DA0[182], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(3, 18, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_0052F0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[201], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 12, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005170, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP1Triangle(18, 20, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_0052F0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_mkVtx_000DA0[222], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 10, 9, 0, 13, 7, 6, 0),
    gsSP2Triangles(5, 4, 14, 0, 13, 15, 7, 0),
    gsSP2Triangles(5, 16, 3, 0, 10, 12, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 23, 0),
    gsSP2Triangles(29, 24, 26, 0, 30, 20, 19, 0),
    gsSP1Triangle(31, 20, 30, 0),
    gsSPVertex(&object_mkVtx_000DA0[254], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mk_Tex_005370, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(9, 10, 11, 0, 12, 10, 9, 0),
    gsSP2Triangles(9, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 13, 11, 0, 15, 14, 11, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 17, 19, 0),
    gsSP2Triangles(19, 16, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(16, 21, 15, 0, 16, 20, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005B70, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(22, 23, 24, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005BB0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSPEndDisplayList(),
};

Gfx object_mk_DL_0042D0[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_mkVtx_000DA0, 6, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[6], 21, 6),
    gsSP2Triangles(6, 7, 0, 0, 0, 2, 8, 0),
    gsSP2Triangles(9, 1, 0, 0, 10, 4, 1, 0),
    gsSP2Triangles(1, 11, 12, 0, 13, 14, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005170, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(15, 3, 5, 0, 16, 3, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005130, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(18, 19, 20, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 19, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(25, 26, 23, 0, 25, 23, 19, 0),
    gsSP1Triangle(23, 21, 20, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005170, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_mkVtx_000DA0[27], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 6, 3, 7, 0),
    gsSP2Triangles(2, 5, 0, 0, 3, 6, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(10, 9, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005270, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(17, 21, 20, 0, 23, 19, 18, 0),
    gsSP2Triangles(18, 24, 23, 0, 25, 21, 23, 0),
    gsSP2Triangles(22, 21, 25, 0, 23, 24, 26, 0),
    gsSPEndDisplayList(),
};

Gfx object_mk_DL_004650[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_mkVtx_000DA0[512], 5, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005BF0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[517], 12, 5),
    gsSP2Triangles(5, 6, 3, 0, 4, 7, 8, 0),
    gsSP2Triangles(9, 0, 10, 0, 11, 0, 4, 0),
    gsSP2Triangles(0, 12, 2, 0, 2, 13, 1, 0),
    gsSP2Triangles(14, 1, 15, 0, 3, 1, 16, 0),
    gsSPVertex(&object_mkVtx_000DA0[529], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 4, 0, 1, 7, 8, 0),
    gsSP2Triangles(0, 9, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(8, 2, 1, 0, 2, 9, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_mk_DL_004780[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_mkVtx_000DA0[485], 5, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005BF0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[490], 12, 5),
    gsSP2Triangles(5, 6, 2, 0, 3, 7, 8, 0),
    gsSP2Triangles(9, 10, 1, 0, 1, 11, 12, 0),
    gsSP2Triangles(13, 0, 3, 0, 1, 2, 14, 0),
    gsSP2Triangles(15, 4, 1, 0, 2, 0, 16, 0),
    gsSPVertex(&object_mkVtx_000DA0[502], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(2, 4, 5, 0, 5, 4, 6, 0),
    gsSP2Triangles(2, 7, 0, 0, 0, 8, 3, 0),
    gsSP2Triangles(5, 7, 2, 0, 6, 9, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_mk_DL_0048B0[] = {
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_mkVtx_000DA0[446], 7, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005C30, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[453], 18, 7),
    gsSP2Triangles(7, 8, 2, 0, 0, 9, 10, 0),
    gsSP2Triangles(11, 0, 4, 0, 3, 12, 4, 0),
    gsSP2Triangles(5, 13, 14, 0, 15, 6, 16, 0),
    gsSP2Triangles(17, 6, 18, 0, 3, 19, 20, 0),
    gsSP2Triangles(1, 21, 22, 0, 3, 1, 23, 0),
    gsSP1Triangle(24, 1, 0, 0),
    gsSPVertex(&object_mkVtx_000DA0[471], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(2, 3, 0, 0, 3, 2, 10, 0),
    gsSP2Triangles(11, 12, 1, 0, 12, 11, 9, 0),
    gsSP2Triangles(3, 10, 1, 0, 9, 11, 7, 0),
    gsSP1Triangle(4, 6, 13, 0),
    gsSPEndDisplayList(),
};

Gfx object_mk_DL_004A00[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_mkVtx_000DA0[419], 5, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005BF0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[424], 12, 5),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 4, 0),
    gsSP2Triangles(9, 0, 10, 0, 4, 0, 11, 0),
    gsSP2Triangles(2, 12, 0, 0, 1, 13, 2, 0),
    gsSP2Triangles(14, 1, 15, 0, 16, 1, 3, 0),
    gsSPVertex(&object_mkVtx_000DA0[436], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 1, 0),
    gsSP2Triangles(4, 9, 2, 0, 6, 4, 3, 0),
    gsSP2Triangles(1, 0, 7, 0, 2, 9, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_mk_DL_004B30[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_mkVtx_000DA0[392], 5, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005BF0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[397], 12, 5),
    gsSP2Triangles(2, 5, 6, 0, 7, 8, 3, 0),
    gsSP2Triangles(1, 9, 10, 0, 11, 12, 1, 0),
    gsSP2Triangles(3, 0, 13, 0, 14, 2, 1, 0),
    gsSP2Triangles(1, 4, 15, 0, 16, 0, 2, 0),
    gsSPVertex(&object_mkVtx_000DA0[409], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 6, 5, 4, 0),
    gsSP2Triangles(2, 7, 0, 0, 3, 8, 2, 0),
    gsSP2Triangles(0, 7, 4, 0, 4, 9, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_mk_DL_004C60[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_mkVtx_000DA0[353], 7, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005C30, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_mkVtx_000DA0[360], 18, 7),
    gsSP2Triangles(2, 7, 8, 0, 9, 10, 0, 0),
    gsSP2Triangles(4, 0, 11, 0, 4, 12, 3, 0),
    gsSP2Triangles(13, 14, 5, 0, 15, 6, 16, 0),
    gsSP2Triangles(17, 6, 18, 0, 19, 20, 3, 0),
    gsSP2Triangles(21, 22, 1, 0, 23, 1, 3, 0),
    gsSP1Triangle(0, 1, 24, 0),
    gsSPVertex(&object_mkVtx_000DA0[378], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(2, 3, 0, 0, 10, 0, 3, 0),
    gsSP2Triangles(1, 11, 12, 0, 7, 12, 11, 0),
    gsSP2Triangles(1, 10, 3, 0, 9, 12, 7, 0),
    gsSP1Triangle(13, 4, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_mk_DL_004DB0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_0052B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_mkVtx_000DA0[604], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 5, 0, 0),
    gsSP2Triangles(4, 6, 2, 0, 4, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(10, 12, 11, 0, 5, 3, 11, 0),
    gsSP1Triangle(11, 12, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mk_TLUT_004F30),
    gsDPLoadTextureBlock(object_mk_Tex_005BF0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(13, 14, 15, 0, 15, 16, 13, 0),
    gsSPEndDisplayList(),
};

u64 object_mk_TLUT_004F30[] = {
#include "assets/objects/object_mk/tlut_00004F30.rgba16.inc.c"
};

u64 object_mk_Tex_005130[] = {
#include "assets/objects/object_mk/tex_00005130.ci8.inc.c"
};

u64 object_mk_Tex_005170[] = {
#include "assets/objects/object_mk/tex_00005170.ci8.inc.c"
};

u64 object_mk_Tex_005270[] = {
#include "assets/objects/object_mk/tex_00005270.ci8.inc.c"
};

u64 object_mk_Tex_0052B0[] = {
#include "assets/objects/object_mk/tex_000052B0.ci8.inc.c"
};

u64 object_mk_Tex_0052F0[] = {
#include "assets/objects/object_mk/tex_000052F0.ci8.inc.c"
};

u64 object_mk_Tex_005370[] = {
#include "assets/objects/object_mk/tex_00005370.rgba16.inc.c"
};

u64 object_mk_Tex_005B70[] = {
#include "assets/objects/object_mk/tex_00005B70.ci8.inc.c"
};

u64 object_mk_Tex_005BB0[] = {
#include "assets/objects/object_mk/tex_00005BB0.ci8.inc.c"
};

u64 object_mk_Tex_005BF0[] = {
#include "assets/objects/object_mk/tex_00005BF0.ci8.inc.c"
};

u64 object_mk_Tex_005C30[] = {
#include "assets/objects/object_mk/tex_00005C30.ci8.inc.c"
};

StandardLimb object_mk_Limb_005D30 = { 
    { 0, 2400, 0 }, 0x01, LIMB_DONE,
    object_mk_DL_004DB0
};

StandardLimb object_mk_Limb_005D3C = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    object_mk_DL_003470
};

StandardLimb object_mk_Limb_005D48 = { 
    { 900, -150, 600 }, 0x03, 0x05,
    object_mk_DL_004A00
};

StandardLimb object_mk_Limb_005D54 = { 
    { 901, 0, 0 }, 0x04, LIMB_DONE,
    object_mk_DL_004B30
};

StandardLimb object_mk_Limb_005D60 = { 
    { 800, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_mk_DL_004C60
};

StandardLimb object_mk_Limb_005D6C = { 
    { 900, -150, -600 }, 0x06, 0x08,
    object_mk_DL_004650
};

StandardLimb object_mk_Limb_005D78 = { 
    { 900, 0, 0 }, 0x07, LIMB_DONE,
    object_mk_DL_004780
};

StandardLimb object_mk_Limb_005D84 = { 
    { 800, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_mk_DL_0048B0
};

StandardLimb object_mk_Limb_005D90 = { 
    { 1200, 0, 0 }, 0x09, LIMB_DONE,
    object_mk_DL_003760
};

StandardLimb object_mk_Limb_005D9C = { 
    { 350, 450, 0 }, 0x0A, LIMB_DONE,
    object_mk_DL_003AB0
};

StandardLimb object_mk_Limb_005DA8 = { 
    { 900, 0, 0 }, 0x0B, LIMB_DONE,
    object_mk_DL_003BC8
};

StandardLimb object_mk_Limb_005DB4 = { 
    { 750, 450, 0 }, LIMB_DONE, LIMB_DONE,
    object_mk_DL_0042D0
};

void* object_mk_Skel_005DF0Limbs[] = {
    &object_mk_Limb_005D30,
    &object_mk_Limb_005D3C,
    &object_mk_Limb_005D48,
    &object_mk_Limb_005D54,
    &object_mk_Limb_005D60,
    &object_mk_Limb_005D6C,
    &object_mk_Limb_005D78,
    &object_mk_Limb_005D84,
    &object_mk_Limb_005D90,
    &object_mk_Limb_005D9C,
    &object_mk_Limb_005DA8,
    &object_mk_Limb_005DB4,
};

FlexSkeletonHeader object_mk_Skel_005DF0 = { 
    { object_mk_Skel_005DF0Limbs, ARRAY_COUNT(object_mk_Skel_005DF0Limbs) }, 12
};

