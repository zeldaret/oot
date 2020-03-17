glabel func_8083CF5C
/* 0AD4C 8083CF5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0AD50 8083CF60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0AD54 8083CF64 C4860838 */  lwc1    $f6, 0x0838($a0)           ## 00000838
/* 0AD58 8083CF68 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0AD5C 8083CF6C 00000000 */  nop
/* 0AD60 8083CF70 46062032 */  c.eq.s  $f4, $f6                   
/* 0AD64 8083CF74 00000000 */  nop
/* 0AD68 8083CF78 45010005 */  bc1t    .L8083CF90                 
/* 0AD6C 8083CF7C 00000000 */  nop
/* 0AD70 8083CF80 0C20F216 */  jal     func_8083C858              
/* 0AD74 8083CF84 00000000 */  nop
/* 0AD78 8083CF88 10000004 */  beq     $zero, $zero, .L8083CF9C   
/* 0AD7C 8083CF8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8083CF90:
/* 0AD80 8083CF90 0C20E7E4 */  jal     func_80839F90              
/* 0AD84 8083CF94 00000000 */  nop
/* 0AD88 8083CF98 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8083CF9C:
/* 0AD8C 8083CF9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0AD90 8083CFA0 03E00008 */  jr      $ra                        
/* 0AD94 8083CFA4 00000000 */  nop


