.late_rodata
glabel D_80BA6FDC
    .float 0.05

.text
glabel func_80BA63AC
/* 0033C 80BA63AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00340 80BA63B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00344 80BA63B4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00348 80BA63B8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0034C 80BA63BC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00350 80BA63C0 C4800174 */  lwc1    $f0, 0x0174($a0)           ## 00000174
/* 00354 80BA63C4 3C0580BA */  lui     $a1, %hi(func_80BA6370)    ## $a1 = 80BA0000
/* 00358 80BA63C8 3C0180BA */  lui     $at, %hi(D_80BA6FDC)       ## $at = 80BA0000
/* 0035C 80BA63CC 4604003C */  c.lt.s  $f0, $f4                   
/* 00360 80BA63D0 24A56370 */  addiu   $a1, $a1, %lo(func_80BA6370) ## $a1 = 80BA6370
/* 00364 80BA63D4 45000005 */  bc1f    .L80BA63EC                 
/* 00368 80BA63D8 00000000 */  nop
/* 0036C 80BA63DC C4266FDC */  lwc1    $f6, %lo(D_80BA6FDC)($at)  
/* 00370 80BA63E0 46060200 */  add.s   $f8, $f0, $f6              
/* 00374 80BA63E4 10000006 */  beq     $zero, $zero, .L80BA6400   
/* 00378 80BA63E8 E4880174 */  swc1    $f8, 0x0174($a0)           ## 00000174
.L80BA63EC:
/* 0037C 80BA63EC 0C2E981C */  jal     func_80BA6070              
/* 00380 80BA63F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00384 80BA63F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00388 80BA63F8 240E003C */  addiu   $t6, $zero, 0x003C         ## $t6 = 0000003C
/* 0038C 80BA63FC A48E0178 */  sh      $t6, 0x0178($a0)           ## 00000178
.L80BA6400:
/* 00390 80BA6400 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00394 80BA6404 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00398 80BA6408 03E00008 */  jr      $ra                        
/* 0039C 80BA640C 00000000 */  nop
