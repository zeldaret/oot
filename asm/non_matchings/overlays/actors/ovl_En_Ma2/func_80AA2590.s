.rdata
glabel D_80AA28D0
    .asciz "../z_en_ma2.c"
    .balign 4

glabel D_80AA28E0
    .asciz "../z_en_ma2.c"
    .balign 4

.text
glabel func_80AA2590
/* 00BF0 80AA2590 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00BF4 80AA2594 3C0F80AA */  lui     $t7, %hi(D_80AA28A8)       ## $t7 = 80AA0000
/* 00BF8 80AA2598 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BFC 80AA259C AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00C00 80AA25A0 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00C04 80AA25A4 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 00C08 80AA25A8 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 00C0C 80AA25AC 25EF28A8 */  addiu   $t7, $t7, %lo(D_80AA28A8)  ## $t7 = 80AA28A8
/* 00C10 80AA25B0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80AA28A8
/* 00C14 80AA25B4 27AE0038 */  addiu   $t6, $sp, 0x0038           ## $t6 = FFFFFFF0
/* 00C18 80AA25B8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80AA28AC
/* 00C1C 80AA25BC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 00C20 80AA25C0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80AA28B0
/* 00C24 80AA25C4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 00C28 80AA25C8 3C0680AA */  lui     $a2, %hi(D_80AA28D0)       ## $a2 = 80AA0000
/* 00C2C 80AA25CC ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 00C30 80AA25D0 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 00C34 80AA25D4 24C628D0 */  addiu   $a2, $a2, %lo(D_80AA28D0)  ## $a2 = 80AA28D0
/* 00C38 80AA25D8 24070388 */  addiu   $a3, $zero, 0x0388         ## $a3 = 00000388
/* 00C3C 80AA25DC 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 00C40 80AA25E0 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFDC
/* 00C44 80AA25E4 0C031AB1 */  jal     Graph_OpenDisps              
/* 00C48 80AA25E8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00C4C 80AA25EC 8FA9004C */  lw      $t1, 0x004C($sp)           
/* 00C50 80AA25F0 8FA50058 */  lw      $a1, 0x0058($sp)           
/* 00C54 80AA25F4 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 00C58 80AA25F8 15210003 */  bne     $t1, $at, .L80AA2608       
/* 00C5C 80AA25FC 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 00C60 80AA2600 0C0346BD */  jal     Matrix_MultVec3f              
/* 00C64 80AA2604 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFF0
.L80AA2608:
/* 00C68 80AA2608 8FAA004C */  lw      $t2, 0x004C($sp)           
/* 00C6C 80AA260C 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 00C70 80AA2610 3C0680AA */  lui     $a2, %hi(D_80AA28E0)       ## $a2 = 80AA0000
/* 00C74 80AA2614 15410010 */  bne     $t2, $at, .L80AA2658       
/* 00C78 80AA2618 24C628E0 */  addiu   $a2, $a2, %lo(D_80AA28E0)  ## $a2 = 80AA28E0
/* 00C7C 80AA261C 8FAC0058 */  lw      $t4, 0x0058($sp)           
/* 00C80 80AA2620 3C0B0601 */  lui     $t3, 0x0601                ## $t3 = 06010000
/* 00C84 80AA2624 256B93BC */  addiu   $t3, $t3, 0x93BC           ## $t3 = 060093BC
/* 00C88 80AA2628 8D8D0154 */  lw      $t5, 0x0154($t4)           ## 00000154
/* 00C8C 80AA262C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00C90 80AA2630 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 00C94 80AA2634 556D0009 */  bnel    $t3, $t5, .L80AA265C       
/* 00C98 80AA2638 8FB90048 */  lw      $t9, 0x0048($sp)           
/* 00C9C 80AA263C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 00CA0 80AA2640 3C180600 */  lui     $t8, 0x0600                ## $t8 = 06000000
/* 00CA4 80AA2644 27185420 */  addiu   $t8, $t8, 0x5420           ## $t8 = 06005420
/* 00CA8 80AA2648 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 00CAC 80AA264C AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 00CB0 80AA2650 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 00CB4 80AA2654 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
.L80AA2658:
/* 00CB8 80AA2658 8FB90048 */  lw      $t9, 0x0048($sp)           
.L80AA265C:
/* 00CBC 80AA265C 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFDC
/* 00CC0 80AA2660 2407039F */  addiu   $a3, $zero, 0x039F         ## $a3 = 0000039F
/* 00CC4 80AA2664 0C031AD5 */  jal     Graph_CloseDisps              
/* 00CC8 80AA2668 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 00CCC 80AA266C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CD0 80AA2670 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00CD4 80AA2674 03E00008 */  jr      $ra                        
/* 00CD8 80AA2678 00000000 */  nop
