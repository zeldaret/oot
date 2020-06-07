.late_rodata
glabel D_80B85E5C
    .float -0.05
glabel D_80B85E60
    .float -0.025

.text
glabel func_80B8598C
/* 0039C 80B8598C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 003A0 80B85990 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 003A4 80B85994 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 003A8 80B85998 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 003AC 80B8599C AFA40038 */  sw      $a0, 0x0038($sp)           
/* 003B0 80B859A0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 003B4 80B859A4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 003B8 80B859A8 3C0180B8 */  lui     $at, %hi(D_80B85D74)       ## $at = 80B80000
/* 003BC 80B859AC E4205D74 */  swc1    $f0, %lo(D_80B85D74)($at)  
/* 003C0 80B859B0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 003C4 80B859B4 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 003C8 80B859B8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 003CC 80B859BC 00000000 */  nop
/* 003D0 80B859C0 3C0180B8 */  lui     $at, %hi(D_80B85D7C)       ## $at = 80B80000
/* 003D4 80B859C4 E4205D7C */  swc1    $f0, %lo(D_80B85D7C)($at)  
/* 003D8 80B859C8 3C0180B8 */  lui     $at, %hi(D_80B85E5C)       ## $at = 80B80000
/* 003DC 80B859CC C4245E5C */  lwc1    $f4, %lo(D_80B85E5C)($at)  
/* 003E0 80B859D0 3C0180B8 */  lui     $at, %hi(D_80B85D78)       ## $at = 80B80000
/* 003E4 80B859D4 E4245D78 */  swc1    $f4, %lo(D_80B85D78)($at)  
/* 003E8 80B859D8 3C0180B8 */  lui     $at, %hi(D_80B85E60)       ## $at = 80B80000
/* 003EC 80B859DC C4265E60 */  lwc1    $f6, %lo(D_80B85E60)($at)  
/* 003F0 80B859E0 3C0180B8 */  lui     $at, %hi(D_80B85D84)       ## $at = 80B80000
/* 003F4 80B859E4 E4265D84 */  swc1    $f6, %lo(D_80B85D84)($at)  
/* 003F8 80B859E8 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 003FC 80B859EC 44816000 */  mtc1    $at, $f12                  ## $f12 = 12.00
/* 00400 80B859F0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00404 80B859F4 00000000 */  nop
/* 00408 80B859F8 8FAE0038 */  lw      $t6, 0x0038($sp)           
/* 0040C 80B859FC C5C80024 */  lwc1    $f8, 0x0024($t6)           ## 00000024
/* 00410 80B85A00 46080280 */  add.s   $f10, $f0, $f8             
/* 00414 80B85A04 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00418 80B85A08 E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 0041C 80B85A0C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00420 80B85A10 44818000 */  mtc1    $at, $f16                  ## $f16 = 6.00
/* 00424 80B85A14 8FAF0038 */  lw      $t7, 0x0038($sp)           
/* 00428 80B85A18 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 0042C 80B85A1C 46100482 */  mul.s   $f18, $f0, $f16            
/* 00430 80B85A20 C5E40028 */  lwc1    $f4, 0x0028($t7)           ## 00000028
/* 00434 80B85A24 44816000 */  mtc1    $at, $f12                  ## $f12 = 12.00
/* 00438 80B85A28 46049180 */  add.s   $f6, $f18, $f4             
/* 0043C 80B85A2C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00440 80B85A30 E7A60030 */  swc1    $f6, 0x0030($sp)           
/* 00444 80B85A34 8FB80038 */  lw      $t8, 0x0038($sp)           
/* 00448 80B85A38 3C1980B8 */  lui     $t9, %hi(D_80B85D8C)       ## $t9 = 80B80000
/* 0044C 80B85A3C 3C0880B8 */  lui     $t0, %hi(D_80B85D90)       ## $t0 = 80B80000
/* 00450 80B85A40 C708002C */  lwc1    $f8, 0x002C($t8)           ## 0000002C
/* 00454 80B85A44 25085D90 */  addiu   $t0, $t0, %lo(D_80B85D90)  ## $t0 = 80B85D90
/* 00458 80B85A48 27395D8C */  addiu   $t9, $t9, %lo(D_80B85D8C)  ## $t9 = 80B85D8C
/* 0045C 80B85A4C 46080280 */  add.s   $f10, $f0, $f8             
/* 00460 80B85A50 3C0680B8 */  lui     $a2, %hi(D_80B85D74)       ## $a2 = 80B80000
/* 00464 80B85A54 3C0780B8 */  lui     $a3, %hi(D_80B85D80)       ## $a3 = 80B80000
/* 00468 80B85A58 24091388 */  addiu   $t1, $zero, 0x1388         ## $t1 = 00001388
/* 0046C 80B85A5C 240A0010 */  addiu   $t2, $zero, 0x0010         ## $t2 = 00000010
/* 00470 80B85A60 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 00474 80B85A64 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00478 80B85A68 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 0047C 80B85A6C 24E75D80 */  addiu   $a3, $a3, %lo(D_80B85D80)  ## $a3 = 80B85D80
/* 00480 80B85A70 24C65D74 */  addiu   $a2, $a2, %lo(D_80B85D74)  ## $a2 = 80B85D74
/* 00484 80B85A74 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00488 80B85A78 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 0048C 80B85A7C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00490 80B85A80 0C00A2EC */  jal     func_80028BB0              
/* 00494 80B85A84 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00498 80B85A88 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0049C 80B85A8C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 004A0 80B85A90 03E00008 */  jr      $ra                        
/* 004A4 80B85A94 00000000 */  nop
