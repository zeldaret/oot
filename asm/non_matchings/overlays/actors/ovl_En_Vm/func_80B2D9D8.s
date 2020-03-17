glabel func_80B2D9D8
/* 00578 80B2D9D8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0057C 80B2D9DC 44810000 */  mtc1    $at, $f0                   ## $f0 = 3.00
/* 00580 80B2D9E0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00584 80B2D9E4 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 00588 80B2D9E8 44812000 */  mtc1    $at, $f4                   ## $f4 = 7.00
/* 0058C 80B2D9EC 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00590 80B2D9F0 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00594 80B2D9F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00598 80B2D9F8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0059C 80B2D9FC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 005A0 80B2DA00 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 005A4 80B2DA04 44060000 */  mfc1    $a2, $f0                   
/* 005A8 80B2DA08 44070000 */  mfc1    $a3, $f0                   
/* 005AC 80B2DA0C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 005B0 80B2DA10 24A50068 */  addiu   $a1, $a1, 0x0068           ## $a1 = 06000068
/* 005B4 80B2DA14 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 005B8 80B2DA18 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 005BC 80B2DA1C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 005C0 80B2DA20 E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 005C4 80B2DA24 240F0131 */  addiu   $t7, $zero, 0x0131         ## $t7 = 00000131
/* 005C8 80B2DA28 AE0F0220 */  sw      $t7, 0x0220($s0)           ## 00000220
/* 005CC 80B2DA2C 3C0180B3 */  lui     $at, %hi(D_80B2EC0C)       ## $at = 80B30000
/* 005D0 80B2DA30 C428EC0C */  lwc1    $f8, %lo(D_80B2EC0C)($at)  
/* 005D4 80B2DA34 921902C4 */  lbu     $t9, 0x02C4($s0)           ## 000002C4
/* 005D8 80B2DA38 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 005DC 80B2DA3C 44815000 */  mtc1    $at, $f10                  ## $f10 = 40.00
/* 005E0 80B2DA40 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 005E4 80B2DA44 3C0580B3 */  lui     $a1, %hi(func_80B2DA7C)    ## $a1 = 80B30000
/* 005E8 80B2DA48 3328FFFD */  andi    $t0, $t9, 0xFFFD           ## $t0 = 00000000
/* 005EC 80B2DA4C AE18021C */  sw      $t8, 0x021C($s0)           ## 0000021C
/* 005F0 80B2DA50 A20802C4 */  sb      $t0, 0x02C4($s0)           ## 000002C4
/* 005F4 80B2DA54 24A5DA7C */  addiu   $a1, $a1, %lo(func_80B2DA7C) ## $a1 = 80B2DA7C
/* 005F8 80B2DA58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005FC 80B2DA5C E6080248 */  swc1    $f8, 0x0248($s0)           ## 00000248
/* 00600 80B2DA60 0C2CB518 */  jal     func_80B2D460              
/* 00604 80B2DA64 E60A0264 */  swc1    $f10, 0x0264($s0)          ## 00000264
/* 00608 80B2DA68 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0060C 80B2DA6C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00610 80B2DA70 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00614 80B2DA74 03E00008 */  jr      $ra                        
/* 00618 80B2DA78 00000000 */  nop


