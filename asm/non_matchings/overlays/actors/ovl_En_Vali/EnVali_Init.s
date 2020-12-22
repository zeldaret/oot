glabel EnVali_Init
/* 00000 80B266B0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80B266B4 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00008 80B266B8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 80B266BC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00010 80B266C0 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00014 80B266C4 3C0580B3 */  lui     $a1, %hi(D_80B28944)       ## $a1 = 80B30000
/* 00018 80B266C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80B266CC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 80B266D0 24A58944 */  addiu   $a1, $a1, %lo(D_80B28944)  ## $a1 = 80B28944
/* 00024 80B266D4 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00028 80B266D8 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0002C 80B266DC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00030 80B266E0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00034 80B266E4 0C00AC78 */  jal     ActorShape_Init
              
/* 00038 80B266E8 3C0741D8 */  lui     $a3, 0x41D8                ## $a3 = 41D80000
/* 0003C 80B266EC 240E009B */  addiu   $t6, $zero, 0x009B         ## $t6 = 0000009B
/* 00040 80B266F0 A20E00C8 */  sb      $t6, 0x00C8($s0)           ## 000000C8
/* 00044 80B266F4 3C060600 */  lui     $a2, %hi(D_06004848)                ## $a2 = 06000000
/* 00048 80B266F8 3C070600 */  lui     $a3, %hi(D_060014AC)                ## $a3 = 06000000
/* 0004C 80B266FC 260F0198 */  addiu   $t7, $s0, 0x0198           ## $t7 = 00000198
/* 00050 80B26700 26180246 */  addiu   $t8, $s0, 0x0246           ## $t8 = 00000246
/* 00054 80B26704 2419001D */  addiu   $t9, $zero, 0x001D         ## $t9 = 0000001D
/* 00058 80B26708 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 0005C 80B2670C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00060 80B26710 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00064 80B26714 24E714AC */  addiu   $a3, $a3, %lo(D_060014AC)           ## $a3 = 060014AC
/* 00068 80B26718 24C64848 */  addiu   $a2, $a2, %lo(D_06004848)           ## $a2 = 06004848
/* 0006C 80B2671C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00070 80B26720 0C02915F */  jal     SkelAnime_Init
              
/* 00074 80B26724 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00078 80B26728 260502FC */  addiu   $a1, $s0, 0x02FC           ## $a1 = 000002FC
/* 0007C 80B2672C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00080 80B26730 0C017406 */  jal     Collider_InitQuad              
/* 00084 80B26734 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00088 80B26738 3C0780B3 */  lui     $a3, %hi(D_80B288A0)       ## $a3 = 80B30000
/* 0008C 80B2673C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00090 80B26740 24E788A0 */  addiu   $a3, $a3, %lo(D_80B288A0)  ## $a3 = 80B288A0
/* 00094 80B26744 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00098 80B26748 0C017441 */  jal     Collider_SetQuad              
/* 0009C 80B2674C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000A0 80B26750 2605037C */  addiu   $a1, $s0, 0x037C           ## $a1 = 0000037C
/* 000A4 80B26754 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 000A8 80B26758 0C017406 */  jal     Collider_InitQuad              
/* 000AC 80B2675C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000B0 80B26760 3C0780B3 */  lui     $a3, %hi(D_80B288A0)       ## $a3 = 80B30000
/* 000B4 80B26764 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 000B8 80B26768 24E788A0 */  addiu   $a3, $a3, %lo(D_80B288A0)  ## $a3 = 80B288A0
/* 000BC 80B2676C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000C0 80B26770 0C017441 */  jal     Collider_SetQuad              
/* 000C4 80B26774 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000C8 80B26778 260503FC */  addiu   $a1, $s0, 0x03FC           ## $a1 = 000003FC
/* 000CC 80B2677C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 000D0 80B26780 0C0170D9 */  jal     Collider_InitCylinder
              
/* 000D4 80B26784 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000D8 80B26788 3C0780B3 */  lui     $a3, %hi(D_80B288F0)       ## $a3 = 80B30000
/* 000DC 80B2678C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 000E0 80B26790 24E788F0 */  addiu   $a3, $a3, %lo(D_80B288F0)  ## $a3 = 80B288F0
/* 000E4 80B26794 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000E8 80B26798 0C01712B */  jal     Collider_SetCylinder
              
/* 000EC 80B2679C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000F0 80B267A0 3C0580B3 */  lui     $a1, %hi(D_80B28924)       ## $a1 = 80B30000
/* 000F4 80B267A4 3C0680B3 */  lui     $a2, %hi(D_80B2891C)       ## $a2 = 80B30000
/* 000F8 80B267A8 24C6891C */  addiu   $a2, $a2, %lo(D_80B2891C)  ## $a2 = 80B2891C
/* 000FC 80B267AC 24A58924 */  addiu   $a1, $a1, %lo(D_80B28924)  ## $a1 = 80B28924
/* 00100 80B267B0 0C0187B5 */  jal     CollisionCheck_SetInfo              
/* 00104 80B267B4 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00108 80B267B8 0C2C9A1E */  jal     func_80B26878              
/* 0010C 80B267BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00110 80B267C0 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 00114 80B267C4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00118 80B267C8 260A0024 */  addiu   $t2, $s0, 0x0024           ## $t2 = 00000024
/* 0011C 80B267CC 01014824 */  and     $t1, $t0, $at              
/* 00120 80B267D0 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 00124 80B267D4 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00128 80B267D8 262407C0 */  addiu   $a0, $s1, 0x07C0           ## $a0 = 000007C0
/* 0012C 80B267DC 26050078 */  addiu   $a1, $s0, 0x0078           ## $a1 = 00000078
/* 00130 80B267E0 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 00134 80B267E4 0C00F269 */  jal     func_8003C9A4              
/* 00138 80B267E8 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 0013C 80B267EC 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 00140 80B267F0 44812000 */  mtc1    $at, $f4                   ## $f4 = -32000.00
/* 00144 80B267F4 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
/* 00148 80B267F8 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 0014C 80B267FC 46040032 */  c.eq.s  $f0, $f4                   
/* 00150 80B26800 00000000 */  nop
/* 00154 80B26804 45020004 */  bc1fl   .L80B26818                 
/* 00158 80B26808 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0015C 80B2680C 0C00B55C */  jal     Actor_Kill
              
/* 00160 80B26810 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00164 80B26814 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B26818:
/* 00168 80B26818 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 0016C 80B2681C 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 00170 80B26820 03E00008 */  jr      $ra                        
/* 00174 80B26824 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
