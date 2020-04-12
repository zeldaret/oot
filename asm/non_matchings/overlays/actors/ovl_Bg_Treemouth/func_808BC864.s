.late_rodata
glabel D_808BDA3C
    .float 0.03

.text
glabel func_808BC864
/* 00364 808BC864 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00368 808BC868 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0036C 808BC86C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00370 808BC870 3C01808C */  lui     $at, %hi(D_808BDA3C)       ## $at = 808C0000
/* 00374 808BC874 C426DA3C */  lwc1    $f6, %lo(D_808BDA3C)($at)  
/* 00378 808BC878 C4840168 */  lwc1    $f4, 0x0168($a0)           ## 00000168
/* 0037C 808BC87C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00380 808BC880 3C05808C */  lui     $a1, %hi(func_808BC65C)    ## $a1 = 808C0000
/* 00384 808BC884 46062201 */  sub.s   $f8, $f4, $f6              
/* 00388 808BC888 E4880168 */  swc1    $f8, 0x0168($a0)           ## 00000168
/* 0038C 808BC88C C4900168 */  lwc1    $f16, 0x0168($a0)          ## 00000168
/* 00390 808BC890 460A803E */  c.le.s  $f16, $f10                 
/* 00394 808BC894 00000000 */  nop
/* 00398 808BC898 45020004 */  bc1fl   .L808BC8AC                 
/* 0039C 808BC89C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003A0 808BC8A0 0C22F140 */  jal     func_808BC500              
/* 003A4 808BC8A4 24A5C65C */  addiu   $a1, $a1, %lo(func_808BC65C) ## $a1 = 808BC65C
/* 003A8 808BC8A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BC8AC:
/* 003AC 808BC8AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003B0 808BC8B0 03E00008 */  jr      $ra                        
/* 003B4 808BC8B4 00000000 */  nop
