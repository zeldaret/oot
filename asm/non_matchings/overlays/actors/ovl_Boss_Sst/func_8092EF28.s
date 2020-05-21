glabel func_8092EF28
/* 02958 8092EF28 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0295C 8092EF2C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 02960 8092EF30 AFB10020 */  sw      $s1, 0x0020($sp)
/* 02964 8092EF34 AFB0001C */  sw      $s0, 0x001C($sp)
/* 02968 8092EF38 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 0296C 8092EF3C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02970 8092EF40 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 02974 8092EF44 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02978 8092EF48 24A5E7B8 */  addiu   $a1, $a1, 0xE7B8           ## $a1 = 0600E7B8
/* 0297C 8092EF4C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02980 8092EF50 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 02984 8092EF54 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 02988 8092EF58 AFAE002C */  sw      $t6, 0x002C($sp)
/* 0298C 8092EF5C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02990 8092EF60 0C24CF4B */  jal     func_80933D2C
/* 02994 8092EF64 2405396F */  addiu   $a1, $zero, 0x396F         ## $a1 = 0000396F
/* 02998 8092EF68 240F003C */  addiu   $t7, $zero, 0x003C         ## $t7 = 0000003C
/* 0299C 8092EF6C AFAF0010 */  sw      $t7, 0x0010($sp)
/* 029A0 8092EF70 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 029A4 8092EF74 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 029A8 8092EF78 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 029AC 8092EF7C 0C00D09B */  jal     func_8003426C
/* 029B0 8092EF80 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 029B4 8092EF84 3C048094 */  lui     $a0, %hi(D_80938C98)       ## $a0 = 80940000
/* 029B8 8092EF88 2418003C */  addiu   $t8, $zero, 0x003C         ## $t8 = 0000003C
/* 029BC 8092EF8C AFB80010 */  sw      $t8, 0x0010($sp)
/* 029C0 8092EF90 8C848C98 */  lw      $a0, %lo(D_80938C98)($a0)
/* 029C4 8092EF94 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 029C8 8092EF98 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 029CC 8092EF9C 0C00D09B */  jal     func_8003426C
/* 029D0 8092EFA0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 029D4 8092EFA4 3C048094 */  lui     $a0, %hi(D_80938C9C)       ## $a0 = 80940000
/* 029D8 8092EFA8 2419003C */  addiu   $t9, $zero, 0x003C         ## $t9 = 0000003C
/* 029DC 8092EFAC AFB90010 */  sw      $t9, 0x0010($sp)
/* 029E0 8092EFB0 8C848C9C */  lw      $a0, %lo(D_80938C9C)($a0)
/* 029E4 8092EFB4 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 029E8 8092EFB8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 029EC 8092EFBC 0C00D09B */  jal     func_8003426C
/* 029F0 8092EFC0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 029F4 8092EFC4 922906C5 */  lbu     $t1, 0x06C5($s1)           ## 000006C5
/* 029F8 8092EFC8 922B03E6 */  lbu     $t3, 0x03E6($s1)           ## 000003E6
/* 029FC 8092EFCC 3C068094 */  lui     $a2, %hi(D_80938C98)       ## $a2 = 80940000
/* 02A00 8092EFD0 2408003C */  addiu   $t0, $zero, 0x003C         ## $t0 = 0000003C
/* 02A04 8092EFD4 312AFFFE */  andi    $t2, $t1, 0xFFFE           ## $t2 = 00000000
/* 02A08 8092EFD8 316CFFFE */  andi    $t4, $t3, 0xFFFE           ## $t4 = 00000000
/* 02A0C 8092EFDC 24C68C98 */  addiu   $a2, $a2, %lo(D_80938C98)  ## $a2 = 80938C98
/* 02A10 8092EFE0 A6280198 */  sh      $t0, 0x0198($s1)           ## 00000198
/* 02A14 8092EFE4 A22A06C5 */  sb      $t2, 0x06C5($s1)           ## 000006C5
/* 02A18 8092EFE8 A22C03E6 */  sb      $t4, 0x03E6($s1)           ## 000003E6
/* 02A1C 8092EFEC 8CC20000 */  lw      $v0, 0x0000($a2)           ## 80938C98
/* 02A20 8092EFF0 3C041001 */  lui     $a0, 0x1001                ## $a0 = 10010000
/* 02A24 8092EFF4 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 100100FF
/* 02A28 8092EFF8 904D03E6 */  lbu     $t5, 0x03E6($v0)           ## 000003E6
/* 02A2C 8092EFFC 31AEFFFE */  andi    $t6, $t5, 0xFFFE           ## $t6 = 00000000
/* 02A30 8092F000 A04E03E6 */  sb      $t6, 0x03E6($v0)           ## 000003E6
/* 02A34 8092F004 8CC30004 */  lw      $v1, 0x0004($a2)           ## 80938C9C
/* 02A38 8092F008 906F03E6 */  lbu     $t7, 0x03E6($v1)           ## 000003E6
/* 02A3C 8092F00C 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 02A40 8092F010 0C03E803 */  jal     Audio_SetBGM

/* 02A44 8092F014 A07803E6 */  sb      $t8, 0x03E6($v1)           ## 000003E6
/* 02A48 8092F018 0C03008C */  jal     Gameplay_CreateSubCamera
/* 02A4C 8092F01C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A50 8092F020 3C018094 */  lui     $at, %hi(D_80938CC4)       ## $at = 80940000
/* 02A54 8092F024 A4228CC4 */  sh      $v0, %lo(D_80938CC4)($at)
/* 02A58 8092F028 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A5C 8092F02C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02A60 8092F030 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 02A64 8092F034 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02A68 8092F038 3C058094 */  lui     $a1, %hi(D_80938CC4)       ## $a1 = 80940000
/* 02A6C 8092F03C 84A58CC4 */  lh      $a1, %lo(D_80938CC4)($a1)
/* 02A70 8092F040 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A74 8092F044 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 02A78 8092F048 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 02A7C 8092F04C 3C058094 */  lui     $a1, %hi(D_80938CC4)       ## $a1 = 80940000
/* 02A80 8092F050 84A58CC4 */  lh      $a1, %lo(D_80938CC4)($a1)
/* 02A84 8092F054 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A88 8092F058 0C0301E3 */  jal     func_800C078C
/* 02A8C 8092F05C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02A90 8092F060 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A94 8092F064 8FA5002C */  lw      $a1, 0x002C($sp)
/* 02A98 8092F068 0C00B7D5 */  jal     func_8002DF54
/* 02A9C 8092F06C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 02AA0 8092F070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AA4 8092F074 0C019148 */  jal     func_80064520
/* 02AA8 8092F078 26051D64 */  addiu   $a1, $s0, 0x1D64           ## $a1 = 00001D64
/* 02AAC 8092F07C 861907A0 */  lh      $t9, 0x07A0($s0)           ## 000007A0
/* 02AB0 8092F080 3C048093 */  lui     $a0, %hi(D_80937358)       ## $a0 = 80930000
/* 02AB4 8092F084 24847358 */  addiu   $a0, $a0, %lo(D_80937358)  ## $a0 = 80937358
/* 02AB8 8092F088 00194080 */  sll     $t0, $t9,  2
/* 02ABC 8092F08C 02084821 */  addu    $t1, $s0, $t0
/* 02AC0 8092F090 8D250790 */  lw      $a1, 0x0790($t1)           ## 00000790
/* 02AC4 8092F094 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 02AC8 8092F098 24A5005C */  addiu   $a1, $a1, 0x005C           ## $a1 = 0000005C
/* 02ACC 8092F09C 3C0A8093 */  lui     $t2, %hi(func_8092F0BC)    ## $t2 = 80930000
/* 02AD0 8092F0A0 254AF0BC */  addiu   $t2, $t2, %lo(func_8092F0BC) ## $t2 = 8092F0BC
/* 02AD4 8092F0A4 AE2A0190 */  sw      $t2, 0x0190($s1)           ## 00000190
/* 02AD8 8092F0A8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 02ADC 8092F0AC 8FB10020 */  lw      $s1, 0x0020($sp)
/* 02AE0 8092F0B0 8FB0001C */  lw      $s0, 0x001C($sp)
/* 02AE4 8092F0B4 03E00008 */  jr      $ra
/* 02AE8 8092F0B8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
