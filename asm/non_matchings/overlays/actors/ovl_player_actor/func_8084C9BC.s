glabel func_8084C9BC
/* 1A7AC 8084C9BC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 1A7B0 8084C9C0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1A7B4 8084C9C4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1A7B8 8084C9C8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 1A7BC 8084C9CC 848E0850 */  lh      $t6, 0x0850($a0)           ## 00000850
/* 1A7C0 8084C9D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1A7C4 8084C9D4 8C880440 */  lw      $t0, 0x0440($a0)           ## 00000440
/* 1A7C8 8084C9D8 05C10004 */  bgez    $t6, .L8084C9EC            
/* 1A7CC 8084C9DC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1A7D0 8084C9E0 240F0063 */  addiu   $t7, $zero, 0x0063         ## $t7 = 00000063
/* 1A7D4 8084C9E4 1000007D */  beq     $zero, $zero, .L8084CBDC   
/* 1A7D8 8084C9E8 A48F0850 */  sh      $t7, 0x0850($a0)           ## 00000850
.L8084C9EC:
/* 1A7DC 8084C9EC 8218043C */  lb      $t8, 0x043C($s0)           ## 0000043C
/* 1A7E0 8084C9F0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 1A7E4 8084C9F4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 1A7E8 8084C9F8 07010003 */  bgez    $t8, .L8084CA08            
/* 1A7EC 8084C9FC 27A70034 */  addiu   $a3, $sp, 0x0034           ## $a3 = FFFFFFF4
/* 1A7F0 8084CA00 10000001 */  beq     $zero, $zero, .L8084CA08   
/* 1A7F4 8084CA04 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L8084CA08:
/* 1A7F8 8084CA08 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 1A7FC 8084CA0C 0C213227 */  jal     func_8084C89C              
/* 1A800 8084CA10 AFA8003C */  sw      $t0, 0x003C($sp)           
/* 1A804 8084CA14 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 1A808 8084CA18 1440000E */  bne     $v0, $zero, .L8084CA54     
/* 1A80C 8084CA1C 8FA8003C */  lw      $t0, 0x003C($sp)           
/* 1A810 8084CA20 38C60001 */  xori    $a2, $a2, 0x0001           ## $a2 = 00000001
/* 1A814 8084CA24 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 1A818 8084CA28 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1A81C 8084CA2C 27A70034 */  addiu   $a3, $sp, 0x0034           ## $a3 = FFFFFFF4
/* 1A820 8084CA30 0C213227 */  jal     func_8084C89C              
/* 1A824 8084CA34 AFA8003C */  sw      $t0, 0x003C($sp)           
/* 1A828 8084CA38 14400003 */  bne     $v0, $zero, .L8084CA48     
/* 1A82C 8084CA3C 8FA8003C */  lw      $t0, 0x003C($sp)           
/* 1A830 8084CA40 10000067 */  beq     $zero, $zero, .L8084CBE0   
/* 1A834 8084CA44 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8084CA48:
/* 1A838 8084CA48 8219043C */  lb      $t9, 0x043C($s0)           ## 0000043C
/* 1A83C 8084CA4C 00194823 */  subu    $t1, $zero, $t9            
/* 1A840 8084CA50 A209043C */  sb      $t1, 0x043C($s0)           ## 0000043C
.L8084CA54:
/* 1A844 8084CA54 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 1A848 8084CA58 3C0B0001 */  lui     $t3, 0x0001                ## $t3 = 00010000
/* 1A84C 8084CA5C 908A1D6C */  lbu     $t2, 0x1D6C($a0)           ## 00001D6C
/* 1A850 8084CA60 01645821 */  addu    $t3, $t3, $a0              
/* 1A854 8084CA64 5540005E */  bnel    $t2, $zero, .L8084CBE0     
/* 1A858 8084CA68 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1A85C 8084CA6C 916B241B */  lbu     $t3, 0x241B($t3)           ## 0001241B
/* 1A860 8084CA70 5560005B */  bnel    $t3, $zero, .L8084CBE0     
/* 1A864 8084CA74 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1A868 8084CA78 8D0301F0 */  lw      $v1, 0x01F0($t0)           ## 000001F0
/* 1A86C 8084CA7C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1A870 8084CA80 306C0040 */  andi    $t4, $v1, 0x0040           ## $t4 = 00000000
/* 1A874 8084CA84 11800003 */  beq     $t4, $zero, .L8084CA94     
/* 1A878 8084CA88 00000000 */  nop
/* 1A87C 8084CA8C 10000001 */  beq     $zero, $zero, .L8084CA94   
/* 1A880 8084CA90 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L8084CA94:
/* 1A884 8084CA94 54C00014 */  bnel    $a2, $zero, .L8084CAE8     
/* 1A888 8084CA98 8E0F0680 */  lw      $t7, 0x0680($s0)           ## 00000680
/* 1A88C 8084CA9C 8D02014C */  lw      $v0, 0x014C($t0)           ## 0000014C
/* 1A890 8084CAA0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 1A894 8084CAA4 00036B00 */  sll     $t5, $v1, 12               
/* 1A898 8084CAA8 10410005 */  beq     $v0, $at, .L8084CAC0       
/* 1A89C 8084CAAC 00000000 */  nop
/* 1A8A0 8084CAB0 10400003 */  beq     $v0, $zero, .L8084CAC0     
/* 1A8A4 8084CAB4 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 1A8A8 8084CAB8 54410008 */  bnel    $v0, $at, .L8084CADC       
/* 1A8AC 8084CABC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8084CAC0:
/* 1A8B0 8084CAC0 05A00005 */  bltz    $t5, .L8084CAD8            
/* 1A8B4 8084CAC4 00037180 */  sll     $t6, $v1,  6               
/* 1A8B8 8084CAC8 05C20004 */  bltzl   $t6, .L8084CADC            
/* 1A8BC 8084CACC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1A8C0 8084CAD0 10000002 */  beq     $zero, $zero, .L8084CADC   
/* 1A8C4 8084CAD4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8084CAD8:
/* 1A8C8 8084CAD8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8084CADC:
/* 1A8CC 8084CADC 50400040 */  beql    $v0, $zero, .L8084CBE0     
/* 1A8D0 8084CAE0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1A8D4 8084CAE4 8E0F0680 */  lw      $t7, 0x0680($s0)           ## 00000680
.L8084CAE8:
/* 1A8D8 8084CAE8 3C010040 */  lui     $at, 0x0040                ## $at = 00400000
/* 1A8DC 8084CAEC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1A8E0 8084CAF0 01E1C025 */  or      $t8, $t7, $at              ## $t8 = 00400000
/* 1A8E4 8084CAF4 AE180680 */  sw      $t8, 0x0680($s0)           ## 00000680
/* 1A8E8 8084CAF8 8D0301F0 */  lw      $v1, 0x01F0($t0)           ## 000001F0
/* 1A8EC 8084CAFC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1A8F0 8084CB00 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 1A8F4 8084CB04 30790040 */  andi    $t9, $v1, 0x0040           ## $t9 = 00000000
/* 1A8F8 8084CB08 13200003 */  beq     $t9, $zero, .L8084CB18     
/* 1A8FC 8084CB0C 00000000 */  nop
/* 1A900 8084CB10 10000001 */  beq     $zero, $zero, .L8084CB18   
/* 1A904 8084CB14 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L8084CB18:
/* 1A908 8084CB18 54C0001B */  bnel    $a2, $zero, .L8084CB88     
/* 1A90C 8084CB1C AD00011C */  sw      $zero, 0x011C($t0)         ## 0000011C
/* 1A910 8084CB20 8D02014C */  lw      $v0, 0x014C($t0)           ## 0000014C
/* 1A914 8084CB24 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 1A918 8084CB28 00034B00 */  sll     $t1, $v1, 12               
/* 1A91C 8084CB2C 10410005 */  beq     $v0, $at, .L8084CB44       
/* 1A920 8084CB30 3C0B8086 */  lui     $t3, %hi(D_80858AB4)       ## $t3 = 80860000
/* 1A924 8084CB34 10400003 */  beq     $v0, $zero, .L8084CB44     
/* 1A928 8084CB38 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 1A92C 8084CB3C 54410008 */  bnel    $v0, $at, .L8084CB60       
/* 1A930 8084CB40 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8084CB44:
/* 1A934 8084CB44 05200005 */  bltz    $t1, .L8084CB5C            
/* 1A938 8084CB48 00035180 */  sll     $t2, $v1,  6               
/* 1A93C 8084CB4C 05420004 */  bltzl   $t2, .L8084CB60            
/* 1A940 8084CB50 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1A944 8084CB54 10000002 */  beq     $zero, $zero, .L8084CB60   
/* 1A948 8084CB58 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8084CB5C:
/* 1A94C 8084CB5C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8084CB60:
/* 1A950 8084CB60 5040001F */  beql    $v0, $zero, .L8084CBE0     
/* 1A954 8084CB64 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1A958 8084CB68 8D6B8AB4 */  lw      $t3, %lo(D_80858AB4)($t3)  
/* 1A95C 8084CB6C 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 1A960 8084CB70 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 1A964 8084CB74 956C000C */  lhu     $t4, 0x000C($t3)           ## 8086000C
/* 1A968 8084CB78 01816827 */  nor     $t5, $t4, $at              
/* 1A96C 8084CB7C 55A00018 */  bnel    $t5, $zero, .L8084CBE0     
/* 1A970 8084CB80 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1A974 8084CB84 AD00011C */  sw      $zero, 0x011C($t0)         ## 0000011C
.L8084CB88:
/* 1A978 8084CB88 3C068085 */  lui     $a2, %hi(func_8084D3E4)    ## $a2 = 80850000
/* 1A97C 8084CB8C 24C6D3E4 */  addiu   $a2, $a2, %lo(func_8084D3E4) ## $a2 = 8084D3E4
/* 1A980 8084CB90 0C20D76B */  jal     func_80835DAC              
/* 1A984 8084CB94 AFA8003C */  sw      $t0, 0x003C($sp)           
/* 1A988 8084CB98 8FA8003C */  lw      $t0, 0x003C($sp)           
/* 1A98C 8084CB9C C7A40034 */  lwc1    $f4, 0x0034($sp)           
/* 1A990 8084CBA0 820E043C */  lb      $t6, 0x043C($s0)           ## 0000043C
/* 1A994 8084CBA4 C5060028 */  lwc1    $f6, 0x0028($t0)           ## 00000028
/* 1A998 8084CBA8 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1A99C 8084CBAC 24C633A0 */  addiu   $a2, $a2, 0x33A0           ## $a2 = 040033A0
/* 1A9A0 8084CBB0 46062201 */  sub.s   $f8, $f4, $f6              
/* 1A9A4 8084CBB4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1A9A8 8084CBB8 05C10004 */  bgez    $t6, .L8084CBCC            
/* 1A9AC 8084CBBC E6080878 */  swc1    $f8, 0x0878($s0)           ## 00000878
/* 1A9B0 8084CBC0 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1A9B4 8084CBC4 10000001 */  beq     $zero, $zero, .L8084CBCC   
/* 1A9B8 8084CBC8 24C63390 */  addiu   $a2, $a2, 0x3390           ## $a2 = 04003390
.L8084CBCC:
/* 1A9BC 8084CBCC 0C20C899 */  jal     func_80832264              
/* 1A9C0 8084CBD0 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 1A9C4 8084CBD4 10000002 */  beq     $zero, $zero, .L8084CBE0   
/* 1A9C8 8084CBD8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8084CBDC:
/* 1A9CC 8084CBDC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8084CBE0:
/* 1A9D0 8084CBE0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1A9D4 8084CBE4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1A9D8 8084CBE8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 1A9DC 8084CBEC 03E00008 */  jr      $ra                        
/* 1A9E0 8084CBF0 00000000 */  nop
