.rdata
glabel D_80A11868
    .asciz "FF MOVE 1\n"
    .balign 4

glabel D_80A11874
    .asciz "FF MOVE 2\n"
    .balign 4

.text
glabel func_80A0FA90
/* 00830 80A0FA90 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00834 80A0FA94 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00838 80A0FA98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0083C 80A0FA9C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00840 80A0FAA0 3C0480A1 */  lui     $a0, %hi(D_80A11868)       ## $a0 = 80A10000
/* 00844 80A0FAA4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00848 80A0FAA8 0C00084C */  jal     osSyncPrintf
              
/* 0084C 80A0FAAC 24841868 */  addiu   $a0, $a0, %lo(D_80A11868)  ## $a0 = 80A11868
/* 00850 80A0FAB0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00854 80A0FAB4 00000000 */  nop
/* 00858 80A0FAB8 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 0085C 80A0FABC 44812000 */  mtc1    $at, $f4                   ## $f4 = 4000.00
/* 00860 80A0FAC0 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 00864 80A0FAC4 86020158 */  lh      $v0, 0x0158($s0)           ## 00000158
/* 00868 80A0FAC8 46040182 */  mul.s   $f6, $f0, $f4              
/* 0086C 80A0FACC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00870 80A0FAD0 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00874 80A0FAD4 4600320D */  trunc.w.s $f8, $f6                   
/* 00878 80A0FAD8 44084000 */  mfc1    $t0, $f8                   
/* 0087C 80A0FADC 00000000 */  nop
/* 00880 80A0FAE0 01C84821 */  addu    $t1, $t6, $t0              
/* 00884 80A0FAE4 252A4000 */  addiu   $t2, $t1, 0x4000           ## $t2 = 00004000
/* 00888 80A0FAE8 10400007 */  beq     $v0, $zero, .L80A0FB08     
/* 0088C 80A0FAEC A60A00B4 */  sh      $t2, 0x00B4($s0)           ## 000000B4
/* 00890 80A0FAF0 10410010 */  beq     $v0, $at, .L80A0FB34       
/* 00894 80A0FAF4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00898 80A0FAF8 10410036 */  beq     $v0, $at, .L80A0FBD4       
/* 0089C 80A0FAFC 2604016C */  addiu   $a0, $s0, 0x016C           ## $a0 = 0000016C
/* 008A0 80A0FB00 1000003E */  beq     $zero, $zero, .L80A0FBFC   
/* 008A4 80A0FB04 C600016C */  lwc1    $f0, 0x016C($s0)           ## 0000016C
.L80A0FB08:
/* 008A8 80A0FB08 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 008AC 80A0FB0C A60B0158 */  sh      $t3, 0x0158($s0)           ## 00000158
/* 008B0 80A0FB10 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 008B4 80A0FB14 44815000 */  mtc1    $at, $f10                  ## $f10 = 7.00
/* 008B8 80A0FB18 00000000 */  nop
/* 008BC 80A0FB1C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 008C0 80A0FB20 4600848D */  trunc.w.s $f18, $f16                 
/* 008C4 80A0FB24 44189000 */  mfc1    $t8, $f18                  
/* 008C8 80A0FB28 00000000 */  nop
/* 008CC 80A0FB2C 27190007 */  addiu   $t9, $t8, 0x0007           ## $t9 = 00000007
/* 008D0 80A0FB30 A6190150 */  sh      $t9, 0x0150($s0)           ## 00000150
.L80A0FB34:
/* 008D4 80A0FB34 3C053FD9 */  lui     $a1, 0x3FD9                ## $a1 = 3FD90000
/* 008D8 80A0FB38 3C073EAE */  lui     $a3, 0x3EAE                ## $a3 = 3EAE0000
/* 008DC 80A0FB3C 34E7147B */  ori     $a3, $a3, 0x147B           ## $a3 = 3EAE147B
/* 008E0 80A0FB40 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3FD9999A
/* 008E4 80A0FB44 2604016C */  addiu   $a0, $s0, 0x016C           ## $a0 = 0000016C
/* 008E8 80A0FB48 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 008EC 80A0FB4C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008F0 80A0FB50 860E0150 */  lh      $t6, 0x0150($s0)           ## 00000150
/* 008F4 80A0FB54 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 008F8 80A0FB58 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 008FC 80A0FB5C 15C0001B */  bne     $t6, $zero, .L80A0FBCC     
/* 00900 80A0FB60 00000000 */  nop
/* 00904 80A0FB64 A6080158 */  sh      $t0, 0x0158($s0)           ## 00000158
/* 00908 80A0FB68 A6090150 */  sh      $t1, 0x0150($s0)           ## 00000150
/* 0090C 80A0FB6C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00910 80A0FB70 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00914 80A0FB74 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 00918 80A0FB78 44812000 */  mtc1    $at, $f4                   ## $f4 = -200.00
/* 0091C 80A0FB7C C608016C */  lwc1    $f8, 0x016C($s0)           ## 0000016C
/* 00920 80A0FB80 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00924 80A0FB84 46040182 */  mul.s   $f6, $f0, $f4              
/* 00928 80A0FB88 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 0092C 80A0FB8C 46083282 */  mul.s   $f10, $f6, $f8             
/* 00930 80A0FB90 460A8480 */  add.s   $f18, $f16, $f10           
/* 00934 80A0FB94 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00938 80A0FB98 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 0093C 80A0FB9C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00940 80A0FBA0 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 00944 80A0FBA4 C608016C */  lwc1    $f8, 0x016C($s0)           ## 0000016C
/* 00948 80A0FBA8 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 0094C 80A0FBAC 46040182 */  mul.s   $f6, $f0, $f4              
/* 00950 80A0FBB0 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 00954 80A0FBB4 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00958 80A0FBB8 01415821 */  addu    $t3, $t2, $at              
/* 0095C 80A0FBBC A60B00B6 */  sh      $t3, 0x00B6($s0)           ## 000000B6
/* 00960 80A0FBC0 46083402 */  mul.s   $f16, $f6, $f8             
/* 00964 80A0FBC4 46105480 */  add.s   $f18, $f10, $f16           
/* 00968 80A0FBC8 E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
.L80A0FBCC:
/* 0096C 80A0FBCC 1000000B */  beq     $zero, $zero, .L80A0FBFC   
/* 00970 80A0FBD0 C600016C */  lwc1    $f0, 0x016C($s0)           ## 0000016C
.L80A0FBD4:
/* 00974 80A0FBD4 3C063EAE */  lui     $a2, 0x3EAE                ## $a2 = 3EAE0000
/* 00978 80A0FBD8 34C6147B */  ori     $a2, $a2, 0x147B           ## $a2 = 3EAE147B
/* 0097C 80A0FBDC 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00980 80A0FBE0 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00984 80A0FBE4 860C0150 */  lh      $t4, 0x0150($s0)           ## 00000150
/* 00988 80A0FBE8 55800004 */  bnel    $t4, $zero, .L80A0FBFC     
/* 0098C 80A0FBEC C600016C */  lwc1    $f0, 0x016C($s0)           ## 0000016C
/* 00990 80A0FBF0 0C00B55C */  jal     Actor_Kill
              
/* 00994 80A0FBF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00998 80A0FBF8 C600016C */  lwc1    $f0, 0x016C($s0)           ## 0000016C
.L80A0FBFC:
/* 0099C 80A0FBFC 44050000 */  mfc1    $a1, $f0                   
/* 009A0 80A0FC00 0C00B58B */  jal     Actor_SetScale
              
/* 009A4 80A0FC04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009A8 80A0FC08 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 009AC 80A0FC0C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 009B0 80A0FC10 C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 009B4 80A0FC14 3C0480A1 */  lui     $a0, %hi(D_80A11874)       ## $a0 = 80A10000
/* 009B8 80A0FC18 4604003C */  c.lt.s  $f0, $f4                   
/* 009BC 80A0FC1C 00000000 */  nop
/* 009C0 80A0FC20 45000002 */  bc1f    .L80A0FC2C                 
/* 009C4 80A0FC24 00000000 */  nop
/* 009C8 80A0FC28 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
.L80A0FC2C:
/* 009CC 80A0FC2C 0C00084C */  jal     osSyncPrintf
              
/* 009D0 80A0FC30 24841874 */  addiu   $a0, $a0, %lo(D_80A11874)  ## $a0 = 80A11874
/* 009D4 80A0FC34 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 009D8 80A0FC38 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 009DC 80A0FC3C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 009E0 80A0FC40 03E00008 */  jr      $ra                        
/* 009E4 80A0FC44 00000000 */  nop
