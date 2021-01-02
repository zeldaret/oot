glabel func_809F73AC
/* 00FEC 809F73AC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00FF0 809F73B0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00FF4 809F73B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FF8 809F73B8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00FFC 809F73BC 3C040600 */  lui     $a0, %hi(D_06000860)                ## $a0 = 06000000
/* 01000 809F73C0 AFA50034 */  sw      $a1, 0x0034($sp)
/* 01004 809F73C4 0C028800 */  jal     Animation_GetLastFrame

/* 01008 809F73C8 24840860 */  addiu   $a0, $a0, %lo(D_06000860)           ## $a0 = 06000860
/* 0100C 809F73CC 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 01010 809F73D0 44814000 */  mtc1    $at, $f8                   ## $f8 = 320.00
/* 01014 809F73D4 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 01018 809F73D8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0101C 809F73DC 8FAE0034 */  lw      $t6, 0x0034($sp)
/* 01020 809F73E0 4606403E */  c.le.s  $f8, $f6
/* 01024 809F73E4 468020A0 */  cvt.s.w $f2, $f4
/* 01028 809F73E8 8DC31C44 */  lw      $v1, 0x1C44($t6)           ## 00001C44
/* 0102C 809F73EC 45030031 */  bc1tl   .L809F74B4
/* 01030 809F73F0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01034 809F73F4 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 01038 809F73F8 C4700028 */  lwc1    $f16, 0x0028($v1)          ## 00000028
/* 0103C 809F73FC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01040 809F7400 44819000 */  mtc1    $at, $f18                  ## $f18 = 40.00
/* 01044 809F7404 46105001 */  sub.s   $f0, $f10, $f16
/* 01048 809F7408 3C050600 */  lui     $a1, %hi(D_06000860)                ## $a1 = 06000000
/* 0104C 809F740C 3C063FE6 */  lui     $a2, 0x3FE6                ## $a2 = 3FE60000
/* 01050 809F7410 34C66666 */  ori     $a2, $a2, 0x6666           ## $a2 = 3FE66666
/* 01054 809F7414 4600903E */  c.le.s  $f18, $f0
/* 01058 809F7418 24A50860 */  addiu   $a1, $a1, %lo(D_06000860)           ## $a1 = 06000860
/* 0105C 809F741C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01060 809F7420 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01064 809F7424 45010022 */  bc1t    .L809F74B0
/* 01068 809F7428 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0106C 809F742C 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01070 809F7430 44812000 */  mtc1    $at, $f4                   ## $f4 = -10.00
/* 01074 809F7434 E7A20010 */  swc1    $f2, 0x0010($sp)
/* 01078 809F7438 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0107C 809F743C 0C029468 */  jal     Animation_Change

/* 01080 809F7440 E7A40018 */  swc1    $f4, 0x0018($sp)
/* 01084 809F7444 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01088 809F7448 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0108C 809F744C 24053824 */  addiu   $a1, $zero, 0x3824         ## $a1 = 00003824
/* 01090 809F7450 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01094 809F7454 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 01098 809F7458 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 0109C 809F745C 86080030 */  lh      $t0, 0x0030($s0)           ## 00000030
/* 010A0 809F7460 8E0C0024 */  lw      $t4, 0x0024($s0)           ## 00000024
/* 010A4 809F7464 46083281 */  sub.s   $f10, $f6, $f8
/* 010A8 809F7468 2509C000 */  addiu   $t1, $t0, 0xC000           ## $t1 = FFFFC000
/* 010AC 809F746C 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 010B0 809F7470 A6090030 */  sh      $t1, 0x0030($s0)           ## 00000030
/* 010B4 809F7474 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 010B8 809F7478 8E0B0028 */  lw      $t3, 0x0028($s0)           ## 00000028
/* 010BC 809F747C AE0C01F0 */  sw      $t4, 0x01F0($s0)           ## 000001F0
/* 010C0 809F7480 860A0030 */  lh      $t2, 0x0030($s0)           ## 00000030
/* 010C4 809F7484 8E0C002C */  lw      $t4, 0x002C($s0)           ## 0000002C
/* 010C8 809F7488 C6100080 */  lwc1    $f16, 0x0080($s0)          ## 00000080
/* 010CC 809F748C 3C0D809F */  lui     $t5, %hi(func_809F74C4)    ## $t5 = 809F0000
/* 010D0 809F7490 25AD74C4 */  addiu   $t5, $t5, %lo(func_809F74C4) ## $t5 = 809F74C4
/* 010D4 809F7494 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 010D8 809F7498 AE0B01F4 */  sw      $t3, 0x01F4($s0)           ## 000001F4
/* 010DC 809F749C AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 010E0 809F74A0 AE0D0190 */  sw      $t5, 0x0190($s0)           ## 00000190
/* 010E4 809F74A4 A60A00B4 */  sh      $t2, 0x00B4($s0)           ## 000000B4
/* 010E8 809F74A8 AE0C01F8 */  sw      $t4, 0x01F8($s0)           ## 000001F8
/* 010EC 809F74AC E61001F4 */  swc1    $f16, 0x01F4($s0)          ## 000001F4
.L809F74B0:
/* 010F0 809F74B0 8FBF002C */  lw      $ra, 0x002C($sp)
.L809F74B4:
/* 010F4 809F74B4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 010F8 809F74B8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 010FC 809F74BC 03E00008 */  jr      $ra
/* 01100 809F74C0 00000000 */  nop
