glabel EnButte_Init
/* 0034C 809CD3BC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00350 809CD3C0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00354 809CD3C4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00358 809CD3C8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0035C 809CD3CC 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00360 809CD3D0 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00364 809CD3D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00368 809CD3D8 15C10002 */  bne     $t6, $at, .L809CD3E4       
/* 0036C 809CD3DC 3C05809D */  lui     $a1, %hi(D_809CE3D0)       ## $a1 = 809D0000
/* 00370 809CD3E0 A480001C */  sh      $zero, 0x001C($a0)         ## 0000001C
.L809CD3E4:
/* 00374 809CD3E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00378 809CD3E8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0037C 809CD3EC 24A5E3D0 */  addiu   $a1, $a1, %lo(D_809CE3D0)  ## $a1 = 809CE3D0
/* 00380 809CD3F0 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00384 809CD3F4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00388 809CD3F8 260501AC */  addiu   $a1, $s0, 0x01AC           ## $a1 = 000001AC
/* 0038C 809CD3FC 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00390 809CD400 17010005 */  bne     $t8, $at, .L809CD418       
/* 00394 809CD404 3C060500 */  lui     $a2, 0x0500                ## $a2 = 05000000
/* 00398 809CD408 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0039C 809CD40C 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 003A0 809CD410 00000000 */  nop
/* 003A4 809CD414 E60400F8 */  swc1    $f4, 0x00F8($s0)           ## 000000F8
.L809CD418:
/* 003A8 809CD418 3C070500 */  lui     $a3, 0x0500                ## $a3 = 05000000
/* 003AC 809CD41C 261901F0 */  addiu   $t9, $s0, 0x01F0           ## $t9 = 000001F0
/* 003B0 809CD420 26080220 */  addiu   $t0, $s0, 0x0220           ## $t0 = 00000220
/* 003B4 809CD424 24090008 */  addiu   $t1, $zero, 0x0008         ## $t1 = 00000008
/* 003B8 809CD428 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 003BC 809CD42C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 003C0 809CD430 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 003C4 809CD434 24E72470 */  addiu   $a3, $a3, 0x2470           ## $a3 = 05002470
/* 003C8 809CD438 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 003CC 809CD43C 24C636F0 */  addiu   $a2, $a2, 0x36F0           ## $a2 = 050036F0
/* 003D0 809CD440 0C02915F */  jal     SkelAnime_Init
              
/* 003D4 809CD444 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 003D8 809CD448 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 003DC 809CD44C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 003E0 809CD450 0C016EFE */  jal     func_8005BBF8              
/* 003E4 809CD454 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 003E8 809CD458 3C07809D */  lui     $a3, %hi(D_809CE314)       ## $a3 = 809D0000
/* 003EC 809CD45C 260A016C */  addiu   $t2, $s0, 0x016C           ## $t2 = 0000016C
/* 003F0 809CD460 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 003F4 809CD464 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 003F8 809CD468 24E7E314 */  addiu   $a3, $a3, %lo(D_809CE314)  ## $a3 = 809CE314
/* 003FC 809CD46C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00400 809CD470 0C017014 */  jal     func_8005C050              
/* 00404 809CD474 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00408 809CD478 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0040C 809CD47C A20000AE */  sb      $zero, 0x00AE($s0)         ## 000000AE
/* 00410 809CD480 3C01809D */  lui     $at, %hi(D_809CE48C)       ## $at = 809D0000
/* 00414 809CD484 C426E48C */  lwc1    $f6, %lo(D_809CE48C)($at)  
/* 00418 809CD488 46060202 */  mul.s   $f8, $f0, $f6              
/* 0041C 809CD48C 4600428D */  trunc.w.s $f10, $f8                  
/* 00420 809CD490 440C5000 */  mfc1    $t4, $f10                  
/* 00424 809CD494 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00428 809CD498 A60C025C */  sh      $t4, 0x025C($s0)           ## 0000025C
/* 0042C 809CD49C 3C01809D */  lui     $at, %hi(D_809CE490)       ## $at = 809D0000
/* 00430 809CD4A0 C430E490 */  lwc1    $f16, %lo(D_809CE490)($at) 
/* 00434 809CD4A4 46100482 */  mul.s   $f18, $f0, $f16            
/* 00438 809CD4A8 4600910D */  trunc.w.s $f4, $f18                  
/* 0043C 809CD4AC 440E2000 */  mfc1    $t6, $f4                   
/* 00440 809CD4B0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00444 809CD4B4 A60E025E */  sh      $t6, 0x025E($s0)           ## 0000025E
/* 00448 809CD4B8 3C01809D */  lui     $at, %hi(D_809CE494)       ## $at = 809D0000
/* 0044C 809CD4BC C426E494 */  lwc1    $f6, %lo(D_809CE494)($at)  
/* 00450 809CD4C0 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00454 809CD4C4 3C050500 */  lui     $a1, 0x0500                ## $a1 = 05000000
/* 00458 809CD4C8 46060202 */  mul.s   $f8, $f0, $f6              
/* 0045C 809CD4CC 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00460 809CD4D0 44071000 */  mfc1    $a3, $f2                   
/* 00464 809CD4D4 24A52470 */  addiu   $a1, $a1, 0x2470           ## $a1 = 05002470
/* 00468 809CD4D8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0046C 809CD4DC 4600428D */  trunc.w.s $f10, $f8                  
/* 00470 809CD4E0 44185000 */  mfc1    $t8, $f10                  
/* 00474 809CD4E4 00000000 */  nop
/* 00478 809CD4E8 A6180260 */  sh      $t8, 0x0260($s0)           ## 00000260
/* 0047C 809CD4EC AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00480 809CD4F0 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 00484 809CD4F4 E7A20018 */  swc1    $f2, 0x0018($sp)           
/* 00488 809CD4F8 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 0048C 809CD4FC E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00490 809CD500 0C2735E7 */  jal     func_809CD79C              
/* 00494 809CD504 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00498 809CD508 860800B4 */  lh      $t0, 0x00B4($s0)           ## 000000B4
/* 0049C 809CD50C 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 004A0 809CD510 3C04809D */  lui     $a0, %hi(D_809CE450)       ## $a0 = 809D0000
/* 004A4 809CD514 2509DCE0 */  addiu   $t1, $t0, 0xDCE0           ## $t1 = FFFFDCE0
/* 004A8 809CD518 A60900B4 */  sh      $t1, 0x00B4($s0)           ## 000000B4
/* 004AC 809CD51C A20A0258 */  sb      $t2, 0x0258($s0)           ## 00000258
/* 004B0 809CD520 2484E450 */  addiu   $a0, $a0, %lo(D_809CE450)  ## $a0 = 809CE450
/* 004B4 809CD524 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 004B8 809CD528 0C00084C */  jal     osSyncPrintf
              
/* 004BC 809CD52C 8606001C */  lh      $a2, 0x001C($s0)           ## 0000001C
/* 004C0 809CD530 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 004C4 809CD534 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 004C8 809CD538 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 004CC 809CD53C 03E00008 */  jr      $ra                        
/* 004D0 809CD540 00000000 */  nop


