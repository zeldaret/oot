glabel func_80AED19C
/* 0258C 80AED19C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02590 80AED1A0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 02594 80AED1A4 10A00018 */  beq     $a1, $zero, .L80AED208
/* 02598 80AED1A8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 0259C 80AED1AC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 025A0 80AED1B0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 025A4 80AED1B4 24841488 */  addiu   $a0, $a0, 0x1488           ## $a0 = 06001488
/* 025A8 80AED1B8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 025AC 80AED1BC 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 025B0 80AED1C0 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 025B4 80AED1C4 468021A0 */  cvt.s.w $f6, $f4
/* 025B8 80AED1C8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 025BC 80AED1CC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 025C0 80AED1D0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 025C4 80AED1D4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 025C8 80AED1D8 24A51488 */  addiu   $a1, $a1, 0x1488           ## $a1 = 06001488
/* 025CC 80AED1DC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 025D0 80AED1E0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 025D4 80AED1E4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 025D8 80AED1E8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 025DC 80AED1EC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 025E0 80AED1F0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 025E4 80AED1F4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 025E8 80AED1F8 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 025EC 80AED1FC 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 025F0 80AED200 0C2BB42C */  jal     func_80AED0B0
/* 025F4 80AED204 AC8F0264 */  sw      $t7, 0x0264($a0)           ## 00000264
.L80AED208:
/* 025F8 80AED208 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 025FC 80AED20C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02600 80AED210 03E00008 */  jr      $ra
/* 02604 80AED214 00000000 */  nop
