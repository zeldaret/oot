.late_rodata
glabel D_80A01A00
 .word 0x3DA0D97C
glabel D_80A01A04
    .float 0.05

.text
glabel func_80A00C70
/* 00CD0 80A00C70 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00CD4 80A00C74 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00CD8 80A00C78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CDC 80A00C7C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CE0 80A00C80 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00CE4 80A00C84 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00CE8 80A00C88 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00CEC 80A00C8C 86030194 */  lh      $v1, 0x0194($s0)           ## 00000194
/* 00CF0 80A00C90 10600002 */  beq     $v1, $zero, .L80A00C9C     
/* 00CF4 80A00C94 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 00CF8 80A00C98 A60E0194 */  sh      $t6, 0x0194($s0)           ## 00000194
.L80A00C9C:
/* 00CFC 80A00C9C C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
/* 00D00 80A00CA0 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00D04 80A00CA4 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 00D08 80A00CA8 E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 00D0C 80A00CAC C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 00D10 80A00CB0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00D14 80A00CB4 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 00D18 80A00CB8 46083280 */  add.s   $f10, $f6, $f8             
/* 00D1C 80A00CBC 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00D20 80A00CC0 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00D24 80A00CC4 8E070068 */  lw      $a3, 0x0068($s0)           ## 00000068
/* 00D28 80A00CC8 46105480 */  add.s   $f18, $f10, $f16           
/* 00D2C 80A00CCC 26040280 */  addiu   $a0, $s0, 0x0280           ## $a0 = 00000280
/* 00D30 80A00CD0 44059000 */  mfc1    $a1, $f18                  
/* 00D34 80A00CD4 0C01E107 */  jal     Math_ApproachF
              
/* 00D38 80A00CD8 00000000 */  nop
/* 00D3C 80A00CDC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00D40 80A00CE0 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 00D44 80A00CE4 C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 00D48 80A00CE8 3C0180A0 */  lui     $at, %hi(D_80A01A00)       ## $at = 80A00000
/* 00D4C 80A00CEC C42A1A00 */  lwc1    $f10, %lo(D_80A01A00)($at) 
/* 00D50 80A00CF0 46062201 */  sub.s   $f8, $f4, $f6              
/* 00D54 80A00CF4 460A4302 */  mul.s   $f12, $f8, $f10            
/* 00D58 80A00CF8 0C041184 */  jal     cosf
              
/* 00D5C 80A00CFC 00000000 */  nop
/* 00D60 80A00D00 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00D64 80A00D04 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 00D68 80A00D08 C6100280 */  lwc1    $f16, 0x0280($s0)          ## 00000280
/* 00D6C 80A00D0C 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 00D70 80A00D10 46120102 */  mul.s   $f4, $f0, $f18             
/* 00D74 80A00D14 44814000 */  mtc1    $at, $f8                   ## $f8 = 45.00
/* 00D78 80A00D18 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00D7C 80A00D1C 3C053FC0 */  lui     $a1, 0x3FC0                ## $a1 = 3FC00000
/* 00D80 80A00D20 3C063CF5 */  lui     $a2, 0x3CF5                ## $a2 = 3CF50000
/* 00D84 80A00D24 46048181 */  sub.s   $f6, $f16, $f4             
/* 00D88 80A00D28 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 00D8C 80A00D2C C7AA002C */  lwc1    $f10, 0x002C($sp)          
/* 00D90 80A00D30 4608503E */  c.le.s  $f10, $f8                  
/* 00D94 80A00D34 00000000 */  nop
/* 00D98 80A00D38 45000008 */  bc1f    .L80A00D5C                 
/* 00D9C 80A00D3C 00000000 */  nop
/* 00DA0 80A00D40 3C063CF5 */  lui     $a2, 0x3CF5                ## $a2 = 3CF50000
/* 00DA4 80A00D44 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3CF5C28F
/* 00DA8 80A00D48 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00DAC 80A00D4C 0C01DE80 */  jal     Math_StepToF
              
/* 00DB0 80A00D50 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00DB4 80A00D54 10000004 */  beq     $zero, $zero, .L80A00D68   
/* 00DB8 80A00D58 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
.L80A00D5C:
/* 00DBC 80A00D5C 0C01DE80 */  jal     Math_StepToF
              
/* 00DC0 80A00D60 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 0000C28F
/* 00DC4 80A00D64 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
.L80A00D68:
/* 00DC8 80A00D68 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00DCC 80A00D6C 240600B6 */  addiu   $a2, $zero, 0x00B6         ## $a2 = 000000B6
/* 00DD0 80A00D70 31F80008 */  andi    $t8, $t7, 0x0008           ## $t8 = 00000000
/* 00DD4 80A00D74 13000003 */  beq     $t8, $zero, .L80A00D84     
/* 00DD8 80A00D78 00000000 */  nop
/* 00DDC 80A00D7C 8619007E */  lh      $t9, 0x007E($s0)           ## 0000007E
/* 00DE0 80A00D80 A6190196 */  sh      $t9, 0x0196($s0)           ## 00000196
.L80A00D84:
/* 00DE4 80A00D84 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 00DE8 80A00D88 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
/* 00DEC 80A00D8C 50400025 */  beql    $v0, $zero, .L80A00E24     
/* 00DF0 80A00D90 860F0194 */  lh      $t7, 0x0194($s0)           ## 00000194
/* 00DF4 80A00D94 86080194 */  lh      $t0, 0x0194($s0)           ## 00000194
/* 00DF8 80A00D98 5500000B */  bnel    $t0, $zero, .L80A00DC8     
/* 00DFC 80A00D9C 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 00E00 80A00DA0 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00E04 80A00DA4 00000000 */  nop
/* 00E08 80A00DA8 3C0180A0 */  lui     $at, %hi(D_80A01A04)       ## $at = 80A00000
/* 00E0C 80A00DAC C4321A04 */  lwc1    $f18, %lo(D_80A01A04)($at) 
/* 00E10 80A00DB0 24042000 */  addiu   $a0, $zero, 0x2000         ## $a0 = 00002000
/* 00E14 80A00DB4 4600903C */  c.lt.s  $f18, $f0                  
/* 00E18 80A00DB8 00000000 */  nop
/* 00E1C 80A00DBC 45000005 */  bc1f    .L80A00DD4                 
/* 00E20 80A00DC0 00000000 */  nop
/* 00E24 80A00DC4 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
.L80A00DC8:
/* 00E28 80A00DC8 252A0100 */  addiu   $t2, $t1, 0x0100           ## $t2 = 00000100
/* 00E2C 80A00DCC 10000014 */  beq     $zero, $zero, .L80A00E20   
/* 00E30 80A00DD0 A60A0032 */  sh      $t2, 0x0032($s0)           ## 00000032
.L80A00DD4:
/* 00E34 80A00DD4 0C01DF64 */  jal     Rand_S16Offset
              
/* 00E38 80A00DD8 24052000 */  addiu   $a1, $zero, 0x2000         ## $a1 = 00002000
/* 00E3C 80A00DDC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00E40 80A00DE0 A7A20026 */  sh      $v0, 0x0026($sp)           
/* 00E44 80A00DE4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00E48 80A00DE8 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00E4C 80A00DEC 87AB0026 */  lh      $t3, 0x0026($sp)           
/* 00E50 80A00DF0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00E54 80A00DF4 4610003C */  c.lt.s  $f0, $f16                  
/* 00E58 80A00DF8 00000000 */  nop
/* 00E5C 80A00DFC 45000003 */  bc1f    .L80A00E0C                 
/* 00E60 80A00E00 00000000 */  nop
/* 00E64 80A00E04 10000001 */  beq     $zero, $zero, .L80A00E0C   
/* 00E68 80A00E08 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80A00E0C:
/* 00E6C 80A00E0C 004B0019 */  multu   $v0, $t3                   
/* 00E70 80A00E10 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 00E74 80A00E14 00006012 */  mflo    $t4                        
/* 00E78 80A00E18 018D7021 */  addu    $t6, $t4, $t5              
/* 00E7C 80A00E1C A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
.L80A00E20:
/* 00E80 80A00E20 860F0194 */  lh      $t7, 0x0194($s0)           ## 00000194
.L80A00E24:
/* 00E84 80A00E24 55E00012 */  bnel    $t7, $zero, .L80A00E70     
/* 00E88 80A00E28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E8C 80A00E2C C6040094 */  lwc1    $f4, 0x0094($s0)           ## 00000094
/* 00E90 80A00E30 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00E94 80A00E34 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00E98 80A00E38 4606203C */  c.lt.s  $f4, $f6                   
/* 00E9C 80A00E3C 00000000 */  nop
/* 00EA0 80A00E40 4502000B */  bc1fl   .L80A00E70                 
/* 00EA4 80A00E44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EA8 80A00E48 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 00EAC 80A00E4C 44815000 */  mtc1    $at, $f10                  ## $f10 = 120.00
/* 00EB0 80A00E50 00000000 */  nop
/* 00EB4 80A00E54 460A403C */  c.lt.s  $f8, $f10                  
/* 00EB8 80A00E58 00000000 */  nop
/* 00EBC 80A00E5C 45020004 */  bc1fl   .L80A00E70                 
/* 00EC0 80A00E60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EC4 80A00E64 0C28014D */  jal     func_80A00534              
/* 00EC8 80A00E68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ECC 80A00E6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A00E70:
/* 00ED0 80A00E70 0C00BE5D */  jal     func_8002F974              
/* 00ED4 80A00E74 2405314F */  addiu   $a1, $zero, 0x314F         ## $a1 = 0000314F
/* 00ED8 80A00E78 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EDC 80A00E7C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00EE0 80A00E80 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00EE4 80A00E84 03E00008 */  jr      $ra                        
/* 00EE8 80A00E88 00000000 */  nop
