.late_rodata
glabel D_80A0E1A4
    .float 0.2

glabel D_80A0E1A8
    .float 0.3

glabel D_80A0E1AC
    .float 0.6

glabel D_80A0E1B0
    .float 0.2

.text
glabel func_80A0B8D8
/* 00218 80A0B8D8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0021C 80A0B8DC 3C0F80A1 */  lui     $t7, %hi(D_80A0E064)       ## $t7 = 80A10000
/* 00220 80A0B8E0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00224 80A0B8E4 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00228 80A0B8E8 25EFE064 */  addiu   $t7, $t7, %lo(D_80A0E064)  ## $t7 = 80A0E064
/* 0022C 80A0B8EC 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A0E064
/* 00230 80A0B8F0 27AE0044 */  addiu   $t6, $sp, 0x0044           ## $t6 = FFFFFFF4
/* 00234 80A0B8F4 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A0E068
/* 00238 80A0B8F8 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 0023C 80A0B8FC 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A0E06C
/* 00240 80A0B900 3C0980A1 */  lui     $t1, %hi(D_80A0E070)       ## $t1 = 80A10000
/* 00244 80A0B904 2529E070 */  addiu   $t1, $t1, %lo(D_80A0E070)  ## $t1 = 80A0E070
/* 00248 80A0B908 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 0024C 80A0B90C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 00250 80A0B910 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80A0E070
/* 00254 80A0B914 27A80038 */  addiu   $t0, $sp, 0x0038           ## $t0 = FFFFFFE8
/* 00258 80A0B918 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80A0E074
/* 0025C 80A0B91C AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 00260 80A0B920 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80A0E078
/* 00264 80A0B924 3C0D80A1 */  lui     $t5, %hi(D_80A0E07C)       ## $t5 = 80A10000
/* 00268 80A0B928 25ADE07C */  addiu   $t5, $t5, %lo(D_80A0E07C)  ## $t5 = 80A0E07C
/* 0026C 80A0B92C AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 00270 80A0B930 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 00274 80A0B934 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 80A0E07C
/* 00278 80A0B938 27AC002C */  addiu   $t4, $sp, 0x002C           ## $t4 = FFFFFFDC
/* 0027C 80A0B93C 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 80A0E080
/* 00280 80A0B940 AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFDC
/* 00284 80A0B944 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 80A0E084
/* 00288 80A0B948 AD8E0004 */  sw      $t6, 0x0004($t4)           ## FFFFFFE0
/* 0028C 80A0B94C 3C1880A1 */  lui     $t8, %hi(func_80A0C7EC)    ## $t8 = 80A10000
/* 00290 80A0B950 AD8F0008 */  sw      $t7, 0x0008($t4)           ## FFFFFFE4
/* 00294 80A0B954 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 00298 80A0B958 2718C7EC */  addiu   $t8, $t8, %lo(func_80A0C7EC) ## $t8 = 80A0C7EC
/* 0029C 80A0B95C 3C1980A1 */  lui     $t9, %hi(func_80A0C5D0)    ## $t9 = 80A10000
/* 002A0 80A0B960 13020003 */  beq     $t8, $v0, .L80A0B970       
/* 002A4 80A0B964 2739C5D0 */  addiu   $t9, $t9, %lo(func_80A0C5D0) ## $t9 = 80A0C5D0
/* 002A8 80A0B968 57220033 */  bnel    $t9, $v0, .L80A0BA38       
/* 002AC 80A0B96C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A0B970:
/* 002B0 80A0B970 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 002B4 80A0B974 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 002B8 80A0B978 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 002BC 80A0B97C E7A40044 */  swc1    $f4, 0x0044($sp)           
/* 002C0 80A0B980 C4860080 */  lwc1    $f6, 0x0080($a0)           ## 00000080
/* 002C4 80A0B984 46083280 */  add.s   $f10, $f6, $f8             
/* 002C8 80A0B988 E7AA0048 */  swc1    $f10, 0x0048($sp)          
/* 002CC 80A0B98C C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 002D0 80A0B990 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 002D4 80A0B994 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002D8 80A0B998 E7B0004C */  swc1    $f16, 0x004C($sp)          
/* 002DC 80A0B99C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 002E0 80A0B9A0 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 002E4 80A0B9A4 00000000 */  nop
/* 002E8 80A0B9A8 46120081 */  sub.s   $f2, $f0, $f18             
/* 002EC 80A0B9AC 46021100 */  add.s   $f4, $f2, $f2              
/* 002F0 80A0B9B0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002F4 80A0B9B4 E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 002F8 80A0B9B8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 002FC 80A0B9BC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00300 80A0B9C0 3C0180A1 */  lui     $at, %hi(D_80A0E1A4)       ## $at = 80A10000
/* 00304 80A0B9C4 C42AE1A4 */  lwc1    $f10, %lo(D_80A0E1A4)($at) 
/* 00308 80A0B9C8 46060201 */  sub.s   $f8, $f0, $f6              
/* 0030C 80A0B9CC 3C0180A1 */  lui     $at, %hi(D_80A0E1A8)       ## $at = 80A10000
/* 00310 80A0B9D0 C432E1A8 */  lwc1    $f18, %lo(D_80A0E1A8)($at) 
/* 00314 80A0B9D4 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00318 80A0B9D8 46128100 */  add.s   $f4, $f16, $f18            
/* 0031C 80A0B9DC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00320 80A0B9E0 E7A40030 */  swc1    $f4, 0x0030($sp)           
/* 00324 80A0B9E4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00328 80A0B9E8 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 0032C 80A0B9EC 3C0180A1 */  lui     $at, %hi(D_80A0E1AC)       ## $at = 80A10000
/* 00330 80A0B9F0 C42AE1AC */  lwc1    $f10, %lo(D_80A0E1AC)($at) 
/* 00334 80A0B9F4 46060081 */  sub.s   $f2, $f0, $f6              
/* 00338 80A0B9F8 3C0180A1 */  lui     $at, %hi(D_80A0E1B0)       ## $at = 80A10000
/* 0033C 80A0B9FC C430E1B0 */  lwc1    $f16, %lo(D_80A0E1B0)($at) 
/* 00340 80A0BA00 27A8002C */  addiu   $t0, $sp, 0x002C           ## $t0 = FFFFFFDC
/* 00344 80A0BA04 46021200 */  add.s   $f8, $f2, $f2              
/* 00348 80A0BA08 24090008 */  addiu   $t1, $zero, 0x0008         ## $t1 = 00000008
/* 0034C 80A0BA0C 8FA40050 */  lw      $a0, 0x0050($sp)           
/* 00350 80A0BA10 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00354 80A0BA14 E7A80034 */  swc1    $f8, 0x0034($sp)           
/* 00358 80A0BA18 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 0035C 80A0BA1C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00360 80A0BA20 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFFF4
/* 00364 80A0BA24 27A70038 */  addiu   $a3, $sp, 0x0038           ## $a3 = FFFFFFE8
/* 00368 80A0BA28 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 0036C 80A0BA2C 0C283503 */  jal     func_80A0D40C              
/* 00370 80A0BA30 E7B0001C */  swc1    $f16, 0x001C($sp)          
/* 00374 80A0BA34 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A0BA38:
/* 00378 80A0BA38 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 0037C 80A0BA3C 03E00008 */  jr      $ra                        
/* 00380 80A0BA40 00000000 */  nop
