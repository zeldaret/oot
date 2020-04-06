glabel func_8094A12C
/* 1145C 8094A12C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 11460 8094A130 AFB00018 */  sw      $s0, 0x0018($sp)
/* 11464 8094A134 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 11468 8094A138 AFBF001C */  sw      $ra, 0x001C($sp)
/* 1146C 8094A13C 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 11470 8094A140 AFA5002C */  sw      $a1, 0x002C($sp)
/* 11474 8094A144 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 11478 8094A148 AFA40024 */  sw      $a0, 0x0024($sp)
/* 1147C 8094A14C 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 11480 8094A150 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 11484 8094A154 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 11488 8094A158 8E0504B4 */  lw      $a1, 0x04B4($s0)           ## 000004B4
/* 1148C 8094A15C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 11490 8094A160 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 11494 8094A164 8FA40024 */  lw      $a0, 0x0024($sp)
/* 11498 8094A168 0C0295B2 */  jal     func_800A56C8
/* 1149C 8094A16C 8E0501A4 */  lw      $a1, 0x01A4($s0)           ## 000001A4
/* 114A0 8094A170 10400008 */  beq     $v0, $zero, .L8094A194
/* 114A4 8094A174 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 114A8 8094A178 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 114AC 8094A17C 3C050603 */  lui     $a1, 0x0603                ## $a1 = 06030000
/* 114B0 8094A180 24A52BF8 */  addiu   $a1, $a1, 0x2BF8           ## $a1 = 06032BF8
/* 114B4 8094A184 E60401A4 */  swc1    $f4, 0x01A4($s0)           ## 000001A4
/* 114B8 8094A188 8FA40024 */  lw      $a0, 0x0024($sp)
/* 114BC 8094A18C 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 114C0 8094A190 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
.L8094A194:
/* 114C4 8094A194 860E0178 */  lh      $t6, 0x0178($s0)           ## 00000178
/* 114C8 8094A198 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 114CC 8094A19C 55C00004 */  bnel    $t6, $zero, .L8094A1B0
/* 114D0 8094A1A0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 114D4 8094A1A4 0C252870 */  jal     func_8094A1C0
/* 114D8 8094A1A8 8FA5002C */  lw      $a1, 0x002C($sp)
/* 114DC 8094A1AC 8FBF001C */  lw      $ra, 0x001C($sp)
.L8094A1B0:
/* 114E0 8094A1B0 8FB00018 */  lw      $s0, 0x0018($sp)
/* 114E4 8094A1B4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 114E8 8094A1B8 03E00008 */  jr      $ra
/* 114EC 8094A1BC 00000000 */  nop


