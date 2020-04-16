glabel func_80AED8DC
/* 02CCC 80AED8DC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 02CD0 80AED8E0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02CD4 80AED8E4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 02CD8 80AED8E8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 02CDC 80AED8EC 848E02AC */  lh      $t6, 0x02AC($a0)           ## 000002AC
/* 02CE0 80AED8F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02CE4 80AED8F4 260302AC */  addiu   $v1, $s0, 0x02AC           ## $v1 = 000002AC
/* 02CE8 80AED8F8 15C00003 */  bne     $t6, $zero, .L80AED908     
/* 02CEC 80AED8FC 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 02CF0 80AED900 10000005 */  beq     $zero, $zero, .L80AED918   
/* 02CF4 80AED904 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AED908:
/* 02CF8 80AED908 846F0000 */  lh      $t7, 0x0000($v1)           ## 000002AC
/* 02CFC 80AED90C 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 02D00 80AED910 A4780000 */  sh      $t8, 0x0000($v1)           ## 000002AC
/* 02D04 80AED914 84620000 */  lh      $v0, 0x0000($v1)           ## 000002AC
.L80AED918:
/* 02D08 80AED918 14400016 */  bne     $v0, $zero, .L80AED974     
/* 02D0C 80AED91C 24050019 */  addiu   $a1, $zero, 0x0019         ## $a1 = 00000019
/* 02D10 80AED920 260302AC */  addiu   $v1, $s0, 0x02AC           ## $v1 = 000002AC
/* 02D14 80AED924 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 02D18 80AED928 AFA30030 */  sw      $v1, 0x0030($sp)           
/* 02D1C 80AED92C 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 02D20 80AED930 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02D24 80AED934 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02D28 80AED938 A4620000 */  sh      $v0, 0x0000($v1)           ## 00000000
/* 02D2C 80AED93C 84640000 */  lh      $a0, 0x0000($v1)           ## 00000000
/* 02D30 80AED940 0081001A */  div     $zero, $a0, $at            
/* 02D34 80AED944 00002010 */  mfhi    $a0                        
/* 02D38 80AED948 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02D3C 80AED94C 14800003 */  bne     $a0, $zero, .L80AED95C     
/* 02D40 80AED950 00000000 */  nop
/* 02D44 80AED954 10000006 */  beq     $zero, $zero, .L80AED970   
/* 02D48 80AED958 AE1902B0 */  sw      $t9, 0x02B0($s0)           ## 000002B0
.L80AED95C:
/* 02D4C 80AED95C 14810003 */  bne     $a0, $at, .L80AED96C       
/* 02D50 80AED960 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 02D54 80AED964 10000002 */  beq     $zero, $zero, .L80AED970   
/* 02D58 80AED968 AE0802B0 */  sw      $t0, 0x02B0($s0)           ## 000002B0
.L80AED96C:
/* 02D5C 80AED96C AE0002B0 */  sw      $zero, 0x02B0($s0)         ## 000002B0
.L80AED970:
/* 02D60 80AED970 A600029E */  sh      $zero, 0x029E($s0)         ## 0000029E
.L80AED974:
/* 02D64 80AED974 8E0202B0 */  lw      $v0, 0x02B0($s0)           ## 000002B0
/* 02D68 80AED978 2604029E */  addiu   $a0, $s0, 0x029E           ## $a0 = 0000029E
/* 02D6C 80AED97C 2611037E */  addiu   $s1, $s0, 0x037E           ## $s1 = 0000037E
/* 02D70 80AED980 1440001B */  bne     $v0, $zero, .L80AED9F0     
/* 02D74 80AED984 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02D78 80AED988 86250000 */  lh      $a1, 0x0000($s1)           ## 0000037E
/* 02D7C 80AED98C 24090190 */  addiu   $t1, $zero, 0x0190         ## $t1 = 00000190
/* 02D80 80AED990 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 02D84 80AED994 00052823 */  subu    $a1, $zero, $a1            
/* 02D88 80AED998 00052C00 */  sll     $a1, $a1, 16               
/* 02D8C 80AED99C 00052C03 */  sra     $a1, $a1, 16               
/* 02D90 80AED9A0 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 02D94 80AED9A4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02D98 80AED9A8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02D9C 80AED9AC 24070190 */  addiu   $a3, $zero, 0x0190         ## $a3 = 00000190
/* 02DA0 80AED9B0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02DA4 80AED9B4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02DA8 80AED9B8 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 02DAC 80AED9BC 84830000 */  lh      $v1, 0x0000($a0)           ## 00000000
/* 02DB0 80AED9C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000037E
/* 02DB4 80AED9C4 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 02DB8 80AED9C8 04600003 */  bltz    $v1, .L80AED9D8            
/* 02DBC 80AED9CC 00031023 */  subu    $v0, $zero, $v1            
/* 02DC0 80AED9D0 10000001 */  beq     $zero, $zero, .L80AED9D8   
/* 02DC4 80AED9D4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80AED9D8:
/* 02DC8 80AED9D8 00023C00 */  sll     $a3, $v0, 16               
/* 02DCC 80AED9DC 00073C03 */  sra     $a3, $a3, 16               
/* 02DD0 80AED9E0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02DD4 80AED9E4 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 02DD8 80AED9E8 10000039 */  beq     $zero, $zero, .L80AEDAD0   
/* 02DDC 80AED9EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AED9F0:
/* 02DE0 80AED9F0 1441001D */  bne     $v0, $at, .L80AEDA68       
/* 02DE4 80AED9F4 2611037E */  addiu   $s1, $s0, 0x037E           ## $s1 = 0000037E
/* 02DE8 80AED9F8 2611037E */  addiu   $s1, $s0, 0x037E           ## $s1 = 0000037E
/* 02DEC 80AED9FC 862B0000 */  lh      $t3, 0x0000($s1)           ## 0000037E
/* 02DF0 80AEDA00 240CD556 */  addiu   $t4, $zero, 0xD556         ## $t4 = FFFFD556
/* 02DF4 80AEDA04 240D0190 */  addiu   $t5, $zero, 0x0190         ## $t5 = 00000190
/* 02DF8 80AEDA08 018B2823 */  subu    $a1, $t4, $t3              
/* 02DFC 80AEDA0C 00052C00 */  sll     $a1, $a1, 16               
/* 02E00 80AEDA10 00052C03 */  sra     $a1, $a1, 16               
/* 02E04 80AEDA14 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 02E08 80AEDA18 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 02E0C 80AEDA1C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02E10 80AEDA20 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02E14 80AEDA24 24070190 */  addiu   $a3, $zero, 0x0190         ## $a3 = 00000190
/* 02E18 80AEDA28 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02E1C 80AEDA2C 2405D556 */  addiu   $a1, $zero, 0xD556         ## $a1 = FFFFD556
/* 02E20 80AEDA30 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 02E24 80AEDA34 84830000 */  lh      $v1, 0x0000($a0)           ## 00000000
/* 02E28 80AEDA38 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000037E
/* 02E2C 80AEDA3C 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 02E30 80AEDA40 04600003 */  bltz    $v1, .L80AEDA50            
/* 02E34 80AEDA44 00031023 */  subu    $v0, $zero, $v1            
/* 02E38 80AEDA48 10000001 */  beq     $zero, $zero, .L80AEDA50   
/* 02E3C 80AEDA4C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80AEDA50:
/* 02E40 80AEDA50 00023C00 */  sll     $a3, $v0, 16               
/* 02E44 80AEDA54 00073C03 */  sra     $a3, $a3, 16               
/* 02E48 80AEDA58 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02E4C 80AEDA5C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 02E50 80AEDA60 1000001B */  beq     $zero, $zero, .L80AEDAD0   
/* 02E54 80AEDA64 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AEDA68:
/* 02E58 80AEDA68 862F0000 */  lh      $t7, 0x0000($s1)           ## 0000037E
/* 02E5C 80AEDA6C 24182AAA */  addiu   $t8, $zero, 0x2AAA         ## $t8 = 00002AAA
/* 02E60 80AEDA70 24190190 */  addiu   $t9, $zero, 0x0190         ## $t9 = 00000190
/* 02E64 80AEDA74 030F2823 */  subu    $a1, $t8, $t7              
/* 02E68 80AEDA78 00052C00 */  sll     $a1, $a1, 16               
/* 02E6C 80AEDA7C 00052C03 */  sra     $a1, $a1, 16               
/* 02E70 80AEDA80 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 02E74 80AEDA84 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 02E78 80AEDA88 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02E7C 80AEDA8C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02E80 80AEDA90 24070190 */  addiu   $a3, $zero, 0x0190         ## $a3 = 00000190
/* 02E84 80AEDA94 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02E88 80AEDA98 24052AAA */  addiu   $a1, $zero, 0x2AAA         ## $a1 = 00002AAA
/* 02E8C 80AEDA9C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 02E90 80AEDAA0 84830000 */  lh      $v1, 0x0000($a0)           ## 00000000
/* 02E94 80AEDAA4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000037E
/* 02E98 80AEDAA8 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 02E9C 80AEDAAC 04600003 */  bltz    $v1, .L80AEDABC            
/* 02EA0 80AEDAB0 00031023 */  subu    $v0, $zero, $v1            
/* 02EA4 80AEDAB4 10000001 */  beq     $zero, $zero, .L80AEDABC   
/* 02EA8 80AEDAB8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80AEDABC:
/* 02EAC 80AEDABC 00023C00 */  sll     $a3, $v0, 16               
/* 02EB0 80AEDAC0 00073C03 */  sra     $a3, $a3, 16               
/* 02EB4 80AEDAC4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02EB8 80AEDAC8 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 02EBC 80AEDACC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AEDAD0:
/* 02EC0 80AEDAD0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 02EC4 80AEDAD4 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 02EC8 80AEDAD8 03E00008 */  jr      $ra                        
/* 02ECC 80AEDADC 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
