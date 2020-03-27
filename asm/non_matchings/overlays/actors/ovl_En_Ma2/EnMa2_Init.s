glabel EnMa2_Init
/* 0049C 80AA1E3C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 004A0 80AA1E40 AFB00028 */  sw      $s0, 0x0028($sp)
/* 004A4 80AA1E44 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004A8 80AA1E48 AFBF002C */  sw      $ra, 0x002C($sp)
/* 004AC 80AA1E4C AFA50044 */  sw      $a1, 0x0044($sp)
/* 004B0 80AA1E50 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 004B4 80AA1E54 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 004B8 80AA1E58 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 004BC 80AA1E5C 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 004C0 80AA1E60 0C00AC78 */  jal     ActorShape_Init

/* 004C4 80AA1E64 3C074190 */  lui     $a3, 0x4190                ## $a3 = 41900000
/* 004C8 80AA1E68 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 004CC 80AA1E6C 24C68D90 */  addiu   $a2, $a2, 0x8D90           ## $a2 = 06008D90
/* 004D0 80AA1E70 8FA40044 */  lw      $a0, 0x0044($sp)
/* 004D4 80AA1E74 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 004D8 80AA1E78 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 004DC 80AA1E7C AFA00010 */  sw      $zero, 0x0010($sp)
/* 004E0 80AA1E80 AFA00014 */  sw      $zero, 0x0014($sp)
/* 004E4 80AA1E84 0C0291BE */  jal     SkelAnime_InitSV
/* 004E8 80AA1E88 AFA00018 */  sw      $zero, 0x0018($sp)
/* 004EC 80AA1E8C 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 004F0 80AA1E90 AFA50030 */  sw      $a1, 0x0030($sp)
/* 004F4 80AA1E94 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 004F8 80AA1E98 8FA40044 */  lw      $a0, 0x0044($sp)
/* 004FC 80AA1E9C 3C0780AA */  lui     $a3, %hi(D_80AA2820)       ## $a3 = 80AA0000
/* 00500 80AA1EA0 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00504 80AA1EA4 24E72820 */  addiu   $a3, $a3, %lo(D_80AA2820)  ## $a3 = 80AA2820
/* 00508 80AA1EA8 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0050C 80AA1EAC 0C01712B */  jal     ActorCollider_InitCylinder

/* 00510 80AA1EB0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00514 80AA1EB4 0C016C80 */  jal     CollisionBtlTbl_Get

/* 00518 80AA1EB8 24040016 */  addiu   $a0, $zero, 0x0016         ## $a0 = 00000016
/* 0051C 80AA1EBC 3C0680AA */  lui     $a2, %hi(D_80AA284C)       ## $a2 = 80AA0000
/* 00520 80AA1EC0 24C6284C */  addiu   $a2, $a2, %lo(D_80AA284C)  ## $a2 = 80AA284C
/* 00524 80AA1EC4 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00528 80AA1EC8 0C0187BF */  jal     func_80061EFC
/* 0052C 80AA1ECC 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00530 80AA1ED0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00534 80AA1ED4 0C2A86D6 */  jal     func_80AA1B58
/* 00538 80AA1ED8 8FA50044 */  lw      $a1, 0x0044($sp)
/* 0053C 80AA1EDC 10400027 */  beq     $v0, $zero, .L80AA1F7C
/* 00540 80AA1EE0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00544 80AA1EE4 10410009 */  beq     $v0, $at, .L80AA1F0C
/* 00548 80AA1EE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0054C 80AA1EEC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00550 80AA1EF0 1041000C */  beq     $v0, $at, .L80AA1F24
/* 00554 80AA1EF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00558 80AA1EF8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0055C 80AA1EFC 1041000F */  beq     $v0, $at, .L80AA1F3C
/* 00560 80AA1F00 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 00564 80AA1F04 10000022 */  beq     $zero, $zero, .L80AA1F90
/* 00568 80AA1F08 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80AA1F0C:
/* 0056C 80AA1F0C 0C2A8751 */  jal     func_80AA1D44
/* 00570 80AA1F10 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 00574 80AA1F14 3C0E80AA */  lui     $t6, %hi(func_80AA2018)    ## $t6 = 80AA0000
/* 00578 80AA1F18 25CE2018 */  addiu   $t6, $t6, %lo(func_80AA2018) ## $t6 = 80AA2018
/* 0057C 80AA1F1C 1000001B */  beq     $zero, $zero, .L80AA1F8C
/* 00580 80AA1F20 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
.L80AA1F24:
/* 00584 80AA1F24 0C2A8751 */  jal     func_80AA1D44
/* 00588 80AA1F28 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 0058C 80AA1F2C 3C0F80AA */  lui     $t7, %hi(func_80AA204C)    ## $t7 = 80AA0000
/* 00590 80AA1F30 25EF204C */  addiu   $t7, $t7, %lo(func_80AA204C) ## $t7 = 80AA204C
/* 00594 80AA1F34 10000015 */  beq     $zero, $zero, .L80AA1F8C
/* 00598 80AA1F38 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
.L80AA1F3C:
/* 0059C 80AA1F3C 9718F568 */  lhu     $t8, -0x0A98($t8)          ## FFFFF568
/* 005A0 80AA1F40 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 005A4 80AA1F44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005A8 80AA1F48 33192000 */  andi    $t9, $t8, 0x2000           ## $t9 = 00000000
/* 005AC 80AA1F4C 13200005 */  beq     $t9, $zero, .L80AA1F64
/* 005B0 80AA1F50 00000000 */  nop
/* 005B4 80AA1F54 0C2A8751 */  jal     func_80AA1D44
/* 005B8 80AA1F58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005BC 80AA1F5C 10000003 */  beq     $zero, $zero, .L80AA1F6C
/* 005C0 80AA1F60 00000000 */  nop
.L80AA1F64:
/* 005C4 80AA1F64 0C2A8751 */  jal     func_80AA1D44
/* 005C8 80AA1F68 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
.L80AA1F6C:
/* 005CC 80AA1F6C 3C0880AA */  lui     $t0, %hi(func_80AA2018)    ## $t0 = 80AA0000
/* 005D0 80AA1F70 25082018 */  addiu   $t0, $t0, %lo(func_80AA2018) ## $t0 = 80AA2018
/* 005D4 80AA1F74 10000005 */  beq     $zero, $zero, .L80AA1F8C
/* 005D8 80AA1F78 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
.L80AA1F7C:
/* 005DC 80AA1F7C 0C00B55C */  jal     Actor_Kill

/* 005E0 80AA1F80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005E4 80AA1F84 10000012 */  beq     $zero, $zero, .L80AA1FD0
/* 005E8 80AA1F88 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AA1F8C:
/* 005EC 80AA1F8C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80AA1F90:
/* 005F0 80AA1F90 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 005F4 80AA1F94 AFA90014 */  sw      $t1, 0x0014($sp)
/* 005F8 80AA1F98 44060000 */  mfc1    $a2, $f0
/* 005FC 80AA1F9C 44070000 */  mfc1    $a3, $f0
/* 00600 80AA1FA0 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00604 80AA1FA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00608 80AA1FA8 0C00B92D */  jal     func_8002E4B4
/* 0060C 80AA1FAC E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00610 80AA1FB0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00614 80AA1FB4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00618 80AA1FB8 0C00B58B */  jal     Actor_SetScale

/* 0061C 80AA1FBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00620 80AA1FC0 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 00624 80AA1FC4 A20A001F */  sb      $t2, 0x001F($s0)           ## 0000001F
/* 00628 80AA1FC8 A60001E0 */  sh      $zero, 0x01E0($s0)         ## 000001E0
/* 0062C 80AA1FCC 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AA1FD0:
/* 00630 80AA1FD0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00634 80AA1FD4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00638 80AA1FD8 03E00008 */  jr      $ra
/* 0063C 80AA1FDC 00000000 */  nop


