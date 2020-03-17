.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801463D0
    .asciz "\x1b[43;30m"
    .balign 4

glabel D_801463DC
    .asciz "Math3D_lineVsPosSuisenCross():直線の長さがありません\n" 
    # EUC-JP: 直線の長さがありません | 'No straight line length'
    .balign 4

glabel D_80146414
    .asciz "cross = pos を返します。\n"
    # EUC-JP: を返します。 | 'Returns'
    .balign 4 

glabel D_80146430
    .asciz "\x1b[m"
    .balign 4

glabel D_80146434
    .asciz "\x1b[43;30m"
    .balign 4

glabel D_80146440
    .asciz "Math3DLengthPlaneAndPos():法線size がゼロ近いです%f %f %f\n"
    # EUC-JP: 芊瞬size 互未伕嗤中匹允 | 'Instant size'?
    .balign 4

glabel D_8014647C
    .asciz "\x1b[m"
    .balign 4

glabel D_80146480
    .asciz "\x1b[43;30m"
    .balign 4

glabel D_8014648C
    .asciz "Math3DSignedLengthPlaneAndPos():法線size がゼロ近いです%f %f %f\n"
    # EUC-JP: 法線size がゼロ近いです | 'Normal size is close to zero'?
    .balign 4

glabel D_801464D0
    .asciz "\x1b[m"
    .balign 4

glabel D_801464D4
    .float 0.008

glabel D_801464D8
    .float 0.008

glabel D_801464DC
    .float 0.008

glabel D_801464E0
    .float 0.008

glabel D_801464E4
    .float 0.008

glabel D_801464E8
    .float 32767

glabel D_801464EC
    .float 32767

glabel D_801464F0
    .float 0.008

glabel D_801464F4
    .float 0.008

glabel D_801464F8
    .float 0.008

glabel D_801464FC
    .float 0.6

glabel D_80146500
    .float 0.008

glabel D_80146504
    .float 0.008

glabel D_80146508
    .float 0.008

glabel D_8014650C
    .float 0.008

glabel D_80146510
    .float 0.008

glabel D_80146514
    .float 0.008

glabel D_80146518
    .float 0.008

glabel D_8014651C
    .float 0.008

glabel D_80146520
    .float 0.008

glabel D_80146524
    .float 0.008

glabel D_80146528
    .float 0.008

glabel D_8014652C
    .float 0.008

glabel D_80146530
    .float 0.008

glabel D_80146534
    .float 0.008

glabel D_80146538
    .float 0.008

glabel D_8014653C
    .float 0.008

glabel D_80146540
    .float 0.008

glabel D_80146544
    .float 0.008

glabel D_80146548
    .float 0.008

glabel D_8014654C
    .float 0.008

glabel D_80146550
    .float 1E+38

glabel D_80146554
    .float 1E+38

glabel D_80146558
    .float 0.008

glabel D_8014655C
    .float 0.008
