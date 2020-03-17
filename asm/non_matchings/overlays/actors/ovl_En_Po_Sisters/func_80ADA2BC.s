glabel func_80ADA2BC
/* 0132C 80ADA2BC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01330 80ADA2C0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01334 80ADA2C4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01338 80ADA2C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0133C 80ADA2CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01340 80ADA2D0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01344 80ADA2D4 24A50D40 */  addiu   $a1, $a1, 0x0D40           ## $a1 = 06000D40
/* 01348 80ADA2D8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0134C 80ADA2DC 0C0294D3 */  jal     func_800A534C              
/* 01350 80ADA2E0 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 01354 80ADA2E4 92020194 */  lbu     $v0, 0x0194($s0)           ## 00000194
/* 01358 80ADA2E8 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 0135C 80ADA2EC 240F005A */  addiu   $t7, $zero, 0x005A         ## $t7 = 0000005A
/* 01360 80ADA2F0 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 01364 80ADA2F4 3C0880AE */  lui     $t0, %hi(D_80ADD79C)       ## $t0 = 80AE0000
/* 01368 80ADA2F8 0002C840 */  sll     $t9, $v0,  1               
/* 0136C 80ADA2FC A2000198 */  sb      $zero, 0x0198($s0)         ## 00000198
/* 01370 80ADA300 A20E0199 */  sb      $t6, 0x0199($s0)           ## 00000199
/* 01374 80ADA304 A60F019A */  sh      $t7, 0x019A($s0)           ## 0000019A
/* 01378 80ADA308 A2180196 */  sb      $t8, 0x0196($s0)           ## 00000196
/* 0137C 80ADA30C 01194021 */  addu    $t0, $t0, $t9              
/* 01380 80ADA310 8508D79C */  lh      $t0, %lo(D_80ADD79C)($t0)  
/* 01384 80ADA314 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 01388 80ADA318 2405001B */  addiu   $a1, $zero, 0x001B         ## $a1 = 0000001B
/* 0138C 80ADA31C A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
/* 01390 80ADA320 14400003 */  bne     $v0, $zero, .L80ADA330     
/* 01394 80ADA324 E604000C */  swc1    $f4, 0x000C($s0)           ## 0000000C
/* 01398 80ADA328 0C00B2DD */  jal     Flags_SetSwitch
              
/* 0139C 80ADA32C 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80ADA330:
/* 013A0 80ADA330 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013A4 80ADA334 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 013A8 80ADA338 24052822 */  addiu   $a1, $zero, 0x2822         ## $a1 = 00002822
/* 013AC 80ADA33C 3C0980AE */  lui     $t1, %hi(func_80ADBF58)    ## $t1 = 80AE0000
/* 013B0 80ADA340 2529BF58 */  addiu   $t1, $t1, %lo(func_80ADBF58) ## $t1 = 80ADBF58
/* 013B4 80ADA344 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
/* 013B8 80ADA348 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 013BC 80ADA34C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 013C0 80ADA350 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 013C4 80ADA354 03E00008 */  jr      $ra                        
/* 013C8 80ADA358 00000000 */  nop


