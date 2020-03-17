glabel func_80AFD33C
/* 0099C 80AFD33C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 009A0 80AFD340 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 009A4 80AFD344 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009A8 80AFD348 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 009AC 80AFD34C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 009B0 80AFD350 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 009B4 80AFD354 24840460 */  addiu   $a0, $a0, 0x0460           ## $a0 = 06000460
/* 009B8 80AFD358 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 009BC 80AFD35C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 009C0 80AFD360 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 009C4 80AFD364 468021A0 */  cvt.s.w $f6, $f4                   
/* 009C8 80AFD368 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 009CC 80AFD36C 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 009D0 80AFD370 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 009D4 80AFD374 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 009D8 80AFD378 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 009DC 80AFD37C 24A50460 */  addiu   $a1, $a1, 0x0460           ## $a1 = 06000460
/* 009E0 80AFD380 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 009E4 80AFD384 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 009E8 80AFD388 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 009EC 80AFD38C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 009F0 80AFD390 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 009F4 80AFD394 920F02B4 */  lbu     $t7, 0x02B4($s0)           ## 000002B4
/* 009F8 80AFD398 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 009FC 80AFD39C 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 00A00 80AFD3A0 3C0580B0 */  lui     $a1, %hi(func_80AFD3D4)    ## $a1 = 80B00000
/* 00A04 80AFD3A4 31F8FFFB */  andi    $t8, $t7, 0xFFFB           ## $t8 = 00000000
/* 00A08 80AFD3A8 A21802B4 */  sb      $t8, 0x02B4($s0)           ## 000002B4
/* 00A0C 80AFD3AC A2190280 */  sb      $t9, 0x0280($s0)           ## 00000280
/* 00A10 80AFD3B0 24A5D3D4 */  addiu   $a1, $a1, %lo(func_80AFD3D4) ## $a1 = 80AFD3D4
/* 00A14 80AFD3B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A18 80AFD3B8 0C2BF268 */  jal     func_80AFC9A0              
/* 00A1C 80AFD3BC E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00A20 80AFD3C0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00A24 80AFD3C4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00A28 80AFD3C8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00A2C 80AFD3CC 03E00008 */  jr      $ra                        
/* 00A30 80AFD3D0 00000000 */  nop


