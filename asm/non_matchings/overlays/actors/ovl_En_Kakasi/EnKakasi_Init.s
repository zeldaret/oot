.rdata
glabel D_80A8FE30
    .asciz "\n\n"
    .balign 4

glabel D_80A8FE34
    .asciz "[33m☆☆☆☆☆ Ｌｅｔ’ｓ ＤＡＮＣＥ！ ☆☆☆☆☆ %f\n[m"
    .balign 4

.text
glabel EnKakasi_Init
/* 00028 80A8F198 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0002C 80A8F19C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00030 80A8F1A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00034 80A8F1A4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00038 80A8F1A8 3C0480A9 */  lui     $a0, %hi(D_80A8FE30)       ## $a0 = 80A90000
/* 0003C 80A8F1AC AFA5003C */  sw      $a1, 0x003C($sp)
/* 00040 80A8F1B0 0C00084C */  jal     osSyncPrintf

/* 00044 80A8F1B4 2484FE30 */  addiu   $a0, $a0, %lo(D_80A8FE30)  ## $a0 = 80A8FE30
/* 00048 80A8F1B8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 0004C 80A8F1BC 3C0480A9 */  lui     $a0, %hi(D_80A8FE34)       ## $a0 = 80A90000
/* 00050 80A8F1C0 2484FE34 */  addiu   $a0, $a0, %lo(D_80A8FE34)  ## $a0 = 80A8FE34
/* 00054 80A8F1C4 460021A1 */  cvt.d.s $f6, $f4
/* 00058 80A8F1C8 44073000 */  mfc1    $a3, $f6
/* 0005C 80A8F1CC 44063800 */  mfc1    $a2, $f7
/* 00060 80A8F1D0 0C00084C */  jal     osSyncPrintf

/* 00064 80A8F1D4 00000000 */  nop
/* 00068 80A8F1D8 260501BC */  addiu   $a1, $s0, 0x01BC           ## $a1 = 000001BC
/* 0006C 80A8F1DC AFA50030 */  sw      $a1, 0x0030($sp)
/* 00070 80A8F1E0 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00074 80A8F1E4 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00078 80A8F1E8 3C0780A9 */  lui     $a3, %hi(D_80A8FDE0)       ## $a3 = 80A90000
/* 0007C 80A8F1EC 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00080 80A8F1F0 24E7FDE0 */  addiu   $a3, $a3, %lo(D_80A8FDE0)  ## $a3 = 80A8FDE0
/* 00084 80A8F1F4 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00088 80A8F1F8 0C01712B */  jal     ActorCollider_InitCylinder

/* 0008C 80A8F1FC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00090 80A8F200 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 00094 80A8F204 A20E001F */  sb      $t6, 0x001F($s0)           ## 0000001F
/* 00098 80A8F208 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0009C 80A8F20C 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 000A0 80A8F210 24E70214 */  addiu   $a3, $a3, 0x0214           ## $a3 = 06000214
/* 000A4 80A8F214 24C665B0 */  addiu   $a2, $a2, 0x65B0           ## $a2 = 060065B0
/* 000A8 80A8F218 AFA00018 */  sw      $zero, 0x0018($sp)
/* 000AC 80A8F21C AFA00014 */  sw      $zero, 0x0014($sp)
/* 000B0 80A8F220 AFA00010 */  sw      $zero, 0x0010($sp)
/* 000B4 80A8F224 8FA4003C */  lw      $a0, 0x003C($sp)
/* 000B8 80A8F228 0C0291BE */  jal     SkelAnime_InitSV
/* 000BC 80A8F22C 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 000C0 80A8F230 8A180030 */  lwl     $t8, 0x0030($s0)           ## 00000030
/* 000C4 80A8F234 9A180033 */  lwr     $t8, 0x0033($s0)           ## 00000033
/* 000C8 80A8F238 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 000CC 80A8F23C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 000D0 80A8F240 AA1801AE */  swl     $t8, 0x01AE($s0)           ## 000001AE
/* 000D4 80A8F244 BA1801B1 */  swr     $t8, 0x01B1($s0)           ## 000001B1
/* 000D8 80A8F248 96180034 */  lhu     $t8, 0x0034($s0)           ## 00000034
/* 000DC 80A8F24C 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 000E0 80A8F250 37280400 */  ori     $t0, $t9, 0x0400           ## $t0 = 00000400
/* 000E4 80A8F254 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 000E8 80A8F258 A20900AE */  sb      $t1, 0x00AE($s0)           ## 000000AE
/* 000EC 80A8F25C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 000F0 80A8F260 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000F4 80A8F264 0C00B58B */  jal     Actor_SetScale

/* 000F8 80A8F268 A61801B2 */  sh      $t8, 0x01B2($s0)           ## 000001B2
/* 000FC 80A8F26C 3C0A80A9 */  lui     $t2, %hi(func_80A8F660)    ## $t2 = 80A90000
/* 00100 80A8F270 254AF660 */  addiu   $t2, $t2, %lo(func_80A8F660) ## $t2 = 80A8F660
/* 00104 80A8F274 AE0A014C */  sw      $t2, 0x014C($s0)           ## 0000014C
/* 00108 80A8F278 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0010C 80A8F27C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00110 80A8F280 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00114 80A8F284 03E00008 */  jr      $ra
/* 00118 80A8F288 00000000 */  nop
