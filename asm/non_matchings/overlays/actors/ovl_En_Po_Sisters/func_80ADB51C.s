.late_rodata
glabel D_80ADD898
    .float 0.1

.text
glabel func_80ADB51C
/* 0258C 80ADB51C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02590 80ADB520 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02594 80ADB524 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02598 80ADB528 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0259C 80ADB52C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 025A0 80ADB530 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 025A4 80ADB534 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 025A8 80ADB538 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 025AC 80ADB53C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 025B0 80ADB540 C604015C */  lwc1    $f4, 0x015C($s0)           ## 0000015C
/* 025B4 80ADB544 C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
/* 025B8 80ADB548 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 025BC 80ADB54C 46062082 */  mul.s   $f2, $f4, $f6              
/* 025C0 80ADB550 44815000 */  mtc1    $at, $f10                  ## $f10 = 255.00
/* 025C4 80ADB554 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 025C8 80ADB558 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 025CC 80ADB55C 46081001 */  sub.s   $f0, $f2, $f8              
/* 025D0 80ADB560 46000005 */  abs.s   $f0, $f0                   
/* 025D4 80ADB564 460A0402 */  mul.s   $f16, $f0, $f10            
/* 025D8 80ADB568 46028483 */  div.s   $f18, $f16, $f2            
/* 025DC 80ADB56C 444EF800 */  cfc1    $t6, $31
/* 025E0 80ADB570 44CFF800 */  ctc1    $t7, $31
/* 025E4 80ADB574 00000000 */  nop
/* 025E8 80ADB578 46009124 */  cvt.w.s $f4, $f18                  
/* 025EC 80ADB57C 444FF800 */  cfc1    $t7, $31
/* 025F0 80ADB580 00000000 */  nop
/* 025F4 80ADB584 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 025F8 80ADB588 51E00013 */  beql    $t7, $zero, .L80ADB5D8     
/* 025FC 80ADB58C 440F2000 */  mfc1    $t7, $f4                   
/* 02600 80ADB590 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 02604 80ADB594 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02608 80ADB598 46049101 */  sub.s   $f4, $f18, $f4             
/* 0260C 80ADB59C 44CFF800 */  ctc1    $t7, $31
/* 02610 80ADB5A0 00000000 */  nop
/* 02614 80ADB5A4 46002124 */  cvt.w.s $f4, $f4                   
/* 02618 80ADB5A8 444FF800 */  cfc1    $t7, $31
/* 0261C 80ADB5AC 00000000 */  nop
/* 02620 80ADB5B0 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 02624 80ADB5B4 15E00005 */  bne     $t7, $zero, .L80ADB5CC     
/* 02628 80ADB5B8 00000000 */  nop
/* 0262C 80ADB5BC 440F2000 */  mfc1    $t7, $f4                   
/* 02630 80ADB5C0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02634 80ADB5C4 10000007 */  beq     $zero, $zero, .L80ADB5E4   
/* 02638 80ADB5C8 01E17825 */  or      $t7, $t7, $at              ## $t7 = 80000000
.L80ADB5CC:
/* 0263C 80ADB5CC 10000005 */  beq     $zero, $zero, .L80ADB5E4   
/* 02640 80ADB5D0 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 02644 80ADB5D4 440F2000 */  mfc1    $t7, $f4                   
.L80ADB5D8:
/* 02648 80ADB5D8 00000000 */  nop
/* 0264C 80ADB5DC 05E0FFFB */  bltz    $t7, .L80ADB5CC            
/* 02650 80ADB5E0 00000000 */  nop
.L80ADB5E4:
/* 02654 80ADB5E4 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 02658 80ADB5E8 44CEF800 */  ctc1    $t6, $31
/* 0265C 80ADB5EC A20F0231 */  sb      $t7, 0x0231($s0)           ## 00000231
/* 02660 80ADB5F0 10400003 */  beq     $v0, $zero, .L80ADB600     
/* 02664 80ADB5F4 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 02668 80ADB5F8 A618019A */  sh      $t8, 0x019A($s0)           ## 0000019A
/* 0266C 80ADB5FC 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
.L80ADB600:
/* 02670 80ADB600 14400017 */  bne     $v0, $zero, .L80ADB660     
/* 02674 80ADB604 3C0180AE */  lui     $at, %hi(D_80ADD898)       ## $at = 80AE0000
/* 02678 80ADB608 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0267C 80ADB60C 00000000 */  nop
/* 02680 80ADB610 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 02684 80ADB614 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 02688 80ADB618 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 0268C 80ADB61C 920D0195 */  lbu     $t5, 0x0195($s0)           ## 00000195
/* 02690 80ADB620 46060202 */  mul.s   $f8, $f0, $f6              
/* 02694 80ADB624 4600428D */  trunc.w.s $f10, $f8                  
/* 02698 80ADB628 44095000 */  mfc1    $t1, $f10                  
/* 0269C 80ADB62C 00000000 */  nop
/* 026A0 80ADB630 00095380 */  sll     $t2, $t1, 14               
/* 026A4 80ADB634 032A5821 */  addu    $t3, $t9, $t2              
/* 026A8 80ADB638 A60B00B6 */  sh      $t3, 0x00B6($s0)           ## 000000B6
/* 026AC 80ADB63C 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 026B0 80ADB640 15A00003 */  bne     $t5, $zero, .L80ADB650     
/* 026B4 80ADB644 A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 026B8 80ADB648 0C03D6B3 */  jal     func_800F5ACC              
/* 026BC 80ADB64C 24040038 */  addiu   $a0, $zero, 0x0038         ## $a0 = 00000038
.L80ADB650:
/* 026C0 80ADB650 0C2B67C7 */  jal     func_80AD9F1C              
/* 026C4 80ADB654 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026C8 80ADB658 1000003B */  beq     $zero, $zero, .L80ADB748   
/* 026CC 80ADB65C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADB660:
/* 026D0 80ADB660 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 026D4 80ADB664 C432D898 */  lwc1    $f18, %lo(D_80ADD898)($at) 
/* 026D8 80ADB668 92040195 */  lbu     $a0, 0x0195($s0)           ## 00000195
/* 026DC 80ADB66C 46128100 */  add.s   $f4, $f16, $f18            
/* 026E0 80ADB670 1080002B */  beq     $a0, $zero, .L80ADB720     
/* 026E4 80ADB674 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 026E8 80ADB678 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 026EC 80ADB67C 24060040 */  addiu   $a2, $zero, 0x0040         ## $a2 = 00000040
/* 026F0 80ADB680 2841005B */  slti    $at, $v0, 0x005B           
/* 026F4 80ADB684 54200004 */  bnel    $at, $zero, .L80ADB698     
/* 026F8 80ADB688 28410047 */  slti    $at, $v0, 0x0047           
/* 026FC 80ADB68C 10000012 */  beq     $zero, $zero, .L80ADB6D8   
/* 02700 80ADB690 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02704 80ADB694 28410047 */  slti    $at, $v0, 0x0047           
.L80ADB698:
/* 02708 80ADB698 14200003 */  bne     $at, $zero, .L80ADB6A8     
/* 0270C 80ADB69C 24060040 */  addiu   $a2, $zero, 0x0040         ## $a2 = 00000040
/* 02710 80ADB6A0 1000000D */  beq     $zero, $zero, .L80ADB6D8   
/* 02714 80ADB6A4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80ADB6A8:
/* 02718 80ADB6A8 28410038 */  slti    $at, $v0, 0x0038           
/* 0271C 80ADB6AC 14200003 */  bne     $at, $zero, .L80ADB6BC     
/* 02720 80ADB6B0 24060060 */  addiu   $a2, $zero, 0x0060         ## $a2 = 00000060
/* 02724 80ADB6B4 10000008 */  beq     $zero, $zero, .L80ADB6D8   
/* 02728 80ADB6B8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80ADB6BC:
/* 0272C 80ADB6BC 28410029 */  slti    $at, $v0, 0x0029           
/* 02730 80ADB6C0 14200004 */  bne     $at, $zero, .L80ADB6D4     
/* 02734 80ADB6C4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02738 80ADB6C8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0273C 80ADB6CC 10000002 */  beq     $zero, $zero, .L80ADB6D8   
/* 02740 80ADB6D0 24060060 */  addiu   $a2, $zero, 0x0060         ## $a2 = 00000060
.L80ADB6D4:
/* 02744 80ADB6D4 24060100 */  addiu   $a2, $zero, 0x0100         ## $a2 = 00000100
.L80ADB6D8:
/* 02748 80ADB6D8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0274C 80ADB6DC 14810004 */  bne     $a0, $at, .L80ADB6F0       
/* 02750 80ADB6E0 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 02754 80ADB6E4 00063040 */  sll     $a2, $a2,  1               
/* 02758 80ADB6E8 00063400 */  sll     $a2, $a2, 16               
/* 0275C 80ADB6EC 00063403 */  sra     $a2, $a2, 16               
.L80ADB6F0:
/* 02760 80ADB6F0 0003C380 */  sll     $t8, $v1, 14               
/* 02764 80ADB6F4 03020019 */  multu   $t8, $v0                   
/* 02768 80ADB6F8 8E0E0118 */  lw      $t6, 0x0118($s0)           ## 00000118
/* 0276C 80ADB6FC 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 02770 80ADB700 85CF00B6 */  lh      $t7, 0x00B6($t6)           ## 000000B6
/* 02774 80ADB704 00004012 */  mflo    $t0                        
/* 02778 80ADB708 01E82821 */  addu    $a1, $t7, $t0              
/* 0277C 80ADB70C 00052C00 */  sll     $a1, $a1, 16               
/* 02780 80ADB710 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 02784 80ADB714 00052C03 */  sra     $a1, $a1, 16               
/* 02788 80ADB718 1000000B */  beq     $zero, $zero, .L80ADB748   
/* 0278C 80ADB71C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADB720:
/* 02790 80ADB720 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 02794 80ADB724 24010046 */  addiu   $at, $zero, 0x0046         ## $at = 00000046
/* 02798 80ADB728 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0279C 80ADB72C 10410003 */  beq     $v0, $at, .L80ADB73C       
/* 027A0 80ADB730 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 027A4 80ADB734 54410004 */  bnel    $v0, $at, .L80ADB748       
/* 027A8 80ADB738 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADB73C:
/* 027AC 80ADB73C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 027B0 80ADB740 240538EF */  addiu   $a1, $zero, 0x38EF         ## $a1 = 000038EF
/* 027B4 80ADB744 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADB748:
/* 027B8 80ADB748 0C2B65F2 */  jal     func_80AD97C8              
/* 027BC 80ADB74C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 027C0 80ADB750 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027C4 80ADB754 0C00B56E */  jal     Actor_SetHeight
              
/* 027C8 80ADB758 3C054220 */  lui     $a1, 0x4220                ## $a1 = 42200000
/* 027CC 80ADB75C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 027D0 80ADB760 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 027D4 80ADB764 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 027D8 80ADB768 03E00008 */  jr      $ra                        
/* 027DC 80ADB76C 00000000 */  nop
