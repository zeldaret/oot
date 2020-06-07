glabel func_80ACCE00
/* 02EE0 80ACCE00 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02EE4 80ACCE04 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 02EE8 80ACCE08 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 02EEC 80ACCE0C 10A1001B */  beq     $a1, $at, .L80ACCE7C       
/* 02EF0 80ACCE10 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 02EF4 80ACCE14 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02EF8 80ACCE18 10A10009 */  beq     $a1, $at, .L80ACCE40       
/* 02EFC 80ACCE1C 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 02F00 80ACCE20 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02F04 80ACCE24 10A1001D */  beq     $a1, $at, .L80ACCE9C       
/* 02F08 80ACCE28 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 02F0C 80ACCE2C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02F10 80ACCE30 10A1002D */  beq     $a1, $at, .L80ACCEE8       
/* 02F14 80ACCE34 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 02F18 80ACCE38 03E00008 */  jr      $ra                        
/* 02F1C 80ACCE3C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80ACCE40:
/* 02F20 80ACCE40 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 02F24 80ACCE44 844F03F0 */  lh      $t7, 0x03F0($v0)           ## 000003F0
/* 02F28 80ACCE48 846E0000 */  lh      $t6, 0x0000($v1)           ## 00000000
/* 02F2C 80ACCE4C 84790004 */  lh      $t9, 0x0004($v1)           ## 00000004
/* 02F30 80ACCE50 01CFC021 */  addu    $t8, $t6, $t7              
/* 02F34 80ACCE54 A4780000 */  sh      $t8, 0x0000($v1)           ## 00000000
/* 02F38 80ACCE58 844803EC */  lh      $t0, 0x03EC($v0)           ## 000003EC
/* 02F3C 80ACCE5C 03284821 */  addu    $t1, $t9, $t0              
/* 02F40 80ACCE60 A4690004 */  sh      $t1, 0x0004($v1)           ## 00000004
/* 02F44 80ACCE64 844B03F2 */  lh      $t3, 0x03F2($v0)           ## 000003F2
/* 02F48 80ACCE68 846A0004 */  lh      $t2, 0x0004($v1)           ## 00000004
/* 02F4C 80ACCE6C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02F50 80ACCE70 014B6023 */  subu    $t4, $t2, $t3              
/* 02F54 80ACCE74 03E00008 */  jr      $ra                        
/* 02F58 80ACCE78 A46C0004 */  sh      $t4, 0x0004($v1)           ## 00000004
.L80ACCE7C:
/* 02F5C 80ACCE7C 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 02F60 80ACCE80 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 02F64 80ACCE84 844E03F2 */  lh      $t6, 0x03F2($v0)           ## 000003F2
/* 02F68 80ACCE88 846D0004 */  lh      $t5, 0x0004($v1)           ## 00000004
/* 02F6C 80ACCE8C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02F70 80ACCE90 01AE7821 */  addu    $t7, $t5, $t6              
/* 02F74 80ACCE94 03E00008 */  jr      $ra                        
/* 02F78 80ACCE98 A46F0004 */  sh      $t7, 0x0004($v1)           ## 00000004
.L80ACCE9C:
/* 02F7C 80ACCE9C 945803FC */  lhu     $t8, 0x03FC($v0)           ## 000003FC
/* 02F80 80ACCEA0 33190008 */  andi    $t9, $t8, 0x0008           ## $t9 = 00000000
/* 02F84 80ACCEA4 17200021 */  bne     $t9, $zero, .L80ACCF2C     
/* 02F88 80ACCEA8 00000000 */  nop
/* 02F8C 80ACCEAC 844803EC */  lh      $t0, 0x03EC($v0)           ## 000003EC
/* 02F90 80ACCEB0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 02F94 80ACCEB4 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.50
/* 02F98 80ACCEB8 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 02F9C 80ACCEBC 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 02FA0 80ACCEC0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02FA4 80ACCEC4 468021A0 */  cvt.s.w $f6, $f4                   
/* 02FA8 80ACCEC8 846D0002 */  lh      $t5, 0x0002($v1)           ## 00000002
/* 02FAC 80ACCECC 46083282 */  mul.s   $f10, $f6, $f8             
/* 02FB0 80ACCED0 4600540D */  trunc.w.s $f16, $f10                 
/* 02FB4 80ACCED4 440C8000 */  mfc1    $t4, $f16                  
/* 02FB8 80ACCED8 00000000 */  nop
/* 02FBC 80ACCEDC 01AC7023 */  subu    $t6, $t5, $t4              
/* 02FC0 80ACCEE0 03E00008 */  jr      $ra                        
/* 02FC4 80ACCEE4 A46E0002 */  sh      $t6, 0x0002($v1)           ## 00000002
.L80ACCEE8:
/* 02FC8 80ACCEE8 944F03FC */  lhu     $t7, 0x03FC($v0)           ## 000003FC
/* 02FCC 80ACCEEC 31F80008 */  andi    $t8, $t7, 0x0008           ## $t8 = 00000000
/* 02FD0 80ACCEF0 1700000E */  bne     $t8, $zero, .L80ACCF2C     
/* 02FD4 80ACCEF4 00000000 */  nop
/* 02FD8 80ACCEF8 845903EC */  lh      $t9, 0x03EC($v0)           ## 000003EC
/* 02FDC 80ACCEFC 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 02FE0 80ACCF00 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 02FE4 80ACCF04 44999000 */  mtc1    $t9, $f18                  ## $f18 = 0.00
/* 02FE8 80ACCF08 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 02FEC 80ACCF0C 46809120 */  cvt.s.w $f4, $f18                  
/* 02FF0 80ACCF10 846D0002 */  lh      $t5, 0x0002($v1)           ## 00000002
/* 02FF4 80ACCF14 46062202 */  mul.s   $f8, $f4, $f6              
/* 02FF8 80ACCF18 4600428D */  trunc.w.s $f10, $f8                  
/* 02FFC 80ACCF1C 440B5000 */  mfc1    $t3, $f10                  
/* 03000 80ACCF20 00000000 */  nop
/* 03004 80ACCF24 01AB6021 */  addu    $t4, $t5, $t3              
/* 03008 80ACCF28 A46C0002 */  sh      $t4, 0x0002($v1)           ## 00000002
.L80ACCF2C:
/* 0300C 80ACCF2C 03E00008 */  jr      $ra                        
/* 03010 80ACCF30 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
