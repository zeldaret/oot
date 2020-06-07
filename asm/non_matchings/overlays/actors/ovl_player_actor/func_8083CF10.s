glabel func_8083CF10
/* 0AD00 8083CF10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0AD04 8083CF14 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0AD08 8083CF18 C4860838 */  lwc1    $f6, 0x0838($a0)           ## 00000838
/* 0AD0C 8083CF1C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0AD10 8083CF20 00000000 */  nop
/* 0AD14 8083CF24 46062032 */  c.eq.s  $f4, $f6                   
/* 0AD18 8083CF28 00000000 */  nop
/* 0AD1C 8083CF2C 45010005 */  bc1t    .L8083CF44                 
/* 0AD20 8083CF30 00000000 */  nop
/* 0AD24 8083CF34 0C20F216 */  jal     func_8083C858              
/* 0AD28 8083CF38 00000000 */  nop
/* 0AD2C 8083CF3C 10000004 */  beq     $zero, $zero, .L8083CF50   
/* 0AD30 8083CF40 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8083CF44:
/* 0AD34 8083CF44 0C20F383 */  jal     func_8083CE0C              
/* 0AD38 8083CF48 00000000 */  nop
/* 0AD3C 8083CF4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8083CF50:
/* 0AD40 8083CF50 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0AD44 8083CF54 03E00008 */  jr      $ra                        
/* 0AD48 8083CF58 00000000 */  nop
