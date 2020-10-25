.late_rodata
glabel D_80AB8AE8
    .float 5000.0

glabel D_80AB8AEC
    .float 5000.0

glabel D_80AB8AF0
    .float 5000.0

.text
glabel func_80AB6BF8
/* 01478 80AB6BF8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0147C 80AB6BFC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01480 80AB6C00 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01484 80AB6C04 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01488 80AB6C08 848E025A */  lh      $t6, 0x025A($a0)           ## 0000025A
/* 0148C 80AB6C0C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01490 80AB6C10 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 01494 80AB6C14 15C00004 */  bne     $t6, $zero, .L80AB6C28     
/* 01498 80AB6C18 3C0180AC */  lui     $at, %hi(D_80AB8AE8)       ## $at = 80AC0000
/* 0149C 80AB6C1C 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 014A0 80AB6C20 A48F02A6 */  sh      $t7, 0x02A6($a0)           ## 000002A6
/* 014A4 80AB6C24 A498025A */  sh      $t8, 0x025A($a0)           ## 0000025A
.L80AB6C28:
/* 014A8 80AB6C28 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 014AC 80AB6C2C C42C8AE8 */  lwc1    $f12, %lo(D_80AB8AE8)($at) 
/* 014B0 80AB6C30 4600010D */  trunc.w.s $f4, $f0                   
/* 014B4 80AB6C34 3C0180AC */  lui     $at, %hi(D_80AB8AEC)       ## $at = 80AC0000
/* 014B8 80AB6C38 44082000 */  mfc1    $t0, $f4                   
/* 014BC 80AB6C3C 00000000 */  nop
/* 014C0 80AB6C40 A60800B4 */  sh      $t0, 0x00B4($s0)           ## 000000B4
/* 014C4 80AB6C44 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 014C8 80AB6C48 C42C8AEC */  lwc1    $f12, %lo(D_80AB8AEC)($at) 
/* 014CC 80AB6C4C 4600018D */  trunc.w.s $f6, $f0                   
/* 014D0 80AB6C50 3C0180AC */  lui     $at, %hi(D_80AB8AF0)       ## $at = 80AC0000
/* 014D4 80AB6C54 440A3000 */  mfc1    $t2, $f6                   
/* 014D8 80AB6C58 00000000 */  nop
/* 014DC 80AB6C5C A60A00B6 */  sh      $t2, 0x00B6($s0)           ## 000000B6
/* 014E0 80AB6C60 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 014E4 80AB6C64 C42C8AF0 */  lwc1    $f12, %lo(D_80AB8AF0)($at) 
/* 014E8 80AB6C68 4600020D */  trunc.w.s $f8, $f0                   
/* 014EC 80AB6C6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014F0 80AB6C70 440C4000 */  mfc1    $t4, $f8                   
/* 014F4 80AB6C74 00000000 */  nop
/* 014F8 80AB6C78 A60C00B8 */  sh      $t4, 0x00B8($s0)           ## 000000B8
/* 014FC 80AB6C7C 0C00BD68 */  jal     Actor_HasNoParent              
/* 01500 80AB6C80 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01504 80AB6C84 10400018 */  beq     $v0, $zero, .L80AB6CE8     
/* 01508 80AB6C88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0150C 80AB6C8C 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 01510 80AB6C90 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 01514 80AB6C94 3C0880AB */  lui     $t0, %hi(func_80AB6D08)    ## $t0 = 80AB0000
/* 01518 80AB6C98 15A1000B */  bne     $t5, $at, .L80AB6CC8       
/* 0151C 80AB6C9C 25086D08 */  addiu   $t0, $t0, %lo(func_80AB6D08) ## $t0 = 80AB6D08
/* 01520 80AB6CA0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01524 80AB6CA4 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 01528 80AB6CA8 3C0F80AB */  lui     $t7, %hi(func_80AB6EB4)    ## $t7 = 80AB0000
/* 0152C 80AB6CAC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01530 80AB6CB0 25EF6EB4 */  addiu   $t7, $t7, %lo(func_80AB6EB4) ## $t7 = 80AB6EB4
/* 01534 80AB6CB4 A6000260 */  sh      $zero, 0x0260($s0)         ## 00000260
/* 01538 80AB6CB8 A60E02A6 */  sh      $t6, 0x02A6($s0)           ## 000002A6
/* 0153C 80AB6CBC AE0F0250 */  sw      $t7, 0x0250($s0)           ## 00000250
/* 01540 80AB6CC0 1000000C */  beq     $zero, $zero, .L80AB6CF4   
/* 01544 80AB6CC4 E60A0060 */  swc1    $f10, 0x0060($s0)          ## 00000060
.L80AB6CC8:
/* 01548 80AB6CC8 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 0154C 80AB6CCC 860200B8 */  lh      $v0, 0x00B8($s0)           ## 000000B8
/* 01550 80AB6CD0 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 01554 80AB6CD4 AE080250 */  sw      $t0, 0x0250($s0)           ## 00000250
/* 01558 80AB6CD8 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 0155C 80AB6CDC 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 01560 80AB6CE0 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 01564 80AB6CE4 A60200B4 */  sh      $v0, 0x00B4($s0)           ## 000000B4
.L80AB6CE8:
/* 01568 80AB6CE8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0156C 80AB6CEC 0C2AD6FE */  jal     func_80AB5BF8              
/* 01570 80AB6CF0 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
.L80AB6CF4:
/* 01574 80AB6CF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01578 80AB6CF8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0157C 80AB6CFC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01580 80AB6D00 03E00008 */  jr      $ra                        
/* 01584 80AB6D04 00000000 */  nop
