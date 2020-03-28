glabel EnDivingGame_Init
/* 00000 809ED870 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 809ED874 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00008 809ED878 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.00
/* 0000C 809ED87C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00010 809ED880 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 809ED884 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00018 809ED888 AFA5003C */  sw      $a1, 0x003C($sp)
/* 0001C 809ED88C 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00020 809ED890 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00024 809ED894 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00028 809ED898 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 0002C 809ED89C 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00030 809ED8A0 0C00AC78 */  jal     ActorShape_Init

/* 00034 809ED8A4 E484FFB8 */  swc1    $f4, -0x0048($a0)          ## 0000006C
/* 00038 809ED8A8 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 0003C 809ED8AC 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00040 809ED8B0 260E0190 */  addiu   $t6, $s0, 0x0190           ## $t6 = 00000190
/* 00044 809ED8B4 260F0208 */  addiu   $t7, $s0, 0x0208           ## $t7 = 00000208
/* 00048 809ED8B8 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 0004C 809ED8BC AFB80018 */  sw      $t8, 0x0018($sp)
/* 00050 809ED8C0 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00054 809ED8C4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00058 809ED8C8 24E72FE8 */  addiu   $a3, $a3, 0x2FE8           ## $a3 = 06002FE8
/* 0005C 809ED8CC 24C6BFA8 */  addiu   $a2, $a2, 0xBFA8           ## $a2 = 0600BFA8
/* 00060 809ED8D0 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00064 809ED8D4 0C0291BE */  jal     SkelAnime_InitSV
/* 00068 809ED8D8 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0006C 809ED8DC 2605034C */  addiu   $a1, $s0, 0x034C           ## $a1 = 0000034C
/* 00070 809ED8E0 AFA50030 */  sw      $a1, 0x0030($sp)
/* 00074 809ED8E4 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00078 809ED8E8 8FA4003C */  lw      $a0, 0x003C($sp)
/* 0007C 809ED8EC 3C07809F */  lui     $a3, %hi(D_809EF0B4)       ## $a3 = 809F0000
/* 00080 809ED8F0 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00084 809ED8F4 24E7F0B4 */  addiu   $a3, $a3, %lo(D_809EF0B4)  ## $a3 = 809EF0B4
/* 00088 809ED8F8 8FA4003C */  lw      $a0, 0x003C($sp)
/* 0008C 809ED8FC 0C01712B */  jal     ActorCollider_InitCylinder

/* 00090 809ED900 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00094 809ED904 3C04809F */  lui     $a0, %hi(D_809EF0F0)       ## $a0 = 809F0000
/* 00098 809ED908 0C00084C */  jal     osSyncPrintf

/* 0009C 809ED90C 2484F0F0 */  addiu   $a0, $a0, %lo(D_809EF0F0)  ## $a0 = 809EF0F0
/* 000A0 809ED910 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 000A4 809ED914 A2190003 */  sb      $t9, 0x0003($s0)           ## 00000003
/* 000A8 809ED918 3C01809F */  lui     $at, %hi(D_809EF1AC)       ## $at = 809F0000
/* 000AC 809ED91C C426F1AC */  lwc1    $f6, %lo(D_809EF1AC)($at)
/* 000B0 809ED920 3C01809F */  lui     $at, %hi(D_809EF1B0)       ## $at = 809F0000
/* 000B4 809ED924 3C02809F */  lui     $v0, %hi(D_809EF0B0)       ## $v0 = 809F0000
/* 000B8 809ED928 E6060050 */  swc1    $f6, 0x0050($s0)           ## 00000050
/* 000BC 809ED92C C428F1B0 */  lwc1    $f8, %lo(D_809EF1B0)($at)
/* 000C0 809ED930 3C01809F */  lui     $at, %hi(D_809EF1B4)       ## $at = 809F0000
/* 000C4 809ED934 2442F0B0 */  addiu   $v0, $v0, %lo(D_809EF0B0)  ## $v0 = 809EF0B0
/* 000C8 809ED938 E6080054 */  swc1    $f8, 0x0054($s0)           ## 00000054
/* 000CC 809ED93C C42AF1B4 */  lwc1    $f10, %lo(D_809EF1B4)($at)
/* 000D0 809ED940 3C0C809F */  lui     $t4, %hi(func_809EDCB0)    ## $t4 = 809F0000
/* 000D4 809ED944 3C04809F */  lui     $a0, %hi(D_809EF120)       ## $a0 = 809F0000
/* 000D8 809ED948 E60A0058 */  swc1    $f10, 0x0058($s0)          ## 00000058
/* 000DC 809ED94C 90480000 */  lbu     $t0, 0x0000($v0)           ## 809EF0B0
/* 000E0 809ED950 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 000E4 809ED954 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 000E8 809ED958 11000009 */  beq     $t0, $zero, .L809ED980
/* 000EC 809ED95C 258CDCB0 */  addiu   $t4, $t4, %lo(func_809EDCB0) ## $t4 = 809EDCB0
/* 000F0 809ED960 0C00084C */  jal     osSyncPrintf

/* 000F4 809ED964 2484F120 */  addiu   $a0, $a0, %lo(D_809EF120)  ## $a0 = 809EF120
/* 000F8 809ED968 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 000FC 809ED96C A209031F */  sb      $t1, 0x031F($s0)           ## 0000031F
/* 00100 809ED970 0C00B55C */  jal     Actor_Kill

/* 00104 809ED974 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00108 809ED978 10000006 */  beq     $zero, $zero, .L809ED994
/* 0010C 809ED97C 8FBF002C */  lw      $ra, 0x002C($sp)
.L809ED980:
/* 00110 809ED980 A04A0000 */  sb      $t2, 0x0000($v0)           ## 00000000
/* 00114 809ED984 A200001F */  sb      $zero, 0x001F($s0)         ## 0000001F
/* 00118 809ED988 A20B00AE */  sb      $t3, 0x00AE($s0)           ## 000000AE
/* 0011C 809ED98C AE0C0280 */  sw      $t4, 0x0280($s0)           ## 00000280
/* 00120 809ED990 8FBF002C */  lw      $ra, 0x002C($sp)
.L809ED994:
/* 00124 809ED994 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00128 809ED998 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0012C 809ED99C 03E00008 */  jr      $ra
/* 00130 809ED9A0 00000000 */  nop


