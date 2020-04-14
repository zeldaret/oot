glabel func_80AADC34
/* 004C4 80AADC34 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004C8 80AADC38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004CC 80AADC3C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 004D0 80AADC40 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 004D4 80AADC44 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 004D8 80AADC48 2405001C */  addiu   $a1, $zero, 0x001C         ## $a1 = 0000001C
/* 004DC 80AADC4C 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 004E0 80AADC50 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 004E4 80AADC54 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 004E8 80AADC58 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015E660
/* 004EC 80AADC5C 94AF0EF6 */  lhu     $t7, 0x0EF6($a1)           ## 8015F556
/* 004F0 80AADC60 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 004F4 80AADC64 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 004F8 80AADC68 31F80800 */  andi    $t8, $t7, 0x0800           ## $t8 = 00000000
/* 004FC 80AADC6C 13000005 */  beq     $t8, $zero, .L80AADC84     
/* 00500 80AADC70 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00504 80AADC74 54400014 */  bnel    $v0, $zero, .L80AADCC8     
/* 00508 80AADC78 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 0050C 80AADC7C 10000011 */  beq     $zero, $zero, .L80AADCC4   
/* 00510 80AADC80 2404204D */  addiu   $a0, $zero, 0x204D         ## $a0 = 0000204D
.L80AADC84:
/* 00514 80AADC84 8FB9001C */  lw      $t9, 0x001C($sp)           
/* 00518 80AADC88 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0051C 80AADC8C 9328015F */  lbu     $t0, 0x015F($t9)           ## 0000015F
/* 00520 80AADC90 15010009 */  bne     $t0, $at, .L80AADCB8       
/* 00524 80AADC94 00000000 */  nop
/* 00528 80AADC98 94A90F26 */  lhu     $t1, 0x0F26($a1)           ## 8015F586
/* 0052C 80AADC9C 312A1000 */  andi    $t2, $t1, 0x1000           ## $t2 = 00000000
/* 00530 80AADCA0 11400003 */  beq     $t2, $zero, .L80AADCB0     
/* 00534 80AADCA4 00000000 */  nop
/* 00538 80AADCA8 10000006 */  beq     $zero, $zero, .L80AADCC4   
/* 0053C 80AADCAC 2404202B */  addiu   $a0, $zero, 0x202B         ## $a0 = 0000202B
.L80AADCB0:
/* 00540 80AADCB0 10000004 */  beq     $zero, $zero, .L80AADCC4   
/* 00544 80AADCB4 2404202A */  addiu   $a0, $zero, 0x202A         ## $a0 = 0000202A
.L80AADCB8:
/* 00548 80AADCB8 54600003 */  bnel    $v1, $zero, .L80AADCC8     
/* 0054C 80AADCBC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 0000202A
/* 00550 80AADCC0 24042029 */  addiu   $a0, $zero, 0x2029         ## $a0 = 00002029
.L80AADCC4:
/* 00554 80AADCC4 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00002029
.L80AADCC8:
/* 00558 80AADCC8 03E00008 */  jr      $ra                        
/* 0055C 80AADCCC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
