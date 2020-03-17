.rdata
glabel D_8013E8B0
    .asciz "../z_player_lib.c"
    .balign 4

glabel D_8013E8C4
    .asciz "../z_player_lib.c"
    .balign 4

.text
glabel func_80091738
/* B088D8 80091738 3C028016 */  lui   $v0, %hi(gSaveContext+4) # $v0, 0x8016
/* B088DC 8009173C 8C42E664 */  lw    $v0, %lo(gSaveContext+4)($v0)
/* B088E0 80091740 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B088E4 80091744 3C038012 */  lui   $v1, %hi(gObjectTable) # $v1, 0x8012
/* B088E8 80091748 24637528 */  addiu $v1, %lo(gObjectTable) # addiu $v1, $v1, 0x7528
/* B088EC 8009174C AFA5004C */  sw    $a1, 0x4c($sp)
/* B088F0 80091750 3C0F8012 */  lui   $t7, %hi(gLinkObjectIds)
/* B088F4 80091754 00027040 */  sll   $t6, $v0, 1
/* B088F8 80091758 AFA40048 */  sw    $a0, 0x48($sp)
/* B088FC 8009175C 01EE7821 */  addu  $t7, $t7, $t6
/* B08900 80091760 85EF7520 */  lh    $t7, %lo(gLinkObjectIds)($t7)
/* B08904 80091764 8C650008 */  lw    $a1, 8($v1)
/* B08908 80091768 8C78000C */  lw    $t8, 0xc($v1)
/* B0890C 8009176C 8FA4004C */  lw    $a0, 0x4c($sp)
/* B08910 80091770 AFBF002C */  sw    $ra, 0x2c($sp)
/* B08914 80091774 AFA60050 */  sw    $a2, 0x50($sp)
/* B08918 80091778 3C078014 */  lui   $a3, %hi(D_8013E8B0) # $a3, 0x8014
/* B0891C 8009177C 24190BA6 */  li    $t9, 2982
/* B08920 80091780 AFB00028 */  sw    $s0, 0x28($sp)
/* B08924 80091784 AFB90010 */  sw    $t9, 0x10($sp)
/* B08928 80091788 24E7E8B0 */  addiu $a3, %lo(D_8013E8B0) # addiu $a3, $a3, -0x1750
/* B0892C 8009178C A7AF0046 */  sh    $t7, 0x46($sp)
/* B08930 80091790 03053023 */  subu  $a2, $t8, $a1
/* B08934 80091794 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B08938 80091798 24843800 */   addiu $a0, $a0, 0x3800
/* B0893C 8009179C 87AA0046 */  lh    $t2, 0x46($sp)
/* B08940 800917A0 3C0C8012 */  lui   $t4, %hi(gObjectTable) # $t4, 0x8012
/* B08944 800917A4 258C7528 */  addiu $t4, %lo(gObjectTable) # addiu $t4, $t4, 0x7528
/* B08948 800917A8 000A58C0 */  sll   $t3, $t2, 3
/* B0894C 800917AC 016C1021 */  addu  $v0, $t3, $t4
/* B08950 800917B0 8C450000 */  lw    $a1, ($v0)
/* B08954 800917B4 8C4D0004 */  lw    $t5, 4($v0)
/* B08958 800917B8 8FA4004C */  lw    $a0, 0x4c($sp)
/* B0895C 800917BC 34018800 */  li    $at, 34816
/* B08960 800917C0 3C078014 */  lui   $a3, %hi(D_8013E8C4) # $a3, 0x8014
/* B08964 800917C4 240E0BAC */  li    $t6, 2988
/* B08968 800917C8 01A58023 */  subu  $s0, $t5, $a1
/* B0896C 800917CC 00812021 */  addu  $a0, $a0, $at
/* B08970 800917D0 AFA40034 */  sw    $a0, 0x34($sp)
/* B08974 800917D4 02003025 */  move  $a2, $s0
/* B08978 800917D8 AFAE0010 */  sw    $t6, 0x10($sp)
/* B0897C 800917DC 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B08980 800917E0 24E7E8C4 */   addiu $a3, %lo(D_8013E8C4) # addiu $a3, $a3, -0x173c
/* B08984 800917E4 8FAF0034 */  lw    $t7, 0x34($sp)
/* B08988 800917E8 2401FFF0 */  li    $at, -16
/* B0898C 800917EC 8FA9004C */  lw    $t1, 0x4c($sp)
/* B08990 800917F0 01F01821 */  addu  $v1, $t7, $s0
/* B08994 800917F4 2463000F */  addiu $v1, $v1, 0xf
/* B08998 800917F8 00611824 */  and   $v1, $v1, $at
/* B0899C 800917FC 3C018000 */  lui   $at, (0x80003800 >> 16) # lui $at, 0x8000
/* B089A0 80091800 34213800 */  ori   $at, (0x80003800 & 0xFFFF) # ori $at, $at, 0x3800
/* B089A4 80091804 0121C021 */  addu  $t8, $t1, $at
/* B089A8 80091808 3C088016 */  lui   $t0, %hi(gSegments) # $t0, 0x8016
/* B089AC 8009180C 3C018000 */  lui   $at, (0x80008800 >> 16) # lui $at, 0x8000
/* B089B0 80091810 25086FA8 */  addiu $t0, %lo(gSegments) # addiu $t0, $t0, 0x6fa8
/* B089B4 80091814 34218800 */  ori   $at, (0x80008800 & 0xFFFF) # ori $at, $at, 0x8800
/* B089B8 80091818 0121C821 */  addu  $t9, $t1, $at
/* B089BC 8009181C AD180010 */  sw    $t8, 0x10($t0)
/* B089C0 80091820 AD190018 */  sw    $t9, 0x18($t0)
/* B089C4 80091824 3C028016 */  lui   $v0, %hi(gSaveContext+4) # $v0, 0x8016
/* B089C8 80091828 8C42E664 */  lw    $v0, %lo(gSaveContext+4)($v0)
/* B089CC 8009182C 3C068012 */  lui   $a2, %hi(D_80125B70)
/* B089D0 80091830 3C070400 */  lui   $a3, %hi(D_04003238) # $a3, 0x400
/* B089D4 80091834 00025080 */  sll   $t2, $v0, 2
/* B089D8 80091838 00CA3021 */  addu  $a2, $a2, $t2
/* B089DC 8009183C 240B0009 */  li    $t3, 9
/* B089E0 80091840 240C0016 */  li    $t4, 22
/* B089E4 80091844 AFAC001C */  sw    $t4, 0x1c($sp)
/* B089E8 80091848 AFAB0010 */  sw    $t3, 0x10($sp)
/* B089EC 8009184C 8CC65B70 */  lw    $a2, %lo(D_80125B70)($a2)
/* B089F0 80091850 24E73238 */  addiu $a3, %lo(D_04003238) # addiu $a3, $a3, 0x3238
/* B089F4 80091854 AFA30014 */  sw    $v1, 0x14($sp)
/* B089F8 80091858 AFA30018 */  sw    $v1, 0x18($sp)
/* B089FC 8009185C 8FA40048 */  lw    $a0, 0x48($sp)
/* B08A00 80091860 0C028E6B */  jal   func_800A39AC
/* B08A04 80091864 8FA50050 */   lw    $a1, 0x50($sp)
/* B08A08 80091868 8FBF002C */  lw    $ra, 0x2c($sp)
/* B08A0C 8009186C 34018890 */  li    $at, 34960
/* B08A10 80091870 02011021 */  addu  $v0, $s0, $at
/* B08A14 80091874 8FB00028 */  lw    $s0, 0x28($sp)
/* B08A18 80091878 03E00008 */  jr    $ra
/* B08A1C 8009187C 27BD0048 */   addiu $sp, $sp, 0x48

