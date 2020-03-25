glabel func_80A1A350
/* 02E40 80A1A350 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 02E44 80A1A354 AFB10028 */  sw      $s1, 0x0028($sp)
/* 02E48 80A1A358 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02E4C 80A1A35C AFBF002C */  sw      $ra, 0x002C($sp)
/* 02E50 80A1A360 AFB00024 */  sw      $s0, 0x0024($sp)
/* 02E54 80A1A364 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 02E58 80A1A368 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02E5C 80A1A36C 3C0680A2 */  lui     $a2, %hi(D_80A1A53C)       ## $a2 = 80A20000
/* 02E60 80A1A370 24C6A53C */  addiu   $a2, $a2, %lo(D_80A1A53C)  ## $a2 = 80A1A53C
/* 02E64 80A1A374 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 02E68 80A1A378 24070930 */  addiu   $a3, $zero, 0x0930         ## $a3 = 00000930
/* 02E6C 80A1A37C 0C031AB1 */  jal     func_800C6AC4
/* 02E70 80A1A380 AFA50048 */  sw      $a1, 0x0048($sp)
/* 02E74 80A1A384 0C024F61 */  jal     func_80093D84
/* 02E78 80A1A388 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 02E7C 80A1A38C 920E02DC */  lbu     $t6, 0x02DC($s0)           ## 000002DC
/* 02E80 80A1A390 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 02E84 80A1A394 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02E88 80A1A398 15C1000A */  bne     $t6, $at, .L80A1A3C4
/* 02E8C 80A1A39C 3C0580A2 */  lui     $a1, %hi(D_80A1A4F4)       ## $a1 = 80A20000
/* 02E90 80A1A3A0 86060196 */  lh      $a2, 0x0196($s0)           ## 00000196
/* 02E94 80A1A3A4 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 02E98 80A1A3A8 24A5A4F4 */  addiu   $a1, $a1, %lo(D_80A1A4F4)  ## $a1 = 80A1A4F4
/* 02E9C 80A1A3AC 00C1001A */  div     $zero, $a2, $at
/* 02EA0 80A1A3B0 00003010 */  mfhi    $a2
/* 02EA4 80A1A3B4 00063400 */  sll     $a2, $a2, 16
/* 02EA8 80A1A3B8 00063403 */  sra     $a2, $a2, 16
/* 02EAC 80A1A3BC 0C0099A4 */  jal     func_80026690
/* 02EB0 80A1A3C0 24070028 */  addiu   $a3, $zero, 0x0028         ## $a3 = 00000028
.L80A1A3C4:
/* 02EB4 80A1A3C4 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 02EB8 80A1A3C8 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 02EBC 80A1A3CC 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 02EC0 80A1A3D0 8FB90048 */  lw      $t9, 0x0048($sp)
/* 02EC4 80A1A3D4 3C0F80A2 */  lui     $t7, %hi(func_80A1A128)    ## $t7 = 80A20000
/* 02EC8 80A1A3D8 3C1880A2 */  lui     $t8, %hi(func_80A1A160)    ## $t8 = 80A20000
/* 02ECC 80A1A3DC 2718A160 */  addiu   $t8, $t8, %lo(func_80A1A160) ## $t8 = 80A1A160
/* 02ED0 80A1A3E0 25EFA128 */  addiu   $t7, $t7, %lo(func_80A1A128) ## $t7 = 80A1A128
/* 02ED4 80A1A3E4 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 02ED8 80A1A3E8 AFB80014 */  sw      $t8, 0x0014($sp)
/* 02EDC 80A1A3EC AFB00018 */  sw      $s0, 0x0018($sp)
/* 02EE0 80A1A3F0 8F2802D0 */  lw      $t0, 0x02D0($t9)           ## 000002D0
/* 02EE4 80A1A3F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02EE8 80A1A3F8 0C0289CF */  jal     SkelAnime_DrawSV2
/* 02EEC 80A1A3FC AFA8001C */  sw      $t0, 0x001C($sp)
/* 02EF0 80A1A400 8FA90048 */  lw      $t1, 0x0048($sp)
/* 02EF4 80A1A404 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 02EF8 80A1A408 AD2202D0 */  sw      $v0, 0x02D0($t1)           ## 000002D0
/* 02EFC 80A1A40C 920A02DC */  lbu     $t2, 0x02DC($s0)           ## 000002DC
/* 02F00 80A1A410 15410003 */  bne     $t2, $at, .L80A1A420
/* 02F04 80A1A414 00000000 */  nop
/* 02F08 80A1A418 0C009A9B */  jal     func_80026A6C
/* 02F0C 80A1A41C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80A1A420:
/* 02F10 80A1A420 3C0680A2 */  lui     $a2, %hi(D_80A1A550)       ## $a2 = 80A20000
/* 02F14 80A1A424 24C6A550 */  addiu   $a2, $a2, %lo(D_80A1A550)  ## $a2 = 80A1A550
/* 02F18 80A1A428 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 02F1C 80A1A42C 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 02F20 80A1A430 0C031AD5 */  jal     func_800C6B54
/* 02F24 80A1A434 24070946 */  addiu   $a3, $zero, 0x0946         ## $a3 = 00000946
/* 02F28 80A1A438 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02F2C 80A1A43C 8FB00024 */  lw      $s0, 0x0024($sp)
/* 02F30 80A1A440 8FB10028 */  lw      $s1, 0x0028($sp)
/* 02F34 80A1A444 03E00008 */  jr      $ra
/* 02F38 80A1A448 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 02F3C 80A1A44C 00000000 */  nop

