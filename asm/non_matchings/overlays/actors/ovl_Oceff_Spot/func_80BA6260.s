glabel func_80BA6260
/* 001F0 80BA6260 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001F4 80BA6264 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001F8 80BA6268 C4800174 */  lwc1    $f0, 0x0174($a0)           ## 00000174
/* 001FC 80BA626C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00200 80BA6270 3C0180BA */  lui     $at, %hi(D_80BA6FD8)       ## $at = 80BA0000
/* 00204 80BA6274 4600203C */  c.lt.s  $f4, $f0                   
/* 00208 80BA6278 00000000 */  nop
/* 0020C 80BA627C 45000005 */  bc1f    .L80BA6294                 
/* 00210 80BA6280 00000000 */  nop
/* 00214 80BA6284 C4266FD8 */  lwc1    $f6, %lo(D_80BA6FD8)($at)  
/* 00218 80BA6288 46060201 */  sub.s   $f8, $f0, $f6              
/* 0021C 80BA628C 10000034 */  beq     $zero, $zero, .L80BA6360   
/* 00220 80BA6290 E4880174 */  swc1    $f8, 0x0174($a0)           ## 00000174
.L80BA6294:
/* 00224 80BA6294 0C00B55C */  jal     Actor_Kill
              
/* 00228 80BA6298 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0022C 80BA629C 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 00230 80BA62A0 95CEFB40 */  lhu     $t6, -0x04C0($t6)          ## 8011FB40
/* 00234 80BA62A4 24010190 */  addiu   $at, $zero, 0x0190         ## $at = 00000190
/* 00238 80BA62A8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0023C 80BA62AC 11C10020 */  beq     $t6, $at, .L80BA6330       
/* 00240 80BA62B0 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 00244 80BA62B4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00248 80BA62B8 00A11021 */  addu    $v0, $a1, $at              
/* 0024C 80BA62BC 844F04E6 */  lh      $t7, 0x04E6($v0)           ## 000004E6
/* 00250 80BA62C0 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 00254 80BA62C4 24C6E660 */  addiu   $a2, $a2, 0xE660           ## $a2 = 8015E660
/* 00258 80BA62C8 55E0001A */  bnel    $t7, $zero, .L80BA6334     
/* 0025C 80BA62CC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00260 80BA62D0 94D813FA */  lhu     $t8, 0x13FA($a2)           ## 8015FA5A
/* 00264 80BA62D4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00268 80BA62D8 3319000F */  andi    $t9, $t8, 0x000F           ## $t9 = 00000000
/* 0026C 80BA62DC 50790015 */  beql    $v1, $t9, .L80BA6334       
/* 00270 80BA62E0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00274 80BA62E4 944804C8 */  lhu     $t0, 0x04C8($v0)           ## 000004C8
/* 00278 80BA62E8 24010031 */  addiu   $at, $zero, 0x0031         ## $at = 00000031
/* 0027C 80BA62EC 3C0480BA */  lui     $a0, %hi(D_80BA6F40)       ## $a0 = 80BA0000
/* 00280 80BA62F0 15010005 */  bne     $t0, $at, .L80BA6308       
/* 00284 80BA62F4 24846F40 */  addiu   $a0, $a0, %lo(D_80BA6F40)  ## $a0 = 80BA6F40
/* 00288 80BA62F8 944904C6 */  lhu     $t1, 0x04C6($v0)           ## 000004C6
/* 0028C 80BA62FC 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00290 80BA6300 51210018 */  beql    $t1, $at, .L80BA6364       
/* 00294 80BA6304 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80BA6308:
/* 00298 80BA6308 0C00084C */  jal     osSyncPrintf
              
/* 0029C 80BA630C A4C31422 */  sh      $v1, 0x1422($a2)           ## 8015FA82
/* 002A0 80BA6310 3C0480BA */  lui     $a0, %hi(D_80BA6F48)       ## $a0 = 80BA0000
/* 002A4 80BA6314 0C00084C */  jal     osSyncPrintf
              
/* 002A8 80BA6318 24846F48 */  addiu   $a0, $a0, %lo(D_80BA6F48)  ## $a0 = 80BA6F48
/* 002AC 80BA631C 3C0480BA */  lui     $a0, %hi(D_80BA6F68)       ## $a0 = 80BA0000
/* 002B0 80BA6320 0C00084C */  jal     osSyncPrintf
              
/* 002B4 80BA6324 24846F68 */  addiu   $a0, $a0, %lo(D_80BA6F68)  ## $a0 = 80BA6F68
/* 002B8 80BA6328 1000000E */  beq     $zero, $zero, .L80BA6364   
/* 002BC 80BA632C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80BA6330:
/* 002C0 80BA6330 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80BA6334:
/* 002C4 80BA6334 00250821 */  addu    $at, $at, $a1              
/* 002C8 80BA6338 3C0480BA */  lui     $a0, %hi(D_80BA6F6C)       ## $a0 = 80BA0000
/* 002CC 80BA633C A42A04C6 */  sh      $t2, 0x04C6($at)           ## 000104C6
/* 002D0 80BA6340 0C00084C */  jal     osSyncPrintf
              
/* 002D4 80BA6344 24846F6C */  addiu   $a0, $a0, %lo(D_80BA6F6C)  ## $a0 = 80BA6F6C
/* 002D8 80BA6348 3C0480BA */  lui     $a0, %hi(D_80BA6F74)       ## $a0 = 80BA0000
/* 002DC 80BA634C 0C00084C */  jal     osSyncPrintf
              
/* 002E0 80BA6350 24846F74 */  addiu   $a0, $a0, %lo(D_80BA6F74)  ## $a0 = 80BA6F74
/* 002E4 80BA6354 3C0480BA */  lui     $a0, %hi(D_80BA6F90)       ## $a0 = 80BA0000
/* 002E8 80BA6358 0C00084C */  jal     osSyncPrintf
              
/* 002EC 80BA635C 24846F90 */  addiu   $a0, $a0, %lo(D_80BA6F90)  ## $a0 = 80BA6F90
.L80BA6360:
/* 002F0 80BA6360 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80BA6364:
/* 002F4 80BA6364 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F8 80BA6368 03E00008 */  jr      $ra                        
/* 002FC 80BA636C 00000000 */  nop


