glabel func_809BFD18
/* 00478 809BFD18 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0047C 809BFD1C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00480 809BFD20 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00484 809BFD24 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00488 809BFD28 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0048C 809BFD2C 240E0050 */  addiu   $t6, $zero, 0x0050         ## $t6 = 00000050
/* 00490 809BFD30 A48E0196 */  sh      $t6, 0x0196($a0)           ## 00000196
/* 00494 809BFD34 A08001F8 */  sb      $zero, 0x01F8($a0)         ## 000001F8
/* 00498 809BFD38 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 0049C 809BFD3C E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 004A0 809BFD40 E4860068 */  swc1    $f6, 0x0068($a0)           ## 00000068
/* 004A4 809BFD44 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 004A8 809BFD48 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 004AC 809BFD4C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 004B0 809BFD50 24060096 */  addiu   $a2, $zero, 0x0096         ## $a2 = 00000096
/* 004B4 809BFD54 0C00D09B */  jal     func_8003426C              
/* 004B8 809BFD58 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 004BC 809BFD5C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 004C0 809BFD60 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 004C4 809BFD64 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 004C8 809BFD68 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 004CC 809BFD6C 3C08809C */  lui     $t0, %hi(func_809C0980)    ## $t0 = 809C0000
/* 004D0 809BFD70 25080980 */  addiu   $t0, $t0, %lo(func_809C0980) ## $t0 = 809C0980
/* 004D4 809BFD74 909801E4 */  lbu     $t8, 0x01E4($a0)           ## 000001E4
/* 004D8 809BFD78 AC880190 */  sw      $t0, 0x0190($a0)           ## 00000190
/* 004DC 809BFD7C 3319FFFE */  andi    $t9, $t8, 0xFFFE           ## $t9 = 00000000
/* 004E0 809BFD80 A09901E4 */  sb      $t9, 0x01E4($a0)           ## 000001E4
/* 004E4 809BFD84 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 004E8 809BFD88 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 004EC 809BFD8C 03E00008 */  jr      $ra                        
/* 004F0 809BFD90 00000000 */  nop
