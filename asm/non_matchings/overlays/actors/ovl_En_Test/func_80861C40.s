glabel func_80861C40
/* 025F0 80861C40 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 025F4 80861C44 AFB00018 */  sw      $s0, 0x0018($sp)
/* 025F8 80861C48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 025FC 80861C4C AFBF001C */  sw      $ra, 0x001C($sp)
/* 02600 80861C50 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 02604 80861C54 AFA5002C */  sw      $a1, 0x002C($sp)
/* 02608 80861C58 0C02927F */  jal     Animation_Update

/* 0260C 80861C5C AFA40024 */  sw      $a0, 0x0024($sp)
/* 02610 80861C60 10400016 */  beq     $v0, $zero, .L80861CBC
/* 02614 80861C64 8FA40024 */  lw      $a0, 0x0024($sp)
/* 02618 80861C68 8E0E07E8 */  lw      $t6, 0x07E8($s0)           ## 000007E8
/* 0261C 80861C6C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02620 80861C70 55C0000F */  bnel    $t6, $zero, .L80861CB0
/* 02624 80861C74 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02628 80861C78 0C02947A */  jal     Animation_PlayOnce
/* 0262C 80861C7C 24A5A99C */  addiu   $a1, $a1, 0xA99C           ## $a1 = 0600A99C
/* 02630 80861C80 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02634 80861C84 AE0207E8 */  sw      $v0, 0x07E8($s0)           ## 000007E8
/* 02638 80861C88 A2020808 */  sb      $v0, 0x0808($s0)           ## 00000808
/* 0263C 80861C8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02640 80861C90 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02644 80861C94 24053839 */  addiu   $a1, $zero, 0x3839         ## $a1 = 00003839
/* 02648 80861C98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0264C 80861C9C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02650 80861CA0 2405386C */  addiu   $a1, $zero, 0x386C         ## $a1 = 0000386C
/* 02654 80861CA4 10000006 */  beq     $zero, $zero, .L80861CC0
/* 02658 80861CA8 8E0F07E8 */  lw      $t7, 0x07E8($s0)           ## 000007E8
/* 0265C 80861CAC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
.L80861CB0:
/* 02660 80861CB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02664 80861CB4 0C21801A */  jal     func_80860068
/* 02668 80861CB8 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80861CBC:
/* 0266C 80861CBC 8E0F07E8 */  lw      $t7, 0x07E8($s0)           ## 000007E8
.L80861CC0:
/* 02670 80861CC0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02674 80861CC4 51E0000A */  beql    $t7, $zero, .L80861CF0
/* 02678 80861CC8 C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
/* 0267C 80861CCC C60601A0 */  lwc1    $f6, 0x01A0($s0)           ## 000001A0
/* 02680 80861CD0 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 02684 80861CD4 00000000 */  nop
/* 02688 80861CD8 4606403E */  c.le.s  $f8, $f6
/* 0268C 80861CDC 00000000 */  nop
/* 02690 80861CE0 45020003 */  bc1fl   .L80861CF0
/* 02694 80861CE4 C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
/* 02698 80861CE8 A2000808 */  sb      $zero, 0x0808($s0)         ## 00000808
/* 0269C 80861CEC C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
.L80861CF0:
/* 026A0 80861CF0 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 026A4 80861CF4 4600503E */  c.le.s  $f10, $f0
/* 026A8 80861CF8 00000000 */  nop
/* 026AC 80861CFC 45020010 */  bc1fl   .L80861D40
/* 026B0 80861D00 8FBF001C */  lw      $ra, 0x001C($sp)
/* 026B4 80861D04 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 026B8 80861D08 C6100068 */  lwc1    $f16, 0x0068($s0)          ## 00000068
/* 026BC 80861D0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026C0 80861D10 46101032 */  c.eq.s  $f2, $f16
/* 026C4 80861D14 00000000 */  nop
/* 026C8 80861D18 45030006 */  bc1tl   .L80861D34
/* 026CC 80861D1C E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
/* 026D0 80861D20 0C00BE0A */  jal     Audio_PlayActorSound2

/* 026D4 80861D24 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 026D8 80861D28 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 026DC 80861D2C C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
/* 026E0 80861D30 E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
.L80861D34:
/* 026E4 80861D34 E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 026E8 80861D38 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 026EC 80861D3C 8FBF001C */  lw      $ra, 0x001C($sp)
.L80861D40:
/* 026F0 80861D40 8FB00018 */  lw      $s0, 0x0018($sp)
/* 026F4 80861D44 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 026F8 80861D48 03E00008 */  jr      $ra
/* 026FC 80861D4C 00000000 */  nop
