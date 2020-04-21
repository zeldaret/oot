glabel func_80A68AF0
/* 00490 80A68AF0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00494 80A68AF4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00498 80A68AF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0049C 80A68AFC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 004A0 80A68B00 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 004A4 80A68B04 248401A0 */  addiu   $a0, $a0, 0x01A0           ## $a0 = 000001A0
/* 004A8 80A68B08 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 004AC 80A68B0C E484FEC8 */  swc1    $f4, -0x0138($a0)          ## 00000068
/* 004B0 80A68B10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004B4 80A68B14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004B8 80A68B18 03E00008 */  jr      $ra                        
/* 004BC 80A68B1C 00000000 */  nop
