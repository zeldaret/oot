glabel EnFw_Init
/* 005A0 80A1EB40 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 005A4 80A1EB44 AFB00028 */  sw      $s0, 0x0028($sp)
/* 005A8 80A1EB48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005AC 80A1EB4C AFA50044 */  sw      $a1, 0x0044($sp)
/* 005B0 80A1EB50 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005B4 80A1EB54 AFBF002C */  sw      $ra, 0x002C($sp)
/* 005B8 80A1EB58 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 005BC 80A1EB5C 260E021C */  addiu   $t6, $s0, 0x021C           ## $t6 = 0000021C
/* 005C0 80A1EB60 260F025E */  addiu   $t7, $s0, 0x025E           ## $t7 = 0000025E
/* 005C4 80A1EB64 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 005C8 80A1EB68 2418000B */  addiu   $t8, $zero, 0x000B         ## $t8 = 0000000B
/* 005CC 80A1EB6C AFB80018 */  sw      $t8, 0x0018($sp)
/* 005D0 80A1EB70 24C67C30 */  addiu   $a2, $a2, 0x7C30           ## $a2 = 06007C30
/* 005D4 80A1EB74 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 005D8 80A1EB78 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 005DC 80A1EB7C AFA50034 */  sw      $a1, 0x0034($sp)
/* 005E0 80A1EB80 0C0291BE */  jal     SkelAnime_InitSV
/* 005E4 80A1EB84 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005E8 80A1EB88 3C0580A2 */  lui     $a1, %hi(D_80A1FBA0)       ## $a1 = 80A20000
/* 005EC 80A1EB8C 24A5FBA0 */  addiu   $a1, $a1, %lo(D_80A1FBA0)  ## $a1 = 80A1FBA0
/* 005F0 80A1EB90 8FA40034 */  lw      $a0, 0x0034($sp)
/* 005F4 80A1EB94 0C00D3B0 */  jal     func_80034EC0
/* 005F8 80A1EB98 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 005FC 80A1EB9C 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00600 80A1EBA0 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00604 80A1EBA4 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00608 80A1EBA8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0060C 80A1EBAC 0C00AC78 */  jal     ActorShape_Init

/* 00610 80A1EBB0 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 00614 80A1EBB4 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00618 80A1EBB8 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0061C 80A1EBBC 0C016EFE */  jal     Collider_InitJntSph
/* 00620 80A1EBC0 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00624 80A1EBC4 3C0780A2 */  lui     $a3, %hi(D_80A1FB84)       ## $a3 = 80A20000
/* 00628 80A1EBC8 261901B4 */  addiu   $t9, $s0, 0x01B4           ## $t9 = 000001B4
/* 0062C 80A1EBCC 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00630 80A1EBD0 AFB90010 */  sw      $t9, 0x0010($sp)
/* 00634 80A1EBD4 24E7FB84 */  addiu   $a3, $a3, %lo(D_80A1FB84)  ## $a3 = 80A1FB84
/* 00638 80A1EBD8 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0063C 80A1EBDC 0C017014 */  jal     Collider_SetJntSph
/* 00640 80A1EBE0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00644 80A1EBE4 0C016C80 */  jal     DamageTable_Get

/* 00648 80A1EBE8 24040010 */  addiu   $a0, $zero, 0x0010         ## $a0 = 00000010
/* 0064C 80A1EBEC 3C0680A2 */  lui     $a2, %hi(D_80A1FB94)       ## $a2 = 80A20000
/* 00650 80A1EBF0 24C6FB94 */  addiu   $a2, $a2, %lo(D_80A1FB94)  ## $a2 = 80A1FB94
/* 00654 80A1EBF4 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00658 80A1EBF8 0C0187BF */  jal     func_80061EFC
/* 0065C 80A1EBFC 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00660 80A1EC00 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00664 80A1EC04 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00668 80A1EC08 0C00B58B */  jal     Actor_SetScale

/* 0066C 80A1EC0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00670 80A1EC10 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00674 80A1EC14 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00678 80A1EC18 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 0067C 80A1EC1C 3C0A80A2 */  lui     $t2, %hi(func_80A1EC70)    ## $t2 = 80A20000
/* 00680 80A1EC20 254AEC70 */  addiu   $t2, $t2, %lo(func_80A1EC70) ## $t2 = 80A1EC70
/* 00684 80A1EC24 00084823 */  subu    $t1, $zero, $t0
/* 00688 80A1EC28 A6090202 */  sh      $t1, 0x0202($s0)           ## 00000202
/* 0068C 80A1EC2C AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 00690 80A1EC30 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00694 80A1EC34 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00698 80A1EC38 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0069C 80A1EC3C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 006A0 80A1EC40 03E00008 */  jr      $ra
/* 006A4 80A1EC44 00000000 */  nop
