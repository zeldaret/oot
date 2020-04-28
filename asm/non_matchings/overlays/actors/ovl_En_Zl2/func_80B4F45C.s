.rdata
glabel D_80B52900
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52910
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52920
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52930
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52940
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52950
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52960
    .asciz "../z_en_zl2.c"
    .balign 4

.late_rodata
glabel D_80B52BB4
 .word 0xC47EC000
glabel D_80B52BB8
 .word 0x43E98000
glabel D_80B52BBC
 .word 0x43848000
glabel D_80B52BC0
 .word 0xC3D58000
glabel D_80B52BC4
 .word 0x43E98000
glabel D_80B52BC8
 .word 0x43848000
glabel D_80B52BCC
 .word 0xC3D58000

.text
glabel func_80B4F45C
/* 00ACC 80B4F45C 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00AD0 80B4F460 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 00AD4 80B4F464 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00AD8 80B4F468 AFA40080 */  sw      $a0, 0x0080($sp)
/* 00ADC 80B4F46C AFA60088 */  sw      $a2, 0x0088($sp)
/* 00AE0 80B4F470 14A101BB */  bne     $a1, $at, .L80B4FB60
/* 00AE4 80B4F474 AFA7008C */  sw      $a3, 0x008C($sp)
/* 00AE8 80B4F478 8C840000 */  lw      $a0, 0x0000($a0)           ## 00000000
/* 00AEC 80B4F47C 0C031A73 */  jal     Graph_Alloc

/* 00AF0 80B4F480 240501C0 */  addiu   $a1, $zero, 0x01C0         ## $a1 = 000001C0
/* 00AF4 80B4F484 8FA50098 */  lw      $a1, 0x0098($sp)
/* 00AF8 80B4F488 AFA20074 */  sw      $v0, 0x0074($sp)
/* 00AFC 80B4F48C 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 00B00 80B4F490 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 00B04 80B4F494 37180030 */  ori     $t8, $t8, 0x0030           ## $t8 = DB060030
/* 00B08 80B4F498 248F0008 */  addiu   $t7, $a0, 0x0008           ## $t7 = 00000008
/* 00B0C 80B4F49C ACAF0000 */  sw      $t7, 0x0000($a1)           ## 00000000
/* 00B10 80B4F4A0 AC820004 */  sw      $v0, 0x0004($a0)           ## 00000004
/* 00B14 80B4F4A4 0C034213 */  jal     Matrix_Push
/* 00B18 80B4F4A8 AC980000 */  sw      $t8, 0x0000($a0)           ## 00000000
/* 00B1C 80B4F4AC 8FA8008C */  lw      $t0, 0x008C($sp)
/* 00B20 80B4F4B0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00B24 80B4F4B4 C50C0000 */  lwc1    $f12, 0x0000($t0)          ## 00000000
/* 00B28 80B4F4B8 C50E0004 */  lwc1    $f14, 0x0004($t0)          ## 00000004
/* 00B2C 80B4F4BC 0C034261 */  jal     Matrix_Translate
/* 00B30 80B4F4C0 8D060008 */  lw      $a2, 0x0008($t0)           ## 00000008
/* 00B34 80B4F4C4 8FA20090 */  lw      $v0, 0x0090($sp)
/* 00B38 80B4F4C8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00B3C 80B4F4CC 84440000 */  lh      $a0, 0x0000($v0)           ## 00000000
/* 00B40 80B4F4D0 84450002 */  lh      $a1, 0x0002($v0)           ## 00000002
/* 00B44 80B4F4D4 0C034421 */  jal     Matrix_RotateRPY
/* 00B48 80B4F4D8 84460004 */  lh      $a2, 0x0004($v0)           ## 00000004
/* 00B4C 80B4F4DC 0C034213 */  jal     Matrix_Push
/* 00B50 80B4F4E0 00000000 */  nop
/* 00B54 80B4F4E4 3C0143B5 */  lui     $at, 0x43B5                ## $at = 43B50000
/* 00B58 80B4F4E8 44816000 */  mtc1    $at, $f12                  ## $f12 = 362.00
/* 00B5C 80B4F4EC 3C01C305 */  lui     $at, 0xC305                ## $at = C3050000
/* 00B60 80B4F4F0 44817000 */  mtc1    $at, $f14                  ## $f14 = -133.00
/* 00B64 80B4F4F4 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00B68 80B4F4F8 0C034261 */  jal     Matrix_Translate
/* 00B6C 80B4F4FC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00B70 80B4F500 0C034236 */  jal     Matrix_Get
/* 00B74 80B4F504 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 00B78 80B4F508 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 00B7C 80B4F50C 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFAC
/* 00B80 80B4F510 0C034833 */  jal     func_800D20CC
/* 00B84 80B4F514 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00B88 80B4F518 0C03034A */  jal     func_800C0D28
/* 00B8C 80B4F51C 8FA40080 */  lw      $a0, 0x0080($sp)
/* 00B90 80B4F520 1440000D */  bne     $v0, $zero, .L80B4F558
/* 00B94 80B4F524 00000000 */  nop
/* 00B98 80B4F528 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00B9C 80B4F52C 87A5002E */  lh      $a1, 0x002E($sp)
/* 00BA0 80B4F530 0C2D3B8E */  jal     func_80B4EE38
/* 00BA4 80B4F534 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00BA8 80B4F538 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00BAC 80B4F53C 87A5002C */  lh      $a1, 0x002C($sp)
/* 00BB0 80B4F540 0C2D3C8C */  jal     func_80B4F230
/* 00BB4 80B4F544 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00BB8 80B4F548 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00BBC 80B4F54C 87A50030 */  lh      $a1, 0x0030($sp)
/* 00BC0 80B4F550 0C2D3BD9 */  jal     func_80B4EF64
/* 00BC4 80B4F554 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
.L80B4F558:
/* 00BC8 80B4F558 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00BCC 80B4F55C 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00BD0 80B4F560 8FA30094 */  lw      $v1, 0x0094($sp)
/* 00BD4 80B4F564 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00BD8 80B4F568 84591492 */  lh      $t9, 0x1492($v0)           ## 80161492
/* 00BDC 80B4F56C 844A1494 */  lh      $t2, 0x1494($v0)           ## 80161494
/* 00BE0 80B4F570 844C1496 */  lh      $t4, 0x1496($v0)           ## 80161496
/* 00BE4 80B4F574 846D01E0 */  lh      $t5, 0x01E0($v1)           ## 000001E0
/* 00BE8 80B4F578 846B01DE */  lh      $t3, 0x01DE($v1)           ## 000001DE
/* 00BEC 80B4F57C 846901DC */  lh      $t1, 0x01DC($v1)           ## 000001DC
/* 00BF0 80B4F580 018D3021 */  addu    $a2, $t4, $t5
/* 00BF4 80B4F584 014B2821 */  addu    $a1, $t2, $t3
/* 00BF8 80B4F588 03292021 */  addu    $a0, $t9, $t1
/* 00BFC 80B4F58C 00042400 */  sll     $a0, $a0, 16
/* 00C00 80B4F590 00052C00 */  sll     $a1, $a1, 16
/* 00C04 80B4F594 00063400 */  sll     $a2, $a2, 16
/* 00C08 80B4F598 246301DC */  addiu   $v1, $v1, 0x01DC           ## $v1 = 000001DC
/* 00C0C 80B4F59C AFA3001C */  sw      $v1, 0x001C($sp)
/* 00C10 80B4F5A0 00063403 */  sra     $a2, $a2, 16
/* 00C14 80B4F5A4 00052C03 */  sra     $a1, $a1, 16
/* 00C18 80B4F5A8 0C034421 */  jal     Matrix_RotateRPY
/* 00C1C 80B4F5AC 00042403 */  sra     $a0, $a0, 16
/* 00C20 80B4F5B0 3C01C33C */  lui     $at, 0xC33C                ## $at = C33C0000
/* 00C24 80B4F5B4 44816000 */  mtc1    $at, $f12                  ## $f12 = -188.00
/* 00C28 80B4F5B8 3C01C338 */  lui     $at, 0xC338                ## $at = C3380000
/* 00C2C 80B4F5BC 44817000 */  mtc1    $at, $f14                  ## $f14 = -184.00
/* 00C30 80B4F5C0 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00C34 80B4F5C4 0C034261 */  jal     Matrix_Translate
/* 00C38 80B4F5C8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00C3C 80B4F5CC 3C0580B5 */  lui     $a1, %hi(D_80B52900)       ## $a1 = 80B50000
/* 00C40 80B4F5D0 24A52900 */  addiu   $a1, $a1, %lo(D_80B52900)  ## $a1 = 80B52900
/* 00C44 80B4F5D4 8FA40074 */  lw      $a0, 0x0074($sp)
/* 00C48 80B4F5D8 0C034695 */  jal     Matrix_ToMtx
/* 00C4C 80B4F5DC 24060420 */  addiu   $a2, $zero, 0x0420         ## $a2 = 00000420
/* 00C50 80B4F5E0 0C034236 */  jal     Matrix_Get
/* 00C54 80B4F5E4 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 00C58 80B4F5E8 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 00C5C 80B4F5EC 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFAC
/* 00C60 80B4F5F0 0C034833 */  jal     func_800D20CC
/* 00C64 80B4F5F4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00C68 80B4F5F8 0C03034A */  jal     func_800C0D28
/* 00C6C 80B4F5FC 8FA40080 */  lw      $a0, 0x0080($sp)
/* 00C70 80B4F600 14400009 */  bne     $v0, $zero, .L80B4F628
/* 00C74 80B4F604 00000000 */  nop
/* 00C78 80B4F608 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00C7C 80B4F60C 87A5002E */  lh      $a1, 0x002E($sp)
/* 00C80 80B4F610 0C2D3B8E */  jal     func_80B4EE38
/* 00C84 80B4F614 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00C88 80B4F618 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00C8C 80B4F61C 87A5002C */  lh      $a1, 0x002C($sp)
/* 00C90 80B4F620 0C2D3C8C */  jal     func_80B4F230
/* 00C94 80B4F624 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80B4F628:
/* 00C98 80B4F628 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00C9C 80B4F62C 8FA3001C */  lw      $v1, 0x001C($sp)
/* 00CA0 80B4F630 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00CA4 80B4F634 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00CA8 80B4F638 846F0006 */  lh      $t7, 0x0006($v1)           ## 00000006
/* 00CAC 80B4F63C 84790008 */  lh      $t9, 0x0008($v1)           ## 00000008
/* 00CB0 80B4F640 846A000A */  lh      $t2, 0x000A($v1)           ## 0000000A
/* 00CB4 80B4F644 844E1498 */  lh      $t6, 0x1498($v0)           ## 80161498
/* 00CB8 80B4F648 8458149A */  lh      $t8, 0x149A($v0)           ## 8016149A
/* 00CBC 80B4F64C 8449149C */  lh      $t1, 0x149C($v0)           ## 8016149C
/* 00CC0 80B4F650 01CF2021 */  addu    $a0, $t6, $t7
/* 00CC4 80B4F654 03192821 */  addu    $a1, $t8, $t9
/* 00CC8 80B4F658 012A3021 */  addu    $a2, $t1, $t2
/* 00CCC 80B4F65C 00063400 */  sll     $a2, $a2, 16
/* 00CD0 80B4F660 00052C00 */  sll     $a1, $a1, 16
/* 00CD4 80B4F664 00042400 */  sll     $a0, $a0, 16
/* 00CD8 80B4F668 00042403 */  sra     $a0, $a0, 16
/* 00CDC 80B4F66C 00052C03 */  sra     $a1, $a1, 16
/* 00CE0 80B4F670 0C034421 */  jal     Matrix_RotateRPY
/* 00CE4 80B4F674 00063403 */  sra     $a2, $a2, 16
/* 00CE8 80B4F678 3C01C3CD */  lui     $at, 0xC3CD                ## $at = C3CD0000
/* 00CEC 80B4F67C 44816000 */  mtc1    $at, $f12                  ## $f12 = -410.00
/* 00CF0 80B4F680 3C01C338 */  lui     $at, 0xC338                ## $at = C3380000
/* 00CF4 80B4F684 44817000 */  mtc1    $at, $f14                  ## $f14 = -184.00
/* 00CF8 80B4F688 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00CFC 80B4F68C 0C034261 */  jal     Matrix_Translate
/* 00D00 80B4F690 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D04 80B4F694 8FA40074 */  lw      $a0, 0x0074($sp)
/* 00D08 80B4F698 3C0580B5 */  lui     $a1, %hi(D_80B52910)       ## $a1 = 80B50000
/* 00D0C 80B4F69C 24A52910 */  addiu   $a1, $a1, %lo(D_80B52910)  ## $a1 = 80B52910
/* 00D10 80B4F6A0 2406044C */  addiu   $a2, $zero, 0x044C         ## $a2 = 0000044C
/* 00D14 80B4F6A4 0C034695 */  jal     Matrix_ToMtx
/* 00D18 80B4F6A8 24840040 */  addiu   $a0, $a0, 0x0040           ## $a0 = 00000040
/* 00D1C 80B4F6AC 0C034236 */  jal     Matrix_Get
/* 00D20 80B4F6B0 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 00D24 80B4F6B4 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 00D28 80B4F6B8 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFAC
/* 00D2C 80B4F6BC 0C034833 */  jal     func_800D20CC
/* 00D30 80B4F6C0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00D34 80B4F6C4 0C03034A */  jal     func_800C0D28
/* 00D38 80B4F6C8 8FA40080 */  lw      $a0, 0x0080($sp)
/* 00D3C 80B4F6CC 14400009 */  bne     $v0, $zero, .L80B4F6F4
/* 00D40 80B4F6D0 00000000 */  nop
/* 00D44 80B4F6D4 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00D48 80B4F6D8 87A5002E */  lh      $a1, 0x002E($sp)
/* 00D4C 80B4F6DC 0C2D3B8E */  jal     func_80B4EE38
/* 00D50 80B4F6E0 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00D54 80B4F6E4 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00D58 80B4F6E8 87A5002C */  lh      $a1, 0x002C($sp)
/* 00D5C 80B4F6EC 0C2D3C8C */  jal     func_80B4F230
/* 00D60 80B4F6F0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
.L80B4F6F4:
/* 00D64 80B4F6F4 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00D68 80B4F6F8 8FA3001C */  lw      $v1, 0x001C($sp)
/* 00D6C 80B4F6FC 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00D70 80B4F700 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D74 80B4F704 846C000C */  lh      $t4, 0x000C($v1)           ## 0000000C
/* 00D78 80B4F708 846E000E */  lh      $t6, 0x000E($v1)           ## 0000000E
/* 00D7C 80B4F70C 84780010 */  lh      $t8, 0x0010($v1)           ## 00000010
/* 00D80 80B4F710 844B149E */  lh      $t3, 0x149E($v0)           ## 8016149E
/* 00D84 80B4F714 844D14A0 */  lh      $t5, 0x14A0($v0)           ## 801614A0
/* 00D88 80B4F718 844F14A2 */  lh      $t7, 0x14A2($v0)           ## 801614A2
/* 00D8C 80B4F71C 016C2021 */  addu    $a0, $t3, $t4
/* 00D90 80B4F720 01AE2821 */  addu    $a1, $t5, $t6
/* 00D94 80B4F724 01F83021 */  addu    $a2, $t7, $t8
/* 00D98 80B4F728 00063400 */  sll     $a2, $a2, 16
/* 00D9C 80B4F72C 00052C00 */  sll     $a1, $a1, 16
/* 00DA0 80B4F730 00042400 */  sll     $a0, $a0, 16
/* 00DA4 80B4F734 00042403 */  sra     $a0, $a0, 16
/* 00DA8 80B4F738 00052C03 */  sra     $a1, $a1, 16
/* 00DAC 80B4F73C 0C034421 */  jal     Matrix_RotateRPY
/* 00DB0 80B4F740 00063403 */  sra     $a2, $a2, 16
/* 00DB4 80B4F744 3C0180B5 */  lui     $at, %hi(D_80B52BB4)       ## $at = 80B50000
/* 00DB8 80B4F748 C42C2BB4 */  lwc1    $f12, %lo(D_80B52BB4)($at)
/* 00DBC 80B4F74C 3C01C1D0 */  lui     $at, 0xC1D0                ## $at = C1D00000
/* 00DC0 80B4F750 44817000 */  mtc1    $at, $f14                  ## $f14 = -26.00
/* 00DC4 80B4F754 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00DC8 80B4F758 0C034261 */  jal     Matrix_Translate
/* 00DCC 80B4F75C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00DD0 80B4F760 8FA40074 */  lw      $a0, 0x0074($sp)
/* 00DD4 80B4F764 3C0580B5 */  lui     $a1, %hi(D_80B52920)       ## $a1 = 80B50000
/* 00DD8 80B4F768 24A52920 */  addiu   $a1, $a1, %lo(D_80B52920)  ## $a1 = 80B52920
/* 00DDC 80B4F76C 24060460 */  addiu   $a2, $zero, 0x0460         ## $a2 = 00000460
/* 00DE0 80B4F770 0C034695 */  jal     Matrix_ToMtx
/* 00DE4 80B4F774 24840080 */  addiu   $a0, $a0, 0x0080           ## $a0 = 00000080
/* 00DE8 80B4F778 0C034221 */  jal     Matrix_Pull
/* 00DEC 80B4F77C 00000000 */  nop
/* 00DF0 80B4F780 0C034213 */  jal     Matrix_Push
/* 00DF4 80B4F784 00000000 */  nop
/* 00DF8 80B4F788 3C0180B5 */  lui     $at, %hi(D_80B52BB8)       ## $at = 80B50000
/* 00DFC 80B4F78C C42C2BB8 */  lwc1    $f12, %lo(D_80B52BB8)($at)
/* 00E00 80B4F790 3C0180B5 */  lui     $at, %hi(D_80B52BBC)       ## $at = 80B50000
/* 00E04 80B4F794 3C0643C2 */  lui     $a2, 0x43C2                ## $a2 = 43C20000
/* 00E08 80B4F798 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = 43C28000
/* 00E0C 80B4F79C C42E2BBC */  lwc1    $f14, %lo(D_80B52BBC)($at)
/* 00E10 80B4F7A0 0C034261 */  jal     Matrix_Translate
/* 00E14 80B4F7A4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00E18 80B4F7A8 0C034236 */  jal     Matrix_Get
/* 00E1C 80B4F7AC 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 00E20 80B4F7B0 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 00E24 80B4F7B4 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFAC
/* 00E28 80B4F7B8 0C034833 */  jal     func_800D20CC
/* 00E2C 80B4F7BC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00E30 80B4F7C0 0C03034A */  jal     func_800C0D28
/* 00E34 80B4F7C4 8FA40080 */  lw      $a0, 0x0080($sp)
/* 00E38 80B4F7C8 1440000D */  bne     $v0, $zero, .L80B4F800
/* 00E3C 80B4F7CC 00000000 */  nop
/* 00E40 80B4F7D0 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00E44 80B4F7D4 87A5002E */  lh      $a1, 0x002E($sp)
/* 00E48 80B4F7D8 0C2D3B8E */  jal     func_80B4EE38
/* 00E4C 80B4F7DC 24060009 */  addiu   $a2, $zero, 0x0009         ## $a2 = 00000009
/* 00E50 80B4F7E0 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00E54 80B4F7E4 87A5002C */  lh      $a1, 0x002C($sp)
/* 00E58 80B4F7E8 0C2D3C8C */  jal     func_80B4F230
/* 00E5C 80B4F7EC 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00E60 80B4F7F0 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00E64 80B4F7F4 87A50030 */  lh      $a1, 0x0030($sp)
/* 00E68 80B4F7F8 0C2D3BD9 */  jal     func_80B4EF64
/* 00E6C 80B4F7FC 2406000B */  addiu   $a2, $zero, 0x000B         ## $a2 = 0000000B
.L80B4F800:
/* 00E70 80B4F800 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00E74 80B4F804 8FA3001C */  lw      $v1, 0x001C($sp)
/* 00E78 80B4F808 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00E7C 80B4F80C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00E80 80B4F810 84690012 */  lh      $t1, 0x0012($v1)           ## 00000012
/* 00E84 80B4F814 846B0014 */  lh      $t3, 0x0014($v1)           ## 00000014
/* 00E88 80B4F818 846D0016 */  lh      $t5, 0x0016($v1)           ## 00000016
/* 00E8C 80B4F81C 845914A4 */  lh      $t9, 0x14A4($v0)           ## 801614A4
/* 00E90 80B4F820 844A14A6 */  lh      $t2, 0x14A6($v0)           ## 801614A6
/* 00E94 80B4F824 844C14A8 */  lh      $t4, 0x14A8($v0)           ## 801614A8
/* 00E98 80B4F828 03292021 */  addu    $a0, $t9, $t1
/* 00E9C 80B4F82C 014B2821 */  addu    $a1, $t2, $t3
/* 00EA0 80B4F830 018D3021 */  addu    $a2, $t4, $t5
/* 00EA4 80B4F834 00063400 */  sll     $a2, $a2, 16
/* 00EA8 80B4F838 00052C00 */  sll     $a1, $a1, 16
/* 00EAC 80B4F83C 00042400 */  sll     $a0, $a0, 16
/* 00EB0 80B4F840 00042403 */  sra     $a0, $a0, 16
/* 00EB4 80B4F844 00052C03 */  sra     $a1, $a1, 16
/* 00EB8 80B4F848 0C034421 */  jal     Matrix_RotateRPY
/* 00EBC 80B4F84C 00063403 */  sra     $a2, $a2, 16
/* 00EC0 80B4F850 3C0180B5 */  lui     $at, %hi(D_80B52BC0)       ## $at = 80B50000
/* 00EC4 80B4F854 C42C2BC0 */  lwc1    $f12, %lo(D_80B52BC0)($at)
/* 00EC8 80B4F858 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00ECC 80B4F85C 44817000 */  mtc1    $at, $f14                  ## $f14 = -1.00
/* 00ED0 80B4F860 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00ED4 80B4F864 0C034261 */  jal     Matrix_Translate
/* 00ED8 80B4F868 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00EDC 80B4F86C 8FA40074 */  lw      $a0, 0x0074($sp)
/* 00EE0 80B4F870 3C0580B5 */  lui     $a1, %hi(D_80B52930)       ## $a1 = 80B50000
/* 00EE4 80B4F874 24A52930 */  addiu   $a1, $a1, %lo(D_80B52930)  ## $a1 = 80B52930
/* 00EE8 80B4F878 24060479 */  addiu   $a2, $zero, 0x0479         ## $a2 = 00000479
/* 00EEC 80B4F87C 0C034695 */  jal     Matrix_ToMtx
/* 00EF0 80B4F880 248400C0 */  addiu   $a0, $a0, 0x00C0           ## $a0 = 000000C0
/* 00EF4 80B4F884 0C034236 */  jal     Matrix_Get
/* 00EF8 80B4F888 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 00EFC 80B4F88C 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 00F00 80B4F890 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFAC
/* 00F04 80B4F894 0C034833 */  jal     func_800D20CC
/* 00F08 80B4F898 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00F0C 80B4F89C 0C03034A */  jal     func_800C0D28
/* 00F10 80B4F8A0 8FA40080 */  lw      $a0, 0x0080($sp)
/* 00F14 80B4F8A4 1440000D */  bne     $v0, $zero, .L80B4F8DC
/* 00F18 80B4F8A8 00000000 */  nop
/* 00F1C 80B4F8AC 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00F20 80B4F8B0 87A5002E */  lh      $a1, 0x002E($sp)
/* 00F24 80B4F8B4 0C2D3B8E */  jal     func_80B4EE38
/* 00F28 80B4F8B8 2406000C */  addiu   $a2, $zero, 0x000C         ## $a2 = 0000000C
/* 00F2C 80B4F8BC 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00F30 80B4F8C0 87A5002C */  lh      $a1, 0x002C($sp)
/* 00F34 80B4F8C4 0C2D3C8C */  jal     func_80B4F230
/* 00F38 80B4F8C8 2406000D */  addiu   $a2, $zero, 0x000D         ## $a2 = 0000000D
/* 00F3C 80B4F8CC 8FA40094 */  lw      $a0, 0x0094($sp)
/* 00F40 80B4F8D0 87A50030 */  lh      $a1, 0x0030($sp)
/* 00F44 80B4F8D4 0C2D3BD9 */  jal     func_80B4EF64
/* 00F48 80B4F8D8 2406000E */  addiu   $a2, $zero, 0x000E         ## $a2 = 0000000E
.L80B4F8DC:
/* 00F4C 80B4F8DC 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00F50 80B4F8E0 8FA3001C */  lw      $v1, 0x001C($sp)
/* 00F54 80B4F8E4 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00F58 80B4F8E8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00F5C 80B4F8EC 846F0018 */  lh      $t7, 0x0018($v1)           ## 00000018
/* 00F60 80B4F8F0 8479001A */  lh      $t9, 0x001A($v1)           ## 0000001A
/* 00F64 80B4F8F4 846A001C */  lh      $t2, 0x001C($v1)           ## 0000001C
/* 00F68 80B4F8F8 844E14AA */  lh      $t6, 0x14AA($v0)           ## 801614AA
/* 00F6C 80B4F8FC 845814AC */  lh      $t8, 0x14AC($v0)           ## 801614AC
/* 00F70 80B4F900 844914AE */  lh      $t1, 0x14AE($v0)           ## 801614AE
/* 00F74 80B4F904 01CF2021 */  addu    $a0, $t6, $t7
/* 00F78 80B4F908 03192821 */  addu    $a1, $t8, $t9
/* 00F7C 80B4F90C 012A3021 */  addu    $a2, $t1, $t2
/* 00F80 80B4F910 00063400 */  sll     $a2, $a2, 16
/* 00F84 80B4F914 00052C00 */  sll     $a1, $a1, 16
/* 00F88 80B4F918 00042400 */  sll     $a0, $a0, 16
/* 00F8C 80B4F91C 00042403 */  sra     $a0, $a0, 16
/* 00F90 80B4F920 00052C03 */  sra     $a1, $a1, 16
/* 00F94 80B4F924 0C034421 */  jal     Matrix_RotateRPY
/* 00F98 80B4F928 00063403 */  sra     $a2, $a2, 16
/* 00F9C 80B4F92C 3C01C3DF */  lui     $at, 0xC3DF                ## $at = C3DF0000
/* 00FA0 80B4F930 44816000 */  mtc1    $at, $f12                  ## $f12 = -446.00
/* 00FA4 80B4F934 3C01C250 */  lui     $at, 0xC250                ## $at = C2500000
/* 00FA8 80B4F938 44817000 */  mtc1    $at, $f14                  ## $f14 = -52.00
/* 00FAC 80B4F93C 3C0642A8 */  lui     $a2, 0x42A8                ## $a2 = 42A80000
/* 00FB0 80B4F940 0C034261 */  jal     Matrix_Translate
/* 00FB4 80B4F944 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00FB8 80B4F948 8FA40074 */  lw      $a0, 0x0074($sp)
/* 00FBC 80B4F94C 3C0580B5 */  lui     $a1, %hi(D_80B52940)       ## $a1 = 80B50000
/* 00FC0 80B4F950 24A52940 */  addiu   $a1, $a1, %lo(D_80B52940)  ## $a1 = 80B52940
/* 00FC4 80B4F954 2406048C */  addiu   $a2, $zero, 0x048C         ## $a2 = 0000048C
/* 00FC8 80B4F958 0C034695 */  jal     Matrix_ToMtx
/* 00FCC 80B4F95C 24840100 */  addiu   $a0, $a0, 0x0100           ## $a0 = 00000100
/* 00FD0 80B4F960 0C034221 */  jal     Matrix_Pull
/* 00FD4 80B4F964 00000000 */  nop
/* 00FD8 80B4F968 0C034213 */  jal     Matrix_Push
/* 00FDC 80B4F96C 00000000 */  nop
/* 00FE0 80B4F970 3C0180B5 */  lui     $at, %hi(D_80B52BC4)       ## $at = 80B50000
/* 00FE4 80B4F974 C42C2BC4 */  lwc1    $f12, %lo(D_80B52BC4)($at)
/* 00FE8 80B4F978 3C0180B5 */  lui     $at, %hi(D_80B52BC8)       ## $at = 80B50000
/* 00FEC 80B4F97C 3C06C3C2 */  lui     $a2, 0xC3C2                ## $a2 = C3C20000
/* 00FF0 80B4F980 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = C3C28000
/* 00FF4 80B4F984 C42E2BC8 */  lwc1    $f14, %lo(D_80B52BC8)($at)
/* 00FF8 80B4F988 0C034261 */  jal     Matrix_Translate
/* 00FFC 80B4F98C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01000 80B4F990 0C034236 */  jal     Matrix_Get
/* 01004 80B4F994 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 01008 80B4F998 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 0100C 80B4F99C 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFAC
/* 01010 80B4F9A0 0C034833 */  jal     func_800D20CC
/* 01014 80B4F9A4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01018 80B4F9A8 0C03034A */  jal     func_800C0D28
/* 0101C 80B4F9AC 8FA40080 */  lw      $a0, 0x0080($sp)
/* 01020 80B4F9B0 1440000D */  bne     $v0, $zero, .L80B4F9E8
/* 01024 80B4F9B4 00000000 */  nop
/* 01028 80B4F9B8 8FA40094 */  lw      $a0, 0x0094($sp)
/* 0102C 80B4F9BC 87A5002E */  lh      $a1, 0x002E($sp)
/* 01030 80B4F9C0 0C2D3B8E */  jal     func_80B4EE38
/* 01034 80B4F9C4 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 01038 80B4F9C8 8FA40094 */  lw      $a0, 0x0094($sp)
/* 0103C 80B4F9CC 87A5002C */  lh      $a1, 0x002C($sp)
/* 01040 80B4F9D0 0C2D3C8C */  jal     func_80B4F230
/* 01044 80B4F9D4 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 01048 80B4F9D8 8FA40094 */  lw      $a0, 0x0094($sp)
/* 0104C 80B4F9DC 87A50030 */  lh      $a1, 0x0030($sp)
/* 01050 80B4F9E0 0C2D3BD9 */  jal     func_80B4EF64
/* 01054 80B4F9E4 24060011 */  addiu   $a2, $zero, 0x0011         ## $a2 = 00000011
.L80B4F9E8:
/* 01058 80B4F9E8 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 0105C 80B4F9EC 8FA3001C */  lw      $v1, 0x001C($sp)
/* 01060 80B4F9F0 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 01064 80B4F9F4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01068 80B4F9F8 846C001E */  lh      $t4, 0x001E($v1)           ## 0000001E
/* 0106C 80B4F9FC 846E0020 */  lh      $t6, 0x0020($v1)           ## 00000020
/* 01070 80B4FA00 84780022 */  lh      $t8, 0x0022($v1)           ## 00000022
/* 01074 80B4FA04 844B14B0 */  lh      $t3, 0x14B0($v0)           ## 801614B0
/* 01078 80B4FA08 844D14B2 */  lh      $t5, 0x14B2($v0)           ## 801614B2
/* 0107C 80B4FA0C 844F14B4 */  lh      $t7, 0x14B4($v0)           ## 801614B4
/* 01080 80B4FA10 016C2021 */  addu    $a0, $t3, $t4
/* 01084 80B4FA14 01AE2821 */  addu    $a1, $t5, $t6
/* 01088 80B4FA18 01F83021 */  addu    $a2, $t7, $t8
/* 0108C 80B4FA1C 00063400 */  sll     $a2, $a2, 16
/* 01090 80B4FA20 00052C00 */  sll     $a1, $a1, 16
/* 01094 80B4FA24 00042400 */  sll     $a0, $a0, 16
/* 01098 80B4FA28 00042403 */  sra     $a0, $a0, 16
/* 0109C 80B4FA2C 00052C03 */  sra     $a1, $a1, 16
/* 010A0 80B4FA30 0C034421 */  jal     Matrix_RotateRPY
/* 010A4 80B4FA34 00063403 */  sra     $a2, $a2, 16
/* 010A8 80B4FA38 3C0180B5 */  lui     $at, %hi(D_80B52BCC)       ## $at = 80B50000
/* 010AC 80B4FA3C C42C2BCC */  lwc1    $f12, %lo(D_80B52BCC)($at)
/* 010B0 80B4FA40 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 010B4 80B4FA44 44817000 */  mtc1    $at, $f14                  ## $f14 = -1.00
/* 010B8 80B4FA48 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 010BC 80B4FA4C 0C034261 */  jal     Matrix_Translate
/* 010C0 80B4FA50 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 010C4 80B4FA54 8FA40074 */  lw      $a0, 0x0074($sp)
/* 010C8 80B4FA58 3C0580B5 */  lui     $a1, %hi(D_80B52950)       ## $a1 = 80B50000
/* 010CC 80B4FA5C 24A52950 */  addiu   $a1, $a1, %lo(D_80B52950)  ## $a1 = 80B52950
/* 010D0 80B4FA60 240604A5 */  addiu   $a2, $zero, 0x04A5         ## $a2 = 000004A5
/* 010D4 80B4FA64 0C034695 */  jal     Matrix_ToMtx
/* 010D8 80B4FA68 24840140 */  addiu   $a0, $a0, 0x0140           ## $a0 = 00000140
/* 010DC 80B4FA6C 0C034236 */  jal     Matrix_Get
/* 010E0 80B4FA70 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 010E4 80B4FA74 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFB4
/* 010E8 80B4FA78 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFAC
/* 010EC 80B4FA7C 0C034833 */  jal     func_800D20CC
/* 010F0 80B4FA80 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 010F4 80B4FA84 0C03034A */  jal     func_800C0D28
/* 010F8 80B4FA88 8FA40080 */  lw      $a0, 0x0080($sp)
/* 010FC 80B4FA8C 1440000C */  bne     $v0, $zero, .L80B4FAC0
/* 01100 80B4FA90 8FA40094 */  lw      $a0, 0x0094($sp)
/* 01104 80B4FA94 87A5002E */  lh      $a1, 0x002E($sp)
/* 01108 80B4FA98 0C2D3B8E */  jal     func_80B4EE38
/* 0110C 80B4FA9C 24060012 */  addiu   $a2, $zero, 0x0012         ## $a2 = 00000012
/* 01110 80B4FAA0 8FA40094 */  lw      $a0, 0x0094($sp)
/* 01114 80B4FAA4 87A5002C */  lh      $a1, 0x002C($sp)
/* 01118 80B4FAA8 0C2D3C8C */  jal     func_80B4F230
/* 0111C 80B4FAAC 24060013 */  addiu   $a2, $zero, 0x0013         ## $a2 = 00000013
/* 01120 80B4FAB0 8FA40094 */  lw      $a0, 0x0094($sp)
/* 01124 80B4FAB4 87A50030 */  lh      $a1, 0x0030($sp)
/* 01128 80B4FAB8 0C2D3BD9 */  jal     func_80B4EF64
/* 0112C 80B4FABC 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
.L80B4FAC0:
/* 01130 80B4FAC0 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 01134 80B4FAC4 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 01138 80B4FAC8 8FA9001C */  lw      $t1, 0x001C($sp)
/* 0113C 80B4FACC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01140 80B4FAD0 845914B6 */  lh      $t9, 0x14B6($v0)           ## 801614B6
/* 01144 80B4FAD4 844B14B8 */  lh      $t3, 0x14B8($v0)           ## 801614B8
/* 01148 80B4FAD8 844D14BA */  lh      $t5, 0x14BA($v0)           ## 801614BA
/* 0114C 80B4FADC 852A0024 */  lh      $t2, 0x0024($t1)           ## 00000024
/* 01150 80B4FAE0 852C0026 */  lh      $t4, 0x0026($t1)           ## 00000026
/* 01154 80B4FAE4 852E0028 */  lh      $t6, 0x0028($t1)           ## 00000028
/* 01158 80B4FAE8 032A2021 */  addu    $a0, $t9, $t2
/* 0115C 80B4FAEC 016C2821 */  addu    $a1, $t3, $t4
/* 01160 80B4FAF0 01AE3021 */  addu    $a2, $t5, $t6
/* 01164 80B4FAF4 00063400 */  sll     $a2, $a2, 16
/* 01168 80B4FAF8 00052C00 */  sll     $a1, $a1, 16
/* 0116C 80B4FAFC 00042400 */  sll     $a0, $a0, 16
/* 01170 80B4FB00 00042403 */  sra     $a0, $a0, 16
/* 01174 80B4FB04 00052C03 */  sra     $a1, $a1, 16
/* 01178 80B4FB08 0C034421 */  jal     Matrix_RotateRPY
/* 0117C 80B4FB0C 00063403 */  sra     $a2, $a2, 16
/* 01180 80B4FB10 3C01C3DF */  lui     $at, 0xC3DF                ## $at = C3DF0000
/* 01184 80B4FB14 44816000 */  mtc1    $at, $f12                  ## $f12 = -446.00
/* 01188 80B4FB18 3C01C250 */  lui     $at, 0xC250                ## $at = C2500000
/* 0118C 80B4FB1C 44817000 */  mtc1    $at, $f14                  ## $f14 = -52.00
/* 01190 80B4FB20 3C06C2A8 */  lui     $a2, 0xC2A8                ## $a2 = C2A80000
/* 01194 80B4FB24 0C034261 */  jal     Matrix_Translate
/* 01198 80B4FB28 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0119C 80B4FB2C 8FA40074 */  lw      $a0, 0x0074($sp)
/* 011A0 80B4FB30 3C0580B5 */  lui     $a1, %hi(D_80B52960)       ## $a1 = 80B50000
/* 011A4 80B4FB34 24A52960 */  addiu   $a1, $a1, %lo(D_80B52960)  ## $a1 = 80B52960
/* 011A8 80B4FB38 240604B8 */  addiu   $a2, $zero, 0x04B8         ## $a2 = 000004B8
/* 011AC 80B4FB3C 0C034695 */  jal     Matrix_ToMtx
/* 011B0 80B4FB40 24840180 */  addiu   $a0, $a0, 0x0180           ## $a0 = 00000180
/* 011B4 80B4FB44 0C034221 */  jal     Matrix_Pull
/* 011B8 80B4FB48 00000000 */  nop
/* 011BC 80B4FB4C 0C034221 */  jal     Matrix_Pull
/* 011C0 80B4FB50 00000000 */  nop
/* 011C4 80B4FB54 8FB80094 */  lw      $t8, 0x0094($sp)
/* 011C8 80B4FB58 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 011CC 80B4FB5C AF0F024C */  sw      $t7, 0x024C($t8)           ## 0000024C
.L80B4FB60:
/* 011D0 80B4FB60 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 011D4 80B4FB64 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 011D8 80B4FB68 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 011DC 80B4FB6C 03E00008 */  jr      $ra
/* 011E0 80B4FB70 00000000 */  nop
