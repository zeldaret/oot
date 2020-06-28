#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <alloca.h>

extern u8 D_80813810;

s16 D_80811BB0[6][32] = {
    {
        0xFFA2, 0x0048, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 
        0xFFDA, 0x0048, 0x0000, 0x0000, 0x0700, 0x0000, 0xFFFF, 0xFFFF, 
        0xFFA2, 0x0038, 0x0000, 0x0000, 0x0000, 0x0200, 0xFFFF, 0xFFFF, 
        0xFFDA, 0x0038, 0x0000, 0x0000, 0x0700, 0x0200, 0xFFFF, 0xFFFF,
    },
    {
        0xFFA0, 0xFFD0, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 
        0xFFCC, 0xFFD0, 0x0000, 0x0000, 0x0580, 0x0000, 0xFFFF, 0xFFFF, 
        0xFFA0, 0xFFC0, 0x0000, 0x0000, 0x0000, 0x0200, 0xFFFF, 0xFFFF, 
        0xFFCC, 0xFFC0, 0x0000, 0x0000, 0x0580, 0x0200, 0xFFFF, 0xFFFF, 
    },
    {
        0xFFD0, 0xFFD0, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 
        0xFFFC, 0xFFD0, 0x0000, 0x0000, 0x0580, 0x0000, 0xFFFF, 0xFFFF, 
        0xFFD0, 0xFFC0, 0x0000, 0x0000, 0x0000, 0x0200, 0xFFFF, 0xFFFF, 
        0xFFFC, 0xFFC0, 0x0000, 0x0000, 0x0580, 0x0200, 0xFFFF, 0xFFFF, 
    },
    {
        0x0000, 0xFFD0, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 
        0x001C, 0xFFD0, 0x0000, 0x0000, 0x0380, 0x0000, 0xFFFF, 0xFFFF, 
        0x0000, 0xFFC0, 0x0000, 0x0000, 0x0000, 0x0200, 0xFFFF, 0xFFFF, 
        0x001C, 0xFFC0, 0x0000, 0x0000, 0x0380, 0x0200, 0xFFFF, 0xFFFF, 
    },
    {
        0x0020, 0xFFD0, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 
        0x003C, 0xFFD0, 0x0000, 0x0000, 0x0380, 0x0000, 0xFFFF, 0xFFFF, 
        0x0020, 0xFFC0, 0x0000, 0x0000, 0x0000, 0x0200, 0xFFFF, 0xFFFF, 
        0x003C, 0xFFC0, 0x0000, 0x0000, 0x0380, 0x0200, 0xFFFF, 0xFFFF, 
    },
    {
        0x0040, 0xFFD0, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF,
        0x006C, 0xFFD0, 0x0000, 0x0000, 0x0580, 0x0000, 0xFFFF, 0xFFFF, 
        0x0040, 0xFFC0, 0x0000, 0x0000, 0x0000, 0x0200, 0xFFFF, 0xFFFF, 
        0x006C, 0xFFC0, 0x0000, 0x0000, 0x0580, 0x0200, 0xFFFF, 0xFFFF,
    }
};

s16 D_80811D30[4][32] = {
    {
        0xFFA2, 0x0048, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 
        0x0022, 0x0048, 0x0000, 0x0000, 0x1000, 0x0000, 0xFFFF, 0xFFFF, 
        0xFFA2, 0x0038, 0x0000, 0x0000, 0x0000, 0x0200, 0xFFFF, 0xFFFF, 
        0x0022, 0x0038, 0x0000, 0x0000, 0x1000, 0x0200, 0xFFFF, 0xFFFF, 
    },
    {
        0xFF9C, 0x002C, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 
        0xFFDC, 0x002C, 0x0000, 0x0000, 0x0800, 0x0000, 0xFFFF, 0xFFFF, 
        0xFF9C, 0x001C, 0x0000, 0x0000, 0x0000, 0x0200, 0xFFFF, 0xFFFF, 
        0xFFDC, 0x001C, 0x0000, 0x0000, 0x0800, 0x0200, 0xFFFF, 0xFFFF, 
    },
    {
        0xFF9C, 0x0004, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 
        0xFFDC, 0x0004, 0x0000, 0x0000, 0x0800, 0x0000, 0xFFFF, 0xFFFF, 
        0xFF9C, 0xFFF4, 0x0000, 0x0000, 0x0000, 0x0200, 0xFFFF, 0xFFFF, 
        0xFFDC, 0xFFF4, 0x0000, 0x0000, 0x0800, 0x0200, 0xFFFF, 0xFFFF,
    },
    {
        0xFF9C, 0xFFDC, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 
        0x001C, 0xFFDC, 0x0000, 0x0000, 0x1000, 0x0000, 0xFFFF, 0xFFFF, 
        0xFF9C, 0xFFCC, 0x0000, 0x0000, 0x0000, 0x0200, 0xFFFF, 0xFFFF, 
        0x001C, 0xFFCC, 0x0000, 0x0000, 0x1000, 0x0200, 0xFFFF, 0xFFFF
    }
};

u32 D_80811E30[][8] = {
    {0xFFA20048, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x00220048, 0x00000000, 0x10000000, 0xFFFFFFFF}, 
    {0xFFA20038, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x00220038, 0x00000000, 0x10000200, 0xFFFFFFFF}, 
    {0xFF9C002C, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0xFFDC002C, 0x00000000, 0x08000000, 0xFFFFFFFF}, 
    {0xFF9C001C, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0xFFDC001C, 0x00000000, 0x08000200, 0xFFFFFFFF}, 
    {0xFF9C0004, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x002C0004, 0x00000000, 0x12000000, 0xFFFFFFFF}, 
    {0xFF9CFFF4, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x002CFFF4, 0x00000000, 0x12000200, 0xFFFFFFFF}, 
    {0xFF9CFFDC, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x001CFFDC, 0x00000000, 0x10000000, 0xFFFFFFFF}, 
    {0xFF9CFFCC, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x001CFFCC, 0x00000000, 0x10000200, 0xFFFFFFFF}
};

u32 D_80811F30[][4] = {
    {0xFF9C001A, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0xFFCC001A, 0x00000000, 0x06000000, 0xFFFFFFFF}, 
    {0xFF9C000A, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0xFFCC000A, 0x00000000, 0x06000200, 0xFFFFFFFF}, 
    {0xFFD0001A, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x0000001A, 0x00000000, 0x06000000, 0xFFFFFFFF}, 
    {0xFFD0000A, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x0000000A, 0x00000000, 0x06000200, 0xFFFFFFFF}, 
    {0x0004001A, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x0034001A, 0x00000000, 0x06000000, 0xFFFFFFFF}, 
    {0x0004000A, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x0034000A, 0x00000000, 0x06000200, 0xFFFFFFFF}, 
    {0x0038001A, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x0068001A, 0x00000000, 0x06000000, 0xFFFFFFFF}, 
    {0x0038000A, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x0068000A, 0x00000000, 0x06000200, 0xFFFFFFFF}, 
    {0xFF9CFFF2, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0xFFCCFFF2, 0x00000000, 0x06000000, 0xFFFFFFFF}, 
    {0xFF9CFFE2, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0xFFCCFFE2, 0x00000000, 0x06000200, 0xFFFFFFFF}, 
    {0xFFD0FFF2, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x0000FFF2, 0x00000000, 0x06000000, 0xFFFFFFFF}, 
    {0xFFD0FFE2, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x0000FFE2, 0x00000000, 0x06000200, 0xFFFFFFFF}, 
    {0xFF9CFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0xFFFCFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF}, 
    {0xFF9CFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0xFFFCFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF}, 
    {0xFFFCFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x005CFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF}, 
    {0xFFFCFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x005CFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF}
};

u32 D_80812130[][4] = {
    {0xFF9C001A, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0xFFCC001A, 0x00000000, 0x06000000, 0xFFFFFFFF},
    {0xFF9C000A, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0xFFCC000A, 0x00000000, 0x06000200, 0xFFFFFFFF}, 
    {0xFFD0001A, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x0000001A, 0x00000000, 0x06000000, 0xFFFFFFFF}, 
    {0xFFD0000A, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x0000000A, 0x00000000, 0x06000200, 0xFFFFFFFF}, 
    {0x0004001A, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x0034001A, 0x00000000, 0x06000000, 0xFFFFFFFF}, 
    {0x0004000A, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x0034000A, 0x00000000, 0x06000200, 0xFFFFFFFF}, 
    {0x0038001A, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x0068001A, 0x00000000, 0x06000000, 0xFFFFFFFF}, 
    {0x0038000A, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x0068000A, 0x00000000, 0x06000200, 0xFFFFFFFF}, 
    {0xFF9CFFF2, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0xFFECFFF2, 0x00000000, 0x0A000000, 0xFFFFFFFF}, 
    {0xFF9CFFE2, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0xFFECFFE2, 0x00000000, 0x0A000200, 0xFFFFFFFF}, 
    {0xFFF0FFF2, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x0040FFF2, 0x00000000, 0x0A000000, 0xFFFFFFFF}, 
    {0xFFF0FFE2, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x0040FFE2, 0x00000000, 0x0A000200, 0xFFFFFFFF}, 
    {0xFF9CFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0xFFFCFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF}, 
    {0xFF9CFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0xFFFCFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF}, 
    {0xFFFCFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x005CFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF}, 
    {0xFFFCFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF}, 
    {0x005CFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF}
};

u32 D_80812330[][4] = {
    {0xFF9C001C, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x009C001C, 0x00000000, 0x20000000, 0xFFFFFFFF}, 
    {0xFF9C001A, 0x00000000, 0x00000040, 0xFFFFFFFF}, 
    {0x009C001A, 0x00000000, 0x20000040, 0xFFFFFFFF}
};

u32 D_80812370[][4] = {
    {0xFF9CFFF4, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x009CFFF4, 0x00000000, 0x20000000, 0xFFFFFFFF}, 
    {0xFF9CFFF2, 0x00000000, 0x00000040, 0xFFFFFFFF}, 
    {0x009CFFF2, 0x00000000, 0x20000040, 0xFFFFFFFF}
};

u32 D_808123B0[][4] = {
    {0xFF9CFFCC, 0x00000000, 0x00000000, 0xFFFFFFFF}, 
    {0x009CFFCC, 0x00000000, 0x20000000, 0xFFFFFFFF}, 
    {0xFF9CFFCA, 0x00000000, 0x00000040, 0xFFFFFFFF}, 
    {0x009CFFCA, 0x00000000, 0x20000040, 0xFFFFFFFF}
};

s16 D_808123F0[] = {
    0x000A, 0x000B, 0x000C, 0x000D, 0x000E, 0x000F, 0x0010, 0x0011, 0x0012, 0x0013, 
    0x0014, 0x0015, 0x0016, 0x0017, 0x0018, 0x0019, 0x001A, 0x001B, 0x001C, 0x001D, 
    0x001E, 0x001F, 0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x0025, 0x0026, 0x0027, 
    0x0028, 0x0029, 0x002A, 0x002B, 0x002C, 0x002D, 0x002E, 0x002F, 0x0030, 0x0031, 
    0x0032, 0x0033, 0x0034, 0x0035, 0x0036, 0x0037, 0x0038, 0x0039, 0x003A, 0x003B, 
    0x003C, 0x003D, 0x0001, 0x0002, 0x0003, 0x0004, 0x0005, 0x0006, 0x0007, 0x0008, 
    0x0009, 0x0000, 0x0040, 0x003F, 0x003E, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

s16 D_80812480[5] = { 
    0xFFD0, 0xFFD0, 0xFFD0, 0xFFE8, 0xFFE8 
};

s16 D_8081248C[3][3] = { 
    {0x0000, 0xFFD0, 0xFFD0},
    {0xFFC0, 0x0010, 0xFFD0},
    {0xFFC0, 0xFFC0, 0x0020},
};

s16 D_808124A0 = 0x000F;

s16 D_808124A4[3] = {
    0xFFC8, 0xFFD8, 0xFFE8
};

s16 D_808124AC[4] = {
    0x0000, 0x0010, 0x0020, 0x0000,
};

s16 D_808124C0[] = {
    0x0002, 0x0003, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 
    0x0001, 0x0002, 0x0000, 0x0001, 0x0001, 0x0002, 0x0001, 0x0001, 0x0004, 0x0002, 
    0x0002, 0x0002, 0x0001, 0x0001, 0x0000, 0x0002, 0x0000, 0x0001, 0x0001, 0x0001, 
    0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0001, 0x0002, 0x0002, 0x0002, 0x0002, 
    0x0002, 0x0003, 0x0002, 0x0002, 0x0004, 0x0003, 0x0002, 0x0004, 0x0001, 0x0002, 
    0x0002, 0x0001, 0x0001, 0x0002, 0x0002, 0x0003, 0x0002, 0x0002, 0x0000, 0x0002, 
    0x0002, 0x0002, 0x0000, 0x0003, 0x0001, 0x0000
};

s16 D_80812544[64] = {
    0x0001, 0x0002, 0x0000, 0x0001, 0x0001, 0x0002, 0x0001, 0x0001, 0x0004, 0x0002, 
    0x0002, 0x0002, 0x0001, 0x0001, 0x0000, 0x0002, 0x0000, 0x0001, 0x0001, 0x0001, 
    0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0001, 0x0002, 0x0002, 0x0002, 0x0002, 
    0x0002, 0x0003, 0x0002, 0x0002, 0x0004, 0x0003, 0x0002, 0x0004, 0x0001, 0x0002, 
    0x0002, 0x0001, 0x0001, 0x0002, 0x0002, 0x0003, 0x0002, 0x0002, 0x0000, 0x0002, 
    0x0002, 0x0002, 0x0003, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 
    0x0002, 0x0002, 0x0001, 0x0003
};

s32 D_808125C4[3] = {
    0x01033480, 0x01033480, 0x01033B80 
};

u32 D_808125D0[3][2] = {
    {0x01015280, 0x01014200}, 
    {0x01015280, 0x01014780}, 
    {0x01015280, 0x01014D00}
};

u16 D_808125E8[2] = {
    0x001C, 0x002C
};
s16 D_808125EC[] = {
    0xFFE2, 0xFFF0, 0xFFFA, 0x0004, 0x000E, 0x0018, 
    0x0022, 0x002C, 0x0036, 0xFFF0, 0xFFF0, 0x0000
};

s16 D_80812604[] = {
    0x0048, 0x0045, 0x0045, 0x0045, 0x0045, 0x0045, 
    0x0045, 0x0045, 0x0045, 0x0045, 0x0045, 0x0000
};

typedef struct {
    u32 gfx[3];
    u16 width[3];
    u16 height;
} ChooseGfx;

ChooseGfx D_8081261C[4] = {
    {
        0x01032480, 0x01032C80, 0x01032480, 
        0x0080, 0x0080, 0x0080, 
        0x0010, 
    },
    {
        0x01041100, 0x01041100, 0x01041500, 
        0x0040, 0x0040, 0x0040, 
        0x0010
    },
    { 
        0x01041F00, 0x01042300, 0x01042C00, 
        0x0040, 0x0090, 0x0040, 
        0x0010
    }, 
    {
        0x01044600, 0x01044E00, 0x01045600, 
        0x0080, 0x0080, 0x0080, 
        0x0010
    }
};

ChooseGfx D_8081266C[6] = {
    {
        0x01041900, 0x01041900, 0x01041C00, 
        0x0030, 0x0030, 0x0030, 
        0x0010
    }, 
    {
        0x01040E00, 0x01040E00, 0x01040E00, 
        0x0030, 0x0030, 0x0030, 
        0x0010
    }, 
    {
        0x01040500, 0x01040800, 0x01040B00, 
        0x0030, 0x0030, 0x0030, 
        0x0010
    }, 
    {
        0x01040200, 0x01040200, 0x01040200, 
        0x0030, 0x0030, 0x0030, 
        0x0010
    }, 
    {
        0x01043000, 0x01043300, 0x01043800, 
        0x0030, 0x0050, 0x0030, 
        0x0010
    }, 
    {
        0x01043B00, 0x01043E00, 0x01044300, 
        0x0030, 0x0050, 0x0030, 
        0x0010
    }
};

s16 D_808126E4 = 0x00FF;
s16 D_808126E8 = 0x00FF;
s16 D_808126EC = 0x00FF;
s16 D_808126F0 = 0x0000;
s16 D_808126F4 = 0x0000;
s16 D_808126F8 = 0x0000;
s16 D_808126FC = 0x0001;
s16 D_80812700 = 0x0014;
s16 D_80812704[2][3] = {
    {0x00FF, 0x00FF, 0x00FF}, 
    {0x0000, 0x00FF, 0x00FF}
};
s16 D_80812710[3][3] = {
    {0x0000, 0x0000, 0x0000}, 
    {0x0000, 0x0096, 0x0096}, 
    {0x0000, 0x0000, 0x006A},
};
s16 D_80812724 = 0x00FF;
Gfx D_80812728[5] = {
    {0xE7000000, 0x00000000},
    {0xD9C0F9FA, 0x00000000}, 
    {0xEF802C30, 0x00504340}, 
    {0xFCFFFFFF, 0xFFFDF6FB}, 
    {0xDF000000, 0x00000000}
};

s16 D_80812750[5] = {
    0x0024, 0x0024, 0x0024, 0x0024, 0x0018
};

s16 D_8081275C[2][3] = {
    {0x0064, 0x0096, 0x00FF}, 
    {0x0064, 0x0064, 0x0064}
};

u8 D_80812768[] = {
    0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E
};

void func_8080B40C(FileChooseContext*);
void func_8080B494(FileChooseContext*);
void func_8080B52C(FileChooseContext*);
void func_80803D40(FileChooseContext*);
void func_80803ED8(FileChooseContext*);

void func_80804248(FileChooseContext*);
void func_808043D8(FileChooseContext*);
void func_808044A0(FileChooseContext*);
void func_80804858(FileChooseContext*);
void func_80804924(FileChooseContext*);

void func_80804A50(FileChooseContext*);
void func_80804C74(FileChooseContext*);
void func_80804CD0(FileChooseContext*);
void func_80804ED8(FileChooseContext*);
void func_8080510C(FileChooseContext*);

void func_808051C8(FileChooseContext*);
void func_80805318(FileChooseContext*);
void func_80805434(FileChooseContext*);
void func_80805524(FileChooseContext*);
void func_80805824(FileChooseContext*);

void func_8080595C(FileChooseContext*);
void func_80805B2C(FileChooseContext*);
void func_80805EB8(FileChooseContext*);
void func_80806180(FileChooseContext*);
void func_8080625C(FileChooseContext*);

void func_80806444(FileChooseContext*);
void func_808064F4(FileChooseContext*);
void func_80806710(FileChooseContext*);
void func_808068F0(FileChooseContext*);
void func_808069B4(FileChooseContext*);

void func_80806C20(FileChooseContext*);
void func_8080BE28(FileChooseContext*);
void func_8080BE84(FileChooseContext*);
void func_80809038(FileChooseContext*);
void func_80808F84(FileChooseContext*);

void func_8080BF6C(FileChooseContext*);
void func_8080BEF8(FileChooseContext*);
void func_8080969C(FileChooseContext*);
void func_8080960C(FileChooseContext*);
void func_8080BF6C(FileChooseContext*);

void func_8080BE30(FileChooseContext*);

void (*D_80812770[])(FileChooseContext*) = {
    func_8080B40C, func_8080B494, func_8080B52C, func_80803D40, func_80803ED8, 
    func_80804248, func_808043D8, func_808044A0, func_80804858, func_80804924, 
    func_80804A50, func_80804C74, func_80804CD0, func_80804ED8, func_8080510C, 
    func_808051C8, func_80805318, func_80805434, func_80805524, func_80805824,
    func_8080595C, func_80805B2C, func_80805EB8, func_80806180, func_8080625C, 
    func_80806444, func_808064F4, func_80806710, func_808068F0, func_808069B4, 
    func_80806C20, func_8080BE28, func_8080BE84, func_80809038, func_80808F84, 
    func_8080BF6C, func_8080BEF8, func_8080969C, func_8080960C, func_8080BF6C, 
    func_8080BE30
};

s16 D_80812814[2] = {
    0x0046, 0x00C8
};
s16 D_80812818[4] = {
    0x001A, 0x000A, 0x000A, 0x000A
};

s16 D_80812820[4] = {
    0x0020, 0x000C, 0x000C, 0x000C
};

s16 D_80812828[4] = {
    0x0010, 0x000C, 0x000C, 0x000C
};

s16 D_80812830[6] = {
    0x0040, 0x0054, 0x0068, 0x0274, 0x0278, 0x027C
};

s16 D_8081283C[4] = {
    0x0040, 0x0054, 0x0068, 0x0278
};

s16 D_80812844[4] = {
    0x0274, 0x0278
};

s16 D_80812848[2] = {
    0x0274,0x0278
};

 u16 D_8081284C[3] = {
    0x007C, 0x0124, 0x01CC
};

 s32 D_80812854[9] = {
    0x0101C880, 0x0101CC80, 0x0101D080, 
    0x01000180, 0x01000280, 0x01000380,
    0x01000480, 0x01000580, 0x01000680
};

 s16 D_80812878[9] = {
    0x00FF, 0x00FF, 0x00FF, 0x0000, 0x00FF, 
    0x0000, 0x00FF, 0x00C8, 0x00C8
};

 s16 D_8081288C[9] = {
    0x00FF, 0x00FF, 0x00FF, 0x00FF, 0x003C, 
    0x0064, 0x0082, 0x0032, 0x00C8
};

 s16 D_808128A0[9] = {
    0x00FF, 0x00FF, 0x00FF, 0x0000, 0x0000, 
    0x00FF, 0x0000, 0x00FF, 0x0000
};

 s16 D_808128B4[9] = {
    0x0012, 0x0013, 0x0014, 0x0000, 0x0001, 
    0x0002, 0x0003, 0x0004, 0x0005
};

 s16 D_808128C8[2][3] = {
    {0x00FF, 0x00FF, 0x00FF},
    {0x0064, 0x0064, 0x0064}
};

 s32 D_808128D4[2] = {
    0x02000400, 0x02000900
};

 s16 D_808128DC[2][3] = {
    {0x00FF, 0x0046, 0x0032}, 
    {0x00C8, 0x0000, 0x0000}
};

 s16 D_808128E8[2][3] = {
    {0x0032, 0x0028, 0x003C},
    {0x00FF, 0x00FF, 0x00FF}
};

 s32 D_808128F4[5] = {
    0x01016380, 0x01017340, 0x01018300, 0x010192C0, 0x0101A280
};

 s32 D_80812908[3][9] = {
    {0x0102AC80, 0x0102B480, 0x01024C80, 0x01025480, 0x01025C80, 0x01026480, 0x0102DC80, 0x0102E480, 0x0102EC80}, 
    {0x0102BC80, 0x0102C480, 0x01026C80, 0x01027480, 0x01027C80, 0x01028480, 0x0102F480, 0x0102FC80, 0x01030480}, 
    {0x0102CC80, 0x0102D480, 0x01028C80, 0x01029480, 0x01029C80, 0x0102A480, 0x01030C80, 0x01031480, 0x01031C80}
};

 s32 D_80812974[3][5] = {
    {0x0101D480, 0x0101DC80, 0x0101E480, 0x0101EC80, 0x0101F480}, 
    {0x0101FC80, 0x01020480, 0x01020C80, 0x01021480, 0x01021C80}, 
    {0x01022480, 0x01022C80, 0x01023480, 0x01023C80, 0x01024480}
};

 s32 D_808129B0[3][3] = {
    {0x01037200, 0x01037A00, 0x01038200}, 
    {0x01038A00, 0x01039200, 0x01039A00},
    {0x0103A200, 0x0103AA00, 0x0103B200}
};

 s32 D_808129D4[3][4] = {
    {0x01035A00, 0x0103D200, 0x0103BA00, 0x0103EA00}, 
    {0x01036200, 0x0103DA00, 0x0103C200, 0x0103F200},
    {0x01036A00, 0x0103E200, 0x0103CA00, 0x0103FA00}
};

 s32 D_80812A04[3] = {
    0x01045E00, 0x01046600, 0x01045E00
};

s16 D_80812A10[3] = {
    0x0000, 0x0010, 0x0020
};

void func_8080FE2C(FileChooseContext*);
void func_8080FF98(FileChooseContext*);
void func_8081009C(FileChooseContext*);
void func_8081017C(FileChooseContext*);
void func_80810354(FileChooseContext*);
void func_80810440(FileChooseContext*);
void func_80810698(FileChooseContext*);
void func_808106F4(FileChooseContext*);

void (*D_80812A18[8])(FileChooseContext*) = {
    func_8080FE2C, func_8080FF98, func_8081009C,
    func_8081017C, func_80810354, func_80810440,
    func_80810698, func_808106F4
};

void func_8080B224(FileChooseContext*);
void func_8080F560(FileChooseContext*);
void func_808109B8(FileChooseContext*);

void (*D_80812A38[3])(FileChooseContext*) = {
    func_8080B224, func_8080F560, func_808109B8
};

void func_8080B1A8(FileChooseContext*);
void func_8080C2F4(FileChooseContext*);
void func_8081097C(FileChooseContext*);

void (*D_80812A44[3])(FileChooseContext*) = {
    func_8080B1A8, func_8080C2F4, func_8081097C
};

u32 D_80812A50[3] = {
    0x01033F00, 0x01034800, 0x01035100
};

static f32 D_80812CE0 = 0.1f;
static f32 D_80812CE4 = 0.2f;
static f32 D_80812CE8 = 0.4f;

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80803D40.s")
// OK
void func_80803D40(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    s32 tmp;
    s16 tmp2;
    s16 i;

    for (i = 0; i < 5; i++) {
        tmp = ABS(thisx->buttonsFile[i] - D_80812480[i]);
        tmp2 = tmp / thisx->actionTimer;
        if (this->buttonsFile[i] >= D_80812480[i]) {
            this->buttonsFile[i] -= tmp2;
        } else {
            this->buttonsFile[i] += tmp2;
        }
    }
    this->buttonCopyEraseA[0] -= 0x19;
    this->buttonCopyEraseA[1] -= 0x19;
    this->buttonOptionsA -= 0x19;
    this->buttonYesQuitA[1] += 0x19;

    this->fileSelectOpenTitleA[0] -= 0x1F;
    this->fileSelectOpenTitleA[1] += 0x1F;
    
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->actionTimer = 8;

        this->buttonCopyEraseA[0] = 
        this->buttonCopyEraseA[1] = this->buttonOptionsA = 0;
        
        this->buttonYesQuitA[1] = 0xC8;
        this->titleTexIdx = this->nextTitleTexIdx;
        
        this->fileSelectOpenTitleA[0] = 0xFF;
        this->fileSelectOpenTitleA[1] = 0;
        this->btnIdx = 3;
        this->fileSelectStateIdx += 1;
    }
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80803ED8.s")
// OK
void func_80803ED8(FileChooseContext* this) {
    Input* controller1;
    s32 pad;
    s32 pad1;

    controller1 = &this->state.input[0];
    if ((this->btnIdx == 3 &&
        controller1->press.in.button & (A_BUTTON | START_BUTTON)) || 
        CHECK_PAD(controller1->press, B_BUTTON)) {
            this->actionTimer = 8;
            this->btnIdx = 3;
            this->nextTitleTexIdx = 0;
            this->fileSelectStateIdx = 0x13;
            this->fileWarningTexIdx = -1;
            Audio_PlaySoundGeneral(0x483C, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
    }

    if (controller1->press.in.button & (A_BUTTON | START_BUTTON)) {
        if (IS_VALID_SAVE(this->sram.read_buff + D_8012A4E0[0][this->btnIdx])) {
                this->actionTimer = 8;
                this->selectedFileIdx = this->btnIdx;
                this->fileSelectStateIdx = 5;
                this->nextTitleTexIdx = 3;
                Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                return;
        }
        Audio_PlaySoundGeneral(0x483D, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }

    if ((this->stickY >= 0 ? this->stickY : -this->stickY) >= 30) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        if (this->stickY >= 30) {
            this->btnIdx -= 1;
            if (this->btnIdx < 0) {
                this->btnIdx = 3;
            }
        } else {
            this->btnIdx += 1;
            if (this->btnIdx >= 4) {
                this->btnIdx = 0;
            }
        }
    }

    if (this->btnIdx != 3) {
        if (!IS_VALID_SAVE(this->sram.read_buff + D_8012A4E0[0][this->btnIdx])) {
            this->fileWarningTexIdx = 3;
            this->warningFileIdx = this->btnIdx;
            this->fileEmptyTextA = 0xFF;
        } else {
            this->fileWarningTexIdx = -1;
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804248.s")
// OK
void func_80804248(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    s16 tmp;
    s16 i;

    for (i = 0; i < 3; i++) {
        tmp = ABS(thisx->buttonsFile[i] - D_8081248C[thisx->btnIdx][i]) / thisx->actionTimer;
        if (D_8081248C[thisx->btnIdx][i] >= this->buttonsFile[i]) {
            this->buttonsFile[i] += tmp;
        } else {
            this->buttonsFile[i] -= tmp;
        }
    }

    this->fileSelectOpenTitleA[0] -= 0x1F;
    this->fileSelectOpenTitleA[1] += 0x1F;
    this->fileNameBoxesA[this->btnIdx] -= 0x19;

    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->buttonsFile[this->btnIdx] = D_8081248C[this->btnIdx][this->btnIdx];
        this->titleTexIdx = this->nextTitleTexIdx;
        this->fileSelectOpenTitleA[0] = 0xFF;
        this->fileSelectOpenTitleA[1] = 0;
        this->actionTimer = 8;
        this->fileSelectStateIdx += 1;
    }
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808043D8.s")
// OK
void func_808043D8(FileChooseContext* this) {
    this->fileNameBoxesA[this->btnIdx] -= 0x19;
    this->fileInfoA[this->btnIdx] += 0x19;
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->fileNameBoxesA[this->btnIdx] = 0;
        this->fileInfoA[this->btnIdx] = 0xC8;
        this->btnIdx = 3;
        this->actionTimer = 8;
        this->fileSelectStateIdx = 7;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808044A0.s")
// OK
void func_808044A0(FileChooseContext* this) {
    s32 pad;
    s32 pad1;
    Input* controller1 = &this->state.input[0];
    s32 stickAbs;

    if (((this->btnIdx == 3) && CHECK_BTN_ALL(controller1->press, (A_BUTTON | START_BUTTON))) || 
        CHECK_PAD(controller1->press, B_BUTTON)) {
            this->btnIdx = this->selectedFileIdx;
            this->nextTitleTexIdx = 2;
            this->actionTimer = 8;
            this->fileSelectStateIdx = 8;
            Audio_PlaySoundGeneral(0x483C, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
    }

    if (CHECK_BTN_ALL(controller1->press, (A_BUTTON | START_BUTTON))) {
        if (!IS_VALID_SAVE(this->sram.read_buff + D_8012A4E0[0][this->btnIdx])) {
            this->copyDsFiletIdx = this->btnIdx;
            this->nextTitleTexIdx = 4;
            this->actionTimer = 8;
            this->fileSelectStateIdx = 10;
            Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
        Audio_PlaySoundGeneral(0x483D, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }

    stickAbs = ABS(this->stickY);
    if (stickAbs >= 30) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        if (this->stickY >= 30) {
            this->btnIdx -= 1;
            if ((this->btnIdx == this->selectedFileIdx)) {
                this->btnIdx -= 1;
                if (this->btnIdx < 0)
                    this->btnIdx = 3;
            } else {
                if (this->btnIdx < 0)
                    this->btnIdx = 3;
            }
        } else {
            this->btnIdx += 1;
            if (this->btnIdx >= 4) {
                this->btnIdx = 0;
            }
            if (this->btnIdx == this->selectedFileIdx) {
                this->btnIdx += 1;
            }
        }
    }

    if (this->btnIdx != 3) {
        if (IS_VALID_SAVE(this->sram.read_buff + D_8012A4E0[0][this->btnIdx])) {
            this->fileWarningTexIdx = 4;
            this->warningFileIdx = this->btnIdx;
            this->fileEmptyTextA = 0xFF;
        } else {
            this->fileWarningTexIdx = -1;
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804858.s")
// OK
void func_80804858(FileChooseContext* this) {
    this->fileInfoA[this->btnIdx] -= 0x19;
    this->fileNameBoxesA[this->btnIdx] += 0x19;
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->nextTitleTexIdx = 2;
        this->fileNameBoxesA[this->btnIdx] = 0xC8;
        this->fileInfoA[this->btnIdx] = 0;
        this->actionTimer = 8;
        this->fileSelectStateIdx += 1;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804924.s")
// OK
void func_80804924(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    s16 i;
    s16 tmp;

    for (i = 0; i < 3; i++) {
        tmp = ABS(thisx->buttonsFile[i] - D_80812480[i]) / thisx->actionTimer;
        if (thisx->buttonsFile[i] >= D_80812480[i]) {
            thisx->buttonsFile[i] -= tmp;
        } else {
            thisx->buttonsFile[i] += tmp;
        }
    }
    thisx->fileSelectOpenTitleA[0] -= 0x1F;
    thisx->fileSelectOpenTitleA[1] += 0x1F;
    thisx->actionTimer -= 1;
    if (thisx->actionTimer == 0) {
        thisx->titleTexIdx = thisx->nextTitleTexIdx;
        thisx->fileSelectOpenTitleA[0] = 0xFF;
        thisx->fileSelectOpenTitleA[1] = 0;
        thisx->btnIdx = 3;
        thisx->fileSelectStateIdx = 4;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804A50.s")
// OK
void func_80804A50(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    s16 i;
    s16 tmp;

    thisx->fileSelectOpenTitleA[0] -= 0x1F;
    thisx->fileSelectOpenTitleA[1] += 0x1F;
    for (i = 0; i < 3; i++) {
        if ((i != thisx->copyDsFiletIdx) && (i != thisx->selectedFileIdx)) {
            thisx->fileButtonsA[i] -= 0x19;
            if (IS_VALID_SAVE(thisx->sram.read_buff + D_8012A4E0[0][i])) {
                thisx->metalJointsA[i] -= 0x1F;
                thisx->fileNamesA[i] = thisx->fileButtonsA[i];
                thisx->fileNameBoxesA[i] = thisx->fileButtonsA[i];
            }
        } else {
            if (thisx->copyDsFiletIdx == i) {
                tmp = ABS(thisx->buttonsFile[i] - D_808124A4[i]) / thisx->actionTimer;
                thisx->buttonsFile[i] += tmp;
                if (thisx->buttonsFile[i] >= D_808124A4[i]) {
                    thisx->buttonsFile[i] = D_808124A4[i];
                }
            }
        }
    }
    thisx->actionTimer -= 1;
    if (thisx->actionTimer == 0) {
        thisx->titleTexIdx = thisx->nextTitleTexIdx;
        thisx->fileSelectOpenTitleA[0] = 0xFF;
        thisx->fileSelectOpenTitleA[1] = 0;
        thisx->actionTimer = 8;
        thisx->fileSelectStateIdx++;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804C74.s")
// OK
void func_80804C74(FileChooseContext* this) {
    this->buttonYesQuitA[0] += 0x19;
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->fileSelectStateIdx = 0xC;
        this->btnIdx = 1;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804CD0.s")
// OK
void func_80804CD0(FileChooseContext* this) {
    s32 pad;
    Input* controller1 = &this->state.input[0];
    s32 stickY;
    u16 oldDay;
    s32 pad1;

    if (((this->btnIdx != 0) && CHECK_BTN_ALL(controller1->press, (A_BUTTON | START_BUTTON))) ||
        CHECK_PAD(controller1->press, B_BUTTON)) {
        this->actionTimer = 8;
        this->nextTitleTexIdx = 3;
        this->fileSelectStateIdx = 0xD;
        Audio_PlaySoundGeneral(0x483C, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }
    if (CHECK_BTN_ALL(controller1->press, (A_BUTTON | START_BUTTON))) {
        oldDay = gSaveContext.dayTime;
        func_800A97F0(this, &this->sram);
        gSaveContext.dayTime = oldDay;
        this->fileInfoA[this->copyDsFiletIdx] = 
        this->fileNamesA[this->copyDsFiletIdx] = 0;
        this->nextTitleTexIdx = 5;
        this->actionTimer = 8;
        this->fileSelectStateIdx = 0xE;
        func_800AA000(300.0f, 0xB4, 0x14, 0x64);
        Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }
    stickY = ABS(this->stickY);
    if (stickY >= 30) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->btnIdx ^= 1;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804ED8.s")
// OK
void func_80804ED8(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    s16 i;
    s16 tmp;

    thisx->fileSelectOpenTitleA[0] -= 0x1F;
    thisx->fileSelectOpenTitleA[1] += 0x1F;
    thisx->buttonYesQuitA[0] -= 0x19;
    for (i = 0; i < 3; i++) {
        if ((i != thisx->copyDsFiletIdx) && (i != thisx->selectedFileIdx)) {
            thisx->fileButtonsA[i] += 0x19;
            if (IS_VALID_SAVE(thisx->sram.read_buff + D_8012A4E0[0][i])) {
                thisx->fileNamesA[i] = thisx->fileButtonsA[i];
                thisx->metalJointsA[i] += 0x1F;
                thisx->fileNameBoxesA[i] = thisx->fileButtonsA[i];
            }
        }
        tmp = ABS(thisx->buttonsFile[i] - D_8081248C[thisx->selectedFileIdx][i]) / thisx->actionTimer;
        if (D_8081248C[thisx->selectedFileIdx][i] >= thisx->buttonsFile[i]) {
            thisx->buttonsFile[i] += tmp;
        } else {
            thisx->buttonsFile[i] -= tmp;
        }
    }
    thisx->actionTimer -= 1;
    if (thisx->actionTimer == 0) {
        thisx->titleTexIdx = thisx->nextTitleTexIdx;
        thisx->fileSelectOpenTitleA[0] = 0xFF;
        thisx->fileSelectOpenTitleA[1] = 0;
        thisx->actionTimer = 8;
        thisx->btnIdx = 3;
        thisx->fileSelectStateIdx = 7;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080510C.s")
// OK
void func_8080510C(FileChooseContext* this) {
    this->fileSelectOpenTitleA[0] -= 0x1F;
    this->buttonYesQuitA[0] -= 0x19;
    this->buttonYesQuitA[1] -= 0x19;
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->fileSelectOpenTitleA[0] = 0;
        this->actionTimer = 8;
        this->fileSelectStateIdx += 1;
        osSyncPrintf("connect_alpha=%d  decision_alpha[%d]=%d\n", this->metalJointsA[this->copyDsFiletIdx], this->copyDsFiletIdx, this->fileInfoA[this->copyDsFiletIdx]);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808051C8.s")
// OK
void func_808051C8(FileChooseContext* this) {
    s16 tmp;

    this->fileInfoA[this->copyDsFiletIdx] += 0x19;
    this->fileNamesA[this->copyDsFiletIdx] += 0x19;
    this->fileSelectOpenTitleA[1] += 0x1F;
    tmp = ABS(this->fileNamesY[this->copyDsFiletIdx] + 0x38) / this->actionTimer;
    this->fileNamesY[this->copyDsFiletIdx] -= tmp;
    if (this->fileNamesY[this->copyDsFiletIdx] < -0x37) {
        this->fileNamesY[this->copyDsFiletIdx] = -0x38;
    }
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->actionTimer = 0x5A;
        this->titleTexIdx = this->nextTitleTexIdx;
        this->fileSelectOpenTitleA[0] = 0xFF;
        this->fileSelectOpenTitleA[1] = 0;
        this->fileSelectStateIdx++;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805318.s")
// OK
void func_80805318(FileChooseContext* this) {
    s32 pad;
    s32 pad2;

    if (this->actionTimer == 0x4B) {
        this->metalJointsA[this->copyDsFiletIdx] = 0xFF;
        Audio_PlaySoundGeneral(0x28BA, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    this->actionTimer -= 1;
    if (this->actionTimer < 0x4A) {
        if (CHECK_BTN_ALL(this->state.input[0].press, (A_BUTTON | B_BUTTON | START_BUTTON)) || (this->actionTimer == 0)) {
            this->actionTimer = 8;
            this->nextTitleTexIdx = 0;
            this->fileSelectStateIdx++;
            Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805434.s")
// OK
void func_80805434(FileChooseContext* this) {
    this->fileInfoA[this->selectedFileIdx] -= 0x19;
    this->fileInfoA[this->copyDsFiletIdx] -= 0x19;
    this->fileNameBoxesA[this->selectedFileIdx] += 0x19;
    this->fileNameBoxesA[this->copyDsFiletIdx] += 0x19;
    this->fileSelectOpenTitleA[0] -= 0x1F;
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->fileNamesY[this->copyDsFiletIdx] = 
        this->buttonsCopyErase[0] = 0;
        this->actionTimer = 8;
        this->fileSelectOpenTitleA[0] = 0;
        this->fileSelectStateIdx++;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805524.s")
// OK
void func_80805524(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    Sram* sram = &this->sram;
    s16 i;
    s16 tmp;

    for (i = 0; i < 5; i++) {
        tmp = ABS(thisx->buttonsFile[i]) / thisx->actionTimer;
        if (thisx->buttonsFile[i] >= 0) {
            thisx->buttonsFile[i] -= tmp;
        } else {
            thisx->buttonsFile[i] += tmp;
        }
    }
    for (i = 0; i < 3; i++) {
        if (i != thisx->btnIdx) {
            thisx->fileButtonsA[i] += 0x19;
            if (IS_VALID_SAVE(sram->read_buff + D_8012A4E0[0][i])) {
                thisx->fileNameBoxesA[i] = 
                thisx->fileNamesA[i] = thisx->fileButtonsA[i];
                thisx->metalJointsA[i] += 0x1F;
            }
        }
    }
    thisx->buttonCopyEraseA[0] += 0x19;
    thisx->buttonCopyEraseA[1] += 0x19;
    thisx->buttonOptionsA += 0x19;
    thisx->fileSelectOpenTitleA[1] += 0x1F;
    thisx->actionTimer -= 1;
    if (thisx->actionTimer == 0) {
        for (i = 0; i < 3; i++) {
            thisx->metalJointsA[i] = 0;
            thisx->fileButtonsA[i] = 0xC8;
            thisx->fileNameBoxesA[i] = 
            thisx->fileNamesA[i] = thisx->metalJointsA[i];
            if (IS_VALID_SAVE(sram->read_buff + D_8012A4E0[0][i])) {
                thisx->metalJointsA[i] = 0xFF;
                thisx->fileNameBoxesA[i] = 
                thisx->fileNamesA[i] = thisx->fileButtonsA[i];
            }
        }
        thisx->fileNamesY[thisx->selectedFileIdx] = 0;
        thisx->highlightColorRGBA[3] = 0x46;
        thisx->highlightColorAIncrease = 1;
        XREG(35) = XREG(36);
        thisx->titleTexIdx = thisx->nextTitleTexIdx;
        thisx->fileSelectOpenTitleA[0] = 0xFF;
        thisx->fileSelectOpenTitleA[1] = 0;
        thisx->fileSelectStateIdx = 2;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805824.s")
// OK
void func_80805824(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    s16 i;
    s16 tmp;

    for (i = 0; i < 5; i++) {
        tmp = ABS(thisx->buttonsFile[i]) / thisx->actionTimer;
        if (thisx->buttonsFile[i] >= 0) {
            thisx->buttonsFile[i] -= tmp;
        } else {
            thisx->buttonsFile[i] += tmp;
        }
    }
    thisx->buttonCopyEraseA[0] += 0x19;
    thisx->buttonYesQuitA[1] -= 0x19;
    thisx->fileSelectOpenTitleA[0] -= 0x1F;
    thisx->fileSelectOpenTitleA[1] += 0x1F;

    thisx->actionTimer -= 1;
    if (thisx->actionTimer == 0) {
        thisx->buttonCopyEraseA[0] = 0xC8;
        thisx->buttonYesQuitA[1] = 0;
        thisx->titleTexIdx = thisx->nextTitleTexIdx;
        thisx->fileSelectOpenTitleA[0] = 0xFF;
        thisx->fileSelectOpenTitleA[1] = 0;
        thisx->fileSelectStateIdx = 2;
    }
    thisx->buttonOptionsA =
    thisx->buttonCopyEraseA[1] = thisx->buttonCopyEraseA[0];
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080595C.s")
// OK
void func_8080595C(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    s16 i;
    s16 tmp;

    for (i = 0; i < 5; i++) {
        tmp = ABS(thisx->buttonsFile[i] - D_80812480[i]) / thisx->actionTimer;
        if (thisx->buttonsFile[i] >= D_80812480[i]) {
            thisx->buttonsFile[i] -= tmp;
        } else {
            thisx->buttonsFile[i] += tmp;
        }
    }
    thisx->buttonCopyEraseA[0] -= 0x32;
    thisx->buttonCopyEraseA[1] -= 0x32;
    thisx->buttonOptionsA -= 0x32;
    thisx->buttonYesQuitA[1] += 0x19;
    if (thisx->buttonCopyEraseA[0] <= 0) {
        thisx->buttonCopyEraseA[0] = 
        thisx->buttonCopyEraseA[1] = 
        thisx->buttonOptionsA = 0;
    }
    thisx->fileSelectOpenTitleA[0] -= 0x1F;
    thisx->fileSelectOpenTitleA[1] += 0x1F;
    thisx->actionTimer -= 1;
    if (thisx->actionTimer == 0) {
        thisx->highlightColorRGBA[3] = 0x46;
        thisx->highlightColorAIncrease = 1;
        XREG(35) = XREG(36);
        thisx->buttonOptionsA = 0;
        //thisx->buttonYesQuitA[1] = 0;
        thisx->buttonYesQuitA[1] = 0xC8;
        thisx->buttonCopyEraseA[0] = 
        thisx->buttonCopyEraseA[1] = thisx->buttonOptionsA;
        thisx->titleTexIdx = thisx->nextTitleTexIdx;
        thisx->fileSelectOpenTitleA[0] = 0xFF;
        thisx->fileSelectOpenTitleA[1] = 0;
        thisx->btnIdx = 3;
        thisx->fileSelectStateIdx++;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805B2C.s")
// OK
void func_80805B2C(FileChooseContext* this) {
    s32 pad;
    Input* controller1 = &this->state.input[0];
    s32 stickY;
    s32 pad2;

    if ((this->btnIdx == 3) && CHECK_BTN_ALL(controller1->press, (A_BUTTON | START_BUTTON)) || 
        CHECK_PAD(controller1->press, B_BUTTON)) {
        
        this->btnIdx = 4;
        this->actionTimer = 8;
        this->nextTitleTexIdx = 0;
        this->fileSelectStateIdx = 0x1E;
        this->fileWarningTexIdx = -1;
        Audio_PlaySoundGeneral(0x483C, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }
    if (CHECK_BTN_ALL(controller1->press, (A_BUTTON | START_BUTTON))) {
        if (IS_VALID_SAVE(this->sram.read_buff + D_8012A4E0[0][this->btnIdx])) {
            this->actionTimer = 8;
            this->selectedFileIdx = this->btnIdx;
            this->fileSelectStateIdx = 0x16;
            this->nextTitleTexIdx = 7;
            Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        } else {
            Audio_PlaySoundGeneral(0x483D, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
    }
    stickY = ABS(this->stickY);
    if (stickY >= 30) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        if (this->stickY >= 30) {
            this->btnIdx--;
            if (this->btnIdx < 0) {
                this->btnIdx = 3;
            }
        } else {
            this->btnIdx++;
            if (this->btnIdx >= 4) {
                this->btnIdx = 0;
            }
        }
    }
    if (this->btnIdx != 3) {
        if (!IS_VALID_SAVE(this->sram.read_buff + D_8012A4E0[0][this->btnIdx])) {
            this->fileWarningTexIdx = 3;
            this->warningFileIdx = this->btnIdx;
            this->fileEmptyTextA = 0xFF;
        } else {
            this->fileWarningTexIdx = -1;
        }
    } else {
        this->fileWarningTexIdx = -1;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805EB8.s")
// OK
void func_80805EB8(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    s16 i;
    s16 tmp;

    for (i = 0; i < 3; i++) {
        if (i != thisx->btnIdx) {
            thisx->fileButtonsA[i] -= 0x19;
            if (IS_VALID_SAVE(thisx->sram.read_buff + D_8012A4E0[0][i])) {
                thisx->metalJointsA[i] -= 0x1F;
                thisx->fileNameBoxesA[i] = 
                thisx->fileNamesA[i] = thisx->fileButtonsA[i];
            }
        } else {
            thisx->fileNameBoxesA[i] -= 0x19;
        }
    }
    thisx->fileSelectOpenTitleA[0] -= 0xF;
    thisx->fileSelectOpenTitleA[1] += 0xF;

    tmp = ABS(thisx->buttonsFile[thisx->btnIdx] - D_808124AC[thisx->btnIdx]) / thisx->actionTimer;
    if (thisx->buttonsFile[thisx->btnIdx] >= D_808124AC[thisx->btnIdx]) {
        thisx->buttonsFile[thisx->btnIdx] -= tmp;
    } else {
        thisx->buttonsFile[thisx->btnIdx] += tmp;
    }
    thisx->actionTimer--;
    if (thisx->actionTimer == 0) {
        for (i = 0; i < 3; i++) {
            if (i != thisx->btnIdx) {
                thisx->fileButtonsA[i] = 0;
                if (IS_VALID_SAVE(thisx->sram.read_buff + D_8012A4E0[0][i])) {
                    thisx->metalJointsA[i] = 0;
                    thisx->fileNameBoxesA[i] = 
                    thisx->fileNamesA[i] = thisx->fileButtonsA[i] = 0;
                }
            } else {
                thisx->fileNameBoxesA[i] = 0;
            }
        }
        thisx->buttonsFile[thisx->btnIdx] = D_808124AC[thisx->btnIdx];
        thisx->actionTimer = 8;
        thisx->fileSelectStateIdx++;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806180.s")
// OK
void func_80806180(FileChooseContext* this) {
    this->buttonYesQuitA[0] += 0x19;
    this->fileSelectOpenTitleA[0] -= 0xF;
    this->fileSelectOpenTitleA[1] += 0xF;
    this->fileInfoA[this->btnIdx] += 0x19;
    this->actionTimer--;
    if (this->actionTimer == 0) {
        this->actionTimer = 8;
        this->titleTexIdx = this->nextTitleTexIdx;
        this->fileInfoA[this->btnIdx] = 
        this->fileSelectOpenTitleA[0] = 0xFF;
        this->fileSelectOpenTitleA[1] = 0;
        this->buttonYesQuitA[0] = 0xC8;
        this->btnIdx = 1;
        this->fileSelectStateIdx = 0x18;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080625C.s")
// OK
void func_8080625C(FileChooseContext* this) {
    Input* cont1 = &this->state.input[0];
    s32 stickY;
    s32 pad;

    if (((this->btnIdx != 0) && CHECK_BTN_ALL(cont1->press, (A_BUTTON | START_BUTTON))) || 
         CHECK_PAD(cont1->press, B_BUTTON)) {
        this->btnIdx = this->selectedFileIdx;
        this->nextTitleTexIdx = 6;
        this->fileSelectStateIdx = 0x19;
        this->actionTimer = 8;
        Audio_PlaySoundGeneral(0x483C, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }
    if (CHECK_BTN_ALL(cont1->press, (A_BUTTON | START_BUTTON))) {
        this->n64ddFlags[this->selectedFileIdx] = 
        this->metalJointsA[this->selectedFileIdx] = 0;
        Audio_PlaySoundGeneral(0x28BA, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->actionTimer = 8;
        this->fileSelectStateIdx = 0x1B;
        this->nextTitleTexIdx = 8;
        func_800AA000(200.0f, 0xFF, 0x14, 0x96);
        D_808124A0 = 0xF;
        return;
    }
    stickY = ABS(this->stickY);
    if (stickY >= 30) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->btnIdx ^= 1;
    }
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806444.s")
// OK
void func_80806444(FileChooseContext* this) {
    this->fileInfoA[this->btnIdx] -= 0x19;
    this->fileNameBoxesA[this->btnIdx] += 0x19;
    this->buttonYesQuitA[0] -= 0x19;
    this->actionTimer--;
    if (this->actionTimer == 0) {
        this->actionTimer = 8;
        this->fileInfoA[this->btnIdx] = 0;
        this->fileSelectStateIdx++;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808064F4.s")
// OK
void func_808064F4(FileChooseContext* this) {
    s16 i;
    s16 tmp;

    tmp = ABS(this->buttonsFile[this->btnIdx] - D_80812480[this->btnIdx]) / this->actionTimer;
    if (this->buttonsFile[this->btnIdx] >= D_80812480[this->btnIdx]) {
        this->buttonsFile[this->btnIdx] -= tmp;
    } else {
        this->buttonsFile[this->btnIdx] += tmp;
    }
    for (i = 0; i < 3; i++) {
        if (i != this->btnIdx) {
            this->fileButtonsA[i] += 0x19;
            if (IS_VALID_SAVE(this->sram.read_buff + D_8012A4E0[0][i])) {
                this->fileNamesA[i] = this->fileButtonsA[i];
                this->metalJointsA[i] += 0x1F;
                this->fileNameBoxesA[i] = this->fileButtonsA[i];
            }
        }
    }
    this->fileSelectOpenTitleA[0] -= 0x1F;
    this->fileSelectOpenTitleA[1] += 0x1F;
    this->actionTimer--;
    if (this->actionTimer == 0) {
        this->buttonsFile[this->btnIdx] = D_80812480[this->btnIdx];
        this->actionTimer = 8;
        this->btnIdx = 3;
        this->titleTexIdx = this->nextTitleTexIdx;
        this->fileSelectOpenTitleA[0] = 0xFF;
        this->fileSelectOpenTitleA[1] = 0;
        this->fileSelectStateIdx = 0x15;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806710.s")
// OK
void func_80806710(FileChooseContext* this) {
    static s16 D_80813800;
    s16 tmp = D_808124A0;
    s32 pad;
    
    if (tmp == 0) {
        if (this->actionTimer == 8)
            D_80813800 = 1;
        if (this->actionTimer != 0) {
            this->fileSelectOpenTitleA[0] -= 0x1F;
            this->fileSelectOpenTitleA[1] += 0x1F;
            this->fileInfoA[this->selectedFileIdx] -= 0x19;
            this->buttonYesQuitA[0] -= 0x19;
            this->buttonYesQuitA[1] -= 0x19;
        }
        this->fileNamesY[this->selectedFileIdx] = this->fileNamesY[this->selectedFileIdx] - D_80813800;
        D_80813800 += 2;
        this->actionTimer--;
        if (this->actionTimer == 0) {
            func_800A96D0(this, &this->sram);
            this->titleTexIdx = this->nextTitleTexIdx;
            this->fileSelectOpenTitleA[0] = 0xFF;
            this->fileSelectOpenTitleA[1] = 
            this->metalJointsA[this->selectedFileIdx] = 0;
            this->buttonYesQuitA[0] = 
            this->buttonYesQuitA[1] = 0;
            if (1) {}
            this->fileInfoA[this->selectedFileIdx] = 
            this->fileNameBoxesA[this->selectedFileIdx] = this->buttonYesQuitA[1];
            
            this->fileSelectStateIdx++;
            this->actionTimer = 0x5A;
        }
    } else {
        D_808124A0 = tmp - 1;
        if (D_808124A0 == 0) {
            Audio_PlaySoundGeneral(0x5801, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808068F0.s")
// OK
void func_808068F0(FileChooseContext* this) {
    Input* cont1 = &this->state.input[0];

    if (CHECK_BTN_ALL(cont1->press, (A_BUTTON | B_BUTTON | START_BUTTON)) || (--this->actionTimer == 0)) {
        this->buttonsCopyErase[0] = 0;
        this->actionTimer = 8;
        this->nextTitleTexIdx = 0;
        this->fileSelectStateIdx++;
        Audio_PlaySoundGeneral(0x483C, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808069B4.s")
// OK
void func_808069B4(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    Sram* sram = &this->sram;
    s16 i;
    s16 tmp;

    for (i = 0; i < 5; i++) {
        tmp = ABS(thisx->buttonsFile[i]) / thisx->actionTimer;
        if (thisx->buttonsFile[i] >= 0) {
            thisx->buttonsFile[i] -= tmp;
        } else {
            thisx->buttonsFile[i] += tmp;
        }
    }
    for (i = 0; i < 3; i++) {
        thisx->fileButtonsA[i] += 0x19;
        if (IS_VALID_SAVE(sram->read_buff + D_8012A4E0[0][i])) {
            thisx->fileNamesA[i] = thisx->fileButtonsA[i];
            thisx->metalJointsA[i] += 0x1F;
            thisx->fileNameBoxesA[i] = thisx->fileButtonsA[i];
        }
    }
    if (thisx->fileButtonsA[thisx->selectedFileIdx] >= 0xC8) {
        thisx->fileButtonsA[thisx->selectedFileIdx] = 0xC8;
    }
    thisx->fileSelectOpenTitleA[0] -= 0x1F;
    thisx->fileSelectOpenTitleA[1] += 0x1F;
    thisx->actionTimer--;
    if (thisx->actionTimer == 0) {
        thisx->fileNamesY[thisx->selectedFileIdx] = 0;
        thisx->highlightColorRGBA[3] = 0x46;
        thisx->highlightColorAIncrease = 1;
        XREG(35) = XREG(36);
        thisx->buttonYesQuitA[1] = 0;
        thisx->buttonCopyEraseA[0] = 0xC8;
        thisx->buttonYesQuitA[0] = thisx->buttonYesQuitA[1];
        thisx->titleTexIdx = thisx->nextTitleTexIdx;
        thisx->fileSelectOpenTitleA[0] = 0xFF;
        thisx->fileSelectOpenTitleA[1] = 0;
        thisx->fileSelectStateIdx = 2;
    }
    tmp = thisx->buttonCopyEraseA[0];
    thisx->buttonCopyEraseA[1] = tmp;
    thisx->buttonOptionsA = tmp;
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806C20.s")
// OK
void func_80806C20(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    s16 i;
    s16 tmp;

    for (i = 0; i < 5; i++) {
        tmp = ABS(thisx->buttonsFile[i]) / thisx->actionTimer;
        if (thisx->buttonsFile[i] >= 0) {
            thisx->buttonsFile[i] -= tmp;
        } else {
            thisx->buttonsFile[i] += tmp;
        }
    }
    thisx->buttonCopyEraseA[0] += 0x19;
    thisx->buttonCopyEraseA[1] += 0x19;
    thisx->buttonOptionsA += 0x19;
    thisx->buttonYesQuitA[1] -= 0x32;
    if (thisx->buttonYesQuitA[1] <= 0) {
        thisx->buttonYesQuitA[1] = 0;
    }
    thisx->fileSelectOpenTitleA[0] -= 0x1F;
    thisx->fileSelectOpenTitleA[1] += 0x1F;

    thisx->actionTimer--;
    if (thisx->actionTimer == 0) {
        thisx->highlightColorRGBA[3] = 0x46;
        thisx->highlightColorAIncrease = 1;
        XREG(35) = XREG(36);
        thisx->buttonCopyEraseA[0] = 0xC8;
        thisx->buttonYesQuitA[1] = 0;
        thisx->titleTexIdx = thisx->nextTitleTexIdx;
        thisx->fileSelectOpenTitleA[0] = 0xFF;
        thisx->fileSelectOpenTitleA[1] = 0;
        thisx->fileSelectStateIdx = 2;
    }
    thisx->buttonCopyEraseA[1] = thisx->buttonCopyEraseA[0];
    thisx->buttonOptionsA = thisx->buttonCopyEraseA[0];
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806DB0.s")
// OK
void func_80806DB0(GraphicsContext* gfxCtx, u32* arg1, s16 arg2) {
    s32 pad;
    Gfx* disprefs[4];

    Graph_OpenDisps(disprefs, gfxCtx, "../z_file_nameset_PAL.c", 0x6E);
    
    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_16b, 1, arg1);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyOpa.p++);
    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 63, 2048);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C);

    gSP1Quadrangle(gfxCtx->polyOpa.p++, arg2, arg2 + 2, arg2 + 3, arg2 + 1, 0);
    Graph_CloseDisps(disprefs, gfxCtx, "../z_file_nameset_PAL.c", 0x77);
}

#ifdef NON_MATCHING
void func_80806F34(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    s16 i;
    s16 j;
    s16 vtx_cnt;
    //s16 tmp_inc;
    s16 tmp;
    s16 tmp2;
    s16 tmp3;
    s16 val;

    thisx->allocVtx3 = Graph_Alloc(gfxCtx, 0x1040);

    tmp = 0x26;
    for (i = 0, vtx_cnt = 0, tmp3 = 0; i < 5; i++, tmp -= 0x10) {
        tmp2 = -0x60;
        for (j = 0; j < 13; j++, vtx_cnt += 4, tmp3++) {
            val = D_80812544[tmp3] + tmp2;
            thisx->allocVtx3[vtx_cnt+2].ob[0] = val;
            thisx->allocVtx3[vtx_cnt+0].ob[0] = val;

            val = D_80812544[tmp3] + tmp2 + 0xC;
            thisx->allocVtx3[vtx_cnt+3].ob[0] = val;
            thisx->allocVtx3[vtx_cnt+1].ob[0] = val;

            thisx->allocVtx3[vtx_cnt].ob[1] = 
            thisx->allocVtx3[vtx_cnt+1].ob[1] = tmp;

            thisx->allocVtx3[vtx_cnt+3].ob[1] = tmp - 0xC;
            thisx->allocVtx3[vtx_cnt+2].ob[1] = tmp - 0xC;

            // 57
            thisx->allocVtx3[vtx_cnt].ob[2] = 
            thisx->allocVtx3[vtx_cnt+1].ob[2] = 
            thisx->allocVtx3[vtx_cnt+2].ob[2] = 
            thisx->allocVtx3[vtx_cnt+3].ob[2] = 0;

            // 62
            thisx->allocVtx3[vtx_cnt].flag = 
            thisx->allocVtx3[vtx_cnt+1].flag = 
            thisx->allocVtx3[vtx_cnt+2].flag = 
            thisx->allocVtx3[vtx_cnt+3].flag = 0;

            // 67
            thisx->allocVtx3[vtx_cnt].tc[0] = 
            thisx->allocVtx3[vtx_cnt].tc[1] = 
            thisx->allocVtx3[vtx_cnt+1].tc[1] = 
            thisx->allocVtx3[vtx_cnt+2].tc[0] = 0;

            // 72
            thisx->allocVtx3[vtx_cnt+1].tc[0] = 
            thisx->allocVtx3[vtx_cnt+2].tc[1] = 
            thisx->allocVtx3[vtx_cnt+3].tc[0] = 
            thisx->allocVtx3[vtx_cnt+3].tc[1] = 0x200;

            // 77
            thisx->allocVtx3[vtx_cnt].cn[0] = 
            thisx->allocVtx3[vtx_cnt+1].cn[0] = 
            thisx->allocVtx3[vtx_cnt+2].cn[0] = 
            thisx->allocVtx3[vtx_cnt+3].cn[0] = 
            thisx->allocVtx3[vtx_cnt].cn[1] = 
            thisx->allocVtx3[vtx_cnt+1].cn[1] = 
            thisx->allocVtx3[vtx_cnt+2].cn[1] = 
            thisx->allocVtx3[vtx_cnt+3].cn[1] = 
            thisx->allocVtx3[vtx_cnt].cn[2] = 
            thisx->allocVtx3[vtx_cnt+1].cn[2] = 
            thisx->allocVtx3[vtx_cnt+2].cn[2] = 
            thisx->allocVtx3[vtx_cnt+3].cn[2] = 
            thisx->allocVtx3[vtx_cnt].cn[3] = 
            thisx->allocVtx3[vtx_cnt+1].cn[3] = 
            thisx->allocVtx3[vtx_cnt+2].cn[3] = 
            thisx->allocVtx3[vtx_cnt+3].cn[3] = 0xFF;
            tmp2 += 0x10;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806F34.s")
#endif

#ifdef NON_MATCHING
void func_8080723C(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    GraphicsContext* gfxCtx = thisx->state.gfxCtx;
    KanFont* kanfont = &thisx->kanfont;
    s16 i;
    s16 val;
    s16 tmp;
    s32 tmp32;
    s32 tmp322;
    s16 vtx_cnt;
    SaveContext* saveCtx = &gSaveContext;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, thisx->state.gfxCtx, "../z_file_nameset_PAL.c", 0xCD);

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, thisx->fileSelectOpenTitleA[0]);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);
    
    gSPVertex(gfxCtx->polyOpa.p++, D_80811BB0, 24, 0);
    
    gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_808125C4[saveCtx->language], 
                G_IM_FMT_IA, G_IM_SIZ_8b, 0x38, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    
    /*
    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_808125C4[saveCtx->language]);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyOpa.p++);
    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 447, 293);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 7, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x00DC, 0x003C);
    */

    gSP1Quadrangle(gfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);
    gDPPipeSync(gfxCtx->polyOpa.p++);

    for (i = 0, vtx_cnt = 0x10; i < 2; i++, vtx_cnt += 4) {
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, thisx->windowRGB[0], thisx->windowRGB[1], thisx->windowRGB[2], 0xFF);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);
        
        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_808125D0[saveCtx->language][i], 
                G_IM_FMT_IA, G_IM_SIZ_16b, D_808125E8[i], 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    
        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_808125D0[saveCtx->language][i]);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, D_808125E8[i], D_808125E8[i]);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_32b, 0, D_808125E8[i], G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, D_808125E8[i], 0x3C);
        */

        gSP1Quadrangle(gfxCtx->polyOpa.p++, vtx_cnt, vtx_cnt + 2, vtx_cnt + 3, vtx_cnt + 1, 0);
    }

    thisx->allocVtx4 = Graph_Alloc(thisx->state.gfxCtx, 0x2C0);

    for (i = 0, vtx_cnt = 0; vtx_cnt < 0x2C; i++, vtx_cnt += 4) {
        if ((i > 0) && (i < 9)) {
            tmp32 = D_808125EC[i];
            tmp322 = D_808124C0[thisx->fileNames[thisx->btnIdx][i-1]];
            val = tmp322 + tmp32 + thisx->newFileNameBoxX;

            thisx->allocVtx4[vtx_cnt+2].ob[0] = val;
            thisx->allocVtx4[vtx_cnt].ob[0] = val;

            val = thisx->allocVtx4[vtx_cnt].ob[0] + 0xA;
            thisx->allocVtx4[vtx_cnt+3].ob[0] = val;
            thisx->allocVtx4[vtx_cnt+1].ob[0] = val;
        } else {
            val = D_808125EC[i] + thisx->newFileNameBoxX;
            
            thisx->allocVtx4[vtx_cnt+2].ob[0] = val;
            thisx->allocVtx4[vtx_cnt].ob[0] = val;

            val = thisx->allocVtx4[vtx_cnt].ob[0] + 0xA;
            
            thisx->allocVtx4[vtx_cnt+3].ob[0] = val;
            thisx->allocVtx4[vtx_cnt+1].ob[0] = val;
        }

        val = D_80812604[vtx_cnt];
        thisx->allocVtx4[vtx_cnt+1].ob[1] = val;
        thisx->allocVtx4[vtx_cnt].ob[1] = val;

        val = thisx->allocVtx4[vtx_cnt].ob[1] - 0xA;
        thisx->allocVtx4[vtx_cnt+3].ob[1] = val;
        thisx->allocVtx4[vtx_cnt+2].ob[1] = val;

        thisx->allocVtx4[vtx_cnt].ob[2] =
        thisx->allocVtx4[vtx_cnt+1].ob[2] =
        thisx->allocVtx4[vtx_cnt+2].ob[2] =
        thisx->allocVtx4[vtx_cnt+3].ob[2] = 0;

        thisx->allocVtx4[vtx_cnt].flag =
        thisx->allocVtx4[vtx_cnt+1].flag =
        thisx->allocVtx4[vtx_cnt+2].flag =
        thisx->allocVtx4[vtx_cnt+3].flag = 0;

        thisx->allocVtx4[vtx_cnt].tc[0] = 
        thisx->allocVtx4[vtx_cnt].tc[1] = 
        thisx->allocVtx4[vtx_cnt+1].tc[1] = 
        thisx->allocVtx4[vtx_cnt+2].tc[0] = 0;


        thisx->allocVtx4[vtx_cnt+1].tc[0] = 
        thisx->allocVtx4[vtx_cnt+2].tc[1] = 
        thisx->allocVtx4[vtx_cnt+3].tc[0] = 
        thisx->allocVtx4[vtx_cnt+3].tc[1] = 0x200;


        thisx->allocVtx4[vtx_cnt].cn[0] = 
        thisx->allocVtx4[vtx_cnt+1].cn[0] = 
        thisx->allocVtx4[vtx_cnt+2].cn[0] = 
        thisx->allocVtx4[vtx_cnt+3].cn[0] = 
        thisx->allocVtx4[vtx_cnt].cn[1] = 
        thisx->allocVtx4[vtx_cnt+1].cn[1] = 
        thisx->allocVtx4[vtx_cnt+2].cn[1] = 
        thisx->allocVtx4[vtx_cnt+3].cn[1] = 
        thisx->allocVtx4[vtx_cnt].cn[2] = 
        thisx->allocVtx4[vtx_cnt+1].cn[2] = 
        thisx->allocVtx4[vtx_cnt+2].cn[2] = 
        thisx->allocVtx4[vtx_cnt+3].cn[2] = 
        thisx->allocVtx4[vtx_cnt].cn[3] = 
        thisx->allocVtx4[vtx_cnt+1].cn[3] = 
        thisx->allocVtx4[vtx_cnt+2].cn[3] = 
        thisx->allocVtx4[vtx_cnt+3].cn[3] = 0xFF;
    }
    val = thisx->allocVtx4[0].ob[0] + 0x6C;
    thisx->allocVtx4[3].ob[0] = val;
    thisx->allocVtx4[1].ob[0] = val;
    
    val = thisx->allocVtx4[0].ob[1] - 0x10;
    thisx->allocVtx4[3].ob[1] = val;
    thisx->allocVtx4[2].ob[1] = val;
    

    thisx->allocVtx4[1].tc[0] = 
    thisx->allocVtx4[3].tc[0] = 0xD80;

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, thisx->windowRGB[0], thisx->windowRGB[1], thisx->windowRGB[2], thisx->newFileNameBoxA);
    
    gSPVertex(gfxCtx->polyOpa.p++, thisx->allocVtx4, 4, 0);
    
    gDPLoadTextureBlock(gfxCtx->polyOpa.p++, 0x01015600, 
                G_IM_FMT_IA, G_IM_SIZ_16b, 0x6C, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    
    /*
    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x01015600);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyOpa.p++);
    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 1727, 76);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 27, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x01AC, 0x003C);
    */

    gSP1Quadrangle(gfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetCombineLERP(gfxCtx->polyOpa.p++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);
    gSPVertex(gfxCtx->polyOpa.p++, &thisx->allocVtx4[4], 32, 0);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, thisx->newFileNameBoxA);

    for (i = 0, tmp = 0; tmp < 32; i++, tmp += 4) {
        tmp32 = tmp;
        func_80806DB0(thisx->state.gfxCtx, kanfont->unk_3C88[thisx->fileNames[thisx->btnIdx][i]], tmp32);
    }
    
    thisx->allocVtx4[37].tc[0] = 
    thisx->allocVtx4[38].tc[1] = 
    thisx->allocVtx4[39].tc[0] = 
    thisx->allocVtx4[39].tc[1] = 
    thisx->allocVtx4[41].tc[0] = 
    thisx->allocVtx4[42].tc[1] = 
    thisx->allocVtx4[43].tc[0] = 
    thisx->allocVtx4[43].tc[1] = 0x300;

    if ((thisx->kbdButtonIdx == 0) || (thisx->kbdButtonIdx == 1) || (thisx->kbdButtonIdx == 4)) {
        thisx->allocVtx4[41].tc[0] = 
        thisx->allocVtx4[43].tc[0] = 0x700;
    } else {
        if ((thisx->kbdButtonIdx == 2) || (thisx->kbdButtonIdx == 3)) {
            thisx->allocVtx4[41].tc[0] = 
            thisx->allocVtx4[43].tc[0] = 0x500;
        }
    }

    Graph_CloseDisps(dispRefs, thisx->state.gfxCtx, "../z_file_nameset_PAL.c", 0x133);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080723C.s")
#endif


#ifdef NON_MATCHING
void func_80807DCC(FileChooseContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    KanFont* kanfont = &this->kanfont;
    s16 i = 0;
    s16 tmp;
    s16 tmp2;
    s16 vtx_cnt = 0;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, this->state.gfxCtx, "../z_file_nameset_PAL.c", 0x144);
    func_800949A8(this->state.gfxCtx);
    gDPSetCycleType(gfxCtx->polyOpa.p++, G_CYC_2CYCLE);
    gDPSetRenderMode(gfxCtx->polyOpa.p++, G_RM_PASS, G_RM_XLU_SURF2);
    gDPSetCombineLERP(gfxCtx->polyOpa.p++, 0, 0, 0, PRIMITIVE, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, this->kbdCharBoxA, 0xFF, 0xFF, 0xFF, 0xFF);

    for (; vtx_cnt < 0x100; vtx_cnt += 32) {
        gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx3[vtx_cnt], 32, 0);
        for (tmp = 0; tmp < 32; i++, tmp += 4) {
            func_80806DB0(this->state.gfxCtx, kanfont->unk_3C88[D_808123F0[i]], tmp);
        }
    }
    gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx3[0x100], 4, 0);
    func_80806DB0(this->state.gfxCtx, kanfont->unk_3C88[D_808123F0[i]], 0);
    Graph_CloseDisps(dispRefs, this->state.gfxCtx, "../z_file_nameset_PAL.c", 0x15B);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80807DCC.s")
#endif

#ifdef NON_MATCHING
void func_80808000(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    Input* cont1 = &thisx->state.input[0];
    SaveContext* saveCtx = &gSaveContext;
    s16 i;
    s16 val;
    s16 tmp;
    u16 tmpu;
    s32 tmp32;
    GraphicsContext* gfxCtx = thisx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, thisx->state.gfxCtx, "../z_file_nameset_PAL.c", 0x170);
    func_80806F34(thisx);
    func_8080723C(thisx);
    func_8080BFE4(thisx);

    tmp = (thisx->newFileNameCharCount * 4) + 4;
    val = thisx->allocVtx4[tmp].ob[0] - 6;
    thisx->allocVtx4[0x26].ob[0] = val;
    thisx->allocVtx4[0x24].ob[0] = val;

    val = thisx->allocVtx4[0x24].ob[0] + 0x18;
    thisx->allocVtx4[0x27].ob[0] = val;
    thisx->allocVtx4[0x25].ob[0] = val;

    val = thisx->allocVtx4[tmp].ob[1] + 7;
    thisx->allocVtx4[0x25].ob[1] = val;
    thisx->allocVtx4[0x24].ob[1] = val;

    val = thisx->allocVtx4[0x24].ob[1] - 0x18;
    thisx->allocVtx4[0x27].ob[1] = val;
    thisx->allocVtx4[0x26].ob[1] = val;

    if ((thisx->kbdButtonIdx == 0) || (thisx->kbdButtonIdx == 1) || (thisx->kbdButtonIdx == 4)) {
        if (thisx->kbdButtonIdx != thisx->kbdCharX) {
            osSyncPrintf("014 xpos=%d  contents=%d\n", thisx->kbdCharX, thisx->kbdButtonIdx);
        }
        val = D_80811BB0[thisx->kbdCharX][32] - 4;
        thisx->allocVtx4[0x2A].ob[0] = val;
        thisx->allocVtx4[0x28].ob[0] = val;
        val = thisx->allocVtx4[0x28].ob[0] + 0x34;
        thisx->allocVtx4[0x2B].ob[0] = val;
        thisx->allocVtx4[0x29].ob[0] = val;
        val = D_80811BB0[thisx->kbdCharX][33] + 4;
        thisx->allocVtx4[0x29].ob[1] = val;
        thisx->allocVtx4[0x28].ob[1] = val;
    } else {
        if ((thisx->kbdButtonIdx == 2) || (thisx->kbdButtonIdx == 3)) {
            if (thisx->kbdButtonIdx != thisx->kbdCharX) {
                osSyncPrintf("23 xpos=%d  contents=%d\n", thisx->kbdCharX, thisx->kbdButtonIdx);
            }
            val = D_80811BB0[thisx->kbdCharX][32] - 4;
            thisx->allocVtx4[0x2A].ob[0] = val;
            thisx->allocVtx4[0x28].ob[0] = val;
            val = thisx->allocVtx4[0x28].ob[0] + 0x28;
            thisx->allocVtx4[0x2B].ob[0] = val;
            thisx->allocVtx4[0x29].ob[0] = val;
            val = D_80811BB0[thisx->kbdCharX][33] + 4;
            thisx->allocVtx4[0x29].ob[1] = val;
            thisx->allocVtx4[0x28].ob[1] = val;
        } else {
            if (thisx->kbdCharIdx >= 0x41) {
                osSyncPrintf("mjp=%d  xpos=%d  ypos=%d  name_contents=%d\n", thisx->kbdCharIdx, thisx->kbdCharX, thisx->kbdCharY, thisx->kbdButtonIdx);
            }
            val = thisx->allocVtx3[thisx->kbdCharIdx * 4].ob[0] - D_80812544[thisx->kbdCharIdx] - 6;
            thisx->allocVtx4[0x2A].ob[0] = val;
            thisx->allocVtx4[0x28].ob[0] = val;
            val = thisx->allocVtx4[0x28].ob[0] + 0x18;
            thisx->allocVtx4[0x2B].ob[0] = val;
            thisx->allocVtx4[0x29].ob[0] = val;
            val = thisx->allocVtx3[thisx->kbdCharIdx * 4].ob[1] + 6;
            thisx->allocVtx4[0x29].ob[1] = val;
            thisx->allocVtx4[0x28].ob[1] = val;
        }
    }

    val = thisx->allocVtx4[0x28].ob[1] - 0x18;
    thisx->allocVtx4[0x2B].ob[1] = val;
    thisx->allocVtx4[0x2A].ob[1] = val;

    gSPVertex(gfxCtx->polyOpa.p++, &thisx->allocVtx4[0x24], 8, 0);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetCombineLERP(gfxCtx->polyOpa.p++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, thisx->highlightColorRGBA[0], thisx->highlightColorRGBA[1], thisx->highlightColorRGBA[2], thisx->highlightColorRGBA[3]);
    
    gDPLoadTextureBlock(gfxCtx->polyOpa.p++, 0x0101BD40, 
                G_IM_FMT_I, G_IM_SIZ_8b, 0x18, 0x18, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    /*
    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_16b, 1, 0x0101BD40);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyOpa.p++);
    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 287, 683);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_8b, 3, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x005C, 0x005C);
    */

    gSP1Quadrangle(gfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);

    if ((thisx->kbdButtonIdx == 0) || (thisx->kbdButtonIdx == 1) || (thisx->kbdButtonIdx == 4)) {
        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, 0x0101BF80, 
                G_IM_FMT_I, G_IM_SIZ_8b, 0x38, 0x18, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_16b, 1, 0x0101BF80);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 671, 293);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_8b, 7, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x00DC, 0x005C);
        */
    } else {
        if ((thisx->kbdButtonIdx == 2) || (thisx->kbdButtonIdx == 3)) {
            gDPLoadTextureBlock(gfxCtx->polyOpa.p++, 0x0101C4C0, 
                    G_IM_FMT_I, G_IM_SIZ_8b, 0x28, 0x18, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
            /*
            gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_16b, 1, 0x0101C4C0);
            gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
            gDPLoadSync(gfxCtx->polyOpa.p++);
            gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 479, 410);
            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_8b, 5, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
            gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x009C, 0x005C);
            */
        }
    }
    gSP1Quadrangle(gfxCtx->polyOpa.p++, 4, 6, 7, 5, 0);

    func_80807DCC(thisx);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    func_800949A8(thisx->state.gfxCtx);

    gDPSetCombineLERP(gfxCtx->polyOpa.p++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);

    if (thisx->fileSelectStateIdx == 0x21) {
        if (CHECK_PAD(cont1->press, START_BUTTON)) {
            Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            thisx->kbdCharY = 5;
            thisx->kbdCharX = 4;
        } else {
            if (CHECK_PAD(cont1->press, B_BUTTON)) {
                if ((thisx->newFileNameCharCount == 7) && (thisx->fileNames[thisx->btnIdx][7] != 0x3E)) {
                    for (i = thisx->newFileNameCharCount; i < 7; i++) {
                        thisx->fileNames[thisx->btnIdx][i] = thisx->fileNames[thisx->btnIdx][i+1];
                    }
                    thisx->fileNames[thisx->btnIdx][i] = 0x3E;
                    Audio_PlaySoundGeneral(0x483A, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                } else {
                    thisx->newFileNameCharCount--;
                    if (thisx->newFileNameCharCount < 0) {
                        thisx->newFileNameCharCount = 0;
                        thisx->fileSelectStateIdx = 0x23;
                    } else {
                        for (i = thisx->newFileNameCharCount; i < 7; i++) {
                            thisx->fileNames[thisx->btnIdx][i] = thisx->fileNames[thisx->btnIdx][i+1];
                        }
                        thisx->fileNames[thisx->btnIdx][i] = 0x3E;
                        Audio_PlaySoundGeneral(0x483A, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    }
                }
            } else {
                if (thisx->unk_1CACA < 3) {
                    if (thisx->kbdCharY != 5) {
                        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0x00, 0xFF);
                        gSPVertex(gfxCtx->polyOpa.p++, &thisx->allocVtx3[thisx->kbdCharIdx * 4], 4, 0);
                        func_80806DB0(thisx->state.gfxCtx, thisx->kanfont.unk_3C88[D_808123F0[thisx->kbdCharIdx]], 0);
                        if (CHECK_PAD(cont1->press, A_BUTTON)) {
                            Audio_PlaySoundGeneral(0x483A, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                            thisx->fileNames[thisx->btnIdx][thisx->newFileNameCharCount] = D_808123F0[thisx->kbdCharIdx];
                            thisx->newFileNameCharCount++;
                            if (thisx->newFileNameCharCount >= 8) {
                                thisx->newFileNameCharCount = 7;
                            }
                        }
                    } else {
                        if (CHECK_PAD(cont1->press, A_BUTTON)) {
                            if (thisx->kbdButtonIdx != thisx->unk_1CACA) {
                                if (thisx->kbdButtonIdx == 3) {
                                    if ((thisx->newFileNameCharCount == 7) && (thisx->fileNames[thisx->btnIdx][7] != 0x3E)) {
                                        for (i = thisx->newFileNameCharCount; i < 7; i++) {
                                            thisx->fileNames[thisx->btnIdx][i] = thisx->fileNames[thisx->btnIdx][i+1];
                                        }
                                        thisx->fileNames[thisx->btnIdx][i] = 0x3E;
                                        Audio_PlaySoundGeneral(0x483A, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                                    } else {
                                        thisx->newFileNameCharCount--;
                                        if (thisx->newFileNameCharCount < 0) {
                                            thisx->newFileNameCharCount = 0;
                                        }
                                        for (i = thisx->newFileNameCharCount; i < 7; i++) {
                                            thisx->fileNames[thisx->btnIdx][i] = thisx->fileNames[thisx->btnIdx][i+1];
                                        }
                                        thisx->fileNames[thisx->btnIdx][i] = 0x3E;
                                        Audio_PlaySoundGeneral(0x483A, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                                    }
                                } else {
                                    if (thisx->kbdButtonIdx == 4) {
                                        tmp = 0;
                                        for (i = 0; i < 8; i++) {
                                            if (thisx->fileNames[thisx->btnIdx][i] != 0x3E) {
                                                tmp = 1;
                                                break;
                                            }
                                        }
                                        if (tmp != 0) {
                                            Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                                            saveCtx->fileNum = thisx->btnIdx;
                                            tmpu = gSaveContext.dayTime;
                                            func_800A9258(thisx, &thisx->sram);
                                            gSaveContext.dayTime = tmpu;
                                            thisx->fileSelectStateIdx = 0x23;
                                            thisx->fileNameBoxesA[thisx->btnIdx] = 
                                            thisx->fileNamesA[thisx->btnIdx] = 0xC8;
                                            thisx->metalJointsA[thisx->btnIdx] = 0xFF;
                                            func_800AA000(300.0f, 0xB4, 0x14, 0x64);
                                        } else {
                                            Audio_PlaySoundGeneral(0x483D, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (CHECK_PAD(cont1->press, R_CBUTTONS)) {
                        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        thisx->newFileNameCharCount++;
                        if (thisx->newFileNameCharCount >= 8) {
                            thisx->newFileNameCharCount = 7;
                        }
                    } else {
                        if (CHECK_PAD(cont1->press, L_CBUTTONS)) {
                            Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                            thisx->newFileNameCharCount--;
                            if (thisx->newFileNameCharCount < 0) {
                                thisx->newFileNameCharCount = 0;
                            }
                        }
                    }
                }
            }
        }
    }
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetCombineMode(gfxCtx->polyOpa.p++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    Graph_CloseDisps(dispRefs, thisx->state.gfxCtx, "../z_file_nameset_PAL.c", 0x226);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80808000.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80808F84.s")
// OK
void func_80808F84(FileChooseContext* this) {
    this->newFileNameBoxA += 0x19;
    if (this->newFileNameBoxA >= 0xFF) {
        this->newFileNameBoxA = 0xFF;
    }
    this->newFileNameBoxX -= 0x1E;
    if (this->newFileNameBoxX <= 0) {
        this->newFileNameBoxX = 0;
        this->newFileNameBoxA = 0xFF;
        this->kbdCharX = 0;
        this->kbdCharY = 0;
        this->kbdButtonIdx = 0x63;
        this->fileSelectStateIdx = 0x21;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80809038.s")
// OK
void func_80809038(FileChooseContext* this) {
    s32 pad;
    s16 tmp;

    this->kbdButtonIdx = 0x63;
    if (this->kbdCharY != 5) {
        if (this->stickX < -30) {
            Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->kbdCharIdx--;
            this->kbdCharX--;
            if (this->kbdCharX < 0) {
                this->kbdCharX = 0xC;
                this->kbdCharIdx = (this->kbdCharY * 0xD) + this->kbdCharX;
            }
        } else {
            if (this->stickX > 30) {
                Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->kbdCharIdx++;
                this->kbdCharX++;
                if (this->kbdCharX >= 0xD) {
                    this->kbdCharX = 0;
                    this->kbdCharIdx = (this->kbdCharY * 0xD) + this->kbdCharX;
                }
            }
        }
    } else {
        if (this->stickX < -30) {
            Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->kbdCharX--;
            if (this->kbdCharX < 3) {
                this->kbdCharX = 4;
            }
        } else {
            if (this->stickX > 30) {
                Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->kbdCharX++;
                if (this->kbdCharX >= 0x5) {
                    this->kbdCharX = 3;
                }
            }
        }
    }
    if (this->stickY > 30) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->kbdCharY--;
        if (this->kbdCharY < 0) {
            if (this->kbdCharX < 8) {
                this->kbdCharY = 4;
                this->kbdCharIdx = (s32)(this->kbdCharX + 0x34);
            } else {
                this->kbdCharY = 5;
                this->kbdCharIdx += 0x34;
                tmp = this->kbdCharX;
                if (this->kbdCharX < 0xA) {
                    this->kbdCharX = 3;
                } else {
                    if (this->kbdCharX < 0xD) {
                        this->kbdCharX = 4;
                    }
                }
                this->unk_1CAD6[this->kbdCharX] = tmp;
            }
        } else {
            this->kbdCharIdx -= 0xD;
            if (this->kbdCharY == 4) {
                this->kbdCharIdx = 0x34;
                this->kbdCharX = this->unk_1CAD6[this->kbdCharX];
                this->kbdCharIdx += this->kbdCharX;
            }
        }
    } else {
        if (this->stickY < -30) {
            Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->kbdCharY++;
            if (this->kbdCharY >= 6) {
                this->kbdCharY = 0;
                this->kbdCharX = this->unk_1CAD6[this->kbdCharX];
                this->kbdCharIdx = this->kbdCharX;
            } else {
                this->kbdCharIdx += 0xD;
                if (this->kbdCharY == 5) {
                    if (this->kbdCharX < 8) {
                        this->kbdCharY = 0;
                        this->kbdCharIdx = this->kbdCharX;
                    } else {
                        tmp = this->kbdCharX;
                        if (this->kbdCharX < 3) {
                            this->kbdCharX = 0;
                        } else {
                            if (this->kbdCharX < 6) {
                                this->kbdCharX = 1;
                            } else {
                                if (this->kbdCharX < 8) {
                                    this->kbdCharX = 2;
                                } else {
                                    if (this->kbdCharX < 0xA) {
                                        this->kbdCharX = 3;
                                    } else {
                                        if (this->kbdCharX < 0xD) {
                                            this->kbdCharX = 4;
                                        }
                                    }
                                }
                            }
                        }
                        this->unk_1CAD6[this->kbdCharX] = tmp;
                    }
                }
            }
        }
    }
    if (this->kbdCharY == 5) {
        this->kbdButtonIdx = this->kbdCharX;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080960C.s")
// OK
void func_8080960C(FileChooseContext* this) {
    this->newFileNameBoxA += 0x19;
    if (this->newFileNameBoxA >= 0xFF) {
        this->newFileNameBoxA = 0xFF;
    }
    this->newFileNameBoxX -= 0x1E;
    if (this->newFileNameBoxX <= 0) {
        this->newFileNameBoxX = 0;
        this->newFileNameBoxA = 0xFF;
        this->fileSelectStateIdx = 0x25;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080969C.s")
// OK
void func_8080969C(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    Input* cont1 = &thisx->state.input[0];
    Sram* sram = &thisx->sram;

    if (CHECK_PAD(cont1->press, B_BUTTON)) {
        Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        thisx->fileSelectStateIdx = 0x27;
        ((s8*)sram->read_buff)[0] = gSaveContext.audioSetting;
        ((s8*)sram->read_buff)[1] = gSaveContext.zTargetingSetting;
        osSyncPrintf("ＳＡＶＥ");
        func_800A9A9C(&thisx->sram);
        osSyncPrintf(VT_FGCOL(YELLOW));
        osSyncPrintf("sram->read_buff[2] = J_N = %x\n", ((u8*)sram->read_buff)[2]);
        osSyncPrintf("sram->read_buff[2] = J_N = %x\n", (u8*)sram->read_buff + 2);
        osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
        osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
        osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
        osSyncPrintf(VT_RST);
        func_800F6700((s8)gSaveContext.audioSetting);
        osSyncPrintf("終了");
        return;
    }
    if (thisx->stickX < -30) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        if (D_80813810 == 0) {
            gSaveContext.audioSetting--;
            if (gSaveContext.audioSetting >= 0xF1) {
                gSaveContext.audioSetting = 3;
            }
        } else {
            gSaveContext.zTargetingSetting ^= 1;
        }
    } else {
        if (thisx->stickX > 30) {
            Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            if (D_80813810 == 0) {
                gSaveContext.audioSetting++;
                if (gSaveContext.audioSetting >= 4) {
                    gSaveContext.audioSetting = 0;
                }
            } else {
                gSaveContext.zTargetingSetting ^= 1;
            }
        }
    }
    if ((thisx->stickY < -30) || (thisx->stickY > 30)) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        D_80813810 ^= 1;
        return;
    }
    if (CHECK_PAD(cont1->press, A_BUTTON)) {
        Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        D_80813810 ^= 1;
    }
}


#ifdef NON_MATCHING
void func_808099C8(FileChooseContext* this) {
    FileChooseContext* thisx = this;
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    s16 tmp;
    s16 tmp2;
    s16 tmp3;
    s16 tmp4;
    s32 tmp32;
    s16 i;
    s16 j;
    s16 vtx_cnt;

    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, thisx->state.gfxCtx, "../z_file_nameset_PAL.c", 0x350);
    
    tmp = ABS(D_808126E4 - D_80812704[D_808126FC][0]) / D_80812700;
    tmp2 = ABS(D_808126E8 - D_80812704[D_808126FC][1]) / D_80812700;
    tmp3 = ABS(D_808126EC - D_80812704[D_808126FC][2]);
    if (D_808126E4 >= D_80812704[D_808126FC][0]) {
        tmp = D_808126E4 - tmp;
    } else {
        tmp = D_808126E4 + tmp;
    }
    if (D_808126E8 >= D_80812704[D_808126FC][1]) {
        tmp2 = D_808126E8 - tmp2;
    } else {
        tmp2 = D_808126E8 + tmp2;
    }
    if (D_808126EC >= D_80812704[D_808126FC][2]) {
        D_808126E4 = tmp;
        D_808126EC = D_808126EC - (tmp3 / D_80812700);
    } else {
        D_808126E4 = tmp;
        D_808126EC = D_808126EC + (tmp3 / D_80812700);
    }
    D_808126E8 = tmp2;

    tmp = ABS(D_808126F0 - D_80812710[D_808126FC][0]) / D_80812700;
    tmp2 = ABS(D_808126F4 - D_80812710[D_808126FC][1]) / D_80812700;
    tmp3 = ABS(D_808126F8 - D_80812710[D_808126FC][2]);
    if (D_808126F0 >= D_80812710[D_808126FC][0]) {
        tmp = D_808126F0 - tmp;
    } else {
        tmp = D_808126F0 + tmp;
    }
    D_808126F0 = tmp;
    if (D_808126F4 >= D_80812710[D_808126FC][1]) {
        tmp2 = D_808126F4 - tmp2;
    } else {
        tmp2 = D_808126F4 + tmp2;
    }
    if (D_808126F8 >= D_80812710[D_808126FC][2]) {
        tmp3 = D_808126F8 - (tmp3 / D_80812700);
    } else {
        tmp3 = D_808126F8 + (tmp3 / D_80812700);
    }
    D_808126F4 = tmp2;
    D_808126F8 = tmp3;

    D_80812700--;
    if (D_80812700 == 0) {
        D_808126E4 = D_80812704[D_808126FC][0];
        D_808126E8 = D_80812704[D_808126FC][1];
        D_808126EC = D_80812704[D_808126FC][2];
        D_808126F0 = D_80812710[D_808126FC][0];
        D_808126F4 = D_80812710[D_808126FC][1];
        D_808126F8 = D_80812710[D_808126FC][2];
        D_80812700 = 0x14;
        D_808126FC++;
        if (D_808126FC >= 2) {
            D_808126FC = 0;
        }
    }
    if (gSaveContext.zTargetingSetting == 1) {
        gSPVertex(gfxCtx->polyOpa.p++, D_80811E30, 32, 0);
    } else {
        gSPVertex(gfxCtx->polyOpa.p++, D_80811D30, 32, 0);
    }
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, thisx->fileSelectOpenTitleA[0]);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0xFF);

    for (i = 0, vtx_cnt = 0; i < 4; i++, vtx_cnt += 4) {

        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, 
            D_8081261C[i].gfx[gSaveContext.language], 
            G_IM_FMT_IA, G_IM_SIZ_8b, 
            D_8081261C[i].width[gSaveContext.language], 
            D_8081261C[i].height, 
            0, G_TX_NOMIRROR | G_TX_WRAP, 
            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        
        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_8081261C[i][gSaveContext.language]);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 4095, 4095);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 0, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, D_8081261C[i][1], D_8081261C[2]);
        */

        gSP1Quadrangle(gfxCtx->polyOpa.p++, vtx_cnt, vtx_cnt+2, vtx_cnt+3, vtx_cnt+1, 0);

    }
    if (gSaveContext.language == 1) {
        gSPVertex(gfxCtx->polyOpa.p++, D_80812130, 32, 0);
    } else {
        gSPVertex(gfxCtx->polyOpa.p++, D_80811F30, 32, 0);
    }

    for (i = 0, vtx_cnt = 0; i < 4; i++, vtx_cnt += 4) {
        gDPPipeSync(gfxCtx->polyOpa.p++);
        if (i == gSaveContext.audioSetting) {
            if (D_80813810 == 0) {
                gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_808126E4, D_808126E8, D_808126EC, thisx->fileSelectOpenTitleA[0]);
                gDPSetEnvColor(gfxCtx->polyOpa.p++, D_808126F0, D_808126F4, D_808126F8, 0xFF);
            } else {
                gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, thisx->fileSelectOpenTitleA[0]);
                gDPSetEnvColor(gfxCtx->polyOpa.p++, 0, 0, 0, 0xFF);
            }
        } else {
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0x78, 0x78, 0x78, thisx->fileSelectOpenTitleA[0]);
            gDPSetEnvColor(gfxCtx->polyOpa.p++, 0, 0, 0, 0xFF);
        }

        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_8081266C[i].gfx[gSaveContext.language], 
                G_IM_FMT_IA, G_IM_SIZ_8b, D_8081266C[i].width[gSaveContext.language], D_8081261C[i].height, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        
        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_8081266C[i][gSaveContext.language]);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 4095, 4095);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 0, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0, 0);
        */
        gSP1Quadrangle(gfxCtx->polyOpa.p++, vtx_cnt, vtx_cnt+2, vtx_cnt+3, vtx_cnt+1, 0);
    }
    for (; i < 6; i++, vtx_cnt += 4) {
        gDPPipeSync(gfxCtx->polyOpa.p++);
        if (i == (gSaveContext.zTargetingSetting + 4)) {
            if (D_80813810 != 0) {
                gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_808126E4, D_808126E8, D_808126EC, thisx->fileSelectOpenTitleA[0]);
                gDPSetEnvColor(gfxCtx->polyOpa.p++, D_808126F0, D_808126F4, D_808126F8, 0xFF);
            } else {
                gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, thisx->fileSelectOpenTitleA[0]);
                gDPSetEnvColor(gfxCtx->polyOpa.p++, 0, 0, 0, 0xFF);
            }
        } else {
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0x78, 0x78, 0x78, thisx->fileSelectOpenTitleA[0]);
            gDPSetEnvColor(gfxCtx->polyOpa.p++, 0, 0, 0, 0xFF);
        }

        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_8081266C[i].gfx[gSaveContext.language], 
                G_IM_FMT_IA, G_IM_SIZ_8b, D_8081266C[i].width[gSaveContext.language], D_8081261C[i].height, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_8081266C[i][gSaveContext.language]);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, D_8081261C[i][3], D_8081261C[i][4]);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 0, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, D_8081261C[i][3], D_8081261C[i][4]);
        */
        gSP1Quadrangle(gfxCtx->polyOpa.p++, vtx_cnt, vtx_cnt+2, vtx_cnt+3, vtx_cnt+1, 0);
    }
    gDPPipeSync(gfxCtx->polyOpa.p++);

    gDPLoadTextureBlock(gfxCtx->polyOpa.p++, 0x0101B380, 
                G_IM_FMT_IA, G_IM_SIZ_4b, 0x60, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);


    /*
    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x0101B380);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyOpa.p++);
    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 383, 342);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_4b, 6, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x017C, 0x003C);
    */

    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0x37, 0x37, 0x37, thisx->fileSelectOpenTitleA[0]);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x28, 0x28, 0x28, 0xFF);

    gSP1Quadrangle(gfxCtx->polyOpa.p++, vtx_cnt, vtx_cnt+2, vtx_cnt+3, vtx_cnt+1, 0);
    vtx_cnt += 4;

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0x1E, 0x1E, 0x1E, thisx->fileSelectOpenTitleA[0]);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0xFF);

    gSP1Quadrangle(gfxCtx->polyOpa.p++, vtx_cnt, vtx_cnt+2, vtx_cnt+3, vtx_cnt+1, 0);
    vtx_cnt += 4;

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0, 0xFF, 0xFF, thisx->fileSelectOpenTitleA[0]);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

    gDPLoadTextureBlock(gfxCtx->polyOpa.p++, 0x0101B280, 
                G_IM_FMT_IA, G_IM_SIZ_4b, 0x100, 0x2, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    /*
    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x0101B280);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyOpa.p++);
    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 127, 128);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_4b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x03FC, 0x0004);
    */

    Matrix_Push();
    Matrix_Translate(0.0f, D_80812CE0, 0.0f, MTXMODE_APPLY);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(thisx->state.gfxCtx, "../z_file_nameset_PAL.c", 0x3F1), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    
    gSPVertex(gfxCtx->polyOpa.p++, D_80812330, 4, 0);
    gSP1Quadrangle(gfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);

    Matrix_Pull();
    Matrix_Push();
    Matrix_Translate(0.0f, D_80812CE4, 0.0f, MTXMODE_APPLY);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(thisx->state.gfxCtx, "../z_file_nameset_PAL.c", 0x3FD), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    
    gSPVertex(gfxCtx->polyOpa.p++, D_80812370, 4, 0);
    gSP1Quadrangle(gfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);
    Matrix_Pull();
    Matrix_Push();
    Matrix_Translate(0.0f, D_80812CE8, 0.0f, MTXMODE_APPLY);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(thisx->state.gfxCtx, "../z_file_nameset_PAL.c", 0x409), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPVertex(gfxCtx->polyOpa.p++, D_808123B0, 4, 0);
    gSP1Quadrangle(gfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);
    Matrix_Pull();

    Graph_CloseDisps(dispRefs, thisx->state.gfxCtx, "../z_file_nameset_PAL.c", 0x410);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808099C8.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080AF30.s")
// OK
void func_8080AF30(FileChooseContext* this) {
    func_808099C8(this);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080AF50.s")
// OK
void func_8080AF50(FileChooseContext* this, f32 arg1, f32 arg2, f32 arg3) {
    Vec3f v1;
    Vec3f v2;
    Vec3f v3;

    v2.x = v2.y = v2.z = 0.0f;
    v3.x = v3.z = 0.0f;

    v1.x = arg1;
    v1.y = arg2;
    v1.z = arg3;

    v3.y = 1.0f;

    func_800AA358(&this->view, &v1, &v2, &v3);
    func_800AAA50(&this->view, 0x7F);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080AFD0.s")
// OK
Gfx* func_8080AFD0(Gfx* gfx, u32 arg1, s16 arg2, s16 arg3, s16 arg4) {
    gDPLoadTextureBlock(gfx++, arg1, 
                G_IM_FMT_IA, G_IM_SIZ_8b, arg2, arg3, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(gfx++, arg4, arg4+2, arg4+3, arg4+1, 0);
    return gfx;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B1A8.s")
// OK
void func_8080B1A8(FileChooseContext* this) {
    if (this->menuIdx == 0) {
        this->menuIdx = 1;
        this->fileSelectStateIdx = 0;
        this->nextTitleTexIdx = 1;
        osSyncPrintf("Ｓｒａｍ Ｓｔａｒｔ─Ｌｏａｄ 》》》》");
        func_800A8A20(this, &this->sram);
        osSyncPrintf("終了！！！");
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B224.s")
// OK
void func_8080B224(FileChooseContext* this) {
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B22C.s")
// OK
void func_8080B22C(FileChooseContext* this) {
    Sram* sram = &this->sram;
    s16 i;

    this->fileSelectOpenTitleA[0] += VREG(1);
    this->windowA += VREG(2);

    for (i = 0; i < 3; i++) {
        this->fileButtonsA[i] = this->windowA;
        if (IS_VALID_SAVE((u8*)sram->read_buff + D_8012A4E0[0][i])) {
            this->fileNameBoxesA[i] = 
            this->fileNamesA[i] = this->windowA;
            this->metalJointsA[i] += VREG(1);
            if (this->metalJointsA[i] >= 0xFF) {
                this->metalJointsA[i] = 0xFF;
            }
        }
    }
    this->buttonCopyEraseA[0] = 
    this->buttonCopyEraseA[1] = 
    this->buttonOptionsA = this->windowA;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B394.s")
// OK
void func_8080B394(u16 arg0, s16* arg1, s16* arg2, s16* arg3) {
    *arg1 = 0;
    *arg2 = 0;
    *arg3 = arg0;

loop1:
    while ((*arg3 - 100) >= 0) {
        *arg1 = *arg1 + 1;
        *arg3 = *arg3 - 100;
        goto loop1;
    }

loop2:
    while ((*arg3 - 10) >= 0) {
        *arg2 = *arg2 + 1;
        *arg3 = *arg3 - 10;
        goto loop2;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B40C.s")
// OK
void func_8080B40C(FileChooseContext* this) {
    func_8080B22C(this);
    D_80812724 -= 0x28;
    this->windowX -= 0x14;
    if (this->windowX < -93) {
        this->windowX = -94;
        this->fileSelectStateIdx = 1;
        D_80812724 = 0;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B494.s")
// OK
void func_8080B494(FileChooseContext* this) {
    s32 pad;

    this->decideCancelTextA += VREG(1);
    func_8080B22C(this);
    if (this->fileSelectOpenTitleA[0] >= 0xFF) {
        this->fileSelectOpenTitleA[0] = 0xFF;
        this->decideCancelTextA = 0xFF;
        this->windowA = 0xC8;
        this->fileSelectStateIdx = 2;
    }
}

#ifdef NON_MATCHING
void func_8080B52C(FileChooseContext* this) {
    //FileChooseContext* thisx = this;
    Input* cont1 = &this->state.input[0];
    Sram* sramBase = &this->sram;
    //s16 tmp;
    //s32 tmp32;
    u8* sram;

    if (CHECK_PAD(cont1->press, START_BUTTON) || CHECK_PAD(cont1->press, A_BUTTON)) {
        if (this->btnIdx < 3) {
            sram = (u8*)sramBase->read_buff + D_8012A4E0[0][this->btnIdx];
            osSyncPrintf("REGCK_ALL[%x]=%x,%x,%x,%x,%x,%x\n", this->btnIdx, 
                sram[0x1C], sram[0x1D], sram[0x1E], sram[0x1F], sram[0x20], sram[0x21]);
            sram = (u8*)sramBase->read_buff + D_8012A4E0[0][this->btnIdx];
            if (!IS_VALID_SAVE(sram)) {
                Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->fileSelectStateIdx = 0x20;
                this->kbdButtonIdx = 0x63;
                this->unk_1CACA = 2;
                this->kbdCharX = 0;
                this->kbdCharY = 0;
                this->kbdCharIdx = 0;
                this->kbdCharBoxA = 0;
                this->newFileNameCharCount = 0;
                this->newFileNameBoxX = 0x78;
                this->newFileNameBoxA = 0;
                MemCopy(this->fileNames[this->btnIdx], D_80812768, 8);
                return;
            }
            if (this->n64ddFlag == this->n64ddFlags[this->btnIdx]) {
                Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->actionTimer = 8;
                this->openFileStateIdx = 0;
                this->selectedFileIdx = this->btnIdx;
                this->menuIdx = 2;
                this->nextTitleTexIdx = 1;
                return;
            }
            if (this->n64ddFlag == 0) {
                Audio_PlaySoundGeneral(0x483D, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                return;
            }
        } else {
            if (this->fileWarningTexIdx == -1) {
                Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->unkActionIndex = this->fileSelectStateIdx;
                if (this->btnIdx == 3) {
                    this->fileSelectStateIdx = 3;
                    this->nextTitleTexIdx = 2;
                } else {
                    if (this->btnIdx == 4) {
                        this->fileSelectStateIdx = 20;
                        this->nextTitleTexIdx = 6;
                    } else {
                        this->fileSelectStateIdx = 36;
                        this->kbdButtonIdx = 0;
                        this->kbdCharX = 0;
                        this->kbdCharY = 0;
                        this->kbdCharBoxA = 0;
                        this->newFileNameCharCount = 0;
                        this->newFileNameBoxX = 0x78;
                    }
                }
                this->actionTimer = 8;
                return;
            }
            Audio_PlaySoundGeneral(0x483D, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
    } else {
        if (ABS(this->stickY) >= 31) {
            Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            if (this->stickY >= 31) {
                this->btnIdx--;
                if (this->btnIdx < 0) {
                    this->btnIdx = 5;
                }
            } else {
                this->btnIdx++;
                if (this->btnIdx >= 6) {
                    this->btnIdx = 0;
                }
            }
        }
        if (this->btnIdx == 3) {
            if (!IS_VALID_SAVE((u8*)this->sram.read_buff + D_8012A4E0[0][0])) {
                if (!IS_VALID_SAVE((u8*)this->sram.read_buff + D_8012A4E0[0][1])) {
                    if (!IS_VALID_SAVE((u8*)this->sram.read_buff + D_8012A4E0[0][2])) {
                        this->warningFileIdx = this->btnIdx;
                        this->fileWarningTexIdx = 0;
                        this->fileEmptyTextA = 0xFF;
                        return;
                    }
                }
            }
            if (IS_VALID_SAVE((u8*)this->sram.read_buff + D_8012A4E0[0][0])) {
                if (IS_VALID_SAVE((u8*)this->sram.read_buff + D_8012A4E0[0][1])) {
                    if (IS_VALID_SAVE((u8*)this->sram.read_buff + D_8012A4E0[0][2])) {
                        this->warningFileIdx = this->btnIdx;
                        this->fileWarningTexIdx = 2;
                        this->fileEmptyTextA = 0xFF;
                        return;
                    }
                }
            }
            this->fileWarningTexIdx = -1;
            return;
        } else {
            if (this->btnIdx == 4) {
                if (!IS_VALID_SAVE((u8*)this->sram.read_buff + D_8012A4E0[0][0])) {
                    if (!IS_VALID_SAVE((u8*)this->sram.read_buff + D_8012A4E0[0][1])) {
                        if (!IS_VALID_SAVE((u8*)this->sram.read_buff + D_8012A4E0[0][2])) {
                            this->warningFileIdx = this->btnIdx;
                            this->fileWarningTexIdx = 1;
                            this->fileEmptyTextA = 0xFF;
                            return;
                        }
                    }
                }
                this->fileWarningTexIdx = -1;
                return;
            }
        }
        this->fileWarningTexIdx = -1;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B52C.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE28.s")
// OK
void func_8080BE28(FileChooseContext* this) {
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE30.s")
// OK
void func_8080BE30(FileChooseContext* this) {
    XREG(73) += 2;
    if (XREG(73) == 0xFE) {
        this->fileSelectStateIdx = this->nextFileSelectStateIdx;
        XREG(73) = 0;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE84.s")
// OK
void func_8080BE84(FileChooseContext* this) {
    this->windowRotX += VREG(16);
    if (this->windowRotX >= 314.0f) {
        this->windowRotX = 314.0f;
        this->fileSelectStateIdx = 0x22;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BEF8.s")
// OK
void func_8080BEF8(FileChooseContext* this) {
    this->windowRotX += VREG(16);
    if (this->windowRotX >= 314.0f) {
        this->windowRotX = 314.0f;
        this->fileSelectStateIdx = 0x26;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BF6C.s")
// OK
void func_8080BF6C(FileChooseContext* this) {
    this->windowRotX += VREG(16);
    if (this->windowRotX >= 628.0f) {
        this->windowRotX = 0.0f;
        this->fileSelectStateIdx = 2;
    }
}

#ifdef NON_MATCHING
void func_8080BFE4(FileChooseContext* this) {
    extern u8 D_80000002;

    FileChooseContext* thisx = this;
    Input* cont1 = &this->state.input[2];
    Sram* sram = &this->sram;
    s16 tmp;
    s32 tmp32;

    tmp32 = ~(cont1->press.in.button | -0x201);
    //CHECK_PAD(cont1->press, L_JPAD);
    if (!tmp32) {
        D_80000002 = 
        ((u8*)sram->read_buff)[2] = 
        gSaveContext.language = 0;
        Sram_ReadWrite(0x8000000, sram->read_buff, 3, 1);
        osSyncPrintf("1:read_buff[]=%x, %x, %x, %x\n", ((u8*)sram->read_buff)[0], ((u8*)sram->read_buff)[1], ((u8*)sram->read_buff)[2], ((u8*)sram->read_buff)[3]);
        Sram_ReadWrite(0x8000000, sram->read_buff, 0x8000, 0);
        osSyncPrintf("read_buff[]=%x, %x, %x, %x\n", ((u8*)sram->read_buff)[0], ((u8*)sram->read_buff)[1], ((u8*)sram->read_buff)[2], ((u8*)sram->read_buff)[3]);
    
    } else {
        tmp32 = ~(cont1->press.in.button | -0x801);
        //if (CHECK_PAD(cont1->press, U_JPAD)) {
        if (!tmp32 & 0xFFFFFFFF) {
            //D_80000002 = 
            *(u8*)0x80000002 = 
            ((u8*)sram->read_buff)[2] = 
            gSaveContext.language = 1;

            Sram_ReadWrite(0x8000000, sram->read_buff, 3, 1);
            osSyncPrintf("1:read_buff[]=%x, %x, %x, %x\n", ((u8*)sram->read_buff)[0], ((u8*)sram->read_buff)[1], ((u8*)sram->read_buff)[2], ((u8*)sram->read_buff)[3]);
            Sram_ReadWrite(0x8000000, sram->read_buff, 0x8000, 0);
            osSyncPrintf("read_buff[]=%x, %x, %x, %x\n", ((u8*)sram->read_buff)[0], ((u8*)sram->read_buff)[1], ((u8*)sram->read_buff)[2], ((u8*)sram->read_buff)[3]);
        } else {

            //if (CHECK_PAD(cont1->press, R_JPAD)) {
            tmp32 = ~(cont1->press.in.button | -0x101);
            if (!tmp32) {
                D_80000002 = 
                ((u8*)sram->read_buff)[2] = 
                gSaveContext.language = 2;
                Sram_ReadWrite(0x8000000, sram->read_buff, 3, 1);
                osSyncPrintf("1:read_buff[]=%x, %x, %x, %x\n", ((u8*)sram->read_buff)[0], ((u8*)sram->read_buff)[1], ((u8*)sram->read_buff)[2], ((u8*)sram->read_buff)[3]);
                Sram_ReadWrite(0x8000000, sram->read_buff, 0x8000, 0);
                osSyncPrintf("read_buff[]=%x, %x, %x, %x\n", ((u8*)sram->read_buff)[0], ((u8*)sram->read_buff)[1], ((u8*)sram->read_buff)[2], ((u8*)sram->read_buff)[3]);
            }
        }
    }

    tmp = ABS(thisx->highlightColorRGBA[3] - D_80812814[thisx->highlightColorAIncrease]) / XREG(35);
    if (thisx->highlightColorRGBA[3] >= D_80812814[thisx->highlightColorAIncrease]) {
        thisx->highlightColorRGBA[3] -= tmp;
    } else {
        thisx->highlightColorRGBA[3] += tmp;
    }

    XREG(35)--;
    if (XREG(35) == 0) {
        this->highlightColorRGBA[3] = D_80812814[this->highlightColorAIncrease];
        XREG(35) = XREG(this->highlightColorAIncrease + 36);
        this->highlightColorAIncrease ^= 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BFE4.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C2F4.s")
// OK
void func_8080C2F4(FileChooseContext* this) {
    D_80812770[this->fileSelectStateIdx](this);
}
