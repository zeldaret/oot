.rdata
glabel D_8013520C
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_80135220
    .asciz "index - 1 >= 0"
    .balign 4

glabel D_80135230
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_80135244
    .asciz "index + 2 < this2->now_edge_num"
    .balign 4

glabel D_80135264
    .asciz "../z_eff_blure.c"
    .balign 4

glabel D_80135278
    .asciz "z_eff_blure.c::SQ_HermiteInterpolate_disp() 頂点確保できず。\n"
    # EUC-JP: 頂点確保できず。 | The vertex cannot be secured.
    .balign 4

glabel D_801352B8
    .asciz "../z_eff_blure.c"
    .balign 4

.text
glabel func_800214D0
/* A98670 800214D0 27BDFE08 */  addiu $sp, $sp, -0x1f8
/* A98674 800214D4 AFB40060 */  sw    $s4, 0x60($sp)
/* A98678 800214D8 00A0A025 */  move  $s4, $a1
/* A9867C 800214DC AFB10054 */  sw    $s1, 0x54($sp)
/* A98680 800214E0 AFA60200 */  sw    $a2, 0x200($sp)
/* A98684 800214E4 00808825 */  move  $s1, $a0
/* A98688 800214E8 AFBF0064 */  sw    $ra, 0x64($sp)
/* A9868C 800214EC AFA70204 */  sw    $a3, 0x204($sp)
/* A98690 800214F0 3C068013 */  lui   $a2, %hi(D_8013520C) # $a2, 0x8013
/* A98694 800214F4 00E02825 */  move  $a1, $a3
/* A98698 800214F8 AFB3005C */  sw    $s3, 0x5c($sp)
/* A9869C 800214FC AFB20058 */  sw    $s2, 0x58($sp)
/* A986A0 80021500 AFB00050 */  sw    $s0, 0x50($sp)
/* A986A4 80021504 F7BC0048 */  sdc1  $f28, 0x48($sp)
/* A986A8 80021508 F7BA0040 */  sdc1  $f26, 0x40($sp)
/* A986AC 8002150C F7B80038 */  sdc1  $f24, 0x38($sp)
/* A986B0 80021510 F7B60030 */  sdc1  $f22, 0x30($sp)
/* A986B4 80021514 F7B40028 */  sdc1  $f20, 0x28($sp)
/* A986B8 80021518 240703CB */  li    $a3, 971
/* A986BC 8002151C 24C6520C */  addiu $a2, %lo(D_8013520C) # addiu $a2, $a2, 0x520c
/* A986C0 80021520 0C031AB1 */  jal   func_800C6AC4
/* A986C4 80021524 27A40124 */   addiu $a0, $sp, 0x124
/* A986C8 80021528 27A40138 */  addiu $a0, $sp, 0x138
/* A986CC 8002152C 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* A986D0 80021530 2625000E */   addiu $a1, $s1, 0xe
/* A986D4 80021534 8E8E0004 */  lw    $t6, 4($s4)
/* A986D8 80021538 922F019F */  lbu   $t7, 0x19f($s1)
/* A986DC 8002153C 27B201EC */  addiu $s2, $sp, 0x1ec
/* A986E0 80021540 448E2000 */  mtc1  $t6, $f4
/* A986E4 80021544 448F4000 */  mtc1  $t7, $f8
/* A986E8 80021548 27B301E4 */  addiu $s3, $sp, 0x1e4
/* A986EC 8002154C 468021A0 */  cvt.s.w $f6, $f4
/* A986F0 80021550 05E10005 */  bgez  $t7, .L80021568
/* A986F4 80021554 468042A0 */   cvt.s.w $f10, $f8
/* A986F8 80021558 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* A986FC 8002155C 44818000 */  mtc1  $at, $f16
/* A98700 80021560 00000000 */  nop   
/* A98704 80021564 46105280 */  add.s $f10, $f10, $f16
.L80021568:
/* A98708 80021568 460A3003 */  div.s $f0, $f6, $f10
/* A9870C 8002156C 27B801A4 */  addiu $t8, $sp, 0x1a4
/* A98710 80021570 27B901A0 */  addiu $t9, $sp, 0x1a0
/* A98714 80021574 AFB90018 */  sw    $t9, 0x18($sp)
/* A98718 80021578 AFB80014 */  sw    $t8, 0x14($sp)
/* A9871C 8002157C 02202025 */  move  $a0, $s1
/* A98720 80021580 8FA50200 */  lw    $a1, 0x200($sp)
/* A98724 80021584 02403825 */  move  $a3, $s2
/* A98728 80021588 AFB30010 */  sw    $s3, 0x10($sp)
/* A9872C 8002158C 44060000 */  mfc1  $a2, $f0
/* A98730 80021590 0C008294 */  jal   func_80020A50
/* A98734 80021594 00000000 */   nop   
/* A98738 80021598 27A401CC */  addiu $a0, $sp, 0x1cc
/* A9873C 8002159C 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* A98740 800215A0 02402825 */   move  $a1, $s2
/* A98744 800215A4 27A401C0 */  addiu $a0, $sp, 0x1c0
/* A98748 800215A8 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* A9874C 800215AC 02602825 */   move  $a1, $s3
/* A98750 800215B0 8E88001C */  lw    $t0, 0x1c($s4)
/* A98754 800215B4 9229019F */  lbu   $t1, 0x19f($s1)
/* A98758 800215B8 44889000 */  mtc1  $t0, $f18
/* A9875C 800215BC 44894000 */  mtc1  $t1, $f8
/* A98760 800215C0 46809120 */  cvt.s.w $f4, $f18
/* A98764 800215C4 05210005 */  bgez  $t1, .L800215DC
/* A98768 800215C8 46804420 */   cvt.s.w $f16, $f8
/* A9876C 800215CC 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* A98770 800215D0 44813000 */  mtc1  $at, $f6
/* A98774 800215D4 00000000 */  nop   
/* A98778 800215D8 46068400 */  add.s $f16, $f16, $f6
.L800215DC:
/* A9877C 800215DC 46102003 */  div.s $f0, $f4, $f16
/* A98780 800215E0 8FA50200 */  lw    $a1, 0x200($sp)
/* A98784 800215E4 27AA019C */  addiu $t2, $sp, 0x19c
/* A98788 800215E8 27AB0198 */  addiu $t3, $sp, 0x198
/* A9878C 800215EC AFAB0018 */  sw    $t3, 0x18($sp)
/* A98790 800215F0 AFAA0014 */  sw    $t2, 0x14($sp)
/* A98794 800215F4 02202025 */  move  $a0, $s1
/* A98798 800215F8 02403825 */  move  $a3, $s2
/* A9879C 800215FC AFB30010 */  sw    $s3, 0x10($sp)
/* A987A0 80021600 24A50001 */  addiu $a1, $a1, 1
/* A987A4 80021604 44060000 */  mfc1  $a2, $f0
/* A987A8 80021608 0C008294 */  jal   func_80020A50
/* A987AC 8002160C 00000000 */   nop   
/* A987B0 80021610 27A4018C */  addiu $a0, $sp, 0x18c
/* A987B4 80021614 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* A987B8 80021618 02402825 */   move  $a1, $s2
/* A987BC 8002161C 27A40180 */  addiu $a0, $sp, 0x180
/* A987C0 80021620 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* A987C4 80021624 02602825 */   move  $a1, $s3
/* A987C8 80021628 968C0014 */  lhu   $t4, 0x14($s4)
/* A987CC 8002162C 8FB00200 */  lw    $s0, 0x200($sp)
/* A987D0 80021630 24010002 */  li    $at, 2
/* A987D4 80021634 318D0003 */  andi  $t5, $t4, 3
/* A987D8 80021638 15A1000C */  bne   $t5, $at, .L8002166C
/* A987DC 8002163C 2610FFFF */   addiu $s0, $s0, -1
/* A987E0 80021640 27A4018C */  addiu $a0, $sp, 0x18c
/* A987E4 80021644 27A501CC */  addiu $a1, $sp, 0x1cc
/* A987E8 80021648 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A987EC 8002164C 27A601B4 */   addiu $a2, $sp, 0x1b4
/* A987F0 80021650 27B001A8 */  addiu $s0, $sp, 0x1a8
/* A987F4 80021654 02003025 */  move  $a2, $s0
/* A987F8 80021658 27A40180 */  addiu $a0, $sp, 0x180
/* A987FC 8002165C 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A98800 80021660 27A501C0 */   addiu $a1, $sp, 0x1c0
/* A98804 80021664 10000030 */  b     .L80021728
/* A98808 80021668 3C013F00 */   lui   $at, 0x3f00
.L8002166C:
/* A9880C 8002166C 06010006 */  bgez  $s0, .L80021688
/* A98810 80021670 3C048013 */   lui   $a0, %hi(D_80135220) # $a0, 0x8013
/* A98814 80021674 3C058013 */  lui   $a1, %hi(D_80135230)
/* A98818 80021678 24A55230 */  addiu $a1, %lo(D_80135230) # addiu $a1, $a1, 0x5230
/* A9881C 8002167C 24845220 */  addiu $a0, %lo(D_80135220) # addiu $a0, $a0, 0x5220
/* A98820 80021680 0C0007FC */  jal   __assert
/* A98824 80021684 240603ED */   li    $a2, 1005
.L80021688:
/* A98828 80021688 8E8EFFEC */  lw    $t6, -0x14($s4)
/* A9882C 8002168C 922F019F */  lbu   $t7, 0x19f($s1)
/* A98830 80021690 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* A98834 80021694 448E5000 */  mtc1  $t6, $f10
/* A98838 80021698 448F4000 */  mtc1  $t7, $f8
/* A9883C 8002169C 468054A0 */  cvt.s.w $f18, $f10
/* A98840 800216A0 05E10004 */  bgez  $t7, .L800216B4
/* A98844 800216A4 468041A0 */   cvt.s.w $f6, $f8
/* A98848 800216A8 44812000 */  mtc1  $at, $f4
/* A9884C 800216AC 00000000 */  nop   
/* A98850 800216B0 46043180 */  add.s $f6, $f6, $f4
.L800216B4:
/* A98854 800216B4 46069003 */  div.s $f0, $f18, $f6
/* A98858 800216B8 27B801DC */  addiu $t8, $sp, 0x1dc
/* A9885C 800216BC 27B901D8 */  addiu $t9, $sp, 0x1d8
/* A98860 800216C0 AFB90018 */  sw    $t9, 0x18($sp)
/* A98864 800216C4 AFB80014 */  sw    $t8, 0x14($sp)
/* A98868 800216C8 02202025 */  move  $a0, $s1
/* A9886C 800216CC 02002825 */  move  $a1, $s0
/* A98870 800216D0 02403825 */  move  $a3, $s2
/* A98874 800216D4 AFB30010 */  sw    $s3, 0x10($sp)
/* A98878 800216D8 44060000 */  mfc1  $a2, $f0
/* A9887C 800216DC 0C008294 */  jal   func_80020A50
/* A98880 800216E0 00000000 */   nop   
/* A98884 800216E4 27B00118 */  addiu $s0, $sp, 0x118
/* A98888 800216E8 02002025 */  move  $a0, $s0
/* A9888C 800216EC 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* A98890 800216F0 02402825 */   move  $a1, $s2
/* A98894 800216F4 27A4010C */  addiu $a0, $sp, 0x10c
/* A98898 800216F8 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* A9889C 800216FC 02602825 */   move  $a1, $s3
/* A988A0 80021700 27A4018C */  addiu $a0, $sp, 0x18c
/* A988A4 80021704 02002825 */  move  $a1, $s0
/* A988A8 80021708 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A988AC 8002170C 27A601B4 */   addiu $a2, $sp, 0x1b4
/* A988B0 80021710 27B001A8 */  addiu $s0, $sp, 0x1a8
/* A988B4 80021714 02003025 */  move  $a2, $s0
/* A988B8 80021718 27A40180 */  addiu $a0, $sp, 0x180
/* A988BC 8002171C 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A988C0 80021720 27A5010C */   addiu $a1, $sp, 0x10c
/* A988C4 80021724 3C013F00 */  li    $at, 0x3F000000 # 0.000000
.L80021728:
/* A988C8 80021728 4481A000 */  mtc1  $at, $f20
/* A988CC 8002172C 27A401B4 */  addiu $a0, $sp, 0x1b4
/* A988D0 80021730 4405A000 */  mfc1  $a1, $f20
/* A988D4 80021734 0C01DFD7 */  jal   Math_Vec3f_Scale
/* A988D8 80021738 00000000 */   nop   
/* A988DC 8002173C 4405A000 */  mfc1  $a1, $f20
/* A988E0 80021740 0C01DFD7 */  jal   Math_Vec3f_Scale
/* A988E4 80021744 02002025 */   move  $a0, $s0
/* A988E8 80021748 9688002C */  lhu   $t0, 0x2c($s4)
/* A988EC 8002174C 24010002 */  li    $at, 2
/* A988F0 80021750 8FB00200 */  lw    $s0, 0x200($sp)
/* A988F4 80021754 31090003 */  andi  $t1, $t0, 3
/* A988F8 80021758 5521000E */  bnel  $t1, $at, .L80021794
/* A988FC 8002175C 922A019E */   lbu   $t2, 0x19e($s1)
/* A98900 80021760 27B20174 */  addiu $s2, $sp, 0x174
/* A98904 80021764 02403025 */  move  $a2, $s2
/* A98908 80021768 27A4018C */  addiu $a0, $sp, 0x18c
/* A9890C 8002176C 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A98910 80021770 27A501CC */   addiu $a1, $sp, 0x1cc
/* A98914 80021774 27B00168 */  addiu $s0, $sp, 0x168
/* A98918 80021778 02003025 */  move  $a2, $s0
/* A9891C 8002177C 27A40180 */  addiu $a0, $sp, 0x180
/* A98920 80021780 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A98924 80021784 27A501C0 */   addiu $a1, $sp, 0x1c0
/* A98928 80021788 10000035 */  b     .L80021860
/* A9892C 8002178C 4405A000 */   mfc1  $a1, $f20
/* A98930 80021790 922A019E */  lbu   $t2, 0x19e($s1)
.L80021794:
/* A98934 80021794 26100002 */  addiu $s0, $s0, 2
/* A98938 80021798 3C048013 */  lui   $a0, %hi(D_80135244) # $a0, 0x8013
/* A9893C 8002179C 020A082A */  slt   $at, $s0, $t2
/* A98940 800217A0 14200005 */  bnez  $at, .L800217B8
/* A98944 800217A4 24845244 */   addiu $a0, %lo(D_80135244) # addiu $a0, $a0, 0x5244
/* A98948 800217A8 3C058013 */  lui   $a1, %hi(D_80135264)
/* A9894C 800217AC 24A55264 */  addiu $a1, %lo(D_80135264) # addiu $a1, $a1, 0x5264
/* A98950 800217B0 0C0007FC */  jal   __assert
/* A98954 800217B4 24060408 */   li    $a2, 1032
.L800217B8:
/* A98958 800217B8 8E8B0034 */  lw    $t3, 0x34($s4)
/* A9895C 800217BC 922C019F */  lbu   $t4, 0x19f($s1)
/* A98960 800217C0 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* A98964 800217C4 448B8000 */  mtc1  $t3, $f16
/* A98968 800217C8 448C4000 */  mtc1  $t4, $f8
/* A9896C 800217CC 468082A0 */  cvt.s.w $f10, $f16
/* A98970 800217D0 05810004 */  bgez  $t4, .L800217E4
/* A98974 800217D4 46804120 */   cvt.s.w $f4, $f8
/* A98978 800217D8 44819000 */  mtc1  $at, $f18
/* A9897C 800217DC 00000000 */  nop   
/* A98980 800217E0 46122100 */  add.s $f4, $f4, $f18
.L800217E4:
/* A98984 800217E4 46045003 */  div.s $f0, $f10, $f4
/* A98988 800217E8 27AD01DC */  addiu $t5, $sp, 0x1dc
/* A9898C 800217EC 27AE01D8 */  addiu $t6, $sp, 0x1d8
/* A98990 800217F0 AFAE0018 */  sw    $t6, 0x18($sp)
/* A98994 800217F4 AFAD0014 */  sw    $t5, 0x14($sp)
/* A98998 800217F8 02202025 */  move  $a0, $s1
/* A9899C 800217FC 02002825 */  move  $a1, $s0
/* A989A0 80021800 02403825 */  move  $a3, $s2
/* A989A4 80021804 AFB30010 */  sw    $s3, 0x10($sp)
/* A989A8 80021808 44060000 */  mfc1  $a2, $f0
/* A989AC 8002180C 0C008294 */  jal   func_80020A50
/* A989B0 80021810 00000000 */   nop   
/* A989B4 80021814 27B00100 */  addiu $s0, $sp, 0x100
/* A989B8 80021818 02002025 */  move  $a0, $s0
/* A989BC 8002181C 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* A989C0 80021820 02402825 */   move  $a1, $s2
/* A989C4 80021824 27B100F4 */  addiu $s1, $sp, 0xf4
/* A989C8 80021828 02202025 */  move  $a0, $s1
/* A989CC 8002182C 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* A989D0 80021830 02602825 */   move  $a1, $s3
/* A989D4 80021834 27B20174 */  addiu $s2, $sp, 0x174
/* A989D8 80021838 02403025 */  move  $a2, $s2
/* A989DC 8002183C 02002025 */  move  $a0, $s0
/* A989E0 80021840 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A989E4 80021844 27A501CC */   addiu $a1, $sp, 0x1cc
/* A989E8 80021848 27B00168 */  addiu $s0, $sp, 0x168
/* A989EC 8002184C 02003025 */  move  $a2, $s0
/* A989F0 80021850 02202025 */  move  $a0, $s1
/* A989F4 80021854 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A989F8 80021858 27A501C0 */   addiu $a1, $sp, 0x1c0
/* A989FC 8002185C 4405A000 */  mfc1  $a1, $f20
.L80021860:
/* A98A00 80021860 0C01DFD7 */  jal   Math_Vec3f_Scale
/* A98A04 80021864 02402025 */   move  $a0, $s2
/* A98A08 80021868 4405A000 */  mfc1  $a1, $f20
/* A98A0C 8002186C 0C01DFD7 */  jal   Math_Vec3f_Scale
/* A98A10 80021870 02002025 */   move  $a0, $s0
/* A98A14 80021874 8FA40204 */  lw    $a0, 0x204($sp)
/* A98A18 80021878 0C031A73 */  jal   Graph_Alloc
/* A98A1C 8002187C 24050100 */   li    $a1, 256
/* A98A20 80021880 14400006 */  bnez  $v0, .L8002189C
/* A98A24 80021884 0040A025 */   move  $s4, $v0
/* A98A28 80021888 3C048013 */  lui   $a0, %hi(D_80135278) # $a0, 0x8013
/* A98A2C 8002188C 0C00084C */  jal   osSyncPrintf
/* A98A30 80021890 24845278 */   addiu $a0, %lo(D_80135278) # addiu $a0, $a0, 0x5278
/* A98A34 80021894 10000187 */  b     .L80021EB4
/* A98A38 80021898 00000000 */   nop   
.L8002189C:
/* A98A3C 8002189C 27A401CC */  addiu $a0, $sp, 0x1cc
/* A98A40 800218A0 27A50138 */  addiu $a1, $sp, 0x138
/* A98A44 800218A4 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A98A48 800218A8 27A60158 */   addiu $a2, $sp, 0x158
/* A98A4C 800218AC 27A40158 */  addiu $a0, $sp, 0x158
/* A98A50 800218B0 0C01DFD7 */  jal   Math_Vec3f_Scale
/* A98A54 800218B4 3C054120 */   lui   $a1, 0x4120
/* A98A58 800218B8 27A401C0 */  addiu $a0, $sp, 0x1c0
/* A98A5C 800218BC 27A50138 */  addiu $a1, $sp, 0x138
/* A98A60 800218C0 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A98A64 800218C4 27A6014C */   addiu $a2, $sp, 0x14c
/* A98A68 800218C8 27A4014C */  addiu $a0, $sp, 0x14c
/* A98A6C 800218CC 0C01DFD7 */  jal   Math_Vec3f_Scale
/* A98A70 800218D0 3C054120 */   lui   $a1, 0x4120
/* A98A74 800218D4 27A40148 */  addiu $a0, $sp, 0x148
/* A98A78 800218D8 0C01E218 */  jal   Color_RGBA8_Copy
/* A98A7C 800218DC 27A501A4 */   addiu $a1, $sp, 0x1a4
/* A98A80 800218E0 27A40144 */  addiu $a0, $sp, 0x144
/* A98A84 800218E4 0C01E218 */  jal   Color_RGBA8_Copy
/* A98A88 800218E8 27A501A0 */   addiu $a1, $sp, 0x1a0
/* A98A8C 800218EC 3C028011 */  lui   $v0, %hi(D_80115770) # 0.000000
/* A98A90 800218F0 24425770 */  addiu $v0, %lo(D_80115770) # addiu $v0, $v0, 0x5770
/* A98A94 800218F4 8C580000 */  lw    $t8, ($v0)
/* A98A98 800218F8 AA980000 */  swl   $t8, ($s4)
/* A98A9C 800218FC BA980003 */  swr   $t8, 3($s4)
/* A98AA0 80021900 8C4F0004 */  lw    $t7, 4($v0)
/* A98AA4 80021904 AA8F0004 */  swl   $t7, 4($s4)
/* A98AA8 80021908 BA8F0007 */  swr   $t7, 7($s4)
/* A98AAC 8002190C 8C580008 */  lw    $t8, 8($v0)
/* A98AB0 80021910 AA980008 */  swl   $t8, 8($s4)
/* A98AB4 80021914 BA98000B */  swr   $t8, 0xb($s4)
/* A98AB8 80021918 8C4F000C */  lw    $t7, 0xc($v0)
/* A98ABC 8002191C AA8F000C */  swl   $t7, 0xc($s4)
/* A98AC0 80021920 BA8F000F */  swr   $t7, 0xf($s4)
/* A98AC4 80021924 8C480000 */  lw    $t0, ($v0)
/* A98AC8 80021928 AA880010 */  swl   $t0, 0x10($s4)
/* A98ACC 8002192C BA880013 */  swr   $t0, 0x13($s4)
/* A98AD0 80021930 8C590004 */  lw    $t9, 4($v0)
/* A98AD4 80021934 AA990014 */  swl   $t9, 0x14($s4)
/* A98AD8 80021938 BA990017 */  swr   $t9, 0x17($s4)
/* A98ADC 8002193C 8C480008 */  lw    $t0, 8($v0)
/* A98AE0 80021940 AA880018 */  swl   $t0, 0x18($s4)
/* A98AE4 80021944 BA88001B */  swr   $t0, 0x1b($s4)
/* A98AE8 80021948 8C59000C */  lw    $t9, 0xc($v0)
/* A98AEC 8002194C AA99001C */  swl   $t9, 0x1c($s4)
/* A98AF0 80021950 BA99001F */  swr   $t9, 0x1f($s4)
/* A98AF4 80021954 0C03F3CD */  jal   Math_nearbyintf
/* A98AF8 80021958 C7AC0158 */   lwc1  $f12, 0x158($sp)
/* A98AFC 8002195C 4600018D */  trunc.w.s $f6, $f0
/* A98B00 80021960 440A3000 */  mfc1  $t2, $f6
/* A98B04 80021964 00000000 */  nop   
/* A98B08 80021968 A68A0000 */  sh    $t2, ($s4)
/* A98B0C 8002196C 0C03F3CD */  jal   Math_nearbyintf
/* A98B10 80021970 C7AC015C */   lwc1  $f12, 0x15c($sp)
/* A98B14 80021974 4600040D */  trunc.w.s $f16, $f0
/* A98B18 80021978 440C8000 */  mfc1  $t4, $f16
/* A98B1C 8002197C 00000000 */  nop   
/* A98B20 80021980 A68C0002 */  sh    $t4, 2($s4)
/* A98B24 80021984 0C03F3CD */  jal   Math_nearbyintf
/* A98B28 80021988 C7AC0160 */   lwc1  $f12, 0x160($sp)
/* A98B2C 8002198C 4600020D */  trunc.w.s $f8, $f0
/* A98B30 80021990 440E4000 */  mfc1  $t6, $f8
/* A98B34 80021994 00000000 */  nop   
/* A98B38 80021998 A68E0004 */  sh    $t6, 4($s4)
/* A98B3C 8002199C 93AF0148 */  lbu   $t7, 0x148($sp)
/* A98B40 800219A0 A28F000C */  sb    $t7, 0xc($s4)
/* A98B44 800219A4 93B80149 */  lbu   $t8, 0x149($sp)
/* A98B48 800219A8 A298000D */  sb    $t8, 0xd($s4)
/* A98B4C 800219AC 93B9014A */  lbu   $t9, 0x14a($sp)
/* A98B50 800219B0 A299000E */  sb    $t9, 0xe($s4)
/* A98B54 800219B4 93A8014B */  lbu   $t0, 0x14b($sp)
/* A98B58 800219B8 A288000F */  sb    $t0, 0xf($s4)
/* A98B5C 800219BC 0C03F3CD */  jal   Math_nearbyintf
/* A98B60 800219C0 C7AC014C */   lwc1  $f12, 0x14c($sp)
/* A98B64 800219C4 4600048D */  trunc.w.s $f18, $f0
/* A98B68 800219C8 440A9000 */  mfc1  $t2, $f18
/* A98B6C 800219CC 00000000 */  nop   
/* A98B70 800219D0 A68A0010 */  sh    $t2, 0x10($s4)
/* A98B74 800219D4 0C03F3CD */  jal   Math_nearbyintf
/* A98B78 800219D8 C7AC0150 */   lwc1  $f12, 0x150($sp)
/* A98B7C 800219DC 4600028D */  trunc.w.s $f10, $f0
/* A98B80 800219E0 440C5000 */  mfc1  $t4, $f10
/* A98B84 800219E4 00000000 */  nop   
/* A98B88 800219E8 A68C0012 */  sh    $t4, 0x12($s4)
/* A98B8C 800219EC 0C03F3CD */  jal   Math_nearbyintf
/* A98B90 800219F0 C7AC0154 */   lwc1  $f12, 0x154($sp)
/* A98B94 800219F4 4600010D */  trunc.w.s $f4, $f0
/* A98B98 800219F8 24120001 */  li    $s2, 1
/* A98B9C 800219FC 24130003 */  li    $s3, 3
/* A98BA0 80021A00 26910030 */  addiu $s1, $s4, 0x30
/* A98BA4 80021A04 440E2000 */  mfc1  $t6, $f4
/* A98BA8 80021A08 26900020 */  addiu $s0, $s4, 0x20
/* A98BAC 80021A0C A68E0014 */  sh    $t6, 0x14($s4)
/* A98BB0 80021A10 93AF0144 */  lbu   $t7, 0x144($sp)
/* A98BB4 80021A14 A28F001C */  sb    $t7, 0x1c($s4)
/* A98BB8 80021A18 93B80145 */  lbu   $t8, 0x145($sp)
/* A98BBC 80021A1C A298001D */  sb    $t8, 0x1d($s4)
/* A98BC0 80021A20 93B90146 */  lbu   $t9, 0x146($sp)
/* A98BC4 80021A24 A299001E */  sb    $t9, 0x1e($s4)
/* A98BC8 80021A28 93A80147 */  lbu   $t0, 0x147($sp)
/* A98BCC 80021A2C A288001F */  sb    $t0, 0x1f($s4)
.L80021A30:
/* A98BD0 80021A30 44923000 */  mtc1  $s2, $f6
/* A98BD4 80021A34 3C0140E0 */  li    $at, 0x40E00000 # 0.000000
/* A98BD8 80021A38 44814000 */  mtc1  $at, $f8
/* A98BDC 80021A3C 46803420 */  cvt.s.w $f16, $f6
/* A98BE0 80021A40 3C014040 */  li    $at, 0x40400000 # 0.000000
/* A98BE4 80021A44 44819000 */  mtc1  $at, $f18
/* A98BE8 80021A48 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* A98BEC 80021A4C 44812000 */  mtc1  $at, $f4
/* A98BF0 80021A50 AFB300EC */  sw    $s3, 0xec($sp)
/* A98BF4 80021A54 46088703 */  div.s $f28, $f16, $f8
/* A98BF8 80021A58 C7A801CC */  lwc1  $f8, 0x1cc($sp)
/* A98BFC 80021A5C 27A400E0 */  addiu $a0, $sp, 0xe0
/* A98C00 80021A60 27A50138 */  addiu $a1, $sp, 0x138
/* A98C04 80021A64 27A60158 */  addiu $a2, $sp, 0x158
/* A98C08 80021A68 461CE002 */  mul.s $f0, $f28, $f28
/* A98C0C 80021A6C 00000000 */  nop   
/* A98C10 80021A70 461C0082 */  mul.s $f2, $f0, $f28
/* A98C14 80021A74 46000180 */  add.s $f6, $f0, $f0
/* A98C18 80021A78 46120382 */  mul.s $f14, $f0, $f18
/* A98C1C 80021A7C 46021300 */  add.s $f12, $f2, $f2
/* A98C20 80021A80 46061401 */  sub.s $f16, $f2, $f6
/* A98C24 80021A84 460E6281 */  sub.s $f10, $f12, $f14
/* A98C28 80021A88 460C7681 */  sub.s $f26, $f14, $f12
/* A98C2C 80021A8C 46045600 */  add.s $f24, $f10, $f4
/* A98C30 80021A90 C7AA018C */  lwc1  $f10, 0x18c($sp)
/* A98C34 80021A94 461C8580 */  add.s $f22, $f16, $f28
/* A98C38 80021A98 4608C482 */  mul.s $f18, $f24, $f8
/* A98C3C 80021A9C C7B001B4 */  lwc1  $f16, 0x1b4($sp)
/* A98C40 80021AA0 46001501 */  sub.s $f20, $f2, $f0
/* A98C44 80021AA4 460AD102 */  mul.s $f4, $f26, $f10
/* A98C48 80021AA8 46049180 */  add.s $f6, $f18, $f4
/* A98C4C 80021AAC 4610B202 */  mul.s $f8, $f22, $f16
/* A98C50 80021AB0 C7B20174 */  lwc1  $f18, 0x174($sp)
/* A98C54 80021AB4 4612A102 */  mul.s $f4, $f20, $f18
/* A98C58 80021AB8 C7B20190 */  lwc1  $f18, 0x190($sp)
/* A98C5C 80021ABC 46083280 */  add.s $f10, $f6, $f8
/* A98C60 80021AC0 C7A601D0 */  lwc1  $f6, 0x1d0($sp)
/* A98C64 80021AC4 4606C202 */  mul.s $f8, $f24, $f6
/* A98C68 80021AC8 46045400 */  add.s $f16, $f10, $f4
/* A98C6C 80021ACC 4612D282 */  mul.s $f10, $f26, $f18
/* A98C70 80021AD0 E7B000E0 */  swc1  $f16, 0xe0($sp)
/* A98C74 80021AD4 C7B001B8 */  lwc1  $f16, 0x1b8($sp)
/* A98C78 80021AD8 4610B182 */  mul.s $f6, $f22, $f16
/* A98C7C 80021ADC 460A4100 */  add.s $f4, $f8, $f10
/* A98C80 80021AE0 C7A80178 */  lwc1  $f8, 0x178($sp)
/* A98C84 80021AE4 4608A282 */  mul.s $f10, $f20, $f8
/* A98C88 80021AE8 C7A80194 */  lwc1  $f8, 0x194($sp)
/* A98C8C 80021AEC 46062480 */  add.s $f18, $f4, $f6
/* A98C90 80021AF0 C7A401D4 */  lwc1  $f4, 0x1d4($sp)
/* A98C94 80021AF4 4604C182 */  mul.s $f6, $f24, $f4
/* A98C98 80021AF8 460A9400 */  add.s $f16, $f18, $f10
/* A98C9C 80021AFC 4608D482 */  mul.s $f18, $f26, $f8
/* A98CA0 80021B00 E7B000E4 */  swc1  $f16, 0xe4($sp)
/* A98CA4 80021B04 C7B001BC */  lwc1  $f16, 0x1bc($sp)
/* A98CA8 80021B08 4610B102 */  mul.s $f4, $f22, $f16
/* A98CAC 80021B0C 46123280 */  add.s $f10, $f6, $f18
/* A98CB0 80021B10 C7A6017C */  lwc1  $f6, 0x17c($sp)
/* A98CB4 80021B14 4606A482 */  mul.s $f18, $f20, $f6
/* A98CB8 80021B18 46045200 */  add.s $f8, $f10, $f4
/* A98CBC 80021B1C 46124400 */  add.s $f16, $f8, $f18
/* A98CC0 80021B20 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A98CC4 80021B24 E7B000E8 */   swc1  $f16, 0xe8($sp)
/* A98CC8 80021B28 27A40158 */  addiu $a0, $sp, 0x158
/* A98CCC 80021B2C 0C01DFD7 */  jal   Math_Vec3f_Scale
/* A98CD0 80021B30 3C054120 */   lui   $a1, 0x4120
/* A98CD4 80021B34 C7AA01C0 */  lwc1  $f10, 0x1c0($sp)
/* A98CD8 80021B38 C7A60180 */  lwc1  $f6, 0x180($sp)
/* A98CDC 80021B3C C7B001A8 */  lwc1  $f16, 0x1a8($sp)
/* A98CE0 80021B40 460AC102 */  mul.s $f4, $f24, $f10
/* A98CE4 80021B44 27A400E0 */  addiu $a0, $sp, 0xe0
/* A98CE8 80021B48 27A50138 */  addiu $a1, $sp, 0x138
/* A98CEC 80021B4C 4606D202 */  mul.s $f8, $f26, $f6
/* A98CF0 80021B50 27A6014C */  addiu $a2, $sp, 0x14c
/* A98CF4 80021B54 4610B282 */  mul.s $f10, $f22, $f16
/* A98CF8 80021B58 46082480 */  add.s $f18, $f4, $f8
/* A98CFC 80021B5C C7A40168 */  lwc1  $f4, 0x168($sp)
/* A98D00 80021B60 4604A202 */  mul.s $f8, $f20, $f4
/* A98D04 80021B64 460A9180 */  add.s $f6, $f18, $f10
/* A98D08 80021B68 C7B201C4 */  lwc1  $f18, 0x1c4($sp)
/* A98D0C 80021B6C C7A40184 */  lwc1  $f4, 0x184($sp)
/* A98D10 80021B70 4612C282 */  mul.s $f10, $f24, $f18
/* A98D14 80021B74 46083400 */  add.s $f16, $f6, $f8
/* A98D18 80021B78 4604D182 */  mul.s $f6, $f26, $f4
/* A98D1C 80021B7C E7B000E0 */  swc1  $f16, 0xe0($sp)
/* A98D20 80021B80 C7B001AC */  lwc1  $f16, 0x1ac($sp)
/* A98D24 80021B84 4610B482 */  mul.s $f18, $f22, $f16
/* A98D28 80021B88 46065200 */  add.s $f8, $f10, $f6
/* A98D2C 80021B8C C7AA016C */  lwc1  $f10, 0x16c($sp)
/* A98D30 80021B90 460AA182 */  mul.s $f6, $f20, $f10
/* A98D34 80021B94 C7AA0188 */  lwc1  $f10, 0x188($sp)
/* A98D38 80021B98 46124100 */  add.s $f4, $f8, $f18
/* A98D3C 80021B9C C7A801C8 */  lwc1  $f8, 0x1c8($sp)
/* A98D40 80021BA0 4608C482 */  mul.s $f18, $f24, $f8
/* A98D44 80021BA4 46062400 */  add.s $f16, $f4, $f6
/* A98D48 80021BA8 460AD102 */  mul.s $f4, $f26, $f10
/* A98D4C 80021BAC E7B000E4 */  swc1  $f16, 0xe4($sp)
/* A98D50 80021BB0 C7B001B0 */  lwc1  $f16, 0x1b0($sp)
/* A98D54 80021BB4 4610B202 */  mul.s $f8, $f22, $f16
/* A98D58 80021BB8 46049180 */  add.s $f6, $f18, $f4
/* A98D5C 80021BBC C7B20170 */  lwc1  $f18, 0x170($sp)
/* A98D60 80021BC0 4612A102 */  mul.s $f4, $f20, $f18
/* A98D64 80021BC4 46083280 */  add.s $f10, $f6, $f8
/* A98D68 80021BC8 46045400 */  add.s $f16, $f10, $f4
/* A98D6C 80021BCC 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A98D70 80021BD0 E7B000E8 */   swc1  $f16, 0xe8($sp)
/* A98D74 80021BD4 27A4014C */  addiu $a0, $sp, 0x14c
/* A98D78 80021BD8 0C01DFD7 */  jal   Math_Vec3f_Scale
/* A98D7C 80021BDC 3C054120 */   lui   $a1, 0x4120
/* A98D80 80021BE0 3C028011 */  lui   $v0, %hi(D_80115770) # $v0, 0x8011
/* A98D84 80021BE4 24425770 */  addiu $v0, %lo(D_80115770) # addiu $v0, $v0, 0x5770
/* A98D88 80021BE8 8C4A0000 */  lw    $t2, ($v0)
/* A98D8C 80021BEC AA0A0000 */  swl   $t2, ($s0)
/* A98D90 80021BF0 BA0A0003 */  swr   $t2, 3($s0)
/* A98D94 80021BF4 8C490004 */  lw    $t1, 4($v0)
/* A98D98 80021BF8 AA090004 */  swl   $t1, 4($s0)
/* A98D9C 80021BFC BA090007 */  swr   $t1, 7($s0)
/* A98DA0 80021C00 8C4A0008 */  lw    $t2, 8($v0)
/* A98DA4 80021C04 AA0A0008 */  swl   $t2, 8($s0)
/* A98DA8 80021C08 BA0A000B */  swr   $t2, 0xb($s0)
/* A98DAC 80021C0C 8C49000C */  lw    $t1, 0xc($v0)
/* A98DB0 80021C10 AA09000C */  swl   $t1, 0xc($s0)
/* A98DB4 80021C14 BA09000F */  swr   $t1, 0xf($s0)
/* A98DB8 80021C18 8C4C0000 */  lw    $t4, ($v0)
/* A98DBC 80021C1C AA2C0000 */  swl   $t4, ($s1)
/* A98DC0 80021C20 BA2C0003 */  swr   $t4, 3($s1)
/* A98DC4 80021C24 8C4B0004 */  lw    $t3, 4($v0)
/* A98DC8 80021C28 AA2B0004 */  swl   $t3, 4($s1)
/* A98DCC 80021C2C BA2B0007 */  swr   $t3, 7($s1)
/* A98DD0 80021C30 8C4C0008 */  lw    $t4, 8($v0)
/* A98DD4 80021C34 AA2C0008 */  swl   $t4, 8($s1)
/* A98DD8 80021C38 BA2C000B */  swr   $t4, 0xb($s1)
/* A98DDC 80021C3C 8C4B000C */  lw    $t3, 0xc($v0)
/* A98DE0 80021C40 AA2B000C */  swl   $t3, 0xc($s1)
/* A98DE4 80021C44 BA2B000F */  swr   $t3, 0xf($s1)
/* A98DE8 80021C48 0C03F3CD */  jal   Math_nearbyintf
/* A98DEC 80021C4C C7AC0158 */   lwc1  $f12, 0x158($sp)
/* A98DF0 80021C50 4600018D */  trunc.w.s $f6, $f0
/* A98DF4 80021C54 440E3000 */  mfc1  $t6, $f6
/* A98DF8 80021C58 00000000 */  nop   
/* A98DFC 80021C5C A60E0000 */  sh    $t6, ($s0)
/* A98E00 80021C60 0C03F3CD */  jal   Math_nearbyintf
/* A98E04 80021C64 C7AC015C */   lwc1  $f12, 0x15c($sp)
/* A98E08 80021C68 4600020D */  trunc.w.s $f8, $f0
/* A98E0C 80021C6C 44184000 */  mfc1  $t8, $f8
/* A98E10 80021C70 00000000 */  nop   
/* A98E14 80021C74 A6180002 */  sh    $t8, 2($s0)
/* A98E18 80021C78 0C03F3CD */  jal   Math_nearbyintf
/* A98E1C 80021C7C C7AC0160 */   lwc1  $f12, 0x160($sp)
/* A98E20 80021C80 4600048D */  trunc.w.s $f18, $f0
/* A98E24 80021C84 4406E000 */  mfc1  $a2, $f28
/* A98E28 80021C88 44089000 */  mfc1  $t0, $f18
/* A98E2C 80021C8C 00000000 */  nop   
/* A98E30 80021C90 A6080004 */  sh    $t0, 4($s0)
/* A98E34 80021C94 93A5019C */  lbu   $a1, 0x19c($sp)
/* A98E38 80021C98 0C009FA1 */  jal   func_80027E84
/* A98E3C 80021C9C 93A401A4 */   lbu   $a0, 0x1a4($sp)
/* A98E40 80021CA0 A202000C */  sb    $v0, 0xc($s0)
/* A98E44 80021CA4 4406E000 */  mfc1  $a2, $f28
/* A98E48 80021CA8 93A5019D */  lbu   $a1, 0x19d($sp)
/* A98E4C 80021CAC 0C009FA1 */  jal   func_80027E84
/* A98E50 80021CB0 93A401A5 */   lbu   $a0, 0x1a5($sp)
/* A98E54 80021CB4 A202000D */  sb    $v0, 0xd($s0)
/* A98E58 80021CB8 4406E000 */  mfc1  $a2, $f28
/* A98E5C 80021CBC 93A5019E */  lbu   $a1, 0x19e($sp)
/* A98E60 80021CC0 0C009FA1 */  jal   func_80027E84
/* A98E64 80021CC4 93A401A6 */   lbu   $a0, 0x1a6($sp)
/* A98E68 80021CC8 A202000E */  sb    $v0, 0xe($s0)
/* A98E6C 80021CCC 4406E000 */  mfc1  $a2, $f28
/* A98E70 80021CD0 93A5019F */  lbu   $a1, 0x19f($sp)
/* A98E74 80021CD4 0C009FA1 */  jal   func_80027E84
/* A98E78 80021CD8 93A401A7 */   lbu   $a0, 0x1a7($sp)
/* A98E7C 80021CDC A202000F */  sb    $v0, 0xf($s0)
/* A98E80 80021CE0 0C03F3CD */  jal   Math_nearbyintf
/* A98E84 80021CE4 C7AC014C */   lwc1  $f12, 0x14c($sp)
/* A98E88 80021CE8 4600028D */  trunc.w.s $f10, $f0
/* A98E8C 80021CEC 440A5000 */  mfc1  $t2, $f10
/* A98E90 80021CF0 00000000 */  nop   
/* A98E94 80021CF4 A62A0000 */  sh    $t2, ($s1)
/* A98E98 80021CF8 0C03F3CD */  jal   Math_nearbyintf
/* A98E9C 80021CFC C7AC0150 */   lwc1  $f12, 0x150($sp)
/* A98EA0 80021D00 4600010D */  trunc.w.s $f4, $f0
/* A98EA4 80021D04 440C2000 */  mfc1  $t4, $f4
/* A98EA8 80021D08 00000000 */  nop   
/* A98EAC 80021D0C A62C0002 */  sh    $t4, 2($s1)
/* A98EB0 80021D10 0C03F3CD */  jal   Math_nearbyintf
/* A98EB4 80021D14 C7AC0154 */   lwc1  $f12, 0x154($sp)
/* A98EB8 80021D18 4600040D */  trunc.w.s $f16, $f0
/* A98EBC 80021D1C 4406E000 */  mfc1  $a2, $f28
/* A98EC0 80021D20 440E8000 */  mfc1  $t6, $f16
/* A98EC4 80021D24 00000000 */  nop   
/* A98EC8 80021D28 A62E0004 */  sh    $t6, 4($s1)
/* A98ECC 80021D2C 93A50198 */  lbu   $a1, 0x198($sp)
/* A98ED0 80021D30 0C009FA1 */  jal   func_80027E84
/* A98ED4 80021D34 93A401A0 */   lbu   $a0, 0x1a0($sp)
/* A98ED8 80021D38 A222000C */  sb    $v0, 0xc($s1)
/* A98EDC 80021D3C 4406E000 */  mfc1  $a2, $f28
/* A98EE0 80021D40 93A50199 */  lbu   $a1, 0x199($sp)
/* A98EE4 80021D44 0C009FA1 */  jal   func_80027E84
/* A98EE8 80021D48 93A401A1 */   lbu   $a0, 0x1a1($sp)
/* A98EEC 80021D4C A222000D */  sb    $v0, 0xd($s1)
/* A98EF0 80021D50 4406E000 */  mfc1  $a2, $f28
/* A98EF4 80021D54 93A5019A */  lbu   $a1, 0x19a($sp)
/* A98EF8 80021D58 0C009FA1 */  jal   func_80027E84
/* A98EFC 80021D5C 93A401A2 */   lbu   $a0, 0x1a2($sp)
/* A98F00 80021D60 A222000E */  sb    $v0, 0xe($s1)
/* A98F04 80021D64 4406E000 */  mfc1  $a2, $f28
/* A98F08 80021D68 93A5019B */  lbu   $a1, 0x19b($sp)
/* A98F0C 80021D6C 0C009FA1 */  jal   func_80027E84
/* A98F10 80021D70 93A401A3 */   lbu   $a0, 0x1a3($sp)
/* A98F14 80021D74 8FAF00EC */  lw    $t7, 0xec($sp)
/* A98F18 80021D78 26520001 */  addiu $s2, $s2, 1
/* A98F1C 80021D7C 24010008 */  li    $at, 8
/* A98F20 80021D80 000FC100 */  sll   $t8, $t7, 4
/* A98F24 80021D84 0298C821 */  addu  $t9, $s4, $t8
/* A98F28 80021D88 26730002 */  addiu $s3, $s3, 2
/* A98F2C 80021D8C 26310020 */  addiu $s1, $s1, 0x20
/* A98F30 80021D90 26100020 */  addiu $s0, $s0, 0x20
/* A98F34 80021D94 1641FF26 */  bne   $s2, $at, .L80021A30
/* A98F38 80021D98 A322000F */   sb    $v0, 0xf($t9)
/* A98F3C 80021D9C 8FA40204 */  lw    $a0, 0x204($sp)
/* A98F40 80021DA0 3C090101 */  lui   $t1, (0x01010020 >> 16) # lui $t1, 0x101
/* A98F44 80021DA4 35290020 */  ori   $t1, (0x01010020 & 0xFFFF) # ori $t1, $t1, 0x20
/* A98F48 80021DA8 8C8202D0 */  lw    $v0, 0x2d0($a0)
/* A98F4C 80021DAC 3C0B0600 */  lui   $t3, (0x06000206 >> 16) # lui $t3, 0x600
/* A98F50 80021DB0 356B0206 */  ori   $t3, (0x06000206 & 0xFFFF) # ori $t3, $t3, 0x206
/* A98F54 80021DB4 24480008 */  addiu $t0, $v0, 8
/* A98F58 80021DB8 AC8802D0 */  sw    $t0, 0x2d0($a0)
/* A98F5C 80021DBC AC540004 */  sw    $s4, 4($v0)
/* A98F60 80021DC0 AC490000 */  sw    $t1, ($v0)
/* A98F64 80021DC4 8C8202D0 */  lw    $v0, 0x2d0($a0)
/* A98F68 80021DC8 240C0604 */  li    $t4, 1540
/* A98F6C 80021DCC 3C0E0604 */  lui   $t6, (0x0604060A >> 16) # lui $t6, 0x604
/* A98F70 80021DD0 244A0008 */  addiu $t2, $v0, 8
/* A98F74 80021DD4 AC8A02D0 */  sw    $t2, 0x2d0($a0)
/* A98F78 80021DD8 AC4C0004 */  sw    $t4, 4($v0)
/* A98F7C 80021DDC AC4B0000 */  sw    $t3, ($v0)
/* A98F80 80021DE0 8C8202D0 */  lw    $v0, 0x2d0($a0)
/* A98F84 80021DE4 3C0F0004 */  lui   $t7, (0x00040A08 >> 16) # lui $t7, 4
/* A98F88 80021DE8 35EF0A08 */  ori   $t7, (0x00040A08 & 0xFFFF) # ori $t7, $t7, 0xa08
/* A98F8C 80021DEC 244D0008 */  addiu $t5, $v0, 8
/* A98F90 80021DF0 AC8D02D0 */  sw    $t5, 0x2d0($a0)
/* A98F94 80021DF4 35CE060A */  ori   $t6, (0x0604060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* A98F98 80021DF8 AC4E0000 */  sw    $t6, ($v0)
/* A98F9C 80021DFC AC4F0004 */  sw    $t7, 4($v0)
/* A98FA0 80021E00 8C8202D0 */  lw    $v0, 0x2d0($a0)
/* A98FA4 80021E04 3C080008 */  lui   $t0, (0x00080E0C >> 16) # lui $t0, 8
/* A98FA8 80021E08 3C190608 */  lui   $t9, (0x06080A0E >> 16) # lui $t9, 0x608
/* A98FAC 80021E0C 24580008 */  addiu $t8, $v0, 8
/* A98FB0 80021E10 AC9802D0 */  sw    $t8, 0x2d0($a0)
/* A98FB4 80021E14 37390A0E */  ori   $t9, (0x06080A0E & 0xFFFF) # ori $t9, $t9, 0xa0e
/* A98FB8 80021E18 35080E0C */  ori   $t0, (0x00080E0C & 0xFFFF) # ori $t0, $t0, 0xe0c
/* A98FBC 80021E1C AC480004 */  sw    $t0, 4($v0)
/* A98FC0 80021E20 AC590000 */  sw    $t9, ($v0)
/* A98FC4 80021E24 8C8202D0 */  lw    $v0, 0x2d0($a0)
/* A98FC8 80021E28 3C0B000C */  lui   $t3, (0x000C1210 >> 16) # lui $t3, 0xc
/* A98FCC 80021E2C 3C0A060C */  lui   $t2, (0x060C0E12 >> 16) # lui $t2, 0x60c
/* A98FD0 80021E30 24490008 */  addiu $t1, $v0, 8
/* A98FD4 80021E34 AC8902D0 */  sw    $t1, 0x2d0($a0)
/* A98FD8 80021E38 354A0E12 */  ori   $t2, (0x060C0E12 & 0xFFFF) # ori $t2, $t2, 0xe12
/* A98FDC 80021E3C 356B1210 */  ori   $t3, (0x000C1210 & 0xFFFF) # ori $t3, $t3, 0x1210
/* A98FE0 80021E40 AC4B0004 */  sw    $t3, 4($v0)
/* A98FE4 80021E44 AC4A0000 */  sw    $t2, ($v0)
/* A98FE8 80021E48 8C8202D0 */  lw    $v0, 0x2d0($a0)
/* A98FEC 80021E4C 3C0E0010 */  lui   $t6, (0x00101614 >> 16) # lui $t6, 0x10
/* A98FF0 80021E50 3C0D0610 */  lui   $t5, (0x06101216 >> 16) # lui $t5, 0x610
/* A98FF4 80021E54 244C0008 */  addiu $t4, $v0, 8
/* A98FF8 80021E58 AC8C02D0 */  sw    $t4, 0x2d0($a0)
/* A98FFC 80021E5C 35AD1216 */  ori   $t5, (0x06101216 & 0xFFFF) # ori $t5, $t5, 0x1216
/* A99000 80021E60 35CE1614 */  ori   $t6, (0x00101614 & 0xFFFF) # ori $t6, $t6, 0x1614
/* A99004 80021E64 AC4E0004 */  sw    $t6, 4($v0)
/* A99008 80021E68 AC4D0000 */  sw    $t5, ($v0)
/* A9900C 80021E6C 8C8202D0 */  lw    $v0, 0x2d0($a0)
/* A99010 80021E70 3C190014 */  lui   $t9, (0x00141A18 >> 16) # lui $t9, 0x14
/* A99014 80021E74 3C180614 */  lui   $t8, (0x0614161A >> 16) # lui $t8, 0x614
/* A99018 80021E78 244F0008 */  addiu $t7, $v0, 8
/* A9901C 80021E7C AC8F02D0 */  sw    $t7, 0x2d0($a0)
/* A99020 80021E80 3718161A */  ori   $t8, (0x0614161A & 0xFFFF) # ori $t8, $t8, 0x161a
/* A99024 80021E84 37391A18 */  ori   $t9, (0x00141A18 & 0xFFFF) # ori $t9, $t9, 0x1a18
/* A99028 80021E88 AC590004 */  sw    $t9, 4($v0)
/* A9902C 80021E8C AC580000 */  sw    $t8, ($v0)
/* A99030 80021E90 8C8202D0 */  lw    $v0, 0x2d0($a0)
/* A99034 80021E94 3C0A0018 */  lui   $t2, (0x00181E1C >> 16) # lui $t2, 0x18
/* A99038 80021E98 3C090618 */  lui   $t1, (0x06181A1E >> 16) # lui $t1, 0x618
/* A9903C 80021E9C 24480008 */  addiu $t0, $v0, 8
/* A99040 80021EA0 AC8802D0 */  sw    $t0, 0x2d0($a0)
/* A99044 80021EA4 35291A1E */  ori   $t1, (0x06181A1E & 0xFFFF) # ori $t1, $t1, 0x1a1e
/* A99048 80021EA8 354A1E1C */  ori   $t2, (0x00181E1C & 0xFFFF) # ori $t2, $t2, 0x1e1c
/* A9904C 80021EAC AC4A0004 */  sw    $t2, 4($v0)
/* A99050 80021EB0 AC490000 */  sw    $t1, ($v0)
.L80021EB4:
/* A99054 80021EB4 3C068013 */  lui   $a2, %hi(D_801352B8) # $a2, 0x8013
/* A99058 80021EB8 24C652B8 */  addiu $a2, %lo(D_801352B8) # addiu $a2, $a2, 0x52b8
/* A9905C 80021EBC 27A40124 */  addiu $a0, $sp, 0x124
/* A99060 80021EC0 8FA50204 */  lw    $a1, 0x204($sp)
/* A99064 80021EC4 0C031AD5 */  jal   func_800C6B54
/* A99068 80021EC8 240704A0 */   li    $a3, 1184
/* A9906C 80021ECC 8FBF0064 */  lw    $ra, 0x64($sp)
/* A99070 80021ED0 D7B40028 */  ldc1  $f20, 0x28($sp)
/* A99074 80021ED4 D7B60030 */  ldc1  $f22, 0x30($sp)
/* A99078 80021ED8 D7B80038 */  ldc1  $f24, 0x38($sp)
/* A9907C 80021EDC D7BA0040 */  ldc1  $f26, 0x40($sp)
/* A99080 80021EE0 D7BC0048 */  ldc1  $f28, 0x48($sp)
/* A99084 80021EE4 8FB00050 */  lw    $s0, 0x50($sp)
/* A99088 80021EE8 8FB10054 */  lw    $s1, 0x54($sp)
/* A9908C 80021EEC 8FB20058 */  lw    $s2, 0x58($sp)
/* A99090 80021EF0 8FB3005C */  lw    $s3, 0x5c($sp)
/* A99094 80021EF4 8FB40060 */  lw    $s4, 0x60($sp)
/* A99098 80021EF8 03E00008 */  jr    $ra
/* A9909C 80021EFC 27BD01F8 */   addiu $sp, $sp, 0x1f8

