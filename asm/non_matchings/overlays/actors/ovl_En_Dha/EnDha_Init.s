glabel EnDha_Init
/* 00008 809EC888 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 809EC88C AFA5003C */  sw      $a1, 0x003C($sp)
/* 00010 809EC890 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00014 809EC894 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00018 809EC898 3C05809F */  lui     $a1, %hi(D_809ED734)       ## $a1 = 809F0000
/* 0001C 809EC89C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 809EC8A0 0C01E037 */  jal     Actor_ProcessInitChain

/* 00024 809EC8A4 24A5D734 */  addiu   $a1, $a1, %lo(D_809ED734)  ## $a1 = 809ED734
/* 00028 809EC8A8 3C0E809F */  lui     $t6, %hi(D_809ED650)       ## $t6 = 809F0000
/* 0002C 809EC8AC 25CED650 */  addiu   $t6, $t6, %lo(D_809ED650)  ## $t6 = 809ED650
/* 00030 809EC8B0 AE0E0098 */  sw      $t6, 0x0098($s0)           ## 00000098
/* 00034 809EC8B4 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00038 809EC8B8 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 0003C 809EC8BC 260F0190 */  addiu   $t7, $s0, 0x0190           ## $t7 = 00000190
/* 00040 809EC8C0 261801A8 */  addiu   $t8, $s0, 0x01A8           ## $t8 = 000001A8
/* 00044 809EC8C4 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 00048 809EC8C8 AFB90018 */  sw      $t9, 0x0018($sp)
/* 0004C 809EC8CC AFB80014 */  sw      $t8, 0x0014($sp)
/* 00050 809EC8D0 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 00054 809EC8D4 24E715B0 */  addiu   $a3, $a3, 0x15B0           ## $a3 = 060015B0
/* 00058 809EC8D8 24C60BD8 */  addiu   $a2, $a2, 0x0BD8           ## $a2 = 06000BD8
/* 0005C 809EC8DC 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00060 809EC8E0 0C0291BE */  jal     SkelAnime_InitSV
/* 00064 809EC8E4 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00068 809EC8E8 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Teardrop)
/* 0006C 809EC8EC 24C6B8C4 */  addiu   $a2, %lo(ActorShadow_DrawFunc_Teardrop)
/* 00070 809EC8F0 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00074 809EC8F4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00078 809EC8F8 0C00AC78 */  jal     ActorShape_Init

/* 0007C 809EC8FC 3C0742B4 */  lui     $a3, 0x42B4                ## $a3 = 42B40000
/* 00080 809EC900 8E080028 */  lw      $t0, 0x0028($s0)           ## 00000028
/* 00084 809EC904 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00088 809EC908 8E090024 */  lw      $t1, 0x0024($s0)           ## 00000024
/* 0008C 809EC90C AE08003C */  sw      $t0, 0x003C($s0)           ## 0000003C
/* 00090 809EC910 C604003C */  lwc1    $f4, 0x003C($s0)           ## 0000003C
/* 00094 809EC914 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 00098 809EC918 AE090038 */  sw      $t1, 0x0038($s0)           ## 00000038
/* 0009C 809EC91C 8E09002C */  lw      $t1, 0x002C($s0)           ## 0000002C
/* 000A0 809EC920 46062200 */  add.s   $f8, $f4, $f6
/* 000A4 809EC924 240A00FE */  addiu   $t2, $zero, 0x00FE         ## $t2 = 000000FE
/* 000A8 809EC928 240B0008 */  addiu   $t3, $zero, 0x0008         ## $t3 = 00000008
/* 000AC 809EC92C 240CC000 */  addiu   $t4, $zero, 0xC000         ## $t4 = FFFFC000
/* 000B0 809EC930 E608003C */  swc1    $f8, 0x003C($s0)           ## 0000003C
/* 000B4 809EC934 A20A00AE */  sb      $t2, 0x00AE($s0)           ## 000000AE
/* 000B8 809EC938 A20B00AF */  sb      $t3, 0x00AF($s0)           ## 000000AF
/* 000BC 809EC93C A60C01CE */  sh      $t4, 0x01CE($s0)           ## 000001CE
/* 000C0 809EC940 26050200 */  addiu   $a1, $s0, 0x0200           ## $a1 = 00000200
/* 000C4 809EC944 AE090040 */  sw      $t1, 0x0040($s0)           ## 00000040
/* 000C8 809EC948 AFA50030 */  sw      $a1, 0x0030($sp)
/* 000CC 809EC94C 0C016EFE */  jal     Collider_InitJntSph
/* 000D0 809EC950 8FA4003C */  lw      $a0, 0x003C($sp)
/* 000D4 809EC954 3C07809F */  lui     $a3, %hi(D_809ED724)       ## $a3 = 809F0000
/* 000D8 809EC958 260D0220 */  addiu   $t5, $s0, 0x0220           ## $t5 = 00000220
/* 000DC 809EC95C 8FA50030 */  lw      $a1, 0x0030($sp)
/* 000E0 809EC960 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 000E4 809EC964 24E7D724 */  addiu   $a3, $a3, %lo(D_809ED724)  ## $a3 = 809ED724
/* 000E8 809EC968 8FA4003C */  lw      $a0, 0x003C($sp)
/* 000EC 809EC96C 0C017014 */  jal     Collider_SetJntSph
/* 000F0 809EC970 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000F4 809EC974 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 000F8 809EC978 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 000FC 809EC97C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00100 809EC980 01C17824 */  and     $t7, $t6, $at
/* 00104 809EC984 0C27B272 */  jal     func_809EC9C8
/* 00108 809EC988 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 0010C 809EC98C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00110 809EC990 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00114 809EC994 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00118 809EC998 03E00008 */  jr      $ra
/* 0011C 809EC99C 00000000 */  nop
