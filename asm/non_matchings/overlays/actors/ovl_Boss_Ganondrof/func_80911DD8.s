.rdata
glabel D_809151A8
    .asciz "this->fwork[GND_END_FRAME] = %d\n"
    .balign 4

glabel D_809151CC
    .asciz "this->work[GND_SHOT_FRAME] = %d\n"
    .balign 4

.text
glabel func_80911DD8
/* 01798 80911DD8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0179C 80911DDC AFB00038 */  sw      $s0, 0x0038($sp)
/* 017A0 80911DE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 017A4 80911DE4 AFBF003C */  sw      $ra, 0x003C($sp)
/* 017A8 80911DE8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 017AC 80911DEC AFA50054 */  sw      $a1, 0x0054($sp)
/* 017B0 80911DF0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 017B4 80911DF4 AFA40044 */  sw      $a0, 0x0044($sp)
/* 017B8 80911DF8 C60401D0 */  lwc1    $f4, 0x01D0($s0)           ## 000001D0
/* 017BC 80911DFC 3C048091 */  lui     $a0, %hi(D_809151A8)       ## $a0 = 80910000
/* 017C0 80911E00 248451A8 */  addiu   $a0, $a0, %lo(D_809151A8)  ## $a0 = 809151A8
/* 017C4 80911E04 4600218D */  trunc.w.s $f6, $f4
/* 017C8 80911E08 44053000 */  mfc1    $a1, $f6
/* 017CC 80911E0C 00000000 */  nop
/* 017D0 80911E10 00052C00 */  sll     $a1, $a1, 16
/* 017D4 80911E14 0C00084C */  jal     osSyncPrintf

/* 017D8 80911E18 00052C03 */  sra     $a1, $a1, 16
/* 017DC 80911E1C 3C048091 */  lui     $a0, %hi(D_809151CC)       ## $a0 = 80910000
/* 017E0 80911E20 248451CC */  addiu   $a0, $a0, %lo(D_809151CC)  ## $a0 = 809151CC
/* 017E4 80911E24 0C00084C */  jal     osSyncPrintf

/* 017E8 80911E28 860501A4 */  lh      $a1, 0x01A4($s0)           ## 000001A4
/* 017EC 80911E2C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 017F0 80911E30 0C0295B2 */  jal     func_800A56C8
/* 017F4 80911E34 8E0501D0 */  lw      $a1, 0x01D0($s0)           ## 000001D0
/* 017F8 80911E38 10400003 */  beq     $v0, $zero, .L80911E48
/* 017FC 80911E3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01800 80911E40 0C24453A */  jal     func_809114E8
/* 01804 80911E44 3C05C0C0 */  lui     $a1, 0xC0C0                ## $a1 = C0C00000
.L80911E48:
/* 01808 80911E48 860F01A2 */  lh      $t7, 0x01A2($s0)           ## 000001A2
/* 0180C 80911E4C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01810 80911E50 51E00012 */  beql    $t7, $zero, .L80911E9C
/* 01814 80911E54 861901A4 */  lh      $t9, 0x01A4($s0)           ## 000001A4
/* 01818 80911E58 0C0295B2 */  jal     func_800A56C8
/* 0181C 80911E5C 3C0541A8 */  lui     $a1, 0x41A8                ## $a1 = 41A80000
/* 01820 80911E60 1040000D */  beq     $v0, $zero, .L80911E98
/* 01824 80911E64 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01828 80911E68 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0182C 80911E6C 2484F48C */  addiu   $a0, $a0, 0xF48C           ## $a0 = 0600F48C
/* 01830 80911E70 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 01834 80911E74 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01838 80911E78 24A5F48C */  addiu   $a1, $a1, 0xF48C           ## $a1 = 0600F48C
/* 0183C 80911E7C 468042A0 */  cvt.s.w $f10, $f8
/* 01840 80911E80 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01844 80911E84 E60A01D0 */  swc1    $f10, 0x01D0($s0)          ## 000001D0
/* 01848 80911E88 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 0184C 80911E8C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01850 80911E90 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 01854 80911E94 A61801A4 */  sh      $t8, 0x01A4($s0)           ## 000001A4
.L80911E98:
/* 01858 80911E98 861901A4 */  lh      $t9, 0x01A4($s0)           ## 000001A4
.L80911E9C:
/* 0185C 80911E9C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01860 80911EA0 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 01864 80911EA4 00000000 */  nop
/* 01868 80911EA8 46808420 */  cvt.s.w $f16, $f16
/* 0186C 80911EAC 44058000 */  mfc1    $a1, $f16
/* 01870 80911EB0 0C0295B2 */  jal     func_800A56C8
/* 01874 80911EB4 00000000 */  nop
/* 01878 80911EB8 50400011 */  beql    $v0, $zero, .L80911F00
/* 0187C 80911EBC 860901A4 */  lh      $t1, 0x01A4($s0)           ## 000001A4
/* 01880 80911EC0 920801C9 */  lbu     $t0, 0x01C9($s0)           ## 000001C9
/* 01884 80911EC4 240538A6 */  addiu   $a1, $zero, 0x38A6         ## $a1 = 000038A6
/* 01888 80911EC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0188C 80911ECC 29010002 */  slti    $at, $t0, 0x0002
/* 01890 80911ED0 10200005 */  beq     $at, $zero, .L80911EE8
/* 01894 80911ED4 00000000 */  nop
/* 01898 80911ED8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0189C 80911EDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018A0 80911EE0 10000004 */  beq     $zero, $zero, .L80911EF4
/* 018A4 80911EE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80911EE8:
/* 018A8 80911EE8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 018AC 80911EEC 240538A5 */  addiu   $a1, $zero, 0x38A5         ## $a1 = 000038A5
/* 018B0 80911EF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80911EF4:
/* 018B4 80911EF4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 018B8 80911EF8 240538B2 */  addiu   $a1, $zero, 0x38B2         ## $a1 = 000038B2
/* 018BC 80911EFC 860901A4 */  lh      $t1, 0x01A4($s0)           ## 000001A4
.L80911F00:
/* 018C0 80911F00 8FA40044 */  lw      $a0, 0x0044($sp)
/* 018C4 80911F04 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 018C8 80911F08 00000000 */  nop
/* 018CC 80911F0C 468094A0 */  cvt.s.w $f18, $f18
/* 018D0 80911F10 44059000 */  mfc1    $a1, $f18
/* 018D4 80911F14 0C0295B2 */  jal     func_800A56C8
/* 018D8 80911F18 00000000 */  nop
/* 018DC 80911F1C 50400017 */  beql    $v0, $zero, .L80911F7C
/* 018E0 80911F20 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 018E4 80911F24 8E0A011C */  lw      $t2, 0x011C($s0)           ## 0000011C
/* 018E8 80911F28 8FA60054 */  lw      $a2, 0x0054($sp)
/* 018EC 80911F2C 240C0032 */  addiu   $t4, $zero, 0x0032         ## $t4 = 00000032
/* 018F0 80911F30 AFAA004C */  sw      $t2, 0x004C($sp)
/* 018F4 80911F34 C6040200 */  lwc1    $f4, 0x0200($s0)           ## 00000200
/* 018F8 80911F38 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 018FC 80911F3C 2407006D */  addiu   $a3, $zero, 0x006D         ## $a3 = 0000006D
/* 01900 80911F40 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 01904 80911F44 C6060204 */  lwc1    $f6, 0x0204($s0)           ## 00000204
/* 01908 80911F48 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 0190C 80911F4C E7A60014 */  swc1    $f6, 0x0014($sp)
/* 01910 80911F50 C6080208 */  lwc1    $f8, 0x0208($s0)           ## 00000208
/* 01914 80911F54 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01918 80911F58 860B01A2 */  lh      $t3, 0x01A2($s0)           ## 000001A2
/* 0191C 80911F5C AFAC0028 */  sw      $t4, 0x0028($sp)
/* 01920 80911F60 AFA00024 */  sw      $zero, 0x0024($sp)
/* 01924 80911F64 AFA00020 */  sw      $zero, 0x0020($sp)
/* 01928 80911F68 0C00C916 */  jal     Actor_SpawnAsChild

/* 0192C 80911F6C AFAB001C */  sw      $t3, 0x001C($sp)
/* 01930 80911F70 8FAD004C */  lw      $t5, 0x004C($sp)
/* 01934 80911F74 AE0D011C */  sw      $t5, 0x011C($s0)           ## 0000011C
/* 01938 80911F78 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
.L80911F7C:
/* 0193C 80911F7C 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01940 80911F80 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 01944 80911F84 0C01E1EF */  jal     Math_SmoothScaleMaxS

/* 01948 80911F88 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 0194C 80911F8C C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 01950 80911F90 C610005C */  lwc1    $f16, 0x005C($s0)          ## 0000005C
/* 01954 80911F94 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 01958 80911F98 C6060064 */  lwc1    $f6, 0x0064($s0)           ## 00000064
/* 0195C 80911F9C 46105480 */  add.s   $f18, $f10, $f16
/* 01960 80911FA0 2604005C */  addiu   $a0, $s0, 0x005C           ## $a0 = 0000005C
/* 01964 80911FA4 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01968 80911FA8 46062200 */  add.s   $f8, $f4, $f6
/* 0196C 80911FAC E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
/* 01970 80911FB0 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01974 80911FB4 0C01E123 */  jal     Math_SmoothDownscaleMaxF

/* 01978 80911FB8 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
/* 0197C 80911FBC 26040064 */  addiu   $a0, $s0, 0x0064           ## $a0 = 00000064
/* 01980 80911FC0 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01984 80911FC4 0C01E123 */  jal     Math_SmoothDownscaleMaxF

/* 01988 80911FC8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 0198C 80911FCC 86040194 */  lh      $a0, 0x0194($s0)           ## 00000194
/* 01990 80911FD0 00800821 */  addu    $at, $a0, $zero
/* 01994 80911FD4 00042080 */  sll     $a0, $a0,  2
/* 01998 80911FD8 00812023 */  subu    $a0, $a0, $at
/* 0199C 80911FDC 00042100 */  sll     $a0, $a0,  4
/* 019A0 80911FE0 00812023 */  subu    $a0, $a0, $at
/* 019A4 80911FE4 000420C0 */  sll     $a0, $a0,  3
/* 019A8 80911FE8 00812023 */  subu    $a0, $a0, $at
/* 019AC 80911FEC 00042080 */  sll     $a0, $a0,  2
/* 019B0 80911FF0 00042400 */  sll     $a0, $a0, 16
/* 019B4 80911FF4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 019B8 80911FF8 00042403 */  sra     $a0, $a0, 16
/* 019BC 80911FFC 46000400 */  add.s   $f16, $f0, $f0
/* 019C0 80912000 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 019C4 80912004 46105480 */  add.s   $f18, $f10, $f16
/* 019C8 80912008 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 019CC 8091200C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 019D0 80912010 8FB00038 */  lw      $s0, 0x0038($sp)
/* 019D4 80912014 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 019D8 80912018 03E00008 */  jr      $ra
/* 019DC 8091201C 00000000 */  nop
