glabel func_80B04B40
/* 002B0 80B04B40 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 002B4 80B04B44 3C0F80B0 */  lui     $t7, %hi(D_80B07174)       ## $t7 = 80B00000
/* 002B8 80B04B48 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 002BC 80B04B4C AFA40060 */  sw      $a0, 0x0060($sp)           
/* 002C0 80B04B50 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 002C4 80B04B54 25EF7174 */  addiu   $t7, $t7, %lo(D_80B07174)  ## $t7 = 80B07174
/* 002C8 80B04B58 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B07174
/* 002CC 80B04B5C 27AE0054 */  addiu   $t6, $sp, 0x0054           ## $t6 = FFFFFFF4
/* 002D0 80B04B60 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B07178
/* 002D4 80B04B64 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 002D8 80B04B68 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B0717C
/* 002DC 80B04B6C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 002E0 80B04B70 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002E4 80B04B74 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 002E8 80B04B78 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 002EC 80B04B7C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 002F0 80B04B80 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 002F4 80B04B84 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 002F8 80B04B88 46040181 */  sub.s   $f6, $f0, $f4              
/* 002FC 80B04B8C 8FA80060 */  lw      $t0, 0x0060($sp)           
/* 00300 80B04B90 46083282 */  mul.s   $f10, $f6, $f8             
/* 00304 80B04B94 C5100024 */  lwc1    $f16, 0x0024($t0)          ## 00000024
/* 00308 80B04B98 46105480 */  add.s   $f18, $f10, $f16           
/* 0030C 80B04B9C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00310 80B04BA0 E7B20048 */  swc1    $f18, 0x0048($sp)          
/* 00314 80B04BA4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00318 80B04BA8 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 0031C 80B04BAC 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 00320 80B04BB0 44814000 */  mtc1    $at, $f8                   ## $f8 = 45.00
/* 00324 80B04BB4 46040181 */  sub.s   $f6, $f0, $f4              
/* 00328 80B04BB8 8FA90060 */  lw      $t1, 0x0060($sp)           
/* 0032C 80B04BBC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00330 80B04BC0 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 00334 80B04BC4 46083282 */  mul.s   $f10, $f6, $f8             
/* 00338 80B04BC8 C5300028 */  lwc1    $f16, 0x0028($t1)          ## 00000028
/* 0033C 80B04BCC 46128100 */  add.s   $f4, $f16, $f18            
/* 00340 80B04BD0 46045180 */  add.s   $f6, $f10, $f4             
/* 00344 80B04BD4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00348 80B04BD8 E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 0034C 80B04BDC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00350 80B04BE0 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 00354 80B04BE4 8FAA0060 */  lw      $t2, 0x0060($sp)           
/* 00358 80B04BE8 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 0035C 80B04BEC 46080401 */  sub.s   $f16, $f0, $f8             
/* 00360 80B04BF0 44819000 */  mtc1    $at, $f18                  ## $f18 = 60.00
/* 00364 80B04BF4 C544002C */  lwc1    $f4, 0x002C($t2)           ## 0000002C
/* 00368 80B04BF8 27A60054 */  addiu   $a2, $sp, 0x0054           ## $a2 = FFFFFFF4
/* 0036C 80B04BFC 46128282 */  mul.s   $f10, $f16, $f18           
/* 00370 80B04C00 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 00374 80B04C04 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00378 80B04C08 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 0037C 80B04C0C 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00380 80B04C10 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00384 80B04C14 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00388 80B04C18 46045180 */  add.s   $f6, $f10, $f4             
/* 0038C 80B04C1C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00390 80B04C20 24080009 */  addiu   $t0, $zero, 0x0009         ## $t0 = 00000009
/* 00394 80B04C24 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00398 80B04C28 E7A60050 */  swc1    $f6, 0x0050($sp)           
/* 0039C 80B04C2C AFA9003C */  sw      $t1, 0x003C($sp)           
/* 003A0 80B04C30 AFA80038 */  sw      $t0, 0x0038($sp)           
/* 003A4 80B04C34 AFB90034 */  sw      $t9, 0x0034($sp)           
/* 003A8 80B04C38 AFB80028 */  sw      $t8, 0x0028($sp)           
/* 003AC 80B04C3C AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 003B0 80B04C40 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 003B4 80B04C44 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 003B8 80B04C48 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 003BC 80B04C4C AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 003C0 80B04C50 00C03825 */  or      $a3, $a2, $zero            ## $a3 = FFFFFFF4
/* 003C4 80B04C54 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 003C8 80B04C58 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 003CC 80B04C5C AFA00014 */  sw      $zero, 0x0014($sp)         
/* 003D0 80B04C60 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 003D4 80B04C64 0C00A9AE */  jal     func_8002A6B8              
/* 003D8 80B04C68 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFE8
/* 003DC 80B04C6C 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 003E0 80B04C70 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 003E4 80B04C74 03E00008 */  jr      $ra                        
/* 003E8 80B04C78 00000000 */  nop
