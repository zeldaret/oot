glabel func_80982204
/* 04B94 80982204 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04B98 80982208 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04B9C 8098220C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04BA0 80982210 0C260838 */  jal     func_809820E0              
/* 04BA4 80982214 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04BA8 80982218 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04BAC 8098221C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04BB0 80982220 0C25FB59 */  jal     func_8097ED64              
/* 04BB4 80982224 24060009 */  addiu   $a2, $zero, 0x0009         ## $a2 = 00000009
/* 04BB8 80982228 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04BBC 8098222C 0C26082B */  jal     func_809820AC              
/* 04BC0 80982230 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04BC4 80982234 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04BC8 80982238 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04BCC 8098223C 03E00008 */  jr      $ra                        
/* 04BD0 80982240 00000000 */  nop


