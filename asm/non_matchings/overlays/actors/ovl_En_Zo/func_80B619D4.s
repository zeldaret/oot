glabel func_80B619D4
/* 017B4 80B619D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 017B8 80B619D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 017BC 80B619DC 0C2D8553 */  jal     func_80B6154C              
/* 017C0 80B619E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 017C4 80B619E4 10400007 */  beq     $v0, $zero, .L80B61A04     
/* 017C8 80B619E8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 017CC 80B619EC 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 017D0 80B619F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 017D4 80B619F4 3C0E80B6 */  lui     $t6, %hi(func_80B61A14)    ## $t6 = 80B60000
/* 017D8 80B619F8 25CE1A14 */  addiu   $t6, $t6, %lo(func_80B61A14) ## $t6 = 80B61A14
/* 017DC 80B619FC AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
/* 017E0 80B61A00 E4840060 */  swc1    $f4, 0x0060($a0)           ## 00000060
.L80B61A04:
/* 017E4 80B61A04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 017E8 80B61A08 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 017EC 80B61A0C 03E00008 */  jr      $ra                        
/* 017F0 80B61A10 00000000 */  nop


