glabel EnMa3_Init
/* 005D4 80AA3074 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 005D8 80AA3078 AFB00028 */  sw      $s0, 0x0028($sp)
/* 005DC 80AA307C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005E0 80AA3080 AFBF002C */  sw      $ra, 0x002C($sp)
/* 005E4 80AA3084 AFA50044 */  sw      $a1, 0x0044($sp)
/* 005E8 80AA3088 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 005EC 80AA308C 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 005F0 80AA3090 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 005F4 80AA3094 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 005F8 80AA3098 0C00AC78 */  jal     ActorShape_Init

/* 005FC 80AA309C 3C074190 */  lui     $a3, 0x4190                ## $a3 = 41900000
/* 00600 80AA30A0 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00604 80AA30A4 24C68D90 */  addiu   $a2, $a2, 0x8D90           ## $a2 = 06008D90
/* 00608 80AA30A8 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0060C 80AA30AC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00610 80AA30B0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00614 80AA30B4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00618 80AA30B8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0061C 80AA30BC 0C0291BE */  jal     SkelAnime_InitSV
/* 00620 80AA30C0 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00624 80AA30C4 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00628 80AA30C8 AFA50030 */  sw      $a1, 0x0030($sp)
/* 0062C 80AA30CC 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00630 80AA30D0 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00634 80AA30D4 3C0780AA */  lui     $a3, %hi(D_80AA3810)       ## $a3 = 80AA0000
/* 00638 80AA30D8 8FA50030 */  lw      $a1, 0x0030($sp)
/* 0063C 80AA30DC 24E73810 */  addiu   $a3, $a3, %lo(D_80AA3810)  ## $a3 = 80AA3810
/* 00640 80AA30E0 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00644 80AA30E4 0C01712B */  jal     ActorCollider_InitCylinder

/* 00648 80AA30E8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0064C 80AA30EC 0C016C80 */  jal     CollisionBtlTbl_Get
/* 00650 80AA30F0 24040016 */  addiu   $a0, $zero, 0x0016         ## $a0 = 00000016
/* 00654 80AA30F4 3C0680AA */  lui     $a2, %hi(D_80AA383C)       ## $a2 = 80AA0000
/* 00658 80AA30F8 24C6383C */  addiu   $a2, $a2, %lo(D_80AA383C)  ## $a2 = 80AA383C
/* 0065C 80AA30FC 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00660 80AA3100 0C0187BF */  jal     func_80061EFC
/* 00664 80AA3104 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00668 80AA3108 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0066C 80AA310C 0C2A8BB2 */  jal     func_80AA2EC8
/* 00670 80AA3110 8FA50044 */  lw      $a1, 0x0044($sp)
/* 00674 80AA3114 10400009 */  beq     $v0, $zero, .L80AA313C
/* 00678 80AA3118 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0067C 80AA311C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00680 80AA3120 1041000C */  beq     $v0, $at, .L80AA3154
/* 00684 80AA3124 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00688 80AA3128 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0068C 80AA312C 1041000F */  beq     $v0, $at, .L80AA316C
/* 00690 80AA3130 00000000 */  nop
/* 00694 80AA3134 10000012 */  beq     $zero, $zero, .L80AA3180
/* 00698 80AA3138 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80AA313C:
/* 0069C 80AA313C 0C2A8C01 */  jal     func_80AA3004
/* 006A0 80AA3140 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 006A4 80AA3144 3C0E80AA */  lui     $t6, %hi(func_80AA3200)    ## $t6 = 80AA0000
/* 006A8 80AA3148 25CE3200 */  addiu   $t6, $t6, %lo(func_80AA3200) ## $t6 = 80AA3200
/* 006AC 80AA314C 1000000B */  beq     $zero, $zero, .L80AA317C
/* 006B0 80AA3150 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
.L80AA3154:
/* 006B4 80AA3154 0C2A8C01 */  jal     func_80AA3004
/* 006B8 80AA3158 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 006BC 80AA315C 3C0F80AA */  lui     $t7, %hi(func_80AA3200)    ## $t7 = 80AA0000
/* 006C0 80AA3160 25EF3200 */  addiu   $t7, $t7, %lo(func_80AA3200) ## $t7 = 80AA3200
/* 006C4 80AA3164 10000005 */  beq     $zero, $zero, .L80AA317C
/* 006C8 80AA3168 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
.L80AA316C:
/* 006CC 80AA316C 0C00B55C */  jal     Actor_Kill

/* 006D0 80AA3170 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006D4 80AA3174 10000010 */  beq     $zero, $zero, .L80AA31B8
/* 006D8 80AA3178 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AA317C:
/* 006DC 80AA317C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80AA3180:
/* 006E0 80AA3180 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 006E4 80AA3184 AFB80014 */  sw      $t8, 0x0014($sp)
/* 006E8 80AA3188 44060000 */  mfc1    $a2, $f0
/* 006EC 80AA318C 44070000 */  mfc1    $a3, $f0
/* 006F0 80AA3190 8FA40044 */  lw      $a0, 0x0044($sp)
/* 006F4 80AA3194 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 006F8 80AA3198 0C00B92D */  jal     func_8002E4B4
/* 006FC 80AA319C E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00700 80AA31A0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00704 80AA31A4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00708 80AA31A8 0C00B58B */  jal     Actor_SetScale

/* 0070C 80AA31AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00710 80AA31B0 A60001E0 */  sh      $zero, 0x01E0($s0)         ## 000001E0
/* 00714 80AA31B4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AA31B8:
/* 00718 80AA31B8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0071C 80AA31BC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00720 80AA31C0 03E00008 */  jr      $ra
/* 00724 80AA31C4 00000000 */  nop
