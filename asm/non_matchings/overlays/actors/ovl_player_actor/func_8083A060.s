glabel func_8083A060
/* 07E50 8083A060 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 07E54 8083A064 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 07E58 8083A068 0C20E7FF */  jal     func_80839FFC              
/* 07E5C 8083A06C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 07E60 8083A070 0C023A71 */  jal     func_8008E9C4              
/* 07E64 8083A074 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 07E68 8083A078 10400003 */  beq     $v0, $zero, .L8083A088     
/* 07E6C 8083A07C 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 07E70 8083A080 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 07E74 8083A084 A5EE0850 */  sh      $t6, 0x0850($t7)           ## 00000850
.L8083A088:
/* 07E78 8083A088 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 07E7C 8083A08C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 07E80 8083A090 03E00008 */  jr      $ra                        
/* 07E84 8083A094 00000000 */  nop
