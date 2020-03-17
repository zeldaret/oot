glabel EnFireRock_Init
/* 00000 80A11C20 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80A11C24 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 80A11C28 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 80A11C2C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00010 80A11C30 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00014 80A11C34 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00018 80A11C38 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 0001C 80A11C3C AFAF0030 */  sw      $t7, 0x0030($sp)           
/* 00020 80A11C40 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 00024 80A11C44 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00028 80A11C48 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0002C 80A11C4C A498018C */  sh      $t8, 0x018C($a0)           ## 0000018C
/* 00030 80A11C50 8482018C */  lh      $v0, 0x018C($a0)           ## 0000018C
/* 00034 80A11C54 3C074170 */  lui     $a3, 0x4170                ## $a3 = 41700000
/* 00038 80A11C58 5041001F */  beql    $v0, $at, .L80A11CD8       
/* 0003C 80A11C5C 2C410007 */  sltiu   $at, $v0, 0x0007           
/* 00040 80A11C60 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00044 80A11C64 0C00AC78 */  jal     ActorShape_Init
              
/* 00048 80A11C68 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0004C 80A11C6C 8602018C */  lh      $v0, 0x018C($s0)           ## 0000018C
/* 00050 80A11C70 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00054 80A11C74 10410017 */  beq     $v0, $at, .L80A11CD4       
/* 00058 80A11C78 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0005C 80A11C7C 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 00060 80A11C80 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00064 80A11C84 00000000 */  nop
/* 00068 80A11C88 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0006C 80A11C8C 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 00070 80A11C90 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00074 80A11C94 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 00078 80A11C98 46040180 */  add.s   $f6, $f0, $f4              
/* 0007C 80A11C9C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00080 80A11CA0 E606014C */  swc1    $f6, 0x014C($s0)           ## 0000014C
/* 00084 80A11CA4 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00088 80A11CA8 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 0008C 80A11CAC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00090 80A11CB0 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 00094 80A11CB4 46080280 */  add.s   $f10, $f0, $f8             
/* 00098 80A11CB8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0009C 80A11CBC E60A0150 */  swc1    $f10, 0x0150($s0)          ## 00000150
/* 000A0 80A11CC0 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 000A4 80A11CC4 44818000 */  mtc1    $at, $f16                  ## $f16 = 15.00
/* 000A8 80A11CC8 8602018C */  lh      $v0, 0x018C($s0)           ## 0000018C
/* 000AC 80A11CCC 46100480 */  add.s   $f18, $f0, $f16            
/* 000B0 80A11CD0 E6120154 */  swc1    $f18, 0x0154($s0)          ## 00000154
.L80A11CD4:
/* 000B4 80A11CD4 2C410007 */  sltiu   $at, $v0, 0x0007           
.L80A11CD8:
/* 000B8 80A11CD8 102000CB */  beq     $at, $zero, .L80A12008     
/* 000BC 80A11CDC 0002C880 */  sll     $t9, $v0,  2               
/* 000C0 80A11CE0 3C0180A1 */  lui     $at, %hi(jtbl_80A12E94)       ## $at = 80A10000
/* 000C4 80A11CE4 00390821 */  addu    $at, $at, $t9              
/* 000C8 80A11CE8 8C392E94 */  lw      $t9, %lo(jtbl_80A12E94)($at)  
/* 000CC 80A11CEC 03200008 */  jr      $t9                        
/* 000D0 80A11CF0 00000000 */  nop
glabel L80A11CF4
/* 000D4 80A11CF4 3C0480A1 */  lui     $a0, %hi(D_80A12D00)       ## $a0 = 80A10000
/* 000D8 80A11CF8 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 000DC 80A11CFC 0C00084C */  jal     osSyncPrintf
              
/* 000E0 80A11D00 24842D00 */  addiu   $a0, $a0, %lo(D_80A12D00)  ## $a0 = 80A12D00
/* 000E4 80A11D04 3C0880A1 */  lui     $t0, %hi(func_80A125B8)    ## $t0 = 80A10000
/* 000E8 80A11D08 250825B8 */  addiu   $t0, $t0, %lo(func_80A125B8) ## $t0 = 80A125B8
/* 000EC 80A11D0C 100000C3 */  beq     $zero, $zero, .L80A1201C   
/* 000F0 80A11D10 AE080168 */  sw      $t0, 0x0168($s0)           ## 00000168
glabel L80A11D14
/* 000F4 80A11D14 3C053CF5 */  lui     $a1, 0x3CF5                ## $a1 = 3CF50000
/* 000F8 80A11D18 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3CF5C28F
/* 000FC 80A11D1C 0C00B58B */  jal     Actor_SetScale
              
/* 00100 80A11D20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00104 80A11D24 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00108 80A11D28 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0010C 80A11D2C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00110 80A11D30 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00114 80A11D34 3C0780A1 */  lui     $a3, %hi(D_80A12CCC)       ## $a3 = 80A10000
/* 00118 80A11D38 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0011C 80A11D3C 24E72CCC */  addiu   $a3, $a3, %lo(D_80A12CCC)  ## $a3 = 80A12CCC
/* 00120 80A11D40 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00124 80A11D44 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00128 80A11D48 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0012C 80A11D4C 3C0480A1 */  lui     $a0, %hi(D_80A12D2C)       ## $a0 = 80A10000
/* 00130 80A11D50 0C00084C */  jal     osSyncPrintf
              
/* 00134 80A11D54 24842D2C */  addiu   $a0, $a0, %lo(D_80A12D2C)  ## $a0 = 80A12D2C
/* 00138 80A11D58 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0013C 80A11D5C 24090017 */  addiu   $t1, $zero, 0x0017         ## $t1 = 00000017
/* 00140 80A11D60 240A0025 */  addiu   $t2, $zero, 0x0025         ## $t2 = 00000025
/* 00144 80A11D64 240BFFF6 */  addiu   $t3, $zero, 0xFFF6         ## $t3 = FFFFFFF6
/* 00148 80A11D68 A60901D4 */  sh      $t1, 0x01D4($s0)           ## 000001D4
/* 0014C 80A11D6C A60A01D6 */  sh      $t2, 0x01D6($s0)           ## 000001D6
/* 00150 80A11D70 A60B01D8 */  sh      $t3, 0x01D8($s0)           ## 000001D8
/* 00154 80A11D74 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00158 80A11D78 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 0015C 80A11D7C 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00160 80A11D80 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00164 80A11D84 3C0D80A1 */  lui     $t5, %hi(func_80A12730)    ## $t5 = 80A10000
/* 00168 80A11D88 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 0016C 80A11D8C 25AD2730 */  addiu   $t5, $t5, %lo(func_80A12730) ## $t5 = 80A12730
/* 00170 80A11D90 A20C00AE */  sb      $t4, 0x00AE($s0)           ## 000000AE
/* 00174 80A11D94 100000A1 */  beq     $zero, $zero, .L80A1201C   
/* 00178 80A11D98 AE0D0168 */  sw      $t5, 0x0168($s0)           ## 00000168
glabel L80A11D9C
/* 0017C 80A11D9C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00180 80A11DA0 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 00184 80A11DA4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00188 80A11DA8 00000000 */  nop
/* 0018C 80A11DAC 8FAE0030 */  lw      $t6, 0x0030($sp)           
/* 00190 80A11DB0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00194 80A11DB4 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 00198 80A11DB8 C5C40024 */  lwc1    $f4, 0x0024($t6)           ## 00000024
/* 0019C 80A11DBC 46040180 */  add.s   $f6, $f0, $f4              
/* 001A0 80A11DC0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 001A4 80A11DC4 E606017C */  swc1    $f6, 0x017C($s0)           ## 0000017C
/* 001A8 80A11DC8 8FAF0030 */  lw      $t7, 0x0030($sp)           
/* 001AC 80A11DCC C5E8002C */  lwc1    $f8, 0x002C($t7)           ## 0000002C
/* 001B0 80A11DD0 46080280 */  add.s   $f10, $f0, $f8             
/* 001B4 80A11DD4 E60A0184 */  swc1    $f10, 0x0184($s0)          ## 00000184
glabel L80A11DD8
/* 001B8 80A11DD8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 001BC 80A11DDC 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 001C0 80A11DE0 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 001C4 80A11DE4 00000000 */  nop
/* 001C8 80A11DE8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 001CC 80A11DEC 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 001D0 80A11DF0 3C0180A1 */  lui     $at, %hi(D_80A12EB0)       ## $at = 80A10000
/* 001D4 80A11DF4 C4242EB0 */  lwc1    $f4, %lo(D_80A12EB0)($at)  
/* 001D8 80A11DF8 46100483 */  div.s   $f18, $f0, $f16            
/* 001DC 80A11DFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001E0 80A11E00 46049080 */  add.s   $f2, $f18, $f4             
/* 001E4 80A11E04 44051000 */  mfc1    $a1, $f2                   
/* 001E8 80A11E08 0C00B58B */  jal     Actor_SetScale
              
/* 001EC 80A11E0C E602016C */  swc1    $f2, 0x016C($s0)           ## 0000016C
/* 001F0 80A11E10 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 001F4 80A11E14 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 001F8 80A11E18 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 001FC 80A11E1C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00200 80A11E20 3C0780A1 */  lui     $a3, %hi(D_80A12CA0)       ## $a3 = 80A10000
/* 00204 80A11E24 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00208 80A11E28 24E72CA0 */  addiu   $a3, $a3, %lo(D_80A12CA0)  ## $a3 = 80A12CA0
/* 0020C 80A11E2C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00210 80A11E30 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00214 80A11E34 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00218 80A11E38 3C0180A1 */  lui     $at, %hi(D_80A12EB4)       ## $at = 80A10000
/* 0021C 80A11E3C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00220 80A11E40 C42C2EB4 */  lwc1    $f12, %lo(D_80A12EB4)($at) 
/* 00224 80A11E44 4600018D */  trunc.w.s $f6, $f0                   
/* 00228 80A11E48 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0022C 80A11E4C 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 00230 80A11E50 3C1980A1 */  lui     $t9, %hi(func_80A120CC)    ## $t9 = 80A10000
/* 00234 80A11E54 44023000 */  mfc1    $v0, $f6                   
/* 00238 80A11E58 273920CC */  addiu   $t9, $t9, %lo(func_80A120CC) ## $t9 = 80A120CC
/* 0023C 80A11E5C AE190168 */  sw      $t9, 0x0168($s0)           ## 00000168
/* 00240 80A11E60 E60800C4 */  swc1    $f8, 0x00C4($s0)           ## 000000C4
/* 00244 80A11E64 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00248 80A11E68 1000006C */  beq     $zero, $zero, .L80A1201C   
/* 0024C 80A11E6C A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
glabel L80A11E70
/* 00250 80A11E70 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00254 80A11E74 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 00258 80A11E78 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0025C 80A11E7C 00000000 */  nop
/* 00260 80A11E80 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00264 80A11E84 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 00268 80A11E88 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0026C 80A11E8C 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 00270 80A11E90 460A0400 */  add.s   $f16, $f0, $f10            
/* 00274 80A11E94 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00278 80A11E98 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 0027C 80A11E9C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00280 80A11EA0 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
/* 00284 80A11EA4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00288 80A11EA8 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 0028C 80A11EAC 46120100 */  add.s   $f4, $f0, $f18             
/* 00290 80A11EB0 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00294 80A11EB4 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00298 80A11EB8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0029C 80A11EBC 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 002A0 80A11EC0 3C0180A1 */  lui     $at, %hi(D_80A12EB8)       ## $at = 80A10000
/* 002A4 80A11EC4 C42A2EB8 */  lwc1    $f10, %lo(D_80A12EB8)($at) 
/* 002A8 80A11EC8 46060203 */  div.s   $f8, $f0, $f6              
/* 002AC 80A11ECC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002B0 80A11ED0 460A4080 */  add.s   $f2, $f8, $f10             
/* 002B4 80A11ED4 44051000 */  mfc1    $a1, $f2                   
/* 002B8 80A11ED8 0C00B58B */  jal     Actor_SetScale
              
/* 002BC 80A11EDC E602016C */  swc1    $f2, 0x016C($s0)           ## 0000016C
/* 002C0 80A11EE0 3C01BFC0 */  lui     $at, 0xBFC0                ## $at = BFC00000
/* 002C4 80A11EE4 44818000 */  mtc1    $at, $f16                  ## $f16 = -1.50
/* 002C8 80A11EE8 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 002CC 80A11EEC E610006C */  swc1    $f16, 0x006C($s0)          ## 0000006C
/* 002D0 80A11EF0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 002D4 80A11EF4 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 002D8 80A11EF8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 002DC 80A11EFC 3C0780A1 */  lui     $a3, %hi(D_80A12CA0)       ## $a3 = 80A10000
/* 002E0 80A11F00 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 002E4 80A11F04 24E72CA0 */  addiu   $a3, $a3, %lo(D_80A12CA0)  ## $a3 = 80A12CA0
/* 002E8 80A11F08 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 002EC 80A11F0C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 002F0 80A11F10 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 002F4 80A11F14 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 002F8 80A11F18 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 002FC 80A11F1C 3C0180A1 */  lui     $at, %hi(D_80A12EBC)       ## $at = 80A10000
/* 00300 80A11F20 E61200C4 */  swc1    $f18, 0x00C4($s0)          ## 000000C4
/* 00304 80A11F24 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00308 80A11F28 C42C2EBC */  lwc1    $f12, %lo(D_80A12EBC)($at) 
/* 0030C 80A11F2C 4600010D */  trunc.w.s $f4, $f0                   
/* 00310 80A11F30 3C0980A1 */  lui     $t1, %hi(func_80A120CC)    ## $t1 = 80A10000
/* 00314 80A11F34 252920CC */  addiu   $t1, $t1, %lo(func_80A120CC) ## $t1 = 80A120CC
/* 00318 80A11F38 AE090168 */  sw      $t1, 0x0168($s0)           ## 00000168
/* 0031C 80A11F3C 44022000 */  mfc1    $v0, $f4                   
/* 00320 80A11F40 00000000 */  nop
/* 00324 80A11F44 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00328 80A11F48 10000034 */  beq     $zero, $zero, .L80A1201C   
/* 0032C 80A11F4C A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
glabel L80A11F50
/* 00330 80A11F50 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00334 80A11F54 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 00338 80A11F58 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0033C 80A11F5C 00000000 */  nop
/* 00340 80A11F60 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00344 80A11F64 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 00348 80A11F68 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0034C 80A11F6C 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 00350 80A11F70 46060200 */  add.s   $f8, $f0, $f6              
/* 00354 80A11F74 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00358 80A11F78 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 0035C 80A11F7C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00360 80A11F80 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 00364 80A11F84 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00368 80A11F88 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 0036C 80A11F8C 460A0400 */  add.s   $f16, $f0, $f10            
/* 00370 80A11F90 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00374 80A11F94 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 00378 80A11F98 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 0037C 80A11F9C 44819000 */  mtc1    $at, $f18                  ## $f18 = 500.00
/* 00380 80A11FA0 3C0180A1 */  lui     $at, %hi(D_80A12EC0)       ## $at = 80A10000
/* 00384 80A11FA4 C4262EC0 */  lwc1    $f6, %lo(D_80A12EC0)($at)  
/* 00388 80A11FA8 46120103 */  div.s   $f4, $f0, $f18             
/* 0038C 80A11FAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00390 80A11FB0 46062080 */  add.s   $f2, $f4, $f6              
/* 00394 80A11FB4 44051000 */  mfc1    $a1, $f2                   
/* 00398 80A11FB8 0C00B58B */  jal     Actor_SetScale
              
/* 0039C 80A11FBC E602016C */  swc1    $f2, 0x016C($s0)           ## 0000016C
/* 003A0 80A11FC0 3C0180A1 */  lui     $at, %hi(D_80A12EC4)       ## $at = 80A10000
/* 003A4 80A11FC4 C4282EC4 */  lwc1    $f8, %lo(D_80A12EC4)($at)  
/* 003A8 80A11FC8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 003AC 80A11FCC 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 003B0 80A11FD0 3C0180A1 */  lui     $at, %hi(D_80A12EC8)       ## $at = 80A10000
/* 003B4 80A11FD4 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 003B8 80A11FD8 E60A00C4 */  swc1    $f10, 0x00C4($s0)          ## 000000C4
/* 003BC 80A11FDC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 003C0 80A11FE0 C42C2EC8 */  lwc1    $f12, %lo(D_80A12EC8)($at) 
/* 003C4 80A11FE4 4600040D */  trunc.w.s $f16, $f0                  
/* 003C8 80A11FE8 3C0B80A1 */  lui     $t3, %hi(func_80A120CC)    ## $t3 = 80A10000
/* 003CC 80A11FEC 256B20CC */  addiu   $t3, $t3, %lo(func_80A120CC) ## $t3 = 80A120CC
/* 003D0 80A11FF0 AE0B0168 */  sw      $t3, 0x0168($s0)           ## 00000168
/* 003D4 80A11FF4 44028000 */  mfc1    $v0, $f16                  
/* 003D8 80A11FF8 00000000 */  nop
/* 003DC 80A11FFC A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 003E0 80A12000 10000006 */  beq     $zero, $zero, .L80A1201C   
/* 003E4 80A12004 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
glabel L80A12008
.L80A12008:
/* 003E8 80A12008 3C0480A1 */  lui     $a0, %hi(D_80A12D54)       ## $a0 = 80A10000
/* 003EC 80A1200C 0C00084C */  jal     osSyncPrintf
              
/* 003F0 80A12010 24842D54 */  addiu   $a0, $a0, %lo(D_80A12D54)  ## $a0 = 80A12D54
/* 003F4 80A12014 0C00B55C */  jal     Actor_Kill
              
/* 003F8 80A12018 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A1201C:
/* 003FC 80A1201C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00400 80A12020 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00404 80A12024 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00408 80A12028 03E00008 */  jr      $ra                        
/* 0040C 80A1202C 00000000 */  nop


