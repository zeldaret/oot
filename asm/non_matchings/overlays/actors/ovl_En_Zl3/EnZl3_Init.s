.rdata
glabel D_80B5A994
    .asciz "ゼルダ姫のEn_Zl3_Actor_ct通すよ!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80B5A9D0
    .asciz "ゼルダ姫のEn_Zl3_Actor_ctは通った!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

.text
glabel EnZl3_Init
/* 06AEC 80B59E9C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 06AF0 80B59EA0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 06AF4 80B59EA4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 06AF8 80B59EA8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 06AFC 80B59EAC 3C0480B6 */  lui     $a0, %hi(D_80B5A994)       ## $a0 = 80B60000
/* 06B00 80B59EB0 AFA5004C */  sw      $a1, 0x004C($sp)
/* 06B04 80B59EB4 0C00084C */  jal     osSyncPrintf

/* 06B08 80B59EB8 2484A994 */  addiu   $a0, $a0, %lo(D_80B5A994)  ## $a0 = 80B5A994
/* 06B0C 80B59EBC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 06B10 80B59EC0 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 06B14 80B59EC4 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 06B18 80B59EC8 AFA40034 */  sw      $a0, 0x0034($sp)
/* 06B1C 80B59ECC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 06B20 80B59ED0 0C00AC78 */  jal     ActorShape_Init

/* 06B24 80B59ED4 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 06B28 80B59ED8 8FAE0034 */  lw      $t6, 0x0034($sp)
/* 06B2C 80B59EDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06B30 80B59EE0 A1C00014 */  sb      $zero, 0x0014($t6)         ## 00000014
/* 06B34 80B59EE4 0C2D4CEC */  jal     func_80B533B0
/* 06B38 80B59EE8 8FA5004C */  lw      $a1, 0x004C($sp)
/* 06B3C 80B59EEC 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 06B40 80B59EF0 260F0190 */  addiu   $t7, $s0, 0x0190           ## $t7 = 00000190
/* 06B44 80B59EF4 261801EA */  addiu   $t8, $s0, 0x01EA           ## $t8 = 000001EA
/* 06B48 80B59EF8 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 06B4C 80B59EFC AFB90018 */  sw      $t9, 0x0018($sp)
/* 06B50 80B59F00 AFB80014 */  sw      $t8, 0x0014($sp)
/* 06B54 80B59F04 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 06B58 80B59F08 24C60D70 */  addiu   $a2, $a2, 0x0D70           ## $a2 = 06010D70
/* 06B5C 80B59F0C 8FA4004C */  lw      $a0, 0x004C($sp)
/* 06B60 80B59F10 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 06B64 80B59F14 0C0291BE */  jal     SkelAnime_InitSV
/* 06B68 80B59F18 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 06B6C 80B59F1C 0C2D5375 */  jal     func_80B54DD4
/* 06B70 80B59F20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06B74 80B59F24 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 06B78 80B59F28 10410005 */  beq     $v0, $at, .L80B59F40
/* 06B7C 80B59F2C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 06B80 80B59F30 10410006 */  beq     $v0, $at, .L80B59F4C
/* 06B84 80B59F34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06B88 80B59F38 10000006 */  beq     $zero, $zero, .L80B59F54
/* 06B8C 80B59F3C 00000000 */  nop
.L80B59F40:
/* 06B90 80B59F40 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 06B94 80B59F44 10000003 */  beq     $zero, $zero, .L80B59F54
/* 06B98 80B59F48 A420FA32 */  sh      $zero, -0x05CE($at)        ## 8015FA32
.L80B59F4C:
/* 06B9C 80B59F4C 0C2D66A0 */  jal     func_80B59A80
/* 06BA0 80B59F50 8FA5004C */  lw      $a1, 0x004C($sp)
.L80B59F54:
/* 06BA4 80B59F54 3C0480B6 */  lui     $a0, %hi(D_80B5A9D0)       ## $a0 = 80B60000
/* 06BA8 80B59F58 0C00084C */  jal     osSyncPrintf

/* 06BAC 80B59F5C 2484A9D0 */  addiu   $a0, $a0, %lo(D_80B5A9D0)  ## $a0 = 80B5A9D0
/* 06BB0 80B59F60 8FBF002C */  lw      $ra, 0x002C($sp)
/* 06BB4 80B59F64 8FB00028 */  lw      $s0, 0x0028($sp)
/* 06BB8 80B59F68 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 06BBC 80B59F6C 03E00008 */  jr      $ra
/* 06BC0 80B59F70 00000000 */  nop
