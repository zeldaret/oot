glabel func_80AF79BC
/* 001CC 80AF79BC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 001D0 80AF79C0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 001D4 80AF79C4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 001D8 80AF79C8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 001DC 80AF79CC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 001E0 80AF79D0 2484004C */  addiu   $a0, $a0, 0x004C           ## $a0 = 0600004C
/* 001E4 80AF79D4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 001E8 80AF79D8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 001EC 80AF79DC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 001F0 80AF79E0 468021A0 */  cvt.s.w $f6, $f4
/* 001F4 80AF79E4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 001F8 80AF79E8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 001FC 80AF79EC AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00200 80AF79F0 24A5004C */  addiu   $a1, $a1, 0x004C           ## $a1 = 0600004C
/* 00204 80AF79F4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00208 80AF79F8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0020C 80AF79FC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00210 80AF7A00 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00214 80AF7A04 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00218 80AF7A08 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 0021C 80AF7A0C 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00220 80AF7A10 3C1880AF */  lui     $t8, %hi(func_80AF7D48)    ## $t8 = 80AF0000
/* 00224 80AF7A14 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00228 80AF7A18 27187D48 */  addiu   $t8, $t8, %lo(func_80AF7D48) ## $t8 = 80AF7D48
/* 0022C 80AF7A1C A44F01FA */  sh      $t7, 0x01FA($v0)           ## 000001FA
/* 00230 80AF7A20 AC580190 */  sw      $t8, 0x0190($v0)           ## 00000190
/* 00234 80AF7A24 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00238 80AF7A28 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0023C 80AF7A2C 03E00008 */  jr      $ra
/* 00240 80AF7A30 00000000 */  nop
