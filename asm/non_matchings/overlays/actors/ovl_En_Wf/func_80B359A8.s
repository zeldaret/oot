.late_rodata
glabel D_80B37BAC
    .float 0.7

glabel D_80B37BB0
    .float 0.7

.text
glabel func_80B359A8
/* 01CF8 80B359A8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01CFC 80B359AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01D00 80B359B0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01D04 80B359B4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01D08 80B359B8 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 01D0C 80B359BC 848200B6 */  lh      $v0, 0x00B6($a0)           ## 000000B6
/* 01D10 80B359C0 8498008A */  lh      $t8, 0x008A($a0)           ## 0000008A
/* 01D14 80B359C4 846F00B6 */  lh      $t7, 0x00B6($v1)           ## 000000B6
/* 01D18 80B359C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D1C 80B359CC 03023823 */  subu    $a3, $t8, $v0              
/* 01D20 80B359D0 01E23023 */  subu    $a2, $t7, $v0              
/* 01D24 80B359D4 00063400 */  sll     $a2, $a2, 16               
/* 01D28 80B359D8 00063403 */  sra     $a2, $a2, 16               
/* 01D2C 80B359DC 00073C00 */  sll     $a3, $a3, 16               
/* 01D30 80B359E0 04C10004 */  bgez    $a2, .L80B359F4            
/* 01D34 80B359E4 00073C03 */  sra     $a3, $a3, 16               
/* 01D38 80B359E8 00063023 */  subu    $a2, $zero, $a2            
/* 01D3C 80B359EC 00063400 */  sll     $a2, $a2, 16               
/* 01D40 80B359F0 00063403 */  sra     $a2, $a2, 16               
.L80B359F4:
/* 01D44 80B359F4 04E10004 */  bgez    $a3, .L80B35A08            
/* 01D48 80B359F8 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 01D4C 80B359FC 00073823 */  subu    $a3, $zero, $a3            
/* 01D50 80B35A00 00073C00 */  sll     $a3, $a3, 16               
/* 01D54 80B35A04 00073C03 */  sra     $a3, $a3, 16               
.L80B35A08:
/* 01D58 80B35A08 A7A60022 */  sh      $a2, 0x0022($sp)           
/* 01D5C 80B35A0C 0C02927F */  jal     SkelAnime_Update
              
/* 01D60 80B35A10 A7A70020 */  sh      $a3, 0x0020($sp)           
/* 01D64 80B35A14 1040005A */  beq     $v0, $zero, .L80B35B80     
/* 01D68 80B35A18 87A60022 */  lh      $a2, 0x0022($sp)           
/* 01D6C 80B35A1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D70 80B35A20 24051554 */  addiu   $a1, $zero, 0x1554         ## $a1 = 00001554
/* 01D74 80B35A24 0C00B821 */  jal     func_8002E084              
/* 01D78 80B35A28 A7A60022 */  sh      $a2, 0x0022($sp)           
/* 01D7C 80B35A2C 14400014 */  bne     $v0, $zero, .L80B35A80     
/* 01D80 80B35A30 87A60022 */  lh      $a2, 0x0022($sp)           
/* 01D84 80B35A34 0C2CD157 */  jal     func_80B3455C              
/* 01D88 80B35A38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D8C 80B35A3C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01D90 80B35A40 00000000 */  nop
/* 01D94 80B35A44 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01D98 80B35A48 44811000 */  mtc1    $at, $f2                   ## $f2 = 5.00
/* 01D9C 80B35A4C 240A001E */  addiu   $t2, $zero, 0x001E         ## $t2 = 0000001E
/* 01DA0 80B35A50 46020102 */  mul.s   $f4, $f0, $f2              
/* 01DA4 80B35A54 46022180 */  add.s   $f6, $f4, $f2              
/* 01DA8 80B35A58 4600320D */  trunc.w.s $f8, $f6                   
/* 01DAC 80B35A5C 44084000 */  mfc1    $t0, $f8                   
/* 01DB0 80B35A60 00000000 */  nop
/* 01DB4 80B35A64 AE0802E8 */  sw      $t0, 0x02E8($s0)           ## 000002E8
/* 01DB8 80B35A68 87A90020 */  lh      $t1, 0x0020($sp)           
/* 01DBC 80B35A6C 292132C9 */  slti    $at, $t1, 0x32C9           
/* 01DC0 80B35A70 54200044 */  bnel    $at, $zero, .L80B35B84     
/* 01DC4 80B35A74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01DC8 80B35A78 10000041 */  beq     $zero, $zero, .L80B35B80   
/* 01DCC 80B35A7C A60A02E2 */  sh      $t2, 0x02E2($s0)           ## 000002E2
.L80B35A80:
/* 01DD0 80B35A80 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01DD4 80B35A84 A7A60022 */  sh      $a2, 0x0022($sp)           
/* 01DD8 80B35A88 3C0180B3 */  lui     $at, %hi(D_80B37BAC)       ## $at = 80B30000
/* 01DDC 80B35A8C C42A7BAC */  lwc1    $f10, %lo(D_80B37BAC)($at) 
/* 01DE0 80B35A90 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 01DE4 80B35A94 87A60022 */  lh      $a2, 0x0022($sp)           
/* 01DE8 80B35A98 4600503C */  c.lt.s  $f10, $f0                  
/* 01DEC 80B35A9C 00000000 */  nop
/* 01DF0 80B35AA0 45010008 */  bc1t    .L80B35AC4                 
/* 01DF4 80B35AA4 00000000 */  nop
/* 01DF8 80B35AA8 C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
/* 01DFC 80B35AAC 44819000 */  mtc1    $at, $f18                  ## $f18 = 120.00
/* 01E00 80B35AB0 00000000 */  nop
/* 01E04 80B35AB4 4610903E */  c.le.s  $f18, $f16                 
/* 01E08 80B35AB8 00000000 */  nop
/* 01E0C 80B35ABC 4502000F */  bc1fl   .L80B35AFC                 
/* 01E10 80B35AC0 860D008A */  lh      $t5, 0x008A($s0)           ## 0000008A
.L80B35AC4:
/* 01E14 80B35AC4 0C2CD157 */  jal     func_80B3455C              
/* 01E18 80B35AC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E1C 80B35ACC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01E20 80B35AD0 00000000 */  nop
/* 01E24 80B35AD4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01E28 80B35AD8 44811000 */  mtc1    $at, $f2                   ## $f2 = 5.00
/* 01E2C 80B35ADC 00000000 */  nop
/* 01E30 80B35AE0 46020102 */  mul.s   $f4, $f0, $f2              
/* 01E34 80B35AE4 46022180 */  add.s   $f6, $f4, $f2              
/* 01E38 80B35AE8 4600320D */  trunc.w.s $f8, $f6                   
/* 01E3C 80B35AEC 440C4000 */  mfc1    $t4, $f8                   
/* 01E40 80B35AF0 10000023 */  beq     $zero, $zero, .L80B35B80   
/* 01E44 80B35AF4 AE0C02E8 */  sw      $t4, 0x02E8($s0)           ## 000002E8
/* 01E48 80B35AF8 860D008A */  lh      $t5, 0x008A($s0)           ## 0000008A
.L80B35AFC:
/* 01E4C 80B35AFC A60D0032 */  sh      $t5, 0x0032($s0)           ## 00000032
/* 01E50 80B35B00 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01E54 80B35B04 A7A60022 */  sh      $a2, 0x0022($sp)           
/* 01E58 80B35B08 3C0180B3 */  lui     $at, %hi(D_80B37BB0)       ## $at = 80B30000
/* 01E5C 80B35B0C C42A7BB0 */  lwc1    $f10, %lo(D_80B37BB0)($at) 
/* 01E60 80B35B10 87A60022 */  lh      $a2, 0x0022($sp)           
/* 01E64 80B35B14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E68 80B35B18 4600503C */  c.lt.s  $f10, $f0                  
/* 01E6C 80B35B1C 28C12711 */  slti    $at, $a2, 0x2711           
/* 01E70 80B35B20 45000005 */  bc1f    .L80B35B38                 
/* 01E74 80B35B24 00000000 */  nop
/* 01E78 80B35B28 0C2CD96A */  jal     func_80B365A8              
/* 01E7C 80B35B2C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01E80 80B35B30 10000014 */  beq     $zero, $zero, .L80B35B84   
/* 01E84 80B35B34 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B35B38:
/* 01E88 80B35B38 1020000F */  beq     $at, $zero, .L80B35B78     
/* 01E8C 80B35B3C 87AE0020 */  lh      $t6, 0x0020($sp)           
/* 01E90 80B35B40 29C13E81 */  slti    $at, $t6, 0x3E81           
/* 01E94 80B35B44 14200007 */  bne     $at, $zero, .L80B35B64     
/* 01E98 80B35B48 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01E9C 80B35B4C 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
/* 01EA0 80B35B50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EA4 80B35B54 0C2CD3CA */  jal     func_80B34F28              
/* 01EA8 80B35B58 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 01EAC 80B35B5C 10000009 */  beq     $zero, $zero, .L80B35B84   
/* 01EB0 80B35B60 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B35B64:
/* 01EB4 80B35B64 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01EB8 80B35B68 0C2CCFEC */  jal     func_80B33FB0              
/* 01EBC 80B35B6C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01EC0 80B35B70 10000004 */  beq     $zero, $zero, .L80B35B84   
/* 01EC4 80B35B74 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B35B78:
/* 01EC8 80B35B78 0C2CD3CA */  jal     func_80B34F28              
/* 01ECC 80B35B7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B35B80:
/* 01ED0 80B35B80 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B35B84:
/* 01ED4 80B35B84 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01ED8 80B35B88 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01EDC 80B35B8C 03E00008 */  jr      $ra                        
/* 01EE0 80B35B90 00000000 */  nop
