.late_rodata
glabel D_80A66948
    .float 0.01

glabel D_80A6694C
 .word 0x4242CCCD

.text
glabel func_80A62278
/* 06F88 80A62278 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 06F8C 80A6227C AFB00028 */  sw      $s0, 0x0028($sp)
/* 06F90 80A62280 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 06F94 80A62284 AFBF002C */  sw      $ra, 0x002C($sp)
/* 06F98 80A62288 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 06F9C 80A6228C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 06FA0 80A62290 3C0541C8 */  lui     $a1, 0x41C8                ## $a1 = 41C80000
/* 06FA4 80A62294 0C00A295 */  jal     func_80028A54
/* 06FA8 80A62298 AFA60034 */  sw      $a2, 0x0034($sp)
/* 06FAC 80A6229C 8E0F01F0 */  lw      $t7, 0x01F0($s0)           ## 000001F0
/* 06FB0 80A622A0 8FA60034 */  lw      $a2, 0x0034($sp)
/* 06FB4 80A622A4 8E0801CC */  lw      $t0, 0x01CC($s0)           ## 000001CC
/* 06FB8 80A622A8 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 06FBC 80A622AC 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 06FC0 80A622B0 35F80004 */  ori     $t8, $t7, 0x0004           ## $t8 = 00000004
/* 06FC4 80A622B4 AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
/* 06FC8 80A622B8 AE1801F0 */  sw      $t8, 0x01F0($s0)           ## 000001F0
/* 06FCC 80A622BC AE190210 */  sw      $t9, 0x0210($s0)           ## 00000210
/* 06FD0 80A622C0 85090002 */  lh      $t1, 0x0002($t0)           ## 00000002
/* 06FD4 80A622C4 8CCB0000 */  lw      $t3, 0x0000($a2)           ## 00000000
/* 06FD8 80A622C8 3C0180A6 */  lui     $at, %hi(D_80A66948)       ## $at = 80A60000
/* 06FDC 80A622CC 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 06FE0 80A622D0 C4266948 */  lwc1    $f6, %lo(D_80A66948)($at)
/* 06FE4 80A622D4 AE0B03B0 */  sw      $t3, 0x03B0($s0)           ## 000003B0
/* 06FE8 80A622D8 46802020 */  cvt.s.w $f0, $f4
/* 06FEC 80A622DC 8CCA0004 */  lw      $t2, 0x0004($a2)           ## 00000004
/* 06FF0 80A622E0 920C03AC */  lbu     $t4, 0x03AC($s0)           ## 000003AC
/* 06FF4 80A622E4 3C0E80A6 */  lui     $t6, %hi(D_80A665DC)       ## $t6 = 80A60000
/* 06FF8 80A622E8 AE0A03B4 */  sw      $t2, 0x03B4($s0)           ## 000003B4
/* 06FFC 80A622EC C60803B4 */  lwc1    $f8, 0x03B4($s0)           ## 000003B4
/* 07000 80A622F0 46060002 */  mul.s   $f0, $f0, $f6
/* 07004 80A622F4 8CCB0008 */  lw      $t3, 0x0008($a2)           ## 00000008
/* 07008 80A622F8 000C6880 */  sll     $t5, $t4,  2
/* 0700C 80A622FC 01AC6821 */  addu    $t5, $t5, $t4
/* 07010 80A62300 000D6880 */  sll     $t5, $t5,  2
/* 07014 80A62304 25CE65DC */  addiu   $t6, $t6, %lo(D_80A665DC)  ## $t6 = 80A665DC
/* 07018 80A62308 01AE1021 */  addu    $v0, $t5, $t6
/* 0701C 80A6230C 46004280 */  add.s   $f10, $f8, $f0
/* 07020 80A62310 AE0B03B8 */  sw      $t3, 0x03B8($s0)           ## 000003B8
/* 07024 80A62314 3C0180A6 */  lui     $at, %hi(D_80A6694C)       ## $at = 80A60000
/* 07028 80A62318 37190008 */  ori     $t9, $t8, 0x0008           ## $t9 = 0000000C
/* 0702C 80A6231C E60A03B4 */  swc1    $f10, 0x03B4($s0)          ## 000003B4
/* 07030 80A62320 844F0010 */  lh      $t7, 0x0010($v0)           ## 00000010
/* 07034 80A62324 C424694C */  lwc1    $f4, %lo(D_80A6694C)($at)
/* 07038 80A62328 C60803B4 */  lwc1    $f8, 0x03B4($s0)           ## 000003B4
/* 0703C 80A6232C 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 07040 80A62330 3C01C3B4 */  lui     $at, 0xC3B4                ## $at = C3B40000
/* 07044 80A62334 AE1901F0 */  sw      $t9, 0x01F0($s0)           ## 000001F0
/* 07048 80A62338 468084A0 */  cvt.s.w $f18, $f16
/* 0704C 80A6233C 44818000 */  mtc1    $at, $f16                  ## $f16 = -360.00
/* 07050 80A62340 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 07054 80A62344 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 07058 80A62348 8E0B0158 */  lw      $t3, 0x0158($s0)           ## 00000158
/* 0705C 80A6234C 3C0D80A6 */  lui     $t5, %hi(D_80A65E58)       ## $t5 = 80A60000
/* 07060 80A62350 46049180 */  add.s   $f6, $f18, $f4
/* 07064 80A62354 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 07068 80A62358 000B6080 */  sll     $t4, $t3,  2
/* 0706C 80A6235C 8E0E0210 */  lw      $t6, 0x0210($s0)           ## 00000210
/* 07070 80A62360 46083281 */  sub.s   $f10, $f6, $f8
/* 07074 80A62364 C608025C */  lwc1    $f8, 0x025C($s0)           ## 0000025C
/* 07078 80A62368 01AC6821 */  addu    $t5, $t5, $t4
/* 0707C 80A6236C 000E7880 */  sll     $t7, $t6,  2
/* 07080 80A62370 46105481 */  sub.s   $f18, $f10, $f16
/* 07084 80A62374 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 07088 80A62378 46004281 */  sub.s   $f10, $f8, $f0
/* 0708C 80A6237C 46049183 */  div.s   $f6, $f18, $f4
/* 07090 80A62380 E60A025C */  swc1    $f10, 0x025C($s0)          ## 0000025C
/* 07094 80A62384 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 07098 80A62388 E60603C0 */  swc1    $f6, 0x03C0($s0)           ## 000003C0
/* 0709C 80A6238C 8449000A */  lh      $t1, 0x000A($v0)           ## 0000000A
/* 070A0 80A62390 AE0003BC */  sw      $zero, 0x03BC($s0)         ## 000003BC
/* 070A4 80A62394 E610006C */  swc1    $f16, 0x006C($s0)          ## 0000006C
/* 070A8 80A62398 01095023 */  subu    $t2, $t0, $t1
/* 070AC 80A6239C A60A03C4 */  sh      $t2, 0x03C4($s0)           ## 000003C4
/* 070B0 80A623A0 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 070B4 80A623A4 8DAD5E58 */  lw      $t5, %lo(D_80A65E58)($t5)
/* 070B8 80A623A8 01AFC021 */  addu    $t8, $t5, $t7
/* 070BC 80A623AC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 070C0 80A623B0 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000004
/* 070C4 80A623B4 8E190158 */  lw      $t9, 0x0158($s0)           ## 00000158
/* 070C8 80A623B8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 070CC 80A623BC 3C0980A6 */  lui     $t1, %hi(D_80A65E58)       ## $t1 = 80A60000
/* 070D0 80A623C0 00194080 */  sll     $t0, $t9,  2
/* 070D4 80A623C4 8E0A0210 */  lw      $t2, 0x0210($s0)           ## 00000210
/* 070D8 80A623C8 01284821 */  addu    $t1, $t1, $t0
/* 070DC 80A623CC 8D295E58 */  lw      $t1, %lo(D_80A65E58)($t1)
/* 070E0 80A623D0 468021A0 */  cvt.s.w $f6, $f4
/* 070E4 80A623D4 000A5880 */  sll     $t3, $t2,  2
/* 070E8 80A623D8 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 070EC 80A623DC 012B6021 */  addu    $t4, $t1, $t3
/* 070F0 80A623E0 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 070F4 80A623E4 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 070F8 80A623E8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 070FC 80A623EC AFAE0014 */  sw      $t6, 0x0014($sp)
/* 07100 80A623F0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 07104 80A623F4 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 07108 80A623F8 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 0710C 80A623FC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 07110 80A62400 0C029468 */  jal     SkelAnime_ChangeAnim

/* 07114 80A62404 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 07118 80A62408 8E0F0228 */  lw      $t7, 0x0228($s0)           ## 00000228
/* 0711C 80A6240C 2605021C */  addiu   $a1, $s0, 0x021C           ## $a1 = 0000021C
/* 07120 80A62410 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 07124 80A62414 ACAF0000 */  sw      $t7, 0x0000($a1)           ## 0000021C
/* 07128 80A62418 8E0D022C */  lw      $t5, 0x022C($s0)           ## 0000022C
/* 0712C 80A6241C 3C088013 */  lui     $t0, %hi(D_801333E8)
/* 07130 80A62420 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 07134 80A62424 ACAD0004 */  sw      $t5, 0x0004($a1)           ## 00000220
/* 07138 80A62428 8E0F0230 */  lw      $t7, 0x0230($s0)           ## 00000230
/* 0713C 80A6242C 250833E8 */  addiu   $t0, %lo(D_801333E8)
/* 07140 80A62430 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 07144 80A62434 ACAF0008 */  sw      $t7, 0x0008($a1)           ## 00000224
/* 07148 80A62438 8E1801F0 */  lw      $t8, 0x01F0($s0)           ## 000001F0
/* 0714C 80A6243C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 07150 80A62440 0018C900 */  sll     $t9, $t8,  4
/* 07154 80A62444 07210004 */  bgez    $t9, .L80A62458
/* 07158 80A62448 00000000 */  nop
/* 0715C 80A6244C AFA70010 */  sw      $a3, 0x0010($sp)
/* 07160 80A62450 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 07164 80A62454 AFA80014 */  sw      $t0, 0x0014($sp)
.L80A62458:
/* 07168 80A62458 3C0A8013 */  lui     $t2, %hi(D_801333E0)
/* 0716C 80A6245C 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 07170 80A62460 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 07174 80A62464 254733E0 */  addiu   $a3, $t2, %lo(D_801333E0)
/* 07178 80A62468 AFA70010 */  sw      $a3, 0x0010($sp)
/* 0717C 80A6246C AFA90014 */  sw      $t1, 0x0014($sp)
/* 07180 80A62470 24042818 */  addiu   $a0, $zero, 0x2818         ## $a0 = 00002818
/* 07184 80A62474 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 07188 80A62478 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 0718C 80A6247C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 07190 80A62480 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 07194 80A62484 240500AA */  addiu   $a1, $zero, 0x00AA         ## $a1 = 000000AA
/* 07198 80A62488 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0719C 80A6248C 0C02A800 */  jal     func_800AA000
/* 071A0 80A62490 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 071A4 80A62494 AE000244 */  sw      $zero, 0x0244($s0)         ## 00000244
/* 071A8 80A62498 8FBF002C */  lw      $ra, 0x002C($sp)
/* 071AC 80A6249C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 071B0 80A624A0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 071B4 80A624A4 03E00008 */  jr      $ra
/* 071B8 80A624A8 00000000 */  nop
