glabel func_8083BC04
/* 099F4 8083BC04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 099F8 8083BC08 AFA40018 */  sw      $a0, 0x0018($sp)
/* 099FC 8083BC0C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 09A00 8083BC10 AFA5001C */  sw      $a1, 0x001C($sp)
/* 09A04 8083BC14 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 09A08 8083BC18 3C068084 */  lui     $a2, %hi(func_80844708)    ## $a2 = 80840000
/* 09A0C 8083BC1C 24C64708 */  addiu   $a2, $a2, %lo(func_80844708) ## $a2 = 80844708
/* 09A10 8083BC20 8FA50018 */  lw      $a1, 0x0018($sp)
/* 09A14 8083BC24 0C20D716 */  jal     func_80835C58
/* 09A18 8083BC28 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 09A1C 8083BC2C 3C013FA0 */  lui     $at, 0x3FA0                ## $at = 3FA00000
/* 09A20 8083BC30 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.25
/* 09A24 8083BC34 3C018085 */  lui     $at, %hi(D_808535E8)       ## $at = 80850000
/* 09A28 8083BC38 C42635E8 */  lwc1    $f6, %lo(D_808535E8)($at)
/* 09A2C 8083BC3C 8FA20018 */  lw      $v0, 0x0018($sp)
/* 09A30 8083BC40 3C068085 */  lui     $a2, %hi(D_80853A94)       ## $a2 = 80850000
/* 09A34 8083BC44 46062202 */  mul.s   $f8, $f4, $f6
/* 09A38 8083BC48 904E015B */  lbu     $t6, 0x015B($v0)           ## 0000015B
/* 09A3C 8083BC4C 8FA4001C */  lw      $a0, 0x001C($sp)
/* 09A40 8083BC50 244501B4 */  addiu   $a1, $v0, 0x01B4           ## $a1 = 000001B4
/* 09A44 8083BC54 000E7880 */  sll     $t7, $t6,  2
/* 09A48 8083BC58 00CF3021 */  addu    $a2, $a2, $t7
/* 09A4C 8083BC5C 8CC63A94 */  lw      $a2, %lo(D_80853A94)($a2)
/* 09A50 8083BC60 44074000 */  mfc1    $a3, $f8
/* 09A54 8083BC64 0C029037 */  jal     SkelAnime_LinkChangeAnimationPlaybackStop
/* 09A58 8083BC68 00000000 */  nop
/* 09A5C 8083BC6C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 09A60 8083BC70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 09A64 8083BC74 03E00008 */  jr      $ra
/* 09A68 8083BC78 00000000 */  nop


