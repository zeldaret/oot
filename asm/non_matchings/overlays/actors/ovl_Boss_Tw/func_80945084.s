.rdata
glabel D_8094AD88
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AD98
    .asciz "../z_boss_tw.c"
    .balign 4

.text
glabel func_80945084
/* 0C3B4 80945084 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 0C3B8 80945088 AFB1002C */  sw      $s1, 0x002C($sp)
/* 0C3BC 8094508C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0C3C0 80945090 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 0C3C4 80945094 AFB20030 */  sw      $s2, 0x0030($sp)
/* 0C3C8 80945098 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0C3CC 8094509C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0C3D0 809450A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0C3D4 809450A4 3C068095 */  lui     $a2, %hi(D_8094AD88)       ## $a2 = 80950000
/* 0C3D8 809450A8 24C6AD88 */  addiu   $a2, $a2, %lo(D_8094AD88)  ## $a2 = 8094AD88
/* 0C3DC 809450AC 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 0C3E0 809450B0 24071E44 */  addiu   $a3, $zero, 0x1E44         ## $a3 = 00001E44
/* 0C3E4 809450B4 0C031AB1 */  jal     Graph_OpenDisps
/* 0C3E8 809450B8 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 0C3EC 809450BC 920E0564 */  lbu     $t6, 0x0564($s0)           ## 00000564
/* 0C3F0 809450C0 11C000A7 */  beq     $t6, $zero, .L80945360
/* 0C3F4 809450C4 00000000 */  nop
/* 0C3F8 809450C8 0C024F46 */  jal     func_80093D18
/* 0C3FC 809450CC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0C400 809450D0 0C024F61 */  jal     func_80093D84
/* 0C404 809450D4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0C408 809450D8 860F015C */  lh      $t7, 0x015C($s0)           ## 0000015C
/* 0C40C 809450DC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0C410 809450E0 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 0C414 809450E4 5300000E */  beql    $t8, $zero, .L80945120
/* 0C418 809450E8 4449F800 */  cfc1    $t1, $31
/* 0C41C 809450EC 8E4402C0 */  lw      $a0, 0x02C0($s2)           ## 000002C0
/* 0C420 809450F0 24190384 */  addiu   $t9, $zero, 0x0384         ## $t9 = 00000384
/* 0C424 809450F4 2408044B */  addiu   $t0, $zero, 0x044B         ## $t0 = 0000044B
/* 0C428 809450F8 AFA80018 */  sw      $t0, 0x0018($sp)
/* 0C42C 809450FC AFB90014 */  sw      $t9, 0x0014($sp)
/* 0C430 80945100 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0C434 80945104 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 0C438 80945108 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 0C43C 8094510C 0C024DC2 */  jal     Gfx_SetFog2
/* 0C440 80945110 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0C444 80945114 10000073 */  beq     $zero, $zero, .L809452E4
/* 0C448 80945118 AE4202C0 */  sw      $v0, 0x02C0($s2)           ## 000002C0
/* 0C44C 8094511C 4449F800 */  cfc1    $t1, $31
.L80945120:
/* 0C450 80945120 44C5F800 */  ctc1    $a1, $31
/* 0C454 80945124 C60401D4 */  lwc1    $f4, 0x01D4($s0)           ## 000001D4
/* 0C458 80945128 8E4402C0 */  lw      $a0, 0x02C0($s2)           ## 000002C0
/* 0C45C 8094512C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0C460 80945130 460021A4 */  cvt.w.s $f6, $f4
/* 0C464 80945134 4445F800 */  cfc1    $a1, $31
/* 0C468 80945138 00000000 */  nop
/* 0C46C 8094513C 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 0C470 80945140 50A00013 */  beql    $a1, $zero, .L80945190
/* 0C474 80945144 44053000 */  mfc1    $a1, $f6
/* 0C478 80945148 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 0C47C 8094514C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0C480 80945150 46062181 */  sub.s   $f6, $f4, $f6
/* 0C484 80945154 44C5F800 */  ctc1    $a1, $31
/* 0C488 80945158 00000000 */  nop
/* 0C48C 8094515C 460031A4 */  cvt.w.s $f6, $f6
/* 0C490 80945160 4445F800 */  cfc1    $a1, $31
/* 0C494 80945164 00000000 */  nop
/* 0C498 80945168 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 0C49C 8094516C 14A00005 */  bne     $a1, $zero, .L80945184
/* 0C4A0 80945170 00000000 */  nop
/* 0C4A4 80945174 44053000 */  mfc1    $a1, $f6
/* 0C4A8 80945178 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0C4AC 8094517C 10000007 */  beq     $zero, $zero, .L8094519C
/* 0C4B0 80945180 00A12825 */  or      $a1, $a1, $at              ## $a1 = 80000000
.L80945184:
/* 0C4B4 80945184 10000005 */  beq     $zero, $zero, .L8094519C
/* 0C4B8 80945188 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 0C4BC 8094518C 44053000 */  mfc1    $a1, $f6
.L80945190:
/* 0C4C0 80945190 00000000 */  nop
/* 0C4C4 80945194 04A0FFFB */  bltz    $a1, .L80945184
/* 0C4C8 80945198 00000000 */  nop
.L8094519C:
/* 0C4CC 8094519C 44C9F800 */  ctc1    $t1, $31
/* 0C4D0 809451A0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0C4D4 809451A4 C60801D8 */  lwc1    $f8, 0x01D8($s0)           ## 000001D8
/* 0C4D8 809451A8 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0C4DC 809451AC 444AF800 */  cfc1    $t2, $31
/* 0C4E0 809451B0 44C6F800 */  ctc1    $a2, $31
/* 0C4E4 809451B4 00000000 */  nop
/* 0C4E8 809451B8 460042A4 */  cvt.w.s $f10, $f8
/* 0C4EC 809451BC 4446F800 */  cfc1    $a2, $31
/* 0C4F0 809451C0 00000000 */  nop
/* 0C4F4 809451C4 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 0C4F8 809451C8 50C00013 */  beql    $a2, $zero, .L80945218
/* 0C4FC 809451CC 44065000 */  mfc1    $a2, $f10
/* 0C500 809451D0 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 0C504 809451D4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0C508 809451D8 460A4281 */  sub.s   $f10, $f8, $f10
/* 0C50C 809451DC 44C6F800 */  ctc1    $a2, $31
/* 0C510 809451E0 00000000 */  nop
/* 0C514 809451E4 460052A4 */  cvt.w.s $f10, $f10
/* 0C518 809451E8 4446F800 */  cfc1    $a2, $31
/* 0C51C 809451EC 00000000 */  nop
/* 0C520 809451F0 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 0C524 809451F4 14C00005 */  bne     $a2, $zero, .L8094520C
/* 0C528 809451F8 00000000 */  nop
/* 0C52C 809451FC 44065000 */  mfc1    $a2, $f10
/* 0C530 80945200 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0C534 80945204 10000007 */  beq     $zero, $zero, .L80945224
/* 0C538 80945208 00C13025 */  or      $a2, $a2, $at              ## $a2 = 80000000
.L8094520C:
/* 0C53C 8094520C 10000005 */  beq     $zero, $zero, .L80945224
/* 0C540 80945210 2406FFFF */  addiu   $a2, $zero, 0xFFFF         ## $a2 = FFFFFFFF
/* 0C544 80945214 44065000 */  mfc1    $a2, $f10
.L80945218:
/* 0C548 80945218 00000000 */  nop
/* 0C54C 8094521C 04C0FFFB */  bltz    $a2, .L8094520C
/* 0C550 80945220 00000000 */  nop
.L80945224:
/* 0C554 80945224 44CAF800 */  ctc1    $t2, $31
/* 0C558 80945228 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0C55C 8094522C C61001DC */  lwc1    $f16, 0x01DC($s0)          ## 000001DC
/* 0C560 80945230 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0C564 80945234 444BF800 */  cfc1    $t3, $31
/* 0C568 80945238 44C7F800 */  ctc1    $a3, $31
/* 0C56C 8094523C 00000000 */  nop
/* 0C570 80945240 460084A4 */  cvt.w.s $f18, $f16
/* 0C574 80945244 4447F800 */  cfc1    $a3, $31
/* 0C578 80945248 00000000 */  nop
/* 0C57C 8094524C 30E70078 */  andi    $a3, $a3, 0x0078           ## $a3 = 00000000
/* 0C580 80945250 50E00013 */  beql    $a3, $zero, .L809452A0
/* 0C584 80945254 44079000 */  mfc1    $a3, $f18
/* 0C588 80945258 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 0C58C 8094525C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0C590 80945260 46128481 */  sub.s   $f18, $f16, $f18
/* 0C594 80945264 44C7F800 */  ctc1    $a3, $31
/* 0C598 80945268 00000000 */  nop
/* 0C59C 8094526C 460094A4 */  cvt.w.s $f18, $f18
/* 0C5A0 80945270 4447F800 */  cfc1    $a3, $31
/* 0C5A4 80945274 00000000 */  nop
/* 0C5A8 80945278 30E70078 */  andi    $a3, $a3, 0x0078           ## $a3 = 00000000
/* 0C5AC 8094527C 14E00005 */  bne     $a3, $zero, .L80945294
/* 0C5B0 80945280 00000000 */  nop
/* 0C5B4 80945284 44079000 */  mfc1    $a3, $f18
/* 0C5B8 80945288 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0C5BC 8094528C 10000007 */  beq     $zero, $zero, .L809452AC
/* 0C5C0 80945290 00E13825 */  or      $a3, $a3, $at              ## $a3 = 80000000
.L80945294:
/* 0C5C4 80945294 10000005 */  beq     $zero, $zero, .L809452AC
/* 0C5C8 80945298 2407FFFF */  addiu   $a3, $zero, 0xFFFF         ## $a3 = FFFFFFFF
/* 0C5CC 8094529C 44079000 */  mfc1    $a3, $f18
.L809452A0:
/* 0C5D0 809452A0 00000000 */  nop
/* 0C5D4 809452A4 04E0FFFB */  bltz    $a3, .L80945294
/* 0C5D8 809452A8 00000000 */  nop
.L809452AC:
/* 0C5DC 809452AC AFA00010 */  sw      $zero, 0x0010($sp)
/* 0C5E0 809452B0 C60401E0 */  lwc1    $f4, 0x01E0($s0)           ## 000001E0
/* 0C5E4 809452B4 44CBF800 */  ctc1    $t3, $31
/* 0C5E8 809452B8 00000000 */  nop
/* 0C5EC 809452BC 4600218D */  trunc.w.s $f6, $f4
/* 0C5F0 809452C0 440D3000 */  mfc1    $t5, $f6
/* 0C5F4 809452C4 00000000 */  nop
/* 0C5F8 809452C8 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 0C5FC 809452CC C60801E4 */  lwc1    $f8, 0x01E4($s0)           ## 000001E4
/* 0C600 809452D0 4600428D */  trunc.w.s $f10, $f8
/* 0C604 809452D4 440F5000 */  mfc1    $t7, $f10
/* 0C608 809452D8 0C024DC2 */  jal     Gfx_SetFog2
/* 0C60C 809452DC AFAF0018 */  sw      $t7, 0x0018($sp)
/* 0C610 809452E0 AE4202C0 */  sw      $v0, 0x02C0($s2)           ## 000002C0
.L809452E4:
/* 0C614 809452E4 0C034213 */  jal     Matrix_Push
/* 0C618 809452E8 00000000 */  nop
/* 0C61C 809452EC 8E05056C */  lw      $a1, 0x056C($s0)           ## 0000056C
/* 0C620 809452F0 8E060588 */  lw      $a2, 0x0588($s0)           ## 00000588
/* 0C624 809452F4 9207056A */  lbu     $a3, 0x056A($s0)           ## 0000056A
/* 0C628 809452F8 3C188094 */  lui     $t8, %hi(func_80943950)    ## $t8 = 80940000
/* 0C62C 809452FC 3C198094 */  lui     $t9, %hi(func_80943D90)    ## $t9 = 80940000
/* 0C630 80945300 27393D90 */  addiu   $t9, $t9, %lo(func_80943D90) ## $t9 = 80943D90
/* 0C634 80945304 27183950 */  addiu   $t8, $t8, %lo(func_80943950) ## $t8 = 80943950
/* 0C638 80945308 AFB80010 */  sw      $t8, 0x0010($sp)
/* 0C63C 8094530C AFB90014 */  sw      $t9, 0x0014($sp)
/* 0C640 80945310 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0C644 80945314 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 0C648 80945318 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0C64C 8094531C 0C034221 */  jal     Matrix_Pop
/* 0C650 80945320 00000000 */  nop
/* 0C654 80945324 3C048095 */  lui     $a0, %hi(D_8094A9EC)       ## $a0 = 80950000
/* 0C658 80945328 2484A9EC */  addiu   $a0, $a0, %lo(D_8094A9EC)  ## $a0 = 8094A9EC
/* 0C65C 8094532C 0C0346BD */  jal     Matrix_MultVec3f
/* 0C660 80945330 2605048C */  addiu   $a1, $s0, 0x048C           ## $a1 = 0000048C
/* 0C664 80945334 8E4402C0 */  lw      $a0, 0x02C0($s2)           ## 000002C0
/* 0C668 80945338 922507AF */  lbu     $a1, 0x07AF($s1)           ## 000007AF
/* 0C66C 8094533C 922607B0 */  lbu     $a2, 0x07B0($s1)           ## 000007B0
/* 0C670 80945340 922707B1 */  lbu     $a3, 0x07B1($s1)           ## 000007B1
/* 0C674 80945344 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0C678 80945348 862807B2 */  lh      $t0, 0x07B2($s1)           ## 000007B2
/* 0C67C 8094534C 240903E8 */  addiu   $t1, $zero, 0x03E8         ## $t1 = 000003E8
/* 0C680 80945350 AFA90018 */  sw      $t1, 0x0018($sp)
/* 0C684 80945354 0C024DC2 */  jal     Gfx_SetFog2
/* 0C688 80945358 AFA80014 */  sw      $t0, 0x0014($sp)
/* 0C68C 8094535C AE4202C0 */  sw      $v0, 0x02C0($s2)           ## 000002C0
.L80945360:
/* 0C690 80945360 0C25219A */  jal     func_80948668
/* 0C694 80945364 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0C698 80945368 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0C69C 8094536C 0C250FC2 */  jal     func_80943F08
/* 0C6A0 80945370 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0C6A4 80945374 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0C6A8 80945378 C61204D8 */  lwc1    $f18, 0x04D8($s0)          ## 000004D8
/* 0C6AC 8094537C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0C6B0 80945380 4612803C */  c.lt.s  $f16, $f18
/* 0C6B4 80945384 00000000 */  nop
/* 0C6B8 80945388 45020004 */  bc1fl   .L8094539C
/* 0C6BC 8094538C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0C6C0 80945390 0C2511EF */  jal     func_809447BC
/* 0C6C4 80945394 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0C6C8 80945398 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
.L8094539C:
/* 0C6CC 8094539C C60601CC */  lwc1    $f6, 0x01CC($s0)           ## 000001CC
/* 0C6D0 809453A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0C6D4 809453A4 4606203C */  c.lt.s  $f4, $f6
/* 0C6D8 809453A8 00000000 */  nop
/* 0C6DC 809453AC 45000003 */  bc1f    .L809453BC
/* 0C6E0 809453B0 00000000 */  nop
/* 0C6E4 809453B4 0C251314 */  jal     func_80944C50
/* 0C6E8 809453B8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L809453BC:
/* 0C6EC 809453BC 3C068095 */  lui     $a2, %hi(D_8094AD98)       ## $a2 = 80950000
/* 0C6F0 809453C0 24C6AD98 */  addiu   $a2, $a2, %lo(D_8094AD98)  ## $a2 = 8094AD98
/* 0C6F4 809453C4 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 0C6F8 809453C8 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 0C6FC 809453CC 0C031AD5 */  jal     Graph_CloseDisps
/* 0C700 809453D0 24071E7C */  addiu   $a3, $zero, 0x1E7C         ## $a3 = 00001E7C
/* 0C704 809453D4 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 0C708 809453D8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0C70C 809453DC 8FB1002C */  lw      $s1, 0x002C($sp)
/* 0C710 809453E0 8FB20030 */  lw      $s2, 0x0030($sp)
/* 0C714 809453E4 03E00008 */  jr      $ra
/* 0C718 809453E8 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
