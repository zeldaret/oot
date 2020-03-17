glabel func_80B07D7C
/* 0083C 80B07D7C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00840 80B07D80 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00844 80B07D84 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00848 80B07D88 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0084C 80B07D8C 0C00BC65 */  jal     func_8002F194              
/* 00850 80B07D90 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00854 80B07D94 10400007 */  beq     $v0, $zero, .L80B07DB4     
/* 00858 80B07D98 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0085C 80B07D9C 3C0580B0 */  lui     $a1, %hi(func_80B07D00)    ## $a1 = 80B00000
/* 00860 80B07DA0 24A57D00 */  addiu   $a1, $a1, %lo(func_80B07D00) ## $a1 = 80B07D00
/* 00864 80B07DA4 0C2C1D50 */  jal     func_80B07540              
/* 00868 80B07DA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0086C 80B07DAC 10000013 */  beq     $zero, $zero, .L80B07DFC   
/* 00870 80B07DB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B07DB4:
/* 00874 80B07DB4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00878 80B07DB8 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.00
/* 0087C 80B07DBC 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 00880 80B07DC0 15C00003 */  bne     $t6, $zero, .L80B07DD0     
/* 00884 80B07DC4 24180021 */  addiu   $t8, $zero, 0x0021         ## $t8 = 00000021
/* 00888 80B07DC8 10000002 */  beq     $zero, $zero, .L80B07DD4   
/* 0088C 80B07DCC A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
.L80B07DD0:
/* 00890 80B07DD0 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
.L80B07DD4:
/* 00894 80B07DD4 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00898 80B07DD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0089C 80B07DDC 4600203C */  c.lt.s  $f4, $f0                   
/* 008A0 80B07DE0 00000000 */  nop
/* 008A4 80B07DE4 45020005 */  bc1fl   .L80B07DFC                 
/* 008A8 80B07DE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008AC 80B07DEC 44060000 */  mfc1    $a2, $f0                   
/* 008B0 80B07DF0 0C00BCB3 */  jal     func_8002F2CC              
/* 008B4 80B07DF4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 008B8 80B07DF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B07DFC:
/* 008BC 80B07DFC 0C2C1E78 */  jal     func_80B079E0              
/* 008C0 80B07E00 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 008C4 80B07E04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008C8 80B07E08 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 008CC 80B07E0C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 008D0 80B07E10 03E00008 */  jr      $ra                        
/* 008D4 80B07E14 00000000 */  nop


