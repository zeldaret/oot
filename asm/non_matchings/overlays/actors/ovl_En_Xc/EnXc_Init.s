.rdata
glabel D_80B4215C
    .asciz "[31m En_Oa2 の arg_data がおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.late_rodata
glabel jtbl_80B422B0
.word L80B41A48
.word L80B41994
.word L80B419A8
.word L80B419BC
.word L80B419D0
.word L80B419E4
.word L80B419F8
.word L80B41A0C
.word L80B41A20
.word L80B41A34
.word 0x00000000, 0x00000000

.text
glabel EnXc_Init
/* 05720 80B41900 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 05724 80B41904 AFB10028 */  sw      $s1, 0x0028($sp)
/* 05728 80B41908 AFB00024 */  sw      $s0, 0x0024($sp)
/* 0572C 80B4190C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05730 80B41910 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 05734 80B41914 AFBF002C */  sw      $ra, 0x002C($sp)
/* 05738 80B41918 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 0573C 80B4191C 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 05740 80B41920 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 05744 80B41924 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 05748 80B41928 0C00AC78 */  jal     ActorShape_Init

/* 0574C 80B4192C 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 05750 80B41930 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 05754 80B41934 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 05758 80B41938 260E0190 */  addiu   $t6, $s0, 0x0190           ## $t6 = 00000190
/* 0575C 80B4193C 260F01F6 */  addiu   $t7, $s0, 0x01F6           ## $t7 = 000001F6
/* 05760 80B41940 24180011 */  addiu   $t8, $zero, 0x0011         ## $t8 = 00000011
/* 05764 80B41944 AFB80018 */  sw      $t8, 0x0018($sp)
/* 05768 80B41948 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0576C 80B4194C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 05770 80B41950 24E74828 */  addiu   $a3, $a3, 0x4828           ## $a3 = 06004828
/* 05774 80B41954 24C62AF0 */  addiu   $a2, $a2, 0x2AF0           ## $a2 = 06012AF0
/* 05778 80B41958 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0577C 80B4195C 0C0291BE */  jal     SkelAnime_InitSV
/* 05780 80B41960 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 05784 80B41964 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05788 80B41968 0C2CF078 */  jal     func_80B3C1E0
/* 0578C 80B4196C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05790 80B41970 9619001C */  lhu     $t9, 0x001C($s0)           ## 0000001C
/* 05794 80B41974 2F21000A */  sltiu   $at, $t9, 0x000A
/* 05798 80B41978 10200038 */  beq     $at, $zero, .L80B41A5C
/* 0579C 80B4197C 0019C880 */  sll     $t9, $t9,  2
/* 057A0 80B41980 3C0180B4 */  lui     $at, %hi(jtbl_80B422B0)       ## $at = 80B40000
/* 057A4 80B41984 00390821 */  addu    $at, $at, $t9
/* 057A8 80B41988 8C3922B0 */  lw      $t9, %lo(jtbl_80B422B0)($at)
/* 057AC 80B4198C 03200008 */  jr      $t9
/* 057B0 80B41990 00000000 */  nop
glabel L80B41994
/* 057B4 80B41994 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 057B8 80B41998 0C2CFAFC */  jal     func_80B3EBF0
/* 057BC 80B4199C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 057C0 80B419A0 10000035 */  beq     $zero, $zero, .L80B41A78
/* 057C4 80B419A4 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80B419A8
/* 057C8 80B419A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 057CC 80B419AC 0C2CFB99 */  jal     func_80B3EE64
/* 057D0 80B419B0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 057D4 80B419B4 10000030 */  beq     $zero, $zero, .L80B41A78
/* 057D8 80B419B8 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80B419BC
/* 057DC 80B419BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 057E0 80B419C0 0C2CFCF2 */  jal     func_80B3F3C8
/* 057E4 80B419C4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 057E8 80B419C8 1000002B */  beq     $zero, $zero, .L80B41A78
/* 057EC 80B419CC 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80B419D0
/* 057F0 80B419D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 057F4 80B419D4 0C2CFE82 */  jal     func_80B3FA08
/* 057F8 80B419D8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 057FC 80B419DC 10000026 */  beq     $zero, $zero, .L80B41A78
/* 05800 80B419E0 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80B419E4
/* 05804 80B419E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05808 80B419E8 0C2D0164 */  jal     func_80B40590
/* 0580C 80B419EC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05810 80B419F0 10000021 */  beq     $zero, $zero, .L80B41A78
/* 05814 80B419F4 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80B419F8
/* 05818 80B419F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0581C 80B419FC 0C2CF28E */  jal     func_80B3CA38
/* 05820 80B41A00 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05824 80B41A04 1000001C */  beq     $zero, $zero, .L80B41A78
/* 05828 80B41A08 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80B41A0C
/* 0582C 80B41A0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05830 80B41A10 0C2CF2D6 */  jal     func_80B3CB58
/* 05834 80B41A14 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05838 80B41A18 10000017 */  beq     $zero, $zero, .L80B41A78
/* 0583C 80B41A1C 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80B41A20
/* 05840 80B41A20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05844 80B41A24 0C2CF340 */  jal     func_80B3CD00
/* 05848 80B41A28 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0584C 80B41A2C 10000012 */  beq     $zero, $zero, .L80B41A78
/* 05850 80B41A30 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80B41A34
/* 05854 80B41A34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05858 80B41A38 0C2D056E */  jal     func_80B415B8
/* 0585C 80B41A3C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05860 80B41A40 1000000D */  beq     $zero, $zero, .L80B41A78
/* 05864 80B41A44 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80B41A48
/* 05868 80B41A48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0586C 80B41A4C 0C2CF39E */  jal     func_80B3CE78
/* 05870 80B41A50 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05874 80B41A54 10000008 */  beq     $zero, $zero, .L80B41A78
/* 05878 80B41A58 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B41A5C:
/* 0587C 80B41A5C 3C0480B4 */  lui     $a0, %hi(D_80B4215C)       ## $a0 = 80B40000
/* 05880 80B41A60 0C00084C */  jal     osSyncPrintf

/* 05884 80B41A64 2484215C */  addiu   $a0, $a0, %lo(D_80B4215C)  ## $a0 = 80B4215C
/* 05888 80B41A68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0588C 80B41A6C 0C2CF39E */  jal     func_80B3CE78
/* 05890 80B41A70 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05894 80B41A74 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B41A78:
/* 05898 80B41A78 8FB00024 */  lw      $s0, 0x0024($sp)
/* 0589C 80B41A7C 8FB10028 */  lw      $s1, 0x0028($sp)
/* 058A0 80B41A80 03E00008 */  jr      $ra
/* 058A4 80B41A84 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
