glabel func_80AD3D68
/* 00268 80AD3D68 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0026C 80AD3D6C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00270 80AD3D70 3C0E80AD */  lui     $t6, %hi(EnPoField_Update)    ## $t6 = 80AD0000
/* 00274 80AD3D74 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00278 80AD3D78 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0027C 80AD3D7C 25CE64A4 */  addiu   $t6, $t6, %lo(EnPoField_Update) ## $t6 = 80AD64A4
/* 00280 80AD3D80 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00284 80AD3D84 AC8E0130 */  sw      $t6, 0x0130($a0)           ## 00000130
/* 00288 80AD3D88 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0028C 80AD3D8C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00290 80AD3D90 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 00294 80AD3D94 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00298 80AD3D98 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 0029C 80AD3D9C A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
/* 002A0 80AD3DA0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 002A4 80AD3DA4 26040234 */  addiu   $a0, $s0, 0x0234           ## $a0 = 00000234
/* 002A8 80AD3DA8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 002AC 80AD3DAC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 002B0 80AD3DB0 0C01E796 */  jal     Lights_SetPositionalLightColorAndRadius
              
/* 002B4 80AD3DB4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 002B8 80AD3DB8 241800C8 */  addiu   $t8, $zero, 0x00C8         ## $t8 = 000000C8
/* 002BC 80AD3DBC A6180196 */  sh      $t8, 0x0196($s0)           ## 00000196
/* 002C0 80AD3DC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002C4 80AD3DC4 0C00B58B */  jal     Actor_SetScale
              
/* 002C8 80AD3DC8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 002CC 80AD3DCC 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 002D0 80AD3DD0 92090255 */  lbu     $t1, 0x0255($s0)           ## 00000255
/* 002D4 80AD3DD4 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 002D8 80AD3DD8 3421FFFE */  ori     $at, $at, 0xFFFE           ## $at = FFFEFFFE
/* 002DC 80AD3DDC 240B0039 */  addiu   $t3, $zero, 0x0039         ## $t3 = 00000039
/* 002E0 80AD3DE0 03214024 */  and     $t0, $t9, $at              
/* 002E4 80AD3DE4 312AFFFE */  andi    $t2, $t1, 0xFFFE           ## $t2 = 00000000
/* 002E8 80AD3DE8 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 002EC 80AD3DEC A20A0255 */  sb      $t2, 0x0255($s0)           ## 00000255
/* 002F0 80AD3DF0 A20B0256 */  sb      $t3, 0x0256($s0)           ## 00000256
/* 002F4 80AD3DF4 3C0C80AD */  lui     $t4, %hi(D_80AD70D8)       ## $t4 = 80AD0000
/* 002F8 80AD3DF8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 002FC 80AD3DFC 918C70D8 */  lbu     $t4, %lo(D_80AD70D8)($t4)  
/* 00300 80AD3E00 3C0D80AD */  lui     $t5, %hi(func_80AD4664)    ## $t5 = 80AD0000
/* 00304 80AD3E04 25AD4664 */  addiu   $t5, $t5, %lo(func_80AD4664) ## $t5 = 80AD4664
/* 00308 80AD3E08 AE0D0190 */  sw      $t5, 0x0190($s0)           ## 00000190
/* 0030C 80AD3E0C A20C00AF */  sb      $t4, 0x00AF($s0)           ## 000000AF
/* 00310 80AD3E10 E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 00314 80AD3E14 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 00318 80AD3E18 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0031C 80AD3E1C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00320 80AD3E20 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00324 80AD3E24 03E00008 */  jr      $ra                        
/* 00328 80AD3E28 00000000 */  nop


