glabel func_808355DC
/* 033CC 808355DC 8C8E067C */  lw      $t6, 0x067C($a0)           ## 0000067C
/* 033D0 808355E0 909801E9 */  lbu     $t8, 0x01E9($a0)           ## 000001E9
/* 033D4 808355E4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 033D8 808355E8 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00020000
/* 033DC 808355EC 33190080 */  andi    $t9, $t8, 0x0080           ## $t9 = 00000000
/* 033E0 808355F0 17200011 */  bne     $t9, $zero, .L80835638     
/* 033E4 808355F4 AC8F067C */  sw      $t7, 0x067C($a0)           ## 0000067C
/* 033E8 808355F8 94880088 */  lhu     $t0, 0x0088($a0)           ## 00000088
/* 033EC 808355FC 3C0A8085 */  lui     $t2, %hi(D_80853608)       ## $t2 = 80850000
/* 033F0 80835600 31090200 */  andi    $t1, $t0, 0x0200           ## $t1 = 00000000
/* 033F4 80835604 5120000D */  beql    $t1, $zero, .L8083563C     
/* 033F8 80835608 848B00B6 */  lh      $t3, 0x00B6($a0)           ## 000000B6
/* 033FC 8083560C 8D4A3608 */  lw      $t2, %lo(D_80853608)($t2)  
/* 03400 80835610 29412000 */  slti    $at, $t2, 0x2000           
/* 03404 80835614 50200009 */  beql    $at, $zero, .L8083563C     
/* 03408 80835618 848B00B6 */  lh      $t3, 0x00B6($a0)           ## 000000B6
/* 0340C 8083561C 8482007E */  lh      $v0, 0x007E($a0)           ## 0000007E
/* 03410 80835620 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 03414 80835624 00411021 */  addu    $v0, $v0, $at              
/* 03418 80835628 00021400 */  sll     $v0, $v0, 16               
/* 0341C 8083562C 00021403 */  sra     $v0, $v0, 16               
/* 03420 80835630 A48200B6 */  sh      $v0, 0x00B6($a0)           ## 000000B6
/* 03424 80835634 A482083C */  sh      $v0, 0x083C($a0)           ## 0000083C
.L80835638:
/* 03428 80835638 848B00B6 */  lh      $t3, 0x00B6($a0)           ## 000000B6
.L8083563C:
/* 0342C 8083563C 03E00008 */  jr      $ra                        
/* 03430 80835640 A48B083E */  sh      $t3, 0x083E($a0)           ## 0000083E
