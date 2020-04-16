glabel func_8084ECA4
/* 1CA94 8084ECA4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1CA98 8084ECA8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1CA9C 8084ECAC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1CAA0 8084ECB0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 1CAA4 8084ECB4 848E0850 */  lh      $t6, 0x0850($a0)           ## 00000850
/* 1CAA8 8084ECB8 3C188085 */  lui     $t8, %hi(D_80854554)       ## $t8 = 80850000
/* 1CAAC 8084ECBC 27184554 */  addiu   $t8, $t8, %lo(D_80854554)  ## $t8 = 80854554
/* 1CAB0 8084ECC0 000E7880 */  sll     $t7, $t6,  2               
/* 1CAB4 8084ECC4 01EE7823 */  subu    $t7, $t7, $t6              
/* 1CAB8 8084ECC8 000F7880 */  sll     $t7, $t7,  2               
/* 1CABC 8084ECCC 01F8C821 */  addu    $t9, $t7, $t8              
/* 1CAC0 8084ECD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1CAC4 8084ECD4 0C20DC87 */  jal     func_8083721C              
/* 1CAC8 8084ECD8 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 1CACC 8084ECDC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 1CAD0 8084ECE0 0C028EF0 */  jal     func_800A3BC0              
/* 1CAD4 8084ECE4 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1CAD8 8084ECE8 50400027 */  beql    $v0, $zero, .L8084ED88     
/* 1CADC 8084ECEC 820B084F */  lb      $t3, 0x084F($s0)           ## 0000084F
/* 1CAE0 8084ECF0 8202084F */  lb      $v0, 0x084F($s0)           ## 0000084F
/* 1CAE4 8084ECF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1CAE8 8084ECF8 1040001E */  beq     $v0, $zero, .L8084ED74     
/* 1CAEC 8084ECFC 00000000 */  nop
/* 1CAF0 8084ED00 86080850 */  lh      $t0, 0x0850($s0)           ## 00000850
/* 1CAF4 8084ED04 00024880 */  sll     $t1, $v0,  2               
/* 1CAF8 8084ED08 01224823 */  subu    $t1, $t1, $v0              
/* 1CAFC 8084ED0C 1500000D */  bne     $t0, $zero, .L8084ED44     
/* 1CB00 8084ED10 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 1CB04 8084ED14 00094840 */  sll     $t1, $t1,  1               
/* 1CB08 8084ED18 3C058085 */  lui     $a1, %hi(D_80854A02)       ## $a1 = 80850000
/* 1CB0C 8084ED1C 00A92821 */  addu    $a1, $a1, $t1              
/* 1CB10 8084ED20 90A54A02 */  lbu     $a1, %lo(D_80854A02)($a1)  
/* 1CB14 8084ED24 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 1CB18 8084ED28 0C042DA0 */  jal     func_8010B680              
/* 1CB1C 8084ED2C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 1CB20 8084ED30 0C03D719 */  jal     func_800F5C64              
/* 1CB24 8084ED34 24040922 */  addiu   $a0, $zero, 0x0922         ## $a0 = 00000922
/* 1CB28 8084ED38 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 1CB2C 8084ED3C 10000057 */  beq     $zero, $zero, .L8084EE9C   
/* 1CB30 8084ED40 A60A0850 */  sh      $t2, 0x0850($s0)           ## 00000850
.L8084ED44:
/* 1CB34 8084ED44 0C042F6F */  jal     func_8010BDBC              
/* 1CB38 8084ED48 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 1CB3C 8084ED4C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 1CB40 8084ED50 14410052 */  bne     $v0, $at, .L8084EE9C       
/* 1CB44 8084ED54 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1CB48 8084ED58 A200084F */  sb      $zero, 0x084F($s0)         ## 0000084F
/* 1CB4C 8084ED5C 0C030129 */  jal     func_800C04A4              
/* 1CB50 8084ED60 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 1CB54 8084ED64 0C016C69 */  jal     func_8005B1A4              
/* 1CB58 8084ED68 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1CB5C 8084ED6C 1000004C */  beq     $zero, $zero, .L8084EEA0   
/* 1CB60 8084ED70 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
.L8084ED74:
/* 1CB64 8084ED74 0C20F03A */  jal     func_8083C0E8              
/* 1CB68 8084ED78 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 1CB6C 8084ED7C 10000048 */  beq     $zero, $zero, .L8084EEA0   
/* 1CB70 8084ED80 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 1CB74 8084ED84 820B084F */  lb      $t3, 0x084F($s0)           ## 0000084F
.L8084ED88:
/* 1CB78 8084ED88 8FAC0024 */  lw      $t4, 0x0024($sp)           
/* 1CB7C 8084ED8C 55600044 */  bnel    $t3, $zero, .L8084EEA0     
/* 1CB80 8084ED90 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 1CB84 8084ED94 918D0008 */  lbu     $t5, 0x0008($t4)           ## 00000008
/* 1CB88 8084ED98 C60401CC */  lwc1    $f4, 0x01CC($s0)           ## 000001CC
/* 1CB8C 8084ED9C 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 1CB90 8084EDA0 448D3000 */  mtc1    $t5, $f6                   ## $f6 = 0.00
/* 1CB94 8084EDA4 05A10004 */  bgez    $t5, .L8084EDB8            
/* 1CB98 8084EDA8 46803220 */  cvt.s.w $f8, $f6                   
/* 1CB9C 8084EDAC 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 1CBA0 8084EDB0 00000000 */  nop
/* 1CBA4 8084EDB4 460A4200 */  add.s   $f8, $f8, $f10             
.L8084EDB8:
/* 1CBA8 8084EDB8 46082401 */  sub.s   $f16, $f4, $f8             
/* 1CBAC 8084EDBC 4600848D */  trunc.w.s $f18, $f16                 
/* 1CBB0 8084EDC0 44029000 */  mfc1    $v0, $f18                  
/* 1CBB4 8084EDC4 00000000 */  nop
/* 1CBB8 8084EDC8 04420035 */  bltzl   $v0, .L8084EEA0            
/* 1CBBC 8084EDCC 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 1CBC0 8084EDD0 918F0009 */  lbu     $t7, 0x0009($t4)           ## 00000009
/* 1CBC4 8084EDD4 01E2082A */  slt     $at, $t7, $v0              
/* 1CBC8 8084EDD8 54200031 */  bnel    $at, $zero, .L8084EEA0     
/* 1CBCC 8084EDDC 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 1CBD0 8084EDE0 86180850 */  lh      $t8, 0x0850($s0)           ## 00000850
/* 1CBD4 8084EDE4 53000006 */  beql    $t8, $zero, .L8084EE00     
/* 1CBD8 8084EDE8 8E060438 */  lw      $a2, 0x0438($s0)           ## 00000438
/* 1CBDC 8084EDEC 14400003 */  bne     $v0, $zero, .L8084EDFC     
/* 1CBE0 8084EDF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1CBE4 8084EDF4 0C00BDF7 */  jal     func_8002F7DC              
/* 1CBE8 8084EDF8 24052868 */  addiu   $a1, $zero, 0x2868         ## $a1 = 00002868
.L8084EDFC:
/* 1CBEC 8084EDFC 8E060438 */  lw      $a2, 0x0438($s0)           ## 00000438
.L8084EE00:
/* 1CBF0 8084EE00 3C038085 */  lui     $v1, %hi(D_80854A04)       ## $v1 = 80850000
/* 1CBF4 8084EE04 24634A04 */  addiu   $v1, $v1, %lo(D_80854A04)  ## $v1 = 80854A04
/* 1CBF8 8084EE08 10C00024 */  beq     $a2, $zero, .L8084EE9C     
/* 1CBFC 8084EE0C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1CC00 8084EE10 84C40000 */  lh      $a0, 0x0000($a2)           ## 00000000
/* 1CC04 8084EE14 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
.L8084EE18:
/* 1CC08 8084EE18 84790000 */  lh      $t9, 0x0000($v1)           ## 80854A04
/* 1CC0C 8084EE1C 53240005 */  beql    $t9, $a0, .L8084EE34       
/* 1CC10 8084EE20 28410004 */  slti    $at, $v0, 0x0004           
/* 1CC14 8084EE24 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 1CC18 8084EE28 1445FFFB */  bne     $v0, $a1, .L8084EE18       
/* 1CC1C 8084EE2C 24630006 */  addiu   $v1, $v1, 0x0006           ## $v1 = 80854A0A
/* 1CC20 8084EE30 28410004 */  slti    $at, $v0, 0x0004           
.L8084EE34:
/* 1CC24 8084EE34 10200019 */  beq     $at, $zero, .L8084EE9C     
/* 1CC28 8084EE38 24480001 */  addiu   $t0, $v0, 0x0001           ## $t0 = 00000002
/* 1CC2C 8084EE3C 8E09067C */  lw      $t1, 0x067C($s0)           ## 0000067C
/* 1CC30 8084EE40 3C013000 */  lui     $at, 0x3000                ## $at = 30000000
/* 1CC34 8084EE44 A208084F */  sb      $t0, 0x084F($s0)           ## 0000084F
/* 1CC38 8084EE48 01215025 */  or      $t2, $t1, $at              ## $t2 = 30000000
/* 1CC3C 8084EE4C A6000850 */  sh      $zero, 0x0850($s0)         ## 00000850
/* 1CC40 8084EE50 AE0A067C */  sw      $t2, 0x067C($s0)           ## 0000067C
/* 1CC44 8084EE54 ACD00118 */  sw      $s0, 0x0118($a2)           ## 00000118
/* 1CC48 8084EE58 90640003 */  lbu     $a0, 0x0003($v1)           ## 80854A0D
/* 1CC4C 8084EE5C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1CC50 8084EE60 04800003 */  bltz    $a0, .L8084EE70            
/* 1CC54 8084EE64 00043823 */  subu    $a3, $zero, $a0            
/* 1CC58 8084EE68 10000001 */  beq     $zero, $zero, .L8084EE70   
/* 1CC5C 8084EE6C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
.L8084EE70:
/* 1CC60 8084EE70 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 1CC64 8084EE74 0C023B67 */  jal     func_8008ED9C              
/* 1CC68 8084EE78 90660002 */  lbu     $a2, 0x0002($v1)           ## 80854A0C
/* 1CC6C 8084EE7C 8FAB0024 */  lw      $t3, 0x0024($sp)           
/* 1CC70 8084EE80 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 1CC74 8084EE84 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1CC78 8084EE88 0C20C8B4 */  jal     func_808322D0              
/* 1CC7C 8084EE8C 8D660004 */  lw      $a2, 0x0004($t3)           ## 00000004
/* 1CC80 8084EE90 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 1CC84 8084EE94 0C20D7A9 */  jal     func_80835EA4              
/* 1CC88 8084EE98 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
.L8084EE9C:
/* 1CC8C 8084EE9C 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
.L8084EEA0:
/* 1CC90 8084EEA0 44813000 */  mtc1    $at, $f6                   ## $f6 = 7.00
/* 1CC94 8084EEA4 C60A01CC */  lwc1    $f10, 0x01CC($s0)          ## 000001CC
/* 1CC98 8084EEA8 4606503E */  c.le.s  $f10, $f6                  
/* 1CC9C 8084EEAC 00000000 */  nop
/* 1CCA0 8084EEB0 45020005 */  bc1fl   .L8084EEC8                 
/* 1CCA4 8084EEB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1CCA8 8084EEB8 8E0D067C */  lw      $t5, 0x067C($s0)           ## 0000067C
/* 1CCAC 8084EEBC 35AE0002 */  ori     $t6, $t5, 0x0002           ## $t6 = 00000002
/* 1CCB0 8084EEC0 AE0E067C */  sw      $t6, 0x067C($s0)           ## 0000067C
/* 1CCB4 8084EEC4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084EEC8:
/* 1CCB8 8084EEC8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1CCBC 8084EECC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1CCC0 8084EED0 03E00008 */  jr      $ra                        
/* 1CCC4 8084EED4 00000000 */  nop
