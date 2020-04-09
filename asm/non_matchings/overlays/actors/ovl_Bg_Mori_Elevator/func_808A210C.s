glabel func_808A210C
/* 0090C 808A210C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00910 808A2110 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00914 808A2114 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00918 808A2118 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0091C 808A211C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00920 808A2120 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 00924 808A2124 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00928 808A2128 3C06808A */  lui     $a2, %hi(D_808A236C)       ## $a2 = 808A0000
/* 0092C 808A212C 24C6236C */  addiu   $a2, $a2, %lo(D_808A236C)  ## $a2 = 808A236C
/* 00930 808A2130 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 00934 808A2134 2407023F */  addiu   $a3, $zero, 0x023F         ## $a3 = 0000023F
/* 00938 808A2138 0C031AB1 */  jal     Graph_OpenDisps              
/* 0093C 808A213C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00940 808A2140 0C024F46 */  jal     func_80093D18              
/* 00944 808A2144 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00948 808A2148 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0094C 808A214C 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 00950 808A2150 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 00954 808A2154 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00958 808A2158 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 0095C 808A215C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00960 808A2160 8FB80050 */  lw      $t8, 0x0050($sp)           
/* 00964 808A2164 3C0A0001 */  lui     $t2, 0x0001                ## $t2 = 00010000
/* 00968 808A2168 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 0096C 808A216C 83190171 */  lb      $t9, 0x0171($t8)           ## 00000171
/* 00970 808A2170 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 00974 808A2174 3C05808A */  lui     $a1, %hi(D_808A2384)       ## $a1 = 808A0000
/* 00978 808A2178 00194100 */  sll     $t0, $t9,  4               
/* 0097C 808A217C 01194021 */  addu    $t0, $t0, $t9              
/* 00980 808A2180 00084080 */  sll     $t0, $t0,  2               
/* 00984 808A2184 02284821 */  addu    $t1, $s1, $t0              
/* 00988 808A2188 01495021 */  addu    $t2, $t2, $t1              
/* 0098C 808A218C 8D4A17B4 */  lw      $t2, 0x17B4($t2)           ## 000117B4
/* 00990 808A2190 24A52384 */  addiu   $a1, $a1, %lo(D_808A2384)  ## $a1 = 808A2384
/* 00994 808A2194 24060244 */  addiu   $a2, $zero, 0x0244         ## $a2 = 00000244
/* 00998 808A2198 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 0099C 808A219C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 009A0 808A21A0 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 009A4 808A21A4 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 009A8 808A21A8 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 009AC 808A21AC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 009B0 808A21B0 0C0346A2 */  jal     Matrix_NewMtx              
/* 009B4 808A21B4 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 009B8 808A21B8 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 009BC 808A21BC 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 009C0 808A21C0 25EF2AD0 */  addiu   $t7, $t7, 0x2AD0           ## $t7 = 06002AD0
/* 009C4 808A21C4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 009C8 808A21C8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 009CC 808A21CC 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 009D0 808A21D0 3C06808A */  lui     $a2, %hi(D_808A239C)       ## $a2 = 808A0000
/* 009D4 808A21D4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 009D8 808A21D8 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 009DC 808A21DC AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 009E0 808A21E0 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 009E4 808A21E4 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 009E8 808A21E8 24C6239C */  addiu   $a2, $a2, %lo(D_808A239C)  ## $a2 = 808A239C
/* 009EC 808A21EC 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 009F0 808A21F0 0C031AD5 */  jal     Graph_CloseDisps              
/* 009F4 808A21F4 24070248 */  addiu   $a3, $zero, 0x0248         ## $a3 = 00000248
/* 009F8 808A21F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 009FC 808A21FC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00A00 808A2200 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00A04 808A2204 03E00008 */  jr      $ra                        
/* 00A08 808A2208 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00A0C 808A220C 00000000 */  nop

