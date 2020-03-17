glabel func_80AA12BC
/* 00C2C 80AA12BC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C30 80AA12C0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00C34 80AA12C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C38 80AA12C8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00C3C 80AA12CC 10A10004 */  beq     $a1, $at, .L80AA12E0       
/* 00C40 80AA12D0 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 00C44 80AA12D4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00C48 80AA12D8 54A10003 */  bnel    $a1, $at, .L80AA12E8       
/* 00C4C 80AA12DC 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
.L80AA12E0:
/* 00C50 80AA12E0 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 00C54 80AA12E4 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
.L80AA12E8:
/* 00C58 80AA12E8 14A1002E */  bne     $a1, $at, .L80AA13A4       
/* 00C5C 80AA12EC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00C60 80AA12F0 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 00C64 80AA12F4 3C0144AF */  lui     $at, 0x44AF                ## $at = 44AF0000
/* 00C68 80AA12F8 44816000 */  mtc1    $at, $f12                  ## $f12 = 1400.00
/* 00C6C 80AA12FC 44067000 */  mfc1    $a2, $f14                  
/* 00C70 80AA1300 0C034261 */  jal     Matrix_Translate              
/* 00C74 80AA1304 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00C78 80AA1308 8FAF003C */  lw      $t7, 0x003C($sp)           
/* 00C7C 80AA130C 27AE001C */  addiu   $t6, $sp, 0x001C           ## $t6 = FFFFFFF4
/* 00C80 80AA1310 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00C84 80AA1314 89F901F0 */  lwl     $t9, 0x01F0($t7)           ## 000001F0
/* 00C88 80AA1318 99F901F3 */  lwr     $t9, 0x01F3($t7)           ## 000001F3
/* 00C8C 80AA131C 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 00C90 80AA1320 3C0180AA */  lui     $at, %hi(D_80AA17AC)       ## $at = 80AA0000
/* 00C94 80AA1324 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00C98 80AA1328 95F901F4 */  lhu     $t9, 0x01F4($t7)           ## 000001F4
/* 00C9C 80AA132C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00CA0 80AA1330 A5D90004 */  sh      $t9, 0x0004($t6)           ## FFFFFFF8
/* 00CA4 80AA1334 87A8001E */  lh      $t0, 0x001E($sp)           
/* 00CA8 80AA1338 C43017AC */  lwc1    $f16, %lo(D_80AA17AC)($at) 
/* 00CAC 80AA133C 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00CB0 80AA1340 00000000 */  nop
/* 00CB4 80AA1344 468021A0 */  cvt.s.w $f6, $f4                   
/* 00CB8 80AA1348 46083283 */  div.s   $f10, $f6, $f8             
/* 00CBC 80AA134C 46105302 */  mul.s   $f12, $f10, $f16           
/* 00CC0 80AA1350 0C0342DC */  jal     Matrix_RotateX              
/* 00CC4 80AA1354 00000000 */  nop
/* 00CC8 80AA1358 87A9001C */  lh      $t1, 0x001C($sp)           
/* 00CCC 80AA135C 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00CD0 80AA1360 44813000 */  mtc1    $at, $f6                   ## $f6 = 32768.00
/* 00CD4 80AA1364 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 00CD8 80AA1368 3C0180AA */  lui     $at, %hi(D_80AA17B0)       ## $at = 80AA0000
/* 00CDC 80AA136C C42A17B0 */  lwc1    $f10, %lo(D_80AA17B0)($at) 
/* 00CE0 80AA1370 46809120 */  cvt.s.w $f4, $f18                  
/* 00CE4 80AA1374 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00CE8 80AA1378 46062203 */  div.s   $f8, $f4, $f6              
/* 00CEC 80AA137C 460A4302 */  mul.s   $f12, $f8, $f10            
/* 00CF0 80AA1380 0C0343B5 */  jal     Matrix_RotateZ              
/* 00CF4 80AA1384 00000000 */  nop
/* 00CF8 80AA1388 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 00CFC 80AA138C 3C01C4AF */  lui     $at, 0xC4AF                ## $at = C4AF0000
/* 00D00 80AA1390 44816000 */  mtc1    $at, $f12                  ## $f12 = -1400.00
/* 00D04 80AA1394 44067000 */  mfc1    $a2, $f14                  
/* 00D08 80AA1398 0C034261 */  jal     Matrix_Translate              
/* 00D0C 80AA139C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D10 80AA13A0 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80AA13A4:
/* 00D14 80AA13A4 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00D18 80AA13A8 14A10022 */  bne     $a1, $at, .L80AA1434       
/* 00D1C 80AA13AC 8FAB003C */  lw      $t3, 0x003C($sp)           
/* 00D20 80AA13B0 896D01F6 */  lwl     $t5, 0x01F6($t3)           ## 000001F6
/* 00D24 80AA13B4 996D01F9 */  lwr     $t5, 0x01F9($t3)           ## 000001F9
/* 00D28 80AA13B8 27AA001C */  addiu   $t2, $sp, 0x001C           ## $t2 = FFFFFFF4
/* 00D2C 80AA13BC 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00D30 80AA13C0 AD4D0000 */  sw      $t5, 0x0000($t2)           ## FFFFFFF4
/* 00D34 80AA13C4 956D01FA */  lhu     $t5, 0x01FA($t3)           ## 000001FA
/* 00D38 80AA13C8 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 00D3C 80AA13CC 3C0180AA */  lui     $at, %hi(D_80AA17B4)       ## $at = 80AA0000
/* 00D40 80AA13D0 A54D0004 */  sh      $t5, 0x0004($t2)           ## FFFFFFF8
/* 00D44 80AA13D4 87AE001E */  lh      $t6, 0x001E($sp)           
/* 00D48 80AA13D8 C42817B4 */  lwc1    $f8, %lo(D_80AA17B4)($at)  
/* 00D4C 80AA13DC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00D50 80AA13E0 000E7823 */  subu    $t7, $zero, $t6            
/* 00D54 80AA13E4 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 00D58 80AA13E8 00000000 */  nop
/* 00D5C 80AA13EC 468084A0 */  cvt.s.w $f18, $f16                 
/* 00D60 80AA13F0 46049183 */  div.s   $f6, $f18, $f4             
/* 00D64 80AA13F4 46083302 */  mul.s   $f12, $f6, $f8             
/* 00D68 80AA13F8 0C0342DC */  jal     Matrix_RotateX              
/* 00D6C 80AA13FC 00000000 */  nop
/* 00D70 80AA1400 87B8001C */  lh      $t8, 0x001C($sp)           
/* 00D74 80AA1404 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00D78 80AA1408 44819000 */  mtc1    $at, $f18                  ## $f18 = 32768.00
/* 00D7C 80AA140C 0018C823 */  subu    $t9, $zero, $t8            
/* 00D80 80AA1410 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 00D84 80AA1414 3C0180AA */  lui     $at, %hi(D_80AA17B8)       ## $at = 80AA0000
/* 00D88 80AA1418 C42617B8 */  lwc1    $f6, %lo(D_80AA17B8)($at)  
/* 00D8C 80AA141C 46805420 */  cvt.s.w $f16, $f10                 
/* 00D90 80AA1420 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00D94 80AA1424 46128103 */  div.s   $f4, $f16, $f18            
/* 00D98 80AA1428 46062302 */  mul.s   $f12, $f4, $f6             
/* 00D9C 80AA142C 0C0343B5 */  jal     Matrix_RotateZ              
/* 00DA0 80AA1430 00000000 */  nop
.L80AA1434:
/* 00DA4 80AA1434 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DA8 80AA1438 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00DAC 80AA143C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00DB0 80AA1440 03E00008 */  jr      $ra                        
/* 00DB4 80AA1444 00000000 */  nop


