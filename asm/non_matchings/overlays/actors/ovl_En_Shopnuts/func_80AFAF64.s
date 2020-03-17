glabel func_80AFAF64
/* 00844 80AFAF64 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00848 80AFAF68 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0084C 80AFAF6C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00850 80AFAF70 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00854 80AFAF74 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00858 80AFAF78 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0085C 80AFAF7C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00860 80AFAF80 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00864 80AFAF84 10400007 */  beq     $v0, $zero, .L80AFAFA4     
/* 00868 80AFAF88 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0086C 80AFAF8C 0C2BEA20 */  jal     func_80AFA880              
/* 00870 80AFAF90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00874 80AFAF94 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00878 80AFAF98 44816000 */  mtc1    $at, $f12                  ## $f12 = 4.00
/* 0087C 80AFAF9C 10000016 */  beq     $zero, $zero, .L80AFAFF8   
/* 00880 80AFAFA0 44056000 */  mfc1    $a1, $f12                  
.L80AFAFA4:
/* 00884 80AFAFA4 44816000 */  mtc1    $at, $f12                  ## $f12 = 4.00
/* 00888 80AFAFA8 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 0088C 80AFAFAC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00890 80AFAFB0 4600603C */  c.lt.s  $f12, $f0                  
/* 00894 80AFAFB4 00000000 */  nop
/* 00898 80AFAFB8 45020004 */  bc1fl   .L80AFAFCC                 
/* 0089C 80AFAFBC 46000086 */  mov.s   $f2, $f0                   
/* 008A0 80AFAFC0 10000002 */  beq     $zero, $zero, .L80AFAFCC   
/* 008A4 80AFAFC4 46006086 */  mov.s   $f2, $f12                  
/* 008A8 80AFAFC8 46000086 */  mov.s   $f2, $f0                   
.L80AFAFCC:
/* 008AC 80AFAFCC 46026101 */  sub.s   $f4, $f12, $f2             
/* 008B0 80AFAFD0 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 008B4 80AFAFD4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 008B8 80AFAFD8 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 008BC 80AFAFDC 46062202 */  mul.s   $f8, $f4, $f6              
/* 008C0 80AFAFE0 460A4400 */  add.s   $f16, $f8, $f10            
/* 008C4 80AFAFE4 4600848D */  trunc.w.s $f18, $f16                 
/* 008C8 80AFAFE8 440F9000 */  mfc1    $t7, $f18                  
/* 008CC 80AFAFEC 00000000 */  nop
/* 008D0 80AFAFF0 A60F02B2 */  sh      $t7, 0x02B2($s0)           ## 000002B2
/* 008D4 80AFAFF4 44056000 */  mfc1    $a1, $f12                  
.L80AFAFF8:
/* 008D8 80AFAFF8 0C0295B2 */  jal     func_800A56C8              
/* 008DC 80AFAFFC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 008E0 80AFB000 50400005 */  beql    $v0, $zero, .L80AFB018     
/* 008E4 80AFB004 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008E8 80AFB008 92180281 */  lbu     $t8, 0x0281($s0)           ## 00000281
/* 008EC 80AFB00C 3319FFFE */  andi    $t9, $t8, 0xFFFE           ## $t9 = 00000000
/* 008F0 80AFB010 A2190281 */  sb      $t9, 0x0281($s0)           ## 00000281
/* 008F4 80AFB014 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFB018:
/* 008F8 80AFB018 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 008FC 80AFB01C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00900 80AFB020 03E00008 */  jr      $ra                        
/* 00904 80AFB024 00000000 */  nop


