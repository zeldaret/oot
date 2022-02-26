#include "global.h"

static u16 sATan2Tbl[] = {
    0x0000, 0x000A, 0x0014, 0x001F, 0x0029, 0x0033, 0x003D, 0x0047, 0x0051, 0x005C, 0x0066, 0x0070, 0x007A, 0x0084,
    0x008F, 0x0099, 0x00A3, 0x00AD, 0x00B7, 0x00C2, 0x00CC, 0x00D6, 0x00E0, 0x00EA, 0x00F4, 0x00FF, 0x0109, 0x0113,
    0x011D, 0x0127, 0x0131, 0x013C, 0x0146, 0x0150, 0x015A, 0x0164, 0x016F, 0x0179, 0x0183, 0x018D, 0x0197, 0x01A1,
    0x01AC, 0x01B6, 0x01C0, 0x01CA, 0x01D4, 0x01DE, 0x01E9, 0x01F3, 0x01FD, 0x0207, 0x0211, 0x021B, 0x0226, 0x0230,
    0x023A, 0x0244, 0x024E, 0x0258, 0x0262, 0x026D, 0x0277, 0x0281, 0x028B, 0x0295, 0x029F, 0x02A9, 0x02B4, 0x02BE,
    0x02C8, 0x02D2, 0x02DC, 0x02E6, 0x02F0, 0x02FB, 0x0305, 0x030F, 0x0319, 0x0323, 0x032D, 0x0337, 0x0341, 0x034C,
    0x0356, 0x0360, 0x036A, 0x0374, 0x037E, 0x0388, 0x0392, 0x039C, 0x03A7, 0x03B1, 0x03BB, 0x03C5, 0x03CF, 0x03D9,
    0x03E3, 0x03ED, 0x03F7, 0x0401, 0x040C, 0x0416, 0x0420, 0x042A, 0x0434, 0x043E, 0x0448, 0x0452, 0x045C, 0x0466,
    0x0470, 0x047A, 0x0484, 0x048E, 0x0499, 0x04A3, 0x04AD, 0x04B7, 0x04C1, 0x04CB, 0x04D5, 0x04DF, 0x04E9, 0x04F3,
    0x04FD, 0x0507, 0x0511, 0x051B, 0x0525, 0x052F, 0x0539, 0x0543, 0x054D, 0x0557, 0x0561, 0x056B, 0x0575, 0x057F,
    0x0589, 0x0593, 0x059D, 0x05A7, 0x05B1, 0x05BB, 0x05C5, 0x05CF, 0x05D9, 0x05E3, 0x05ED, 0x05F7, 0x0601, 0x060B,
    0x0615, 0x061F, 0x0629, 0x0633, 0x063D, 0x0647, 0x0651, 0x065B, 0x0665, 0x066E, 0x0678, 0x0682, 0x068C, 0x0696,
    0x06A0, 0x06AA, 0x06B4, 0x06BE, 0x06C8, 0x06D2, 0x06DC, 0x06E5, 0x06EF, 0x06F9, 0x0703, 0x070D, 0x0717, 0x0721,
    0x072B, 0x0735, 0x073E, 0x0748, 0x0752, 0x075C, 0x0766, 0x0770, 0x077A, 0x0783, 0x078D, 0x0797, 0x07A1, 0x07AB,
    0x07B5, 0x07BE, 0x07C8, 0x07D2, 0x07DC, 0x07E6, 0x07EF, 0x07F9, 0x0803, 0x080D, 0x0817, 0x0820, 0x082A, 0x0834,
    0x083E, 0x0848, 0x0851, 0x085B, 0x0865, 0x086F, 0x0878, 0x0882, 0x088C, 0x0896, 0x089F, 0x08A9, 0x08B3, 0x08BD,
    0x08C6, 0x08D0, 0x08DA, 0x08E3, 0x08ED, 0x08F7, 0x0901, 0x090A, 0x0914, 0x091E, 0x0927, 0x0931, 0x093B, 0x0944,
    0x094E, 0x0958, 0x0961, 0x096B, 0x0975, 0x097E, 0x0988, 0x0992, 0x099B, 0x09A5, 0x09AE, 0x09B8, 0x09C2, 0x09CB,
    0x09D5, 0x09DE, 0x09E8, 0x09F2, 0x09FB, 0x0A05, 0x0A0E, 0x0A18, 0x0A22, 0x0A2B, 0x0A35, 0x0A3E, 0x0A48, 0x0A51,
    0x0A5B, 0x0A64, 0x0A6E, 0x0A77, 0x0A81, 0x0A8B, 0x0A94, 0x0A9E, 0x0AA7, 0x0AB1, 0x0ABA, 0x0AC4, 0x0ACD, 0x0AD7,
    0x0AE0, 0x0AE9, 0x0AF3, 0x0AFC, 0x0B06, 0x0B0F, 0x0B19, 0x0B22, 0x0B2C, 0x0B35, 0x0B3F, 0x0B48, 0x0B51, 0x0B5B,
    0x0B64, 0x0B6E, 0x0B77, 0x0B80, 0x0B8A, 0x0B93, 0x0B9D, 0x0BA6, 0x0BAF, 0x0BB9, 0x0BC2, 0x0BCB, 0x0BD5, 0x0BDE,
    0x0BE7, 0x0BF1, 0x0BFA, 0x0C03, 0x0C0D, 0x0C16, 0x0C1F, 0x0C29, 0x0C32, 0x0C3B, 0x0C45, 0x0C4E, 0x0C57, 0x0C60,
    0x0C6A, 0x0C73, 0x0C7C, 0x0C86, 0x0C8F, 0x0C98, 0x0CA1, 0x0CAB, 0x0CB4, 0x0CBD, 0x0CC6, 0x0CCF, 0x0CD9, 0x0CE2,
    0x0CEB, 0x0CF4, 0x0CFD, 0x0D07, 0x0D10, 0x0D19, 0x0D22, 0x0D2B, 0x0D34, 0x0D3E, 0x0D47, 0x0D50, 0x0D59, 0x0D62,
    0x0D6B, 0x0D74, 0x0D7D, 0x0D87, 0x0D90, 0x0D99, 0x0DA2, 0x0DAB, 0x0DB4, 0x0DBD, 0x0DC6, 0x0DCF, 0x0DD8, 0x0DE1,
    0x0DEA, 0x0DF3, 0x0DFC, 0x0E05, 0x0E0F, 0x0E18, 0x0E21, 0x0E2A, 0x0E33, 0x0E3C, 0x0E45, 0x0E4E, 0x0E56, 0x0E5F,
    0x0E68, 0x0E71, 0x0E7A, 0x0E83, 0x0E8C, 0x0E95, 0x0E9E, 0x0EA7, 0x0EB0, 0x0EB9, 0x0EC2, 0x0ECB, 0x0ED4, 0x0EDC,
    0x0EE5, 0x0EEE, 0x0EF7, 0x0F00, 0x0F09, 0x0F12, 0x0F1B, 0x0F23, 0x0F2C, 0x0F35, 0x0F3E, 0x0F47, 0x0F50, 0x0F58,
    0x0F61, 0x0F6A, 0x0F73, 0x0F7C, 0x0F84, 0x0F8D, 0x0F96, 0x0F9F, 0x0FA7, 0x0FB0, 0x0FB9, 0x0FC2, 0x0FCA, 0x0FD3,
    0x0FDC, 0x0FE5, 0x0FED, 0x0FF6, 0x0FFF, 0x1007, 0x1010, 0x1019, 0x1021, 0x102A, 0x1033, 0x103B, 0x1044, 0x104D,
    0x1055, 0x105E, 0x1067, 0x106F, 0x1078, 0x1080, 0x1089, 0x1092, 0x109A, 0x10A3, 0x10AB, 0x10B4, 0x10BC, 0x10C5,
    0x10CE, 0x10D6, 0x10DF, 0x10E7, 0x10F0, 0x10F8, 0x1101, 0x1109, 0x1112, 0x111A, 0x1123, 0x112B, 0x1134, 0x113C,
    0x1145, 0x114D, 0x1156, 0x115E, 0x1166, 0x116F, 0x1177, 0x1180, 0x1188, 0x1191, 0x1199, 0x11A1, 0x11AA, 0x11B2,
    0x11BB, 0x11C3, 0x11CB, 0x11D4, 0x11DC, 0x11E4, 0x11ED, 0x11F5, 0x11FD, 0x1206, 0x120E, 0x1216, 0x121F, 0x1227,
    0x122F, 0x1237, 0x1240, 0x1248, 0x1250, 0x1259, 0x1261, 0x1269, 0x1271, 0x127A, 0x1282, 0x128A, 0x1292, 0x129A,
    0x12A3, 0x12AB, 0x12B3, 0x12BB, 0x12C3, 0x12CC, 0x12D4, 0x12DC, 0x12E4, 0x12EC, 0x12F4, 0x12FC, 0x1305, 0x130D,
    0x1315, 0x131D, 0x1325, 0x132D, 0x1335, 0x133D, 0x1345, 0x134D, 0x1355, 0x135E, 0x1366, 0x136E, 0x1376, 0x137E,
    0x1386, 0x138E, 0x1396, 0x139E, 0x13A6, 0x13AE, 0x13B6, 0x13BE, 0x13C6, 0x13CE, 0x13D6, 0x13DE, 0x13E6, 0x13ED,
    0x13F5, 0x13FD, 0x1405, 0x140D, 0x1415, 0x141D, 0x1425, 0x142D, 0x1435, 0x143D, 0x1444, 0x144C, 0x1454, 0x145C,
    0x1464, 0x146C, 0x1473, 0x147B, 0x1483, 0x148B, 0x1493, 0x149B, 0x14A2, 0x14AA, 0x14B2, 0x14BA, 0x14C1, 0x14C9,
    0x14D1, 0x14D9, 0x14E0, 0x14E8, 0x14F0, 0x14F8, 0x14FF, 0x1507, 0x150F, 0x1516, 0x151E, 0x1526, 0x152D, 0x1535,
    0x153D, 0x1544, 0x154C, 0x1554, 0x155B, 0x1563, 0x156B, 0x1572, 0x157A, 0x1581, 0x1589, 0x1591, 0x1598, 0x15A0,
    0x15A7, 0x15AF, 0x15B7, 0x15BE, 0x15C6, 0x15CD, 0x15D5, 0x15DC, 0x15E4, 0x15EB, 0x15F3, 0x15FA, 0x1602, 0x1609,
    0x1611, 0x1618, 0x1620, 0x1627, 0x162F, 0x1636, 0x163E, 0x1645, 0x164C, 0x1654, 0x165B, 0x1663, 0x166A, 0x1671,
    0x1679, 0x1680, 0x1688, 0x168F, 0x1696, 0x169E, 0x16A5, 0x16AC, 0x16B4, 0x16BB, 0x16C2, 0x16CA, 0x16D1, 0x16D8,
    0x16E0, 0x16E7, 0x16EE, 0x16F6, 0x16FD, 0x1704, 0x170B, 0x1713, 0x171A, 0x1721, 0x1728, 0x1730, 0x1737, 0x173E,
    0x1745, 0x174C, 0x1754, 0x175B, 0x1762, 0x1769, 0x1770, 0x1778, 0x177F, 0x1786, 0x178D, 0x1794, 0x179B, 0x17A2,
    0x17AA, 0x17B1, 0x17B8, 0x17BF, 0x17C6, 0x17CD, 0x17D4, 0x17DB, 0x17E2, 0x17E9, 0x17F0, 0x17F7, 0x17FE, 0x1806,
    0x180D, 0x1814, 0x181B, 0x1822, 0x1829, 0x1830, 0x1837, 0x183E, 0x1845, 0x184C, 0x1853, 0x185A, 0x1860, 0x1867,
    0x186E, 0x1875, 0x187C, 0x1883, 0x188A, 0x1891, 0x1898, 0x189F, 0x18A6, 0x18AD, 0x18B3, 0x18BA, 0x18C1, 0x18C8,
    0x18CF, 0x18D6, 0x18DD, 0x18E3, 0x18EA, 0x18F1, 0x18F8, 0x18FF, 0x1906, 0x190C, 0x1913, 0x191A, 0x1921, 0x1928,
    0x192E, 0x1935, 0x193C, 0x1943, 0x1949, 0x1950, 0x1957, 0x195D, 0x1964, 0x196B, 0x1972, 0x1978, 0x197F, 0x1986,
    0x198C, 0x1993, 0x199A, 0x19A0, 0x19A7, 0x19AE, 0x19B4, 0x19BB, 0x19C2, 0x19C8, 0x19CF, 0x19D5, 0x19DC, 0x19E3,
    0x19E9, 0x19F0, 0x19F6, 0x19FD, 0x1A04, 0x1A0A, 0x1A11, 0x1A17, 0x1A1E, 0x1A24, 0x1A2B, 0x1A31, 0x1A38, 0x1A3E,
    0x1A45, 0x1A4B, 0x1A52, 0x1A58, 0x1A5F, 0x1A65, 0x1A6C, 0x1A72, 0x1A79, 0x1A7F, 0x1A86, 0x1A8C, 0x1A93, 0x1A99,
    0x1A9F, 0x1AA6, 0x1AAC, 0x1AB3, 0x1AB9, 0x1AC0, 0x1AC6, 0x1ACC, 0x1AD3, 0x1AD9, 0x1ADF, 0x1AE6, 0x1AEC, 0x1AF2,
    0x1AF9, 0x1AFF, 0x1B05, 0x1B0C, 0x1B12, 0x1B18, 0x1B1F, 0x1B25, 0x1B2B, 0x1B32, 0x1B38, 0x1B3E, 0x1B44, 0x1B4B,
    0x1B51, 0x1B57, 0x1B5D, 0x1B64, 0x1B6A, 0x1B70, 0x1B76, 0x1B7D, 0x1B83, 0x1B89, 0x1B8F, 0x1B95, 0x1B9C, 0x1BA2,
    0x1BA8, 0x1BAE, 0x1BB4, 0x1BBA, 0x1BC1, 0x1BC7, 0x1BCD, 0x1BD3, 0x1BD9, 0x1BDF, 0x1BE5, 0x1BEB, 0x1BF2, 0x1BF8,
    0x1BFE, 0x1C04, 0x1C0A, 0x1C10, 0x1C16, 0x1C1C, 0x1C22, 0x1C28, 0x1C2E, 0x1C34, 0x1C3A, 0x1C40, 0x1C46, 0x1C4C,
    0x1C52, 0x1C58, 0x1C5E, 0x1C64, 0x1C6A, 0x1C70, 0x1C76, 0x1C7C, 0x1C82, 0x1C88, 0x1C8E, 0x1C94, 0x1C9A, 0x1CA0,
    0x1CA6, 0x1CAC, 0x1CB2, 0x1CB8, 0x1CBE, 0x1CC3, 0x1CC9, 0x1CCF, 0x1CD5, 0x1CDB, 0x1CE1, 0x1CE7, 0x1CED, 0x1CF3,
    0x1CF8, 0x1CFE, 0x1D04, 0x1D0A, 0x1D10, 0x1D16, 0x1D1B, 0x1D21, 0x1D27, 0x1D2D, 0x1D33, 0x1D38, 0x1D3E, 0x1D44,
    0x1D4A, 0x1D4F, 0x1D55, 0x1D5B, 0x1D61, 0x1D66, 0x1D6C, 0x1D72, 0x1D78, 0x1D7D, 0x1D83, 0x1D89, 0x1D8E, 0x1D94,
    0x1D9A, 0x1DA0, 0x1DA5, 0x1DAB, 0x1DB1, 0x1DB6, 0x1DBC, 0x1DC2, 0x1DC7, 0x1DCD, 0x1DD3, 0x1DD8, 0x1DDE, 0x1DE3,
    0x1DE9, 0x1DEF, 0x1DF4, 0x1DFA, 0x1DFF, 0x1E05, 0x1E0B, 0x1E10, 0x1E16, 0x1E1B, 0x1E21, 0x1E26, 0x1E2C, 0x1E32,
    0x1E37, 0x1E3D, 0x1E42, 0x1E48, 0x1E4D, 0x1E53, 0x1E58, 0x1E5E, 0x1E63, 0x1E69, 0x1E6E, 0x1E74, 0x1E79, 0x1E7F,
    0x1E84, 0x1E8A, 0x1E8F, 0x1E94, 0x1E9A, 0x1E9F, 0x1EA5, 0x1EAA, 0x1EB0, 0x1EB5, 0x1EBA, 0x1EC0, 0x1EC5, 0x1ECB,
    0x1ED0, 0x1ED5, 0x1EDB, 0x1EE0, 0x1EE6, 0x1EEB, 0x1EF0, 0x1EF6, 0x1EFB, 0x1F00, 0x1F06, 0x1F0B, 0x1F10, 0x1F16,
    0x1F1B, 0x1F20, 0x1F26, 0x1F2B, 0x1F30, 0x1F36, 0x1F3B, 0x1F40, 0x1F45, 0x1F4B, 0x1F50, 0x1F55, 0x1F5A, 0x1F60,
    0x1F65, 0x1F6A, 0x1F6F, 0x1F75, 0x1F7A, 0x1F7F, 0x1F84, 0x1F8A, 0x1F8F, 0x1F94, 0x1F99, 0x1F9E, 0x1FA4, 0x1FA9,
    0x1FAE, 0x1FB3, 0x1FB8, 0x1FBD, 0x1FC3, 0x1FC8, 0x1FCD, 0x1FD2, 0x1FD7, 0x1FDC, 0x1FE1, 0x1FE6, 0x1FEC, 0x1FF1,
    0x1FF6, 0x1FFB, 0x2000,
};

u16 Math_GetAtan2Tbl(f32 x, f32 y) {
    u16 ret;

    if (y == 0.0f) {
        ret = sATan2Tbl[0];
    } else {
        s32 tblIdx = ((x / y) * 1024.0f) + 0.5f;

        if (tblIdx >= ARRAY_COUNT(sATan2Tbl)) {
            ret = sATan2Tbl[0];
        } else {
            ret = sATan2Tbl[tblIdx];
        }
    }

    return ret;
}

s16 Math_Atan2S(f32 x, f32 y) {
    s32 ret;

    if (y >= 0.0f) {
        if (x >= 0.0f) {
            if (y <= x) {
                ret = Math_GetAtan2Tbl(y, x);
            } else {
                ret = 0x4000 - Math_GetAtan2Tbl(x, y);
            }
        } else {
            if (-x < y) {
                ret = Math_GetAtan2Tbl(-x, y) + 0x4000;
            } else {
                ret = 0x8000 - Math_GetAtan2Tbl(y, -x);
            }
        }
    } else {
        if (x < 0.0f) {
            if (-y <= -x) {
                ret = Math_GetAtan2Tbl(-y, -x) + 0x8000;
            } else {
                ret = 0xC000 - Math_GetAtan2Tbl(-x, -y);
            }
        } else {
            if (x < -y) {
                ret = Math_GetAtan2Tbl(x, -y) + 0xC000;
            } else {
                ret = -Math_GetAtan2Tbl(-y, x);
            }
        }
    }
    return ret;
}

f32 Math_Atan2F(f32 x, f32 y) {
    return BINANG_TO_RAD_ALT(Math_Atan2S(x, y));
}
