glabel func_80A7975C
/* 007AC 80A7975C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 007B0 80A79760 AFBF002C */  sw      $ra, 0x002C($sp)
/* 007B4 80A79764 AFB00028 */  sw      $s0, 0x0028($sp)
/* 007B8 80A79768 AFA50034 */  sw      $a1, 0x0034($sp)
/* 007BC 80A7976C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 007C0 80A79770 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 007C4 80A79774 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007C8 80A79778 144E0008 */  bne     $v0, $t6, .L80A7979C
/* 007CC 80A7977C 00000000 */  nop
/* 007D0 80A79780 848F00B8 */  lh      $t7, 0x00B8($a0)           ## 000000B8
/* 007D4 80A79784 3C188016 */  lui     $t8, %hi(gSaveContext+4)
/* 007D8 80A79788 144F0004 */  bne     $v0, $t7, .L80A7979C
/* 007DC 80A7978C 00000000 */  nop
/* 007E0 80A79790 8F18E664 */  lw      $t8, %lo(gSaveContext+4)($t8)
/* 007E4 80A79794 53000004 */  beql    $t8, $zero, .L80A797A8
/* 007E8 80A79798 A60201E6 */  sh      $v0, 0x01E6($s0)           ## 000001E6
.L80A7979C:
/* 007EC 80A7979C 1000001F */  beq     $zero, $zero, .L80A7981C
/* 007F0 80A797A0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 007F4 80A797A4 A60201E6 */  sh      $v0, 0x01E6($s0)           ## 000001E6
.L80A797A8:
/* 007F8 80A797A8 921901A6 */  lbu     $t9, 0x01A6($s0)           ## 000001A6
/* 007FC 80A797AC 860901E6 */  lh      $t1, 0x01E6($s0)           ## 000001E6
/* 00800 80A797B0 3C0480A8 */  lui     $a0, %hi(D_80A7B918)       ## $a0 = 80A80000
/* 00804 80A797B4 3328FFFE */  andi    $t0, $t9, 0xFFFE           ## $t0 = 00000000
/* 00808 80A797B8 00095080 */  sll     $t2, $t1,  2
/* 0080C 80A797BC A20801A6 */  sb      $t0, 0x01A6($s0)           ## 000001A6
/* 00810 80A797C0 008A2021 */  addu    $a0, $a0, $t2
/* 00814 80A797C4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00818 80A797C8 8C84B918 */  lw      $a0, %lo(D_80A7B918)($a0)
/* 0081C 80A797CC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00820 80A797D0 860B01E6 */  lh      $t3, 0x01E6($s0)           ## 000001E6
/* 00824 80A797D4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00828 80A797D8 468021A0 */  cvt.s.w $f6, $f4
/* 0082C 80A797DC 3C0580A8 */  lui     $a1, %hi(D_80A7B918)       ## $a1 = 80A80000
/* 00830 80A797E0 000B6080 */  sll     $t4, $t3,  2
/* 00834 80A797E4 00AC2821 */  addu    $a1, $a1, $t4
/* 00838 80A797E8 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 0083C 80A797EC 44070000 */  mfc1    $a3, $f0
/* 00840 80A797F0 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 00844 80A797F4 8CA5B918 */  lw      $a1, %lo(D_80A7B918)($a1)
/* 00848 80A797F8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0084C 80A797FC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00850 80A79800 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00854 80A79804 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00858 80A79808 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0085C 80A7980C 3C0E80A8 */  lui     $t6, %hi(func_80A7A304)    ## $t6 = 80A80000
/* 00860 80A79810 25CEA304 */  addiu   $t6, $t6, %lo(func_80A7A304) ## $t6 = 80A7A304
/* 00864 80A79814 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 00868 80A79818 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A7981C:
/* 0086C 80A7981C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00870 80A79820 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00874 80A79824 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00878 80A79828 03E00008 */  jr      $ra
/* 0087C 80A7982C 00000000 */  nop
