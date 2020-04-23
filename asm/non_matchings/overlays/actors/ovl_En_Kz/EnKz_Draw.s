.rdata
glabel D_80A9D970
    .asciz "../z_en_kz.c"
    .balign 4

glabel D_80A9D980
    .asciz "../z_en_kz.c"
    .balign 4

.text
glabel EnKz_Draw
/* 01250 80A9D7A0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 01254 80A9D7A4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01258 80A9D7A8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0125C 80A9D7AC AFA50054 */  sw      $a1, 0x0054($sp)
/* 01260 80A9D7B0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01264 80A9D7B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01268 80A9D7B8 3C0680AA */  lui     $a2, %hi(D_80A9D970)       ## $a2 = 80AA0000
/* 0126C 80A9D7BC 24C6D970 */  addiu   $a2, $a2, %lo(D_80A9D970)  ## $a2 = 80A9D970
/* 01270 80A9D7C0 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 01274 80A9D7C4 240704EB */  addiu   $a3, $zero, 0x04EB         ## $a3 = 000004EB
/* 01278 80A9D7C8 0C031AB1 */  jal     Graph_OpenDisps
/* 0127C 80A9D7CC AFA50048 */  sw      $a1, 0x0048($sp)
/* 01280 80A9D7D0 8FA80048 */  lw      $t0, 0x0048($sp)
/* 01284 80A9D7D4 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 01288 80A9D7D8 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 0128C 80A9D7DC 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 01290 80A9D7E0 3C0480AA */  lui     $a0, %hi(D_80A9D964)       ## $a0 = 80AA0000
/* 01294 80A9D7E4 3C0E8016 */  lui     $t6, %hi(gSegments)
/* 01298 80A9D7E8 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 0129C 80A9D7EC AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 012A0 80A9D7F0 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 012A4 80A9D7F4 86190210 */  lh      $t9, 0x0210($s0)           ## 00000210
/* 012A8 80A9D7F8 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 012AC 80A9D7FC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 012B0 80A9D800 00194880 */  sll     $t1, $t9,  2
/* 012B4 80A9D804 00892021 */  addu    $a0, $a0, $t1
/* 012B8 80A9D808 8C84D964 */  lw      $a0, %lo(D_80A9D964)($a0)
/* 012BC 80A9D80C 00045900 */  sll     $t3, $a0,  4
/* 012C0 80A9D810 000B6702 */  srl     $t4, $t3, 28
/* 012C4 80A9D814 000C6880 */  sll     $t5, $t4,  2
/* 012C8 80A9D818 01CD7021 */  addu    $t6, $t6, $t5
/* 012CC 80A9D81C 8DCE6FA8 */  lw      $t6, %lo(gSegments)($t6)
/* 012D0 80A9D820 00815024 */  and     $t2, $a0, $at
/* 012D4 80A9D824 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 012D8 80A9D828 014E7821 */  addu    $t7, $t2, $t6
/* 012DC 80A9D82C 01E1C021 */  addu    $t8, $t7, $at
/* 012E0 80A9D830 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 012E4 80A9D834 8FB90054 */  lw      $t9, 0x0054($sp)
/* 012E8 80A9D838 0C0250F2 */  jal     func_800943C8
/* 012EC 80A9D83C 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 012F0 80A9D840 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 012F4 80A9D844 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 012F8 80A9D848 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 012FC 80A9D84C 3C0980AA */  lui     $t1, %hi(func_80A9D670)    ## $t1 = 80AA0000
/* 01300 80A9D850 3C0B80AA */  lui     $t3, %hi(func_80A9D744)    ## $t3 = 80AA0000
/* 01304 80A9D854 256BD744 */  addiu   $t3, $t3, %lo(func_80A9D744) ## $t3 = 80A9D744
/* 01308 80A9D858 2529D670 */  addiu   $t1, $t1, %lo(func_80A9D670) ## $t1 = 80A9D670
/* 0130C 80A9D85C AFA90010 */  sw      $t1, 0x0010($sp)
/* 01310 80A9D860 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 01314 80A9D864 AFB00018 */  sw      $s0, 0x0018($sp)
/* 01318 80A9D868 0C0286B2 */  jal     SkelAnime_DrawSV
/* 0131C 80A9D86C 8FA40054 */  lw      $a0, 0x0054($sp)
/* 01320 80A9D870 8FAC0054 */  lw      $t4, 0x0054($sp)
/* 01324 80A9D874 3C0680AA */  lui     $a2, %hi(D_80A9D980)       ## $a2 = 80AA0000
/* 01328 80A9D878 24C6D980 */  addiu   $a2, $a2, %lo(D_80A9D980)  ## $a2 = 80A9D980
/* 0132C 80A9D87C 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 01330 80A9D880 24070501 */  addiu   $a3, $zero, 0x0501         ## $a3 = 00000501
/* 01334 80A9D884 0C031AD5 */  jal     Graph_CloseDisps
/* 01338 80A9D888 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 0133C 80A9D88C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01340 80A9D890 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01344 80A9D894 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 01348 80A9D898 03E00008 */  jr      $ra
/* 0134C 80A9D89C 00000000 */  nop
