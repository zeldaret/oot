glabel func_80AD177C
/* 022DC 80AD177C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 022E0 80AD1780 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 022E4 80AD1784 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 022E8 80AD1788 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 022EC 80AD178C A48002F0 */  sh      $zero, 0x02F0($a0)         ## 000002F0
/* 022F0 80AD1790 AC8E02B4 */  sw      $t6, 0x02B4($a0)           ## 000002B4
/* 022F4 80AD1794 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 022F8 80AD1798 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 022FC 80AD179C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02300 80AD17A0 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 02304 80AD17A4 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 02308 80AD17A8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 0230C 80AD17AC 0C00D09B */  jal     Actor_SetColorFilter              
/* 02310 80AD17B0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02314 80AD17B4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02318 80AD17B8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0231C 80AD17BC 3C0580AD */  lui     $a1, %hi(func_80AD17E8)    ## $a1 = 80AD0000
/* 02320 80AD17C0 8498008A */  lh      $t8, 0x008A($a0)           ## 0000008A
/* 02324 80AD17C4 24A517E8 */  addiu   $a1, $a1, %lo(func_80AD17E8) ## $a1 = 80AD17E8
/* 02328 80AD17C8 AC8002B0 */  sw      $zero, 0x02B0($a0)         ## 000002B0
/* 0232C 80AD17CC E48602EC */  swc1    $f6, 0x02EC($a0)           ## 000002EC
/* 02330 80AD17D0 0C2B3D28 */  jal     func_80ACF4A0              
/* 02334 80AD17D4 A4980032 */  sh      $t8, 0x0032($a0)           ## 00000032
/* 02338 80AD17D8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0233C 80AD17DC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02340 80AD17E0 03E00008 */  jr      $ra                        
/* 02344 80AD17E4 00000000 */  nop
