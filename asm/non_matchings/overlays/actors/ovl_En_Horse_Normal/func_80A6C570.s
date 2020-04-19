.late_rodata
glabel D_80A6D5D4
    .float 0.4

glabel D_80A6D5D8
    .float 0.8

.text
glabel func_80A6C570
/* 01320 80A6C570 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01324 80A6C574 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01328 80A6C578 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0132C 80A6C57C AFBF002C */  sw      $ra, 0x002C($sp)
/* 01330 80A6C580 248401A0 */  addiu   $a0, $a0, 0x01A0           ## $a0 = 000001A0
/* 01334 80A6C584 AFA50044 */  sw      $a1, 0x0044($sp)
/* 01338 80A6C588 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 0133C 80A6C58C AFA40030 */  sw      $a0, 0x0030($sp)
/* 01340 80A6C590 50400043 */  beql    $v0, $zero, .L80A6C6A0
/* 01344 80A6C594 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01348 80A6C598 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0134C 80A6C59C 00000000 */  nop
/* 01350 80A6C5A0 3C0180A7 */  lui     $at, %hi(D_80A6D5D4)       ## $at = 80A70000
/* 01354 80A6C5A4 C424D5D4 */  lwc1    $f4, %lo(D_80A6D5D4)($at)
/* 01358 80A6C5A8 3C0180A7 */  lui     $at, %hi(D_80A6D5D8)       ## $at = 80A70000
/* 0135C 80A6C5AC 4604003C */  c.lt.s  $f0, $f4
/* 01360 80A6C5B0 00000000 */  nop
/* 01364 80A6C5B4 45000003 */  bc1f    .L80A6C5C4
/* 01368 80A6C5B8 00000000 */  nop
/* 0136C 80A6C5BC 1000001E */  beq     $zero, $zero, .L80A6C638
/* 01370 80A6C5C0 AE000150 */  sw      $zero, 0x0150($s0)         ## 00000150
.L80A6C5C4:
/* 01374 80A6C5C4 C426D5D8 */  lwc1    $f6, %lo(D_80A6D5D8)($at)
/* 01378 80A6C5C8 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0137C 80A6C5CC 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 01380 80A6C5D0 4606003C */  c.lt.s  $f0, $f6
/* 01384 80A6C5D4 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01388 80A6C5D8 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 0138C 80A6C5DC 26050204 */  addiu   $a1, $s0, 0x0204           ## $a1 = 00000204
/* 01390 80A6C5E0 4500000F */  bc1f    .L80A6C620
/* 01394 80A6C5E4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01398 80A6C5E8 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0139C 80A6C5EC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 013A0 80A6C5F0 3C0F8013 */  lui     $t7, %hi(D_801333E8)
/* 013A4 80A6C5F4 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 013A8 80A6C5F8 AE0E0150 */  sw      $t6, 0x0150($s0)           ## 00000150
/* 013AC 80A6C5FC 25EF33E8 */  addiu   $t7, %lo(D_801333E8)
/* 013B0 80A6C600 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 013B4 80A6C604 AFA70010 */  sw      $a3, 0x0010($sp)
/* 013B8 80A6C608 24042816 */  addiu   $a0, $zero, 0x2816         ## $a0 = 00002816
/* 013BC 80A6C60C 26050204 */  addiu   $a1, $s0, 0x0204           ## $a1 = 00000204
/* 013C0 80A6C610 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 013C4 80A6C614 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 013C8 80A6C618 10000007 */  beq     $zero, $zero, .L80A6C638
/* 013CC 80A6C61C 00000000 */  nop
.L80A6C620:
/* 013D0 80A6C620 3C198013 */  lui     $t9, %hi(D_801333E8)
/* 013D4 80A6C624 AE180150 */  sw      $t8, 0x0150($s0)           ## 00000150
/* 013D8 80A6C628 273933E8 */  addiu   $t9, %lo(D_801333E8)
/* 013DC 80A6C62C AFB90014 */  sw      $t9, 0x0014($sp)
/* 013E0 80A6C630 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 013E4 80A6C634 AFA70010 */  sw      $a3, 0x0010($sp)
.L80A6C638:
/* 013E8 80A6C638 0C29ACC3 */  jal     func_80A6B30C
/* 013EC 80A6C63C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013F0 80A6C640 E7A00034 */  swc1    $f0, 0x0034($sp)
/* 013F4 80A6C644 8E080150 */  lw      $t0, 0x0150($s0)           ## 00000150
/* 013F8 80A6C648 3C0480A7 */  lui     $a0, %hi(D_80A6D370)       ## $a0 = 80A70000
/* 013FC 80A6C64C 00084880 */  sll     $t1, $t0,  2
/* 01400 80A6C650 00892021 */  addu    $a0, $a0, $t1
/* 01404 80A6C654 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01408 80A6C658 8C84D370 */  lw      $a0, %lo(D_80A6D370)($a0)
/* 0140C 80A6C65C 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 01410 80A6C660 8E0A0150 */  lw      $t2, 0x0150($s0)           ## 00000150
/* 01414 80A6C664 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01418 80A6C668 468042A0 */  cvt.s.w $f10, $f8
/* 0141C 80A6C66C 3C0580A7 */  lui     $a1, %hi(D_80A6D370)       ## $a1 = 80A70000
/* 01420 80A6C670 000A5880 */  sll     $t3, $t2,  2
/* 01424 80A6C674 00AB2821 */  addu    $a1, $a1, $t3
/* 01428 80A6C678 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 0142C 80A6C67C 44070000 */  mfc1    $a3, $f0
/* 01430 80A6C680 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 01434 80A6C684 8CA5D370 */  lw      $a1, %lo(D_80A6D370)($a1)
/* 01438 80A6C688 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 0143C 80A6C68C 8FA40030 */  lw      $a0, 0x0030($sp)
/* 01440 80A6C690 8FA60034 */  lw      $a2, 0x0034($sp)
/* 01444 80A6C694 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01448 80A6C698 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0144C 80A6C69C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A6C6A0:
/* 01450 80A6C6A0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01454 80A6C6A4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01458 80A6C6A8 03E00008 */  jr      $ra
/* 0145C 80A6C6AC 00000000 */  nop
