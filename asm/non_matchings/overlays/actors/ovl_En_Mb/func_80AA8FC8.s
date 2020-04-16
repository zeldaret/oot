glabel func_80AA8FC8
/* 02F78 80AA8FC8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02F7C 80AA8FCC AFBF001C */  sw      $ra, 0x001C($sp)
/* 02F80 80AA8FD0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 02F84 80AA8FD4 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 02F88 80AA8FD8 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 02F8C 80AA8FDC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02F90 80AA8FE0 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 02F94 80AA8FE4 01CF1023 */  subu    $v0, $t6, $t7
/* 02F98 80AA8FE8 00021400 */  sll     $v0, $v0, 16
/* 02F9C 80AA8FEC 00021403 */  sra     $v0, $v0, 16
/* 02FA0 80AA8FF0 04400003 */  bltz    $v0, .L80AA9000
/* 02FA4 80AA8FF4 00021823 */  subu    $v1, $zero, $v0
/* 02FA8 80AA8FF8 10000001 */  beq     $zero, $zero, .L80AA9000
/* 02FAC 80AA8FFC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80AA9000:
/* 02FB0 80AA9000 28614001 */  slti    $at, $v1, 0x4001
/* 02FB4 80AA9004 1020000A */  beq     $at, $zero, .L80AA9030
/* 02FB8 80AA9008 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02FBC 80AA900C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02FC0 80AA9010 24A516B4 */  addiu   $a1, $a1, 0x16B4           ## $a1 = 060016B4
/* 02FC4 80AA9014 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 02FC8 80AA9018 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 02FCC 80AA901C 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 02FD0 80AA9020 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 02FD4 80AA9024 44812000 */  mtc1    $at, $f4                   ## $f4 = -8.00
/* 02FD8 80AA9028 10000008 */  beq     $zero, $zero, .L80AA904C
/* 02FDC 80AA902C E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80AA9030:
/* 02FE0 80AA9030 24A516B4 */  addiu   $a1, $a1, 0x16B4           ## $a1 = 000016B4
/* 02FE4 80AA9034 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 02FE8 80AA9038 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 02FEC 80AA903C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 02FF0 80AA9040 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 02FF4 80AA9044 00000000 */  nop
/* 02FF8 80AA9048 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80AA904C:
/* 02FFC 80AA904C 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 03000 80AA9050 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 03004 80AA9054 A619032A */  sh      $t9, 0x032A($s0)           ## 0000032A
/* 03008 80AA9058 AE000320 */  sw      $zero, 0x0320($s0)         ## 00000320
/* 0300C 80AA905C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03010 80AA9060 240538BE */  addiu   $a1, $zero, 0x38BE         ## $a1 = 000038BE
/* 03014 80AA9064 0C00BE0A */  jal     Audio_PlayActorSound2

/* 03018 80AA9068 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 0301C 80AA906C 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 03020 80AA9070 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 03024 80AA9074 3C0580AB */  lui     $a1, %hi(func_80AA90A0)    ## $a1 = 80AB0000
/* 03028 80AA9078 01014824 */  and     $t1, $t0, $at
/* 0302C 80AA907C AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 03030 80AA9080 24A590A0 */  addiu   $a1, $a1, %lo(func_80AA90A0) ## $a1 = 80AA90A0
/* 03034 80AA9084 0C2A9814 */  jal     func_80AA6050
/* 03038 80AA9088 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0303C 80AA908C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 03040 80AA9090 8FB00018 */  lw      $s0, 0x0018($sp)
/* 03044 80AA9094 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03048 80AA9098 03E00008 */  jr      $ra
/* 0304C 80AA909C 00000000 */  nop
