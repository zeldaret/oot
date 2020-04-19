glabel func_80851BE8
/* 1F9D8 80851BE8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1F9DC 80851BEC AFB00028 */  sw      $s0, 0x0028($sp)
/* 1F9E0 80851BF0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 1F9E4 80851BF4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1F9E8 80851BF8 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1F9EC 80851BFC AFA40038 */  sw      $a0, 0x0038($sp)
/* 1F9F0 80851C00 AFA60040 */  sw      $a2, 0x0040($sp)
/* 1F9F4 80851C04 0C028EF0 */  jal     func_800A3BC0
/* 1F9F8 80851C08 AFA50030 */  sw      $a1, 0x0030($sp)
/* 1F9FC 80851C0C 860E0850 */  lh      $t6, 0x0850($s0)           ## 00000850
/* 1FA00 80851C10 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 1FA04 80851C14 A60F0850 */  sh      $t7, 0x0850($s0)           ## 00000850
/* 1FA08 80851C18 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
/* 1FA0C 80851C1C 286100B4 */  slti    $at, $v1, 0x00B4
/* 1FA10 80851C20 1420001B */  bne     $at, $zero, .L80851C90
/* 1FA14 80851C24 240100B4 */  addiu   $at, $zero, 0x00B4         ## $at = 000000B4
/* 1FA18 80851C28 14610015 */  bne     $v1, $at, .L80851C80
/* 1FA1C 80851C2C 3C040400 */  lui     $a0, 0x0400                ## $a0 = 04000000
/* 1FA20 80851C30 0C028800 */  jal     SkelAnime_GetFrameCount

/* 1FA24 80851C34 24843298 */  addiu   $a0, $a0, 0x3298           ## $a0 = 04003298
/* 1FA28 80851C38 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 1FA2C 80851C3C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 1FA30 80851C40 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 1FA34 80851C44 46803220 */  cvt.s.w $f8, $f6
/* 1FA38 80851C48 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 1FA3C 80851C4C 44815000 */  mtc1    $at, $f10                  ## $f10 = -8.00
/* 1FA40 80851C50 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1FA44 80851C54 3C073F2A */  lui     $a3, 0x3F2A                ## $a3 = 3F2A0000
/* 1FA48 80851C58 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 1FA4C 80851C5C AFB80018 */  sw      $t8, 0x0018($sp)
/* 1FA50 80851C60 34E7AAAB */  ori     $a3, $a3, 0xAAAB           ## $a3 = 3F2AAAAB
/* 1FA54 80851C64 24C63298 */  addiu   $a2, $a2, 0x3298           ## $a2 = 04003298
/* 1FA58 80851C68 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 1FA5C 80851C6C 8FA40038 */  lw      $a0, 0x0038($sp)
/* 1FA60 80851C70 8FA50030 */  lw      $a1, 0x0030($sp)
/* 1FA64 80851C74 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 1FA68 80851C78 0C028FC2 */  jal     SkelAnime_ChangeLinkAnim
/* 1FA6C 80851C7C E7AA001C */  swc1    $f10, 0x001C($sp)
.L80851C80:
/* 1FA70 80851C80 3C058085 */  lui     $a1, %hi(D_808551B4)       ## $a1 = 80850000
/* 1FA74 80851C84 24A551B4 */  addiu   $a1, $a1, %lo(D_808551B4)  ## $a1 = 808551B4
/* 1FA78 80851C88 0C20CA49 */  jal     func_80832924
/* 1FA7C 80851C8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80851C90:
/* 1FA80 80851C90 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1FA84 80851C94 8FB00028 */  lw      $s0, 0x0028($sp)
/* 1FA88 80851C98 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1FA8C 80851C9C 03E00008 */  jr      $ra
/* 1FA90 80851CA0 00000000 */  nop
