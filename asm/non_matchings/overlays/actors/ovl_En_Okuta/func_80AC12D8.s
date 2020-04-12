.late_rodata
glabel D_80AC2908
 .word 0x3E860932

.text
glabel func_80AC12D8
/* 00C78 80AC12D8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C7C 80AC12DC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C80 80AC12E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C84 80AC12E4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C88 80AC12E8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00C8C 80AC12EC 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00C90 80AC12F0 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00C94 80AC12F4 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00C98 80AC12F8 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00C9C 80AC12FC 2407071C */  addiu   $a3, $zero, 0x071C         ## $a3 = 0000071C
/* 00CA0 80AC1300 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00CA4 80AC1304 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00CA8 80AC1308 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00CAC 80AC130C 10400011 */  beq     $v0, $zero, .L80AC1354     
/* 00CB0 80AC1310 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 00CB4 80AC1314 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
/* 00CB8 80AC1318 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CBC 80AC131C 10400003 */  beq     $v0, $zero, .L80AC132C     
/* 00CC0 80AC1320 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00CC4 80AC1324 A60E0194 */  sh      $t6, 0x0194($s0)           ## 00000194
/* 00CC8 80AC1328 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
.L80AC132C:
/* 00CCC 80AC132C 14400005 */  bne     $v0, $zero, .L80AC1344     
/* 00CD0 80AC1330 00000000 */  nop
/* 00CD4 80AC1334 0C2B02D8 */  jal     func_80AC0B60              
/* 00CD8 80AC1338 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CDC 80AC133C 10000039 */  beq     $zero, $zero, .L80AC1424   
/* 00CE0 80AC1340 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
.L80AC1344:
/* 00CE4 80AC1344 0C2B02F0 */  jal     func_80AC0BC0              
/* 00CE8 80AC1348 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00CEC 80AC134C 10000035 */  beq     $zero, $zero, .L80AC1424   
/* 00CF0 80AC1350 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
.L80AC1354:
/* 00CF4 80AC1354 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00CF8 80AC1358 44812000 */  mtc1    $at, $f4                   ## $f4 = 160.00
/* 00CFC 80AC135C 3C0180AC */  lui     $at, %hi(D_80AC2908)       ## $at = 80AC0000
/* 00D00 80AC1360 4604003C */  c.lt.s  $f0, $f4                   
/* 00D04 80AC1364 00000000 */  nop
/* 00D08 80AC1368 4502000B */  bc1fl   .L80AC1398                 
/* 00D0C 80AC136C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00D10 80AC1370 C4262908 */  lwc1    $f6, %lo(D_80AC2908)($at)  
/* 00D14 80AC1374 46003302 */  mul.s   $f12, $f6, $f0             
/* 00D18 80AC1378 0C0400A4 */  jal     sinf
              
/* 00D1C 80AC137C 00000000 */  nop
/* 00D20 80AC1380 C6080360 */  lwc1    $f8, 0x0360($s0)           ## 00000360
/* 00D24 80AC1384 C610000C */  lwc1    $f16, 0x000C($s0)          ## 0000000C
/* 00D28 80AC1388 46080282 */  mul.s   $f10, $f0, $f8             
/* 00D2C 80AC138C 46105480 */  add.s   $f18, $f10, $f16           
/* 00D30 80AC1390 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 00D34 80AC1394 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80AC1398:
/* 00D38 80AC1398 0C0295B2 */  jal     func_800A56C8              
/* 00D3C 80AC139C 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 00D40 80AC13A0 10400003 */  beq     $v0, $zero, .L80AC13B0     
/* 00D44 80AC13A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D48 80AC13A8 0C2B0372 */  jal     func_80AC0DC8              
/* 00D4C 80AC13AC 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80AC13B0:
/* 00D50 80AC13B0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00D54 80AC13B4 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00D58 80AC13B8 C6060360 */  lwc1    $f6, 0x0360($s0)           ## 00000360
/* 00D5C 80AC13BC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00D60 80AC13C0 4606203C */  c.lt.s  $f4, $f6                   
/* 00D64 80AC13C4 00000000 */  nop
/* 00D68 80AC13C8 45020008 */  bc1fl   .L80AC13EC                 
/* 00D6C 80AC13CC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00D70 80AC13D0 0C0295B2 */  jal     func_800A56C8              
/* 00D74 80AC13D4 3C054150 */  lui     $a1, 0x4150                ## $a1 = 41500000
/* 00D78 80AC13D8 10400003 */  beq     $v0, $zero, .L80AC13E8     
/* 00D7C 80AC13DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D80 80AC13E0 0C2B0269 */  jal     func_80AC09A4              
/* 00D84 80AC13E4 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80AC13E8:
/* 00D88 80AC13E8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
.L80AC13EC:
/* 00D8C 80AC13EC 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 00D90 80AC13F0 C60A0360 */  lwc1    $f10, 0x0360($s0)          ## 00000360
/* 00D94 80AC13F4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00D98 80AC13F8 460A403C */  c.lt.s  $f8, $f10                  
/* 00D9C 80AC13FC 00000000 */  nop
/* 00DA0 80AC1400 45020008 */  bc1fl   .L80AC1424                 
/* 00DA4 80AC1404 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00DA8 80AC1408 0C0295B2 */  jal     func_800A56C8              
/* 00DAC 80AC140C 3C054150 */  lui     $a1, 0x4150                ## $a1 = 41500000
/* 00DB0 80AC1410 10400003 */  beq     $v0, $zero, .L80AC1420     
/* 00DB4 80AC1414 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DB8 80AC1418 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DBC 80AC141C 240538C3 */  addiu   $a1, $zero, 0x38C3         ## $a1 = 000038C3
.L80AC1420:
/* 00DC0 80AC1420 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
.L80AC1424:
/* 00DC4 80AC1424 44819000 */  mtc1    $at, $f18                  ## $f18 = 160.00
/* 00DC8 80AC1428 C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
/* 00DCC 80AC142C 4612803C */  c.lt.s  $f16, $f18                 
/* 00DD0 80AC1430 00000000 */  nop
/* 00DD4 80AC1434 45020004 */  bc1fl   .L80AC1448                 
/* 00DD8 80AC1438 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DDC 80AC143C 0C2B02C9 */  jal     func_80AC0B24              
/* 00DE0 80AC1440 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DE4 80AC1444 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC1448:
/* 00DE8 80AC1448 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DEC 80AC144C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00DF0 80AC1450 03E00008 */  jr      $ra                        
/* 00DF4 80AC1454 00000000 */  nop
