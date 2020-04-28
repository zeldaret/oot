.rdata
glabel D_809E9040
    .asciz "../z_en_dekubaba.c"
    .balign 4

glabel D_809E9054
    .asciz "../z_en_dekubaba.c"
    .balign 4

glabel D_809E9068
    .asciz "../z_en_dekubaba.c"
    .balign 4

.late_rodata
glabel D_809E91C8
    .float 0.01

.text
glabel func_809E858C
/* 02DBC 809E858C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 02DC0 809E8590 AFBF001C */  sw      $ra, 0x001C($sp)
/* 02DC4 809E8594 AFB10018 */  sw      $s1, 0x0018($sp)
/* 02DC8 809E8598 AFB00014 */  sw      $s0, 0x0014($sp)
/* 02DCC 809E859C AFA5004C */  sw      $a1, 0x004C($sp)
/* 02DD0 809E85A0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 02DD4 809E85A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02DD8 809E85A8 3C06809F */  lui     $a2, %hi(D_809E9040)       ## $a2 = 809F0000
/* 02DDC 809E85AC 24C69040 */  addiu   $a2, $a2, %lo(D_809E9040)  ## $a2 = 809E9040
/* 02DE0 809E85B0 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 02DE4 809E85B4 2407098D */  addiu   $a3, $zero, 0x098D         ## $a3 = 0000098D
/* 02DE8 809E85B8 0C031AB1 */  jal     Graph_OpenDisps
/* 02DEC 809E85BC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02DF0 809E85C0 3C01809F */  lui     $at, %hi(D_809E91C8)       ## $at = 809F0000
/* 02DF4 809E85C4 C42491C8 */  lwc1    $f4, %lo(D_809E91C8)($at)
/* 02DF8 809E85C8 C6000230 */  lwc1    $f0, 0x0230($s0)           ## 00000230
/* 02DFC 809E85CC 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 02E00 809E85D0 44815000 */  mtc1    $at, $f10                  ## $f10 = -6.00
/* 02E04 809E85D4 46040182 */  mul.s   $f6, $f0, $f4
/* 02E08 809E85D8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02E0C 809E85DC 46005402 */  mul.s   $f16, $f10, $f0
/* 02E10 809E85E0 E7A60044 */  swc1    $f6, 0x0044($sp)
/* 02E14 809E85E4 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 02E18 809E85E8 8E060010 */  lw      $a2, 0x0010($s0)           ## 00000010
/* 02E1C 809E85EC C60C0008 */  lwc1    $f12, 0x0008($s0)          ## 00000008
/* 02E20 809E85F0 0C034261 */  jal     Matrix_Translate
/* 02E24 809E85F4 46104380 */  add.s   $f14, $f8, $f16
/* 02E28 809E85F8 860401CA */  lh      $a0, 0x01CA($s0)           ## 000001CA
/* 02E2C 809E85FC 860500B6 */  lh      $a1, 0x00B6($s0)           ## 000000B6
/* 02E30 809E8600 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02E34 809E8604 0C034421 */  jal     Matrix_RotateRPY
/* 02E38 809E8608 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02E3C 809E860C C7AC0044 */  lwc1    $f12, 0x0044($sp)
/* 02E40 809E8610 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02E44 809E8614 44066000 */  mfc1    $a2, $f12
/* 02E48 809E8618 0C0342A3 */  jal     Matrix_Scale
/* 02E4C 809E861C 46006386 */  mov.s   $f14, $f12
/* 02E50 809E8620 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 02E54 809E8624 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 02E58 809E8628 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 02E5C 809E862C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 02E60 809E8630 AE2F02C0 */  sw      $t7, 0x02C0($s1)           ## 000002C0
/* 02E64 809E8634 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 02E68 809E8638 8FB9004C */  lw      $t9, 0x004C($sp)
/* 02E6C 809E863C 3C05809F */  lui     $a1, %hi(D_809E9054)       ## $a1 = 809F0000
/* 02E70 809E8640 24A59054 */  addiu   $a1, $a1, %lo(D_809E9054)  ## $a1 = 809E9054
/* 02E74 809E8644 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 02E78 809E8648 2406099D */  addiu   $a2, $zero, 0x099D         ## $a2 = 0000099D
/* 02E7C 809E864C 0C0346A2 */  jal     Matrix_NewMtx
/* 02E80 809E8650 AFA2002C */  sw      $v0, 0x002C($sp)
/* 02E84 809E8654 8FA3002C */  lw      $v1, 0x002C($sp)
/* 02E88 809E8658 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 02E8C 809E865C 254A1330 */  addiu   $t2, $t2, 0x1330           ## $t2 = 06001330
/* 02E90 809E8660 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02E94 809E8664 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 02E98 809E8668 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 02E9C 809E866C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EA0 809E8670 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 02EA4 809E8674 AE2802C0 */  sw      $t0, 0x02C0($s1)           ## 000002C0
/* 02EA8 809E8678 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 02EAC 809E867C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 02EB0 809E8680 0C00B56E */  jal     Actor_SetHeight

/* 02EB4 809E8684 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 02EB8 809E8688 8FAB004C */  lw      $t3, 0x004C($sp)
/* 02EBC 809E868C 3C06809F */  lui     $a2, %hi(D_809E9068)       ## $a2 = 809F0000
/* 02EC0 809E8690 24C69068 */  addiu   $a2, $a2, %lo(D_809E9068)  ## $a2 = 809E9068
/* 02EC4 809E8694 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 02EC8 809E8698 240709A4 */  addiu   $a3, $zero, 0x09A4         ## $a3 = 000009A4
/* 02ECC 809E869C 0C031AD5 */  jal     Graph_CloseDisps
/* 02ED0 809E86A0 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 02ED4 809E86A4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 02ED8 809E86A8 8FB00014 */  lw      $s0, 0x0014($sp)
/* 02EDC 809E86AC 8FB10018 */  lw      $s1, 0x0018($sp)
/* 02EE0 809E86B0 03E00008 */  jr      $ra
/* 02EE4 809E86B4 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
