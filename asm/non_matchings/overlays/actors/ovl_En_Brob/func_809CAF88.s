glabel func_809CAF88
/* 00478 809CAF88 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0047C 809CAF8C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00480 809CAF90 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00484 809CAF94 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00488 809CAF98 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 0048C 809CAF9C 24841750 */  addiu   $a0, $a0, 0x1750           ## $a0 = 06001750
/* 00490 809CAFA0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00494 809CAFA4 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 00498 809CAFA8 44814000 */  mtc1    $at, $f8                   ## $f8 = -5.00
/* 0049C 809CAFAC 46802120 */  cvt.s.w $f4, $f4                   
/* 004A0 809CAFB0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 004A4 809CAFB4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 004A8 809CAFB8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 004AC 809CAFBC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 004B0 809CAFC0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 004B4 809CAFC4 44072000 */  mfc1    $a3, $f4                   
/* 004B8 809CAFC8 24A51750 */  addiu   $a1, $a1, 0x1750           ## $a1 = 06001750
/* 004BC 809CAFCC 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 004C0 809CAFD0 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 004C4 809CAFD4 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 004C8 809CAFD8 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 004CC 809CAFDC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 004D0 809CAFE0 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 004D4 809CAFE4 3C18809D */  lui     $t8, %hi(func_809CB354)    ## $t8 = 809D0000
/* 004D8 809CAFE8 240F203A */  addiu   $t7, $zero, 0x203A         ## $t7 = 0000203A
/* 004DC 809CAFEC 2718B354 */  addiu   $t8, $t8, %lo(func_809CB354) ## $t8 = 809CB354
/* 004E0 809CAFF0 A44F01AE */  sh      $t7, 0x01AE($v0)           ## 000001AE
/* 004E4 809CAFF4 AC5801A8 */  sw      $t8, 0x01A8($v0)           ## 000001A8
/* 004E8 809CAFF8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 004EC 809CAFFC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004F0 809CB000 03E00008 */  jr      $ra                        
/* 004F4 809CB004 00000000 */  nop


