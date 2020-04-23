.late_rodata
glabel D_808BDA34
    .float 0.05

glabel D_808BDA38
    .float 0.8

.text
glabel func_808BC80C
/* 0030C 808BC80C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00310 808BC810 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00314 808BC814 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00318 808BC818 3C01808C */  lui     $at, %hi(D_808BDA34)       ## $at = 808C0000
/* 0031C 808BC81C C426DA34 */  lwc1    $f6, %lo(D_808BDA34)($at)  
/* 00320 808BC820 C4840168 */  lwc1    $f4, 0x0168($a0)           ## 00000168
/* 00324 808BC824 3C01808C */  lui     $at, %hi(D_808BDA38)       ## $at = 808C0000
/* 00328 808BC828 3C05808C */  lui     $a1, %hi(func_808BC864)    ## $a1 = 808C0000
/* 0032C 808BC82C 46062200 */  add.s   $f8, $f4, $f6              
/* 00330 808BC830 E4880168 */  swc1    $f8, 0x0168($a0)           ## 00000168
/* 00334 808BC834 C430DA38 */  lwc1    $f16, %lo(D_808BDA38)($at) 
/* 00338 808BC838 C48A0168 */  lwc1    $f10, 0x0168($a0)          ## 00000168
/* 0033C 808BC83C 460A803E */  c.le.s  $f16, $f10                 
/* 00340 808BC840 00000000 */  nop
/* 00344 808BC844 45020004 */  bc1fl   .L808BC858                 
/* 00348 808BC848 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0034C 808BC84C 0C22F140 */  jal     func_808BC500              
/* 00350 808BC850 24A5C864 */  addiu   $a1, $a1, %lo(func_808BC864) ## $a1 = 808BC864
/* 00354 808BC854 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BC858:
/* 00358 808BC858 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0035C 808BC85C 03E00008 */  jr      $ra                        
/* 00360 808BC860 00000000 */  nop
