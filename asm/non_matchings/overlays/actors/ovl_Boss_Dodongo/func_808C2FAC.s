.late_rodata
glabel D_808CA6C0
    .float 0.001

.text
glabel func_808C2FAC
/* 01E1C 808C2FAC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01E20 808C2FB0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01E24 808C2FB4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01E28 808C2FB8 AFA5003C */  sw      $a1, 0x003C($sp)
/* 01E2C 808C2FBC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01E30 808C2FC0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01E34 808C2FC4 24053051 */  addiu   $a1, $zero, 0x3051         ## $a1 = 00003051
/* 01E38 808C2FC8 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 01E3C 808C2FCC A60E01BE */  sh      $t6, 0x01BE($s0)           ## 000001BE
/* 01E40 808C2FD0 3C01808D */  lui     $at, %hi(D_808CA6C0)       ## $at = 808D0000
/* 01E44 808C2FD4 C424A6C0 */  lwc1    $f4, %lo(D_808CA6C0)($at)
/* 01E48 808C2FD8 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 01E4C 808C2FDC 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 01E50 808C2FE0 260401F8 */  addiu   $a0, $s0, 0x01F8           ## $a0 = 000001F8
/* 01E54 808C2FE4 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01E58 808C2FE8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01E5C 808C2FEC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 01E60 808C2FF0 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 01E64 808C2FF4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01E68 808C2FF8 3C053D4C */  lui     $a1, 0x3D4C                ## $a1 = 3D4C0000
/* 01E6C 808C2FFC 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 01E70 808C3000 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 01E74 808C3004 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3D4CCCCD
/* 01E78 808C3008 26040208 */  addiu   $a0, $s0, 0x0208           ## $a0 = 00000208
/* 01E7C 808C300C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01E80 808C3010 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 01E84 808C3014 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01E88 808C3018 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01E8C 808C301C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01E90 808C3020 AFA40030 */  sw      $a0, 0x0030($sp)
/* 01E94 808C3024 860F01DA */  lh      $t7, 0x01DA($s0)           ## 000001DA
/* 01E98 808C3028 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01E9C 808C302C 55E00015 */  bnel    $t7, $zero, .L808C3084
/* 01EA0 808C3030 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01EA4 808C3034 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01EA8 808C3038 24849D10 */  addiu   $a0, $a0, 0x9D10           ## $a0 = 06009D10
/* 01EAC 808C303C 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 01EB0 808C3040 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 01EB4 808C3044 44818000 */  mtc1    $at, $f16                  ## $f16 = -5.00
/* 01EB8 808C3048 468042A0 */  cvt.s.w $f10, $f8
/* 01EBC 808C304C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01EC0 808C3050 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 01EC4 808C3054 AFB80014 */  sw      $t8, 0x0014($sp)
/* 01EC8 808C3058 24A59D10 */  addiu   $a1, $a1, 0x9D10           ## $a1 = 06009D10
/* 01ECC 808C305C 8FA40030 */  lw      $a0, 0x0030($sp)
/* 01ED0 808C3060 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 01ED4 808C3064 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01ED8 808C3068 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01EDC 808C306C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01EE0 808C3070 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 01EE4 808C3074 3C19808C */  lui     $t9, %hi(func_808C3094)    ## $t9 = 808C0000
/* 01EE8 808C3078 27393094 */  addiu   $t9, $t9, %lo(func_808C3094) ## $t9 = 808C3094
/* 01EEC 808C307C AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 01EF0 808C3080 8FBF002C */  lw      $ra, 0x002C($sp)
.L808C3084:
/* 01EF4 808C3084 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01EF8 808C3088 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01EFC 808C308C 03E00008 */  jr      $ra
/* 01F00 808C3090 00000000 */  nop
