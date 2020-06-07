glabel EnViewer_Update
/* 010A0 80B2B2A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 010A4 80B2B2A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 010A8 80B2B2A8 808E01DC */  lb      $t6, 0x01DC($a0)           ## 000001DC
/* 010AC 80B2B2AC 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 010B0 80B2B2B0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 010B4 80B2B2B4 000E7900 */  sll     $t7, $t6,  4               
/* 010B8 80B2B2B8 01EE7821 */  addu    $t7, $t7, $t6              
/* 010BC 80B2B2BC 000F7880 */  sll     $t7, $t7,  2               
/* 010C0 80B2B2C0 00AFC021 */  addu    $t8, $a1, $t7              
/* 010C4 80B2B2C4 0338C821 */  addu    $t9, $t9, $t8              
/* 010C8 80B2B2C8 8F3917B4 */  lw      $t9, 0x17B4($t9)           ## 000117B4
/* 010CC 80B2B2CC 03214021 */  addu    $t0, $t9, $at              
/* 010D0 80B2B2D0 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 010D4 80B2B2D4 AC286FC0 */  sw      $t0, %lo(gSegments+0x18)($at)
/* 010D8 80B2B2D8 8C9901E0 */  lw      $t9, 0x01E0($a0)           ## 000001E0
/* 010DC 80B2B2DC 0320F809 */  jalr    $ra, $t9                   
/* 010E0 80B2B2E0 00000000 */  nop
/* 010E4 80B2B2E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 010E8 80B2B2E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010EC 80B2B2EC 03E00008 */  jr      $ra                        
/* 010F0 80B2B2F0 00000000 */  nop
