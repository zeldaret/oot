.late_rodata
glabel D_80AFE118
    .float 0.05

.text
glabel func_80AFD6CC
/* 00D2C 80AFD6CC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D30 80AFD6D0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00D34 80AFD6D4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00D38 80AFD6D8 908E0283 */  lbu     $t6, 0x0283($a0)           ## 00000283
/* 00D3C 80AFD6DC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00D40 80AFD6E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D44 80AFD6E4 15C10006 */  bne     $t6, $at, .L80AFD700       
/* 00D48 80AFD6E8 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00D4C 80AFD6EC 2605028C */  addiu   $a1, $s0, 0x028C           ## $a1 = 0000028C
/* 00D50 80AFD6F0 0C00CC17 */  jal     func_8003305C              
/* 00D54 80AFD6F4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D58 80AFD6F8 5040002A */  beql    $v0, $zero, .L80AFD7A4     
/* 00D5C 80AFD6FC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFD700:
/* 00D60 80AFD700 92020283 */  lbu     $v0, 0x0283($s0)           ## 00000283
/* 00D64 80AFD704 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00D68 80AFD708 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00D6C 80AFD70C 10400003 */  beq     $v0, $zero, .L80AFD71C     
/* 00D70 80AFD710 24071194 */  addiu   $a3, $zero, 0x1194         ## $a3 = 00001194
/* 00D74 80AFD714 344F0002 */  ori     $t7, $v0, 0x0002           ## $t7 = 00000002
/* 00D78 80AFD718 A20F0283 */  sb      $t7, 0x0283($s0)           ## 00000283
.L80AFD71C:
/* 00D7C 80AFD71C 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00D80 80AFD720 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 00D84 80AFD724 53000005 */  beql    $t8, $zero, .L80AFD73C     
/* 00D88 80AFD728 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000000
/* 00D8C 80AFD72C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00D90 80AFD730 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00D94 80AFD734 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00D98 80AFD738 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000000
.L80AFD73C:
/* 00D9C 80AFD73C 5320000C */  beql    $t9, $zero, .L80AFD770     
/* 00DA0 80AFD740 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00DA4 80AFD744 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 00DA8 80AFD748 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00DAC 80AFD74C 3C0180B0 */  lui     $at, %hi(D_80AFE118)       ## $at = 80B00000
/* 00DB0 80AFD750 4606003C */  c.lt.s  $f0, $f6                   
/* 00DB4 80AFD754 00000000 */  nop
/* 00DB8 80AFD758 45020005 */  bc1fl   .L80AFD770                 
/* 00DBC 80AFD75C 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00DC0 80AFD760 C428E118 */  lwc1    $f8, %lo(D_80AFE118)($at)  
/* 00DC4 80AFD764 46080280 */  add.s   $f10, $f0, $f8             
/* 00DC8 80AFD768 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00DCC 80AFD76C 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
.L80AFD770:
/* 00DD0 80AFD770 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00DD4 80AFD774 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00DD8 80AFD778 0C02927F */  jal     SkelAnime_Update
              
/* 00DDC 80AFD77C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00DE0 80AFD780 50400008 */  beql    $v0, $zero, .L80AFD7A4     
/* 00DE4 80AFD784 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DE8 80AFD788 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
/* 00DEC 80AFD78C 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 00DF0 80AFD790 51200004 */  beql    $t1, $zero, .L80AFD7A4     
/* 00DF4 80AFD794 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DF8 80AFD798 0C2BF358 */  jal     func_80AFCD60              
/* 00DFC 80AFD79C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E00 80AFD7A0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFD7A4:
/* 00E04 80AFD7A4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00E08 80AFD7A8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E0C 80AFD7AC 03E00008 */  jr      $ra                        
/* 00E10 80AFD7B0 00000000 */  nop
