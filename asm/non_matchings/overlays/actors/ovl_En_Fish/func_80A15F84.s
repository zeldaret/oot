.rdata
glabel D_80A170A0
    .asciz "\x1B[43;30m"
    .balign 4

glabel D_80A170AC
    .asciz "BG 抜け？ Actor_delete します(%s %d)\n"
    .balign 4

glabel D_80A170D4
    .asciz "../z_en_sakana.c"
    .balign 4
    
glabel D_80A170E8
    .asciz "\x1b[m"
    .balign 4
.late_rodata
glabel D_80A171B0
    .float 0.1

glabel D_80A171B4
    .float -31990.0

.text
glabel func_80A15F84
/* 00D04 80A15F84 3C0180A1 */  lui     $at, %hi(D_80A171B0)       ## $at = 80A10000
/* 00D08 80A15F88 C42271B0 */  lwc1    $f2, %lo(D_80A171B0)($at)  
/* 00D0C 80A15F8C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00D10 80A15F90 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D14 80A15F94 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00D18 80A15F98 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00D1C 80A15F9C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D20 80A15FA0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00D24 80A15FA4 44061000 */  mfc1    $a2, $f2                   
/* 00D28 80A15FA8 44071000 */  mfc1    $a3, $f2                   
/* 00D2C 80A15FAC 44050000 */  mfc1    $a1, $f0                   
/* 00D30 80A15FB0 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 00D34 80A15FB4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00D38 80A15FB8 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00D3C 80A15FBC 26040030 */  addiu   $a0, $s0, 0x0030           ## $a0 = 00000030
/* 00D40 80A15FC0 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00D44 80A15FC4 0C01DED6 */  jal     func_80077B58              
/* 00D48 80A15FC8 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 00D4C 80A15FCC 26040034 */  addiu   $a0, $s0, 0x0034           ## $a0 = 00000034
/* 00D50 80A15FD0 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 00D54 80A15FD4 0C01DED6 */  jal     func_80077B58              
/* 00D58 80A15FD8 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 00D5C 80A15FDC 860E0030 */  lh      $t6, 0x0030($s0)           ## 00000030
/* 00D60 80A15FE0 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 00D64 80A15FE4 86180034 */  lh      $t8, 0x0034($s0)           ## 00000034
/* 00D68 80A15FE8 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 00D6C 80A15FEC A60E00B4 */  sh      $t6, 0x00B4($s0)           ## 000000B4
/* 00D70 80A15FF0 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 00D74 80A15FF4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D78 80A15FF8 A61800B8 */  sh      $t8, 0x00B8($s0)           ## 000000B8
/* 00D7C 80A15FFC 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00D80 80A16000 24080190 */  addiu   $t0, $zero, 0x0190         ## $t0 = 00000190
/* 00D84 80A16004 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D88 80A16008 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000000
/* 00D8C 80A1600C 13200005 */  beq     $t9, $zero, .L80A16024     
/* 00D90 80A16010 30490020 */  andi    $t1, $v0, 0x0020           ## $t1 = 00000000
/* 00D94 80A16014 0C28582F */  jal     func_80A160BC              
/* 00D98 80A16018 A6080248 */  sh      $t0, 0x0248($s0)           ## 00000248
/* 00D9C 80A1601C 10000023 */  beq     $zero, $zero, .L80A160AC   
/* 00DA0 80A16020 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A16024:
/* 00DA4 80A16024 51200006 */  beql    $t1, $zero, .L80A16040     
/* 00DA8 80A16028 860A0248 */  lh      $t2, 0x0248($s0)           ## 00000248
/* 00DAC 80A1602C 0C2858F7 */  jal     func_80A163DC              
/* 00DB0 80A16030 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DB4 80A16034 1000001D */  beq     $zero, $zero, .L80A160AC   
/* 00DB8 80A16038 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DBC 80A1603C 860A0248 */  lh      $t2, 0x0248($s0)           ## 00000248
.L80A16040:
/* 00DC0 80A16040 5D40001A */  bgtzl   $t2, .L80A160AC            
/* 00DC4 80A16044 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DC8 80A16048 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00DCC 80A1604C 3C0180A1 */  lui     $at, %hi(D_80A171B4)       ## $at = 80A10000
/* 00DD0 80A16050 55600016 */  bnel    $t3, $zero, .L80A160AC     
/* 00DD4 80A16054 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DD8 80A16058 C6040080 */  lwc1    $f4, 0x0080($s0)           ## 00000080
/* 00DDC 80A1605C C42671B4 */  lwc1    $f6, %lo(D_80A171B4)($at)  
/* 00DE0 80A16060 3C0480A1 */  lui     $a0, %hi(D_80A170A0)       ## $a0 = 80A10000
/* 00DE4 80A16064 4606203C */  c.lt.s  $f4, $f6                   
/* 00DE8 80A16068 00000000 */  nop
/* 00DEC 80A1606C 4502000F */  bc1fl   .L80A160AC                 
/* 00DF0 80A16070 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DF4 80A16074 0C00084C */  jal     osSyncPrintf
              
/* 00DF8 80A16078 248470A0 */  addiu   $a0, $a0, %lo(D_80A170A0)  ## $a0 = 80A170A0
/* 00DFC 80A1607C 3C0480A1 */  lui     $a0, %hi(D_80A170AC)       ## $a0 = 80A10000
/* 00E00 80A16080 3C0580A1 */  lui     $a1, %hi(D_80A170D4)       ## $a1 = 80A10000
/* 00E04 80A16084 24A570D4 */  addiu   $a1, $a1, %lo(D_80A170D4)  ## $a1 = 80A170D4
/* 00E08 80A16088 248470AC */  addiu   $a0, $a0, %lo(D_80A170AC)  ## $a0 = 80A170AC
/* 00E0C 80A1608C 0C00084C */  jal     osSyncPrintf
              
/* 00E10 80A16090 24060336 */  addiu   $a2, $zero, 0x0336         ## $a2 = 00000336
/* 00E14 80A16094 3C0480A1 */  lui     $a0, %hi(D_80A170E8)       ## $a0 = 80A10000
/* 00E18 80A16098 0C00084C */  jal     osSyncPrintf
              
/* 00E1C 80A1609C 248470E8 */  addiu   $a0, $a0, %lo(D_80A170E8)  ## $a0 = 80A170E8
/* 00E20 80A160A0 0C00B55C */  jal     Actor_Kill
              
/* 00E24 80A160A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E28 80A160A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A160AC:
/* 00E2C 80A160AC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00E30 80A160B0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E34 80A160B4 03E00008 */  jr      $ra                        
/* 00E38 80A160B8 00000000 */  nop
