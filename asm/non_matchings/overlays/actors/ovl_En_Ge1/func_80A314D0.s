glabel func_80A314D0
/* 00B60 80A314D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B64 80A314D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B68 80A314D8 948E02AC */  lhu     $t6, 0x02AC($a0)           ## 000002AC
/* 00B6C 80A314DC 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00B70 80A314E0 A48F02AC */  sh      $t7, 0x02AC($a0)           ## 000002AC
/* 00B74 80A314E4 0C00BCCD */  jal     func_8002F334              
/* 00B78 80A314E8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B7C 80A314EC 10400005 */  beq     $v0, $zero, .L80A31504     
/* 00B80 80A314F0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B84 80A314F4 3C1880A3 */  lui     $t8, %hi(func_80A31514)    ## $t8 = 80A30000
/* 00B88 80A314F8 27181514 */  addiu   $t8, $t8, %lo(func_80A31514) ## $t8 = 80A31514
/* 00B8C 80A314FC 0C28C352 */  jal     func_80A30D48              
/* 00B90 80A31500 AC9802B4 */  sw      $t8, 0x02B4($a0)           ## 000002B4
.L80A31504:
/* 00B94 80A31504 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B98 80A31508 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B9C 80A3150C 03E00008 */  jr      $ra                        
/* 00BA0 80A31510 00000000 */  nop


