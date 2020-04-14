glabel func_80B4EE38
/* 004A8 80B4EE38 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 004AC 80B4EE3C 8C8E024C */  lw      $t6, 0x024C($a0)           ## 0000024C
/* 004B0 80B4EE40 00052C00 */  sll     $a1, $a1, 16               
/* 004B4 80B4EE44 00052C03 */  sra     $a1, $a1, 16               
/* 004B8 80B4EE48 11C00043 */  beq     $t6, $zero, .L80B4EF58     
/* 004BC 80B4EE4C 00065040 */  sll     $t2, $a2,  1               
/* 004C0 80B4EE50 00067840 */  sll     $t7, $a2,  1               
/* 004C4 80B4EE54 008F4021 */  addu    $t0, $a0, $t7              
/* 004C8 80B4EE58 8519020C */  lh      $t9, 0x020C($t0)           ## 0000020C
/* 004CC 80B4EE5C 851801DC */  lh      $t8, 0x01DC($t0)           ## 000001DC
/* 004D0 80B4EE60 850901AC */  lh      $t1, 0x01AC($t0)           ## 000001AC
/* 004D4 80B4EE64 00B93823 */  subu    $a3, $a1, $t9              
/* 004D8 80B4EE68 44872000 */  mtc1    $a3, $f4                   ## $f4 = 0.00
/* 004DC 80B4EE6C 34018001 */  ori     $at, $zero, 0x8001         ## $at = 00008001
/* 004E0 80B4EE70 03051821 */  addu    $v1, $t8, $a1              
/* 004E4 80B4EE74 46802020 */  cvt.s.w $f0, $f4                   
/* 004E8 80B4EE78 00031C00 */  sll     $v1, $v1, 16               
/* 004EC 80B4EE7C 00031C03 */  sra     $v1, $v1, 16               
/* 004F0 80B4EE80 01201025 */  or      $v0, $t1, $zero            ## $v0 = 00000000
/* 004F4 80B4EE84 46000005 */  abs.s   $f0, $f0                   
/* 004F8 80B4EE88 4600018D */  trunc.w.s $f6, $f0                   
/* 004FC 80B4EE8C 440B3000 */  mfc1    $t3, $f6                   
/* 00500 80B4EE90 00000000 */  nop
/* 00504 80B4EE94 0161082A */  slt     $at, $t3, $at              
/* 00508 80B4EE98 14200007 */  bne     $at, $zero, .L80B4EEB8     
/* 0050C 80B4EE9C 00000000 */  nop
/* 00510 80B4EEA0 18A00004 */  blez    $a1, .L80B4EEB4            
/* 00514 80B4EEA4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00518 80B4EEA8 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 0051C 80B4EEAC 10000002 */  beq     $zero, $zero, .L80B4EEB8   
/* 00520 80B4EEB0 00E13821 */  addu    $a3, $a3, $at              
.L80B4EEB4:
/* 00524 80B4EEB4 00E13821 */  addu    $a3, $a3, $at              
.L80B4EEB8:
/* 00528 80B4EEB8 10E00006 */  beq     $a3, $zero, .L80B4EED4     
/* 0052C 80B4EEBC 00E26023 */  subu    $t4, $a3, $v0              
/* 00530 80B4EEC0 05810003 */  bgez    $t4, .L80B4EED0            
/* 00534 80B4EEC4 000C6903 */  sra     $t5, $t4,  4               
/* 00538 80B4EEC8 2581000F */  addiu   $at, $t4, 0x000F           ## $at = 0000000F
/* 0053C 80B4EECC 00016903 */  sra     $t5, $at,  4               
.L80B4EED0:
/* 00540 80B4EED0 004D1021 */  addu    $v0, $v0, $t5              
.L80B4EED4:
/* 00544 80B4EED4 10400006 */  beq     $v0, $zero, .L80B4EEF0     
/* 00548 80B4EED8 00653823 */  subu    $a3, $v1, $a1              
/* 0054C 80B4EEDC 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00550 80B4EEE0 0041001A */  div     $zero, $v0, $at            
/* 00554 80B4EEE4 00007012 */  mflo    $t6                        
/* 00558 80B4EEE8 004E1023 */  subu    $v0, $v0, $t6              
/* 0055C 80B4EEEC 00000000 */  nop
.L80B4EEF0:
/* 00560 80B4EEF0 00073C00 */  sll     $a3, $a3, 16               
/* 00564 80B4EEF4 00073C03 */  sra     $a3, $a3, 16               
/* 00568 80B4EEF8 10E00005 */  beq     $a3, $zero, .L80B4EF10     
/* 0056C 80B4EEFC 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00570 80B4EF00 00E1001A */  div     $zero, $a3, $at            
/* 00574 80B4EF04 00007812 */  mflo    $t7                        
/* 00578 80B4EF08 004F1023 */  subu    $v0, $v0, $t7              
/* 0057C 80B4EF0C 00000000 */  nop
.L80B4EF10:
/* 00580 80B4EF10 01220019 */  multu   $t1, $v0                   
/* 00584 80B4EF14 00621821 */  addu    $v1, $v1, $v0              
/* 00588 80B4EF18 00653823 */  subu    $a3, $v1, $a1              
/* 0058C 80B4EF1C 00073C00 */  sll     $a3, $a3, 16               
/* 00590 80B4EF20 00073C03 */  sra     $a3, $a3, 16               
/* 00594 80B4EF24 28E1FF9D */  slti    $at, $a3, 0xFF9D           
/* 00598 80B4EF28 0000C012 */  mflo    $t8                        
/* 0059C 80B4EF2C 5F000008 */  bgtzl   $t8, .L80B4EF50            
/* 005A0 80B4EF30 0065C823 */  subu    $t9, $v1, $a1              
/* 005A4 80B4EF34 14200005 */  bne     $at, $zero, .L80B4EF4C     
/* 005A8 80B4EF38 28E10064 */  slti    $at, $a3, 0x0064           
/* 005AC 80B4EF3C 50200004 */  beql    $at, $zero, .L80B4EF50     
/* 005B0 80B4EF40 0065C823 */  subu    $t9, $v1, $a1              
/* 005B4 80B4EF44 00A01825 */  or      $v1, $a1, $zero            ## $v1 = 00000000
/* 005B8 80B4EF48 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B4EF4C:
/* 005BC 80B4EF4C 0065C823 */  subu    $t9, $v1, $a1              
.L80B4EF50:
/* 005C0 80B4EF50 A50201AC */  sh      $v0, 0x01AC($t0)           ## 000001AC
/* 005C4 80B4EF54 A51901DC */  sh      $t9, 0x01DC($t0)           ## 000001DC
.L80B4EF58:
/* 005C8 80B4EF58 008A5821 */  addu    $t3, $a0, $t2              
/* 005CC 80B4EF5C 03E00008 */  jr      $ra                        
/* 005D0 80B4EF60 A565020C */  sh      $a1, 0x020C($t3)           ## 0000020C
