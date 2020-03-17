glabel func_808BE99C
/* 0049C 808BE99C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004A0 808BE9A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 004A4 808BE9A4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 004A8 808BE9A8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 004AC 808BE9AC 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
/* 004B0 808BE9B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004B4 808BE9B4 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 004B8 808BE9B8 10400003 */  beq     $v0, $zero, .L808BE9C8     
/* 004BC 808BE9BC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 004C0 808BE9C0 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
/* 004C4 808BE9C4 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
.L808BE9C8:
/* 004C8 808BE9C8 14400012 */  bne     $v0, $zero, .L808BEA14     
/* 004CC 808BE9CC 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 004D0 808BE9D0 8E05000C */  lw      $a1, 0x000C($s0)           ## 0000000C
/* 004D4 808BE9D4 0C01DE80 */  jal     Math_ApproxF
              
/* 004D8 808BE9D8 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 004DC 808BE9DC 10400009 */  beq     $v0, $zero, .L808BEA04     
/* 004E0 808BE9E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004E4 808BE9E4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 004E8 808BE9E8 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 004EC 808BE9EC 92050168 */  lbu     $a1, 0x0168($s0)           ## 00000168
/* 004F0 808BE9F0 3C0F808C */  lui     $t7, %hi(func_808BE930)    ## $t7 = 808C0000
/* 004F4 808BE9F4 25EFE930 */  addiu   $t7, $t7, %lo(func_808BE930) ## $t7 = 808BE930
/* 004F8 808BE9F8 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 004FC 808BE9FC 10000016 */  beq     $zero, $zero, .L808BEA58   
/* 00500 808BEA00 AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
.L808BEA04:
/* 00504 808BEA04 0C00BE52 */  jal     func_8002F948              
/* 00508 808BEA08 24052024 */  addiu   $a1, $zero, 0x2024         ## $a1 = 00002024
/* 0050C 808BEA0C 10000013 */  beq     $zero, $zero, .L808BEA5C   
/* 00510 808BEA10 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BEA14:
/* 00514 808BEA14 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00518 808BEA18 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 0051C 808BEA1C 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00520 808BEA20 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 00524 808BEA24 46062200 */  add.s   $f8, $f4, $f6              
/* 00528 808BEA28 44054000 */  mfc1    $a1, $f8                   
/* 0052C 808BEA2C 0C01DE80 */  jal     Math_ApproxF
              
/* 00530 808BEA30 00000000 */  nop
/* 00534 808BEA34 14400006 */  bne     $v0, $zero, .L808BEA50     
/* 00538 808BEA38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0053C 808BEA3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00540 808BEA40 0C00BE52 */  jal     func_8002F948              
/* 00544 808BEA44 24052024 */  addiu   $a1, $zero, 0x2024         ## $a1 = 00002024
/* 00548 808BEA48 10000004 */  beq     $zero, $zero, .L808BEA5C   
/* 0054C 808BEA4C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BEA50:
/* 00550 808BEA50 0C00BE65 */  jal     func_8002F994              
/* 00554 808BEA54 8605016A */  lh      $a1, 0x016A($s0)           ## 0000016A
.L808BEA58:
/* 00558 808BEA58 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BEA5C:
/* 0055C 808BEA5C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00560 808BEA60 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00564 808BEA64 03E00008 */  jr      $ra                        
/* 00568 808BEA68 00000000 */  nop


