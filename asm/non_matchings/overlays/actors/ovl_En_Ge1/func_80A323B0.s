glabel func_80A323B0
/* 01A40 80A323B0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01A44 80A323B4 AFA40020 */  sw      $a0, 0x0020($sp)
/* 01A48 80A323B8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01A4C 80A323BC 24840198 */  addiu   $a0, $a0, 0x0198           ## $a0 = 00000198
/* 01A50 80A323C0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01A54 80A323C4 AFA4001C */  sw      $a0, 0x001C($sp)
/* 01A58 80A323C8 10400004 */  beq     $v0, $zero, .L80A323DC
/* 01A5C 80A323CC 8FA4001C */  lw      $a0, 0x001C($sp)
/* 01A60 80A323D0 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 01A64 80A323D4 0C02947A */  jal     SkelAnime_ChangeAnimationDefaultStop
/* 01A68 80A323D8 8DC502B0 */  lw      $a1, 0x02B0($t6)           ## 000002B0
.L80A323DC:
/* 01A6C 80A323DC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01A70 80A323E0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01A74 80A323E4 03E00008 */  jr      $ra
/* 01A78 80A323E8 00000000 */  nop


