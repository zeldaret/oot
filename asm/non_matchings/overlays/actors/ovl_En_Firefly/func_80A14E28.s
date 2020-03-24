glabel func_80A14E28
/* 01DB8 80A14E28 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01DBC 80A14E2C AFBF002C */  sw      $ra, 0x002C($sp)
/* 01DC0 80A14E30 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01DC4 80A14E34 AFA40058 */  sw      $a0, 0x0058($sp)
/* 01DC8 80A14E38 AFA5005C */  sw      $a1, 0x005C($sp)
/* 01DCC 80A14E3C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01DD0 80A14E40 3C0680A1 */  lui     $a2, %hi(D_80A15008)       ## $a2 = 80A10000
/* 01DD4 80A14E44 24C65008 */  addiu   $a2, $a2, %lo(D_80A15008)  ## $a2 = 80A15008
/* 01DD8 80A14E48 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 01DDC 80A14E4C 240706EF */  addiu   $a3, $zero, 0x06EF         ## $a3 = 000006EF
/* 01DE0 80A14E50 0C031AB1 */  jal     func_800C6AC4
/* 01DE4 80A14E54 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01DE8 80A14E58 8FAF005C */  lw      $t7, 0x005C($sp)
/* 01DEC 80A14E5C 0C024F61 */  jal     func_80093D84
/* 01DF0 80A14E60 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 01DF4 80A14E64 8FA80058 */  lw      $t0, 0x0058($sp)
/* 01DF8 80A14E68 3C0780A1 */  lui     $a3, %hi(func_80A14960)    ## $a3 = 80A10000
/* 01DFC 80A14E6C 3C0D80A1 */  lui     $t5, %hi(func_80A149B4)    ## $t5 = 80A10000
/* 01E00 80A14E70 911801B9 */  lbu     $t8, 0x01B9($t0)           ## 000001B9
/* 01E04 80A14E74 25AD49B4 */  addiu   $t5, $t5, %lo(func_80A149B4) ## $t5 = 80A149B4
/* 01E08 80A14E78 24E74960 */  addiu   $a3, $a3, %lo(func_80A14960) ## $a3 = 80A14960
/* 01E0C 80A14E7C 53000009 */  beql    $t8, $zero, .L80A14EA4
/* 01E10 80A14E80 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 01E14 80A14E84 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 01E18 80A14E88 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 01E1C 80A14E8C 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 01E20 80A14E90 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 01E24 80A14E94 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 01E28 80A14E98 10000008 */  beq     $zero, $zero, .L80A14EBC
/* 01E2C 80A14E9C AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 01E30 80A14EA0 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
.L80A14EA4:
/* 01E34 80A14EA4 3C0BFB00 */  lui     $t3, 0xFB00                ## $t3 = FB000000
/* 01E38 80A14EA8 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 01E3C 80A14EAC 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 01E40 80A14EB0 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 01E44 80A14EB4 AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 01E48 80A14EB8 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
.L80A14EBC:
/* 01E4C 80A14EBC 8D050174 */  lw      $a1, 0x0174($t0)           ## 00000174
/* 01E50 80A14EC0 8D060190 */  lw      $a2, 0x0190($t0)           ## 00000190
/* 01E54 80A14EC4 AFA80014 */  sw      $t0, 0x0014($sp)
/* 01E58 80A14EC8 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 01E5C 80A14ECC 8E0E02D0 */  lw      $t6, 0x02D0($s0)           ## 000002D0
/* 01E60 80A14ED0 8FA4005C */  lw      $a0, 0x005C($sp)
/* 01E64 80A14ED4 0C0288A2 */  jal     SkelAnime_Draw2
/* 01E68 80A14ED8 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 01E6C 80A14EDC AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 01E70 80A14EE0 8FAF005C */  lw      $t7, 0x005C($sp)
/* 01E74 80A14EE4 3C0680A1 */  lui     $a2, %hi(D_80A1501C)       ## $a2 = 80A10000
/* 01E78 80A14EE8 24C6501C */  addiu   $a2, $a2, %lo(D_80A1501C)  ## $a2 = 80A1501C
/* 01E7C 80A14EEC 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 01E80 80A14EF0 2407070D */  addiu   $a3, $zero, 0x070D         ## $a3 = 0000070D
/* 01E84 80A14EF4 0C031AD5 */  jal     func_800C6B54
/* 01E88 80A14EF8 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 01E8C 80A14EFC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01E90 80A14F00 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01E94 80A14F04 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01E98 80A14F08 03E00008 */  jr      $ra
/* 01E9C 80A14F0C 00000000 */  nop

