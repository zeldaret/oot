.late_rodata
glabel D_809EABC0
    .float 0.0833
glabel D_809EABC4
    .float 0.1167
glabel D_809EABC8
    .float 1.7
glabel D_809EABCC
    .float 0.7
glabel D_809EABD0
    .float 0.1667

.text
glabel func_809EA98C
/* 0142C 809EA98C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01430 809EA990 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01434 809EA994 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01438 809EA998 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0143C 809EA99C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01440 809EA9A0 14A10043 */  bne     $a1, $at, .L809EAAB0       
/* 01444 809EA9A4 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 01448 809EA9A8 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 0144C 809EA9AC 3C0E809F */  lui     $t6, %hi(func_809E9F6C)    ## $t6 = 809F0000
/* 01450 809EA9B0 25CE9F6C */  addiu   $t6, $t6, %lo(func_809E9F6C) ## $t6 = 809E9F6C
/* 01454 809EA9B4 8C4F0190 */  lw      $t7, 0x0190($v0)           ## 00000190
/* 01458 809EA9B8 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 0145C 809EA9BC 55CF003D */  bnel    $t6, $t7, .L809EAAB4       
/* 01460 809EA9C0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01464 809EA9C4 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 01468 809EA9C8 C4400164 */  lwc1    $f0, 0x0164($v0)           ## 00000164
/* 0146C 809EA9CC 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 01470 809EA9D0 4612003E */  c.le.s  $f0, $f18                  
/* 01474 809EA9D4 00000000 */  nop
/* 01478 809EA9D8 4502000F */  bc1fl   .L809EAA18                 
/* 0147C 809EA9DC 44811000 */  mtc1    $at, $f2                   ## $f2 = 7.00
/* 01480 809EA9E0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01484 809EA9E4 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 01488 809EA9E8 3C01809F */  lui     $at, %hi(D_809EABC0)       ## $at = 809F0000
/* 0148C 809EA9EC C424ABC0 */  lwc1    $f4, %lo(D_809EABC0)($at)  
/* 01490 809EA9F0 3C01809F */  lui     $at, %hi(D_809EABC4)       ## $at = 809F0000
/* 01494 809EA9F4 C428ABC4 */  lwc1    $f8, %lo(D_809EABC4)($at)  
/* 01498 809EA9F8 46040182 */  mul.s   $f6, $f0, $f4              
/* 0149C 809EA9FC 00000000 */  nop
/* 014A0 809EAA00 46080282 */  mul.s   $f10, $f0, $f8             
/* 014A4 809EAA04 46069301 */  sub.s   $f12, $f18, $f6            
/* 014A8 809EAA08 46125380 */  add.s   $f14, $f10, $f18           
/* 014AC 809EAA0C 10000025 */  beq     $zero, $zero, .L809EAAA4   
/* 014B0 809EAA10 46007406 */  mov.s   $f16, $f14                 
/* 014B4 809EAA14 44811000 */  mtc1    $at, $f2                   ## $f2 = -0.00
.L809EAA18:
/* 014B8 809EAA18 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 014BC 809EAA1C 4602003E */  c.le.s  $f0, $f2                   
/* 014C0 809EAA20 00000000 */  nop
/* 014C4 809EAA24 4502000E */  bc1fl   .L809EAA60                 
/* 014C8 809EAA28 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 014CC 809EAA2C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 014D0 809EAA30 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 014D4 809EAA34 3C01809F */  lui     $at, %hi(D_809EABC8)       ## $at = 809F0000
/* 014D8 809EAA38 C426ABC8 */  lwc1    $f6, %lo(D_809EABC8)($at)  
/* 014DC 809EAA3C 46120001 */  sub.s   $f0, $f0, $f18             
/* 014E0 809EAA40 3C01809F */  lui     $at, %hi(D_809EABCC)       ## $at = 809F0000
/* 014E4 809EAA44 C428ABCC */  lwc1    $f8, %lo(D_809EABCC)($at)  
/* 014E8 809EAA48 46002300 */  add.s   $f12, $f4, $f0             
/* 014EC 809EAA4C 46080282 */  mul.s   $f10, $f0, $f8             
/* 014F0 809EAA50 460A3381 */  sub.s   $f14, $f6, $f10            
/* 014F4 809EAA54 10000013 */  beq     $zero, $zero, .L809EAAA4   
/* 014F8 809EAA58 46007406 */  mov.s   $f16, $f14                 
/* 014FC 809EAA5C 44812000 */  mtc1    $at, $f4                   ## $f4 = -0.00
.L809EAA60:
/* 01500 809EAA60 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01504 809EAA64 4604003E */  c.le.s  $f0, $f4                   
/* 01508 809EAA68 00000000 */  nop
/* 0150C 809EAA6C 4500000B */  bc1f    .L809EAA9C                 
/* 01510 809EAA70 00000000 */  nop
/* 01514 809EAA74 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 01518 809EAA78 46020201 */  sub.s   $f8, $f0, $f2              
/* 0151C 809EAA7C 3C01809F */  lui     $at, %hi(D_809EABD0)       ## $at = 809F0000
/* 01520 809EAA80 C426ABD0 */  lwc1    $f6, %lo(D_809EABD0)($at)  
/* 01524 809EAA84 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 01528 809EAA88 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 0152C 809EAA8C 46064282 */  mul.s   $f10, $f8, $f6             
/* 01530 809EAA90 46007406 */  mov.s   $f16, $f14                 
/* 01534 809EAA94 10000003 */  beq     $zero, $zero, .L809EAAA4   
/* 01538 809EAA98 460A2301 */  sub.s   $f12, $f4, $f10            
.L809EAA9C:
/* 0153C 809EAA9C 10000005 */  beq     $zero, $zero, .L809EAAB4   
/* 01540 809EAAA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809EAAA4:
/* 01544 809EAAA4 44068000 */  mfc1    $a2, $f16                  
/* 01548 809EAAA8 0C0342A3 */  jal     Matrix_Scale              
/* 0154C 809EAAAC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L809EAAB0:
/* 01550 809EAAB0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809EAAB4:
/* 01554 809EAAB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01558 809EAAB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0155C 809EAABC 03E00008 */  jr      $ra                        
/* 01560 809EAAC0 00000000 */  nop
