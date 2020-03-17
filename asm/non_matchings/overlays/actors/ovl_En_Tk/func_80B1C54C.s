glabel func_80B1C54C
/* 00C4C 80B1C54C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C50 80B1C550 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C54 80B1C554 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C58 80B1C558 0C01B0D8 */  jal     func_8006C360              
/* 00C5C 80B1C55C 2405000E */  addiu   $a1, $zero, 0x000E         ## $a1 = 0000000E
/* 00C60 80B1C560 10400003 */  beq     $v0, $zero, .L80B1C570     
/* 00C64 80B1C564 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
/* 00C68 80B1C568 10000009 */  beq     $zero, $zero, .L80B1C590   
/* 00C6C 80B1C56C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80B1C570:
/* 00C70 80B1C570 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00C74 80B1C574 95CEF572 */  lhu     $t6, -0x0A8E($t6)          ## 8015F572
/* 00C78 80B1C578 24025018 */  addiu   $v0, $zero, 0x5018         ## $v0 = 00005018
/* 00C7C 80B1C57C 31CF0200 */  andi    $t7, $t6, 0x0200           ## $t7 = 00000000
/* 00C80 80B1C580 11E00003 */  beq     $t7, $zero, .L80B1C590     
/* 00C84 80B1C584 00000000 */  nop
/* 00C88 80B1C588 10000001 */  beq     $zero, $zero, .L80B1C590   
/* 00C8C 80B1C58C 24025019 */  addiu   $v0, $zero, 0x5019         ## $v0 = 00005019
.L80B1C590:
/* 00C90 80B1C590 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C94 80B1C594 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C98 80B1C598 03E00008 */  jr      $ra                        
/* 00C9C 80B1C59C 00000000 */  nop


