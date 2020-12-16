glabel func_80B906A4
/* 01C24 80B906A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C28 80B906A8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01C2C 80B906AC AFA40018 */  sw      $a0, 0x0018($sp)
/* 01C30 80B906B0 0C010D5B */  jal     func_8004356C
/* 01C34 80B906B4 AFA5001C */  sw      $a1, 0x001C($sp)
/* 01C38 80B906B8 10400010 */  beq     $v0, $zero, .L80B906FC
/* 01C3C 80B906BC 00000000 */  nop
/* 01C40 80B906C0 0C2E41C5 */  jal     func_80B90714
/* 01C44 80B906C4 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01C48 80B906C8 8FA3001C */  lw      $v1, 0x001C($sp)
/* 01C4C 80B906CC 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
/* 01C50 80B906D0 2405002C */  addiu   $a1, $zero, 0x002C         ## $a1 = 0000002C
/* 01C54 80B906D4 846E00A4 */  lh      $t6, 0x00A4($v1)           ## 000000A4
/* 01C58 80B906D8 15C10006 */  bne     $t6, $at, .L80B906F4
/* 01C5C 80B906DC 00000000 */  nop
/* 01C60 80B906E0 8C640790 */  lw      $a0, 0x0790($v1)           ## 00000790
/* 01C64 80B906E4 0C0169DF */  jal     Camera_ChangeSetting
/* 01C68 80B906E8 2405002D */  addiu   $a1, $zero, 0x002D         ## $a1 = 0000002D
/* 01C6C 80B906EC 10000003 */  beq     $zero, $zero, .L80B906FC
/* 01C70 80B906F0 00000000 */  nop
.L80B906F4:
/* 01C74 80B906F4 0C0169DF */  jal     Camera_ChangeSetting
/* 01C78 80B906F8 8C640790 */  lw      $a0, 0x0790($v1)           ## 00000790
.L80B906FC:
/* 01C7C 80B906FC 0C2E3AF9 */  jal     func_80B8EBE4
/* 01C80 80B90700 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01C84 80B90704 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01C88 80B90708 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C8C 80B9070C 03E00008 */  jr      $ra
/* 01C90 80B90710 00000000 */  nop
