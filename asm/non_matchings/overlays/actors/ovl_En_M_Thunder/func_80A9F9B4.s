.late_rodata
glabel D_80AA050C
    .float 0.6

glabel D_80AA0510
 .word 0x3FD55555

.text
glabel func_80A9F9B4
/* 009D4 80A9F9B4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 009D8 80A9F9B8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 009DC 80A9F9BC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 009E0 80A9F9C0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 009E4 80A9F9C4 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 009E8 80A9F9C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009EC 80A9F9CC 248401AC */  addiu   $a0, $a0, 0x01AC           ## $a0 = 000001AC
/* 009F0 80A9F9D0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 009F4 80A9F9D4 3C063D80 */  lui     $a2, 0x3D80                ## $a2 = 3D800000
/* 009F8 80A9F9D8 0C01DE80 */  jal     Math_ApproxF
              
/* 009FC 80A9F9DC AFAF002C */  sw      $t7, 0x002C($sp)           
/* 00A00 80A9F9E0 50400006 */  beql    $v0, $zero, .L80A9F9FC     
/* 00A04 80A9F9E4 921801C9 */  lbu     $t8, 0x01C9($s0)           ## 000001C9
/* 00A08 80A9F9E8 0C00B55C */  jal     Actor_Kill
              
/* 00A0C 80A9F9EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A10 80A9F9F0 10000025 */  beq     $zero, $zero, .L80A9FA88   
/* 00A14 80A9F9F4 960201C4 */  lhu     $v0, 0x01C4($s0)           ## 000001C4
/* 00A18 80A9F9F8 921801C9 */  lbu     $t8, 0x01C9($s0)           ## 000001C9
.L80A9F9FC:
/* 00A1C 80A9F9FC 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00A20 80A9FA00 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 00A24 80A9FA04 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00A28 80A9FA08 3C073F4C */  lui     $a3, 0x3F4C                ## $a3 = 3F4C0000
/* 00A2C 80A9FA0C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3F4CCCCD
/* 00A30 80A9FA10 46802120 */  cvt.s.w $f4, $f4                   
/* 00A34 80A9FA14 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 00A38 80A9FA18 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 00A3C 80A9FA1C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00A40 80A9FA20 44052000 */  mfc1    $a1, $f4                   
/* 00A44 80A9FA24 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00A48 80A9FA28 00000000 */  nop
/* 00A4C 80A9FA2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A50 80A9FA30 0C00B58B */  jal     Actor_SetScale
              
/* 00A54 80A9FA34 8E050050 */  lw      $a1, 0x0050($s0)           ## 00000050
/* 00A58 80A9FA38 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00A5C 80A9FA3C 44815000 */  mtc1    $at, $f10                  ## $f10 = 25.00
/* 00A60 80A9FA40 C6080050 */  lwc1    $f8, 0x0050($s0)           ## 00000050
/* 00A64 80A9FA44 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 00A68 80A9FA48 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 00A6C 80A9FA4C 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00A70 80A9FA50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A74 80A9FA54 4600848D */  trunc.w.s $f18, $f16                 
/* 00A78 80A9FA58 44089000 */  mfc1    $t0, $f18                  
/* 00A7C 80A9FA5C 00000000 */  nop
/* 00A80 80A9FA60 A608018C */  sh      $t0, 0x018C($s0)           ## 0000018C
/* 00A84 80A9FA64 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00A88 80A9FA68 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00A8C 80A9FA6C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00A90 80A9FA70 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A94 80A9FA74 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00A98 80A9FA78 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00A9C 80A9FA7C 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00AA0 80A9FA80 00812821 */  addu    $a1, $a0, $at              
/* 00AA4 80A9FA84 960201C4 */  lhu     $v0, 0x01C4($s0)           ## 000001C4
.L80A9FA88:
/* 00AA8 80A9FA88 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 00AAC 80A9FA8C 3C0180AA */  lui     $at, %hi(D_80AA050C)       ## $at = 80AA0000
/* 00AB0 80A9FA90 18400007 */  blez    $v0, .L80A9FAB0            
/* 00AB4 80A9FA94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB8 80A9FA98 C4640908 */  lwc1    $f4, 0x0908($v1)           ## 00000908
/* 00ABC 80A9FA9C 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 00AC0 80A9FAA0 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 00AC4 80A9FAA4 C4660910 */  lwc1    $f6, 0x0910($v1)           ## 00000910
/* 00AC8 80A9FAA8 A60901C4 */  sh      $t1, 0x01C4($s0)           ## 000001C4
/* 00ACC 80A9FAAC E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
.L80A9FAB0:
/* 00AD0 80A9FAB0 C60001AC */  lwc1    $f0, 0x01AC($s0)           ## 000001AC
/* 00AD4 80A9FAB4 C428050C */  lwc1    $f8, %lo(D_80AA050C)($at)  
/* 00AD8 80A9FAB8 3C0180AA */  lui     $at, %hi(D_80AA0510)       ## $at = 80AA0000
/* 00ADC 80A9FABC 4600403C */  c.lt.s  $f8, $f0                   
/* 00AE0 80A9FAC0 00000000 */  nop
/* 00AE4 80A9FAC4 45000005 */  bc1f    .L80A9FADC                 
/* 00AE8 80A9FAC8 00000000 */  nop
/* 00AEC 80A9FACC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00AF0 80A9FAD0 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 00AF4 80A9FAD4 10000004 */  beq     $zero, $zero, .L80A9FAE8   
/* 00AF8 80A9FAD8 E60A01B0 */  swc1    $f10, 0x01B0($s0)          ## 000001B0
.L80A9FADC:
/* 00AFC 80A9FADC C4300510 */  lwc1    $f16, %lo(D_80AA0510)($at) 
/* 00B00 80A9FAE0 46100482 */  mul.s   $f18, $f0, $f16            
/* 00B04 80A9FAE4 E61201B0 */  swc1    $f18, 0x01B0($s0)          ## 000001B0
.L80A9FAE8:
/* 00B08 80A9FAE8 0C2A7E4E */  jal     func_80A9F938              
/* 00B0C 80A9FAEC 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00B10 80A9FAF0 0C02FF21 */  jal     Gameplay_InCsMode              
/* 00B14 80A9FAF4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00B18 80A9FAF8 50400004 */  beql    $v0, $zero, .L80A9FB0C     
/* 00B1C 80A9FAFC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B20 80A9FB00 0C00B55C */  jal     Actor_Kill
              
/* 00B24 80A9FB04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B28 80A9FB08 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A9FB0C:
/* 00B2C 80A9FB0C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00B30 80A9FB10 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00B34 80A9FB14 03E00008 */  jr      $ra                        
/* 00B38 80A9FB18 00000000 */  nop
