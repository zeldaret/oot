glabel func_80A34620
/* 00000 80A34620 00051080 */  sll     $v0, $a1,  2
/* 00004 80A34624 3C0E80A3 */  lui     $t6, %hi(D_80A351BC)       ## $t6 = 80A30000
/* 00008 80A34628 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0000C 80A3462C 01C27021 */  addu    $t6, $t6, $v0
/* 00010 80A34630 8DCE51BC */  lw      $t6, %lo(D_80A351BC)($t6)
/* 00014 80A34634 3C1880A3 */  lui     $t8, %hi(D_80A351C0)       ## $t8 = 80A30000
/* 00018 80A34638 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0001C 80A3463C AFA40030 */  sw      $a0, 0x0030($sp)
/* 00020 80A34640 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00024 80A34644 271851C0 */  addiu   $t8, $t8, %lo(D_80A351C0)  ## $t8 = 80A351C0
/* 00028 80A34648 00581821 */  addu    $v1, $v0, $t8
/* 0002C 80A3464C AC8E0310 */  sw      $t6, 0x0310($a0)           ## 00000310
/* 00030 80A34650 AFA30028 */  sw      $v1, 0x0028($sp)
/* 00034 80A34654 0C028800 */  jal     Animation_LastFrame

/* 00038 80A34658 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 0003C 80A3465C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00040 80A34660 8FB90034 */  lw      $t9, 0x0034($sp)
/* 00044 80A34664 3C0880A3 */  lui     $t0, %hi(D_80A351C4)       ## $t0 = 80A30000
/* 00048 80A34668 468021A0 */  cvt.s.w $f6, $f4
/* 0004C 80A3466C 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 00050 80A34670 01194021 */  addu    $t0, $t0, $t9
/* 00054 80A34674 910851C4 */  lbu     $t0, %lo(D_80A351C4)($t0)
/* 00058 80A34678 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 0005C 80A3467C 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00060 80A34680 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00064 80A34684 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00068 80A34688 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0006C 80A3468C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00070 80A34690 AFA80014 */  sw      $t0, 0x0014($sp)
/* 00074 80A34694 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 00078 80A34698 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 0007C 80A3469C 0C029468 */  jal     Animation_Change

/* 00080 80A346A0 24840198 */  addiu   $a0, $a0, 0x0198           ## $a0 = 00000198
/* 00084 80A346A4 8FA20030 */  lw      $v0, 0x0030($sp)
/* 00088 80A346A8 9449030C */  lhu     $t1, 0x030C($v0)           ## 0000030C
/* 0008C 80A346AC 312AFFFD */  andi    $t2, $t1, 0xFFFD           ## $t2 = 00000000
/* 00090 80A346B0 A44A030C */  sh      $t2, 0x030C($v0)           ## 0000030C
/* 00094 80A346B4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00098 80A346B8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0009C 80A346BC 03E00008 */  jr      $ra
/* 000A0 80A346C0 00000000 */  nop
