glabel func_80B44DC4
/* 00D74 80B44DC4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D78 80B44DC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D7C 80B44DCC 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 00D80 80B44DD0 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 00D84 80B44DD4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00D88 80B44DD8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00D8C 80B44DDC 01CF1023 */  subu    $v0, $t6, $t7              
/* 00D90 80B44DE0 00021400 */  sll     $v0, $v0, 16               
/* 00D94 80B44DE4 00021403 */  sra     $v0, $v0, 16               
/* 00D98 80B44DE8 04410004 */  bgez    $v0, .L80B44DFC            
/* 00D9C 80B44DEC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00DA0 80B44DF0 00021023 */  subu    $v0, $zero, $v0            
/* 00DA4 80B44DF4 00021400 */  sll     $v0, $v0, 16               
/* 00DA8 80B44DF8 00021403 */  sra     $v0, $v0, 16               
.L80B44DFC:
/* 00DAC 80B44DFC 28411B58 */  slti    $at, $v0, 0x1B58           
/* 00DB0 80B44E00 54200006 */  bnel    $at, $zero, .L80B44E1C     
/* 00DB4 80B44E04 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00DB8 80B44E08 0C2D20F9 */  jal     func_80B483E4              
/* 00DBC 80B44E0C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00DC0 80B44E10 1000001B */  beq     $zero, $zero, .L80B44E80   
/* 00DC4 80B44E14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DC8 80B44E18 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
.L80B44E1C:
/* 00DCC 80B44E1C 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00DD0 80B44E20 C4C60090 */  lwc1    $f6, 0x0090($a2)           ## 00000090
/* 00DD4 80B44E24 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 00DD8 80B44E28 0307C021 */  addu    $t8, $t8, $a3              
/* 00DDC 80B44E2C 4604303E */  c.le.s  $f6, $f4                   
/* 00DE0 80B44E30 00000000 */  nop
/* 00DE4 80B44E34 4500000F */  bc1f    .L80B44E74                 
/* 00DE8 80B44E38 00000000 */  nop
/* 00DEC 80B44E3C 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 00DF0 80B44E40 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00DF4 80B44E44 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00DF8 80B44E48 33190007 */  andi    $t9, $t8, 0x0007           ## $t9 = 00000000
/* 00DFC 80B44E4C 13200009 */  beq     $t9, $zero, .L80B44E74     
/* 00E00 80B44E50 00000000 */  nop
/* 00E04 80B44E54 0C2D133C */  jal     func_80B44CF0              
/* 00E08 80B44E58 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00E0C 80B44E5C 10400005 */  beq     $v0, $zero, .L80B44E74     
/* 00E10 80B44E60 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00E14 80B44E64 0C2D1A89 */  jal     func_80B46A24              
/* 00E18 80B44E68 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00E1C 80B44E6C 10000004 */  beq     $zero, $zero, .L80B44E80   
/* 00E20 80B44E70 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B44E74:
/* 00E24 80B44E74 0C2D14E1 */  jal     func_80B45384              
/* 00E28 80B44E78 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00E2C 80B44E7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B44E80:
/* 00E30 80B44E80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E34 80B44E84 03E00008 */  jr      $ra                        
/* 00E38 80B44E88 00000000 */  nop


