glabel func_80AADCD0
/* 00560 80AADCD0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00564 80AADCD4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00568 80AADCD8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0056C 80AADCDC 8C8201E0 */  lw      $v0, 0x01E0($a0)           ## 000001E0
/* 00570 80AADCE0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00574 80AADCE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00578 80AADCE8 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 0057C 80AADCEC 14410007 */  bne     $v0, $at, .L80AADD0C       
/* 00580 80AADCF0 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00584 80AADCF4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00588 80AADCF8 0C042DC8 */  jal     func_8010B720              
/* 0058C 80AADCFC 9465010E */  lhu     $a1, 0x010E($v1)           ## 0000010E
/* 00590 80AADD00 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00594 80AADD04 1000004D */  beq     $zero, $zero, .L80AADE3C   
/* 00598 80AADD08 AE0E01E0 */  sw      $t6, 0x01E0($s0)           ## 000001E0
.L80AADD0C:
/* 0059C 80AADD0C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 005A0 80AADD10 14410006 */  bne     $v0, $at, .L80AADD2C       
/* 005A4 80AADD14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005A8 80AADD18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005AC 80AADD1C 0C2AB6A8 */  jal     func_80AADAA0              
/* 005B0 80AADD20 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 005B4 80AADD24 10000045 */  beq     $zero, $zero, .L80AADE3C   
/* 005B8 80AADD28 AE0201E0 */  sw      $v0, 0x01E0($s0)           ## 000001E0
.L80AADD2C:
/* 005BC 80AADD2C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 005C0 80AADD30 0C00BC65 */  jal     func_8002F194              
/* 005C4 80AADD34 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 005C8 80AADD38 10400014 */  beq     $v0, $zero, .L80AADD8C     
/* 005CC 80AADD3C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 005D0 80AADD40 8E180258 */  lw      $t8, 0x0258($s0)           ## 00000258
/* 005D4 80AADD44 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 005D8 80AADD48 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 005DC 80AADD4C 1301003B */  beq     $t8, $at, .L80AADE3C       
/* 005E0 80AADD50 AE0F01E0 */  sw      $t7, 0x01E0($s0)           ## 000001E0
/* 005E4 80AADD54 9602010E */  lhu     $v0, 0x010E($s0)           ## 0000010E
/* 005E8 80AADD58 2401202A */  addiu   $at, $zero, 0x202A         ## $at = 0000202A
/* 005EC 80AADD5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005F0 80AADD60 10410004 */  beq     $v0, $at, .L80AADD74       
/* 005F4 80AADD64 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 005F8 80AADD68 2401202B */  addiu   $at, $zero, 0x202B         ## $at = 0000202B
/* 005FC 80AADD6C 54410034 */  bnel    $v0, $at, .L80AADE40       
/* 00600 80AADD70 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AADD74:
/* 00604 80AADD74 0C2AB5DC */  jal     func_80AAD770              
/* 00608 80AADD78 26060258 */  addiu   $a2, $s0, 0x0258           ## $a2 = 00000258
/* 0060C 80AADD7C 0C01E221 */  jal     func_80078884              
/* 00610 80AADD80 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 00614 80AADD84 1000002E */  beq     $zero, $zero, .L80AADE40   
/* 00618 80AADD88 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AADD8C:
/* 0061C 80AADD8C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00620 80AADD90 27A60026 */  addiu   $a2, $sp, 0x0026           ## $a2 = FFFFFFF6
/* 00624 80AADD94 0C00BCDD */  jal     func_8002F374              
/* 00628 80AADD98 27A70024 */  addiu   $a3, $sp, 0x0024           ## $a3 = FFFFFFF4
/* 0062C 80AADD9C 8619008A */  lh      $t9, 0x008A($s0)           ## 0000008A
/* 00630 80AADDA0 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 00634 80AADDA4 03281023 */  subu    $v0, $t9, $t0              
/* 00638 80AADDA8 00021400 */  sll     $v0, $v0, 16               
/* 0063C 80AADDAC 00021403 */  sra     $v0, $v0, 16               
/* 00640 80AADDB0 04400004 */  bltz    $v0, .L80AADDC4            
/* 00644 80AADDB4 00024823 */  subu    $t1, $zero, $v0            
/* 00648 80AADDB8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0064C 80AADDBC 10000004 */  beq     $zero, $zero, .L80AADDD0   
/* 00650 80AADDC0 46802020 */  cvt.s.w $f0, $f4                   
.L80AADDC4:
/* 00654 80AADDC4 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 00658 80AADDC8 00000000 */  nop
/* 0065C 80AADDCC 46803020 */  cvt.s.w $f0, $f6                   
.L80AADDD0:
/* 00660 80AADDD0 87A20026 */  lh      $v0, 0x0026($sp)           
/* 00664 80AADDD4 04400019 */  bltz    $v0, .L80AADE3C            
/* 00668 80AADDD8 28410141 */  slti    $at, $v0, 0x0141           
/* 0066C 80AADDDC 10200017 */  beq     $at, $zero, .L80AADE3C     
/* 00670 80AADDE0 87A20024 */  lh      $v0, 0x0024($sp)           
/* 00674 80AADDE4 04400015 */  bltz    $v0, .L80AADE3C            
/* 00678 80AADDE8 284100F1 */  slti    $at, $v0, 0x00F1           
/* 0067C 80AADDEC 10200013 */  beq     $at, $zero, .L80AADE3C     
/* 00680 80AADDF0 3C014686 */  lui     $at, 0x4686                ## $at = 46860000
/* 00684 80AADDF4 44814000 */  mtc1    $at, $f8                   ## $f8 = 17152.00
/* 00688 80AADDF8 00000000 */  nop
/* 0068C 80AADDFC 4608003E */  c.le.s  $f0, $f8                   
/* 00690 80AADE00 00000000 */  nop
/* 00694 80AADE04 4502000E */  bc1fl   .L80AADE40                 
/* 00698 80AADE08 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0069C 80AADE0C 8E0A01E0 */  lw      $t2, 0x01E0($s0)           ## 000001E0
/* 006A0 80AADE10 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 006A4 80AADE14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006A8 80AADE18 11410008 */  beq     $t2, $at, .L80AADE3C       
/* 006AC 80AADE1C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 006B0 80AADE20 0C00BCB3 */  jal     func_8002F2CC              
/* 006B4 80AADE24 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
/* 006B8 80AADE28 10400004 */  beq     $v0, $zero, .L80AADE3C     
/* 006BC 80AADE2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006C0 80AADE30 0C2AB70D */  jal     func_80AADC34              
/* 006C4 80AADE34 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 006C8 80AADE38 A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
.L80AADE3C:
/* 006CC 80AADE3C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AADE40:
/* 006D0 80AADE40 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 006D4 80AADE44 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 006D8 80AADE48 03E00008 */  jr      $ra                        
/* 006DC 80AADE4C 00000000 */  nop
