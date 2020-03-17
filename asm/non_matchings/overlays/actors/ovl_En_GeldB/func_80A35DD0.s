glabel func_80A35DD0
/* 00AC0 80A35DD0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00AC4 80A35DD4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AC8 80A35DD8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00ACC 80A35DDC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00AD0 80A35DE0 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00AD4 80A35DE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AD8 80A35DE8 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 00ADC 80A35DEC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00AE0 80A35DF0 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 00AE4 80A35DF4 860402FA */  lh      $a0, 0x02FA($s0)           ## 000002FA
/* 00AE8 80A35DF8 50800014 */  beql    $a0, $zero, .L80A35E4C     
/* 00AEC 80A35DFC 860B008A */  lh      $t3, 0x008A($s0)           ## 0000008A
/* 00AF0 80A35E00 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 00AF4 80A35E04 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 00AF8 80A35E08 860904DE */  lh      $t1, 0x04DE($s0)           ## 000004DE
/* 00AFC 80A35E0C 248AFFFF */  addiu   $t2, $a0, 0xFFFF           ## $t2 = FFFFFFFF
/* 00B00 80A35E10 03194023 */  subu    $t0, $t8, $t9              
/* 00B04 80A35E14 01091823 */  subu    $v1, $t0, $t1              
/* 00B08 80A35E18 00031C00 */  sll     $v1, $v1, 16               
/* 00B0C 80A35E1C 00031C03 */  sra     $v1, $v1, 16               
/* 00B10 80A35E20 04600003 */  bltz    $v1, .L80A35E30            
/* 00B14 80A35E24 00031023 */  subu    $v0, $zero, $v1            
/* 00B18 80A35E28 10000001 */  beq     $zero, $zero, .L80A35E30   
/* 00B1C 80A35E2C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A35E30:
/* 00B20 80A35E30 28412001 */  slti    $at, $v0, 0x2001           
/* 00B24 80A35E34 54200004 */  bnel    $at, $zero, .L80A35E48     
/* 00B28 80A35E38 A60002FA */  sh      $zero, 0x02FA($s0)         ## 000002FA
/* 00B2C 80A35E3C 10000097 */  beq     $zero, $zero, .L80A3609C   
/* 00B30 80A35E40 A60A02FA */  sh      $t2, 0x02FA($s0)           ## 000002FA
/* 00B34 80A35E44 A60002FA */  sh      $zero, 0x02FA($s0)         ## 000002FA
.L80A35E48:
/* 00B38 80A35E48 860B008A */  lh      $t3, 0x008A($s0)           ## 0000008A
.L80A35E4C:
/* 00B3C 80A35E4C 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 00B40 80A35E50 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00B44 80A35E54 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B48 80A35E58 016C1823 */  subu    $v1, $t3, $t4              
/* 00B4C 80A35E5C 00031C00 */  sll     $v1, $v1, 16               
/* 00B50 80A35E60 00031C03 */  sra     $v1, $v1, 16               
/* 00B54 80A35E64 0C28E78B */  jal     func_80A39E2C              
/* 00B58 80A35E68 A7A30026 */  sh      $v1, 0x0026($sp)           
/* 00B5C 80A35E6C 1440008B */  bne     $v0, $zero, .L80A3609C     
/* 00B60 80A35E70 87A30026 */  lh      $v1, 0x0026($sp)           
/* 00B64 80A35E74 860202F8 */  lh      $v0, 0x02F8($s0)           ## 000002F8
/* 00B68 80A35E78 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00B6C 80A35E7C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B70 80A35E80 1040000B */  beq     $v0, $zero, .L80A35EB0     
/* 00B74 80A35E84 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 00B78 80A35E88 04600003 */  bltz    $v1, .L80A35E98            
/* 00B7C 80A35E8C A60D02F8 */  sh      $t5, 0x02F8($s0)           ## 000002F8
/* 00B80 80A35E90 10000002 */  beq     $zero, $zero, .L80A35E9C   
/* 00B84 80A35E94 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A35E98:
/* 00B88 80A35E98 00031023 */  subu    $v0, $zero, $v1            
.L80A35E9C:
/* 00B8C 80A35E9C 28411FFE */  slti    $at, $v0, 0x1FFE           
/* 00B90 80A35EA0 5020007F */  beql    $at, $zero, .L80A360A0     
/* 00B94 80A35EA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B98 80A35EA8 10000005 */  beq     $zero, $zero, .L80A35EC0   
/* 00B9C 80A35EAC A60002F8 */  sh      $zero, 0x02F8($s0)         ## 000002F8
.L80A35EB0:
/* 00BA0 80A35EB0 0C28D567 */  jal     func_80A3559C              
/* 00BA4 80A35EB4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00BA8 80A35EB8 54400079 */  bnel    $v0, $zero, .L80A360A0     
/* 00BAC 80A35EBC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A35EC0:
/* 00BB0 80A35EC0 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 00BB4 80A35EC4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00BB8 80A35EC8 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00BBC 80A35ECC C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00BC0 80A35ED0 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00BC4 80A35ED4 844E00B6 */  lh      $t6, 0x00B6($v0)           ## 000000B6
/* 00BC8 80A35ED8 4606203C */  c.lt.s  $f4, $f6                   
/* 00BCC 80A35EDC 01CF1823 */  subu    $v1, $t6, $t7              
/* 00BD0 80A35EE0 00031C00 */  sll     $v1, $v1, 16               
/* 00BD4 80A35EE4 45000012 */  bc1f    .L80A35F30                 
/* 00BD8 80A35EE8 00031C03 */  sra     $v1, $v1, 16               
/* 00BDC 80A35EEC 80580843 */  lb      $t8, 0x0843($v0)           ## 00000843
/* 00BE0 80A35EF0 53000010 */  beql    $t8, $zero, .L80A35F34     
/* 00BE4 80A35EF4 8E190300 */  lw      $t9, 0x0300($s0)           ## 00000300
/* 00BE8 80A35EF8 04600003 */  bltz    $v1, .L80A35F08            
/* 00BEC 80A35EFC 00031023 */  subu    $v0, $zero, $v1            
/* 00BF0 80A35F00 10000001 */  beq     $zero, $zero, .L80A35F08   
/* 00BF4 80A35F04 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A35F08:
/* 00BF8 80A35F08 28411F40 */  slti    $at, $v0, 0x1F40           
/* 00BFC 80A35F0C 54200009 */  bnel    $at, $zero, .L80A35F34     
/* 00C00 80A35F10 8E190300 */  lw      $t9, 0x0300($s0)           ## 00000300
/* 00C04 80A35F14 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 00C08 80A35F18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C0C 80A35F1C A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 00C10 80A35F20 0C28DA84 */  jal     func_80A36A10              
/* 00C14 80A35F24 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00C18 80A35F28 1000005D */  beq     $zero, $zero, .L80A360A0   
/* 00C1C 80A35F2C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A35F30:
/* 00C20 80A35F30 8E190300 */  lw      $t9, 0x0300($s0)           ## 00000300
.L80A35F34:
/* 00C24 80A35F34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C28 80A35F38 24051555 */  addiu   $a1, $zero, 0x1555         ## $a1 = 00001555
/* 00C2C 80A35F3C 2728FFFF */  addiu   $t0, $t9, 0xFFFF           ## $t0 = FFFFFFFF
/* 00C30 80A35F40 15000056 */  bne     $t0, $zero, .L80A3609C     
/* 00C34 80A35F44 AE080300 */  sw      $t0, 0x0300($s0)           ## 00000300
/* 00C38 80A35F48 0C00B821 */  jal     func_8002E084              
/* 00C3C 80A35F4C A7A30026 */  sh      $v1, 0x0026($sp)           
/* 00C40 80A35F50 10400046 */  beq     $v0, $zero, .L80A3606C     
/* 00C44 80A35F54 87A30026 */  lh      $v1, 0x0026($sp)           
/* 00C48 80A35F58 3C014352 */  lui     $at, 0x4352                ## $at = 43520000
/* 00C4C 80A35F5C 44814000 */  mtc1    $at, $f8                   ## $f8 = 210.00
/* 00C50 80A35F60 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 00C54 80A35F64 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00C58 80A35F68 4608003C */  c.lt.s  $f0, $f8                   
/* 00C5C 80A35F6C 00000000 */  nop
/* 00C60 80A35F70 4500002D */  bc1f    .L80A36028                 
/* 00C64 80A35F74 00000000 */  nop
/* 00C68 80A35F78 44815000 */  mtc1    $at, $f10                  ## $f10 = 150.00
/* 00C6C 80A35F7C 00000000 */  nop
/* 00C70 80A35F80 4600503C */  c.lt.s  $f10, $f0                  
/* 00C74 80A35F84 00000000 */  nop
/* 00C78 80A35F88 45000027 */  bc1f    .L80A36028                 
/* 00C7C 80A35F8C 00000000 */  nop
/* 00C80 80A35F90 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C84 80A35F94 A7A30026 */  sh      $v1, 0x0026($sp)           
/* 00C88 80A35F98 3C0180A4 */  lui     $at, %hi(D_80A3A220)       ## $at = 80A40000
/* 00C8C 80A35F9C C430A220 */  lwc1    $f16, %lo(D_80A3A220)($at) 
/* 00C90 80A35FA0 87A30026 */  lh      $v1, 0x0026($sp)           
/* 00C94 80A35FA4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00C98 80A35FA8 4610003C */  c.lt.s  $f0, $f16                  
/* 00C9C 80A35FAC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00CA0 80A35FB0 4500001D */  bc1f    .L80A36028                 
/* 00CA4 80A35FB4 00000000 */  nop
/* 00CA8 80A35FB8 0C00CEAE */  jal     func_80033AB8              
/* 00CAC 80A35FBC A7A30026 */  sh      $v1, 0x0026($sp)           
/* 00CB0 80A35FC0 14400011 */  bne     $v0, $zero, .L80A36008     
/* 00CB4 80A35FC4 87A30026 */  lh      $v1, 0x0026($sp)           
/* 00CB8 80A35FC8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00CBC 80A35FCC A7A30026 */  sh      $v1, 0x0026($sp)           
/* 00CC0 80A35FD0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00CC4 80A35FD4 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 00CC8 80A35FD8 87A30026 */  lh      $v1, 0x0026($sp)           
/* 00CCC 80A35FDC 4600903C */  c.lt.s  $f18, $f0                  
/* 00CD0 80A35FE0 00000000 */  nop
/* 00CD4 80A35FE4 45010008 */  bc1t    .L80A36008                 
/* 00CD8 80A35FE8 00000000 */  nop
/* 00CDC 80A35FEC 04600003 */  bltz    $v1, .L80A35FFC            
/* 00CE0 80A35FF0 00031023 */  subu    $v0, $zero, $v1            
/* 00CE4 80A35FF4 10000001 */  beq     $zero, $zero, .L80A35FFC   
/* 00CE8 80A35FF8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A35FFC:
/* 00CEC 80A35FFC 284138E0 */  slti    $at, $v0, 0x38E0           
/* 00CF0 80A36000 10200005 */  beq     $at, $zero, .L80A36018     
/* 00CF4 80A36004 00000000 */  nop
.L80A36008:
/* 00CF8 80A36008 0C28D977 */  jal     func_80A365DC              
/* 00CFC 80A3600C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D00 80A36010 10000019 */  beq     $zero, $zero, .L80A36078   
/* 00D04 80A36014 8FAA0034 */  lw      $t2, 0x0034($sp)           
.L80A36018:
/* 00D08 80A36018 0C28DE4B */  jal     func_80A3792C              
/* 00D0C 80A3601C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D10 80A36020 10000015 */  beq     $zero, $zero, .L80A36078   
/* 00D14 80A36024 8FAA0034 */  lw      $t2, 0x0034($sp)           
.L80A36028:
/* 00D18 80A36028 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D1C 80A3602C 00000000 */  nop
/* 00D20 80A36030 3C0180A4 */  lui     $at, %hi(D_80A3A224)       ## $at = 80A40000
/* 00D24 80A36034 C424A224 */  lwc1    $f4, %lo(D_80A3A224)($at)  
/* 00D28 80A36038 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D2C 80A3603C 4600203C */  c.lt.s  $f4, $f0                   
/* 00D30 80A36040 00000000 */  nop
/* 00D34 80A36044 45000005 */  bc1f    .L80A3605C                 
/* 00D38 80A36048 00000000 */  nop
/* 00D3C 80A3604C 0C28D82C */  jal     func_80A360B0              
/* 00D40 80A36050 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00D44 80A36054 10000008 */  beq     $zero, $zero, .L80A36078   
/* 00D48 80A36058 8FAA0034 */  lw      $t2, 0x0034($sp)           
.L80A3605C:
/* 00D4C 80A3605C 0C28DA84 */  jal     func_80A36A10              
/* 00D50 80A36060 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D54 80A36064 10000004 */  beq     $zero, $zero, .L80A36078   
/* 00D58 80A36068 8FAA0034 */  lw      $t2, 0x0034($sp)           
.L80A3606C:
/* 00D5C 80A3606C 0C28D9F9 */  jal     func_80A367E4              
/* 00D60 80A36070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D64 80A36074 8FAA0034 */  lw      $t2, 0x0034($sp)           
.L80A36078:
/* 00D68 80A36078 3C0B0001 */  lui     $t3, 0x0001                ## $t3 = 00010000
/* 00D6C 80A3607C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D70 80A36080 016A5821 */  addu    $t3, $t3, $t2              
/* 00D74 80A36084 8D6B1DE4 */  lw      $t3, 0x1DE4($t3)           ## 00011DE4
/* 00D78 80A36088 316C005F */  andi    $t4, $t3, 0x005F           ## $t4 = 00000000
/* 00D7C 80A3608C 55800004 */  bnel    $t4, $zero, .L80A360A0     
/* 00D80 80A36090 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D84 80A36094 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00D88 80A36098 240539C6 */  addiu   $a1, $zero, 0x39C6         ## $a1 = 000039C6
.L80A3609C:
/* 00D8C 80A3609C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A360A0:
/* 00D90 80A360A0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D94 80A360A4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00D98 80A360A8 03E00008 */  jr      $ra                        
/* 00D9C 80A360AC 00000000 */  nop


