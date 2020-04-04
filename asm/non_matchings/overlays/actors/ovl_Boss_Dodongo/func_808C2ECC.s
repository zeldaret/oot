glabel func_808C2ECC
/* 01D3C 808C2ECC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01D40 808C2ED0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01D44 808C2ED4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01D48 808C2ED8 AFA5003C */  sw      $a1, 0x003C($sp)
/* 01D4C 808C2EDC 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 01D50 808C2EE0 A48E01BE */  sh      $t6, 0x01BE($a0)           ## 000001BE
/* 01D54 808C2EE4 3C01808D */  lui     $at, %hi(D_808CA6BC)       ## $at = 808D0000
/* 01D58 808C2EE8 C424A6BC */  lwc1    $f4, %lo(D_808CA6BC)($at)
/* 01D5C 808C2EEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D60 808C2EF0 3C053FA6 */  lui     $a1, 0x3FA6                ## $a1 = 3FA60000
/* 01D64 808C2EF4 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 01D68 808C2EF8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 01D6C 808C2EFC 34A56666 */  ori     $a1, $a1, 0x6666           ## $a1 = 3FA66666
/* 01D70 808C2F00 248401F8 */  addiu   $a0, $a0, 0x01F8           ## $a0 = 000001F8
/* 01D74 808C2F04 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01D78 808C2F08 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 01D7C 808C2F0C E7A40010 */  swc1    $f4, 0x0010($sp)
/* 01D80 808C2F10 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01D84 808C2F14 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01D88 808C2F18 AFA40030 */  sw      $a0, 0x0030($sp)
/* 01D8C 808C2F1C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01D90 808C2F20 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01D94 808C2F24 24844E0C */  addiu   $a0, $a0, 0x4E0C           ## $a0 = 06004E0C
/* 01D98 808C2F28 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 01D9C 808C2F2C 8FA40030 */  lw      $a0, 0x0030($sp)
/* 01DA0 808C2F30 468031A0 */  cvt.s.w $f6, $f6
/* 01DA4 808C2F34 44053000 */  mfc1    $a1, $f6
/* 01DA8 808C2F38 0C0295B2 */  jal     func_800A56C8
/* 01DAC 808C2F3C 00000000 */  nop
/* 01DB0 808C2F40 10400015 */  beq     $v0, $zero, .L808C2F98
/* 01DB4 808C2F44 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01DB8 808C2F48 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01DBC 808C2F4C 248442A8 */  addiu   $a0, $a0, 0x42A8           ## $a0 = 060042A8
/* 01DC0 808C2F50 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 01DC4 808C2F54 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 01DC8 808C2F58 44818000 */  mtc1    $at, $f16                  ## $f16 = -5.00
/* 01DCC 808C2F5C 468042A0 */  cvt.s.w $f10, $f8
/* 01DD0 808C2F60 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01DD4 808C2F64 24A542A8 */  addiu   $a1, $a1, 0x42A8           ## $a1 = 060042A8
/* 01DD8 808C2F68 8FA40030 */  lw      $a0, 0x0030($sp)
/* 01DDC 808C2F6C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01DE0 808C2F70 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01DE4 808C2F74 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 01DE8 808C2F78 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01DEC 808C2F7C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01DF0 808C2F80 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 01DF4 808C2F84 3C0F808C */  lui     $t7, %hi(func_808C2FAC)    ## $t7 = 808C0000
/* 01DF8 808C2F88 25EF2FAC */  addiu   $t7, $t7, %lo(func_808C2FAC) ## $t7 = 808C2FAC
/* 01DFC 808C2F8C 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 01E00 808C2F90 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 01E04 808C2F94 A61801DA */  sh      $t8, 0x01DA($s0)           ## 000001DA
.L808C2F98:
/* 01E08 808C2F98 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01E0C 808C2F9C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01E10 808C2FA0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01E14 808C2FA4 03E00008 */  jr      $ra
/* 01E18 808C2FA8 00000000 */  nop


