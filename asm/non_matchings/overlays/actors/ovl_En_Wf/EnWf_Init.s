glabel EnWf_Init
/* 00008 80B33CB8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0000C 80B33CBC AFB10028 */  sw      $s1, 0x0028($sp)
/* 00010 80B33CC0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00014 80B33CC4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00018 80B33CC8 AFB00024 */  sw      $s0, 0x0024($sp)
/* 0001C 80B33CCC 3C0580B3 */  lui     $a1, %hi(D_80B37AC8)       ## $a1 = 80B30000
/* 00020 80B33CD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00024 80B33CD4 0C01E037 */  jal     Actor_ProcessInitChain

/* 00028 80B33CD8 24A57AC8 */  addiu   $a1, $a1, %lo(D_80B37AC8)  ## $a1 = 80B37AC8
/* 0002C 80B33CDC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00030 80B33CE0 3C0E80B3 */  lui     $t6, %hi(D_80B37A88)       ## $t6 = 80B30000
/* 00034 80B33CE4 25CE7A88 */  addiu   $t6, $t6, %lo(D_80B37A88)  ## $t6 = 80B37A88
/* 00038 80B33CE8 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 0003C 80B33CEC 44050000 */  mfc1    $a1, $f0
/* 00040 80B33CF0 44070000 */  mfc1    $a3, $f0
/* 00044 80B33CF4 AE0E0098 */  sw      $t6, 0x0098($s0)           ## 00000098
/* 00048 80B33CF8 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0004C 80B33CFC 0C00AC78 */  jal     ActorShape_Init

/* 00050 80B33D00 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00054 80B33D04 8E180024 */  lw      $t8, 0x0024($s0)           ## 00000024
/* 00058 80B33D08 8E0F0028 */  lw      $t7, 0x0028($s0)           ## 00000028
/* 0005C 80B33D0C 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00060 80B33D10 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00064 80B33D14 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00068 80B33D18 AE180038 */  sw      $t8, 0x0038($s0)           ## 00000038
/* 0006C 80B33D1C 8E18002C */  lw      $t8, 0x002C($s0)           ## 0000002C
/* 00070 80B33D20 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00074 80B33D24 AE0F003C */  sw      $t7, 0x003C($s0)           ## 0000003C
/* 00078 80B33D28 000B6203 */  sra     $t4, $t3,  8
/* 0007C 80B33D2C 241900FE */  addiu   $t9, $zero, 0x00FE         ## $t9 = 000000FE
/* 00080 80B33D30 24080008 */  addiu   $t0, $zero, 0x0008         ## $t0 = 00000008
/* 00084 80B33D34 24090032 */  addiu   $t1, $zero, 0x0032         ## $t1 = 00000032
/* 00088 80B33D38 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 0008C 80B33D3C 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000000
/* 00090 80B33D40 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00094 80B33D44 A21900AE */  sb      $t9, 0x00AE($s0)           ## 000000AE
/* 00098 80B33D48 A20800AF */  sb      $t0, 0x00AF($s0)           ## 000000AF
/* 0009C 80B33D4C A60900A8 */  sh      $t1, 0x00A8($s0)           ## 000000A8
/* 000A0 80B33D50 A60A00AA */  sh      $t2, 0x00AA($s0)           ## 000000AA
/* 000A4 80B33D54 A60D02FC */  sh      $t5, 0x02FC($s0)           ## 000002FC
/* 000A8 80B33D58 A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 000AC 80B33D5C A2000302 */  sb      $zero, 0x0302($s0)         ## 00000302
/* 000B0 80B33D60 26050304 */  addiu   $a1, $s0, 0x0304           ## $a1 = 00000304
/* 000B4 80B33D64 AE180040 */  sw      $t8, 0x0040($s0)           ## 00000040
/* 000B8 80B33D68 E60402F4 */  swc1    $f4, 0x02F4($s0)           ## 000002F4
/* 000BC 80B33D6C AFA50034 */  sw      $a1, 0x0034($sp)
/* 000C0 80B33D70 0C016EFE */  jal     Collider_InitJntSph
/* 000C4 80B33D74 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000C8 80B33D78 3C0780B3 */  lui     $a3, %hi(D_80B37A20)       ## $a3 = 80B30000
/* 000CC 80B33D7C 26180324 */  addiu   $t8, $s0, 0x0324           ## $t8 = 00000324
/* 000D0 80B33D80 8FA50034 */  lw      $a1, 0x0034($sp)
/* 000D4 80B33D84 AFB80010 */  sw      $t8, 0x0010($sp)
/* 000D8 80B33D88 24E77A20 */  addiu   $a3, $a3, %lo(D_80B37A20)  ## $a3 = 80B37A20
/* 000DC 80B33D8C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000E0 80B33D90 0C017014 */  jal     Collider_SetJntSph
/* 000E4 80B33D94 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000E8 80B33D98 26050424 */  addiu   $a1, $s0, 0x0424           ## $a1 = 00000424
/* 000EC 80B33D9C AFA50034 */  sw      $a1, 0x0034($sp)
/* 000F0 80B33DA0 0C0170D9 */  jal     Collider_InitCylinder

/* 000F4 80B33DA4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000F8 80B33DA8 3C0780B3 */  lui     $a3, %hi(D_80B37A30)       ## $a3 = 80B30000
/* 000FC 80B33DAC 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00100 80B33DB0 24E77A30 */  addiu   $a3, $a3, %lo(D_80B37A30)  ## $a3 = 80B37A30
/* 00104 80B33DB4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00108 80B33DB8 0C01712B */  jal     Collider_SetCylinder

/* 0010C 80B33DBC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00110 80B33DC0 26050470 */  addiu   $a1, $s0, 0x0470           ## $a1 = 00000470
/* 00114 80B33DC4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00118 80B33DC8 0C0170D9 */  jal     Collider_InitCylinder

/* 0011C 80B33DCC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00120 80B33DD0 3C0780B3 */  lui     $a3, %hi(D_80B37A5C)       ## $a3 = 80B30000
/* 00124 80B33DD4 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00128 80B33DD8 24E77A5C */  addiu   $a3, $a3, %lo(D_80B37A5C)  ## $a3 = 80B37A5C
/* 0012C 80B33DDC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00130 80B33DE0 0C01712B */  jal     Collider_SetCylinder

/* 00134 80B33DE4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00138 80B33DE8 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 0013C 80B33DEC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00140 80B33DF0 26050188 */  addiu   $a1, $s0, 0x0188           ## $a1 = 00000188
/* 00144 80B33DF4 17200015 */  bne     $t9, $zero, .L80B33E4C
/* 00148 80B33DF8 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0014C 80B33DFC 3C060601 */  lui     $a2, %hi(D_06009690)                ## $a2 = 06010000
/* 00150 80B33E00 3C070601 */  lui     $a3, %hi(D_0600A4AC)                ## $a3 = 06010000
/* 00154 80B33E04 260801CC */  addiu   $t0, $s0, 0x01CC           ## $t0 = 000001CC
/* 00158 80B33E08 26090250 */  addiu   $t1, $s0, 0x0250           ## $t1 = 00000250
/* 0015C 80B33E0C 240A0016 */  addiu   $t2, $zero, 0x0016         ## $t2 = 00000016
/* 00160 80B33E10 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 00164 80B33E14 AFA90014 */  sw      $t1, 0x0014($sp)
/* 00168 80B33E18 AFA80010 */  sw      $t0, 0x0010($sp)
/* 0016C 80B33E1C 24E7A4AC */  addiu   $a3, $a3, %lo(D_0600A4AC)           ## $a3 = 0600A4AC
/* 00170 80B33E20 24C69690 */  addiu   $a2, $a2, %lo(D_06009690)           ## $a2 = 06009690
/* 00174 80B33E24 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00178 80B33E28 0C0291BE */  jal     SkelAnime_InitFlex
/* 0017C 80B33E2C 26050188 */  addiu   $a1, $s0, 0x0188           ## $a1 = 00000188
/* 00180 80B33E30 3C053BF5 */  lui     $a1, 0x3BF5                ## $a1 = 3BF50000
/* 00184 80B33E34 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3BF5C28F
/* 00188 80B33E38 0C00B58B */  jal     Actor_SetScale

/* 0018C 80B33E3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00190 80B33E40 240B004C */  addiu   $t3, $zero, 0x004C         ## $t3 = 0000004C
/* 00194 80B33E44 10000017 */  beq     $zero, $zero, .L80B33EA4
/* 00198 80B33E48 A20B0117 */  sb      $t3, 0x0117($s0)           ## 00000117
.L80B33E4C:
/* 0019C 80B33E4C 3C070601 */  lui     $a3, %hi(D_0600A4AC)                ## $a3 = 06010000
/* 001A0 80B33E50 260C01CC */  addiu   $t4, $s0, 0x01CC           ## $t4 = 000001CC
/* 001A4 80B33E54 260D0250 */  addiu   $t5, $s0, 0x0250           ## $t5 = 00000250
/* 001A8 80B33E58 240E0016 */  addiu   $t6, $zero, 0x0016         ## $t6 = 00000016
/* 001AC 80B33E5C AFAE0018 */  sw      $t6, 0x0018($sp)
/* 001B0 80B33E60 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 001B4 80B33E64 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 001B8 80B33E68 24E7A4AC */  addiu   $a3, $a3, %lo(D_0600A4AC)           ## $a3 = 0600A4AC
/* 001BC 80B33E6C 0C0291BE */  jal     SkelAnime_InitFlex
/* 001C0 80B33E70 24C63BC0 */  addiu   $a2, $a2, 0x3BC0           ## $a2 = 00003BC0
/* 001C4 80B33E74 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 001C8 80B33E78 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 001CC 80B33E7C 0C00B58B */  jal     Actor_SetScale

/* 001D0 80B33E80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001D4 80B33E84 8E180320 */  lw      $t8, 0x0320($s0)           ## 00000320
/* 001D8 80B33E88 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 001DC 80B33E8C 24080057 */  addiu   $t0, $zero, 0x0057         ## $t0 = 00000057
/* 001E0 80B33E90 A30F0045 */  sb      $t7, 0x0045($t8)           ## 00000045
/* 001E4 80B33E94 8E020320 */  lw      $v0, 0x0320($s0)           ## 00000320
/* 001E8 80B33E98 90590045 */  lbu     $t9, 0x0045($v0)           ## 00000045
/* 001EC 80B33E9C A0590005 */  sb      $t9, 0x0005($v0)           ## 00000005
/* 001F0 80B33EA0 A2080117 */  sb      $t0, 0x0117($s0)           ## 00000117
.L80B33EA4:
/* 001F4 80B33EA4 0C2CD0E0 */  jal     func_80B34380
/* 001F8 80B33EA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001FC 80B33EAC 860502FC */  lh      $a1, 0x02FC($s0)           ## 000002FC
/* 00200 80B33EB0 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00204 80B33EB4 50A10008 */  beql    $a1, $at, .L80B33ED8
/* 00208 80B33EB8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0020C 80B33EBC 0C00B2D0 */  jal     Flags_GetSwitch

/* 00210 80B33EC0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00214 80B33EC4 50400004 */  beql    $v0, $zero, .L80B33ED8
/* 00218 80B33EC8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0021C 80B33ECC 0C00B55C */  jal     Actor_Kill

/* 00220 80B33ED0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00224 80B33ED4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B33ED8:
/* 00228 80B33ED8 8FB00024 */  lw      $s0, 0x0024($sp)
/* 0022C 80B33EDC 8FB10028 */  lw      $s1, 0x0028($sp)
/* 00230 80B33EE0 03E00008 */  jr      $ra
/* 00234 80B33EE4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
