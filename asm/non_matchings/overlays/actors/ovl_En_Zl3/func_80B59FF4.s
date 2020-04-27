.rdata
glabel D_80B5AA4C
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5AA5C
    .asciz "../z_en_zl3.c"
    .balign 4

.text
glabel func_80B59FF4
/* 06C44 80B59FF4 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 06C48 80B59FF8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 06C4C 80B59FFC AFB00028 */  sw      $s0, 0x0028($sp)
/* 06C50 80B5A000 AFA40088 */  sw      $a0, 0x0088($sp)
/* 06C54 80B5A004 AFA5008C */  sw      $a1, 0x008C($sp)
/* 06C58 80B5A008 84820244 */  lh      $v0, 0x0244($a0)           ## 00000244
/* 06C5C 80B5A00C 3C1880B6 */  lui     $t8, %hi(D_80B5A43C)       ## $t8 = 80B60000
/* 06C60 80B5A010 3C0A80B6 */  lui     $t2, %hi(D_80B5A45C)       ## $t2 = 80B60000
/* 06C64 80B5A014 00027880 */  sll     $t7, $v0,  2
/* 06C68 80B5A018 030FC021 */  addu    $t8, $t8, $t7
/* 06C6C 80B5A01C 8F18A43C */  lw      $t8, %lo(D_80B5A43C)($t8)
/* 06C70 80B5A020 3C0680B6 */  lui     $a2, %hi(D_80B5AA4C)       ## $a2 = 80B60000
/* 06C74 80B5A024 24C6AA4C */  addiu   $a2, $a2, %lo(D_80B5AA4C)  ## $a2 = 80B5AA4C
/* 06C78 80B5A028 AFB80078 */  sw      $t8, 0x0078($sp)
/* 06C7C 80B5A02C 84830248 */  lh      $v1, 0x0248($a0)           ## 00000248
/* 06C80 80B5A030 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFCC
/* 06C84 80B5A034 24070875 */  addiu   $a3, $zero, 0x0875         ## $a3 = 00000875
/* 06C88 80B5A038 0003C880 */  sll     $t9, $v1,  2
/* 06C8C 80B5A03C 01595021 */  addu    $t2, $t2, $t9
/* 06C90 80B5A040 8D4AA45C */  lw      $t2, %lo(D_80B5A45C)($t2)
/* 06C94 80B5A044 AFAA006C */  sw      $t2, 0x006C($sp)
/* 06C98 80B5A048 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 06C9C 80B5A04C 0C031AB1 */  jal     Graph_OpenDisps
/* 06CA0 80B5A050 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 06CA4 80B5A054 8FAC008C */  lw      $t4, 0x008C($sp)
/* 06CA8 80B5A058 0C024F46 */  jal     func_80093D18
/* 06CAC 80B5A05C 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 06CB0 80B5A060 8FA90078 */  lw      $t1, 0x0078($sp)
/* 06CB4 80B5A064 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 06CB8 80B5A068 3C078016 */  lui     $a3, %hi(gSegments)
/* 06CBC 80B5A06C 0009C100 */  sll     $t8, $t1,  4
/* 06CC0 80B5A070 00187702 */  srl     $t6, $t8, 28
/* 06CC4 80B5A074 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 06CC8 80B5A078 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 06CCC 80B5A07C AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 06CD0 80B5A080 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 06CD4 80B5A084 000EC880 */  sll     $t9, $t6,  2
/* 06CD8 80B5A088 24E76FA8 */  addiu   $a3, %lo(gSegments)
/* 06CDC 80B5A08C 00F92021 */  addu    $a0, $a3, $t9
/* 06CE0 80B5A090 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 06CE4 80B5A094 8C8A0000 */  lw      $t2, 0x0000($a0)           ## 00000000
/* 06CE8 80B5A098 3C0800FF */  lui     $t0, 0x00FF                ## $t0 = 00FF0000
/* 06CEC 80B5A09C 3508FFFF */  ori     $t0, $t0, 0xFFFF           ## $t0 = 00FFFFFF
/* 06CF0 80B5A0A0 01282824 */  and     $a1, $t1, $t0
/* 06CF4 80B5A0A4 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 06CF8 80B5A0A8 01455821 */  addu    $t3, $t2, $a1
/* 06CFC 80B5A0AC 01666021 */  addu    $t4, $t3, $a2
/* 06D00 80B5A0B0 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 06D04 80B5A0B4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 06D08 80B5A0B8 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 06D0C 80B5A0BC 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 06D10 80B5A0C0 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 06D14 80B5A0C4 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 06D18 80B5A0C8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 06D1C 80B5A0CC 8C980000 */  lw      $t8, 0x0000($a0)           ## 00000000
/* 06D20 80B5A0D0 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 06D24 80B5A0D4 356B0028 */  ori     $t3, $t3, 0x0028           ## $t3 = DB060028
/* 06D28 80B5A0D8 03057021 */  addu    $t6, $t8, $a1
/* 06D2C 80B5A0DC 01C6C821 */  addu    $t9, $t6, $a2
/* 06D30 80B5A0E0 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 06D34 80B5A0E4 8FA4006C */  lw      $a0, 0x006C($sp)
/* 06D38 80B5A0E8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 06D3C 80B5A0EC 00046100 */  sll     $t4, $a0,  4
/* 06D40 80B5A0F0 000C6F02 */  srl     $t5, $t4, 28
/* 06D44 80B5A0F4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 06D48 80B5A0F8 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 06D4C 80B5A0FC 000D7880 */  sll     $t7, $t5,  2
/* 06D50 80B5A100 00EFC021 */  addu    $t8, $a3, $t7
/* 06D54 80B5A104 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 06D58 80B5A108 8F0E0000 */  lw      $t6, 0x0000($t8)           ## 00000000
/* 06D5C 80B5A10C 0088C824 */  and     $t9, $a0, $t0
/* 06D60 80B5A110 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 06D64 80B5A114 01D95021 */  addu    $t2, $t6, $t9
/* 06D68 80B5A118 01465821 */  addu    $t3, $t2, $a2
/* 06D6C 80B5A11C AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 06D70 80B5A120 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 06D74 80B5A124 3C0DFB00 */  lui     $t5, 0xFB00                ## $t5 = FB000000
/* 06D78 80B5A128 3C198011 */  lui     $t9, %hi(D_80116280+0x10)
/* 06D7C 80B5A12C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 06D80 80B5A130 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 06D84 80B5A134 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 06D88 80B5A138 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 06D8C 80B5A13C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 06D90 80B5A140 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 06D94 80B5A144 35CE002C */  ori     $t6, $t6, 0x002C           ## $t6 = DB06002C
/* 06D98 80B5A148 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 06D9C 80B5A14C AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 06DA0 80B5A150 27396290 */  addiu   $t9, %lo(D_80116280+0x10)
/* 06DA4 80B5A154 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 06DA8 80B5A158 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 06DAC 80B5A15C 8FA30088 */  lw      $v1, 0x0088($sp)
/* 06DB0 80B5A160 3C0B80B5 */  lui     $t3, %hi(func_80B54CE8)    ## $t3 = 80B50000
/* 06DB4 80B5A164 3C0A80B6 */  lui     $t2, %hi(func_80B59F74)    ## $t2 = 80B60000
/* 06DB8 80B5A168 2462014C */  addiu   $v0, $v1, 0x014C           ## $v0 = 0000014C
/* 06DBC 80B5A16C 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 06DC0 80B5A170 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 06DC4 80B5A174 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 06DC8 80B5A178 254A9F74 */  addiu   $t2, $t2, %lo(func_80B59F74) ## $t2 = 80B59F74
/* 06DCC 80B5A17C 256B4CE8 */  addiu   $t3, $t3, %lo(func_80B54CE8) ## $t3 = 80B54CE8
/* 06DD0 80B5A180 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 06DD4 80B5A184 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 06DD8 80B5A188 AFA30018 */  sw      $v1, 0x0018($sp)
/* 06DDC 80B5A18C 8E0C02C0 */  lw      $t4, 0x02C0($s0)           ## 000002C0
/* 06DE0 80B5A190 8FA4008C */  lw      $a0, 0x008C($sp)
/* 06DE4 80B5A194 0C0289CF */  jal     SkelAnime_DrawSV2
/* 06DE8 80B5A198 AFAC001C */  sw      $t4, 0x001C($sp)
/* 06DEC 80B5A19C AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
/* 06DF0 80B5A1A0 8FAD008C */  lw      $t5, 0x008C($sp)
/* 06DF4 80B5A1A4 3C0680B6 */  lui     $a2, %hi(D_80B5AA5C)       ## $a2 = 80B60000
/* 06DF8 80B5A1A8 24C6AA5C */  addiu   $a2, $a2, %lo(D_80B5AA5C)  ## $a2 = 80B5AA5C
/* 06DFC 80B5A1AC 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFCC
/* 06E00 80B5A1B0 2407088E */  addiu   $a3, $zero, 0x088E         ## $a3 = 0000088E
/* 06E04 80B5A1B4 0C031AD5 */  jal     Graph_CloseDisps
/* 06E08 80B5A1B8 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 06E0C 80B5A1BC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 06E10 80B5A1C0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 06E14 80B5A1C4 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 06E18 80B5A1C8 03E00008 */  jr      $ra
/* 06E1C 80B5A1CC 00000000 */  nop
