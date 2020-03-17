.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80143100
    .asciz "shrink_window_setval(%d)\n"
    .balign 4

glabel D_8014311C
    .asciz "shrink_window_setnowval(%d)\n"
    .balign 4

glabel D_8014313C
    .asciz "shrink_window_init()\n"
    .balign 4

glabel D_80143154
    .incbin "baserom.z64", 0xBBA2F4, 0x384

glabel D_801434D8
    .asciz "@@@static SplinedatZ  %s[] = {\n"
    .balign 4

glabel D_801434F8
    .asciz "@@@    /* key frame %2d */ {\n"
    .balign 4

glabel D_80143518
    .asciz "@@@    /*     code     */ %d,\n"
    .balign 4

glabel D_80143538
    .asciz "@@@    /*     z        */ %d,\n"
    .balign 4

glabel D_80143558
    .asciz "@@@    /*     T        */ %d,\n"
    .balign 4

glabel D_80143578
    .asciz "@@@    /*     zoom     */ %f,\n"
    .balign 4

glabel D_80143598
    .asciz "@@@    /*     pos      */ { %d, %d, %d }\n"
    .balign 4

glabel D_801435C4
    .asciz "@@@    },\n"
    .balign 4

glabel D_801435D0
    .asciz "@@@};\n@@@\n"    
    .balign 4

glabel D_801435DC
    .asciz "\n@@@%d,%d,%d,%d,"
    .balign 4

glabel D_801435F0
    .asciz "\n@@@%d,%d,"
    .balign 4

glabel D_801435FC
    .asciz "\n@@@%d,%d,"    
    .balign 4

glabel D_80143608
    .asciz "\n@@@ 0,0,0,2,	/* Look Camera	*/"
    .balign 4

glabel D_80143628
    .asciz "\n@@@ 0,1,	/* dousa	*/"
    .balign 4

glabel D_80143640
    .asciz "\n@@@ 0,0,	/* Start Flame	*/"
    .balign 4

glabel D_8014365C
    .asciz "	/*  End   Flame	*/"
    .balign 4

glabel D_80143670
    .asciz "\n@@@0,0,	/*  Dammy	*/\n@@@ "   
    .balign 4

glabel D_8014368C
    .asciz "\n@@@    %d, /*     code     */"
    .balign 4

glabel D_801436AC
    .asciz "\n@@@    %d,  /*     z        */"
    .balign 4

glabel D_801436CC
    .asciz "	/*  sokudo	*/"
    .balign 4

glabel D_801436DC
    .asciz "	/*  zoom	*/"
    .balign 4

glabel D_801436EC
    .asciz "	/*  x pos	*/"
    .balign 4

glabel D_801436FC
    .asciz "	/*  y pos	*/"
    .balign 4

glabel D_8014370C
    .asciz "	/*  z pos	*/\n"
    .balign 4

glabel D_8014371C
    .asciz "\n@@@0,0,	/*  Dammy	*/\n@@@ "
    .balign 4

glabel D_80143738
    .asciz "\n@@@ 0,0,0,1,	/* Position Camera */"
    .balign 4

glabel D_8014375C
    .asciz "\n@@@ 0,1,	/* dousa	*/"
    .balign 4

glabel D_80143774
    .asciz "\n@@@ 0,0,	/* Start Flame	*/"
    .balign 4

glabel D_80143790
    .asciz "	/*  End   Flame	*/"
    .balign 4

glabel D_801437A4
    .asciz "\n@@@0,0,	/*  Dammy	*/\n@@@ "
    .balign 4

glabel D_801437C0
    .asciz "\n@@@    %d, /*     code     */"
    .balign 4

glabel D_801437E0
    .asciz "\n@@@    %d, /*     z        */"
    .balign 4

glabel D_80143800
    .asciz "	/*  sokudo	*/"
    .balign 4

glabel D_80143810
    .asciz "	/*  zoom	*/"
    .balign 4

glabel D_80143820
    .asciz "	/*  x pos	*/"
    .balign 4

glabel D_80143830
    .asciz "	/*  y pos	*/"
    .balign 4

glabel D_80143840
    .asciz "	/*  z pos	*/"
    .balign 4

glabel D_80143850
    .asciz "\n@@@0,0,	/*  Dammy	*/\n@@@ "
    .balign 4

glabel D_8014386C
    .asciz "@@@\n@@@\n@@@/* *** spline point data ** start here *** */\n@@@\n"
    .balign 4

glabel D_801438AC
    .asciz "Lookat"
    .balign 4

glabel D_801438B4
    .asciz "Position"
    .balign 4

glabel D_801438C0
    .asciz "@@@static short  nPoints = %d;\n@@@\n"
    .balign 4

glabel D_801438E4
    .asciz "@@@static short  nFrames = %d;\n@@@\n"
    .balign 4

glabel D_80143908
    .asciz "@@@static short  Mode = %d;\n@@@\n"
    .balign 4

glabel D_8014392C
    .asciz "@@@\n@@@\n@@@/* *** spline point data ** finish! *** */\n@@@\n"
    .balign 4

glabel D_80143968
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143978
    .asciz "%s: %d: デバッグカメラ メモリ確保失敗！！\n"
    # EUC-JP: デバッグカメラ メモリ確保失敗！！ | Debug camera memory allocation failure
    .balign 4

glabel D_801439A4
    .asciz "../db_camera.c"
    .balign 4

glabel D_801439B4
    .asciz "../db_camera.c"
    .balign 4

glabel D_801439C4
    .asciz "%s: %d: デバッグカメラ メモリ確保失敗！！\n"
    # EUC-JP: デバッグカメラ メモリ確保失敗！！ | Debug camera memory allocation failure
    .balign 4

glabel D_801439F0
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143A00
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143A10
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143A20
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143A30
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143A40
    .asciz "%s: %d: デバッグカメラ メモリ確保失敗！！\n"
    # EUC-JP: デバッグカメラ メモリ確保失敗！！ | Debug camera memory allocation failure
    .balign 4

glabel D_80143A6C
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143A7C
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143A8C
    .asciz "%s: %d: デバッグカメラ メモリ確保失敗！！\n"
    # EUC-JP: デバッグカメラ メモリ確保失敗！！ | Debug camera memory allocation failure
    .balign 4

glabel D_80143AB8
    .asciz "../db_camera.c"
    .balign 4

glabel D_80143AC8
    .asciz "@@@\n@@@\n@@@/* ****** spline point data ** start here ***** */\n@@@\n"
    .balign 4

glabel D_80143B0C
    .asciz "@@@\n@@@/* ** %d ** */\n@@@\n"
    .balign 4

glabel D_80143B28
    .asciz "Lookat"
    .balign 4

glabel D_80143B30
    .asciz "Position"
    .balign 4

glabel D_80143B3C
    .asciz "@@@static short  nPoints = %d;\n@@@\n"
    .balign 4

glabel D_80143B60
    .asciz "@@@static short  nFrames = %d;\n@@@\n"
    .balign 4

glabel D_80143B84
    .asciz "@@@static short  Mode = %d;\n@@@\n"
    .balign 4

glabel D_80143BA8
    .asciz "@@@\n@@@\n@@@/* ****** spline point data ** finish! ***** */\n@@@\n"
    .balign 4

glabel D_80143BE8
    .asciz "PRESS B BUTTON"
    .balign 4

glabel D_80143BF8
    .asciz "PRESS B BUTTON"
    .balign 4

glabel D_80143C08
    .asciz "PRESS B BUTTON"
    .balign 4

glabel D_80143C18
    .asciz "_"
    .balign 4

glabel D_80143C1C
    .asciz ">"
    .balign 4

glabel D_80143C20
    .asciz "###%2d:(%c) (%d %d) %d %d %d\n"
    .balign 4

glabel D_80143C40
    .asciz "\n@@@ /* CUT [%d]	*/"
    .balign 4

glabel D_80143C54
    .float 0.15
    .balign 4

glabel D_80143C58
    .float 0.2

glabel D_80143C5C
    .float 30000

glabel D_80143C60
    .float 30000

glabel D_80143C64
    .float 0.8

glabel D_80143C68
    .float 182.04167

glabel D_80143C6C
    .float 0.8

glabel D_80143C70
    .float 182.04167

glabel D_80143C74 # unused
    .float 182.04167

glabel D_80143C78
    .float 0.8

glabel D_80143C7C
    .float 182.04167

glabel D_80143C80
    .float 0.8

glabel D_80143C84
    .float 182.04167

glabel D_80143C88 # unused
    .float 182.04167

glabel D_80143C8C
    .float 182.04167

glabel D_80143C90
    .float 0.00549325

glabel D_80143C94
    .float 0.00549325

glabel D_80143C98
    .float 0.2

glabel D_80143C9C
    .float 0.2

glabel D_80143CA0
    .float 0.00549325

glabel D_80143CA4
    .float 0.00549325

glabel D_80143CA8
    .float 0.00549325

glabel D_80143CAC
    .float 0.00549325

glabel D_80143CB0
    .float 0.02

glabel D_80143CB4
    .float 0.02

glabel D_80143CB8
    .float 0.02

glabel D_80143CBC
    .float 0.00549325

glabel D_80143CC0
    .float 0.00549325

glabel D_80143CC4
    .float 0.02

glabel D_80143CC8
    .float 0.02

glabel D_80143CCC
    .float 0.02

glabel D_80143CD0
    .float 182.04167
