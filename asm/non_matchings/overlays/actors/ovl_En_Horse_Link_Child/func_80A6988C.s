glabel func_80A6988C
/* 004BC 80A6988C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004C0 80A69890 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 004C4 80A69894 8C8E0150 */  lw      $t6, 0x0150($a0)           ## 00000150
/* 004C8 80A69898 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 004CC 80A6989C AC80014C */  sw      $zero, 0x014C($a0)         ## 0000014C
/* 004D0 80A698A0 25C20001 */  addiu   $v0, $t6, 0x0001           ## $v0 = 00000001
/* 004D4 80A698A4 28410005 */  slti    $at, $v0, 0x0005
/* 004D8 80A698A8 14200003 */  bne     $at, $zero, .L80A698B8
/* 004DC 80A698AC AC820150 */  sw      $v0, 0x0150($a0)           ## 00000150
/* 004E0 80A698B0 AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 004E4 80A698B4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A698B8:
/* 004E8 80A698B8 0002C080 */  sll     $t8, $v0,  2
/* 004EC 80A698BC 3C0580A7 */  lui     $a1, %hi(D_80A6AEE0)       ## $a1 = 80A70000
/* 004F0 80A698C0 00B82821 */  addu    $a1, $a1, $t8
/* 004F4 80A698C4 8CA5AEE0 */  lw      $a1, %lo(D_80A6AEE0)($a1)
/* 004F8 80A698C8 24C401A0 */  addiu   $a0, $a2, 0x01A0           ## $a0 = 000001A0
/* 004FC 80A698CC 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00500 80A698D0 AFA60018 */  sw      $a2, 0x0018($sp)
/* 00504 80A698D4 0C29A569 */  jal     func_80A695A4
/* 00508 80A698D8 8FA40018 */  lw      $a0, 0x0018($sp)
/* 0050C 80A698DC 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00510 80A698E0 E4C001BC */  swc1    $f0, 0x01BC($a2)           ## 000001BC
/* 00514 80A698E4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00518 80A698E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0051C 80A698EC 03E00008 */  jr      $ra
/* 00520 80A698F0 00000000 */  nop


