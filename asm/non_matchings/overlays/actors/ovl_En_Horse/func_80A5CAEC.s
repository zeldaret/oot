.late_rodata
glabel D_80A66880
 .word 0x3D75C28F
glabel D_80A66884
 .word 0x3C97B426
glabel D_80A66888
    .float 0.01

glabel D_80A6688C
 .word 0x38021CC8
glabel D_80A66890
 .word 0x400CCCCD, 0x00000000

.text
glabel func_80A5CAEC
/* 017FC 80A5CAEC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01800 80A5CAF0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01804 80A5CAF4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01808 80A5CAF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0180C 80A5CAFC AFA5004C */  sw      $a1, 0x004C($sp)           
/* 01810 80A5CB00 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 01814 80A5CB04 0C296FFE */  jal     func_80A5BFF8              
/* 01818 80A5CB08 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 0181C 80A5CB0C 14400014 */  bne     $v0, $zero, .L80A5CB60     
/* 01820 80A5CB10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01824 80A5CB14 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01828 80A5CB18 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 0182C 80A5CB1C C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 01830 80A5CB20 C7A6005C */  lwc1    $f6, 0x005C($sp)           
/* 01834 80A5CB24 4602203C */  c.lt.s  $f4, $f2                   
/* 01838 80A5CB28 00000000 */  nop
/* 0183C 80A5CB2C 45020005 */  bc1fl   .L80A5CB44                 
/* 01840 80A5CB30 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01844 80A5CB34 46061201 */  sub.s   $f8, $f2, $f6              
/* 01848 80A5CB38 100000F6 */  beq     $zero, $zero, .L80A5CF14   
/* 0184C 80A5CB3C E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 01850 80A5CB40 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80A5CB44:
/* 01854 80A5CB44 00000000 */  nop
/* 01858 80A5CB48 4600103C */  c.lt.s  $f2, $f0                   
/* 0185C 80A5CB4C 00000000 */  nop
/* 01860 80A5CB50 450200F1 */  bc1fl   .L80A5CF18                 
/* 01864 80A5CB54 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01868 80A5CB58 100000EE */  beq     $zero, $zero, .L80A5CF14   
/* 0186C 80A5CB5C E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
.L80A5CB60:
/* 01870 80A5CB60 0C296EC5 */  jal     func_80A5BB14              
/* 01874 80A5CB64 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 01878 80A5CB68 C7AC0060 */  lwc1    $f12, 0x0060($sp)          
/* 0187C 80A5CB6C 26040264 */  addiu   $a0, $s0, 0x0264           ## $a0 = 00000264
/* 01880 80A5CB70 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFF8
/* 01884 80A5CB74 46006302 */  mul.s   $f12, $f12, $f0            
/* 01888 80A5CB78 27A6003E */  addiu   $a2, $sp, 0x003E           ## $a2 = FFFFFFF6
/* 0188C 80A5CB7C 0C298C52 */  jal     func_80A63148              
/* 01890 80A5CB80 E7AC0060 */  swc1    $f12, 0x0060($sp)          
/* 01894 80A5CB84 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01898 80A5CB88 87A4003E */  lh      $a0, 0x003E($sp)           
/* 0189C 80A5CB8C C7AA0054 */  lwc1    $f10, 0x0054($sp)          
/* 018A0 80A5CB90 C7AC0060 */  lwc1    $f12, 0x0060($sp)          
/* 018A4 80A5CB94 C7A60050 */  lwc1    $f6, 0x0050($sp)           
/* 018A8 80A5CB98 460A003E */  c.le.s  $f0, $f10                  
/* 018AC 80A5CB9C C7AA0040 */  lwc1    $f10, 0x0040($sp)          
/* 018B0 80A5CBA0 C7A40058 */  lwc1    $f4, 0x0058($sp)           
/* 018B4 80A5CBA4 4502000F */  bc1fl   .L80A5CBE4                 
/* 018B8 80A5CBA8 4604503C */  c.lt.s  $f10, $f4                  
/* 018BC 80A5CBAC C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 018C0 80A5CBB0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 018C4 80A5CBB4 46062201 */  sub.s   $f8, $f4, $f6              
/* 018C8 80A5CBB8 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 018CC 80A5CBBC C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 018D0 80A5CBC0 4600103C */  c.lt.s  $f2, $f0                   
/* 018D4 80A5CBC4 00000000 */  nop
/* 018D8 80A5CBC8 45000003 */  bc1f    .L80A5CBD8                 
/* 018DC 80A5CBCC 00000000 */  nop
/* 018E0 80A5CBD0 100000D0 */  beq     $zero, $zero, .L80A5CF14   
/* 018E4 80A5CBD4 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
.L80A5CBD8:
/* 018E8 80A5CBD8 100000CE */  beq     $zero, $zero, .L80A5CF14   
/* 018EC 80A5CBDC E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 018F0 80A5CBE0 4604503C */  c.lt.s  $f10, $f4                  
.L80A5CBE4:
/* 018F4 80A5CBE4 00000000 */  nop
/* 018F8 80A5CBE8 45020015 */  bc1fl   .L80A5CC40                 
/* 018FC 80A5CBEC 8E0201F0 */  lw      $v0, 0x01F0($s0)           ## 000001F0
/* 01900 80A5CBF0 8E0E01F0 */  lw      $t6, 0x01F0($s0)           ## 000001F0
/* 01904 80A5CBF4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01908 80A5CBF8 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 0190C 80A5CBFC 01C17824 */  and     $t7, $t6, $at              
/* 01910 80A5CC00 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
/* 01914 80A5CC04 AE0F01F0 */  sw      $t7, 0x01F0($s0)           ## 000001F0
/* 01918 80A5CC08 01E1C824 */  and     $t9, $t7, $at              
/* 0191C 80A5CC0C AE1901F0 */  sw      $t9, 0x01F0($s0)           ## 000001F0
/* 01920 80A5CC10 C7A8005C */  lwc1    $f8, 0x005C($sp)           
/* 01924 80A5CC14 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01928 80A5CC18 46083281 */  sub.s   $f10, $f6, $f8             
/* 0192C 80A5CC1C E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 01930 80A5CC20 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 01934 80A5CC24 4600203C */  c.lt.s  $f4, $f0                   
/* 01938 80A5CC28 00000000 */  nop
/* 0193C 80A5CC2C 450200BA */  bc1fl   .L80A5CF18                 
/* 01940 80A5CC30 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01944 80A5CC34 100000B7 */  beq     $zero, $zero, .L80A5CF14   
/* 01948 80A5CC38 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 0194C 80A5CC3C 8E0201F0 */  lw      $v0, 0x01F0($s0)           ## 000001F0
.L80A5CC40:
/* 01950 80A5CC40 30480001 */  andi    $t0, $v0, 0x0001           ## $t0 = 00000000
/* 01954 80A5CC44 11000035 */  beq     $t0, $zero, .L80A5CD1C     
/* 01958 80A5CC48 304C0002 */  andi    $t4, $v0, 0x0002           ## $t4 = 00000000
/* 0195C 80A5CC4C 8E090240 */  lw      $t1, 0x0240($s0)           ## 00000240
/* 01960 80A5CC50 240A0010 */  addiu   $t2, $zero, 0x0010         ## $t2 = 00000010
/* 01964 80A5CC54 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 01968 80A5CC58 01495823 */  subu    $t3, $t2, $t1              
/* 0196C 80A5CC5C 19600012 */  blez    $t3, .L80A5CCA8            
/* 01970 80A5CC60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01974 80A5CC64 0C296EC5 */  jal     func_80A5BB14              
/* 01978 80A5CC68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0197C 80A5CC6C 8E0C0208 */  lw      $t4, 0x0208($s0)           ## 00000208
/* 01980 80A5CC70 8E0D0240 */  lw      $t5, 0x0240($s0)           ## 00000240
/* 01984 80A5CC74 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 01988 80A5CC78 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 0198C 80A5CC7C 01CD7823 */  subu    $t7, $t6, $t5              
/* 01990 80A5CC80 C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 01994 80A5CC84 46803220 */  cvt.s.w $f8, $f6                   
/* 01998 80A5CC88 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 0199C 80A5CC8C 46080282 */  mul.s   $f10, $f0, $f8             
/* 019A0 80A5CC90 46803220 */  cvt.s.w $f8, $f6                   
/* 019A4 80A5CC94 46025101 */  sub.s   $f4, $f10, $f2             
/* 019A8 80A5CC98 46082283 */  div.s   $f10, $f4, $f8             
/* 019AC 80A5CC9C 46025180 */  add.s   $f6, $f10, $f2             
/* 019B0 80A5CCA0 10000009 */  beq     $zero, $zero, .L80A5CCC8   
/* 019B4 80A5CCA4 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80A5CCA8:
/* 019B8 80A5CCA8 0C296EC5 */  jal     func_80A5BB14              
/* 019BC 80A5CCAC 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 019C0 80A5CCB0 8E180208 */  lw      $t8, 0x0208($s0)           ## 00000208
/* 019C4 80A5CCB4 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 019C8 80A5CCB8 00000000 */  nop
/* 019CC 80A5CCBC 46802220 */  cvt.s.w $f8, $f4                   
/* 019D0 80A5CCC0 46080282 */  mul.s   $f10, $f0, $f8             
/* 019D4 80A5CCC4 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
.L80A5CCC8:
/* 019D8 80A5CCC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 019DC 80A5CCCC 0C296EC5 */  jal     func_80A5BB14              
/* 019E0 80A5CCD0 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 019E4 80A5CCD4 8E190208 */  lw      $t9, 0x0208($s0)           ## 00000208
/* 019E8 80A5CCD8 C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 019EC 80A5CCDC 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 019F0 80A5CCE0 00000000 */  nop
/* 019F4 80A5CCE4 46803120 */  cvt.s.w $f4, $f6                   
/* 019F8 80A5CCE8 46040202 */  mul.s   $f8, $f0, $f4              
/* 019FC 80A5CCEC 4602403E */  c.le.s  $f8, $f2                   
/* 01A00 80A5CCF0 00000000 */  nop
/* 01A04 80A5CCF4 45020048 */  bc1fl   .L80A5CE18                 
/* 01A08 80A5CCF8 87AD003E */  lh      $t5, 0x003E($sp)           
/* 01A0C 80A5CCFC 8E0801F0 */  lw      $t0, 0x01F0($s0)           ## 000001F0
/* 01A10 80A5CD00 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01A14 80A5CD04 C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 01A18 80A5CD08 01015024 */  and     $t2, $t0, $at              
/* 01A1C 80A5CD0C AE0A01F0 */  sw      $t2, 0x01F0($s0)           ## 000001F0
/* 01A20 80A5CD10 354B0002 */  ori     $t3, $t2, 0x0002           ## $t3 = 00000002
/* 01A24 80A5CD14 1000003F */  beq     $zero, $zero, .L80A5CE14   
/* 01A28 80A5CD18 AE0B01F0 */  sw      $t3, 0x01F0($s0)           ## 000001F0
.L80A5CD1C:
/* 01A2C 80A5CD1C 11800015 */  beq     $t4, $zero, .L80A5CD74     
/* 01A30 80A5CD20 3C0180A6 */  lui     $at, %hi(D_80A66884)       ## $at = 80A60000
/* 01A34 80A5CD24 C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 01A38 80A5CD28 3C0180A6 */  lui     $at, %hi(D_80A66880)       ## $at = 80A60000
/* 01A3C 80A5CD2C 4602603C */  c.lt.s  $f12, $f2                  
/* 01A40 80A5CD30 00000000 */  nop
/* 01A44 80A5CD34 45020007 */  bc1fl   .L80A5CD54                 
/* 01A48 80A5CD38 460C103C */  c.lt.s  $f2, $f12                  
/* 01A4C 80A5CD3C C42A6880 */  lwc1    $f10, %lo(D_80A66880)($at) 
/* 01A50 80A5CD40 460A1181 */  sub.s   $f6, $f2, $f10             
/* 01A54 80A5CD44 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 01A58 80A5CD48 10000032 */  beq     $zero, $zero, .L80A5CE14   
/* 01A5C 80A5CD4C C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 01A60 80A5CD50 460C103C */  c.lt.s  $f2, $f12                  
.L80A5CD54:
/* 01A64 80A5CD54 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
/* 01A68 80A5CD58 00417024 */  and     $t6, $v0, $at              
/* 01A6C 80A5CD5C 4502002E */  bc1fl   .L80A5CE18                 
/* 01A70 80A5CD60 87AD003E */  lh      $t5, 0x003E($sp)           
/* 01A74 80A5CD64 E60C0068 */  swc1    $f12, 0x0068($s0)          ## 00000068
/* 01A78 80A5CD68 C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 01A7C 80A5CD6C 10000029 */  beq     $zero, $zero, .L80A5CE14   
/* 01A80 80A5CD70 AE0E01F0 */  sw      $t6, 0x01F0($s0)           ## 000001F0
.L80A5CD74:
/* 01A84 80A5CD74 C4246884 */  lwc1    $f4, %lo(D_80A66884)($at)  
/* 01A88 80A5CD78 C7AA0040 */  lwc1    $f10, 0x0040($sp)          
/* 01A8C 80A5CD7C C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 01A90 80A5CD80 46046202 */  mul.s   $f8, $f12, $f4             
/* 01A94 80A5CD84 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 01A98 80A5CD88 460A4182 */  mul.s   $f6, $f8, $f10             
/* 01A9C 80A5CD8C 4606103E */  c.le.s  $f2, $f6                   
/* 01AA0 80A5CD90 00000000 */  nop
/* 01AA4 80A5CD94 45020006 */  bc1fl   .L80A5CDB0                 
/* 01AA8 80A5CD98 44810000 */  mtc1    $at, $f0                   ## $f0 = -1.00
/* 01AAC 80A5CD9C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01AB0 80A5CDA0 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 01AB4 80A5CDA4 10000004 */  beq     $zero, $zero, .L80A5CDB8   
/* 01AB8 80A5CDA8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01ABC 80A5CDAC 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
.L80A5CDB0:
/* 01AC0 80A5CDB0 00000000 */  nop
/* 01AC4 80A5CDB4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
.L80A5CDB8:
/* 01AC8 80A5CDB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 01ACC 80A5CDBC 3C0180A6 */  lui     $at, %hi(D_80A66888)       ## $at = 80A60000
/* 01AD0 80A5CDC0 C42A6888 */  lwc1    $f10, %lo(D_80A66888)($at) 
/* 01AD4 80A5CDC4 46040202 */  mul.s   $f8, $f0, $f4              
/* 01AD8 80A5CDC8 00000000 */  nop
/* 01ADC 80A5CDCC 460A4182 */  mul.s   $f6, $f8, $f10             
/* 01AE0 80A5CDD0 46061100 */  add.s   $f4, $f2, $f6              
/* 01AE4 80A5CDD4 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 01AE8 80A5CDD8 C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 01AEC 80A5CDDC C7A8005C */  lwc1    $f8, 0x005C($sp)           
/* 01AF0 80A5CDE0 4602603C */  c.lt.s  $f12, $f2                  
/* 01AF4 80A5CDE4 00000000 */  nop
/* 01AF8 80A5CDE8 4500000A */  bc1f    .L80A5CE14                 
/* 01AFC 80A5CDEC 00000000 */  nop
/* 01B00 80A5CDF0 46081281 */  sub.s   $f10, $f2, $f8             
/* 01B04 80A5CDF4 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 01B08 80A5CDF8 C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 01B0C 80A5CDFC 460C103C */  c.lt.s  $f2, $f12                  
/* 01B10 80A5CE00 00000000 */  nop
/* 01B14 80A5CE04 45020004 */  bc1fl   .L80A5CE18                 
/* 01B18 80A5CE08 87AD003E */  lh      $t5, 0x003E($sp)           
/* 01B1C 80A5CE0C E60C0068 */  swc1    $f12, 0x0068($s0)          ## 00000068
/* 01B20 80A5CE10 C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
.L80A5CE14:
/* 01B24 80A5CE14 87AD003E */  lh      $t5, 0x003E($sp)           
.L80A5CE18:
/* 01B28 80A5CE18 8E0F0208 */  lw      $t7, 0x0208($s0)           ## 00000208
/* 01B2C 80A5CE1C 3C0180A6 */  lui     $at, %hi(D_80A6688C)       ## $at = 80A60000
/* 01B30 80A5CE20 448D3000 */  mtc1    $t5, $f6                   ## $f6 = 0.00
/* 01B34 80A5CE24 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 01B38 80A5CE28 C424688C */  lwc1    $f4, %lo(D_80A6688C)($at)  
/* 01B3C 80A5CE2C 46803020 */  cvt.s.w $f0, $f6                   
/* 01B40 80A5CE30 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01B44 80A5CE34 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 01B48 80A5CE38 3C0180A6 */  lui     $at, %hi(D_80A66890)       ## $at = 80A60000
/* 01B4C 80A5CE3C 87A30066 */  lh      $v1, 0x0066($sp)           
/* 01B50 80A5CE40 468051A0 */  cvt.s.w $f6, $f10                  
/* 01B54 80A5CE44 46040302 */  mul.s   $f12, $f0, $f4             
/* 01B58 80A5CE48 0003C823 */  subu    $t9, $zero, $v1            
/* 01B5C 80A5CE4C 46064103 */  div.s   $f4, $f8, $f6              
/* 01B60 80A5CE50 C4286890 */  lwc1    $f8, %lo(D_80A66890)($at)  
/* 01B64 80A5CE54 46041282 */  mul.s   $f10, $f2, $f4             
/* 01B68 80A5CE58 00000000 */  nop
/* 01B6C 80A5CE5C 460C0182 */  mul.s   $f6, $f0, $f12             
/* 01B70 80A5CE60 460A4381 */  sub.s   $f14, $f8, $f10            
/* 01B74 80A5CE64 460C3102 */  mul.s   $f4, $f6, $f12             
/* 01B78 80A5CE68 00000000 */  nop
/* 01B7C 80A5CE6C 460E2202 */  mul.s   $f8, $f4, $f14             
/* 01B80 80A5CE70 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 01B84 80A5CE74 4600428D */  trunc.w.s $f10, $f8                  
/* 01B88 80A5CE78 46802220 */  cvt.s.w $f8, $f4                   
/* 01B8C 80A5CE7C 44025000 */  mfc1    $v0, $f10                  
/* 01B90 80A5CE80 00000000 */  nop
/* 01B94 80A5CE84 00021400 */  sll     $v0, $v0, 16               
/* 01B98 80A5CE88 00021403 */  sra     $v0, $v0, 16               
/* 01B9C 80A5CE8C 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 01BA0 80A5CE90 460E4482 */  mul.s   $f18, $f8, $f14            
/* 01BA4 80A5CE94 46803420 */  cvt.s.w $f16, $f6                  
/* 01BA8 80A5CE98 4612803C */  c.lt.s  $f16, $f18                 
/* 01BAC 80A5CE9C 00000000 */  nop
/* 01BB0 80A5CEA0 45000007 */  bc1f    .L80A5CEC0                 
/* 01BB4 80A5CEA4 00000000 */  nop
/* 01BB8 80A5CEA8 4600928D */  trunc.w.s $f10, $f18                 
/* 01BBC 80A5CEAC 44025000 */  mfc1    $v0, $f10                  
/* 01BC0 80A5CEB0 00000000 */  nop
/* 01BC4 80A5CEB4 00021400 */  sll     $v0, $v0, 16               
/* 01BC8 80A5CEB8 10000011 */  beq     $zero, $zero, .L80A5CF00   
/* 01BCC 80A5CEBC 00021403 */  sra     $v0, $v0, 16               
.L80A5CEC0:
/* 01BD0 80A5CEC0 44833000 */  mtc1    $v1, $f6                   ## $f6 = 0.00
/* 01BD4 80A5CEC4 00000000 */  nop
/* 01BD8 80A5CEC8 46803120 */  cvt.s.w $f4, $f6                   
/* 01BDC 80A5CECC 460E2082 */  mul.s   $f2, $f4, $f14             
/* 01BE0 80A5CED0 4610103C */  c.lt.s  $f2, $f16                  
/* 01BE4 80A5CED4 00000000 */  nop
/* 01BE8 80A5CED8 45020004 */  bc1fl   .L80A5CEEC                 
/* 01BEC 80A5CEDC 46008006 */  mov.s   $f0, $f16                  
/* 01BF0 80A5CEE0 10000002 */  beq     $zero, $zero, .L80A5CEEC   
/* 01BF4 80A5CEE4 46001006 */  mov.s   $f0, $f2                   
/* 01BF8 80A5CEE8 46008006 */  mov.s   $f0, $f16                  
.L80A5CEEC:
/* 01BFC 80A5CEEC 4600020D */  trunc.w.s $f8, $f0                   
/* 01C00 80A5CEF0 44024000 */  mfc1    $v0, $f8                   
/* 01C04 80A5CEF4 00000000 */  nop
/* 01C08 80A5CEF8 00021400 */  sll     $v0, $v0, 16               
/* 01C0C 80A5CEFC 00021403 */  sra     $v0, $v0, 16               
.L80A5CF00:
/* 01C10 80A5CF00 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 01C14 80A5CF04 01225821 */  addu    $t3, $t1, $v0              
/* 01C18 80A5CF08 A60B0032 */  sh      $t3, 0x0032($s0)           ## 00000032
/* 01C1C 80A5CF0C 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
/* 01C20 80A5CF10 A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
.L80A5CF14:
/* 01C24 80A5CF14 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A5CF18:
/* 01C28 80A5CF18 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01C2C 80A5CF1C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 01C30 80A5CF20 03E00008 */  jr      $ra                        
/* 01C34 80A5CF24 00000000 */  nop
