glabel func_80AADA70
/* 00300 80AADA70 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00304 80AADA74 9442E66C */  lhu     $v0, -0x1994($v0)          ## 8015E66C
/* 00308 80AADA78 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 0030C 80AADA7C 28413556 */  slti    $at, $v0, 0x3556           
/* 00310 80AADA80 14200005 */  bne     $at, $zero, .L80AADA98     
/* 00314 80AADA84 3401D557 */  ori     $at, $zero, 0xD557         ## $at = 0000D557
/* 00318 80AADA88 0041082A */  slt     $at, $v0, $at              
/* 0031C 80AADA8C 10200002 */  beq     $at, $zero, .L80AADA98     
/* 00320 80AADA90 00000000 */  nop
/* 00324 80AADA94 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80AADA98:
/* 00328 80AADA98 03E00008 */  jr      $ra                        
/* 0032C 80AADA9C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000001


