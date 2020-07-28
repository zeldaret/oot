glabel func_808AC908
/* 002A8 808AC908 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 002AC 808AC90C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 002B0 808AC910 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 002B4 808AC914 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 002B8 808AC918 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002BC 808AC91C 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 002C0 808AC920 51C00035 */  beql    $t6, $zero, .L808AC9F8     
/* 002C4 808AC924 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002C8 808AC928 8CA21D98 */  lw      $v0, 0x1D98($a1)           ## 00001D98
/* 002CC 808AC92C 50400032 */  beql    $v0, $zero, .L808AC9F8     
/* 002D0 808AC930 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002D4 808AC934 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 002D8 808AC938 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 002DC 808AC93C 240528C2 */  addiu   $a1, $zero, 0x28C2         ## $a1 = 000028C2
/* 002E0 808AC940 55E1002D */  bnel    $t7, $at, .L808AC9F8       
/* 002E4 808AC944 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002E8 808AC948 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 002EC 808AC94C AFA6003C */  sw      $a2, 0x003C($sp)           
/* 002F0 808AC950 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 002F4 808AC954 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 002F8 808AC958 94580ED6 */  lhu     $t8, 0x0ED6($v0)           ## 8015F536
/* 002FC 808AC95C 24080019 */  addiu   $t0, $zero, 0x0019         ## $t0 = 00000019
/* 00300 808AC960 37192000 */  ori     $t9, $t8, 0x2000           ## $t9 = 00002000
/* 00304 808AC964 A4590ED6 */  sh      $t9, 0x0ED6($v0)           ## 8015F536
/* 00308 808AC968 A6080168 */  sh      $t0, 0x0168($s0)           ## 00000168
/* 0030C 808AC96C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00310 808AC970 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00314 808AC974 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00318 808AC978 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 0031C 808AC97C C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00320 808AC980 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00324 808AC984 46040182 */  mul.s   $f6, $f0, $f4              
/* 00328 808AC988 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
/* 0032C 808AC98C 46083280 */  add.s   $f10, $f6, $f8             
/* 00330 808AC990 E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 00334 808AC994 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00338 808AC998 46128100 */  add.s   $f4, $f16, $f18            
/* 0033C 808AC99C E7A40030 */  swc1    $f4, 0x0030($sp)           
/* 00340 808AC9A0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00344 808AC9A4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00348 808AC9A8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0034C 808AC9AC 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 00350 808AC9B0 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00354 808AC9B4 3C06808B */  lui     $a2, %hi(D_808AD8A4)       ## $a2 = 808B0000
/* 00358 808AC9B8 46060202 */  mul.s   $f8, $f0, $f6              
/* 0035C 808AC9BC 24C6D8A4 */  addiu   $a2, $a2, %lo(D_808AD8A4)  ## $a2 = 808AD8A4
/* 00360 808AC9C0 24090046 */  addiu   $t1, $zero, 0x0046         ## $t1 = 00000046
/* 00364 808AC9C4 240A001E */  addiu   $t2, $zero, 0x001E         ## $t2 = 0000001E
/* 00368 808AC9C8 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 0036C 808AC9CC AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00370 808AC9D0 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 808AD8A4
/* 00374 808AC9D4 460A4400 */  add.s   $f16, $f8, $f10            
/* 00378 808AC9D8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0037C 808AC9DC 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00380 808AC9E0 0C00A3A1 */  jal     EffectSsBomb2_SpawnLayered              
/* 00384 808AC9E4 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 00388 808AC9E8 3C0B808B */  lui     $t3, %hi(func_808ACA08)    ## $t3 = 808B0000
/* 0038C 808AC9EC 256BCA08 */  addiu   $t3, $t3, %lo(func_808ACA08) ## $t3 = 808ACA08
/* 00390 808AC9F0 AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
/* 00394 808AC9F4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808AC9F8:
/* 00398 808AC9F8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0039C 808AC9FC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 003A0 808ACA00 03E00008 */  jr      $ra                        
/* 003A4 808ACA04 00000000 */  nop
