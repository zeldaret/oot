glabel func_8083CA20
/* 0A810 8083CA20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0A814 8083CA24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0A818 8083CA28 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0A81C 8083CA2C 0C20F244 */  jal     func_8083C910              
/* 0A820 8083CA30 3C064334 */  lui     $a2, 0x4334                ## $a2 = 43340000
/* 0A824 8083CA34 10400003 */  beq     $v0, $zero, .L8083CA44     
/* 0A828 8083CA38 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 0A82C 8083CA3C 240EFFEC */  addiu   $t6, $zero, 0xFFEC         ## $t6 = FFFFFFEC
/* 0A830 8083CA40 A5EE0850 */  sh      $t6, 0x0850($t7)           ## 00000850
.L8083CA44:
/* 0A834 8083CA44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0A838 8083CA48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0A83C 8083CA4C 03E00008 */  jr      $ra                        
/* 0A840 8083CA50 00000000 */  nop
