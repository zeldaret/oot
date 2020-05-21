glabel EnMu_Init
/* 0020C 80AB062C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00210 80AB0630 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00214 80AB0634 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00218 80AB0638 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0021C 80AB063C AFA50044 */  sw      $a1, 0x0044($sp)
/* 00220 80AB0640 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00224 80AB0644 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00228 80AB0648 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0022C 80AB064C 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00230 80AB0650 0C00AC78 */  jal     ActorShape_Init

/* 00234 80AB0654 3C074320 */  lui     $a3, 0x4320                ## $a3 = 43200000
/* 00238 80AB0658 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0023C 80AB065C 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00240 80AB0660 24E703F4 */  addiu   $a3, $a3, 0x03F4           ## $a3 = 060003F4
/* 00244 80AB0664 24C64F70 */  addiu   $a2, $a2, 0x4F70           ## $a2 = 06004F70
/* 00248 80AB0668 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0024C 80AB066C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00250 80AB0670 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00254 80AB0674 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00258 80AB0678 0C0291BE */  jal     SkelAnime_InitSV
/* 0025C 80AB067C AFA00018 */  sw      $zero, 0x0018($sp)
/* 00260 80AB0680 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00264 80AB0684 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00268 80AB0688 0C0170D9 */  jal     Collider_InitCylinder

/* 0026C 80AB068C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00270 80AB0690 3C0780AB */  lui     $a3, %hi(D_80AB0BD0)       ## $a3 = 80AB0000
/* 00274 80AB0694 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00278 80AB0698 24E70BD0 */  addiu   $a3, $a3, %lo(D_80AB0BD0)  ## $a3 = 80AB0BD0
/* 0027C 80AB069C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00280 80AB06A0 0C01712B */  jal     Collider_SetCylinder

/* 00284 80AB06A4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00288 80AB06A8 3C0680AB */  lui     $a2, %hi(D_80AB0BFC)       ## $a2 = 80AB0000
/* 0028C 80AB06AC 24C60BFC */  addiu   $a2, $a2, %lo(D_80AB0BFC)  ## $a2 = 80AB0BFC
/* 00290 80AB06B0 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00294 80AB06B4 0C0187BF */  jal     func_80061EFC
/* 00298 80AB06B8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0029C 80AB06BC 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 002A0 80AB06C0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 002A4 80AB06C4 A20E001F */  sb      $t6, 0x001F($s0)           ## 0000001F
/* 002A8 80AB06C8 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 002AC 80AB06CC 0C00B58B */  jal     Actor_SetScale

/* 002B0 80AB06D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002B4 80AB06D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002B8 80AB06D8 0C2AC10A */  jal     func_80AB0428
/* 002BC 80AB06DC 8FA50044 */  lw      $a1, 0x0044($sp)
/* 002C0 80AB06E0 3C0580AB */  lui     $a1, %hi(func_80AB0724)    ## $a1 = 80AB0000
/* 002C4 80AB06E4 24A50724 */  addiu   $a1, $a1, %lo(func_80AB0724) ## $a1 = 80AB0724
/* 002C8 80AB06E8 0C2AC108 */  jal     func_80AB0420
/* 002CC 80AB06EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002D0 80AB06F0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 002D4 80AB06F4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 002D8 80AB06F8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 002DC 80AB06FC 03E00008 */  jr      $ra
/* 002E0 80AB0700 00000000 */  nop
