glabel func_80B46DD4
/* 02D84 80B46DD4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02D88 80B46DD8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02D8C 80B46DDC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02D90 80B46DE0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02D94 80B46DE4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02D98 80B46DE8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02D9C 80B46DEC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02DA0 80B46DF0 50400022 */  beql    $v0, $zero, .L80B46E7C     
/* 02DA4 80B46DF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02DA8 80B46DF8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02DAC 80B46DFC 00000000 */  nop
/* 02DB0 80B46E00 3C0180B5 */  lui     $at, %hi(D_80B4A37C)       ## $at = 80B50000
/* 02DB4 80B46E04 C424A37C */  lwc1    $f4, %lo(D_80B4A37C)($at)  
/* 02DB8 80B46E08 4600203C */  c.lt.s  $f4, $f0                   
/* 02DBC 80B46E0C 00000000 */  nop
/* 02DC0 80B46E10 45000005 */  bc1f    .L80B46E28                 
/* 02DC4 80B46E14 00000000 */  nop
/* 02DC8 80B46E18 0C2D14E1 */  jal     func_80B45384              
/* 02DCC 80B46E1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02DD0 80B46E20 10000016 */  beq     $zero, $zero, .L80B46E7C   
/* 02DD4 80B46E24 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B46E28:
/* 02DD8 80B46E28 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02DDC 80B46E2C 00000000 */  nop
/* 02DE0 80B46E30 3C0180B5 */  lui     $at, %hi(D_80B4A380)       ## $at = 80B50000
/* 02DE4 80B46E34 C426A380 */  lwc1    $f6, %lo(D_80B4A380)($at)  
/* 02DE8 80B46E38 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02DEC 80B46E3C 4600303C */  c.lt.s  $f6, $f0                   
/* 02DF0 80B46E40 00000000 */  nop
/* 02DF4 80B46E44 4502000A */  bc1fl   .L80B46E70                 
/* 02DF8 80B46E48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02DFC 80B46E4C 0C2D133C */  jal     func_80B44CF0              
/* 02E00 80B46E50 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02E04 80B46E54 50400006 */  beql    $v0, $zero, .L80B46E70     
/* 02E08 80B46E58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02E0C 80B46E5C 0C2D1A89 */  jal     func_80B46A24              
/* 02E10 80B46E60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02E14 80B46E64 10000005 */  beq     $zero, $zero, .L80B46E7C   
/* 02E18 80B46E68 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02E1C 80B46E6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B46E70:
/* 02E20 80B46E70 0C2D20F9 */  jal     func_80B483E4              
/* 02E24 80B46E74 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02E28 80B46E78 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B46E7C:
/* 02E2C 80B46E7C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02E30 80B46E80 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02E34 80B46E84 03E00008 */  jr      $ra                        
/* 02E38 80B46E88 00000000 */  nop


