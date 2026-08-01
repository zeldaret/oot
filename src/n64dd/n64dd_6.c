#include "ultra64.h"
#include "n64dd.h"
#include "n64dd_internal.h"
#include "region.h"
#include "tex_len.h"
#include "z_locale.h"

#pragma increment_block_number ""

const char* D_801D3760[2][8][4] = {
    {
        {
            "　　メモリー拡張パックが正しく差し込",
            "　　んでありますか？　　　　　　　　",
            NULL,
            NULL,
        },
        {
            "　　間違ったディスクが差し込まれてい",
            "　　る可能性があります。正しいディス",
            "　　クに交換してください。　　　　　",
            NULL,
        },
        {
            "　　注意：アクセスランプ点滅中にディ",
            "　　スクを抜かないでください。詳しく",
            "　　は、取扱説明書をお読みください。",
            NULL,
        },
        {
            "　　詳しくは、取扱説明書をお読みくだ",
            "　　さい。　　　　　　　　　　　　　",
            NULL,
            NULL,
        },
        {
            "　　　ディスクを差し込んでください。",
            NULL,
            NULL,
            NULL,
        },
        {
            "　　ディスクを差し込み直してください。",
            NULL,
            NULL,
            NULL,
        },
        {
            "　　　ディスクを取り出してください。",
            NULL,
            NULL,
            NULL,
        },
        {
            NULL,
            NULL,
            NULL,
            NULL,
        },
    },
    {
        {
            "      Are you sure  the Expansion",
            "      Pak  is   inserted  correctly?",
            NULL,
            NULL,
        },
        {
            "       Check to see  if  the proper",
            "       disk  is  inserted.",
            "       Please  insert  the disk  the",
            "       correct  disk.",
        },
        {
            "      Do not remove the disk when",
            "      the  access light  is  flashing.",
            "      Please  read  the  instruction",
            "      manual  for  details.",
        },
        {
            "      Please  read  the  instruction",
            "      manual  for  details.",
            NULL,
            NULL,
        },
        {
            "         Please  insert  a  disk.",
            NULL,
            NULL,
            NULL,
        },
        {
            "        Please insert the disk again.",
            NULL,
            NULL,
            NULL,
        },
        {
            "        Please  remove  the  disk.",
            NULL,
            NULL,
            NULL,
        },
        {
            NULL,
            NULL,
            NULL,
            NULL,
        },
    },
};
u64 D_801D3860[2][TEX_LEN(u64, 192, 16, 4)] = {
    {
#include "assets/misc/n64dd_error_textures/gN64DDError41JPNTex.i4.inc.c"
    },
    {
#include "assets/misc/n64dd_error_textures/gN64DDError41ENGTex.i4.inc.c"
    },
};
u64 D_801D4460[2][TEX_LEN(u64, 320, 64, 4)] = {
    {
#include "assets/misc/n64dd_error_textures/gN64DDPleaseReadManualJPNTex.i4.inc.c"
    },
    {
#include "assets/misc/n64dd_error_textures/gN64DDPleaseReadManualENGTex.i4.inc.c"
    },
};

u8 D_801E1800[0x600];
u8 D_801E1E00[0x2800];
u8 D_801E4600[0x1400];

s32 func_801CA3E0(s32 arg0) {
    s32 temp_t6;
    s32 var_a1;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_v0;
    s32 var_v1;

    var_v0 = 0;
    var_v1 = 0;
    if (arg0 < 0xA) {
        return arg0;
    }
    var_a1 = 1;
    if (arg0 >= 0xA) {
        var_a2_2 = 0xA;
        do {
            var_a1 = var_a2_2;
            var_v0 += 1;
            var_a2_2 *= 0xA;
        } while (arg0 >= var_a2_2);
    }
    var_a2 = arg0;
    while (var_v0--) {
        temp_t6 = var_a2 / var_a1;
        var_v1 = (var_v1 | temp_t6) * 0x10;
        var_a2 = var_a2 % var_a1;
        var_a1 = var_a1 / 10;
    }
    return var_v1 + var_a2;
}

s32 func_801CA4B8(void) {
    return gCurrentRegion == REGION_JP ? 0 : 1;
}

void func_801CA4E4(u8* arg0, u8 arg1, s32 arg2) {
    while (arg2--) {
        *arg0++ = arg1;
    }
}

const char* func_801CA514(void) {
    return gN64DDLocalizedErrorNumberHeaders[func_801CA4B8()];
}

void func_801CA544(const char* arg0, s32 arg1) {
    s32 temp_v0;
    u16 var_a1;

    temp_v0 = func_801CA3E0(arg1);
    if (arg1 >= 0xA) {
        var_a1 = ((temp_v0 >> 4) + 0xA3B0);
    } else {
        var_a1 = 0xA1A1;
    }
    func_801C9D68((char*)arg0, var_a1);
    arg0 += 2;
    func_801C9D68((char*)arg0, ((temp_v0 & 0xF) + 0xA3B0));
}

void func_801CA5C4(char* arg0, s32 arg1) {
    s32 temp_v0;

    temp_v0 = func_801CA3E0(arg1);
    if (arg1 >= 0xA) {
        *arg0 = (temp_v0 >> 4) + 0x30;
    } else {
        *arg0 = 0x20;
    }
    arg0++;
    *arg0 = (temp_v0 & 0xF) + 0x30;
}

void func_801CA628(void* arg0, s32 arg1) {
    const char* temp_v0;

    temp_v0 = func_801CA514();
    if (gCurrentRegion == REGION_JP) {
        func_801CA544((char*)(temp_v0 + 0xC), arg1);
    } else {
        func_801CA5C4((char*)(temp_v0 + 0xD), arg1);
    }
    func_801CA280(arg0, 0xC0, temp_v0);
}

void* func_801CA698(s32 arg0) {
    func_801CA730();
    if (arg0 == LEO_ERROR_DEVICE_COMMUNICATION_FAILURE) {
        return D_801D3860[func_801CA4B8()];
    }
    if (((arg0 >= LEO_ERROR_WAITING_NMI) && (arg0 < LEO_ERROR_DEVICE_COMMUNICATION_FAILURE)) ||
        (arg0 == LEO_ERROR_INVALID_COMMAND_OPERATION_CODE) || (arg0 == LEO_ERROR_LBA_OUT_OF_RANGE)) {
        return D_801E1800;
    } else {
        func_801CA628(D_801E1800, arg0);
        return D_801E1800;
    }
}

void* func_801CA730(void) {
    func_801CA4E4(D_801E1800, 0, sizeof(D_801E1800));
    return D_801E1800;
}

void func_801CA764(void* arg0, s32 arg1, s32 arg2) {
    s32 var_s0;

    for (var_s0 = 0; var_s0 < arg2; var_s0++) {
        func_801CA280(arg0, 0x140, D_801D3760[func_801CA4B8()][arg1][var_s0]);
        arg0 = (char*)arg0 + 0xA00;
        if (1) {}
    }
}

void* func_801CA800(s32 arg0) {
    func_801CA86C();
    if (arg0 == 3) {
        return D_801D4460[func_801CA4B8()];
    }
    func_801CA764(D_801E1E00, arg0, 4);
    return D_801E1E00;
}

void* func_801CA86C(void) {
    func_801CA4E4(D_801E1E00, 0, sizeof(D_801E1E00));
    return D_801E1E00;
}

UNK_PTR func_801CA8A0(s32 arg0) {
    func_801CA8E0();
    func_801CA764(D_801E4600, arg0, 2);
    return D_801E4600;
}

void* func_801CA8E0(void) {
    func_801CA4E4(D_801E4600, 0, sizeof(D_801E4600));
    return D_801E4600;
}
