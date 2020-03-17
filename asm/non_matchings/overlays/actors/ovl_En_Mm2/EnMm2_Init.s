glabel EnMm2_Init
/* 001EC 80AAF03C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 001F0 80AAF040 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 001F4 80AAF044 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 001F8 80AAF048 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 001FC 80AAF04C 3C0580AB */  lui     $a1, %hi(D_80AAFB5C)       ## $a1 = 80AB0000
/* 00200 80AAF050 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00204 80AAF054 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00208 80AAF058 24A5FB5C */  addiu   $a1, $a1, %lo(D_80AAFB5C)  ## $a1 = 80AAFB5C
/* 0020C 80AAF05C 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00210 80AAF060 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00214 80AAF064 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00218 80AAF068 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0021C 80AAF06C 0C00AC78 */  jal     ActorShape_Init
              
/* 00220 80AAF070 3C0741A8 */  lui     $a3, 0x41A8                ## $a3 = 41A80000
/* 00224 80AAF074 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00228 80AAF078 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0022C 80AAF07C 260E01FC */  addiu   $t6, $s0, 0x01FC           ## $t6 = 000001FC
/* 00230 80AAF080 260F025C */  addiu   $t7, $s0, 0x025C           ## $t7 = 0000025C
/* 00234 80AAF084 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 00238 80AAF088 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 0023C 80AAF08C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00240 80AAF090 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00244 80AAF094 24C65E18 */  addiu   $a2, $a2, 0x5E18           ## $a2 = 06005E18
/* 00248 80AAF098 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 0024C 80AAF09C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00250 80AAF0A0 0C0291BE */  jal     func_800A46F8              
/* 00254 80AAF0A4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00258 80AAF0A8 3C0380AB */  lui     $v1, %hi(D_80AAFAEC)       ## $v1 = 80AB0000
/* 0025C 80AAF0AC 2463FAEC */  addiu   $v1, $v1, %lo(D_80AAFAEC)  ## $v1 = 80AAFAEC
/* 00260 80AAF0B0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00264 80AAF0B4 8C640020 */  lw      $a0, 0x0020($v1)           ## 80AAFB0C
/* 00268 80AAF0B8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0026C 80AAF0BC 3C0380AB */  lui     $v1, %hi(D_80AAFAEC)       ## $v1 = 80AB0000
/* 00270 80AAF0C0 2463FAEC */  addiu   $v1, $v1, %lo(D_80AAFAEC)  ## $v1 = 80AAFAEC
/* 00274 80AAF0C4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00278 80AAF0C8 90790028 */  lbu     $t9, 0x0028($v1)           ## 80AAFB14
/* 0027C 80AAF0CC C468002C */  lwc1    $f8, 0x002C($v1)           ## 80AAFB18
/* 00280 80AAF0D0 8C650020 */  lw      $a1, 0x0020($v1)           ## 80AAFB0C
/* 00284 80AAF0D4 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00288 80AAF0D8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0028C 80AAF0DC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00290 80AAF0E0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00294 80AAF0E4 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00298 80AAF0E8 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 0029C 80AAF0EC E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 002A0 80AAF0F0 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 002A4 80AAF0F4 AE0801F8 */  sw      $t0, 0x01F8($s0)           ## 000001F8
/* 002A8 80AAF0F8 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 002AC 80AAF0FC AFA50030 */  sw      $a1, 0x0030($sp)           
/* 002B0 80AAF100 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 002B4 80AAF104 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 002B8 80AAF108 3C0780AB */  lui     $a3, %hi(D_80AAFAC0)       ## $a3 = 80AB0000
/* 002BC 80AAF10C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 002C0 80AAF110 24E7FAC0 */  addiu   $a3, $a3, %lo(D_80AAFAC0)  ## $a3 = 80AAFAC0
/* 002C4 80AAF114 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 002C8 80AAF118 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 002CC 80AAF11C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 002D0 80AAF120 960B01F4 */  lhu     $t3, 0x01F4($s0)           ## 000001F4
/* 002D4 80AAF124 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 002D8 80AAF128 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 002DC 80AAF12C 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 002E0 80AAF130 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 002E4 80AAF134 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 002E8 80AAF138 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002EC 80AAF13C 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 002F0 80AAF140 A20900AE */  sb      $t1, 0x00AE($s0)           ## 000000AE
/* 002F4 80AAF144 AE0001E0 */  sw      $zero, 0x01E0($s0)         ## 000001E0
/* 002F8 80AAF148 A20A001F */  sb      $t2, 0x001F($s0)           ## 0000001F
/* 002FC 80AAF14C A60C01F4 */  sh      $t4, 0x01F4($s0)           ## 000001F4
/* 00300 80AAF150 15A10005 */  bne     $t5, $at, .L80AAF168       
/* 00304 80AAF154 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 00308 80AAF158 3C0E80AB */  lui     $t6, %hi(func_80AAF668)    ## $t6 = 80AB0000
/* 0030C 80AAF15C 25CEF668 */  addiu   $t6, $t6, %lo(func_80AAF668) ## $t6 = 80AAF668
/* 00310 80AAF160 10000007 */  beq     $zero, $zero, .L80AAF180   
/* 00314 80AAF164 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
.L80AAF168:
/* 00318 80AAF168 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0031C 80AAF16C 0C2ABBDC */  jal     func_80AAEF70              
/* 00320 80AAF170 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00324 80AAF174 3C0F80AB */  lui     $t7, %hi(func_80AAF57C)    ## $t7 = 80AB0000
/* 00328 80AAF178 25EFF57C */  addiu   $t7, $t7, %lo(func_80AAF57C) ## $t7 = 80AAF57C
/* 0032C 80AAF17C AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
.L80AAF180:
/* 00330 80AAF180 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00334 80AAF184 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00338 80AAF188 8C580004 */  lw      $t8, 0x0004($v0)           ## 8015E664
/* 0033C 80AAF18C 53000006 */  beql    $t8, $zero, .L80AAF1A8     
/* 00340 80AAF190 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 00344 80AAF194 0C00B55C */  jal     Actor_Kill
              
/* 00348 80AAF198 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0034C 80AAF19C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00350 80AAF1A0 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00354 80AAF1A4 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
.L80AAF1A8:
/* 00358 80AAF1A8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0035C 80AAF1AC 5721000F */  bnel    $t9, $at, .L80AAF1EC       
/* 00360 80AAF1B0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00364 80AAF1B4 94480F26 */  lhu     $t0, 0x0F26($v0)           ## 8015F586
/* 00368 80AAF1B8 3C0480AB */  lui     $a0, %hi(D_80AAFB80)       ## $a0 = 80AB0000
/* 0036C 80AAF1BC 31098000 */  andi    $t1, $t0, 0x8000           ## $t1 = 00000000
/* 00370 80AAF1C0 11200005 */  beq     $t1, $zero, .L80AAF1D8     
/* 00374 80AAF1C4 00000000 */  nop
/* 00378 80AAF1C8 944A13FC */  lhu     $t2, 0x13FC($v0)           ## 8015FA5C
/* 0037C 80AAF1CC 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 00380 80AAF1D0 55600006 */  bnel    $t3, $zero, .L80AAF1EC     
/* 00384 80AAF1D4 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AAF1D8:
/* 00388 80AAF1D8 0C00084C */  jal     osSyncPrintf
              
/* 0038C 80AAF1DC 2484FB80 */  addiu   $a0, $a0, %lo(D_80AAFB80)  ## $a0 = 80AAFB80
/* 00390 80AAF1E0 0C00B55C */  jal     Actor_Kill
              
/* 00394 80AAF1E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00398 80AAF1E8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AAF1EC:
/* 0039C 80AAF1EC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 003A0 80AAF1F0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 003A4 80AAF1F4 03E00008 */  jr      $ra                        
/* 003A8 80AAF1F8 00000000 */  nop


