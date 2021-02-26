glabel func_80A1C400
/* 01A60 80A1C400 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01A64 80A1C404 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01A68 80A1C408 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01A6C 80A1C40C 84820386 */  lh      $v0, 0x0386($a0)           ## 00000386
/* 01A70 80A1C410 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A74 80A1C414 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 01A78 80A1C418 10400004 */  beq     $v0, $zero, .L80A1C42C     
/* 01A7C 80A1C41C 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 01A80 80A1C420 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01A84 80A1C424 1000000E */  beq     $zero, $zero, .L80A1C460   
/* 01A88 80A1C428 A48E0386 */  sh      $t6, 0x0386($a0)           ## 00000386
.L80A1C42C:
/* 01A8C 80A1C42C A60F0386 */  sh      $t7, 0x0386($s0)           ## 00000386
/* 01A90 80A1C430 A2000380 */  sb      $zero, 0x0380($s0)         ## 00000380
/* 01A94 80A1C434 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01A98 80A1C438 0C042F56 */  jal     func_8010BD58              
/* 01A9C 80A1C43C 2405002F */  addiu   $a1, $zero, 0x002F         ## $a1 = 0000002F
/* 01AA0 80A1C440 0C2870E2 */  jal     func_80A1C388              
/* 01AA4 80A1C444 92040380 */  lbu     $a0, 0x0380($s0)           ## 00000380
/* 01AA8 80A1C448 A2020381 */  sb      $v0, 0x0381($s0)           ## 00000381
/* 01AAC 80A1C44C 0C287092 */  jal     func_80A1C248              
/* 01AB0 80A1C450 304400FF */  andi    $a0, $v0, 0x00FF           ## $a0 = 00000000
/* 01AB4 80A1C454 3C1880A2 */  lui     $t8, %hi(func_80A1C580)    ## $t8 = 80A20000
/* 01AB8 80A1C458 2718C580 */  addiu   $t8, $t8, %lo(func_80A1C580) ## $t8 = 80A1C580
/* 01ABC 80A1C45C AE180354 */  sw      $t8, 0x0354($s0)           ## 00000354
.L80A1C460:
/* 01AC0 80A1C460 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01AC4 80A1C464 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01AC8 80A1C468 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01ACC 80A1C46C 03E00008 */  jr      $ra                        
/* 01AD0 80A1C470 00000000 */  nop
