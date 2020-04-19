glabel EnPoRelay_Init
/* 00000 80AD7740 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80AD7744 AFB10028 */  sw      $s1, 0x0028($sp)
/* 00008 80AD7748 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 80AD774C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00010 80AD7750 AFB00024 */  sw      $s0, 0x0024($sp)
/* 00014 80AD7754 3C0580AE */  lui     $a1, %hi(D_80AD8D28)       ## $a1 = 80AE0000
/* 00018 80AD7758 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80AD775C 0C01E037 */  jal     Actor_ProcessInitChain

/* 00020 80AD7760 24A58D28 */  addiu   $a1, $a1, %lo(D_80AD8D28)  ## $a1 = 80AD8D28
/* 00024 80AD7764 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00028 80AD7768 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0002C 80AD776C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00030 80AD7770 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00034 80AD7774 0C00AC78 */  jal     ActorShape_Init

/* 00038 80AD7778 3C074228 */  lui     $a3, 0x4228                ## $a3 = 42280000
/* 0003C 80AD777C 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00040 80AD7780 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00044 80AD7784 260E01A0 */  addiu   $t6, $s0, 0x01A0           ## $t6 = 000001A0
/* 00048 80AD7788 260F020C */  addiu   $t7, $s0, 0x020C           ## $t7 = 0000020C
/* 0004C 80AD778C 24180012 */  addiu   $t8, $zero, 0x0012         ## $t8 = 00000012
/* 00050 80AD7790 AFB80018 */  sw      $t8, 0x0018($sp)
/* 00054 80AD7794 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00058 80AD7798 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 0005C 80AD779C 24E73768 */  addiu   $a3, $a3, 0x3768           ## $a3 = 06003768
/* 00060 80AD77A0 24C6BE40 */  addiu   $a2, $a2, 0xBE40           ## $a2 = 0600BE40
/* 00064 80AD77A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00068 80AD77A8 0C0291BE */  jal     SkelAnime_InitSV
/* 0006C 80AD77AC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00070 80AD77B0 26050290 */  addiu   $a1, $s0, 0x0290           ## $a1 = 00000290
/* 00074 80AD77B4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00078 80AD77B8 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 0007C 80AD77BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00080 80AD77C0 3C0780AE */  lui     $a3, %hi(D_80AD8CF8)       ## $a3 = 80AE0000
/* 00084 80AD77C4 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00088 80AD77C8 24E78CF8 */  addiu   $a3, $a3, %lo(D_80AD8CF8)  ## $a3 = 80AD8CF8
/* 0008C 80AD77CC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00090 80AD77D0 0C01712B */  jal     ActorCollider_InitCylinder

/* 00094 80AD77D4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00098 80AD77D8 26060280 */  addiu   $a2, $s0, 0x0280           ## $a2 = 00000280
/* 0009C 80AD77DC AFA60034 */  sw      $a2, 0x0034($sp)
/* 000A0 80AD77E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000A4 80AD77E4 0C01E9D9 */  jal     Lights_Insert

/* 000A8 80AD77E8 262507A8 */  addiu   $a1, $s1, 0x07A8           ## $a1 = 000007A8
/* 000AC 80AD77EC C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 000B0 80AD77F0 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 000B4 80AD77F4 C6100010 */  lwc1    $f16, 0x0010($s0)          ## 00000010
/* 000B8 80AD77F8 4600218D */  trunc.w.s $f6, $f4
/* 000BC 80AD77FC AE02027C */  sw      $v0, 0x027C($s0)           ## 0000027C
/* 000C0 80AD7800 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 000C4 80AD7804 4600428D */  trunc.w.s $f10, $f8
/* 000C8 80AD7808 44053000 */  mfc1    $a1, $f6
/* 000CC 80AD780C 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 000D0 80AD7810 4600848D */  trunc.w.s $f18, $f16
/* 000D4 80AD7814 44065000 */  mfc1    $a2, $f10
/* 000D8 80AD7818 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 000DC 80AD781C 240D00C8 */  addiu   $t5, $zero, 0x00C8         ## $t5 = 000000C8
/* 000E0 80AD7820 44079000 */  mfc1    $a3, $f18
/* 000E4 80AD7824 00052C00 */  sll     $a1, $a1, 16
/* 000E8 80AD7828 00063400 */  sll     $a2, $a2, 16
/* 000EC 80AD782C 00073C00 */  sll     $a3, $a3, 16
/* 000F0 80AD7830 00073C03 */  sra     $a3, $a3, 16
/* 000F4 80AD7834 00063403 */  sra     $a2, $a2, 16
/* 000F8 80AD7838 00052C03 */  sra     $a1, $a1, 16
/* 000FC 80AD783C AFAD001C */  sw      $t5, 0x001C($sp)
/* 00100 80AD7840 AFAC0018 */  sw      $t4, 0x0018($sp)
/* 00104 80AD7844 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 00108 80AD7848 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 0010C 80AD784C 0C01E763 */  jal     Lights_InitType0PositionalLight

/* 00110 80AD7850 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00114 80AD7854 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00118 80AD7858 A20E027B */  sb      $t6, 0x027B($s0)           ## 0000027B
/* 0011C 80AD785C 3C0F80AE */  lui     $t7, %hi(D_80AD8D24)       ## $t7 = 80AE0000
/* 00120 80AD7860 8DEF8D24 */  lw      $t7, %lo(D_80AD8D24)($t7)
/* 00124 80AD7864 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00128 80AD7868 3C0180AE */  lui     $at, %hi(D_80AD8D24)       ## $at = 80AE0000
/* 0012C 80AD786C 11E00005 */  beq     $t7, $zero, .L80AD7884
/* 00130 80AD7870 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00134 80AD7874 0C00B55C */  jal     Actor_Kill

/* 00138 80AD7878 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0013C 80AD787C 1000000A */  beq     $zero, $zero, .L80AD78A8
/* 00140 80AD7880 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
.L80AD7884:
/* 00144 80AD7884 AC388D24 */  sw      $t8, %lo(D_80AD8D24)($at)
/* 00148 80AD7888 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0014C 80AD788C 0C00CE50 */  jal     Actor_SetTextWithPrefix

/* 00150 80AD7890 24060041 */  addiu   $a2, $zero, 0x0041         ## $a2 = 00000041
/* 00154 80AD7894 9619010E */  lhu     $t9, 0x010E($s0)           ## 0000010E
/* 00158 80AD7898 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0015C 80AD789C 0C2B5E43 */  jal     func_80AD790C
/* 00160 80AD78A0 A619019C */  sh      $t9, 0x019C($s0)           ## 0000019C
/* 00164 80AD78A4 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
.L80AD78A8:
/* 00168 80AD78A8 3109003F */  andi    $t1, $t0, 0x003F           ## $t1 = 00000000
/* 0016C 80AD78AC A609001C */  sh      $t1, 0x001C($s0)           ## 0000001C
/* 00170 80AD78B0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00174 80AD78B4 8FB10028 */  lw      $s1, 0x0028($sp)
/* 00178 80AD78B8 8FB00024 */  lw      $s0, 0x0024($sp)
/* 0017C 80AD78BC 03E00008 */  jr      $ra
/* 00180 80AD78C0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
