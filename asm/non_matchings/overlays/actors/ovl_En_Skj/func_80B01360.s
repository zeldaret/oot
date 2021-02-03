glabel func_80B01360
/* 030B0 80B01360 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 030B4 80B01364 AFBF001C */  sw      $ra, 0x001C($sp)
/* 030B8 80B01368 AFB00018 */  sw      $s0, 0x0018($sp)
/* 030BC 80B0136C AFA40040 */  sw      $a0, 0x0040($sp)
/* 030C0 80B01370 AFA50044 */  sw      $a1, 0x0044($sp)
/* 030C4 80B01374 AFA60048 */  sw      $a2, 0x0048($sp)
/* 030C8 80B01378 AFA7004C */  sw      $a3, 0x004C($sp)
/* 030CC 80B0137C 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 030D0 80B01380 3C0680B0 */  lui     $a2, %hi(D_80B01830)       ## $a2 = 80B00000
/* 030D4 80B01384 24C61830 */  addiu   $a2, $a2, %lo(D_80B01830)  ## $a2 = 80B01830
/* 030D8 80B01388 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFEC
/* 030DC 80B0138C 24070971 */  addiu   $a3, $zero, 0x0971         ## $a3 = 00000971
/* 030E0 80B01390 0C031AB1 */  jal     Graph_OpenDisps
/* 030E4 80B01394 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 030E8 80B01398 8FAF0044 */  lw      $t7, 0x0044($sp)
/* 030EC 80B0139C 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 030F0 80B013A0 3C188016 */  lui     $t8, %hi(gSaveContext+0xef6)
/* 030F4 80B013A4 55E10028 */  bnel    $t7, $at, .L80B01448
/* 030F8 80B013A8 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 030FC 80B013AC 9718F556 */  lhu     $t8, %lo(gSaveContext+0xef6)($t8)
/* 03100 80B013B0 8FA80040 */  lw      $t0, 0x0040($sp)
/* 03104 80B013B4 33190200 */  andi    $t9, $t8, 0x0200           ## $t9 = 00000000
/* 03108 80B013B8 53200023 */  beql    $t9, $zero, .L80B01448
/* 0310C 80B013BC 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 03110 80B013C0 0C024F46 */  jal     func_80093D18
/* 03114 80B013C4 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 03118 80B013C8 0C034213 */  jal     Matrix_Push
/* 0311C 80B013CC 00000000 */  nop
/* 03120 80B013D0 2404C000 */  addiu   $a0, $zero, 0xC000         ## $a0 = FFFFC000
/* 03124 80B013D4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03128 80B013D8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0312C 80B013DC 0C034421 */  jal     Matrix_RotateRPY
/* 03130 80B013E0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03134 80B013E4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03138 80B013E8 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 0313C 80B013EC 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 03140 80B013F0 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 03144 80B013F4 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 03148 80B013F8 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0314C 80B013FC 8FAB0040 */  lw      $t3, 0x0040($sp)
/* 03150 80B01400 3C0580B0 */  lui     $a1, %hi(D_80B01840)       ## $a1 = 80B00000
/* 03154 80B01404 24A51840 */  addiu   $a1, $a1, %lo(D_80B01840)  ## $a1 = 80B01840
/* 03158 80B01408 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 0315C 80B0140C 2406097E */  addiu   $a2, $zero, 0x097E         ## $a2 = 0000097E
/* 03160 80B01410 0C0346A2 */  jal     Matrix_NewMtx
/* 03164 80B01414 AFA20028 */  sw      $v0, 0x0028($sp)
/* 03168 80B01418 8FA30028 */  lw      $v1, 0x0028($sp)
/* 0316C 80B0141C 3C0E0600 */  lui     $t6, %hi(D_060014C8)                ## $t6 = 06000000
/* 03170 80B01420 25CE14C8 */  addiu   $t6, $t6, %lo(D_060014C8)           ## $t6 = 060014C8
/* 03174 80B01424 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03178 80B01428 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0317C 80B0142C 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 03180 80B01430 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 03184 80B01434 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 03188 80B01438 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 0318C 80B0143C 0C034221 */  jal     Matrix_Pull
/* 03190 80B01440 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 03194 80B01444 8FAF0040 */  lw      $t7, 0x0040($sp)
.L80B01448:
/* 03198 80B01448 3C0680B0 */  lui     $a2, %hi(D_80B01850)       ## $a2 = 80B00000
/* 0319C 80B0144C 24C61850 */  addiu   $a2, $a2, %lo(D_80B01850)  ## $a2 = 80B01850
/* 031A0 80B01450 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFEC
/* 031A4 80B01454 24070985 */  addiu   $a3, $zero, 0x0985         ## $a3 = 00000985
/* 031A8 80B01458 0C031AD5 */  jal     Graph_CloseDisps
/* 031AC 80B0145C 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 031B0 80B01460 8FBF001C */  lw      $ra, 0x001C($sp)
/* 031B4 80B01464 8FB00018 */  lw      $s0, 0x0018($sp)
/* 031B8 80B01468 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 031BC 80B0146C 03E00008 */  jr      $ra
/* 031C0 80B01470 00000000 */  nop
