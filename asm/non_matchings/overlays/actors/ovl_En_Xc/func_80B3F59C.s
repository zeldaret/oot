glabel func_80B3F59C
/* 033BC 80B3F59C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 033C0 80B3F5A0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 033C4 80B3F5A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 033C8 80B3F5A8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 033CC 80B3F5AC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 033D0 80B3F5B0 0C2CF134 */  jal     func_80B3C4D0              
/* 033D4 80B3F5B4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 033D8 80B3F5B8 10400015 */  beq     $v0, $zero, .L80B3F610     
/* 033DC 80B3F5BC 3C0E80B4 */  lui     $t6, %hi(D_80B41DAC)       ## $t6 = 80B40000
/* 033E0 80B3F5C0 94430000 */  lhu     $v1, 0x0000($v0)           ## 00000000
/* 033E4 80B3F5C4 8DCE1DAC */  lw      $t6, %lo(D_80B41DAC)($t6)  
/* 033E8 80B3F5C8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 033EC 80B3F5CC 506E0011 */  beql    $v1, $t6, .L80B3F614       
/* 033F0 80B3F5D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 033F4 80B3F5D4 10610005 */  beq     $v1, $at, .L80B3F5EC       
/* 033F8 80B3F5D8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 033FC 80B3F5DC 10610007 */  beq     $v1, $at, .L80B3F5FC       
/* 03400 80B3F5E0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 03404 80B3F5E4 10000008 */  beq     $zero, $zero, .L80B3F608   
/* 03408 80B3F5E8 00000000 */  nop
.L80B3F5EC:
/* 0340C 80B3F5EC 0C2CFCF6 */  jal     func_80B3F3D8              
/* 03410 80B3F5F0 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 03414 80B3F5F4 10000004 */  beq     $zero, $zero, .L80B3F608   
/* 03418 80B3F5F8 8FA30018 */  lw      $v1, 0x0018($sp)           
.L80B3F5FC:
/* 0341C 80B3F5FC 0C2CFD13 */  jal     func_80B3F44C              
/* 03420 80B3F600 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 03424 80B3F604 8FA30018 */  lw      $v1, 0x0018($sp)           
.L80B3F608:
/* 03428 80B3F608 3C0180B4 */  lui     $at, %hi(D_80B41DAC)       ## $at = 80B40000
/* 0342C 80B3F60C AC231DAC */  sw      $v1, %lo(D_80B41DAC)($at)  
.L80B3F610:
/* 03430 80B3F610 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3F614:
/* 03434 80B3F614 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03438 80B3F618 03E00008 */  jr      $ra                        
/* 0343C 80B3F61C 00000000 */  nop
