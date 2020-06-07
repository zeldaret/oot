glabel func_80A1F2A8
/* 00D08 80A1F2A8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00D0C 80A1F2AC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00D10 80A1F2B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D14 80A1F2B4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00D18 80A1F2B8 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00D1C 80A1F2BC 8E050118 */  lw      $a1, 0x0118($s0)           ## 00000118
/* 00D20 80A1F2C0 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 00D24 80A1F2C4 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 00D28 80A1F2C8 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00D2C 80A1F2CC 24A50008 */  addiu   $a1, $a1, 0x0008           ## $a1 = 00000008
/* 00D30 80A1F2D0 00022C00 */  sll     $a1, $v0, 16               
/* 00D34 80A1F2D4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00D38 80A1F2D8 A7A20036 */  sh      $v0, 0x0036($sp)           
/* 00D3C 80A1F2DC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00D40 80A1F2E0 00052C03 */  sra     $a1, $a1, 16               
/* 00D44 80A1F2E4 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00D48 80A1F2E8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00D4C 80A1F2EC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00D50 80A1F2F0 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 00D54 80A1F2F4 87AF0036 */  lh      $t7, 0x0036($sp)           
/* 00D58 80A1F2F8 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 00D5C 80A1F2FC 01F81823 */  subu    $v1, $t7, $t8              
/* 00D60 80A1F300 04600003 */  bltz    $v1, .L80A1F310            
/* 00D64 80A1F304 00031023 */  subu    $v0, $zero, $v1            
/* 00D68 80A1F308 10000001 */  beq     $zero, $zero, .L80A1F310   
/* 00D6C 80A1F30C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A1F310:
/* 00D70 80A1F310 28410065 */  slti    $at, $v0, 0x0065           
/* 00D74 80A1F314 5020001D */  beql    $at, $zero, .L80A1F38C     
/* 00D78 80A1F318 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D7C 80A1F31C 8A0800B4 */  lwl     $t0, 0x00B4($s0)           ## 000000B4
/* 00D80 80A1F320 9A0800B7 */  lwr     $t0, 0x00B7($s0)           ## 000000B7
/* 00D84 80A1F324 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 00D88 80A1F328 44812000 */  mtc1    $at, $f4                   ## $f4 = 14.00
/* 00D8C 80A1F32C AA080030 */  swl     $t0, 0x0030($s0)           ## 00000030
/* 00D90 80A1F330 BA080033 */  swr     $t0, 0x0033($s0)           ## 00000033
/* 00D94 80A1F334 960800B8 */  lhu     $t0, 0x00B8($s0)           ## 000000B8
/* 00D98 80A1F338 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 00D9C 80A1F33C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DA0 80A1F340 A6080034 */  sh      $t0, 0x0034($s0)           ## 00000034
/* 00DA4 80A1F344 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 00DA8 80A1F348 2405386C */  addiu   $a1, $zero, 0x386C         ## $a1 = 0000386C
/* 00DAC 80A1F34C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 00000000
/* 00DB0 80A1F350 AE0B0008 */  sw      $t3, 0x0008($s0)           ## 00000008
/* 00DB4 80A1F354 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 00000004
/* 00DB8 80A1F358 AE0A000C */  sw      $t2, 0x000C($s0)           ## 0000000C
/* 00DBC 80A1F35C 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 00000008
/* 00DC0 80A1F360 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DC4 80A1F364 AE0B0010 */  sw      $t3, 0x0010($s0)           ## 00000010
/* 00DC8 80A1F368 3C0580A2 */  lui     $a1, %hi(D_80A1FBA0)       ## $a1 = 80A20000
/* 00DCC 80A1F36C 24A5FBA0 */  addiu   $a1, $a1, %lo(D_80A1FBA0)  ## $a1 = 80A1FBA0
/* 00DD0 80A1F370 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00DD4 80A1F374 0C00D3B0 */  jal     func_80034EC0              
/* 00DD8 80A1F378 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00DDC 80A1F37C 3C0C80A2 */  lui     $t4, %hi(func_80A1F39C)    ## $t4 = 80A20000
/* 00DE0 80A1F380 258CF39C */  addiu   $t4, $t4, %lo(func_80A1F39C) ## $t4 = 80A1F39C
/* 00DE4 80A1F384 AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
/* 00DE8 80A1F388 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A1F38C:
/* 00DEC 80A1F38C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00DF0 80A1F390 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00DF4 80A1F394 03E00008 */  jr      $ra                        
/* 00DF8 80A1F398 00000000 */  nop
