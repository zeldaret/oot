glabel func_80AE772C
/* 0047C 80AE772C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00480 80AE7730 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00484 80AE7734 10A00014 */  beq     $a1, $zero, .L80AE7788     
/* 00488 80AE7738 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0048C 80AE773C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00490 80AE7740 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00494 80AE7744 24840830 */  addiu   $a0, $a0, 0x0830           ## $a0 = 06000830
/* 00498 80AE7748 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0049C 80AE774C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 004A0 80AE7750 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 004A4 80AE7754 468021A0 */  cvt.s.w $f6, $f4                   
/* 004A8 80AE7758 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 004AC 80AE775C 44070000 */  mfc1    $a3, $f0                   
/* 004B0 80AE7760 24A50830 */  addiu   $a1, $a1, 0x0830           ## $a1 = 06000830
/* 004B4 80AE7764 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 004B8 80AE7768 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 004BC 80AE776C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 004C0 80AE7770 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 004C4 80AE7774 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 004C8 80AE7778 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 004CC 80AE777C 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 004D0 80AE7780 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 004D4 80AE7784 ADEE0194 */  sw      $t6, 0x0194($t7)           ## 00000194
.L80AE7788:
/* 004D8 80AE7788 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 004DC 80AE778C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004E0 80AE7790 03E00008 */  jr      $ra                        
/* 004E4 80AE7794 00000000 */  nop


