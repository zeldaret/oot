glabel func_80AC0F08
/* 008A8 80AC0F08 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008AC 80AC0F0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008B0 80AC0F10 3C0143F0 */  lui     $at, 0x43F0                ## $at = 43F00000
/* 008B4 80AC0F14 44813000 */  mtc1    $at, $f6                   ## $f6 = 480.00
/* 008B8 80AC0F18 C4800090 */  lwc1    $f0, 0x0090($a0)           ## 00000090
/* 008BC 80AC0F1C C484000C */  lwc1    $f4, 0x000C($a0)           ## 0000000C
/* 008C0 80AC0F20 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 008C4 80AC0F24 4606003C */  c.lt.s  $f0, $f6                   
/* 008C8 80AC0F28 E4840028 */  swc1    $f4, 0x0028($a0)           ## 00000028
/* 008CC 80AC0F2C 4502000A */  bc1fl   .L80AC0F58                 
/* 008D0 80AC0F30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008D4 80AC0F34 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 008D8 80AC0F38 00000000 */  nop
/* 008DC 80AC0F3C 4600403C */  c.lt.s  $f8, $f0                   
/* 008E0 80AC0F40 00000000 */  nop
/* 008E4 80AC0F44 45020004 */  bc1fl   .L80AC0F58                 
/* 008E8 80AC0F48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008EC 80AC0F4C 0C2B02AD */  jal     func_80AC0AB4              
/* 008F0 80AC0F50 00000000 */  nop
/* 008F4 80AC0F54 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC0F58:
/* 008F8 80AC0F58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008FC 80AC0F5C 03E00008 */  jr      $ra                        
/* 00900 80AC0F60 00000000 */  nop
