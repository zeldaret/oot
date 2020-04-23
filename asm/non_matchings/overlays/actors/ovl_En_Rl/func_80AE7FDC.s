.rdata
glabel D_80AE827C
    .asciz "../z_en_rl.c"
    .balign 4

glabel D_80AE828C
    .asciz "../z_en_rl.c"
    .balign 4

.text
glabel func_80AE7FDC
/* 00D2C 80AE7FDC 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 00D30 80AE7FE0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00D34 80AE7FE4 AFA40070 */  sw      $a0, 0x0070($sp)
/* 00D38 80AE7FE8 AFA50074 */  sw      $a1, 0x0074($sp)
/* 00D3C 80AE7FEC 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 00D40 80AE7FF0 3C1880AF */  lui     $t8, %hi(D_80AE81A0)       ## $t8 = 80AF0000
/* 00D44 80AE7FF4 3C0680AF */  lui     $a2, %hi(D_80AE827C)       ## $a2 = 80AF0000
/* 00D48 80AE7FF8 00027880 */  sll     $t7, $v0,  2
/* 00D4C 80AE7FFC 030FC021 */  addu    $t8, $t8, $t7
/* 00D50 80AE8000 8F1881A0 */  lw      $t8, %lo(D_80AE81A0)($t8)
/* 00D54 80AE8004 24C6827C */  addiu   $a2, $a2, %lo(D_80AE827C)  ## $a2 = 80AE827C
/* 00D58 80AE8008 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD8
/* 00D5C 80AE800C AFB80060 */  sw      $t8, 0x0060($sp)
/* 00D60 80AE8010 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00D64 80AE8014 240701A0 */  addiu   $a3, $zero, 0x01A0         ## $a3 = 000001A0
/* 00D68 80AE8018 0C031AB1 */  jal     Graph_OpenDisps
/* 00D6C 80AE801C AFA50058 */  sw      $a1, 0x0058($sp)
/* 00D70 80AE8020 8FA90074 */  lw      $t1, 0x0074($sp)
/* 00D74 80AE8024 0C024F46 */  jal     func_80093D18
/* 00D78 80AE8028 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 00D7C 80AE802C 8FA80058 */  lw      $t0, 0x0058($sp)
/* 00D80 80AE8030 8FA70060 */  lw      $a3, 0x0060($sp)
/* 00D84 80AE8034 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 00D88 80AE8038 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 00D8C 80AE803C 00076100 */  sll     $t4, $a3,  4
/* 00D90 80AE8040 000C6F02 */  srl     $t5, $t4, 28
/* 00D94 80AE8044 3C0F8016 */  lui     $t7, %hi(gSegments)
/* 00D98 80AE8048 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00D9C 80AE804C 25EF6FA8 */  addiu   $t7, %lo(gSegments)
/* 00DA0 80AE8050 000D7080 */  sll     $t6, $t5,  2
/* 00DA4 80AE8054 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 00DA8 80AE8058 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 00DAC 80AE805C 01CF2021 */  addu    $a0, $t6, $t7
/* 00DB0 80AE8060 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00DB4 80AE8064 8C980000 */  lw      $t8, 0x0000($a0)           ## 00000000
/* 00DB8 80AE8068 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00DBC 80AE806C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00DC0 80AE8070 00E12824 */  and     $a1, $a3, $at
/* 00DC4 80AE8074 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 00DC8 80AE8078 0305C821 */  addu    $t9, $t8, $a1
/* 00DCC 80AE807C 03264821 */  addu    $t1, $t9, $a2
/* 00DD0 80AE8080 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00DD4 80AE8084 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 00DD8 80AE8088 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 00DDC 80AE808C 356B0024 */  ori     $t3, $t3, 0x0024           ## $t3 = DB060024
/* 00DE0 80AE8090 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00DE4 80AE8094 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 00DE8 80AE8098 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00DEC 80AE809C 8C8C0000 */  lw      $t4, 0x0000($a0)           ## 00000000
/* 00DF0 80AE80A0 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00DF4 80AE80A4 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 00DF8 80AE80A8 01856821 */  addu    $t5, $t4, $a1
/* 00DFC 80AE80AC 01A67021 */  addu    $t6, $t5, $a2
/* 00E00 80AE80B0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00E04 80AE80B4 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 00E08 80AE80B8 3C0B8011 */  lui     $t3, %hi(D_80116280+0x10)
/* 00E0C 80AE80BC 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00E10 80AE80C0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00E14 80AE80C4 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 00E18 80AE80C8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 00E1C 80AE80CC AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00E20 80AE80D0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 00E24 80AE80D4 354A0030 */  ori     $t2, $t2, 0x0030           ## $t2 = DB060030
/* 00E28 80AE80D8 256B6290 */  addiu   $t3, %lo(D_80116280+0x10)
/* 00E2C 80AE80DC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00E30 80AE80E0 AD0902C0 */  sw      $t1, 0x02C0($t0)           ## 000002C0
/* 00E34 80AE80E4 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 00E38 80AE80E8 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00E3C 80AE80EC 8FA30070 */  lw      $v1, 0x0070($sp)
/* 00E40 80AE80F0 8FA40074 */  lw      $a0, 0x0074($sp)
/* 00E44 80AE80F4 2462014C */  addiu   $v0, $v1, 0x014C           ## $v0 = 0000014C
/* 00E48 80AE80F8 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 00E4C 80AE80FC 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 00E50 80AE8100 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 00E54 80AE8104 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00E58 80AE8108 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00E5C 80AE810C 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00E60 80AE8110 AFA30018 */  sw      $v1, 0x0018($sp)
/* 00E64 80AE8114 8FAC0074 */  lw      $t4, 0x0074($sp)
/* 00E68 80AE8118 3C0680AF */  lui     $a2, %hi(D_80AE828C)       ## $a2 = 80AF0000
/* 00E6C 80AE811C 24C6828C */  addiu   $a2, $a2, %lo(D_80AE828C)  ## $a2 = 80AE828C
/* 00E70 80AE8120 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD8
/* 00E74 80AE8124 240701B5 */  addiu   $a3, $zero, 0x01B5         ## $a3 = 000001B5
/* 00E78 80AE8128 0C031AD5 */  jal     Graph_CloseDisps
/* 00E7C 80AE812C 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 00E80 80AE8130 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00E84 80AE8134 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 00E88 80AE8138 03E00008 */  jr      $ra
/* 00E8C 80AE813C 00000000 */  nop
