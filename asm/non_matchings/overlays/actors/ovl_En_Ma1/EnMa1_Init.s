glabel EnMa1_Init
/* 00558 80AA0BE8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0055C 80AA0BEC AFB00028 */  sw      $s0, 0x0028($sp)
/* 00560 80AA0BF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00564 80AA0BF4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00568 80AA0BF8 AFA50044 */  sw      $a1, 0x0044($sp)
/* 0056C 80AA0BFC 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00570 80AA0C00 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00574 80AA0C04 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00578 80AA0C08 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 0057C 80AA0C0C 0C00AC78 */  jal     ActorShape_Init

/* 00580 80AA0C10 3C074190 */  lui     $a3, 0x4190                ## $a3 = 41900000
/* 00584 80AA0C14 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00588 80AA0C18 24C68460 */  addiu   $a2, $a2, 0x8460           ## $a2 = 06008460
/* 0058C 80AA0C1C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00590 80AA0C20 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00594 80AA0C24 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00598 80AA0C28 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0059C 80AA0C2C AFA00014 */  sw      $zero, 0x0014($sp)
/* 005A0 80AA0C30 0C0291BE */  jal     SkelAnime_InitSV
/* 005A4 80AA0C34 AFA00018 */  sw      $zero, 0x0018($sp)
/* 005A8 80AA0C38 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 005AC 80AA0C3C AFA50030 */  sw      $a1, 0x0030($sp)
/* 005B0 80AA0C40 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 005B4 80AA0C44 8FA40044 */  lw      $a0, 0x0044($sp)
/* 005B8 80AA0C48 3C0780AA */  lui     $a3, %hi(D_80AA1640)       ## $a3 = 80AA0000
/* 005BC 80AA0C4C 8FA50030 */  lw      $a1, 0x0030($sp)
/* 005C0 80AA0C50 24E71640 */  addiu   $a3, $a3, %lo(D_80AA1640)  ## $a3 = 80AA1640
/* 005C4 80AA0C54 8FA40044 */  lw      $a0, 0x0044($sp)
/* 005C8 80AA0C58 0C01712B */  jal     ActorCollider_InitCylinder

/* 005CC 80AA0C5C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 005D0 80AA0C60 0C016C80 */  jal     CollisionBtlTbl_Get

/* 005D4 80AA0C64 24040016 */  addiu   $a0, $zero, 0x0016         ## $a0 = 00000016
/* 005D8 80AA0C68 3C0680AA */  lui     $a2, %hi(D_80AA166C)       ## $a2 = 80AA0000
/* 005DC 80AA0C6C 24C6166C */  addiu   $a2, $a2, %lo(D_80AA166C)  ## $a2 = 80AA166C
/* 005E0 80AA0C70 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 005E4 80AA0C74 0C0187BF */  jal     func_80061EFC
/* 005E8 80AA0C78 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 005EC 80AA0C7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005F0 80AA0C80 0C2A8231 */  jal     func_80AA08C4
/* 005F4 80AA0C84 8FA50044 */  lw      $a1, 0x0044($sp)
/* 005F8 80AA0C88 14400005 */  bne     $v0, $zero, .L80AA0CA0
/* 005FC 80AA0C8C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00600 80AA0C90 0C00B55C */  jal     Actor_Kill

/* 00604 80AA0C94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00608 80AA0C98 10000029 */  beq     $zero, $zero, .L80AA0D40
/* 0060C 80AA0C9C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AA0CA0:
/* 00610 80AA0CA0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00614 80AA0CA4 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00618 80AA0CA8 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 0061C 80AA0CAC 44060000 */  mfc1    $a2, $f0
/* 00620 80AA0CB0 44070000 */  mfc1    $a3, $f0
/* 00624 80AA0CB4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00628 80AA0CB8 0C00B92D */  jal     func_8002E4B4
/* 0062C 80AA0CBC E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00630 80AA0CC0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00634 80AA0CC4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00638 80AA0CC8 0C00B58B */  jal     Actor_SetScale

/* 0063C 80AA0CCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00640 80AA0CD0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00644 80AA0CD4 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 00648 80AA0CD8 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0064C 80AA0CDC A20F001F */  sb      $t7, 0x001F($s0)           ## 0000001F
/* 00650 80AA0CE0 A60001E8 */  sh      $zero, 0x01E8($s0)         ## 000001E8
/* 00654 80AA0CE4 94580ED6 */  lhu     $t8, 0x0ED6($v0)           ## 8015F536
/* 00658 80AA0CE8 3C0B80AA */  lui     $t3, %hi(func_80AA0D88)    ## $t3 = 80AA0000
/* 0065C 80AA0CEC 3C088012 */  lui     $t0, 0x8012                ## $t0 = 80120000
/* 00660 80AA0CF0 33190010 */  andi    $t9, $t8, 0x0010           ## $t9 = 00000000
/* 00664 80AA0CF4 13200008 */  beq     $t9, $zero, .L80AA0D18
/* 00668 80AA0CF8 256B0D88 */  addiu   $t3, $t3, %lo(func_80AA0D88) ## $t3 = 80AA0D88
/* 0066C 80AA0CFC 8D087154 */  lw      $t0, 0x7154($t0)           ## 80127154
/* 00670 80AA0D00 8C4900A4 */  lw      $t1, 0x00A4($v0)           ## 8015E704
/* 00674 80AA0D04 3C0C80AA */  lui     $t4, %hi(func_80AA0F44)    ## $t4 = 80AA0000
/* 00678 80AA0D08 258C0F44 */  addiu   $t4, $t4, %lo(func_80AA0F44) ## $t4 = 80AA0F44
/* 0067C 80AA0D0C 01095024 */  and     $t2, $t0, $t1
/* 00680 80AA0D10 11400007 */  beq     $t2, $zero, .L80AA0D30
/* 00684 80AA0D14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AA0D18:
/* 00688 80AA0D18 AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
/* 0068C 80AA0D1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00690 80AA0D20 0C2A82A1 */  jal     func_80AA0A84
/* 00694 80AA0D24 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 00698 80AA0D28 10000005 */  beq     $zero, $zero, .L80AA0D40
/* 0069C 80AA0D2C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AA0D30:
/* 006A0 80AA0D30 AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
/* 006A4 80AA0D34 0C2A82A1 */  jal     func_80AA0A84
/* 006A8 80AA0D38 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 006AC 80AA0D3C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AA0D40:
/* 006B0 80AA0D40 8FB00028 */  lw      $s0, 0x0028($sp)
/* 006B4 80AA0D44 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 006B8 80AA0D48 03E00008 */  jr      $ra
/* 006BC 80AA0D4C 00000000 */  nop


