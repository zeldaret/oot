.rdata
glabel D_80B4A310
    .asciz "../z_en_zf.c"
    .balign 4

glabel D_80B4A320
    .asciz "../z_en_zf.c"
    .balign 4

.late_rodata
glabel D_80B4A444
    .float 1.4

.text
glabel EnZf_Draw
/* 05888 80B498D8 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 0588C 80B498DC AFBF003C */  sw      $ra, 0x003C($sp)
/* 05890 80B498E0 AFB10038 */  sw      $s1, 0x0038($sp)
/* 05894 80B498E4 AFB00034 */  sw      $s0, 0x0034($sp)
/* 05898 80B498E8 AFA50084 */  sw      $a1, 0x0084($sp)
/* 0589C 80B498EC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 058A0 80B498F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 058A4 80B498F4 3C0680B5 */  lui     $a2, %hi(D_80B4A310)       ## $a2 = 80B50000
/* 058A8 80B498F8 24C6A310 */  addiu   $a2, $a2, %lo(D_80B4A310)  ## $a2 = 80B4A310
/* 058AC 80B498FC 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFE4
/* 058B0 80B49900 24070DCD */  addiu   $a3, $zero, 0x0DCD         ## $a3 = 00000DCD
/* 058B4 80B49904 0C031AB1 */  jal     Graph_OpenDisps
/* 058B8 80B49908 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 058BC 80B4990C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 058C0 80B49910 8FA50084 */  lw      $a1, 0x0084($sp)
/* 058C4 80B49914 0C00BAF3 */  jal     func_8002EBCC
/* 058C8 80B49918 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 058CC 80B4991C 3C0480B5 */  lui     $a0, %hi(D_80B4A2F8)       ## $a0 = 80B50000
/* 058D0 80B49920 3C0FD700 */  lui     $t7, 0xD700                ## $t7 = D7000000
/* 058D4 80B49924 35EF0002 */  ori     $t7, $t7, 0x0002           ## $t7 = D7000002
/* 058D8 80B49928 2484A2F8 */  addiu   $a0, $a0, %lo(D_80B4A2F8)  ## $a0 = 80B4A2F8
/* 058DC 80B4992C AC8F0000 */  sw      $t7, 0x0000($a0)           ## 80B4A2F8
/* 058E0 80B49930 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 058E4 80B49934 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 058E8 80B49938 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 058EC 80B4993C 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 058F0 80B49940 845806D6 */  lh      $t8, 0x06D6($v0)           ## 801606D6
/* 058F4 80B49944 844906D4 */  lh      $t1, 0x06D4($v0)           ## 801606D4
/* 058F8 80B49948 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 058FC 80B4994C 3319FFFF */  andi    $t9, $t8, 0xFFFF           ## $t9 = 00000000
/* 05900 80B49950 00095400 */  sll     $t2, $t1, 16
/* 05904 80B49954 032A5825 */  or      $t3, $t9, $t2              ## $t3 = 00000000
/* 05908 80B49958 AC8B0004 */  sw      $t3, 0x0004($a0)           ## 80B4A2FC
/* 0590C 80B4995C 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 05910 80B49960 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 80160008
/* 05914 80B49964 AE2C02C0 */  sw      $t4, 0x02C0($s1)           ## 000002C0
/* 05918 80B49968 AC440004 */  sw      $a0, 0x0004($v0)           ## 80160004
/* 0591C 80B4996C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 80160000
/* 05920 80B49970 920E0404 */  lbu     $t6, 0x0404($s0)           ## 00000404
/* 05924 80B49974 8FAF0084 */  lw      $t7, 0x0084($sp)
/* 05928 80B49978 8FA90084 */  lw      $t1, 0x0084($sp)
/* 0592C 80B4997C 15C10047 */  bne     $t6, $at, .L80B49A9C
/* 05930 80B49980 00000000 */  nop
/* 05934 80B49984 0C024F46 */  jal     func_80093D18
/* 05938 80B49988 8DE40000 */  lw      $a0, 0x0000($t7)           ## D7000002
/* 0593C 80B4998C 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 05940 80B49990 3C08FB00 */  lui     $t0, 0xFB00                ## $t0 = FB000000
/* 05944 80B49994 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 05948 80B49998 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0594C 80B4999C AE3802C0 */  sw      $t8, 0x02C0($s1)           ## 000002C0
/* 05950 80B499A0 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 05954 80B499A4 92190404 */  lbu     $t9, 0x0404($s0)           ## 00000404
/* 05958 80B499A8 3C0C8011 */  lui     $t4, %hi(D_80116280+0x10)
/* 0595C 80B499AC 258C6290 */  addiu   $t4, %lo(D_80116280+0x10)
/* 05960 80B499B0 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 05964 80B499B4 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 05968 80B499B8 356B0024 */  ori     $t3, $t3, 0x0024           ## $t3 = DB060024
/* 0596C 80B499BC 3C0D80B5 */  lui     $t5, %hi(func_80B49688)    ## $t5 = 80B50000
/* 05970 80B499C0 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 05974 80B499C4 AE2A02C0 */  sw      $t2, 0x02C0($s1)           ## 000002C0
/* 05978 80B499C8 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 0597C 80B499CC AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 05980 80B499D0 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 05984 80B499D4 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 05988 80B499D8 25AD9688 */  addiu   $t5, $t5, %lo(func_80B49688) ## $t5 = 80B49688
/* 0598C 80B499DC AFAD0010 */  sw      $t5, 0x0010($sp)
/* 05990 80B499E0 AFB00014 */  sw      $s0, 0x0014($sp)
/* 05994 80B499E4 8E2E02C0 */  lw      $t6, 0x02C0($s1)           ## 000002C0
/* 05998 80B499E8 3C0780B5 */  lui     $a3, %hi(func_80B495FC)    ## $a3 = 80B50000
/* 0599C 80B499EC 24E795FC */  addiu   $a3, $a3, %lo(func_80B495FC) ## $a3 = 80B495FC
/* 059A0 80B499F0 8FA40084 */  lw      $a0, 0x0084($sp)
/* 059A4 80B499F4 0C0288A2 */  jal     SkelAnime_Draw
/* 059A8 80B499F8 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 059AC 80B499FC AE2202C0 */  sw      $v0, 0x02C0($s1)           ## 000002C0
/* 059B0 80B49A00 860F03F6 */  lh      $t7, 0x03F6($s0)           ## 000003F6
/* 059B4 80B49A04 51E0004B */  beql    $t7, $zero, .L80B49B34
/* 059B8 80B49A08 8FAA0084 */  lw      $t2, 0x0084($sp)
/* 059BC 80B49A0C 860903F6 */  lh      $t1, 0x03F6($s0)           ## 000003F6
/* 059C0 80B49A10 92180114 */  lbu     $t8, 0x0114($s0)           ## 00000114
/* 059C4 80B49A14 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 059C8 80B49A18 2539FFFF */  addiu   $t9, $t1, 0xFFFF           ## $t9 = FFFFFFFF
/* 059CC 80B49A1C A61903F6 */  sh      $t9, 0x03F6($s0)           ## 000003F6
/* 059D0 80B49A20 860303F6 */  lh      $v1, 0x03F6($s0)           ## 000003F6
/* 059D4 80B49A24 27080001 */  addiu   $t0, $t8, 0x0001           ## $t0 = 00000001
/* 059D8 80B49A28 A2080114 */  sb      $t0, 0x0114($s0)           ## 00000114
/* 059DC 80B49A2C 306A0003 */  andi    $t2, $v1, 0x0003           ## $t2 = 00000000
/* 059E0 80B49A30 1540003F */  bne     $t2, $zero, .L80B49B30
/* 059E4 80B49A34 00031083 */  sra     $v0, $v1,  2
/* 059E8 80B49A38 00025880 */  sll     $t3, $v0,  2
/* 059EC 80B49A3C 01625823 */  subu    $t3, $t3, $v0
/* 059F0 80B49A40 3C0180B5 */  lui     $at, %hi(D_80B4A444)       ## $at = 80B50000
/* 059F4 80B49A44 C424A444 */  lwc1    $f4, %lo(D_80B4A444)($at)
/* 059F8 80B49A48 000B5880 */  sll     $t3, $t3,  2
/* 059FC 80B49A4C 020B3021 */  addu    $a2, $s0, $t3
/* 05A00 80B49A50 240C0096 */  addiu   $t4, $zero, 0x0096         ## $t4 = 00000096
/* 05A04 80B49A54 240D0096 */  addiu   $t5, $zero, 0x0096         ## $t5 = 00000096
/* 05A08 80B49A58 240E00FA */  addiu   $t6, $zero, 0x00FA         ## $t6 = 000000FA
/* 05A0C 80B49A5C 240F00EB */  addiu   $t7, $zero, 0x00EB         ## $t7 = 000000EB
/* 05A10 80B49A60 241800F5 */  addiu   $t8, $zero, 0x00F5         ## $t8 = 000000F5
/* 05A14 80B49A64 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 05A18 80B49A68 AFA80024 */  sw      $t0, 0x0024($sp)
/* 05A1C 80B49A6C AFB80020 */  sw      $t8, 0x0020($sp)
/* 05A20 80B49A70 AFAF001C */  sw      $t7, 0x001C($sp)
/* 05A24 80B49A74 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 05A28 80B49A78 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 05A2C 80B49A7C AFAC0010 */  sw      $t4, 0x0010($sp)
/* 05A30 80B49A80 24C604FC */  addiu   $a2, $a2, 0x04FC           ## $a2 = 000004FC
/* 05A34 80B49A84 8FA40084 */  lw      $a0, 0x0084($sp)
/* 05A38 80B49A88 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 05A3C 80B49A8C 0C00A850 */  jal     EffectSsEnIce_SpawnFlyingVec3f
/* 05A40 80B49A90 E7A40028 */  swc1    $f4, 0x0028($sp)
/* 05A44 80B49A94 10000027 */  beq     $zero, $zero, .L80B49B34
/* 05A48 80B49A98 8FAA0084 */  lw      $t2, 0x0084($sp)
.L80B49A9C:
/* 05A4C 80B49A9C 0C024F61 */  jal     func_80093D84
/* 05A50 80B49AA0 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 05A54 80B49AA4 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 05A58 80B49AA8 3C0AE700 */  lui     $t2, 0xE700                ## $t2 = E7000000
/* 05A5C 80B49AAC 3C0CFB00 */  lui     $t4, 0xFB00                ## $t4 = FB000000
/* 05A60 80B49AB0 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 05A64 80B49AB4 AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 05A68 80B49AB8 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 05A6C 80B49ABC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 05A70 80B49AC0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 05A74 80B49AC4 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 05A78 80B49AC8 3C088011 */  lui     $t0, %hi(D_80116280)
/* 05A7C 80B49ACC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 05A80 80B49AD0 AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 05A84 80B49AD4 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 05A88 80B49AD8 920E0404 */  lbu     $t6, 0x0404($s0)           ## 00000404
/* 05A8C 80B49ADC 25086280 */  addiu   $t0, %lo(D_80116280)
/* 05A90 80B49AE0 37180024 */  ori     $t8, $t8, 0x0024           ## $t8 = DB060024
/* 05A94 80B49AE4 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 05A98 80B49AE8 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 05A9C 80B49AEC 3C0980B5 */  lui     $t1, %hi(func_80B49688)    ## $t1 = 80B50000
/* 05AA0 80B49AF0 25299688 */  addiu   $t1, $t1, %lo(func_80B49688) ## $t1 = 80B49688
/* 05AA4 80B49AF4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 05AA8 80B49AF8 AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 05AAC 80B49AFC AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 05AB0 80B49B00 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 05AB4 80B49B04 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 05AB8 80B49B08 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 05ABC 80B49B0C AFB00014 */  sw      $s0, 0x0014($sp)
/* 05AC0 80B49B10 AFA90010 */  sw      $t1, 0x0010($sp)
/* 05AC4 80B49B14 8E3902D0 */  lw      $t9, 0x02D0($s1)           ## 000002D0
/* 05AC8 80B49B18 3C0780B5 */  lui     $a3, %hi(func_80B495FC)    ## $a3 = 80B50000
/* 05ACC 80B49B1C 24E795FC */  addiu   $a3, $a3, %lo(func_80B495FC) ## $a3 = 80B495FC
/* 05AD0 80B49B20 8FA40084 */  lw      $a0, 0x0084($sp)
/* 05AD4 80B49B24 0C0288A2 */  jal     SkelAnime_Draw
/* 05AD8 80B49B28 AFB90018 */  sw      $t9, 0x0018($sp)
/* 05ADC 80B49B2C AE2202D0 */  sw      $v0, 0x02D0($s1)           ## 000002D0
.L80B49B30:
/* 05AE0 80B49B30 8FAA0084 */  lw      $t2, 0x0084($sp)
.L80B49B34:
/* 05AE4 80B49B34 3C0680B5 */  lui     $a2, %hi(D_80B4A320)       ## $a2 = 80B50000
/* 05AE8 80B49B38 24C6A320 */  addiu   $a2, $a2, %lo(D_80B4A320)  ## $a2 = 80B4A320
/* 05AEC 80B49B3C 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFE4
/* 05AF0 80B49B40 24070E11 */  addiu   $a3, $zero, 0x0E11         ## $a3 = 00000E11
/* 05AF4 80B49B44 0C031AD5 */  jal     Graph_CloseDisps
/* 05AF8 80B49B48 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 05AFC 80B49B4C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 05B00 80B49B50 8FB00034 */  lw      $s0, 0x0034($sp)
/* 05B04 80B49B54 8FB10038 */  lw      $s1, 0x0038($sp)
/* 05B08 80B49B58 03E00008 */  jr      $ra
/* 05B0C 80B49B5C 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
