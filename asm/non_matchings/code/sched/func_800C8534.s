.rdata
glabel D_80145D80
    .asciz "../sched.c"
    .balign 4

glabel D_80145D8C
    .asciz "(((u64)(now - audio_rsp_start_time)*(1000000LL/15625LL))/((62500000LL*3/4)/15625LL)) = %lld\n"
    .balign 4

glabel D_80145DEC
    .asciz "../sched.c"
    .balign 4

glabel D_80145DF8
    .asciz "(((u64)(now - graph_rsp_start_time)*(1000000LL/15625LL))/((62500000LL*3/4)/15625LL)) = %lld\n"
    .balign 4

glabel D_80145E58
    .asciz "../sched.c"
    .balign 4

glabel D_80145E64
    .asciz "(((u64)(now - rdp_start_time)*(1000000LL/15625LL))/((62500000LL*3/4)/15625LL)) = %lld\n"
    .balign 4

.text
glabel func_800C8534
/* B3F6D4 800C8534 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3F6D8 800C8538 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3F6DC 800C853C AFA40020 */  sw    $a0, 0x20($sp)
/* B3F6E0 800C8540 8C8F0230 */  lw    $t7, 0x230($a0)
/* B3F6E4 800C8544 51E0009E */  beql  $t7, $zero, .L800C87C0
/* B3F6E8 800C8548 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3F6EC 800C854C 0C001A78 */  jal   osGetTime
/* B3F6F0 800C8550 00000000 */   nop   
/* B3F6F4 800C8554 8FB80020 */  lw    $t8, 0x20($sp)
/* B3F6F8 800C8558 AFA20018 */  sw    $v0, 0x18($sp)
/* B3F6FC 800C855C AFA3001C */  sw    $v1, 0x1c($sp)
/* B3F700 800C8560 8F190230 */  lw    $t9, 0x230($t8)
/* B3F704 800C8564 3C188017 */  lui   $t8, %hi(D_8016A500) # $t8, 0x8017
/* B3F708 800C8568 8FAF001C */  lw    $t7, 0x1c($sp)
/* B3F70C 800C856C 8F28000C */  lw    $t0, 0xc($t9)
/* B3F710 800C8570 3C198017 */  lui   $t9, %hi(D_8016A504) # $t9, 0x8017
/* B3F714 800C8574 8FAE0018 */  lw    $t6, 0x18($sp)
/* B3F718 800C8578 1500001E */  bnez  $t0, .L800C85F4
/* B3F71C 800C857C 24060000 */   li    $a2, 0
/* B3F720 800C8580 3C048014 */  lui   $a0, %hi(D_80145D80) # $a0, 0x8014
/* B3F724 800C8584 24845D80 */  addiu $a0, %lo(D_80145D80) # addiu $a0, $a0, 0x5d80
/* B3F728 800C8588 0C000B84 */  jal   LogUtils_LogThreadId
/* B3F72C 800C858C 240501A5 */   li    $a1, 421
/* B3F730 800C8590 3C0C8017 */  lui   $t4, %hi(D_8016A508) # $t4, 0x8017
/* B3F734 800C8594 3C0D8017 */  lui   $t5, %hi(D_8016A50C) # $t5, 0x8017
/* B3F738 800C8598 8DADA50C */  lw    $t5, %lo(D_8016A50C)($t5)
/* B3F73C 800C859C 8D8CA508 */  lw    $t4, %lo(D_8016A508)($t4)
/* B3F740 800C85A0 8FAA0018 */  lw    $t2, 0x18($sp)
/* B3F744 800C85A4 8FAB001C */  lw    $t3, 0x1c($sp)
/* B3F748 800C85A8 24060000 */  li    $a2, 0
/* B3F74C 800C85AC 014C2023 */  subu  $a0, $t2, $t4
/* B3F750 800C85B0 016D082B */  sltu  $at, $t3, $t5
/* B3F754 800C85B4 00812023 */  subu  $a0, $a0, $at
/* B3F758 800C85B8 24070040 */  li    $a3, 64
/* B3F75C 800C85BC 0C000E1E */  jal   __ll_mul
/* B3F760 800C85C0 016D2823 */   subu  $a1, $t3, $t5
/* B3F764 800C85C4 00402025 */  move  $a0, $v0
/* B3F768 800C85C8 00602825 */  move  $a1, $v1
/* B3F76C 800C85CC 24060000 */  li    $a2, 0
/* B3F770 800C85D0 0C000DDE */  jal   __ull_div
/* B3F774 800C85D4 24070BB8 */   li    $a3, 3000
/* B3F778 800C85D8 3C048014 */  lui   $a0, %hi(D_80145D8C) # $a0, 0x8014
/* B3F77C 800C85DC 24845D8C */  addiu $a0, %lo(D_80145D8C) # addiu $a0, $a0, 0x5d8c
/* B3F780 800C85E0 00403025 */  move  $a2, $v0
/* B3F784 800C85E4 0C00084C */  jal   osSyncPrintf
/* B3F788 800C85E8 00603825 */   move  $a3, $v1
/* B3F78C 800C85EC 10000074 */  b     .L800C87C0
/* B3F790 800C85F0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800C85F4:
/* B3F794 800C85F4 8F18A500 */  lw    $t8, %lo(D_8016A500)($t8)
/* B3F798 800C85F8 8F39A504 */  lw    $t9, %lo(D_8016A504)($t9)
/* B3F79C 800C85FC 24070040 */  li    $a3, 64
/* B3F7A0 800C8600 01D82023 */  subu  $a0, $t6, $t8
/* B3F7A4 800C8604 01F9082B */  sltu  $at, $t7, $t9
/* B3F7A8 800C8608 00812023 */  subu  $a0, $a0, $at
/* B3F7AC 800C860C 0C000E1E */  jal   __ll_mul
/* B3F7B0 800C8610 01F92823 */   subu  $a1, $t7, $t9
/* B3F7B4 800C8614 00402025 */  move  $a0, $v0
/* B3F7B8 800C8618 00602825 */  move  $a1, $v1
/* B3F7BC 800C861C 24060000 */  li    $a2, 0
/* B3F7C0 800C8620 0C000DDE */  jal   __ull_div
/* B3F7C4 800C8624 24070BB8 */   li    $a3, 3000
/* B3F7C8 800C8628 1440001C */  bnez  $v0, .L800C869C
/* B3F7CC 800C862C 3C01000F */   lui   $at, (0x000F4241 >> 16) # lui $at, 0xf
/* B3F7D0 800C8630 34214241 */  ori   $at, (0x000F4241 & 0xFFFF) # ori $at, $at, 0x4241
/* B3F7D4 800C8634 0061082B */  sltu  $at, $v1, $at
/* B3F7D8 800C8638 10200018 */  beqz  $at, .L800C869C
/* B3F7DC 800C863C 8FA80018 */   lw    $t0, 0x18($sp)
/* B3F7E0 800C8640 3C0A8017 */  lui   $t2, %hi(D_8016A518) # $t2, 0x8017
/* B3F7E4 800C8644 3C0B8017 */  lui   $t3, %hi(D_8016A51C) # $t3, 0x8017
/* B3F7E8 800C8648 8D6BA51C */  lw    $t3, %lo(D_8016A51C)($t3)
/* B3F7EC 800C864C 8D4AA518 */  lw    $t2, %lo(D_8016A518)($t2)
/* B3F7F0 800C8650 8FA9001C */  lw    $t1, 0x1c($sp)
/* B3F7F4 800C8654 24060000 */  li    $a2, 0
/* B3F7F8 800C8658 010A2023 */  subu  $a0, $t0, $t2
/* B3F7FC 800C865C 012B082B */  sltu  $at, $t1, $t3
/* B3F800 800C8660 00812023 */  subu  $a0, $a0, $at
/* B3F804 800C8664 24070040 */  li    $a3, 64
/* B3F808 800C8668 0C000E1E */  jal   __ll_mul
/* B3F80C 800C866C 012B2823 */   subu  $a1, $t1, $t3
/* B3F810 800C8670 00402025 */  move  $a0, $v0
/* B3F814 800C8674 00602825 */  move  $a1, $v1
/* B3F818 800C8678 24060000 */  li    $a2, 0
/* B3F81C 800C867C 0C000DDE */  jal   __ull_div
/* B3F820 800C8680 24070BB8 */   li    $a3, 3000
/* B3F824 800C8684 14400005 */  bnez  $v0, .L800C869C
/* B3F828 800C8688 3C01000F */   lui   $at, (0x000F4241 >> 16) # lui $at, 0xf
/* B3F82C 800C868C 34214241 */  ori   $at, (0x000F4241 & 0xFFFF) # ori $at, $at, 0x4241
/* B3F830 800C8690 0061082B */  sltu  $at, $v1, $at
/* B3F834 800C8694 5420004A */  bnezl $at, .L800C87C0
/* B3F838 800C8698 8FBF0014 */   lw    $ra, 0x14($sp)
.L800C869C:
/* B3F83C 800C869C 0C03EFF6 */  jal   func_800FBFD8
/* B3F840 800C86A0 00000000 */   nop   
/* B3F844 800C86A4 8FAC0020 */  lw    $t4, 0x20($sp)
/* B3F848 800C86A8 3C048014 */  lui   $a0, %hi(D_80145DEC) # $a0, 0x8014
/* B3F84C 800C86AC 24845DEC */  addiu $a0, %lo(D_80145DEC) # addiu $a0, $a0, 0x5dec
/* B3F850 800C86B0 8D8D0230 */  lw    $t5, 0x230($t4)
/* B3F854 800C86B4 51A0001F */  beql  $t5, $zero, .L800C8734
/* B3F858 800C86B8 8FA80020 */   lw    $t0, 0x20($sp)
/* B3F85C 800C86BC 0C000B84 */  jal   LogUtils_LogThreadId
/* B3F860 800C86C0 240501AB */   li    $a1, 427
/* B3F864 800C86C4 3C188017 */  lui   $t8, %hi(D_8016A500) # $t8, 0x8017
/* B3F868 800C86C8 3C198017 */  lui   $t9, %hi(D_8016A504) # $t9, 0x8017
/* B3F86C 800C86CC 8F39A504 */  lw    $t9, %lo(D_8016A504)($t9)
/* B3F870 800C86D0 8F18A500 */  lw    $t8, %lo(D_8016A500)($t8)
/* B3F874 800C86D4 8FAE0018 */  lw    $t6, 0x18($sp)
/* B3F878 800C86D8 8FAF001C */  lw    $t7, 0x1c($sp)
/* B3F87C 800C86DC 24060000 */  li    $a2, 0
/* B3F880 800C86E0 01D82023 */  subu  $a0, $t6, $t8
/* B3F884 800C86E4 01F9082B */  sltu  $at, $t7, $t9
/* B3F888 800C86E8 00812023 */  subu  $a0, $a0, $at
/* B3F88C 800C86EC 24070040 */  li    $a3, 64
/* B3F890 800C86F0 0C000E1E */  jal   __ll_mul
/* B3F894 800C86F4 01F92823 */   subu  $a1, $t7, $t9
/* B3F898 800C86F8 00402025 */  move  $a0, $v0
/* B3F89C 800C86FC 00602825 */  move  $a1, $v1
/* B3F8A0 800C8700 24060000 */  li    $a2, 0
/* B3F8A4 800C8704 0C000DDE */  jal   __ull_div
/* B3F8A8 800C8708 24070BB8 */   li    $a3, 3000
/* B3F8AC 800C870C 3C048014 */  lui   $a0, %hi(D_80145DF8) # $a0, 0x8014
/* B3F8B0 800C8710 24845DF8 */  addiu $a0, %lo(D_80145DF8) # addiu $a0, $a0, 0x5df8
/* B3F8B4 800C8714 00403025 */  move  $a2, $v0
/* B3F8B8 800C8718 0C00084C */  jal   osSyncPrintf
/* B3F8BC 800C871C 00603825 */   move  $a3, $v1
/* B3F8C0 800C8720 8FA40020 */  lw    $a0, 0x20($sp)
/* B3F8C4 800C8724 2405029B */  li    $a1, 667
/* B3F8C8 800C8728 0C000C18 */  jal   osSendMesg
/* B3F8CC 800C872C 00003025 */   move  $a2, $zero
/* B3F8D0 800C8730 8FA80020 */  lw    $t0, 0x20($sp)
.L800C8734:
/* B3F8D4 800C8734 3C048014 */  lui   $a0, %hi(D_80145E58) # $a0, 0x8014
/* B3F8D8 800C8738 24845E58 */  addiu $a0, %lo(D_80145E58) # addiu $a0, $a0, 0x5e58
/* B3F8DC 800C873C 8D090234 */  lw    $t1, 0x234($t0)
/* B3F8E0 800C8740 5120001F */  beql  $t1, $zero, .L800C87C0
/* B3F8E4 800C8744 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3F8E8 800C8748 0C000B84 */  jal   LogUtils_LogThreadId
/* B3F8EC 800C874C 240501AF */   li    $a1, 431
/* B3F8F0 800C8750 3C0C8017 */  lui   $t4, %hi(D_8016A518) # $t4, 0x8017
/* B3F8F4 800C8754 3C0D8017 */  lui   $t5, %hi(D_8016A51C) # $t5, 0x8017
/* B3F8F8 800C8758 8DADA51C */  lw    $t5, %lo(D_8016A51C)($t5)
/* B3F8FC 800C875C 8D8CA518 */  lw    $t4, %lo(D_8016A518)($t4)
/* B3F900 800C8760 8FAA0018 */  lw    $t2, 0x18($sp)
/* B3F904 800C8764 8FAB001C */  lw    $t3, 0x1c($sp)
/* B3F908 800C8768 24060000 */  li    $a2, 0
/* B3F90C 800C876C 014C2023 */  subu  $a0, $t2, $t4
/* B3F910 800C8770 016D082B */  sltu  $at, $t3, $t5
/* B3F914 800C8774 00812023 */  subu  $a0, $a0, $at
/* B3F918 800C8778 24070040 */  li    $a3, 64
/* B3F91C 800C877C 0C000E1E */  jal   __ll_mul
/* B3F920 800C8780 016D2823 */   subu  $a1, $t3, $t5
/* B3F924 800C8784 00402025 */  move  $a0, $v0
/* B3F928 800C8788 00602825 */  move  $a1, $v1
/* B3F92C 800C878C 24060000 */  li    $a2, 0
/* B3F930 800C8790 0C000DDE */  jal   __ull_div
/* B3F934 800C8794 24070BB8 */   li    $a3, 3000
/* B3F938 800C8798 3C048014 */  lui   $a0, %hi(D_80145E64) # $a0, 0x8014
/* B3F93C 800C879C 24845E64 */  addiu $a0, %lo(D_80145E64) # addiu $a0, $a0, 0x5e64
/* B3F940 800C87A0 00403025 */  move  $a2, $v0
/* B3F944 800C87A4 0C00084C */  jal   osSyncPrintf
/* B3F948 800C87A8 00603825 */   move  $a3, $v1
/* B3F94C 800C87AC 8FA40020 */  lw    $a0, 0x20($sp)
/* B3F950 800C87B0 2405029C */  li    $a1, 668
/* B3F954 800C87B4 0C000C18 */  jal   osSendMesg
/* B3F958 800C87B8 00003025 */   move  $a2, $zero
/* B3F95C 800C87BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C87C0:
/* B3F960 800C87C0 27BD0020 */  addiu $sp, $sp, 0x20
/* B3F964 800C87C4 03E00008 */  jr    $ra
/* B3F968 800C87C8 00000000 */   nop   

