.late_rodata
glabel D_80A1719C
    .float 1.4

glabel D_80A171A0
    .float 0.8

.text
glabel func_80A157FC
/* 0057C 80A157FC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00580 80A15800 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00584 80A15804 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00588 80A15808 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0058C 80A1580C 0C285574 */  jal     func_80A155D0              
/* 00590 80A15810 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00594 80A15814 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00598 80A15818 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 0059C 80A1581C 3C073E99 */  lui     $a3, 0x3E99                ## $a3 = 3E990000
/* 005A0 80A15820 44050000 */  mfc1    $a1, $f0                   
/* 005A4 80A15824 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3E99999A
/* 005A8 80A15828 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 005AC 80A1582C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 005B0 80A15830 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 005B4 80A15834 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 005B8 80A15838 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 005BC 80A1583C 44811000 */  mtc1    $at, $f2                   ## $f2 = 2.00
/* 005C0 80A15840 3C0180A1 */  lui     $at, %hi(D_80A1719C)       ## $at = 80A10000
/* 005C4 80A15844 C426719C */  lwc1    $f6, %lo(D_80A1719C)($at)  
/* 005C8 80A15848 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 005CC 80A1584C 3C0180A1 */  lui     $at, %hi(D_80A171A0)       ## $at = 80A10000
/* 005D0 80A15850 C42A71A0 */  lwc1    $f10, %lo(D_80A171A0)($at) 
/* 005D4 80A15854 46062202 */  mul.s   $f8, $f4, $f6              
/* 005D8 80A15858 460A4000 */  add.s   $f0, $f8, $f10             
/* 005DC 80A1585C 4600103C */  c.lt.s  $f2, $f0                   
/* 005E0 80A15860 00000000 */  nop
/* 005E4 80A15864 45020004 */  bc1fl   .L80A15878                 
/* 005E8 80A15868 E60001C8 */  swc1    $f0, 0x01C8($s0)           ## 000001C8
/* 005EC 80A1586C 10000002 */  beq     $zero, $zero, .L80A15878   
/* 005F0 80A15870 E60201C8 */  swc1    $f2, 0x01C8($s0)           ## 000001C8
/* 005F4 80A15874 E60001C8 */  swc1    $f0, 0x01C8($s0)           ## 000001C8
.L80A15878:
/* 005F8 80A15878 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 005FC 80A1587C 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 00600 80A15880 860F0248 */  lh      $t7, 0x0248($s0)           ## 00000248
/* 00604 80A15884 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 00608 80A15888 1DE00005 */  bgtz    $t7, .L80A158A0            
/* 0060C 80A1588C A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
/* 00610 80A15890 0C28563B */  jal     func_80A158EC              
/* 00614 80A15894 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00618 80A15898 10000010 */  beq     $zero, $zero, .L80A158DC   
/* 0061C 80A1589C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A158A0:
/* 00620 80A158A0 8E18011C */  lw      $t8, 0x011C($s0)           ## 0000011C
/* 00624 80A158A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00628 80A158A8 16180005 */  bne     $s0, $t8, .L80A158C0       
/* 0062C 80A158AC 00000000 */  nop
/* 00630 80A158B0 0C285746 */  jal     func_80A15D18              
/* 00634 80A158B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00638 80A158B8 10000008 */  beq     $zero, $zero, .L80A158DC   
/* 0063C 80A158BC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A158C0:
/* 00640 80A158C0 0C2855DD */  jal     func_80A15774              
/* 00644 80A158C4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00648 80A158C8 50400004 */  beql    $v0, $zero, .L80A158DC     
/* 0064C 80A158CC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00650 80A158D0 0C2856B5 */  jal     func_80A15AD4              
/* 00654 80A158D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00658 80A158D8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A158DC:
/* 0065C 80A158DC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00660 80A158E0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00664 80A158E4 03E00008 */  jr      $ra                        
/* 00668 80A158E8 00000000 */  nop


