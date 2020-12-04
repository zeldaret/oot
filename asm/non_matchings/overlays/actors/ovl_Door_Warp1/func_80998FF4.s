.late_rodata
glabel D_8099C72C
    .float 0.3

glabel D_8099C730
 .word 0x3D4C63F1

glabel D_8099C734
 .word 0x3D9DB22D

glabel D_8099C738
 .word 0x3DB851EC

.text
glabel func_80998FF4
/* 00874 80998FF4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00878 80998FF8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0087C 80998FFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00880 80999000 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00884 80999004 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00888 80999008 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0088C 8099900C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00890 80999010 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00894 80999014 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00898 80999018 24E71374 */  addiu   $a3, $a3, 0x1374           ## $a3 = 06001374
/* 0089C 8099901C 24C62CA8 */  addiu   $a2, $a2, 0x2CA8           ## $a2 = 06002CA8
/* 008A0 80999020 AFA50034 */  sw      $a1, 0x0034($sp)
/* 008A4 80999024 AFA00010 */  sw      $zero, 0x0010($sp)
/* 008A8 80999028 AFA00014 */  sw      $zero, 0x0014($sp)
/* 008AC 8099902C 0C02915F */  jal     Skeleton_Init

/* 008B0 80999030 AFA00018 */  sw      $zero, 0x0018($sp)
/* 008B4 80999034 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 008B8 80999038 0C028800 */  jal     Animation_GetLastFrame

/* 008BC 8099903C 24841374 */  addiu   $a0, $a0, 0x1374           ## $a0 = 06001374
/* 008C0 80999040 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 008C4 80999044 24841374 */  addiu   $a0, $a0, 0x1374           ## $a0 = 06001374
/* 008C8 80999048 0C028800 */  jal     Animation_GetLastFrame

/* 008CC 8099904C A7A2003C */  sh      $v0, 0x003C($sp)
/* 008D0 80999050 87AE003C */  lh      $t6, 0x003C($sp)
/* 008D4 80999054 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 008D8 80999058 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 008DC 8099905C 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 008E0 80999060 46803220 */  cvt.s.w $f8, $f6
/* 008E4 80999064 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 008E8 80999068 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 008EC 8099906C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 008F0 80999070 AFB8001C */  sw      $t8, 0x001C($sp)
/* 008F4 80999074 46802120 */  cvt.s.w $f4, $f4
/* 008F8 80999078 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 008FC 8099907C 24A51374 */  addiu   $a1, $a1, 0x1374           ## $a1 = 06001374
/* 00900 80999080 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 00904 80999084 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00908 80999088 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 0090C 8099908C 44072000 */  mfc1    $a3, $f4
/* 00910 80999090 0C0293F9 */  jal     Animation_ChangeImpl
/* 00914 80999094 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00918 80999098 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0091C 8099909C 0C028800 */  jal     Animation_GetLastFrame

/* 00920 809990A0 24841374 */  addiu   $a0, $a0, 0x1374           ## $a0 = 06001374
/* 00924 809990A4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00928 809990A8 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 0092C 809990AC 3C01809A */  lui     $at, %hi(D_8099C72C)       ## $at = 809A0000
/* 00930 809990B0 C42CC72C */  lwc1    $f12, %lo(D_8099C72C)($at)
/* 00934 809990B4 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00938 809990B8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0093C 809990BC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00940 809990C0 46805420 */  cvt.s.w $f16, $f10
/* 00944 809990C4 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 00948 809990C8 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 0094C 809990CC 44812000 */  mtc1    $at, $f4                   ## $f4 = 800.00
/* 00950 809990D0 24190078 */  addiu   $t9, $zero, 0x0078         ## $t9 = 00000078
/* 00954 809990D4 240800E6 */  addiu   $t0, $zero, 0x00E6         ## $t0 = 000000E6
/* 00958 809990D8 240900C8 */  addiu   $t1, $zero, 0x00C8         ## $t1 = 000000C8
/* 0095C 809990DC 240A0FA0 */  addiu   $t2, $zero, 0x0FA0         ## $t2 = 00000FA0
/* 00960 809990E0 E6100164 */  swc1    $f16, 0x0164($s0)          ## 00000164
/* 00964 809990E4 A61901AE */  sh      $t9, 0x01AE($s0)           ## 000001AE
/* 00968 809990E8 A60801B0 */  sh      $t0, 0x01B0($s0)           ## 000001B0
/* 0096C 809990EC A6090192 */  sh      $t1, 0x0192($s0)           ## 00000192
/* 00970 809990F0 A60A01B8 */  sh      $t2, 0x01B8($s0)           ## 000001B8
/* 00974 809990F4 3C0B8016 */  lui     $t3, %hi(gSaveContext)
/* 00978 809990F8 E6020050 */  swc1    $f2, 0x0050($s0)           ## 00000050
/* 0097C 809990FC E6020054 */  swc1    $f2, 0x0054($s0)           ## 00000054
/* 00980 80999100 E6020058 */  swc1    $f2, 0x0058($s0)           ## 00000058
/* 00984 80999104 E60C0194 */  swc1    $f12, 0x0194($s0)          ## 00000194
/* 00988 80999108 E60C0198 */  swc1    $f12, 0x0198($s0)          ## 00000198
/* 0098C 8099910C E60001A0 */  swc1    $f0, 0x01A0($s0)           ## 000001A0
/* 00990 80999110 E60001A4 */  swc1    $f0, 0x01A4($s0)           ## 000001A4
/* 00994 80999114 E60001A8 */  swc1    $f0, 0x01A8($s0)           ## 000001A8
/* 00998 80999118 E600019C */  swc1    $f0, 0x019C($s0)           ## 0000019C
/* 0099C 8099911C E61201BC */  swc1    $f18, 0x01BC($s0)          ## 000001BC
/* 009A0 80999120 E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
/* 009A4 80999124 8D6BE660 */  lw      $t3, %lo(gSaveContext)($t3)
/* 009A8 80999128 24010053 */  addiu   $at, $zero, 0x0053         ## $at = 00000053
/* 009AC 8099912C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009B0 80999130 1161000D */  beq     $t3, $at, .L80999168
/* 009B4 80999134 3C01809A */  lui     $at, %hi(D_8099C730)       ## $at = 809A0000
/* 009B8 80999138 C426C730 */  lwc1    $f6, %lo(D_8099C730)($at)
/* 009BC 8099913C 3C01809A */  lui     $at, %hi(D_8099C734)       ## $at = 809A0000
/* 009C0 80999140 E6060050 */  swc1    $f6, 0x0050($s0)           ## 00000050
/* 009C4 80999144 C428C734 */  lwc1    $f8, %lo(D_8099C734)($at)
/* 009C8 80999148 3C01809A */  lui     $at, %hi(D_8099C738)       ## $at = 809A0000
/* 009CC 8099914C E6080054 */  swc1    $f8, 0x0054($s0)           ## 00000054
/* 009D0 80999150 C42AC738 */  lwc1    $f10, %lo(D_8099C738)($at)
/* 009D4 80999154 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 009D8 80999158 44818000 */  mtc1    $at, $f16                  ## $f16 = 255.00
/* 009DC 8099915C E60A0058 */  swc1    $f10, 0x0058($s0)          ## 00000058
/* 009E0 80999160 10000003 */  beq     $zero, $zero, .L80999170
/* 009E4 80999164 E61001A8 */  swc1    $f16, 0x01A8($s0)          ## 000001A8
.L80999168:
/* 009E8 80999168 0C00BE0A */  jal     Audio_PlayActorSound2

/* 009EC 8099916C 24052899 */  addiu   $a1, $zero, 0x2899         ## $a1 = 00002899
.L80999170:
/* 009F0 80999170 3C05809A */  lui     $a1, %hi(func_80999428)    ## $a1 = 809A0000
/* 009F4 80999174 24A59428 */  addiu   $a1, $a1, %lo(func_80999428) ## $a1 = 80999428
/* 009F8 80999178 0C2661E0 */  jal     func_80998780
/* 009FC 8099917C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A00 80999180 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00A04 80999184 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00A08 80999188 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00A0C 8099918C 03E00008 */  jr      $ra
/* 00A10 80999190 00000000 */  nop
