glabel func_80A0BF6C
/* 008AC 80A0BF6C 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 008B0 80A0BF70 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 008B4 80A0BF74 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 008B8 80A0BF78 AFB0002C */  sw      $s0, 0x002C($sp)           
/* 008BC 80A0BF7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 008C0 80A0BF80 00E08825 */  or      $s1, $a3, $zero            ## $s1 = 00000000
/* 008C4 80A0BF84 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 008C8 80A0BF88 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 008CC 80A0BF8C 44066000 */  mfc1    $a2, $f12                  
/* 008D0 80A0BF90 84E70000 */  lh      $a3, 0x0000($a3)           ## 00000000
/* 008D4 80A0BF94 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 008D8 80A0BF98 0C282FA8 */  jal     func_80A0BEA0              
/* 008DC 80A0BF9C 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE0
/* 008E0 80A0BFA0 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 008E4 80A0BFA4 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 008E8 80A0BFA8 C7B00048 */  lwc1    $f16, 0x0048($sp)          
/* 008EC 80A0BFAC 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 008F0 80A0BFB0 46062200 */  add.s   $f8, $f4, $f6              
/* 008F4 80A0BFB4 27AE005C */  addiu   $t6, $sp, 0x005C           ## $t6 = FFFFFFFC
/* 008F8 80A0BFB8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 008FC 80A0BFBC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00900 80A0BFC0 E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 00904 80A0BFC4 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00908 80A0BFC8 27B90058 */  addiu   $t9, $sp, 0x0058           ## $t9 = FFFFFFF8
/* 0090C 80A0BFCC 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00910 80A0BFD0 E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 00914 80A0BFD4 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00918 80A0BFD8 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 0091C 80A0BFDC AFB80020 */  sw      $t8, 0x0020($sp)           
/* 00920 80A0BFE0 46128100 */  add.s   $f4, $f16, $f18            
/* 00924 80A0BFE4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00928 80A0BFE8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0092C 80A0BFEC AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00930 80A0BFF0 E7A40048 */  swc1    $f4, 0x0048($sp)           
/* 00934 80A0BFF4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00938 80A0BFF8 27A60040 */  addiu   $a2, $sp, 0x0040           ## $a2 = FFFFFFE0
/* 0093C 80A0BFFC 27A7004C */  addiu   $a3, $sp, 0x004C           ## $a3 = FFFFFFEC
/* 00940 80A0C000 0C00F7A1 */  jal     func_8003DE84              
/* 00944 80A0C004 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 00948 80A0C008 50400007 */  beql    $v0, $zero, .L80A0C028     
/* 0094C 80A0C00C 860A04C0 */  lh      $t2, 0x04C0($s0)           ## 000004C0
/* 00950 80A0C010 86280000 */  lh      $t0, 0x0000($s1)           ## 00000000
/* 00954 80A0C014 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00958 80A0C018 00084823 */  subu    $t1, $zero, $t0            
/* 0095C 80A0C01C 1000001B */  beq     $zero, $zero, .L80A0C08C   
/* 00960 80A0C020 A6290000 */  sh      $t1, 0x0000($s1)           ## 00000000
/* 00964 80A0C024 860A04C0 */  lh      $t2, 0x04C0($s0)           ## 000004C0
.L80A0C028:
/* 00968 80A0C028 1540000A */  bne     $t2, $zero, .L80A0C054     
/* 0096C 80A0C02C 00000000 */  nop
/* 00970 80A0C030 860204BE */  lh      $v0, 0x04BE($s0)           ## 000004BE
/* 00974 80A0C034 14400003 */  bne     $v0, $zero, .L80A0C044     
/* 00978 80A0C038 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = 00000000
/* 0097C 80A0C03C 10000003 */  beq     $zero, $zero, .L80A0C04C   
/* 00980 80A0C040 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A0C044:
/* 00984 80A0C044 A60B04BE */  sh      $t3, 0x04BE($s0)           ## 000004BE
/* 00988 80A0C048 860304BE */  lh      $v1, 0x04BE($s0)           ## 000004BE
.L80A0C04C:
/* 0098C 80A0C04C 10600003 */  beq     $v1, $zero, .L80A0C05C     
/* 00990 80A0C050 00000000 */  nop
.L80A0C054:
/* 00994 80A0C054 1000000D */  beq     $zero, $zero, .L80A0C08C   
/* 00998 80A0C058 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A0C05C:
/* 0099C 80A0C05C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 009A0 80A0C060 00000000 */  nop
/* 009A4 80A0C064 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 009A8 80A0C068 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 009AC 80A0C06C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 009B0 80A0C070 4600303C */  c.lt.s  $f6, $f0                   
/* 009B4 80A0C074 00000000 */  nop
/* 009B8 80A0C078 45000004 */  bc1f    .L80A0C08C                 
/* 009BC 80A0C07C 00000000 */  nop
/* 009C0 80A0C080 862C0000 */  lh      $t4, 0x0000($s1)           ## 00000000
/* 009C4 80A0C084 000C6823 */  subu    $t5, $zero, $t4            
/* 009C8 80A0C088 A62D0000 */  sh      $t5, 0x0000($s1)           ## 00000000
.L80A0C08C:
/* 009CC 80A0C08C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 009D0 80A0C090 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 009D4 80A0C094 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 009D8 80A0C098 03E00008 */  jr      $ra                        
/* 009DC 80A0C09C 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000


