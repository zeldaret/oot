glabel func_80AB1778
/* 009E8 80AB1778 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009EC 80AB177C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 009F0 80AB1780 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 009F4 80AB1784 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 009F8 80AB1788 51C0001D */  beql    $t6, $zero, .L80AB1800     
/* 009FC 80AB178C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A00 80AB1790 8CA21D90 */  lw      $v0, 0x1D90($a1)           ## 00001D90
/* 00A04 80AB1794 5040001A */  beql    $v0, $zero, .L80AB1800     
/* 00A08 80AB1798 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A0C 80AB179C 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 00A10 80AB17A0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00A14 80AB17A4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00A18 80AB17A8 55E10015 */  bnel    $t7, $at, .L80AB1800       
/* 00A1C 80AB17AC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A20 80AB17B0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00A24 80AB17B4 2484274C */  addiu   $a0, $a0, 0x274C           ## $a0 = 0600274C
/* 00A28 80AB17B8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00A2C 80AB17BC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A30 80AB17C0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00A34 80AB17C4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00A38 80AB17C8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A3C 80AB17CC 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00A40 80AB17D0 44070000 */  mfc1    $a3, $f0                   
/* 00A44 80AB17D4 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00A48 80AB17D8 24A5274C */  addiu   $a1, $a1, 0x274C           ## $a1 = 0600274C
/* 00A4C 80AB17DC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00A50 80AB17E0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00A54 80AB17E4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A58 80AB17E8 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00A5C 80AB17EC E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00A60 80AB17F0 8FA80028 */  lw      $t0, 0x0028($sp)           
/* 00A64 80AB17F4 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 00A68 80AB17F8 AD190278 */  sw      $t9, 0x0278($t0)           ## 00000278
/* 00A6C 80AB17FC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AB1800:
/* 00A70 80AB1800 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A74 80AB1804 03E00008 */  jr      $ra                        
/* 00A78 80AB1808 00000000 */  nop


