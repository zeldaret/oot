.rdata
glabel D_80B17E40
    .asciz "../z_en_takara_man.c"
    .balign 4

glabel D_80B17E58
    .asciz "../z_en_takara_man.c"
    .balign 4

.text
glabel EnTakaraMan_Draw
/* 00750 80B17CB0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00754 80B17CB4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00758 80B17CB8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0075C 80B17CBC AFA50054 */  sw      $a1, 0x0054($sp)
/* 00760 80B17CC0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00764 80B17CC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00768 80B17CC8 3C0680B1 */  lui     $a2, %hi(D_80B17E40)       ## $a2 = 80B10000
/* 0076C 80B17CCC 24C67E40 */  addiu   $a2, $a2, %lo(D_80B17E40)  ## $a2 = 80B17E40
/* 00770 80B17CD0 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 00774 80B17CD4 24070210 */  addiu   $a3, $zero, 0x0210         ## $a3 = 00000210
/* 00778 80B17CD8 0C031AB1 */  jal     Graph_OpenDisps
/* 0077C 80B17CDC AFA50048 */  sw      $a1, 0x0048($sp)
/* 00780 80B17CE0 8FAF0054 */  lw      $t7, 0x0054($sp)
/* 00784 80B17CE4 0C024F46 */  jal     func_80093D18
/* 00788 80B17CE8 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 0078C 80B17CEC 8FA50048 */  lw      $a1, 0x0048($sp)
/* 00790 80B17CF0 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 00794 80B17CF4 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 00798 80B17CF8 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 0079C 80B17CFC 3C0480B1 */  lui     $a0, %hi(D_80B17DD4)       ## $a0 = 80B10000
/* 007A0 80B17D00 3C0E8016 */  lui     $t6, %hi(gSegments)
/* 007A4 80B17D04 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 007A8 80B17D08 ACB802C0 */  sw      $t8, 0x02C0($a1)           ## 000002C0
/* 007AC 80B17D0C AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 007B0 80B17D10 8608020E */  lh      $t0, 0x020E($s0)           ## 0000020E
/* 007B4 80B17D14 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 007B8 80B17D18 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 007BC 80B17D1C 00084880 */  sll     $t1, $t0,  2
/* 007C0 80B17D20 00892021 */  addu    $a0, $a0, $t1
/* 007C4 80B17D24 8C847DD4 */  lw      $a0, %lo(D_80B17DD4)($a0)
/* 007C8 80B17D28 3C1980B1 */  lui     $t9, %hi(func_80B17C4C)    ## $t9 = 80B10000
/* 007CC 80B17D2C 27397C4C */  addiu   $t9, $t9, %lo(func_80B17C4C) ## $t9 = 80B17C4C
/* 007D0 80B17D30 00045900 */  sll     $t3, $a0,  4
/* 007D4 80B17D34 000B6702 */  srl     $t4, $t3, 28
/* 007D8 80B17D38 000C6880 */  sll     $t5, $t4,  2
/* 007DC 80B17D3C 01CD7021 */  addu    $t6, $t6, $t5
/* 007E0 80B17D40 8DCE6FA8 */  lw      $t6, %lo(gSegments)($t6)
/* 007E4 80B17D44 00815024 */  and     $t2, $a0, $at
/* 007E8 80B17D48 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 007EC 80B17D4C 014E7821 */  addu    $t7, $t2, $t6
/* 007F0 80B17D50 01E1C021 */  addu    $t8, $t7, $at
/* 007F4 80B17D54 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 007F8 80B17D58 92070152 */  lbu     $a3, 0x0152($s0)           ## 00000152
/* 007FC 80B17D5C 8E060170 */  lw      $a2, 0x0170($s0)           ## 00000170
/* 00800 80B17D60 8E050154 */  lw      $a1, 0x0154($s0)           ## 00000154
/* 00804 80B17D64 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00808 80B17D68 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0080C 80B17D6C AFB90010 */  sw      $t9, 0x0010($sp)
/* 00810 80B17D70 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00814 80B17D74 8FA40054 */  lw      $a0, 0x0054($sp)
/* 00818 80B17D78 8FA80054 */  lw      $t0, 0x0054($sp)
/* 0081C 80B17D7C 3C0680B1 */  lui     $a2, %hi(D_80B17E58)       ## $a2 = 80B10000
/* 00820 80B17D80 24C67E58 */  addiu   $a2, $a2, %lo(D_80B17E58)  ## $a2 = 80B17E58
/* 00824 80B17D84 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 00828 80B17D88 24070220 */  addiu   $a3, $zero, 0x0220         ## $a3 = 00000220
/* 0082C 80B17D8C 0C031AD5 */  jal     Graph_CloseDisps
/* 00830 80B17D90 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 00834 80B17D94 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00838 80B17D98 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0083C 80B17D9C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00840 80B17DA0 03E00008 */  jr      $ra
/* 00844 80B17DA4 00000000 */  nop
/* 00848 80B17DA8 00000000 */  nop
/* 0084C 80B17DAC 00000000 */  nop
