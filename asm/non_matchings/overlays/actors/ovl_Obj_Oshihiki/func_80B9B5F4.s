glabel func_80B9B5F4
/* 00474 80B9B5F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00478 80B9B5F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0047C 80B9B5FC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00480 80B9B600 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00484 80B9B604 3C0580BA */  lui     $a1, %hi(D_80B9C9C0)       ## $a1 = 80BA0000
/* 00488 80B9B608 31CF000F */  andi    $t7, $t6, 0x000F           ## $t7 = 00000000
/* 0048C 80B9B60C 000FC080 */  sll     $t8, $t7,  2               
/* 00490 80B9B610 00B82821 */  addu    $a1, $a1, $t8              
/* 00494 80B9B614 0C00B58B */  jal     Actor_SetScale
              
/* 00498 80B9B618 8CA5C9C0 */  lw      $a1, %lo(D_80B9C9C0)($a1)  
/* 0049C 80B9B61C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004A0 80B9B620 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004A4 80B9B624 03E00008 */  jr      $ra                        
/* 004A8 80B9B628 00000000 */  nop
