glabel func_809FC41C
/* 0024C 809FC41C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00250 809FC420 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00254 809FC424 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00258 809FC428 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 0025C 809FC42C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00260 809FC430 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00264 809FC434 00A12021 */  addu    $a0, $a1, $at              
/* 00268 809FC438 80C50193 */  lb      $a1, 0x0193($a2)           ## 00000193
/* 0026C 809FC43C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00270 809FC440 0C026062 */  jal     Object_IsLoaded
              
/* 00274 809FC444 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00278 809FC448 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0027C 809FC44C 1040005C */  beq     $v0, $zero, .L809FC5C0     
/* 00280 809FC450 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00284 809FC454 84C3001C */  lh      $v1, 0x001C($a2)           ## 0000001C
/* 00288 809FC458 8CCE0004 */  lw      $t6, 0x0004($a2)           ## 00000004
/* 0028C 809FC45C 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00290 809FC460 80D80193 */  lb      $t8, 0x0193($a2)           ## 00000193
/* 00294 809FC464 3C1980A0 */  lui     $t9, %hi(func_809FC5D0)    ## $t9 = 80A00000
/* 00298 809FC468 000319C3 */  sra     $v1, $v1,  7               
/* 0029C 809FC46C 01C17824 */  and     $t7, $t6, $at              
/* 002A0 809FC470 30630007 */  andi    $v1, $v1, 0x0007           ## $v1 = 00000000
/* 002A4 809FC474 2739C5D0 */  addiu   $t9, $t9, %lo(func_809FC5D0) ## $t9 = 809FC5D0
/* 002A8 809FC478 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 002AC 809FC47C ACCF0004 */  sw      $t7, 0x0004($a2)           ## 00000004
/* 002B0 809FC480 ACD901D4 */  sw      $t9, 0x01D4($a2)           ## 000001D4
/* 002B4 809FC484 1461000D */  bne     $v1, $at, .L809FC4BC       
/* 002B8 809FC488 A0D8001E */  sb      $t8, 0x001E($a2)           ## 0000001E
/* 002BC 809FC48C 3C028016 */  lui     $v0, %hi(gSaveContext+0xc)
/* 002C0 809FC490 9442E66C */  lhu     $v0, %lo(gSaveContext+0xc)($v0)
/* 002C4 809FC494 3401C001 */  ori     $at, $zero, 0xC001         ## $at = 0000C001
/* 002C8 809FC498 24030005 */  addiu   $v1, $zero, 0x0005         ## $v1 = 00000005
/* 002CC 809FC49C 0041082A */  slt     $at, $v0, $at              
/* 002D0 809FC4A0 14200006 */  bne     $at, $zero, .L809FC4BC     
/* 002D4 809FC4A4 3401E000 */  ori     $at, $zero, 0xE000         ## $at = 0000E000
/* 002D8 809FC4A8 0041082A */  slt     $at, $v0, $at              
/* 002DC 809FC4AC 10200003 */  beq     $at, $zero, .L809FC4BC     
/* 002E0 809FC4B0 00000000 */  nop
/* 002E4 809FC4B4 10000001 */  beq     $zero, $zero, .L809FC4BC   
/* 002E8 809FC4B8 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
.L809FC4BC:
/* 002EC 809FC4BC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002F0 809FC4C0 1461000D */  bne     $v1, $at, .L809FC4F8       
/* 002F4 809FC4C4 A4C00032 */  sh      $zero, 0x0032($a2)         ## 00000032
/* 002F8 809FC4C8 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 002FC 809FC4CC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00300 809FC4D0 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00304 809FC4D4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00308 809FC4D8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0030C 809FC4DC 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00310 809FC4E0 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00314 809FC4E4 14400031 */  bne     $v0, $zero, .L809FC5AC     
/* 00318 809FC4E8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0031C 809FC4EC 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 00320 809FC4F0 1000002E */  beq     $zero, $zero, .L809FC5AC   
/* 00324 809FC4F4 A4C80196 */  sh      $t0, 0x0196($a2)           ## 00000196
.L809FC4F8:
/* 00328 809FC4F8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0032C 809FC4FC 14610012 */  bne     $v1, $at, .L809FC548       
/* 00330 809FC500 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00334 809FC504 8CE51C44 */  lw      $a1, 0x1C44($a3)           ## 00001C44
/* 00338 809FC508 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0033C 809FC50C 0C00B6E3 */  jal     func_8002DB8C              
/* 00340 809FC510 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00344 809FC514 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00348 809FC518 44812000 */  mtc1    $at, $f4                   ## $f4 = 120.00
/* 0034C 809FC51C 3C0980A0 */  lui     $t1, %hi(func_809FC8F4)    ## $t1 = 80A00000
/* 00350 809FC520 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00354 809FC524 4600203C */  c.lt.s  $f4, $f0                   
/* 00358 809FC528 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0035C 809FC52C 2529C8F4 */  addiu   $t1, $t1, %lo(func_809FC8F4) ## $t1 = 809FC8F4
/* 00360 809FC530 240AE800 */  addiu   $t2, $zero, 0xE800         ## $t2 = FFFFE800
/* 00364 809FC534 4502001E */  bc1fl   .L809FC5B0                 
/* 00368 809FC538 84CA001C */  lh      $t2, 0x001C($a2)           ## 0000001C
/* 0036C 809FC53C ACC901D4 */  sw      $t1, 0x01D4($a2)           ## 000001D4
/* 00370 809FC540 1000001A */  beq     $zero, $zero, .L809FC5AC   
/* 00374 809FC544 A4CA0032 */  sh      $t2, 0x0032($a2)           ## 00000032
.L809FC548:
/* 00378 809FC548 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0037C 809FC54C 54610018 */  bnel    $v1, $at, .L809FC5B0       
/* 00380 809FC550 84CA001C */  lh      $t2, 0x001C($a2)           ## 0000001C
/* 00384 809FC554 84CB001C */  lh      $t3, 0x001C($a2)           ## 0000001C
/* 00388 809FC558 24010229 */  addiu   $at, $zero, 0x0229         ## $at = 00000229
/* 0038C 809FC55C 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xed6)
/* 00390 809FC560 316C003F */  andi    $t4, $t3, 0x003F           ## $t4 = 00000000
/* 00394 809FC564 258D0200 */  addiu   $t5, $t4, 0x0200           ## $t5 = 00000200
/* 00398 809FC568 31AEFFFF */  andi    $t6, $t5, 0xFFFF           ## $t6 = 00000200
/* 0039C 809FC56C 15C10007 */  bne     $t6, $at, .L809FC58C       
/* 003A0 809FC570 A4CD010E */  sh      $t5, 0x010E($a2)           ## 0000010E
/* 003A4 809FC574 95EFF536 */  lhu     $t7, %lo(gSaveContext+0xed6)($t7)
/* 003A8 809FC578 31F80010 */  andi    $t8, $t7, 0x0010           ## $t8 = 00000000
/* 003AC 809FC57C 57000004 */  bnel    $t8, $zero, .L809FC590     
/* 003B0 809FC580 8CC80004 */  lw      $t0, 0x0004($a2)           ## 00000004
/* 003B4 809FC584 10000009 */  beq     $zero, $zero, .L809FC5AC   
/* 003B8 809FC588 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
.L809FC58C:
/* 003BC 809FC58C 8CC80004 */  lw      $t0, 0x0004($a2)           ## 00000004
.L809FC590:
/* 003C0 809FC590 3C010800 */  lui     $at, 0x0800                ## $at = 08000000
/* 003C4 809FC594 3C1980A0 */  lui     $t9, %hi(func_809FC878)    ## $t9 = 80A00000
/* 003C8 809FC598 34210009 */  ori     $at, $at, 0x0009           ## $at = 08000009
/* 003CC 809FC59C 2739C878 */  addiu   $t9, $t9, %lo(func_809FC878) ## $t9 = 809FC878
/* 003D0 809FC5A0 01014825 */  or      $t1, $t0, $at              ## $t1 = 08000009
/* 003D4 809FC5A4 ACD901D4 */  sw      $t9, 0x01D4($a2)           ## 000001D4
/* 003D8 809FC5A8 ACC90004 */  sw      $t1, 0x0004($a2)           ## 00000004
.L809FC5AC:
/* 003DC 809FC5AC 84CA001C */  lh      $t2, 0x001C($a2)           ## 0000001C
.L809FC5B0:
/* 003E0 809FC5B0 000361C0 */  sll     $t4, $v1,  7               
/* 003E4 809FC5B4 314BFC7F */  andi    $t3, $t2, 0xFC7F           ## $t3 = 0000E800
/* 003E8 809FC5B8 016C6825 */  or      $t5, $t3, $t4              ## $t5 = 0000E800
/* 003EC 809FC5BC A4CD001C */  sh      $t5, 0x001C($a2)           ## 0000001C
.L809FC5C0:
/* 003F0 809FC5C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003F4 809FC5C4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003F8 809FC5C8 03E00008 */  jr      $ra                        
/* 003FC 809FC5CC 00000000 */  nop
