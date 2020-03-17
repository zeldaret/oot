glabel func_80B10CD4
/* 00464 80B10CD4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00468 80B10CD8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0046C 80B10CDC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00470 80B10CE0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00474 80B10CE4 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00478 80B10CE8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0047C 80B10CEC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00480 80B10CF0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00484 80B10CF4 920E021C */  lbu     $t6, 0x021C($s0)           ## 0000021C
/* 00488 80B10CF8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0048C 80B10CFC 00310821 */  addu    $at, $at, $s1              
/* 00490 80B10D00 11C00002 */  beq     $t6, $zero, .L80B10D0C     
/* 00494 80B10D04 240FFFFE */  addiu   $t7, $zero, 0xFFFE         ## $t7 = FFFFFFFE
/* 00498 80B10D08 A02F1E5C */  sb      $t7, 0x1E5C($at)           ## 00011E5C
.L80B10D0C:
/* 0049C 80B10D0C 0C042F6F */  jal     func_8010BDBC              
/* 004A0 80B10D10 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 004A4 80B10D14 86180212 */  lh      $t8, 0x0212($s0)           ## 00000212
/* 004A8 80B10D18 5702001A */  bnel    $t8, $v0, .L80B10D84       
/* 004AC 80B10D1C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 004B0 80B10D20 0C041AF2 */  jal     func_80106BC8              
/* 004B4 80B10D24 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 004B8 80B10D28 50400016 */  beql    $v0, $zero, .L80B10D84     
/* 004BC 80B10D2C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 004C0 80B10D30 9219021C */  lbu     $t9, 0x021C($s0)           ## 0000021C
/* 004C4 80B10D34 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 004C8 80B10D38 13200006 */  beq     $t9, $zero, .L80B10D54     
/* 004CC 80B10D3C 00000000 */  nop
/* 004D0 80B10D40 0C0200FC */  jal     func_800803F0              
/* 004D4 80B10D44 86050228 */  lh      $a1, 0x0228($s0)           ## 00000228
/* 004D8 80B10D48 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 004DC 80B10D4C A6080228 */  sh      $t0, 0x0228($s0)           ## 00000228
/* 004E0 80B10D50 A200021C */  sb      $zero, 0x021C($s0)         ## 0000021C
.L80B10D54:
/* 004E4 80B10D54 0C041B33 */  jal     func_80106CCC              
/* 004E8 80B10D58 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 004EC 80B10D5C 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 004F0 80B10D60 3C0B80B1 */  lui     $t3, %hi(func_80B10D94)    ## $t3 = 80B10000
/* 004F4 80B10D64 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 004F8 80B10D68 8C490130 */  lw      $t1, 0x0130($v0)           ## 00000130
/* 004FC 80B10D6C 256B0D94 */  addiu   $t3, $t3, %lo(func_80B10D94) ## $t3 = 80B10D94
/* 00500 80B10D70 51200004 */  beql    $t1, $zero, .L80B10D84     
/* 00504 80B10D74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00508 80B10D78 A44A0154 */  sh      $t2, 0x0154($v0)           ## 00000154
/* 0050C 80B10D7C AE0B01FC */  sw      $t3, 0x01FC($s0)           ## 000001FC
/* 00510 80B10D80 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B10D84:
/* 00514 80B10D84 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00518 80B10D88 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0051C 80B10D8C 03E00008 */  jr      $ra                        
/* 00520 80B10D90 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


