.rdata

glabel D_80144D50
    .asciz "../game.c"
    .balign 4

glabel D_80144D5C
    .asciz "ハイラル滅亡まであと %08x バイト(game_alloc)\n"
    # EUC-JP: ハイラル滅亡まであと %08x バイト(game_alloc) | % 08x bytes (game_alloc) remaining until Hailal's demise
    .balign 4

glabel D_80144D8C
    .asciz "../game.c"
    .balign 4

.text
glabel GameState_Draw
/* B3B88C 800C46EC 27BDFF80 */  addiu $sp, $sp, -0x80
/* B3B890 800C46F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3B894 800C46F4 AFA40080 */  sw    $a0, 0x80($sp)
/* B3B898 800C46F8 3C068014 */  lui   $a2, %hi(D_80144D50) # $a2, 0x8014
/* B3B89C 800C46FC AFA50084 */  sw    $a1, 0x84($sp)
/* B3B8A0 800C4700 24C64D50 */  addiu $a2, %lo(D_80144D50) # addiu $a2, $a2, 0x4d50
/* B3B8A4 800C4704 27A40064 */  addiu $a0, $sp, 0x64
/* B3B8A8 800C4708 0C031AB1 */  jal   Graph_OpenDisps
/* B3B8AC 800C470C 240702EA */   li    $a3, 746
/* B3B8B0 800C4710 8FAE0084 */  lw    $t6, 0x84($sp)
/* B3B8B4 800C4714 8DC402C0 */  lw    $a0, 0x2c0($t6)
/* B3B8B8 800C4718 0C031B08 */  jal   Graph_GfxPlusOne
/* B3B8BC 800C471C AFA40078 */   sw    $a0, 0x78($sp)
/* B3B8C0 800C4720 8FAF0084 */  lw    $t7, 0x84($sp)
/* B3B8C4 800C4724 AFA2007C */  sw    $v0, 0x7c($sp)
/* B3B8C8 800C4728 3C19DE00 */  lui   $t9, 0xde00
/* B3B8CC 800C472C 8DE302B0 */  lw    $v1, 0x2b0($t7)
/* B3B8D0 800C4730 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3B8D4 800C4734 24010001 */  li    $at, 1
/* B3B8D8 800C4738 24780008 */  addiu $t8, $v1, 8
/* B3B8DC 800C473C ADF802B0 */  sw    $t8, 0x2b0($t7)
/* B3B8E0 800C4740 AC790000 */  sw    $t9, ($v1)
/* B3B8E4 800C4744 8FA8007C */  lw    $t0, 0x7c($sp)
/* B3B8E8 800C4748 AC680004 */  sw    $t0, 4($v1)
/* B3B8EC 800C474C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3B8F0 800C4750 84490184 */  lh    $t1, 0x184($v0)
/* B3B8F4 800C4754 55210006 */  bnel  $t1, $at, .L800C4770
/* B3B8F8 800C4758 8FAA0080 */   lw    $t2, 0x80($sp)
/* B3B8FC 800C475C 0C03107C */  jal   GameState_SetFBFilter
/* B3B900 800C4760 27A4007C */   addiu $a0, $sp, 0x7c
/* B3B904 800C4764 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3B908 800C4768 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3B90C 800C476C 8FAA0080 */  lw    $t2, 0x80($sp)
.L800C4770:
/* B3B910 800C4770 3C038016 */  lui   $v1, %hi(sLastButtonPressed) # $v1, 0x8016
/* B3B914 800C4774 246365C0 */  addiu $v1, %lo(sLastButtonPressed) # addiu $v1, $v1, 0x65c0
/* B3B918 800C4778 954B0014 */  lhu   $t3, 0x14($t2)
/* B3B91C 800C477C 954C0020 */  lhu   $t4, 0x20($t2)
/* B3B920 800C4780 016C6825 */  or    $t5, $t3, $t4
/* B3B924 800C4784 A46D0000 */  sh    $t5, ($v1)
/* B3B928 800C4788 844E1032 */  lh    $t6, 0x1032($v0)
/* B3B92C 800C478C 31A4FFFF */  andi  $a0, $t5, 0xffff
/* B3B930 800C4790 55C00006 */  bnezl $t6, .L800C47AC
/* B3B934 800C4794 8458011C */   lh    $t8, 0x11c($v0)
/* B3B938 800C4798 0C031156 */  jal   GameState_DrawInputDisplay
/* B3B93C 800C479C 27A5007C */   addiu $a1, $sp, 0x7c
/* B3B940 800C47A0 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3B944 800C47A4 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3B948 800C47A8 8458011C */  lh    $t8, 0x11c($v0)
.L800C47AC:
/* B3B94C 800C47AC 330F0001 */  andi  $t7, $t8, 1
/* B3B950 800C47B0 51E00010 */  beql  $t7, $zero, .L800C47F4
/* B3B954 800C47B4 845900D4 */   lh    $t9, 0xd4($v0)
/* B3B958 800C47B8 0C03EEE3 */  jal   GfxPrint_Ctor
/* B3B95C 800C47BC 27A4002C */   addiu $a0, $sp, 0x2c
/* B3B960 800C47C0 27A4002C */  addiu $a0, $sp, 0x2c
/* B3B964 800C47C4 0C03EF07 */  jal   GfxPrint_Open
/* B3B968 800C47C8 8FA5007C */   lw    $a1, 0x7c($sp)
/* B3B96C 800C47CC 0C03BA94 */  jal   func_800EEA50
/* B3B970 800C47D0 27A4002C */   addiu $a0, $sp, 0x2c
/* B3B974 800C47D4 0C03EF19 */  jal   GfxPrint_Close
/* B3B978 800C47D8 27A4002C */   addiu $a0, $sp, 0x2c
/* B3B97C 800C47DC AFA2007C */  sw    $v0, 0x7c($sp)
/* B3B980 800C47E0 0C03EF05 */  jal   GfxPrint_Dtor
/* B3B984 800C47E4 27A4002C */   addiu $a0, $sp, 0x2c
/* B3B988 800C47E8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3B98C 800C47EC 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3B990 800C47F0 845900D4 */  lh    $t9, 0xd4($v0)
.L800C47F4:
/* B3B994 800C47F4 07230010 */  bgezl $t9, .L800C4838
/* B3B998 800C47F8 8FA9007C */   lw    $t1, 0x7c($sp)
/* B3B99C 800C47FC 0C034F7E */  jal   DebugArena_Display
/* B3B9A0 800C4800 00000000 */   nop
/* B3B9A4 800C4804 0C03F616 */  jal   SystemArena_Display
/* B3B9A8 800C4808 00000000 */   nop
/* B3B9AC 800C480C 8FA40080 */  lw    $a0, 0x80($sp)
/* B3B9B0 800C4810 0C030EE2 */  jal   THA_GetSize
/* B3B9B4 800C4814 24840074 */   addiu $a0, $a0, 0x74
/* B3B9B8 800C4818 3C048014 */  lui   $a0, %hi(D_80144D5C) # $a0, 0x8014
/* B3B9BC 800C481C 24844D5C */  addiu $a0, %lo(D_80144D5C) # addiu $a0, $a0, 0x4d5c
/* B3B9C0 800C4820 0C00084C */  jal   osSyncPrintf
/* B3B9C4 800C4824 00402825 */   move  $a1, $v0
/* B3B9C8 800C4828 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B3B9CC 800C482C 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* B3B9D0 800C4830 A50000D4 */  sh    $zero, 0xd4($t0)
/* B3B9D4 800C4834 8FA9007C */  lw    $t1, 0x7c($sp)
.L800C4838:
/* B3B9D8 800C4838 3C0BDF00 */  lui   $t3, 0xdf00
/* B3B9DC 800C483C 252A0008 */  addiu $t2, $t1, 8
/* B3B9E0 800C4840 AFAA007C */  sw    $t2, 0x7c($sp)
/* B3B9E4 800C4844 AD200004 */  sw    $zero, 4($t1)
/* B3B9E8 800C4848 AD2B0000 */  sw    $t3, ($t1)
/* B3B9EC 800C484C 8FA5007C */  lw    $a1, 0x7c($sp)
/* B3B9F0 800C4850 0C031B0A */  jal   Graph_BranchDlist
/* B3B9F4 800C4854 8FA40078 */   lw    $a0, 0x78($sp)
/* B3B9F8 800C4858 8FAC007C */  lw    $t4, 0x7c($sp)
/* B3B9FC 800C485C 8FAD0084 */  lw    $t5, 0x84($sp)
/* B3BA00 800C4860 3C068014 */  lui   $a2, %hi(D_80144D8C) # $a2, 0x8014
/* B3BA04 800C4864 24C64D8C */  addiu $a2, %lo(D_80144D8C) # addiu $a2, $a2, 0x4d8c
/* B3BA08 800C4868 ADAC02C0 */  sw    $t4, 0x2c0($t5)
/* B3BA0C 800C486C 8FA50084 */  lw    $a1, 0x84($sp)
/* B3BA10 800C4870 27A40064 */  addiu $a0, $sp, 0x64
/* B3BA14 800C4874 0C031AD5 */  jal   Graph_CloseDisps
/* B3BA18 800C4878 24070320 */   li    $a3, 800
/* B3BA1C 800C487C 0C018F5F */  jal   func_80063D7C
/* B3BA20 800C4880 8FA40084 */   lw    $a0, 0x84($sp)
/* B3BA24 800C4884 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B3BA28 800C4888 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B3BA2C 800C488C 3C048016 */  lui   $a0, %hi(D_801664D0) # $a0, 0x8016
/* B3BA30 800C4890 248464D0 */  addiu $a0, %lo(D_801664D0) # addiu $a0, $a0, 0x64d0
/* B3BA34 800C4894 85D800D4 */  lh    $t8, 0xd4($t6)
/* B3BA38 800C4898 53000009 */  beql  $t8, $zero, .L800C48C0
/* B3BA3C 800C489C 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3BA40 800C48A0 0C032671 */  jal   SpeedMeter_DrawTimeEntries
/* B3BA44 800C48A4 8FA50084 */   lw    $a1, 0x84($sp)
/* B3BA48 800C48A8 3C048016 */  lui   $a0, %hi(D_801664D0) # $a0, 0x8016
/* B3BA4C 800C48AC 248464D0 */  addiu $a0, %lo(D_801664D0) # addiu $a0, $a0, 0x64d0
/* B3BA50 800C48B0 8FA50084 */  lw    $a1, 0x84($sp)
/* B3BA54 800C48B4 0C032841 */  jal   SpeedMeter_DrawAllocEntries
/* B3BA58 800C48B8 8FA60080 */   lw    $a2, 0x80($sp)
/* B3BA5C 800C48BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C48C0:
/* B3BA60 800C48C0 27BD0080 */  addiu $sp, $sp, 0x80
/* B3BA64 800C48C4 03E00008 */  jr    $ra
/* B3BA68 800C48C8 00000000 */   nop
