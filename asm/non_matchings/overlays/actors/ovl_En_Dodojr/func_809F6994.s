.late_rodata
glabel D_809F7F70
 .word 0x40266666
glabel D_809F7F74
    .float -0.8

.text
glabel func_809F6994
/* 005D4 809F6994 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 005D8 809F6998 AFA40028 */  sw      $a0, 0x0028($sp)
/* 005DC 809F699C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 005E0 809F69A0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 005E4 809F69A4 0C028800 */  jal     Animation_GetLastFrame

/* 005E8 809F69A8 24840860 */  addiu   $a0, $a0, 0x0860           ## $a0 = 06000860
/* 005EC 809F69AC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 005F0 809F69B0 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 005F4 809F69B4 8FA30028 */  lw      $v1, 0x0028($sp)
/* 005F8 809F69B8 468021A0 */  cvt.s.w $f6, $f4
/* 005FC 809F69BC 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 00600 809F69C0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00604 809F69C4 3C063FE6 */  lui     $a2, 0x3FE6                ## $a2 = 3FE60000
/* 00608 809F69C8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0060C 809F69CC AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00610 809F69D0 34C66666 */  ori     $a2, $a2, 0x6666           ## $a2 = 3FE66666
/* 00614 809F69D4 24A50860 */  addiu   $a1, $a1, 0x0860           ## $a1 = 06000860
/* 00618 809F69D8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0061C 809F69DC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00620 809F69E0 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 00624 809F69E4 0C029468 */  jal     Animation_Change

/* 00628 809F69E8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 0062C 809F69EC 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00630 809F69F0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00634 809F69F4 3C01809F */  lui     $at, %hi(D_809F7F70)       ## $at = 809F0000
/* 00638 809F69F8 E46A0060 */  swc1    $f10, 0x0060($v1)          ## 00000060
/* 0063C 809F69FC C4307F70 */  lwc1    $f16, %lo(D_809F7F70)($at)
/* 00640 809F6A00 3C01809F */  lui     $at, %hi(D_809F7F74)       ## $at = 809F0000
/* 00644 809F6A04 E4700068 */  swc1    $f16, 0x0068($v1)          ## 00000068
/* 00648 809F6A08 C4327F74 */  lwc1    $f18, %lo(D_809F7F74)($at)
/* 0064C 809F6A0C E472006C */  swc1    $f18, 0x006C($v1)          ## 0000006C
/* 00650 809F6A10 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00654 809F6A14 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00658 809F6A18 03E00008 */  jr      $ra
/* 0065C 809F6A1C 00000000 */  nop
