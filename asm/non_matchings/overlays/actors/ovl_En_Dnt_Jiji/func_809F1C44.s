glabel func_809F1C44
/* 00164 809F1C44 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00168 809F1C48 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0016C 809F1C4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00170 809F1C50 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00174 809F1C54 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00178 809F1C58 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0017C 809F1C5C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00180 809F1C60 24840560 */  addiu   $a0, $a0, 0x0560           ## $a0 = 06000560
/* 00184 809F1C64 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00188 809F1C68 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0018C 809F1C6C 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00190 809F1C70 468021A0 */  cvt.s.w $f6, $f4
/* 00194 809F1C74 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00198 809F1C78 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0019C 809F1C7C 44060000 */  mfc1    $a2, $f0
/* 001A0 809F1C80 44070000 */  mfc1    $a3, $f0
/* 001A4 809F1C84 24A50560 */  addiu   $a1, $a1, 0x0560           ## $a1 = 06000560
/* 001A8 809F1C88 4600320D */  trunc.w.s $f8, $f6
/* 001AC 809F1C8C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 001B0 809F1C90 440F4000 */  mfc1    $t7, $f8
/* 001B4 809F1C94 00000000 */  nop
/* 001B8 809F1C98 A60F0248 */  sh      $t7, 0x0248($s0)           ## 00000248
/* 001BC 809F1C9C 86180248 */  lh      $t8, 0x0248($s0)           ## 00000248
/* 001C0 809F1CA0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 001C4 809F1CA4 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 001C8 809F1CA8 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 001CC 809F1CAC 00000000 */  nop
/* 001D0 809F1CB0 46805420 */  cvt.s.w $f16, $f10
/* 001D4 809F1CB4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 001D8 809F1CB8 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 001DC 809F1CBC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 001E0 809F1CC0 A600023E */  sh      $zero, 0x023E($s0)         ## 0000023E
/* 001E4 809F1CC4 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 001E8 809F1CC8 8619023E */  lh      $t9, 0x023E($s0)           ## 0000023E
/* 001EC 809F1CCC 3C08809F */  lui     $t0, %hi(func_809F1CF4)    ## $t0 = 809F0000
/* 001F0 809F1CD0 25081CF4 */  addiu   $t0, $t0, %lo(func_809F1CF4) ## $t0 = 809F1CF4
/* 001F4 809F1CD4 AE08022C */  sw      $t0, 0x022C($s0)           ## 0000022C
/* 001F8 809F1CD8 E6040164 */  swc1    $f4, 0x0164($s0)           ## 00000164
/* 001FC 809F1CDC A219023C */  sb      $t9, 0x023C($s0)           ## 0000023C
/* 00200 809F1CE0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00204 809F1CE4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00208 809F1CE8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0020C 809F1CEC 03E00008 */  jr      $ra
/* 00210 809F1CF0 00000000 */  nop
