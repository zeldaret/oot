.rdata
glabel D_80140850
    .asciz "個人Ｆｉｌｅ作成\n"
    # EUC-JP: 個人Ｆｉｌｅ作成 | Create personal file
    .balign 4

glabel D_80140864
    .asciz "ぽいんと＝%x(%d)\n"
    # EUC-JP: ぽいんと＝ | Point=
    .balign 4

glabel D_80140878
    .asciz "\x1b[33m"
    .balign 4

glabel D_80140880
    .asciz "SCENE_DATA_ID = %d   SceneNo = %d\n"
    .balign 4

glabel D_801408A4
    .asciz "scene_no = %d\n"
    .balign 4

glabel D_801408B4
    .asciz "\x1b[m"
    .balign 4

glabel D_801408B8
    .asciz "\x1b[34m"
    .balign 4

glabel D_801408C0
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_80140908
    .asciz "%d, "
    .balign 4

glabel D_80140910
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_80140958
    .asciz "\x1b[m"
    .balign 4

glabel D_8014095C
    .asciz "\x1b[32m"
    .balign 4

glabel D_80140964
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_801409AC
    .asciz "%d, "
    .balign 4

glabel D_801409B4
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_801409FC
    .asciz "\x1b[m"
    .balign 4

.late_rodata
glabel jtbl_80140FB8
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A85C0
    .word L800A85C0
    .word L800A85CC
    .word L800A8564
    .word L800A856C
    .word L800A8578
    .word L800A8584
    .word L800A8590
    .word L800A859C
    .word L800A85A8
    .word L800A85B4
    .word L800A85C0
    .word L800A85C0

.text
glabel Sram_OpenSave
/* B1F624 800A8484 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1F628 800A8488 AFB00014 */  sw    $s0, 0x14($sp)
/* B1F62C 800A848C 00808025 */  move  $s0, $a0
/* B1F630 800A8490 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1F634 800A8494 3C048014 */  lui   $a0, %hi(D_80140850) # $a0, 0x8014
/* B1F638 800A8498 AFB10018 */  sw    $s1, 0x18($sp)
/* B1F63C 800A849C 0C00084C */  jal   osSyncPrintf
/* B1F640 800A84A0 24840850 */   addiu $a0, %lo(D_80140850) # addiu $a0, $a0, 0x850
/* B1F644 800A84A4 3C118016 */  lui   $s1, %hi(gSaveContext) # $s1, 0x8016
/* B1F648 800A84A8 2631E660 */  addiu $s1, %lo(gSaveContext) # addiu $s1, $s1, -0x19a0
/* B1F64C 800A84AC 8E261354 */  lw    $a2, 0x1354($s1)
/* B1F650 800A84B0 3C078013 */  lui   $a3, %hi(gSramSlotOffsets)
/* B1F654 800A84B4 3C048014 */  lui   $a0, %hi(D_80140864) # $a0, 0x8014
/* B1F658 800A84B8 00067040 */  sll   $t6, $a2, 1
/* B1F65C 800A84BC 00EE3821 */  addu  $a3, $a3, $t6
/* B1F660 800A84C0 94E5A4E0 */  lhu   $a1, %lo(gSramSlotOffsets)($a3)
/* B1F664 800A84C4 24840864 */  addiu $a0, %lo(D_80140864) # addiu $a0, $a0, 0x864
/* B1F668 800A84C8 0C00084C */  jal   osSyncPrintf
/* B1F66C 800A84CC A7A50026 */   sh    $a1, 0x26($sp)
/* B1F670 800A84D0 97A70026 */  lhu   $a3, 0x26($sp)
/* B1F674 800A84D4 8E0F0000 */  lw    $t7, ($s0)
/* B1F678 800A84D8 02202025 */  move  $a0, $s1
/* B1F67C 800A84DC 24061354 */  li    $a2, 4948
/* B1F680 800A84E0 0C01A508 */  jal   MemCopy
/* B1F684 800A84E4 01E72821 */   addu  $a1, $t7, $a3
/* B1F688 800A84E8 3C048014 */  lui   $a0, %hi(D_80140878) # $a0, 0x8014
/* B1F68C 800A84EC 0C00084C */  jal   osSyncPrintf
/* B1F690 800A84F0 24840878 */   addiu $a0, %lo(D_80140878) # addiu $a0, $a0, 0x878
/* B1F694 800A84F4 3C048014 */  lui   $a0, %hi(D_80140880) # $a0, 0x8014
/* B1F698 800A84F8 24840880 */  addiu $a0, %lo(D_80140880) # addiu $a0, $a0, 0x880
/* B1F69C 800A84FC 8E260000 */  lw    $a2, ($s1)
/* B1F6A0 800A8500 0C00084C */  jal   osSyncPrintf
/* B1F6A4 800A8504 86250066 */   lh    $a1, 0x66($s1)
/* B1F6A8 800A8508 86220066 */  lh    $v0, 0x66($s1)
/* B1F6AC 800A850C 2841001B */  slti  $at, $v0, 0x1b
/* B1F6B0 800A8510 14200006 */  bnez  $at, .L800A852C
/* B1F6B4 800A8514 00408025 */   move  $s0, $v0
/* B1F6B8 800A8518 2401004F */  li    $at, 79
/* B1F6BC 800A851C 52010029 */  beql  $s0, $at, .L800A85C4
/* B1F6C0 800A8520 240E041B */   li    $t6, 1051
/* B1F6C4 800A8524 1000002A */  b     .L800A85D0
/* B1F6C8 800A8528 24010034 */   li    $at, 52
.L800A852C:
/* B1F6CC 800A852C 2E01001B */  sltiu $at, $s0, 0x1b
/* B1F6D0 800A8530 10200026 */  beqz  $at, .L800A85CC
/* B1F6D4 800A8534 0010C080 */   sll   $t8, $s0, 2
/* B1F6D8 800A8538 3C018014 */  lui   $at, %hi(jtbl_80140FB8)
/* B1F6DC 800A853C 00380821 */  addu  $at, $at, $t8
/* B1F6E0 800A8540 8C380FB8 */  lw    $t8, %lo(jtbl_80140FB8)($at)
/* B1F6E4 800A8544 03000008 */  jr    $t8
/* B1F6E8 800A8548 00000000 */   nop   

glabel L800A854C
/* B1F6EC 800A854C 0002C840 */  sll   $t9, $v0, 1
/* B1F6F0 800A8550 3C0C8013 */  lui   $t4, %hi(dungeonEntrances)
/* B1F6F4 800A8554 01996021 */  addu  $t4, $t4, $t9
/* B1F6F8 800A8558 858CA670 */  lh    $t4, %lo(dungeonEntrances)($t4)
/* B1F6FC 800A855C 1000002C */  b     .L800A8610
/* B1F700 800A8560 AE2C0000 */   sw    $t4, ($s1)

glabel L800A8564
/* B1F704 800A8564 1000002A */  b     .L800A8610
/* B1F708 800A8568 AE200000 */   sw    $zero, ($s1)


glabel L800A856C
/* B1F70C 800A856C 240D0004 */  li    $t5, 4
/* B1F710 800A8570 10000027 */  b     .L800A8610
/* B1F714 800A8574 AE2D0000 */   sw    $t5, ($s1)

glabel L800A8578
/* B1F718 800A8578 240E0028 */  li    $t6, 40
/* B1F71C 800A857C 10000024 */  b     .L800A8610
/* B1F720 800A8580 AE2E0000 */   sw    $t6, ($s1)

glabel L800A8584
/* B1F724 800A8584 240F0169 */  li    $t7, 361
/* B1F728 800A8588 10000021 */  b     .L800A8610
/* B1F72C 800A858C AE2F0000 */   sw    $t7, ($s1)

glabel L800A8590
/* B1F730 800A8590 24180165 */  li    $t8, 357
/* B1F734 800A8594 1000001E */  b     .L800A8610
/* B1F738 800A8598 AE380000 */   sw    $t8, ($s1)

glabel L800A859C
/* B1F73C 800A859C 24190010 */  li    $t9, 16
/* B1F740 800A85A0 1000001B */  b     .L800A8610
/* B1F744 800A85A4 AE390000 */   sw    $t9, ($s1)

glabel L800A85A8
/* B1F748 800A85A8 240C0082 */  li    $t4, 130
/* B1F74C 800A85AC 10000018 */  b     .L800A8610
/* B1F750 800A85B0 AE2C0000 */   sw    $t4, ($s1)

glabel L800A85B4
/* B1F754 800A85B4 240D0037 */  li    $t5, 55
/* B1F758 800A85B8 10000015 */  b     .L800A8610
/* B1F75C 800A85BC AE2D0000 */   sw    $t5, ($s1)

glabel L800A85C0
/* B1F760 800A85C0 240E041B */  li    $t6, 1051
.L800A85C4:
/* B1F764 800A85C4 10000012 */  b     .L800A8610
/* B1F768 800A85C8 AE2E0000 */   sw    $t6, ($s1)

.L800A85CC:
glabel L800A85CC
/* B1F76C 800A85CC 24010034 */  li    $at, 52
.L800A85D0:
/* B1F770 800A85D0 1041000E */  beq   $v0, $at, .L800A860C
/* B1F774 800A85D4 240C00BB */   li    $t4, 187
/* B1F778 800A85D8 8E2F0004 */  lw    $t7, 4($s1)
/* B1F77C 800A85DC 24010005 */  li    $at, 5
/* B1F780 800A85E0 24100011 */  li    $s0, 17
/* B1F784 800A85E4 11E00003 */  beqz  $t7, .L800A85F4
/* B1F788 800A85E8 241905F4 */   li    $t9, 1524
/* B1F78C 800A85EC 10000001 */  b     .L800A85F4
/* B1F790 800A85F0 24100005 */   li    $s0, 5
.L800A85F4:
/* B1F794 800A85F4 16010003 */  bne   $s0, $at, .L800A8604
/* B1F798 800A85F8 241800BB */   li    $t8, 187
/* B1F79C 800A85FC 10000004 */  b     .L800A8610
/* B1F7A0 800A8600 AE380000 */   sw    $t8, ($s1)
.L800A8604:
/* B1F7A4 800A8604 10000002 */  b     .L800A8610
/* B1F7A8 800A8608 AE390000 */   sw    $t9, ($s1)
.L800A860C:
/* B1F7AC 800A860C AE2C0000 */  sw    $t4, ($s1)
.L800A8610:
/* B1F7B0 800A8610 3C048014 */  lui   $a0, %hi(D_801408A4) # $a0, 0x8014
/* B1F7B4 800A8614 248408A4 */  addiu $a0, %lo(D_801408A4) # addiu $a0, $a0, 0x8a4
/* B1F7B8 800A8618 0C00084C */  jal   osSyncPrintf
/* B1F7BC 800A861C 8E250000 */   lw    $a1, ($s1)
/* B1F7C0 800A8620 3C048014 */  lui   $a0, %hi(D_801408B4) # $a0, 0x8014
/* B1F7C4 800A8624 0C00084C */  jal   osSyncPrintf
/* B1F7C8 800A8628 248408B4 */   addiu $a0, %lo(D_801408B4) # addiu $a0, $a0, 0x8b4
/* B1F7CC 800A862C 862D0030 */  lh    $t5, 0x30($s1)
/* B1F7D0 800A8630 240E0030 */  li    $t6, 48
/* B1F7D4 800A8634 3C048014 */  lui   $a0, %hi(D_801408B8) # $a0, 0x8014
/* B1F7D8 800A8638 29A10030 */  slti  $at, $t5, 0x30
/* B1F7DC 800A863C 50200003 */  beql  $at, $zero, .L800A864C
/* B1F7E0 800A8640 922F0F40 */   lbu   $t7, 0xf40($s1)
/* B1F7E4 800A8644 A62E0030 */  sh    $t6, 0x30($s1)
/* B1F7E8 800A8648 922F0F40 */  lbu   $t7, 0xf40($s1)
.L800A864C:
/* B1F7EC 800A864C 51E00022 */  beql  $t7, $zero, .L800A86D8
/* B1F7F0 800A8650 923812C5 */   lbu   $t8, 0x12c5($s1)
/* B1F7F4 800A8654 0C00084C */  jal   osSyncPrintf
/* B1F7F8 800A8658 248408B8 */   addiu $a0, %lo(D_801408B8) # addiu $a0, $a0, 0x8b8
/* B1F7FC 800A865C 3C048014 */  lui   $a0, %hi(D_801408C0) # $a0, 0x8014
/* B1F800 800A8660 0C00084C */  jal   osSyncPrintf
/* B1F804 800A8664 248408C0 */   addiu $a0, %lo(D_801408C0) # addiu $a0, $a0, 0x8c0
/* B1F808 800A8668 3C048013 */  lui   $a0, %hi(gScarecrowCustomSongPtr) # $a0, 0x8013
/* B1F80C 800A866C 3C058016 */  lui   $a1, %hi(gSaveContext+0xf41) # $a1, 0x8016
/* B1F810 800A8670 24A5F5A1 */  addiu $a1, %lo(gSaveContext+0xf41) # addiu $a1, $a1, -0xa5f
/* B1F814 800A8674 8C841BE4 */  lw    $a0, %lo(gScarecrowCustomSongPtr)($a0)
/* B1F818 800A8678 0C01A508 */  jal   MemCopy
/* B1F81C 800A867C 24060360 */   li    $a2, 864
/* B1F820 800A8680 3C108013 */  lui   $s0, %hi(gScarecrowCustomSongPtr) # $s0, 0x8013
/* B1F824 800A8684 8E101BE4 */  lw    $s0, %lo(gScarecrowCustomSongPtr)($s0)
/* B1F828 800A8688 00003825 */  move  $a3, $zero
.L800A868C:
/* B1F82C 800A868C 3C048014 */  lui   $a0, %hi(D_80140908) # $a0, 0x8014
/* B1F830 800A8690 92050000 */  lbu   $a1, ($s0)
/* B1F834 800A8694 A7A70026 */  sh    $a3, 0x26($sp)
/* B1F838 800A8698 0C00084C */  jal   osSyncPrintf
/* B1F83C 800A869C 24840908 */   addiu $a0, %lo(D_80140908) # addiu $a0, $a0, 0x908
/* B1F840 800A86A0 97A70026 */  lhu   $a3, 0x26($sp)
/* B1F844 800A86A4 26100001 */  addiu $s0, $s0, 1
/* B1F848 800A86A8 24E70001 */  addiu $a3, $a3, 1
/* B1F84C 800A86AC 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B1F850 800A86B0 28E10360 */  slti  $at, $a3, 0x360
/* B1F854 800A86B4 1420FFF5 */  bnez  $at, .L800A868C
/* B1F858 800A86B8 00000000 */   nop   
/* B1F85C 800A86BC 3C048014 */  lui   $a0, %hi(D_80140910) # $a0, 0x8014
/* B1F860 800A86C0 0C00084C */  jal   osSyncPrintf
/* B1F864 800A86C4 24840910 */   addiu $a0, %lo(D_80140910) # addiu $a0, $a0, 0x910
/* B1F868 800A86C8 3C048014 */  lui   $a0, %hi(D_80140958) # $a0, 0x8014
/* B1F86C 800A86CC 0C00084C */  jal   osSyncPrintf
/* B1F870 800A86D0 24840958 */   addiu $a0, %lo(D_80140958) # addiu $a0, $a0, 0x958
/* B1F874 800A86D4 923812C5 */  lbu   $t8, 0x12c5($s1)
.L800A86D8:
/* B1F878 800A86D8 3C048014 */  lui   $a0, %hi(D_8014095C) # $a0, 0x8014
/* B1F87C 800A86DC 53000022 */  beql  $t8, $zero, .L800A8768
/* B1F880 800A86E0 96220EDC */   lhu   $v0, 0xedc($s1)
/* B1F884 800A86E4 0C00084C */  jal   osSyncPrintf
/* B1F888 800A86E8 2484095C */   addiu $a0, %lo(D_8014095C) # addiu $a0, $a0, 0x95c
/* B1F88C 800A86EC 3C048014 */  lui   $a0, %hi(D_80140964) # $a0, 0x8014
/* B1F890 800A86F0 0C00084C */  jal   osSyncPrintf
/* B1F894 800A86F4 24840964 */   addiu $a0, %lo(D_80140964) # addiu $a0, $a0, 0x964
/* B1F898 800A86F8 3C048013 */  lui   $a0, %hi(gScarecrowSpawnSongPtr) # $a0, 0x8013
/* B1F89C 800A86FC 3C058016 */  lui   $a1, %hi(gSaveContext+0x12c6) # $a1, 0x8016
/* B1F8A0 800A8700 24A5F926 */  addiu $a1, %lo(gSaveContext+0x12c6) # addiu $a1, $a1, -0x6da
/* B1F8A4 800A8704 8C841BE8 */  lw    $a0, %lo(gScarecrowSpawnSongPtr)($a0)
/* B1F8A8 800A8708 0C01A508 */  jal   MemCopy
/* B1F8AC 800A870C 24060080 */   li    $a2, 128
/* B1F8B0 800A8710 3C108013 */  lui   $s0, %hi(gScarecrowSpawnSongPtr) # $s0, 0x8013
/* B1F8B4 800A8714 8E101BE8 */  lw    $s0, %lo(gScarecrowSpawnSongPtr)($s0)
/* B1F8B8 800A8718 00003825 */  move  $a3, $zero
.L800A871C:
/* B1F8BC 800A871C 3C048014 */  lui   $a0, %hi(D_801409AC) # $a0, 0x8014
/* B1F8C0 800A8720 92050000 */  lbu   $a1, ($s0)
/* B1F8C4 800A8724 A7A70026 */  sh    $a3, 0x26($sp)
/* B1F8C8 800A8728 0C00084C */  jal   osSyncPrintf
/* B1F8CC 800A872C 248409AC */   addiu $a0, %lo(D_801409AC) # addiu $a0, $a0, 0x9ac
/* B1F8D0 800A8730 97A70026 */  lhu   $a3, 0x26($sp)
/* B1F8D4 800A8734 26100001 */  addiu $s0, $s0, 1
/* B1F8D8 800A8738 24E70001 */  addiu $a3, $a3, 1
/* B1F8DC 800A873C 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B1F8E0 800A8740 28E10080 */  slti  $at, $a3, 0x80
/* B1F8E4 800A8744 1420FFF5 */  bnez  $at, .L800A871C
/* B1F8E8 800A8748 00000000 */   nop   
/* B1F8EC 800A874C 3C048014 */  lui   $a0, %hi(D_801409B4) # $a0, 0x8014
/* B1F8F0 800A8750 0C00084C */  jal   osSyncPrintf
/* B1F8F4 800A8754 248409B4 */   addiu $a0, %lo(D_801409B4) # addiu $a0, $a0, 0x9b4
/* B1F8F8 800A8758 3C048014 */  lui   $a0, %hi(D_801409FC) # $a0, 0x8014
/* B1F8FC 800A875C 0C00084C */  jal   osSyncPrintf
/* B1F900 800A8760 248409FC */   addiu $a0, %lo(D_801409FC) # addiu $a0, $a0, 0x9fc
/* B1F904 800A8764 96220EDC */  lhu   $v0, 0xedc($s1)
.L800A8768:
/* B1F908 800A8768 3C0A8012 */  lui   $t2, %hi(gSpoilingItemReverts) # $t2, 0x8012
/* B1F90C 800A876C 254A5A20 */  addiu $t2, %lo(gSpoilingItemReverts) # addiu $t2, $t2, 0x5a20
/* B1F910 800A8770 30590001 */  andi  $t9, $v0, 1
/* B1F914 800A8774 13200019 */  beqz  $t9, .L800A87DC
/* B1F918 800A8778 3C098012 */   lui   $t1, %hi(gSpoilingItems) # $t1, 0x8012
/* B1F91C 800A877C 3C0C8012 */  lui   $t4, %hi(gBitFlags+0x30) # $t4, 0x8012
/* B1F920 800A8780 8D8C7150 */  lw    $t4, %lo(gBitFlags+0x30)($t4)
/* B1F924 800A8784 8E2D00A4 */  lw    $t5, 0xa4($s1)
/* B1F928 800A8788 3C0B8012 */  lui   $t3, %hi(gItemSlots) # $t3, 0x8012
/* B1F92C 800A878C 256B7464 */  addiu $t3, %lo(gItemSlots) # addiu $t3, $t3, 0x7464
/* B1F930 800A8790 018D7024 */  and   $t6, $t4, $t5
/* B1F934 800A8794 15C00011 */  bnez  $t6, .L800A87DC
/* B1F938 800A8798 24040022 */   li    $a0, 34
/* B1F93C 800A879C 916F0023 */  lbu   $t7, 0x23($t3)
/* B1F940 800A87A0 3047FFFE */  andi  $a3, $v0, 0xfffe
/* B1F944 800A87A4 A6270EDC */  sh    $a3, 0xedc($s1)
/* B1F948 800A87A8 022FC021 */  addu  $t8, $s1, $t7
/* B1F94C 800A87AC A3040074 */  sb    $a0, 0x74($t8)
/* B1F950 800A87B0 24030001 */  li    $v1, 1
/* B1F954 800A87B4 24050023 */  li    $a1, 35
/* B1F958 800A87B8 02231021 */  addu  $v0, $s1, $v1
.L800A87BC:
/* B1F95C 800A87BC 90590068 */  lbu   $t9, 0x68($v0)
/* B1F960 800A87C0 24630001 */  addiu $v1, $v1, 1
/* B1F964 800A87C4 3063FFFF */  andi  $v1, $v1, 0xffff
/* B1F968 800A87C8 14B90002 */  bne   $a1, $t9, .L800A87D4
/* B1F96C 800A87CC 28610004 */   slti  $at, $v1, 4
/* B1F970 800A87D0 A0440068 */  sb    $a0, 0x68($v0)
.L800A87D4:
/* B1F974 800A87D4 5420FFF9 */  bnezl $at, .L800A87BC
/* B1F978 800A87D8 02231021 */   addu  $v0, $s1, $v1
.L800A87DC:
/* B1F97C 800A87DC 8E2C0004 */  lw    $t4, 4($s1)
/* B1F980 800A87E0 3C0B8012 */  lui   $t3, %hi(gItemSlots) # $t3, 0x8012
/* B1F984 800A87E4 256B7464 */  addiu $t3, %lo(gItemSlots) # addiu $t3, $t3, 0x7464
/* B1F988 800A87E8 11800003 */  beqz  $t4, .L800A87F8
/* B1F98C 800A87EC 24010011 */   li    $at, 17
/* B1F990 800A87F0 10000002 */  b     .L800A87FC
/* B1F994 800A87F4 24100005 */   li    $s0, 5
.L800A87F8:
/* B1F998 800A87F8 24100011 */  li    $s0, 17
.L800A87FC:
/* B1F99C 800A87FC 16010011 */  bne   $s0, $at, .L800A8844
/* B1F9A0 800A8800 3C0D8012 */   lui   $t5, %hi(gBitFlags+4) # $t5, 0x8012
/* B1F9A4 800A8804 3C0E8012 */  lui   $t6, %hi(gEquipShifts) # $t6, 0x8012
/* B1F9A8 800A8808 91CE71F0 */  lbu   $t6, %lo(gEquipShifts)($t6)
/* B1F9AC 800A880C 8DAD7124 */  lw    $t5, %lo(gBitFlags+4)($t5)
/* B1F9B0 800A8810 9623009C */  lhu   $v1, 0x9c($s1)
/* B1F9B4 800A8814 2419003C */  li    $t9, 60
/* B1F9B8 800A8818 01CD1004 */  sllv  $v0, $t5, $t6
/* B1F9BC 800A881C 00437824 */  and   $t7, $v0, $v1
/* B1F9C0 800A8820 15E00008 */  bnez  $t7, .L800A8844
/* B1F9C4 800A8824 0062C025 */   or    $t8, $v1, $v0
/* B1F9C8 800A8828 962C0070 */  lhu   $t4, 0x70($s1)
/* B1F9CC 800A882C A638009C */  sh    $t8, 0x9c($s1)
/* B1F9D0 800A8830 A2390068 */  sb    $t9, 0x68($s1)
/* B1F9D4 800A8834 318EFFF0 */  andi  $t6, $t4, 0xfff0
/* B1F9D8 800A8838 A62E0070 */  sh    $t6, 0x70($s1)
/* B1F9DC 800A883C 35CF0002 */  ori   $t7, $t6, 2
/* B1F9E0 800A8840 A62F0070 */  sh    $t7, 0x70($s1)
.L800A8844:
/* B1F9E4 800A8844 9178002D */  lbu   $t8, 0x2d($t3)
/* B1F9E8 800A8848 00003825 */  move  $a3, $zero
/* B1F9EC 800A884C 25295A18 */  addiu $t1, %lo(gSpoilingItems) # addiu $t1, $t1, 0x5a18
/* B1F9F0 800A8850 02384021 */  addu  $t0, $s1, $t8
/* B1F9F4 800A8854 00073040 */  sll   $a2, $a3, 1
.L800A8858:
/* B1F9F8 800A8858 0126C821 */  addu  $t9, $t1, $a2
/* B1F9FC 800A885C 87240000 */  lh    $a0, ($t9)
/* B1FA00 800A8860 910C0074 */  lbu   $t4, 0x74($t0)
/* B1FA04 800A8864 24E70001 */  addiu $a3, $a3, 1
/* B1FA08 800A8868 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B1FA0C 800A886C 15840010 */  bne   $t4, $a0, .L800A88B0
/* B1FA10 800A8870 01466821 */   addu  $t5, $t2, $a2
/* B1FA14 800A8874 85A50000 */  lh    $a1, ($t5)
/* B1FA18 800A8878 24030001 */  li    $v1, 1
/* B1FA1C 800A887C 01657021 */  addu  $t6, $t3, $a1
/* B1FA20 800A8880 91CF0000 */  lbu   $t7, ($t6)
/* B1FA24 800A8884 022FC021 */  addu  $t8, $s1, $t7
/* B1FA28 800A8888 A3050074 */  sb    $a1, 0x74($t8)
/* B1FA2C 800A888C 02231021 */  addu  $v0, $s1, $v1
.L800A8890:
/* B1FA30 800A8890 90590068 */  lbu   $t9, 0x68($v0)
/* B1FA34 800A8894 24630001 */  addiu $v1, $v1, 1
/* B1FA38 800A8898 3063FFFF */  andi  $v1, $v1, 0xffff
/* B1FA3C 800A889C 17240002 */  bne   $t9, $a0, .L800A88A8
/* B1FA40 800A88A0 28610004 */   slti  $at, $v1, 4
/* B1FA44 800A88A4 A0450068 */  sb    $a1, 0x68($v0)
.L800A88A8:
/* B1FA48 800A88A8 5420FFF9 */  bnezl $at, .L800A8890
/* B1FA4C 800A88AC 02231021 */   addu  $v0, $s1, $v1
.L800A88B0:
/* B1FA50 800A88B0 28E10003 */  slti  $at, $a3, 3
/* B1FA54 800A88B4 5420FFE8 */  bnezl $at, .L800A8858
/* B1FA58 800A88B8 00073040 */   sll   $a2, $a3, 1
/* B1FA5C 800A88BC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1FA60 800A88C0 A2200032 */  sb    $zero, 0x32($s1)
/* B1FA64 800A88C4 8FB10018 */  lw    $s1, 0x18($sp)
/* B1FA68 800A88C8 8FB00014 */  lw    $s0, 0x14($sp)
/* B1FA6C 800A88CC 03E00008 */  jr    $ra
/* B1FA70 800A88D0 27BD0028 */   addiu $sp, $sp, 0x28


