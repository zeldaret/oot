glabel func_8092F790
/* 031C0 8092F790 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 031C4 8092F794 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 031C8 8092F798 0C24D5D9 */  jal     func_80935764              
/* 031CC 8092F79C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 031D0 8092F7A0 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 031D4 8092F7A4 240E0050 */  addiu   $t6, $zero, 0x0050         ## $t6 = 00000050
/* 031D8 8092F7A8 3C018093 */  lui     $at, %hi(D_809379D4)       ## $at = 80930000
/* 031DC 8092F7AC A5EE0198 */  sh      $t6, 0x0198($t7)           ## 00000198
/* 031E0 8092F7B0 C42C79D4 */  lwc1    $f12, %lo(D_809379D4)($at) 
/* 031E4 8092F7B4 0C24BB1D */  jal     func_8092EC74              
/* 031E8 8092F7B8 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 031EC 8092F7BC 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 031F0 8092F7C0 3C188093 */  lui     $t8, %hi(func_8092F7DC)    ## $t8 = 80930000
/* 031F4 8092F7C4 2718F7DC */  addiu   $t8, $t8, %lo(func_8092F7DC) ## $t8 = 8092F7DC
/* 031F8 8092F7C8 AF380190 */  sw      $t8, 0x0190($t9)           ## 00000190
/* 031FC 8092F7CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03200 8092F7D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03204 8092F7D4 03E00008 */  jr      $ra                        
/* 03208 8092F7D8 00000000 */  nop


