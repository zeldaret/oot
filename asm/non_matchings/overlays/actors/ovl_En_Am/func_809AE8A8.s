glabel func_809AE8A8
/* 00988 809AE8A8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0098C 809AE8AC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00990 809AE8B0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00994 809AE8B4 848E0258 */  lh      $t6, 0x0258($a0)           ## 00000258
/* 00998 809AE8B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0099C 809AE8BC 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 009A0 809AE8C0 55C0000D */  bnel    $t6, $zero, .L809AE8F8     
/* 009A4 809AE8C4 920A0285 */  lbu     $t2, 0x0285($s0)           ## 00000285
/* 009A8 809AE8C8 908F0286 */  lbu     $t7, 0x0286($a0)           ## 00000286
/* 009AC 809AE8CC 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 009B0 809AE8D0 53000005 */  beql    $t8, $zero, .L809AE8E8     
/* 009B4 809AE8D4 92080285 */  lbu     $t0, 0x0285($s0)           ## 00000285
/* 009B8 809AE8D8 8C990280 */  lw      $t9, 0x0280($a0)           ## 00000280
/* 009BC 809AE8DC 50590006 */  beql    $v0, $t9, .L809AE8F8       
/* 009C0 809AE8E0 920A0285 */  lbu     $t2, 0x0285($s0)           ## 00000285
/* 009C4 809AE8E4 92080285 */  lbu     $t0, 0x0285($s0)           ## 00000285
.L809AE8E8:
/* 009C8 809AE8E8 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 009CC 809AE8EC 51200043 */  beql    $t1, $zero, .L809AE9FC     
/* 009D0 809AE8F0 92020266 */  lbu     $v0, 0x0266($s0)           ## 00000266
/* 009D4 809AE8F4 920A0285 */  lbu     $t2, 0x0285($s0)           ## 00000285
.L809AE8F8:
/* 009D8 809AE8F8 92020266 */  lbu     $v0, 0x0266($s0)           ## 00000266
/* 009DC 809AE8FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009E0 809AE900 314BFFFD */  andi    $t3, $t2, 0xFFFD           ## $t3 = 00000000
/* 009E4 809AE904 1440000E */  bne     $v0, $zero, .L809AE940     
/* 009E8 809AE908 A20B0285 */  sb      $t3, 0x0285($s0)           ## 00000285
/* 009EC 809AE90C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 009F0 809AE910 24053845 */  addiu   $a1, $zero, 0x3845         ## $a1 = 00003845
/* 009F4 809AE914 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009F8 809AE918 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 009FC 809AE91C 24053848 */  addiu   $a1, $zero, 0x3848         ## $a1 = 00003848
/* 00A00 809AE920 240C0008 */  addiu   $t4, $zero, 0x0008         ## $t4 = 00000008
/* 00A04 809AE924 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00A08 809AE928 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A0C 809AE92C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00A10 809AE930 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00A14 809AE934 0C00D09B */  jal     func_8003426C              
/* 00A18 809AE938 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00A1C 809AE93C 92020266 */  lbu     $v0, 0x0266($s0)           ## 00000266
.L809AE940:
/* 00A20 809AE940 284100F0 */  slti    $at, $v0, 0x00F0           
/* 00A24 809AE944 1420000D */  bne     $at, $zero, .L809AE97C     
/* 00A28 809AE948 240D00C8 */  addiu   $t5, $zero, 0x00C8         ## $t5 = 000000C8
/* 00A2C 809AE94C 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 00A30 809AE950 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00A34 809AE954 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00A38 809AE958 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00A3C 809AE95C A60D025C */  sh      $t5, 0x025C($s0)           ## 0000025C
/* 00A40 809AE960 A20E0266 */  sb      $t6, 0x0266($s0)           ## 00000266
/* 00A44 809AE964 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 00A48 809AE968 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A4C 809AE96C 0C26B94E */  jal     func_809AE538              
/* 00A50 809AE970 E60200BC */  swc1    $f2, 0x00BC($s0)           ## 000000BC
/* 00A54 809AE974 10000063 */  beq     $zero, $zero, .L809AEB04   
/* 00A58 809AE978 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809AE97C:
/* 00A5C 809AE97C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A60 809AE980 00000000 */  nop
/* 00A64 809AE984 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00A68 809AE988 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00A6C 809AE98C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00A70 809AE990 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00A74 809AE994 46040181 */  sub.s   $f6, $f0, $f4              
/* 00A78 809AE998 46083282 */  mul.s   $f10, $f6, $f8             
/* 00A7C 809AE99C E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 00A80 809AE9A0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00A84 809AE9A4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00A88 809AE9A8 C7B0002C */  lwc1    $f16, 0x002C($sp)          
/* 00A8C 809AE9AC 46100482 */  mul.s   $f18, $f0, $f16            
/* 00A90 809AE9B0 E7B20034 */  swc1    $f18, 0x0034($sp)          
/* 00A94 809AE9B4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00A98 809AE9B8 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00A9C 809AE9BC C6040268 */  lwc1    $f4, 0x0268($s0)           ## 00000268
/* 00AA0 809AE9C0 C7A60034 */  lwc1    $f6, 0x0034($sp)           
/* 00AA4 809AE9C4 C60A0270 */  lwc1    $f10, 0x0270($s0)          ## 00000270
/* 00AA8 809AE9C8 92190266 */  lbu     $t9, 0x0266($s0)           ## 00000266
/* 00AAC 809AE9CC 46062200 */  add.s   $f8, $f4, $f6              
/* 00AB0 809AE9D0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00AB4 809AE9D4 27280014 */  addiu   $t0, $t9, 0x0014           ## $t0 = 00000014
/* 00AB8 809AE9D8 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 00ABC 809AE9DC C7B0002C */  lwc1    $f16, 0x002C($sp)          
/* 00AC0 809AE9E0 A2080266 */  sb      $t0, 0x0266($s0)           ## 00000266
/* 00AC4 809AE9E4 A6090258 */  sh      $t1, 0x0258($s0)           ## 00000258
/* 00AC8 809AE9E8 46100482 */  mul.s   $f18, $f0, $f16            
/* 00ACC 809AE9EC 46125100 */  add.s   $f4, $f10, $f18            
/* 00AD0 809AE9F0 10000043 */  beq     $zero, $zero, .L809AEB00   
/* 00AD4 809AE9F4 E604002C */  swc1    $f4, 0x002C($s0)           ## 0000002C
/* 00AD8 809AE9F8 92020266 */  lbu     $v0, 0x0266($s0)           ## 00000266
.L809AE9FC:
/* 00ADC 809AE9FC 2841000B */  slti    $at, $v0, 0x000B           
/* 00AE0 809AEA00 14200003 */  bne     $at, $zero, .L809AEA10     
/* 00AE4 809AEA04 244AFFF6 */  addiu   $t2, $v0, 0xFFF6           ## $t2 = FFFFFFF6
/* 00AE8 809AEA08 1000003D */  beq     $zero, $zero, .L809AEB00   
/* 00AEC 809AEA0C A20A0266 */  sb      $t2, 0x0266($s0)           ## 00000266
.L809AEA10:
/* 00AF0 809AEA10 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 00AF4 809AEA14 8E0D014C */  lw      $t5, 0x014C($s0)           ## 0000014C
/* 00AF8 809AEA18 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00AFC 809AEA1C 01616024 */  and     $t4, $t3, $at              
/* 00B00 809AEA20 A2000266 */  sb      $zero, 0x0266($s0)         ## 00000266
/* 00B04 809AEA24 05A10002 */  bgez    $t5, .L809AEA30            
/* 00B08 809AEA28 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 00B0C 809AEA2C A6000264 */  sh      $zero, 0x0264($s0)         ## 00000264
.L809AEA30:
/* 00B10 809AEA30 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 00B14 809AEA34 C6080150 */  lwc1    $f8, 0x0150($s0)           ## 00000150
/* 00B18 809AEA38 3C01C020 */  lui     $at, 0xC020                ## $at = C0200000
/* 00B1C 809AEA3C 44811000 */  mtc1    $at, $f2                   ## $f2 = -2.50
/* 00B20 809AEA40 46083400 */  add.s   $f16, $f6, $f8             
/* 00B24 809AEA44 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
/* 00B28 809AEA48 8E0E0028 */  lw      $t6, 0x0028($s0)           ## 00000028
/* 00B2C 809AEA4C 86180158 */  lh      $t8, 0x0158($s0)           ## 00000158
/* 00B30 809AEA50 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 00B34 809AEA54 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 00B38 809AEA58 AE0F0268 */  sw      $t7, 0x0268($s0)           ## 00000268
/* 00B3C 809AEA5C 8E0F002C */  lw      $t7, 0x002C($s0)           ## 0000002C
/* 00B40 809AEA60 4602003C */  c.lt.s  $f0, $f2                   
/* 00B44 809AEA64 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 00B48 809AEA68 AE0E026C */  sw      $t6, 0x026C($s0)           ## 0000026C
/* 00B4C 809AEA6C A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 00B50 809AEA70 45000003 */  bc1f    .L809AEA80                 
/* 00B54 809AEA74 AE0F0270 */  sw      $t7, 0x0270($s0)           ## 00000270
/* 00B58 809AEA78 1000000B */  beq     $zero, $zero, .L809AEAA8   
/* 00B5C 809AEA7C E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
.L809AEA80:
/* 00B60 809AEA80 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.50
/* 00B64 809AEA84 00000000 */  nop
/* 00B68 809AEA88 4600603C */  c.lt.s  $f12, $f0                  
/* 00B6C 809AEA8C 00000000 */  nop
/* 00B70 809AEA90 45020004 */  bc1fl   .L809AEAA4                 
/* 00B74 809AEA94 46000086 */  mov.s   $f2, $f0                   
/* 00B78 809AEA98 10000002 */  beq     $zero, $zero, .L809AEAA4   
/* 00B7C 809AEA9C 46006086 */  mov.s   $f2, $f12                  
/* 00B80 809AEAA0 46000086 */  mov.s   $f2, $f0                   
.L809AEAA4:
/* 00B84 809AEAA4 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
.L809AEAA8:
/* 00B88 809AEAA8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00B8C 809AEAAC 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00B90 809AEAB0 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00B94 809AEAB4 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00B98 809AEAB8 44060000 */  mfc1    $a2, $f0                   
/* 00B9C 809AEABC 44070000 */  mfc1    $a3, $f0                   
/* 00BA0 809AEAC0 44051000 */  mfc1    $a1, $f2                   
/* 00BA4 809AEAC4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00BA8 809AEAC8 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00BAC 809AEACC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00BB0 809AEAD0 C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 00BB4 809AEAD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB8 809AEAD8 460A1032 */  c.eq.s  $f2, $f10                  
/* 00BBC 809AEADC 00000000 */  nop
/* 00BC0 809AEAE0 45030006 */  bc1tl   .L809AEAFC                 
/* 00BC4 809AEAE4 E6020154 */  swc1    $f2, 0x0154($s0)           ## 00000154
/* 00BC8 809AEAE8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BCC 809AEAEC 2405200A */  addiu   $a1, $zero, 0x200A         ## $a1 = 0000200A
/* 00BD0 809AEAF0 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00BD4 809AEAF4 00000000 */  nop
/* 00BD8 809AEAF8 E6020154 */  swc1    $f2, 0x0154($s0)           ## 00000154
.L809AEAFC:
/* 00BDC 809AEAFC E6020150 */  swc1    $f2, 0x0150($s0)           ## 00000150
.L809AEB00:
/* 00BE0 809AEB00 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809AEB04:
/* 00BE4 809AEB04 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00BE8 809AEB08 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00BEC 809AEB0C 03E00008 */  jr      $ra                        
/* 00BF0 809AEB10 00000000 */  nop
