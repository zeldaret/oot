.rdata
glabel D_80AB51A8
    .asciz "../z_en_nb.c"
    .balign 4

glabel D_80AB51B8
    .asciz "../z_en_nb.c"
    .balign 4

.text
glabel func_80AB410C
/* 0337C 80AB410C 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 03380 80AB4110 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 03384 80AB4114 AFA40070 */  sw      $a0, 0x0070($sp)
/* 03388 80AB4118 AFA50074 */  sw      $a1, 0x0074($sp)
/* 0338C 80AB411C 84820274 */  lh      $v0, 0x0274($a0)           ## 00000274
/* 03390 80AB4120 3C1880AB */  lui     $t8, %hi(D_80AB430C)       ## $t8 = 80AB0000
/* 03394 80AB4124 3C0680AB */  lui     $a2, %hi(D_80AB51A8)       ## $a2 = 80AB0000
/* 03398 80AB4128 00027880 */  sll     $t7, $v0,  2
/* 0339C 80AB412C 030FC021 */  addu    $t8, $t8, $t7
/* 033A0 80AB4130 8F18430C */  lw      $t8, %lo(D_80AB430C)($t8)
/* 033A4 80AB4134 24C651A8 */  addiu   $a2, $a2, %lo(D_80AB51A8)  ## $a2 = 80AB51A8
/* 033A8 80AB4138 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD8
/* 033AC 80AB413C AFB80060 */  sw      $t8, 0x0060($sp)
/* 033B0 80AB4140 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 033B4 80AB4144 240703E0 */  addiu   $a3, $zero, 0x03E0         ## $a3 = 000003E0
/* 033B8 80AB4148 0C031AB1 */  jal     Graph_OpenDisps
/* 033BC 80AB414C AFA50058 */  sw      $a1, 0x0058($sp)
/* 033C0 80AB4150 8FA90074 */  lw      $t1, 0x0074($sp)
/* 033C4 80AB4154 0C024F46 */  jal     func_80093D18
/* 033C8 80AB4158 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 033CC 80AB415C 8FA80058 */  lw      $t0, 0x0058($sp)
/* 033D0 80AB4160 8FA70060 */  lw      $a3, 0x0060($sp)
/* 033D4 80AB4164 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 033D8 80AB4168 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 033DC 80AB416C 00076100 */  sll     $t4, $a3,  4
/* 033E0 80AB4170 000C6F02 */  srl     $t5, $t4, 28
/* 033E4 80AB4174 3C0F8016 */  lui     $t7, %hi(gSegments)
/* 033E8 80AB4178 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 033EC 80AB417C 25EF6FA8 */  addiu   $t7, %lo(gSegments)
/* 033F0 80AB4180 000D7080 */  sll     $t6, $t5,  2
/* 033F4 80AB4184 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 033F8 80AB4188 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 033FC 80AB418C 01CF2021 */  addu    $a0, $t6, $t7
/* 03400 80AB4190 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 03404 80AB4194 8C980000 */  lw      $t8, 0x0000($a0)           ## 00000000
/* 03408 80AB4198 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0340C 80AB419C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 03410 80AB41A0 00E12824 */  and     $a1, $a3, $at
/* 03414 80AB41A4 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 03418 80AB41A8 0305C821 */  addu    $t9, $t8, $a1
/* 0341C 80AB41AC 03264821 */  addu    $t1, $t9, $a2
/* 03420 80AB41B0 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 03424 80AB41B4 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 03428 80AB41B8 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 0342C 80AB41BC 356B0024 */  ori     $t3, $t3, 0x0024           ## $t3 = DB060024
/* 03430 80AB41C0 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 03434 80AB41C4 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 03438 80AB41C8 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 0343C 80AB41CC 8C8C0000 */  lw      $t4, 0x0000($a0)           ## 00000000
/* 03440 80AB41D0 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 03444 80AB41D4 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 03448 80AB41D8 01856821 */  addu    $t5, $t4, $a1
/* 0344C 80AB41DC 01A67021 */  addu    $t6, $t5, $a2
/* 03450 80AB41E0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 03454 80AB41E4 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 03458 80AB41E8 3C0B8011 */  lui     $t3, %hi(D_80116280+0x10)
/* 0345C 80AB41EC 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 03460 80AB41F0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 03464 80AB41F4 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 03468 80AB41F8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 0346C 80AB41FC AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 03470 80AB4200 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 03474 80AB4204 354A0030 */  ori     $t2, $t2, 0x0030           ## $t2 = DB060030
/* 03478 80AB4208 256B6290 */  addiu   $t3, %lo(D_80116280+0x10)
/* 0347C 80AB420C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 03480 80AB4210 AD0902C0 */  sw      $t1, 0x02C0($t0)           ## 000002C0
/* 03484 80AB4214 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 03488 80AB4218 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0348C 80AB421C 8FA30070 */  lw      $v1, 0x0070($sp)
/* 03490 80AB4220 3C0D80AB */  lui     $t5, %hi(EnNb_PostLimbDraw)    ## $t5 = 80AB0000
/* 03494 80AB4224 3C0C80AB */  lui     $t4, %hi(EnNb_OverrideLimbDraw)    ## $t4 = 80AB0000
/* 03498 80AB4228 2462014C */  addiu   $v0, $v1, 0x014C           ## $v0 = 0000014C
/* 0349C 80AB422C 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 034A0 80AB4230 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 034A4 80AB4234 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 034A8 80AB4238 258C3FE8 */  addiu   $t4, $t4, %lo(EnNb_OverrideLimbDraw) ## $t4 = 80AB3FE8
/* 034AC 80AB423C 25AD4074 */  addiu   $t5, $t5, %lo(EnNb_PostLimbDraw) ## $t5 = 80AB4074
/* 034B0 80AB4240 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 034B4 80AB4244 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 034B8 80AB4248 8FA40074 */  lw      $a0, 0x0074($sp)
/* 034BC 80AB424C 0C0286B2 */  jal     SkelAnime_DrawSV
/* 034C0 80AB4250 AFA30018 */  sw      $v1, 0x0018($sp)
/* 034C4 80AB4254 8FAE0074 */  lw      $t6, 0x0074($sp)
/* 034C8 80AB4258 3C0680AB */  lui     $a2, %hi(D_80AB51B8)       ## $a2 = 80AB0000
/* 034CC 80AB425C 24C651B8 */  addiu   $a2, $a2, %lo(D_80AB51B8)  ## $a2 = 80AB51B8
/* 034D0 80AB4260 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD8
/* 034D4 80AB4264 240703F5 */  addiu   $a3, $zero, 0x03F5         ## $a3 = 000003F5
/* 034D8 80AB4268 0C031AD5 */  jal     Graph_CloseDisps
/* 034DC 80AB426C 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 034E0 80AB4270 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 034E4 80AB4274 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 034E8 80AB4278 03E00008 */  jr      $ra
/* 034EC 80AB427C 00000000 */  nop
