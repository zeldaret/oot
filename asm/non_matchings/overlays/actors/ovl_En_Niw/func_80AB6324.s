glabel func_80AB6324
/* 00BA4 80AB6324 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BA8 80AB6328 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BAC 80AB632C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00BB0 80AB6330 908E0308 */  lbu     $t6, 0x0308($a0)           ## 00000308
/* 00BB4 80AB6334 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00BB8 80AB6338 51C00015 */  beql    $t6, $zero, .L80AB6390     
/* 00BBC 80AB633C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00BC0 80AB6340 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 00BC4 80AB6344 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00BC8 80AB6348 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00BCC 80AB634C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00BD0 80AB6350 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 00BD4 80AB6354 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BD8 80AB6358 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00BDC 80AB635C 46040180 */  add.s   $f6, $f0, $f4              
/* 00BE0 80AB6360 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 00BE4 80AB6364 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00BE8 80AB6368 E4860060 */  swc1    $f6, 0x0060($a0)           ## 00000060
/* 00BEC 80AB636C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00BF0 80AB6370 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 00BF4 80AB6374 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BF8 80AB6378 3C0F80AB */  lui     $t7, %hi(func_80AB63A8)    ## $t7 = 80AB0000
/* 00BFC 80AB637C 46080280 */  add.s   $f10, $f0, $f8             
/* 00C00 80AB6380 25EF63A8 */  addiu   $t7, $t7, %lo(func_80AB63A8) ## $t7 = 80AB63A8
/* 00C04 80AB6384 AC8F0250 */  sw      $t7, 0x0250($a0)           ## 00000250
/* 00C08 80AB6388 E48A0068 */  swc1    $f10, 0x0068($a0)          ## 00000068
/* 00C0C 80AB638C 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80AB6390:
/* 00C10 80AB6390 0C2AD6FE */  jal     func_80AB5BF8              
/* 00C14 80AB6394 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00C18 80AB6398 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C1C 80AB639C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C20 80AB63A0 03E00008 */  jr      $ra                        
/* 00C24 80AB63A4 00000000 */  nop


