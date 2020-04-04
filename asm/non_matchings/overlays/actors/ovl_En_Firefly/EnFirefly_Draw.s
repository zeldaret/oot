glabel EnFirefly_Draw
/* 01CD0 80A14D40 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01CD4 80A14D44 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01CD8 80A14D48 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01CDC 80A14D4C AFA40058 */  sw      $a0, 0x0058($sp)
/* 01CE0 80A14D50 AFA5005C */  sw      $a1, 0x005C($sp)
/* 01CE4 80A14D54 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01CE8 80A14D58 3C0680A1 */  lui     $a2, %hi(D_80A14FE0)       ## $a2 = 80A10000
/* 01CEC 80A14D5C 24C64FE0 */  addiu   $a2, $a2, %lo(D_80A14FE0)  ## $a2 = 80A14FE0
/* 01CF0 80A14D60 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 01CF4 80A14D64 240706C5 */  addiu   $a3, $zero, 0x06C5         ## $a3 = 000006C5
/* 01CF8 80A14D68 0C031AB1 */  jal     Graph_OpenDisp
/* 01CFC 80A14D6C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01D00 80A14D70 8FAF005C */  lw      $t7, 0x005C($sp)
/* 01D04 80A14D74 0C024F46 */  jal     func_80093D18
/* 01D08 80A14D78 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 01D0C 80A14D7C 8FA80058 */  lw      $t0, 0x0058($sp)
/* 01D10 80A14D80 3C0780A1 */  lui     $a3, %hi(func_80A14960)    ## $a3 = 80A10000
/* 01D14 80A14D84 3C0D80A1 */  lui     $t5, %hi(func_80A149B4)    ## $t5 = 80A10000
/* 01D18 80A14D88 911801B9 */  lbu     $t8, 0x01B9($t0)           ## 000001B9
/* 01D1C 80A14D8C 25AD49B4 */  addiu   $t5, $t5, %lo(func_80A149B4) ## $t5 = 80A149B4
/* 01D20 80A14D90 24E74960 */  addiu   $a3, $a3, %lo(func_80A14960) ## $a3 = 80A14960
/* 01D24 80A14D94 53000009 */  beql    $t8, $zero, .L80A14DBC
/* 01D28 80A14D98 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 01D2C 80A14D9C 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 01D30 80A14DA0 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 01D34 80A14DA4 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 01D38 80A14DA8 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 01D3C 80A14DAC AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 01D40 80A14DB0 10000008 */  beq     $zero, $zero, .L80A14DD4
/* 01D44 80A14DB4 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 01D48 80A14DB8 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
.L80A14DBC:
/* 01D4C 80A14DBC 3C0BFB00 */  lui     $t3, 0xFB00                ## $t3 = FB000000
/* 01D50 80A14DC0 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 01D54 80A14DC4 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 01D58 80A14DC8 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 01D5C 80A14DCC AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 01D60 80A14DD0 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
.L80A14DD4:
/* 01D64 80A14DD4 8D050174 */  lw      $a1, 0x0174($t0)           ## 00000174
/* 01D68 80A14DD8 8D060190 */  lw      $a2, 0x0190($t0)           ## 00000190
/* 01D6C 80A14DDC AFA80014 */  sw      $t0, 0x0014($sp)
/* 01D70 80A14DE0 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 01D74 80A14DE4 8E0E02C0 */  lw      $t6, 0x02C0($s0)           ## 000002C0
/* 01D78 80A14DE8 8FA4005C */  lw      $a0, 0x005C($sp)
/* 01D7C 80A14DEC 0C0288A2 */  jal     SkelAnime_Draw2
/* 01D80 80A14DF0 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 01D84 80A14DF4 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
/* 01D88 80A14DF8 8FAF005C */  lw      $t7, 0x005C($sp)
/* 01D8C 80A14DFC 3C0680A1 */  lui     $a2, %hi(D_80A14FF4)       ## $a2 = 80A10000
/* 01D90 80A14E00 24C64FF4 */  addiu   $a2, $a2, %lo(D_80A14FF4)  ## $a2 = 80A14FF4
/* 01D94 80A14E04 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 01D98 80A14E08 240706E3 */  addiu   $a3, $zero, 0x06E3         ## $a3 = 000006E3
/* 01D9C 80A14E0C 0C031AD5 */  jal     Graph_CloseDisp
/* 01DA0 80A14E10 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 01DA4 80A14E14 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01DA8 80A14E18 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01DAC 80A14E1C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01DB0 80A14E20 03E00008 */  jr      $ra
/* 01DB4 80A14E24 00000000 */  nop


