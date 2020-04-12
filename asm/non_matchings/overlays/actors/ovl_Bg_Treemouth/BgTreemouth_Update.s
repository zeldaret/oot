.late_rodata
glabel D_808BDA48
    .float 4029.0
glabel D_808BDA4C
    .float -399.0
glabel D_808BDA50
    .float -1255.0

.text
glabel BgTreemouth_Update
/* 00698 808BCB98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0069C 808BCB9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006A0 808BCBA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006A4 808BCBA4 8C99016C */  lw      $t9, 0x016C($a0)           ## 0000016C
/* 006A8 808BCBA8 0320F809 */  jalr    $ra, $t9                   
/* 006AC 808BCBAC 00000000 */  nop
/* 006B0 808BCBB0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 006B4 808BCBB4 3C01C320 */  lui     $at, 0xC320                ## $at = C3200000
/* 006B8 808BCBB8 44812000 */  mtc1    $at, $f4                   ## $f4 = -160.00
/* 006BC 808BCBBC C4800168 */  lwc1    $f0, 0x0168($a0)           ## 00000168
/* 006C0 808BCBC0 3C01808C */  lui     $at, %hi(D_808BDA48)       ## $at = 808C0000
/* 006C4 808BCBC4 C428DA48 */  lwc1    $f8, %lo(D_808BDA48)($at)  
/* 006C8 808BCBC8 46040182 */  mul.s   $f6, $f0, $f4              
/* 006CC 808BCBCC 3C01808C */  lui     $at, %hi(D_808BDA4C)       ## $at = 808C0000
/* 006D0 808BCBD0 46083280 */  add.s   $f10, $f6, $f8             
/* 006D4 808BCBD4 E48A0024 */  swc1    $f10, 0x0024($a0)          ## 00000024
/* 006D8 808BCBD8 C430DA4C */  lwc1    $f16, %lo(D_808BDA4C)($at) 
/* 006DC 808BCBDC 3C014308 */  lui     $at, 0x4308                ## $at = 43080000
/* 006E0 808BCBE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 136.00
/* 006E4 808BCBE4 46100482 */  mul.s   $f18, $f0, $f16            
/* 006E8 808BCBE8 3C0142B8 */  lui     $at, 0x42B8                ## $at = 42B80000
/* 006EC 808BCBEC 44814000 */  mtc1    $at, $f8                   ## $f8 = 92.00
/* 006F0 808BCBF0 3C01808C */  lui     $at, %hi(D_808BDA50)       ## $at = 808C0000
/* 006F4 808BCBF4 46080282 */  mul.s   $f10, $f0, $f8             
/* 006F8 808BCBF8 46049180 */  add.s   $f6, $f18, $f4             
/* 006FC 808BCBFC E4860028 */  swc1    $f6, 0x0028($a0)           ## 00000028
/* 00700 808BCC00 C430DA50 */  lwc1    $f16, %lo(D_808BDA50)($at) 
/* 00704 808BCC04 46105480 */  add.s   $f18, $f10, $f16           
/* 00708 808BCC08 E492002C */  swc1    $f18, 0x002C($a0)          ## 0000002C
/* 0070C 808BCC0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00710 808BCC10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00714 808BCC14 03E00008 */  jr      $ra                        
/* 00718 808BCC18 00000000 */  nop
