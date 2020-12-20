.late_rodata
glabel D_80AD2914
    .float 6.28

.text
glabel func_80ACF788
/* 002E8 80ACF788 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 002EC 80ACF78C 3C0F80AD */  lui     $t7, %hi(D_80AD2814)       ## $t7 = 80AD0000
/* 002F0 80ACF790 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 002F4 80ACF794 AFA40068 */  sw      $a0, 0x0068($sp)           
/* 002F8 80ACF798 AFA5006C */  sw      $a1, 0x006C($sp)           
/* 002FC 80ACF79C AFA60070 */  sw      $a2, 0x0070($sp)           
/* 00300 80ACF7A0 AFA70074 */  sw      $a3, 0x0074($sp)           
/* 00304 80ACF7A4 25EF2814 */  addiu   $t7, $t7, %lo(D_80AD2814)  ## $t7 = 80AD2814
/* 00308 80ACF7A8 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80AD2814
/* 0030C 80ACF7AC 27AE0050 */  addiu   $t6, $sp, 0x0050           ## $t6 = FFFFFFE8
/* 00310 80ACF7B0 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80AD2818
/* 00314 80ACF7B4 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE8
/* 00318 80ACF7B8 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80AD281C
/* 0031C 80ACF7BC 3C0980AD */  lui     $t1, %hi(D_80AD2820)       ## $t1 = 80AD0000
/* 00320 80ACF7C0 25292820 */  addiu   $t1, $t1, %lo(D_80AD2820)  ## $t1 = 80AD2820
/* 00324 80ACF7C4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFEC
/* 00328 80ACF7C8 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF0
/* 0032C 80ACF7CC 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80AD2820
/* 00330 80ACF7D0 27A80044 */  addiu   $t0, $sp, 0x0044           ## $t0 = FFFFFFDC
/* 00334 80ACF7D4 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80AD2824
/* 00338 80ACF7D8 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFDC
/* 0033C 80ACF7DC 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80AD2828
/* 00340 80ACF7E0 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE0
/* 00344 80ACF7E4 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00348 80ACF7E8 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFE4
/* 0034C 80ACF7EC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00350 80ACF7F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00354 80ACF7F4 3C0180AD */  lui     $at, %hi(D_80AD2914)       ## $at = 80AD0000
/* 00358 80ACF7F8 C4282914 */  lwc1    $f8, %lo(D_80AD2914)($at)  
/* 0035C 80ACF7FC 46040181 */  sub.s   $f6, $f0, $f4              
/* 00360 80ACF800 8FAC006C */  lw      $t4, 0x006C($sp)           
/* 00364 80ACF804 46083302 */  mul.s   $f12, $f6, $f8             
/* 00368 80ACF808 E7AC0040 */  swc1    $f12, 0x0040($sp)          
/* 0036C 80ACF80C C58A0080 */  lwc1    $f10, 0x0080($t4)          ## 00000080
/* 00370 80ACF810 0C0329C8 */  jal     Math_SinF              
/* 00374 80ACF814 E7AA0060 */  swc1    $f10, 0x0060($sp)          
/* 00378 80ACF818 C7B00074 */  lwc1    $f16, 0x0074($sp)          
/* 0037C 80ACF81C 8FAD0070 */  lw      $t5, 0x0070($sp)           
/* 00380 80ACF820 C7AC0040 */  lwc1    $f12, 0x0040($sp)          
/* 00384 80ACF824 46100482 */  mul.s   $f18, $f0, $f16            
/* 00388 80ACF828 C5A40000 */  lwc1    $f4, 0x0000($t5)           ## 00000000
/* 0038C 80ACF82C 46049180 */  add.s   $f6, $f18, $f4             
/* 00390 80ACF830 0C0329DD */  jal     Math_CosF              
/* 00394 80ACF834 E7A6005C */  swc1    $f6, 0x005C($sp)           
/* 00398 80ACF838 C7A80074 */  lwc1    $f8, 0x0074($sp)           
/* 0039C 80ACF83C 8FAE0070 */  lw      $t6, 0x0070($sp)           
/* 003A0 80ACF840 46080282 */  mul.s   $f10, $f0, $f8             
/* 003A4 80ACF844 C5D00008 */  lwc1    $f16, 0x0008($t6)          ## 00000008
/* 003A8 80ACF848 46105480 */  add.s   $f18, $f10, $f16           
/* 003AC 80ACF84C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 003B0 80ACF850 E7B20064 */  swc1    $f18, 0x0064($sp)          
/* 003B4 80ACF854 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 003B8 80ACF858 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 003BC 80ACF85C C7A8007C */  lwc1    $f8, 0x007C($sp)           
/* 003C0 80ACF860 46040181 */  sub.s   $f6, $f0, $f4              
/* 003C4 80ACF864 46083282 */  mul.s   $f10, $f6, $f8             
/* 003C8 80ACF868 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 003CC 80ACF86C E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 003D0 80ACF870 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 003D4 80ACF874 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 003D8 80ACF878 C7A4007C */  lwc1    $f4, 0x007C($sp)           
/* 003DC 80ACF87C 46100481 */  sub.s   $f18, $f0, $f16            
/* 003E0 80ACF880 46049182 */  mul.s   $f6, $f18, $f4             
/* 003E4 80ACF884 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 003E8 80ACF888 E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 003EC 80ACF88C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 003F0 80ACF890 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 003F4 80ACF894 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 003F8 80ACF898 44818000 */  mtc1    $at, $f16                  ## $f16 = 4.00
/* 003FC 80ACF89C 46080281 */  sub.s   $f10, $f0, $f8             
/* 00400 80ACF8A0 C7A40054 */  lwc1    $f4, 0x0054($sp)           
/* 00404 80ACF8A4 46105482 */  mul.s   $f18, $f10, $f16           
/* 00408 80ACF8A8 46122180 */  add.s   $f6, $f4, $f18             
/* 0040C 80ACF8AC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00410 80ACF8B0 E7A60054 */  swc1    $f6, 0x0054($sp)           
/* 00414 80ACF8B4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00418 80ACF8B8 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 0041C 80ACF8BC 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00420 80ACF8C0 44818000 */  mtc1    $at, $f16                  ## $f16 = 12.00
/* 00424 80ACF8C4 46080282 */  mul.s   $f10, $f0, $f8             
/* 00428 80ACF8C8 C7B20080 */  lwc1    $f18, 0x0080($sp)          
/* 0042C 80ACF8CC 8FAF0078 */  lw      $t7, 0x0078($sp)           
/* 00430 80ACF8D0 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 00434 80ACF8D4 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 00438 80ACF8D8 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 0043C 80ACF8DC AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00440 80ACF8E0 46105100 */  add.s   $f4, $f10, $f16            
/* 00444 80ACF8E4 8FA40068 */  lw      $a0, 0x0068($sp)           
/* 00448 80ACF8E8 27A5005C */  addiu   $a1, $sp, 0x005C           ## $a1 = FFFFFFF4
/* 0044C 80ACF8EC 27A60050 */  addiu   $a2, $sp, 0x0050           ## $a2 = FFFFFFE8
/* 00450 80ACF8F0 46122182 */  mul.s   $f6, $f4, $f18             
/* 00454 80ACF8F4 27A70044 */  addiu   $a3, $sp, 0x0044           ## $a3 = FFFFFFDC
/* 00458 80ACF8F8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0045C 80ACF8FC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00460 80ACF900 4600320D */  trunc.w.s $f8, $f6                   
/* 00464 80ACF904 44194000 */  mfc1    $t9, $f8                   
/* 00468 80ACF908 0C00A5C9 */  jal     EffectSsHahen_Spawn              
/* 0046C 80ACF90C AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00470 80ACF910 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00474 80ACF914 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 00478 80ACF918 03E00008 */  jr      $ra                        
/* 0047C 80ACF91C 00000000 */  nop
