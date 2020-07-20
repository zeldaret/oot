.rdata
glabel D_80993E2C
    .asciz "../z_demo_tre_lgt.c"
    .balign 4

glabel D_80993E40
    .asciz "../z_demo_tre_lgt.c"
    .balign 4

.text
glabel DemoTreLgt_Draw
/* 005F0 80993CB0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 005F4 80993CB4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 005F8 80993CB8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 005FC 80993CBC AFA40058 */  sw      $a0, 0x0058($sp)
/* 00600 80993CC0 AFA5005C */  sw      $a1, 0x005C($sp)
/* 00604 80993CC4 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 00608 80993CC8 3C068099 */  lui     $a2, %hi(D_80993E2C)       ## $a2 = 80990000
/* 0060C 80993CCC 24C63E2C */  addiu   $a2, $a2, %lo(D_80993E2C)  ## $a2 = 80993E2C
/* 00610 80993CD0 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00614 80993CD4 240701CD */  addiu   $a3, $zero, 0x01CD         ## $a3 = 000001CD
/* 00618 80993CD8 0C031AB1 */  jal     Graph_OpenDisps
/* 0061C 80993CDC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00620 80993CE0 8FAF0058 */  lw      $t7, 0x0058($sp)
/* 00624 80993CE4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00628 80993CE8 8DF8016C */  lw      $t8, 0x016C($t7)           ## 0000016C
/* 0062C 80993CEC 5701001B */  bnel    $t8, $at, .L80993D5C
/* 00630 80993CF0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00634 80993CF4 0C024F61 */  jal     func_80093D84
/* 00638 80993CF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0063C 80993CFC 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 00640 80993D00 8FA40058 */  lw      $a0, 0x0058($sp)
/* 00644 80993D04 3C08FB00 */  lui     $t0, 0xFB00                ## $t0 = FB000000
/* 00648 80993D08 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 0064C 80993D0C AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 00650 80993D10 3C09C8FF */  lui     $t1, 0xC8FF                ## $t1 = C8FF0000
/* 00654 80993D14 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 00658 80993D18 AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 0065C 80993D1C 3C078099 */  lui     $a3, %hi(func_80993B2C)    ## $a3 = 80990000
/* 00660 80993D20 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00664 80993D24 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 00668 80993D28 24E73B2C */  addiu   $a3, $a3, %lo(func_80993B2C) ## $a3 = 80993B2C
/* 0066C 80993D2C AFA00010 */  sw      $zero, 0x0010($sp)
/* 00670 80993D30 8FA5005C */  lw      $a1, 0x005C($sp)
/* 00674 80993D34 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00678 80993D38 0C01B3DB */  jal     SkelCurve_Draw
/* 0067C 80993D3C 2486014C */  addiu   $a2, $a0, 0x014C           ## $a2 = 0000014C
/* 00680 80993D40 3C068099 */  lui     $a2, %hi(D_80993E40)       ## $a2 = 80990000
/* 00684 80993D44 24C63E40 */  addiu   $a2, $a2, %lo(D_80993E40)  ## $a2 = 80993E40
/* 00688 80993D48 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 0068C 80993D4C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00690 80993D50 0C031AD5 */  jal     Graph_CloseDisps
/* 00694 80993D54 240701DC */  addiu   $a3, $zero, 0x01DC         ## $a3 = 000001DC
/* 00698 80993D58 8FBF002C */  lw      $ra, 0x002C($sp)
.L80993D5C:
/* 0069C 80993D5C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 006A0 80993D60 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 006A4 80993D64 03E00008 */  jr      $ra
/* 006A8 80993D68 00000000 */  nop
/* 006AC 80993D6C 00000000 */  nop
