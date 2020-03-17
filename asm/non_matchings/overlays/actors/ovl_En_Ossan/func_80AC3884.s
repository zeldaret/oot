glabel func_80AC3884
/* 00BE4 80AC3884 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BE8 80AC3888 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BEC 80AC388C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00BF0 80AC3890 94CE000C */  lhu     $t6, 0x000C($a2)           ## 0000000C
/* 00BF4 80AC3894 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 00BF8 80AC3898 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00BFC 80AC389C 01C17827 */  nor     $t7, $t6, $at              
/* 00C00 80AC38A0 15E00005 */  bne     $t7, $zero, .L80AC38B8     
/* 00C04 80AC38A4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00C08 80AC38A8 0C2B0DEA */  jal     func_80AC37A8              
/* 00C0C 80AC38AC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00C10 80AC38B0 10000001 */  beq     $zero, $zero, .L80AC38B8   
/* 00C14 80AC38B4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AC38B8:
/* 00C18 80AC38B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C1C 80AC38BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C20 80AC38C0 03E00008 */  jr      $ra                        
/* 00C24 80AC38C4 00000000 */  nop


