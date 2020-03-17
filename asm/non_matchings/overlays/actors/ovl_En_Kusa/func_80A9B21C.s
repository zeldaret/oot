glabel func_80A9B21C
/* 0027C 80A9B21C 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 00280 80A9B220 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00284 80A9B224 3C0180AA */  lui     $at, %hi(D_80A9C328)       ## $at = 80AA0000
/* 00288 80A9B228 C43EC328 */  lwc1    $f30, %lo(D_80A9C328)($at) 
/* 0028C 80A9B22C F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 00290 80A9B230 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00294 80A9B234 4481E000 */  mtc1    $at, $f28                  ## $f28 = 8.00
/* 00298 80A9B238 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 0029C 80A9B23C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 002A0 80A9B240 4481D000 */  mtc1    $at, $f26                  ## $f26 = 40.00
/* 002A4 80A9B244 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 002A8 80A9B248 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 002AC 80A9B24C 4481C000 */  mtc1    $at, $f24                  ## $f24 = 20.00
/* 002B0 80A9B250 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 002B4 80A9B254 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 002B8 80A9B258 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 002BC 80A9B25C AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 002C0 80A9B260 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 002C4 80A9B264 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 002C8 80A9B268 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 002CC 80A9B26C F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 002D0 80A9B270 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 002D4 80A9B274 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 002D8 80A9B278 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 002DC 80A9B27C AFB30084 */  sw      $s3, 0x0084($sp)           
/* 002E0 80A9B280 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 002E4 80A9B284 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 002E8 80A9B288 3C1180AA */  lui     $s1, %hi(D_80A9C23C)       ## $s1 = 80AA0000
/* 002EC 80A9B28C 3C1580AA */  lui     $s5, %hi(D_80A9C26C)       ## $s5 = 80AA0000
/* 002F0 80A9B290 3C160403 */  lui     $s6, 0x0403                ## $s6 = 04030000
/* 002F4 80A9B294 3C1E0403 */  lui     $s8, 0x0403                ## $s8 = 04030000
/* 002F8 80A9B298 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 002FC 80A9B29C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00300 80A9B2A0 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 00304 80A9B2A4 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00308 80A9B2A8 27DE56A0 */  addiu   $s8, $s8, 0x56A0           ## $s8 = 040356A0
/* 0030C 80A9B2AC 26D655E0 */  addiu   $s6, $s6, 0x55E0           ## $s6 = 040355E0
/* 00310 80A9B2B0 26B5C26C */  addiu   $s5, $s5, %lo(D_80A9C26C)  ## $s5 = 80A9C26C
/* 00314 80A9B2B4 2631C23C */  addiu   $s1, $s1, %lo(D_80A9C23C)  ## $s1 = 80A9C23C
/* 00318 80A9B2B8 27B200B8 */  addiu   $s2, $sp, 0x00B8           ## $s2 = FFFFFFE8
/* 0031C 80A9B2BC 27B400C4 */  addiu   $s4, $sp, 0x00C4           ## $s4 = FFFFFFF4
/* 00320 80A9B2C0 24170007 */  addiu   $s7, $zero, 0x0007         ## $s7 = 00000007
/* 00324 80A9B2C4 C6240000 */  lwc1    $f4, 0x0000($s1)           ## 80A9C23C
.L80A9B2C8:
/* 00328 80A9B2C8 C6060050 */  lwc1    $f6, 0x0050($s0)           ## 00000050
/* 0032C 80A9B2CC C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 00330 80A9B2D0 46062202 */  mul.s   $f8, $f4, $f6              
/* 00334 80A9B2D4 C6240004 */  lwc1    $f4, 0x0004($s1)           ## 80A9C240
/* 00338 80A9B2D8 46184282 */  mul.s   $f10, $f8, $f24            
/* 0033C 80A9B2DC 460A8480 */  add.s   $f18, $f16, $f10           
/* 00340 80A9B2E0 E7B200B8 */  swc1    $f18, 0x00B8($sp)          
/* 00344 80A9B2E4 C6060054 */  lwc1    $f6, 0x0054($s0)           ## 00000054
/* 00348 80A9B2E8 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 0034C 80A9B2EC 46062202 */  mul.s   $f8, $f4, $f6              
/* 00350 80A9B2F0 C6260008 */  lwc1    $f6, 0x0008($s1)           ## 80A9C244
/* 00354 80A9B2F4 46184402 */  mul.s   $f16, $f8, $f24            
/* 00358 80A9B2F8 46105480 */  add.s   $f18, $f10, $f16           
/* 0035C 80A9B2FC 46149100 */  add.s   $f4, $f18, $f20            
/* 00360 80A9B300 E7A400BC */  swc1    $f4, 0x00BC($sp)           
/* 00364 80A9B304 C6080058 */  lwc1    $f8, 0x0058($s0)           ## 00000058
/* 00368 80A9B308 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 0036C 80A9B30C 46083282 */  mul.s   $f10, $f6, $f8             
/* 00370 80A9B310 00000000 */  nop
/* 00374 80A9B314 46185402 */  mul.s   $f16, $f10, $f24           
/* 00378 80A9B318 46109100 */  add.s   $f4, $f18, $f16            
/* 0037C 80A9B31C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00380 80A9B320 E7A400C0 */  swc1    $f4, 0x00C0($sp)           
/* 00384 80A9B324 46160181 */  sub.s   $f6, $f0, $f22             
/* 00388 80A9B328 461C3202 */  mul.s   $f8, $f6, $f28             
/* 0038C 80A9B32C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00390 80A9B330 E7A800C4 */  swc1    $f8, 0x00C4($sp)           
/* 00394 80A9B334 46140282 */  mul.s   $f10, $f0, $f20            
/* 00398 80A9B338 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0039C 80A9B33C E7AA00C8 */  swc1    $f10, 0x00C8($sp)          
/* 003A0 80A9B340 46160481 */  sub.s   $f18, $f0, $f22            
/* 003A4 80A9B344 461C9402 */  mul.s   $f16, $f18, $f28           
/* 003A8 80A9B348 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 003AC 80A9B34C E7B000CC */  swc1    $f16, 0x00CC($sp)          
/* 003B0 80A9B350 461E0102 */  mul.s   $f4, $f0, $f30             
/* 003B4 80A9B354 240EFF9C */  addiu   $t6, $zero, 0xFF9C         ## $t6 = FFFFFF9C
/* 003B8 80A9B358 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 003BC 80A9B35C 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 003C0 80A9B360 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 003C4 80A9B364 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 003C8 80A9B368 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 003CC 80A9B36C 4600218D */  trunc.w.s $f6, $f4                   
/* 003D0 80A9B370 240E0050 */  addiu   $t6, $zero, 0x0050         ## $t6 = 00000050
/* 003D4 80A9B374 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 003D8 80A9B378 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 003DC 80A9B37C 44093000 */  mfc1    $t1, $f6                   
/* 003E0 80A9B380 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 003E4 80A9B384 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 003E8 80A9B388 312A0007 */  andi    $t2, $t1, 0x0007           ## $t2 = 00000000
/* 003EC 80A9B38C 000A5840 */  sll     $t3, $t2,  1               
/* 003F0 80A9B390 02AB6021 */  addu    $t4, $s5, $t3              
/* 003F4 80A9B394 858D0000 */  lh      $t5, 0x0000($t4)           ## 00000000
/* 003F8 80A9B398 AFB6003C */  sw      $s6, 0x003C($sp)           
/* 003FC 80A9B39C AFB80038 */  sw      $t8, 0x0038($sp)           
/* 00400 80A9B3A0 AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 00404 80A9B3A4 AFAE0030 */  sw      $t6, 0x0030($sp)           
/* 00408 80A9B3A8 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 0040C 80A9B3AC AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00410 80A9B3B0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00414 80A9B3B4 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFE8
/* 00418 80A9B3B8 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFF4
/* 0041C 80A9B3BC 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFE8
/* 00420 80A9B3C0 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00424 80A9B3C4 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 00428 80A9B3C8 AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 0042C 80A9B3CC C6280000 */  lwc1    $f8, 0x0000($s1)           ## 80A9C23C
/* 00430 80A9B3D0 C60A0050 */  lwc1    $f10, 0x0050($s0)          ## 00000050
/* 00434 80A9B3D4 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00438 80A9B3D8 460A4482 */  mul.s   $f18, $f8, $f10            
/* 0043C 80A9B3DC C6280004 */  lwc1    $f8, 0x0004($s1)           ## 80A9C240
/* 00440 80A9B3E0 461A9402 */  mul.s   $f16, $f18, $f26           
/* 00444 80A9B3E4 46102180 */  add.s   $f6, $f4, $f16             
/* 00448 80A9B3E8 E7A600B8 */  swc1    $f6, 0x00B8($sp)           
/* 0044C 80A9B3EC C60A0054 */  lwc1    $f10, 0x0054($s0)          ## 00000054
/* 00450 80A9B3F0 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00454 80A9B3F4 460A4482 */  mul.s   $f18, $f8, $f10            
/* 00458 80A9B3F8 C62A0008 */  lwc1    $f10, 0x0008($s1)          ## 80A9C244
/* 0045C 80A9B3FC 461A9102 */  mul.s   $f4, $f18, $f26            
/* 00460 80A9B400 46048180 */  add.s   $f6, $f16, $f4             
/* 00464 80A9B404 46143200 */  add.s   $f8, $f6, $f20             
/* 00468 80A9B408 E7A800BC */  swc1    $f8, 0x00BC($sp)           
/* 0046C 80A9B40C C6120058 */  lwc1    $f18, 0x0058($s0)          ## 00000058
/* 00470 80A9B410 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00474 80A9B414 46125402 */  mul.s   $f16, $f10, $f18           
/* 00478 80A9B418 00000000 */  nop
/* 0047C 80A9B41C 461A8102 */  mul.s   $f4, $f16, $f26            
/* 00480 80A9B420 46043200 */  add.s   $f8, $f6, $f4              
/* 00484 80A9B424 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00488 80A9B428 E7A800C0 */  swc1    $f8, 0x00C0($sp)           
/* 0048C 80A9B42C 46160281 */  sub.s   $f10, $f0, $f22            
/* 00490 80A9B430 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00494 80A9B434 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 00498 80A9B438 00000000 */  nop
/* 0049C 80A9B43C 46125402 */  mul.s   $f16, $f10, $f18           
/* 004A0 80A9B440 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 004A4 80A9B444 E7B000C4 */  swc1    $f16, 0x00C4($sp)          
/* 004A8 80A9B448 46140182 */  mul.s   $f6, $f0, $f20             
/* 004AC 80A9B44C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 004B0 80A9B450 E7A600C8 */  swc1    $f6, 0x00C8($sp)           
/* 004B4 80A9B454 46160101 */  sub.s   $f4, $f0, $f22             
/* 004B8 80A9B458 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 004BC 80A9B45C 44814000 */  mtc1    $at, $f8                   ## $f8 = 6.00
/* 004C0 80A9B460 00000000 */  nop
/* 004C4 80A9B464 46082282 */  mul.s   $f10, $f4, $f8             
/* 004C8 80A9B468 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 004CC 80A9B46C E7AA00CC */  swc1    $f10, 0x00CC($sp)          
/* 004D0 80A9B470 461E0482 */  mul.s   $f18, $f0, $f30            
/* 004D4 80A9B474 2419FF9C */  addiu   $t9, $zero, 0xFF9C         ## $t9 = FFFFFF9C
/* 004D8 80A9B478 24080040 */  addiu   $t0, $zero, 0x0040         ## $t0 = 00000040
/* 004DC 80A9B47C 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 004E0 80A9B480 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 004E4 80A9B484 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 004E8 80A9B488 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 004EC 80A9B48C 4600940D */  trunc.w.s $f16, $f18                 
/* 004F0 80A9B490 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 004F4 80A9B494 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 004F8 80A9B498 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 004FC 80A9B49C 440C8000 */  mfc1    $t4, $f16                  
/* 00500 80A9B4A0 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 00504 80A9B4A4 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00508 80A9B4A8 0197001A */  div     $zero, $t4, $s7            
/* 0050C 80A9B4AC 00006810 */  mfhi    $t5                        
/* 00510 80A9B4B0 000D7040 */  sll     $t6, $t5,  1               
/* 00514 80A9B4B4 02AE7821 */  addu    $t7, $s5, $t6              
/* 00518 80A9B4B8 85F80000 */  lh      $t8, 0x0000($t7)           ## 00000000
/* 0051C 80A9B4BC AFBE003C */  sw      $s8, 0x003C($sp)           
/* 00520 80A9B4C0 AFA90038 */  sw      $t1, 0x0038($sp)           
/* 00524 80A9B4C4 AFA80034 */  sw      $t0, 0x0034($sp)           
/* 00528 80A9B4C8 AFB90030 */  sw      $t9, 0x0030($sp)           
/* 0052C 80A9B4CC AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00530 80A9B4D0 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00534 80A9B4D4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00538 80A9B4D8 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFE8
/* 0053C 80A9B4DC 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFF4
/* 00540 80A9B4E0 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFE8
/* 00544 80A9B4E4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00548 80A9B4E8 16E00002 */  bne     $s7, $zero, .L80A9B4F4     
/* 0054C 80A9B4EC 00000000 */  nop
/* 00550 80A9B4F0 0007000D */  break 7
.L80A9B4F4:
/* 00554 80A9B4F4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00558 80A9B4F8 16E10004 */  bne     $s7, $at, .L80A9B50C       
/* 0055C 80A9B4FC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00560 80A9B500 15810002 */  bne     $t4, $at, .L80A9B50C       
/* 00564 80A9B504 00000000 */  nop
/* 00568 80A9B508 0006000D */  break 6
.L80A9B50C:
/* 0056C 80A9B50C AFB80024 */  sw      $t8, 0x0024($sp)           
/* 00570 80A9B510 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 00574 80A9B514 00000000 */  nop
/* 00578 80A9B518 3C0A80AA */  lui     $t2, %hi(D_80A9C26C)       ## $t2 = 80AA0000
/* 0057C 80A9B51C 254AC26C */  addiu   $t2, $t2, %lo(D_80A9C26C)  ## $t2 = 80A9C26C
/* 00580 80A9B520 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 80A9C248
/* 00584 80A9B524 562AFF68 */  bnel    $s1, $t2, .L80A9B2C8       
/* 00588 80A9B528 C6240000 */  lwc1    $f4, 0x0000($s1)           ## 80A9C248
/* 0058C 80A9B52C 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 00590 80A9B530 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00594 80A9B534 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00598 80A9B538 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 0059C 80A9B53C D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 005A0 80A9B540 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 005A4 80A9B544 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 005A8 80A9B548 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 005AC 80A9B54C 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 005B0 80A9B550 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 005B4 80A9B554 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 005B8 80A9B558 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 005BC 80A9B55C 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 005C0 80A9B560 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 005C4 80A9B564 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 005C8 80A9B568 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 005CC 80A9B56C 03E00008 */  jr      $ra                        
/* 005D0 80A9B570 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000


