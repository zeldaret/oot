glabel func_8093C684
/* 039B4 8093C684 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 039B8 8093C688 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 039BC 8093C68C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 039C0 8093C690 3C0E8094 */  lui     $t6, %hi(func_8093C700)    ## $t6 = 80940000
/* 039C4 8093C694 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 039C8 8093C698 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 039CC 8093C69C 25CEC700 */  addiu   $t6, $t6, %lo(func_8093C700) ## $t6 = 8093C700
/* 039D0 8093C6A0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 039D4 8093C6A4 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 039D8 8093C6A8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 039DC 8093C6AC 24A57CA8 */  addiu   $a1, $a1, 0x7CA8           ## $a1 = 06007CA8
/* 039E0 8093C6B0 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 039E4 8093C6B4 0C029490 */  jal     func_800A5240              
/* 039E8 8093C6B8 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 039EC 8093C6BC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 039F0 8093C6C0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 039F4 8093C6C4 24847CA8 */  addiu   $a0, $a0, 0x7CA8           ## $a0 = 06007CA8
/* 039F8 8093C6C8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 039FC 8093C6CC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 03A00 8093C6D0 468021A0 */  cvt.s.w $f6, $f4                   
/* 03A04 8093C6D4 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 03A08 8093C6D8 E60601A4 */  swc1    $f6, 0x01A4($s0)           ## 000001A4
/* 03A0C 8093C6DC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 03A10 8093C6E0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 03A14 8093C6E4 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 03A18 8093C6E8 A60F0178 */  sh      $t7, 0x0178($s0)           ## 00000178
/* 03A1C 8093C6EC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03A20 8093C6F0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03A24 8093C6F4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03A28 8093C6F8 03E00008 */  jr      $ra                        
/* 03A2C 8093C6FC 00000000 */  nop


