glabel func_80A20CAC
/* 00EEC 80A20CAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00EF0 80A20CB0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00EF4 80A20CB4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00EF8 80A20CB8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00EFC 80A20CBC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00F00 80A20CC0 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00F04 80A20CC4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00F08 80A20CC8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00F0C 80A20CCC 2418003C */  addiu   $t8, $zero, 0x003C         ## $t8 = 0000003C
/* 00F10 80A20CD0 01C17824 */  and     $t7, $t6, $at              
/* 00F14 80A20CD4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F18 80A20CD8 A0800260 */  sb      $zero, 0x0260($a0)         ## 00000260
/* 00F1C 80A20CDC A0820246 */  sb      $v0, 0x0246($a0)           ## 00000246
/* 00F20 80A20CE0 A0800248 */  sb      $zero, 0x0248($a0)         ## 00000248
/* 00F24 80A20CE4 A0820262 */  sb      $v0, 0x0262($a0)           ## 00000262
/* 00F28 80A20CE8 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00F2C 80A20CEC A0800261 */  sb      $zero, 0x0261($a0)         ## 00000261
/* 00F30 80A20CF0 A4980244 */  sh      $t8, 0x0244($a0)           ## 00000244
/* 00F34 80A20CF4 E4800254 */  swc1    $f0, 0x0254($a0)           ## 00000254
/* 00F38 80A20CF8 E480006C */  swc1    $f0, 0x006C($a0)           ## 0000006C
/* 00F3C 80A20CFC E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
/* 00F40 80A20D00 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 00F44 80A20D04 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00F48 80A20D08 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00F4C 80A20D0C 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 00F50 80A20D10 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00F54 80A20D14 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00F58 80A20D18 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00F5C 80A20D1C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F60 80A20D20 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00F64 80A20D24 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00F68 80A20D28 24070060 */  addiu   $a3, $zero, 0x0060         ## $a3 = 00000060
/* 00F6C 80A20D2C 3C0880A2 */  lui     $t0, %hi(func_80A20D4C)    ## $t0 = 80A20000
/* 00F70 80A20D30 25080D4C */  addiu   $t0, $t0, %lo(func_80A20D4C) ## $t0 = 80A20D4C
/* 00F74 80A20D34 AE08014C */  sw      $t0, 0x014C($s0)           ## 0000014C
/* 00F78 80A20D38 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F7C 80A20D3C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F80 80A20D40 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F84 80A20D44 03E00008 */  jr      $ra                        
/* 00F88 80A20D48 00000000 */  nop


