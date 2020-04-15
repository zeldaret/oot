glabel func_808C2B38
/* 019A8 808C2B38 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 019AC 808C2B3C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 019B0 808C2B40 AFB00028 */  sw      $s0, 0x0028($sp)
/* 019B4 808C2B44 AFBF002C */  sw      $ra, 0x002C($sp)
/* 019B8 808C2B48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 019BC 808C2B4C E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 019C0 808C2B50 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 019C4 808C2B54 0C028800 */  jal     SkelAnime_GetFrameCount

/* 019C8 808C2B58 24848EEC */  addiu   $a0, $a0, 0x8EEC           ## $a0 = 06008EEC
/* 019CC 808C2B5C 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 019D0 808C2B60 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 019D4 808C2B64 44815000 */  mtc1    $at, $f10                  ## $f10 = -5.00
/* 019D8 808C2B68 46803220 */  cvt.s.w $f8, $f6
/* 019DC 808C2B6C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 019E0 808C2B70 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 019E4 808C2B74 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 019E8 808C2B78 24A58EEC */  addiu   $a1, $a1, 0x8EEC           ## $a1 = 06008EEC
/* 019EC 808C2B7C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 019F0 808C2B80 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 019F4 808C2B84 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 019F8 808C2B88 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 019FC 808C2B8C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01A00 808C2B90 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 01A04 808C2B94 3C0F808C */  lui     $t7, %hi(func_808C3224)    ## $t7 = 808C0000
/* 01A08 808C2B98 25EF3224 */  addiu   $t7, $t7, %lo(func_808C3224) ## $t7 = 808C3224
/* 01A0C 808C2B9C 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 01A10 808C2BA0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01A14 808C2BA4 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 01A18 808C2BA8 A61801DA */  sh      $t8, 0x01DA($s0)           ## 000001DA
/* 01A1C 808C2BAC A60001AC */  sh      $zero, 0x01AC($s0)         ## 000001AC
/* 01A20 808C2BB0 A21901E2 */  sb      $t9, 0x01E2($s0)           ## 000001E2
/* 01A24 808C2BB4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01A28 808C2BB8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01A2C 808C2BBC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01A30 808C2BC0 03E00008 */  jr      $ra
/* 01A34 808C2BC4 00000000 */  nop
