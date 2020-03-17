glabel func_808603CC
/* 00D7C 808603CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D80 808603D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D84 808603D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D88 808603D8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D8C 808603DC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D90 808603E0 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 00D94 808603E4 50400011 */  beql    $v0, $zero, .L8086042C     
/* 00D98 808603E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D9C 808603EC 0C21801A */  jal     func_80860068              
/* 00DA0 808603F0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00DA4 808603F4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00DA8 808603F8 00000000 */  nop
/* 00DAC 808603FC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00DB0 80860400 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00DB4 80860404 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00DB8 80860408 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 00DBC 8086040C 46040182 */  mul.s   $f6, $f0, $f4              
/* 00DC0 80860410 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 00DC4 80860414 46083280 */  add.s   $f10, $f6, $f8             
/* 00DC8 80860418 4600540D */  trunc.w.s $f16, $f10                 
/* 00DCC 8086041C 440F8000 */  mfc1    $t7, $f16                  
/* 00DD0 80860420 00000000 */  nop
/* 00DD4 80860424 AF0F07E8 */  sw      $t7, 0x07E8($t8)           ## 000007E8
/* 00DD8 80860428 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086042C:
/* 00DDC 8086042C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DE0 80860430 03E00008 */  jr      $ra                        
/* 00DE4 80860434 00000000 */  nop


