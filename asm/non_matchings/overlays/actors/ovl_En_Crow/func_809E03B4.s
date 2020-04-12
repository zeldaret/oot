.late_rodata
glabel D_809E16F0
    .float 0.85

glabel D_809E16F4
    .float 0.15

.text
glabel func_809E03B4
/* 00174 809E03B4 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 00178 809E03B8 AFB10060 */  sw      $s1, 0x0060($sp)
/* 0017C 809E03BC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00180 809E03C0 AFBF0074 */  sw      $ra, 0x0074($sp)
/* 00184 809E03C4 AFB50070 */  sw      $s5, 0x0070($sp)
/* 00188 809E03C8 AFB4006C */  sw      $s4, 0x006C($sp)
/* 0018C 809E03CC AFB30068 */  sw      $s3, 0x0068($sp)
/* 00190 809E03D0 AFB20064 */  sw      $s2, 0x0064($sp)
/* 00194 809E03D4 AFB0005C */  sw      $s0, 0x005C($sp)
/* 00198 809E03D8 F7BC0050 */  sdc1    $f28, 0x0050($sp)
/* 0019C 809E03DC F7BA0048 */  sdc1    $f26, 0x0048($sp)
/* 001A0 809E03E0 F7B80040 */  sdc1    $f24, 0x0040($sp)
/* 001A4 809E03E4 F7B60038 */  sdc1    $f22, 0x0038($sp)
/* 001A8 809E03E8 F7B40030 */  sdc1    $f20, 0x0030($sp)
/* 001AC 809E03EC 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 001B0 809E03F0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001B4 809E03F4 84840030 */  lh      $a0, 0x0030($a0)           ## 00000030
/* 001B8 809E03F8 C6240068 */  lwc1    $f4, 0x0068($s1)           ## 00000068
/* 001BC 809E03FC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 001C0 809E0400 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 001C4 809E0404 46002182 */  mul.s   $f6, $f4, $f0
/* 001C8 809E0408 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 001CC 809E040C E6220060 */  swc1    $f2, 0x0060($s1)           ## 00000060
/* 001D0 809E0410 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 001D4 809E0414 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 001D8 809E0418 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 001DC 809E041C 44071000 */  mfc1    $a3, $f2
/* 001E0 809E0420 E6260068 */  swc1    $f6, 0x0068($s1)           ## 00000068
/* 001E4 809E0424 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 001E8 809E0428 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 001EC 809E042C 24A500F0 */  addiu   $a1, $a1, 0x00F0           ## $a1 = 060000F0
/* 001F0 809E0430 2624017C */  addiu   $a0, $s1, 0x017C           ## $a0 = 0000017C
/* 001F4 809E0434 E7A20010 */  swc1    $f2, 0x0010($sp)
/* 001F8 809E0438 0C029468 */  jal     SkelAnime_ChangeAnim

/* 001FC 809E043C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00200 809E0440 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00204 809E0444 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 00208 809E0448 C62A0050 */  lwc1    $f10, 0x0050($s1)          ## 00000050
/* 0020C 809E044C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00210 809E0450 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00214 809E0454 46105602 */  mul.s   $f24, $f10, $f16
/* 00218 809E0458 C6320028 */  lwc1    $f18, 0x0028($s1)          ## 00000028
/* 0021C 809E045C 962F0088 */  lhu     $t7, 0x0088($s1)           ## 00000088
/* 00220 809E0460 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00224 809E0464 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00228 809E0468 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 0022C 809E046C A6380088 */  sh      $t8, 0x0088($s1)           ## 00000088
/* 00230 809E0470 46182182 */  mul.s   $f6, $f4, $f24
/* 00234 809E0474 240538EB */  addiu   $a1, $zero, 0x38EB         ## $a1 = 000038EB
/* 00238 809E0478 E62000BC */  swc1    $f0, 0x00BC($s1)           ## 000000BC
/* 0023C 809E047C E620004C */  swc1    $f0, 0x004C($s1)           ## 0000004C
/* 00240 809E0480 46069200 */  add.s   $f8, $f18, $f6
/* 00244 809E0484 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00248 809E0488 E6280028 */  swc1    $f8, 0x0028($s1)           ## 00000028
/* 0024C 809E048C 922200B1 */  lbu     $v0, 0x00B1($s1)           ## 000000B1
/* 00250 809E0490 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00254 809E0494 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00258 809E0498 14410048 */  bne     $v0, $at, .L809E05BC
/* 0025C 809E049C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00260 809E04A0 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 00264 809E04A4 AFB90010 */  sw      $t9, 0x0010($sp)
/* 00268 809E04A8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 0026C 809E04AC 0C00D09B */  jal     func_8003426C
/* 00270 809E04B0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00274 809E04B4 3C01809E */  lui     $at, %hi(D_809E16F0)       ## $at = 809E0000
/* 00278 809E04B8 C43C16F0 */  lwc1    $f28, %lo(D_809E16F0)($at)
/* 0027C 809E04BC 3C01809E */  lui     $at, %hi(D_809E16F4)       ## $at = 809E0000
/* 00280 809E04C0 C43A16F4 */  lwc1    $f26, %lo(D_809E16F4)($at)
/* 00284 809E04C4 3C01C0E0 */  lui     $at, 0xC0E0                ## $at = C0E00000
/* 00288 809E04C8 4481B000 */  mtc1    $at, $f22                  ## $f22 = -7.00
/* 0028C 809E04CC 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 00290 809E04D0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 7.00
/* 00294 809E04D4 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00298 809E04D8 24130008 */  addiu   $s3, $zero, 0x0008         ## $s3 = 00000008
/* 0029C 809E04DC 27B20084 */  addiu   $s2, $sp, 0x0084           ## $s2 = FFFFFFEC
/* 002A0 809E04E0 32080001 */  andi    $t0, $s0, 0x0001           ## $t0 = 00000000
.L809E04E4:
/* 002A4 809E04E4 51000004 */  beql    $t0, $zero, .L809E04F8
/* 002A8 809E04E8 4600B006 */  mov.s   $f0, $f22
/* 002AC 809E04EC 10000002 */  beq     $zero, $zero, .L809E04F8
/* 002B0 809E04F0 4600A006 */  mov.s   $f0, $f20
/* 002B4 809E04F4 4600B006 */  mov.s   $f0, $f22
.L809E04F8:
/* 002B8 809E04F8 46180282 */  mul.s   $f10, $f0, $f24
/* 002BC 809E04FC C6300024 */  lwc1    $f16, 0x0024($s1)          ## 00000024
/* 002C0 809E0500 32090002 */  andi    $t1, $s0, 0x0002           ## $t1 = 00000000
/* 002C4 809E0504 46105100 */  add.s   $f4, $f10, $f16
/* 002C8 809E0508 11200003 */  beq     $t1, $zero, .L809E0518
/* 002CC 809E050C E7A40084 */  swc1    $f4, 0x0084($sp)
/* 002D0 809E0510 10000002 */  beq     $zero, $zero, .L809E051C
/* 002D4 809E0514 4600A006 */  mov.s   $f0, $f20
.L809E0518:
/* 002D8 809E0518 4600B006 */  mov.s   $f0, $f22
.L809E051C:
/* 002DC 809E051C 46180482 */  mul.s   $f18, $f0, $f24
/* 002E0 809E0520 C6260028 */  lwc1    $f6, 0x0028($s1)           ## 00000028
/* 002E4 809E0524 320A0004 */  andi    $t2, $s0, 0x0004           ## $t2 = 00000000
/* 002E8 809E0528 46069200 */  add.s   $f8, $f18, $f6
/* 002EC 809E052C 11400003 */  beq     $t2, $zero, .L809E053C
/* 002F0 809E0530 E7A80088 */  swc1    $f8, 0x0088($sp)
/* 002F4 809E0534 10000002 */  beq     $zero, $zero, .L809E0540
/* 002F8 809E0538 4600A006 */  mov.s   $f0, $f20
.L809E053C:
/* 002FC 809E053C 4600B006 */  mov.s   $f0, $f22
.L809E0540:
/* 00300 809E0540 46180282 */  mul.s   $f10, $f0, $f24
/* 00304 809E0544 C630002C */  lwc1    $f16, 0x002C($s1)          ## 0000002C
/* 00308 809E0548 46105100 */  add.s   $f4, $f10, $f16
/* 0030C 809E054C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00310 809E0550 E7A4008C */  swc1    $f4, 0x008C($sp)
/* 00314 809E0554 461A0482 */  mul.s   $f18, $f0, $f26
/* 00318 809E0558 240B0096 */  addiu   $t3, $zero, 0x0096         ## $t3 = 00000096
/* 0031C 809E055C 240C0096 */  addiu   $t4, $zero, 0x0096         ## $t4 = 00000096
/* 00320 809E0560 240D00FA */  addiu   $t5, $zero, 0x00FA         ## $t5 = 000000FA
/* 00324 809E0564 240E00EB */  addiu   $t6, $zero, 0x00EB         ## $t6 = 000000EB
/* 00328 809E0568 240F00F5 */  addiu   $t7, $zero, 0x00F5         ## $t7 = 000000F5
/* 0032C 809E056C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00330 809E0570 461C9180 */  add.s   $f6, $f18, $f28
/* 00334 809E0574 AFB80024 */  sw      $t8, 0x0024($sp)
/* 00338 809E0578 AFAF0020 */  sw      $t7, 0x0020($sp)
/* 0033C 809E057C AFAE001C */  sw      $t6, 0x001C($sp)
/* 00340 809E0580 46183202 */  mul.s   $f8, $f6, $f24
/* 00344 809E0584 AFAD0018 */  sw      $t5, 0x0018($sp)
/* 00348 809E0588 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 0034C 809E058C AFAB0010 */  sw      $t3, 0x0010($sp)
/* 00350 809E0590 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00354 809E0594 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00358 809E0598 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFEC
/* 0035C 809E059C E7A80028 */  swc1    $f8, 0x0028($sp)
/* 00360 809E05A0 0C00A850 */  jal     func_8002A140
/* 00364 809E05A4 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 00368 809E05A8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0036C 809E05AC 5613FFCD */  bnel    $s0, $s3, .L809E04E4
/* 00370 809E05B0 32080001 */  andi    $t0, $s0, 0x0001           ## $t0 = 00000001
/* 00374 809E05B4 1000002B */  beq     $zero, $zero, .L809E0664
/* 00378 809E05B8 8E220004 */  lw      $v0, 0x0004($s1)           ## 00000004
.L809E05BC:
/* 0037C 809E05BC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00380 809E05C0 14410021 */  bne     $v0, $at, .L809E0648
/* 00384 809E05C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00388 809E05C8 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 0038C 809E05CC AFB90010 */  sw      $t9, 0x0010($sp)
/* 00390 809E05D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00394 809E05D4 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00398 809E05D8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 0039C 809E05DC 0C00D09B */  jal     func_8003426C
/* 003A0 809E05E0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 003A4 809E05E4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 003A8 809E05E8 44815000 */  mtc1    $at, $f10                  ## $f10 = 50.00
/* 003AC 809E05EC 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 003B0 809E05F0 26320024 */  addiu   $s2, $s1, 0x0024           ## $s2 = 00000024
/* 003B4 809E05F4 46185402 */  mul.s   $f16, $f10, $f24
/* 003B8 809E05F8 24140004 */  addiu   $s4, $zero, 0x0004         ## $s4 = 00000004
/* 003BC 809E05FC 4600810D */  trunc.w.s $f4, $f16
/* 003C0 809E0600 44132000 */  mfc1    $s3, $f4
/* 003C4 809E0604 00000000 */  nop
/* 003C8 809E0608 00139C00 */  sll     $s3, $s3, 16
/* 003CC 809E060C 00139C03 */  sra     $s3, $s3, 16
/* 003D0 809E0610 00133C00 */  sll     $a3, $s3, 16
.L809E0614:
/* 003D4 809E0614 00073C03 */  sra     $a3, $a3, 16
/* 003D8 809E0618 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 003DC 809E061C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 003E0 809E0620 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000024
/* 003E4 809E0624 AFA00010 */  sw      $zero, 0x0010($sp)
/* 003E8 809E0628 AFA00014 */  sw      $zero, 0x0014($sp)
/* 003EC 809E062C 0C00A935 */  jal     func_8002A4D4
/* 003F0 809E0630 AFB00018 */  sw      $s0, 0x0018($sp)
/* 003F4 809E0634 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 003F8 809E0638 5614FFF6 */  bnel    $s0, $s4, .L809E0614
/* 003FC 809E063C 00133C00 */  sll     $a3, $s3, 16
/* 00400 809E0640 10000008 */  beq     $zero, $zero, .L809E0664
/* 00404 809E0644 8E220004 */  lw      $v0, 0x0004($s1)           ## 00000004
.L809E0648:
/* 00408 809E0648 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 0040C 809E064C AFA90010 */  sw      $t1, 0x0010($sp)
/* 00410 809E0650 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00414 809E0654 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00418 809E0658 0C00D09B */  jal     func_8003426C
/* 0041C 809E065C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00420 809E0660 8E220004 */  lw      $v0, 0x0004($s1)           ## 00000004
.L809E0664:
/* 00424 809E0664 3C0E809E */  lui     $t6, %hi(func_809E0E2C)    ## $t6 = 809E0000
/* 00428 809E0668 25CE0E2C */  addiu   $t6, $t6, %lo(func_809E0E2C) ## $t6 = 809E0E2C
/* 0042C 809E066C 304A8000 */  andi    $t2, $v0, 0x8000           ## $t2 = 00000000
/* 00430 809E0670 51400005 */  beql    $t2, $zero, .L809E0688
/* 00434 809E0674 922B0249 */  lbu     $t3, 0x0249($s1)           ## 00000249
/* 00438 809E0678 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 0043C 809E067C 8E220004 */  lw      $v0, 0x0004($s1)           ## 00000004
/* 00440 809E0680 E6320068 */  swc1    $f18, 0x0068($s1)          ## 00000068
/* 00444 809E0684 922B0249 */  lbu     $t3, 0x0249($s1)           ## 00000249
.L809E0688:
/* 00448 809E0688 344D0010 */  ori     $t5, $v0, 0x0010           ## $t5 = 00000010
/* 0044C 809E068C AE2D0004 */  sw      $t5, 0x0004($s1)           ## 00000004
/* 00450 809E0690 316CFFFE */  andi    $t4, $t3, 0xFFFE           ## $t4 = 00000000
/* 00454 809E0694 A22C0249 */  sb      $t4, 0x0249($s1)           ## 00000249
/* 00458 809E0698 AE2E01C0 */  sw      $t6, 0x01C0($s1)           ## 000001C0
/* 0045C 809E069C 8FBF0074 */  lw      $ra, 0x0074($sp)
/* 00460 809E06A0 8FB50070 */  lw      $s5, 0x0070($sp)
/* 00464 809E06A4 8FB4006C */  lw      $s4, 0x006C($sp)
/* 00468 809E06A8 8FB30068 */  lw      $s3, 0x0068($sp)
/* 0046C 809E06AC 8FB20064 */  lw      $s2, 0x0064($sp)
/* 00470 809E06B0 8FB10060 */  lw      $s1, 0x0060($sp)
/* 00474 809E06B4 8FB0005C */  lw      $s0, 0x005C($sp)
/* 00478 809E06B8 D7BC0050 */  ldc1    $f28, 0x0050($sp)
/* 0047C 809E06BC D7BA0048 */  ldc1    $f26, 0x0048($sp)
/* 00480 809E06C0 D7B80040 */  ldc1    $f24, 0x0040($sp)
/* 00484 809E06C4 D7B60038 */  ldc1    $f22, 0x0038($sp)
/* 00488 809E06C8 D7B40030 */  ldc1    $f20, 0x0030($sp)
/* 0048C 809E06CC 03E00008 */  jr      $ra
/* 00490 809E06D0 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
