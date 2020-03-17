glabel EnFd_Init
/* 00AEC 80A0C1AC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00AF0 80A0C1B0 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00AF4 80A0C1B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AF8 80A0C1B8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00AFC 80A0C1BC AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00B00 80A0C1C0 260E04DC */  addiu   $t6, $s0, 0x04DC           ## $t6 = 000004DC
/* 00B04 80A0C1C4 260F057E */  addiu   $t7, $s0, 0x057E           ## $t7 = 0000057E
/* 00B08 80A0C1C8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00B0C 80A0C1CC 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00B10 80A0C1D0 2418001B */  addiu   $t8, $zero, 0x001B         ## $t8 = 0000001B
/* 00B14 80A0C1D4 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00B18 80A0C1D8 24C65810 */  addiu   $a2, $a2, 0x5810           ## $a2 = 06005810
/* 00B1C 80A0C1DC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00B20 80A0C1E0 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00B24 80A0C1E4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00B28 80A0C1E8 0C0291BE */  jal     func_800A46F8              
/* 00B2C 80A0C1EC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00B30 80A0C1F0 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00B34 80A0C1F4 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00B38 80A0C1F8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00B3C 80A0C1FC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00B40 80A0C200 0C00AC78 */  jal     ActorShape_Init
              
/* 00B44 80A0C204 3C074200 */  lui     $a3, 0x4200                ## $a3 = 42000000
/* 00B48 80A0C208 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00B4C 80A0C20C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00B50 80A0C210 0C016EFE */  jal     func_8005BBF8              
/* 00B54 80A0C214 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00B58 80A0C218 3C0780A1 */  lui     $a3, %hi(D_80A0DFD0)       ## $a3 = 80A10000
/* 00B5C 80A0C21C 261901B4 */  addiu   $t9, $s0, 0x01B4           ## $t9 = 000001B4
/* 00B60 80A0C220 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00B64 80A0C224 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00B68 80A0C228 24E7DFD0 */  addiu   $a3, $a3, %lo(D_80A0DFD0)  ## $a3 = 80A0DFD0
/* 00B6C 80A0C22C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00B70 80A0C230 0C017014 */  jal     func_8005C050              
/* 00B74 80A0C234 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00B78 80A0C238 0C016C80 */  jal     CollisionBtlTbl_Get
              
/* 00B7C 80A0C23C 2404000F */  addiu   $a0, $zero, 0x000F         ## $a0 = 0000000F
/* 00B80 80A0C240 3C0680A1 */  lui     $a2, %hi(D_80A0DFE0)       ## $a2 = 80A10000
/* 00B84 80A0C244 24C6DFE0 */  addiu   $a2, $a2, %lo(D_80A0DFE0)  ## $a2 = 80A0DFE0
/* 00B88 80A0C248 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00B8C 80A0C24C 0C0187BF */  jal     func_80061EFC              
/* 00B90 80A0C250 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00B94 80A0C254 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 00B98 80A0C258 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00B9C 80A0C25C 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00BA0 80A0C260 01014824 */  and     $t1, $t0, $at              
/* 00BA4 80A0C264 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 00BA8 80A0C268 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 00BAC 80A0C26C 01215825 */  or      $t3, $t1, $at              ## $t3 = 01000000
/* 00BB0 80A0C270 AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 00BB4 80A0C274 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00BB8 80A0C278 0C00B58B */  jal     Actor_SetScale
              
/* 00BBC 80A0C27C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BC0 80A0C280 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00BC4 80A0C284 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00BC8 80A0C288 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00BCC 80A0C28C A60C04BC */  sh      $t4, 0x04BC($s0)           ## 000004BC
/* 00BD0 80A0C290 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BD4 80A0C294 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00BD8 80A0C298 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00BDC 80A0C29C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00BE0 80A0C2A0 3C1880A1 */  lui     $t8, %hi(func_80A0C310)    ## $t8 = 80A10000
/* 00BE4 80A0C2A4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00BE8 80A0C2A8 4606003C */  c.lt.s  $f0, $f6                   
/* 00BEC 80A0C2AC 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 00BF0 80A0C2B0 240F0022 */  addiu   $t7, $zero, 0x0022         ## $t7 = 00000022
/* 00BF4 80A0C2B4 2718C310 */  addiu   $t8, $t8, %lo(func_80A0C310) ## $t8 = 80A0C310
/* 00BF8 80A0C2B8 45020004 */  bc1fl   .L80A0C2CC                 
/* 00BFC 80A0C2BC A60E04BA */  sh      $t6, 0x04BA($s0)           ## 000004BA
/* 00C00 80A0C2C0 10000002 */  beq     $zero, $zero, .L80A0C2CC   
/* 00C04 80A0C2C4 A60D04BA */  sh      $t5, 0x04BA($s0)           ## 000004BA
/* 00C08 80A0C2C8 A60E04BA */  sh      $t6, 0x04BA($s0)           ## 000004BA
.L80A0C2CC:
/* 00C0C 80A0C2CC A20F0117 */  sb      $t7, 0x0117($s0)           ## 00000117
/* 00C10 80A0C2D0 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
/* 00C14 80A0C2D4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00C18 80A0C2D8 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00C1C 80A0C2DC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00C20 80A0C2E0 03E00008 */  jr      $ra                        
/* 00C24 80A0C2E4 00000000 */  nop


