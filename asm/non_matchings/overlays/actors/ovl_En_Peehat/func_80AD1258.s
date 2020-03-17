glabel func_80AD1258
/* 01DB8 80AD1258 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01DBC 80AD125C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01DC0 80AD1260 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01DC4 80AD1264 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 01DC8 80AD1268 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 01DCC 80AD126C 3C014296 */  lui     $at, 0x4296                ## $at = 42960000
/* 01DD0 80AD1270 44812000 */  mtc1    $at, $f4                   ## $f4 = 75.00
/* 01DD4 80AD1274 AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 01DD8 80AD1278 C4860080 */  lwc1    $f6, 0x0080($a0)           ## 00000080
/* 01DDC 80AD127C C4800028 */  lwc1    $f0, 0x0028($a0)           ## 00000028
/* 01DE0 80AD1280 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01DE4 80AD1284 46060201 */  sub.s   $f8, $f0, $f6              
/* 01DE8 80AD1288 4608203C */  c.lt.s  $f4, $f8                   
/* 01DEC 80AD128C 00000000 */  nop
/* 01DF0 80AD1290 45000006 */  bc1f    .L80AD12AC                 
/* 01DF4 80AD1294 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01DF8 80AD1298 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 01DFC 80AD129C 00000000 */  nop
/* 01E00 80AD12A0 460A0401 */  sub.s   $f16, $f0, $f10            
/* 01E04 80AD12A4 10000006 */  beq     $zero, $zero, .L80AD12C0   
/* 01E08 80AD12A8 E4900028 */  swc1    $f16, 0x0028($a0)          ## 00000028
.L80AD12AC:
/* 01E0C 80AD12AC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01E10 80AD12B0 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 01E14 80AD12B4 00000000 */  nop
/* 01E18 80AD12B8 46120180 */  add.s   $f6, $f0, $f18             
/* 01E1C 80AD12BC E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
.L80AD12C0:
/* 01E20 80AD12C0 0C0329DD */  jal     func_800CA774              
/* 01E24 80AD12C4 C60C02E0 */  lwc1    $f12, 0x02E0($s0)          ## 000002E0
/* 01E28 80AD12C8 3C0180AD */  lui     $at, %hi(D_80AD2944)       ## $at = 80AD0000
/* 01E2C 80AD12CC C4282944 */  lwc1    $f8, %lo(D_80AD2944)($at)  
/* 01E30 80AD12D0 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 01E34 80AD12D4 C60C02E0 */  lwc1    $f12, 0x02E0($s0)          ## 000002E0
/* 01E38 80AD12D8 46080282 */  mul.s   $f10, $f0, $f8             
/* 01E3C 80AD12DC 460A2400 */  add.s   $f16, $f4, $f10            
/* 01E40 80AD12E0 0C0329DD */  jal     func_800CA774              
/* 01E44 80AD12E4 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 01E48 80AD12E8 3C0180AD */  lui     $at, %hi(D_80AD2948)       ## $at = 80AD0000
/* 01E4C 80AD12EC C4322948 */  lwc1    $f18, %lo(D_80AD2948)($at) 
/* 01E50 80AD12F0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01E54 80AD12F4 3C0180AD */  lui     $at, %hi(D_80AD294C)       ## $at = 80AD0000
/* 01E58 80AD12F8 46120082 */  mul.s   $f2, $f0, $f18             
/* 01E5C 80AD12FC 4602303E */  c.le.s  $f6, $f2                   
/* 01E60 80AD1300 00000000 */  nop
/* 01E64 80AD1304 45020004 */  bc1fl   .L80AD1318                 
/* 01E68 80AD1308 46001007 */  neg.s   $f0, $f2                   
/* 01E6C 80AD130C 10000002 */  beq     $zero, $zero, .L80AD1318   
/* 01E70 80AD1310 46001006 */  mov.s   $f0, $f2                   
/* 01E74 80AD1314 46001007 */  neg.s   $f0, $f2                   
.L80AD1318:
/* 01E78 80AD1318 C424294C */  lwc1    $f4, %lo(D_80AD294C)($at)  
/* 01E7C 80AD131C C60802E0 */  lwc1    $f8, 0x02E0($s0)           ## 000002E0
/* 01E80 80AD1320 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 01E84 80AD1324 46040280 */  add.s   $f10, $f0, $f4             
/* 01E88 80AD1328 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 01E8C 80AD132C 460A4400 */  add.s   $f16, $f8, $f10            
/* 01E90 80AD1330 E61002E0 */  swc1    $f16, 0x02E0($s0)          ## 000002E0
/* 01E94 80AD1334 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 01E98 80AD1338 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 01E9C 80AD133C AFA4002C */  sw      $a0, 0x002C($sp)           
/* 01EA0 80AD1340 00022C00 */  sll     $a1, $v0, 16               
/* 01EA4 80AD1344 00052C03 */  sra     $a1, $a1, 16               
/* 01EA8 80AD1348 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01EAC 80AD134C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01EB0 80AD1350 24070258 */  addiu   $a3, $zero, 0x0258         ## $a3 = 00000258
/* 01EB4 80AD1354 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01EB8 80AD1358 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01EBC 80AD135C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 01EC0 80AD1360 24051194 */  addiu   $a1, $zero, 0x1194         ## $a1 = 00001194
/* 01EC4 80AD1364 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01EC8 80AD1368 24070258 */  addiu   $a3, $zero, 0x0258         ## $a3 = 00000258
/* 01ECC 80AD136C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01ED0 80AD1370 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01ED4 80AD1374 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 01ED8 80AD1378 860802F2 */  lh      $t0, 0x02F2($s0)           ## 000002F2
/* 01EDC 80AD137C 860902F0 */  lh      $t1, 0x02F0($s0)           ## 000002F0
/* 01EE0 80AD1380 2719015E */  addiu   $t9, $t8, 0x015E           ## $t9 = 0000015E
/* 01EE4 80AD1384 A61900B6 */  sh      $t9, 0x00B6($s0)           ## 000000B6
/* 01EE8 80AD1388 01095021 */  addu    $t2, $t0, $t1              
/* 01EEC 80AD138C A60A02F2 */  sh      $t2, 0x02F2($s0)           ## 000002F2
/* 01EF0 80AD1390 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 01EF4 80AD1394 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 01EF8 80AD1398 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01EFC 80AD139C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01F00 80AD13A0 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
/* 01F04 80AD13A4 00000000 */  nop
/* 01F08 80AD13A8 4612003C */  c.lt.s  $f0, $f18                  
/* 01F0C 80AD13AC 00000000 */  nop
/* 01F10 80AD13B0 45000005 */  bc1f    .L80AD13C8                 
/* 01F14 80AD13B4 00000000 */  nop
/* 01F18 80AD13B8 0C2B42CF */  jal     func_80AD0B3C              
/* 01F1C 80AD13BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F20 80AD13C0 240B003C */  addiu   $t3, $zero, 0x003C         ## $t3 = 0000003C
/* 01F24 80AD13C4 A60B02F6 */  sh      $t3, 0x02F6($s0)           ## 000002F6
.L80AD13C8:
/* 01F28 80AD13C8 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 01F2C 80AD13CC 8D8CE670 */  lw      $t4, -0x1990($t4)          ## 8015E670
/* 01F30 80AD13D0 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01F34 80AD13D4 15800012 */  bne     $t4, $zero, .L80AD1420     
/* 01F38 80AD13D8 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 01F3C 80AD13DC 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 01F40 80AD13E0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01F44 80AD13E4 C60602D8 */  lwc1    $f6, 0x02D8($s0)           ## 000002D8
/* 01F48 80AD13E8 240D0190 */  addiu   $t5, $zero, 0x0190         ## $t5 = 00000190
/* 01F4C 80AD13EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F50 80AD13F0 4606003C */  c.lt.s  $f0, $f6                   
/* 01F54 80AD13F4 00000000 */  nop
/* 01F58 80AD13F8 4502000A */  bc1fl   .L80AD1424                 
/* 01F5C 80AD13FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F60 80AD1400 0C2B4156 */  jal     func_80AD0558              
/* 01F64 80AD1404 A60D02F8 */  sh      $t5, 0x02F8($s0)           ## 000002F8
/* 01F68 80AD1408 8FAE0044 */  lw      $t6, 0x0044($sp)           
/* 01F6C 80AD140C 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 01F70 80AD1410 01EE7821 */  addu    $t7, $t7, $t6              
/* 01F74 80AD1414 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 01F78 80AD1418 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 01F7C 80AD141C A61802FA */  sh      $t8, 0x02FA($s0)           ## 000002FA
.L80AD1420:
/* 01F80 80AD1420 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD1424:
/* 01F84 80AD1424 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01F88 80AD1428 24053155 */  addiu   $a1, $zero, 0x3155         ## $a1 = 00003155
/* 01F8C 80AD142C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01F90 80AD1430 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01F94 80AD1434 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01F98 80AD1438 03E00008 */  jr      $ra                        
/* 01F9C 80AD143C 00000000 */  nop


