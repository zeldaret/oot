glabel func_809B0A28
/* 006B8 809B0A28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006BC 809B0A2C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 006C0 809B0A30 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 006C4 809B0A34 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006C8 809B0A38 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006CC 809B0A3C AFA50018 */  sw      $a1, 0x0018($sp)           
/* 006D0 809B0A40 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 006D4 809B0A44 24840198 */  addiu   $a0, $a0, 0x0198           ## $a0 = 00000198
/* 006D8 809B0A48 10400004 */  beq     $v0, $zero, .L809B0A5C     
/* 006DC 809B0A4C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 006E0 809B0A50 94AE02AA */  lhu     $t6, 0x02AA($a1)           ## 000002AA
/* 006E4 809B0A54 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 006E8 809B0A58 A4AF02AA */  sh      $t7, 0x02AA($a1)           ## 000002AA
.L809B0A5C:
/* 006EC 809B0A5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006F0 809B0A60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006F4 809B0A64 03E00008 */  jr      $ra                        
/* 006F8 809B0A68 00000000 */  nop


