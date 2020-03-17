.rdata
glabel D_801402C4
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel func_800A2044
/* B191E4 800A2044 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B191E8 800A2048 AFBF002C */  sw    $ra, 0x2c($sp)
/* B191EC 800A204C AFB00028 */  sw    $s0, 0x28($sp)
/* B191F0 800A2050 AFA40058 */  sw    $a0, 0x58($sp)
/* B191F4 800A2054 AFA5005C */  sw    $a1, 0x5c($sp)
/* B191F8 800A2058 AFA60060 */  sw    $a2, 0x60($sp)
/* B191FC 800A205C 0C034213 */  jal   Matrix_Push
/* B19200 800A2060 AFA70064 */   sw    $a3, 0x64($sp)
/* B19204 800A2064 8FAF005C */  lw    $t7, 0x5c($sp)
/* B19208 800A2068 8FAE0060 */  lw    $t6, 0x60($sp)
/* B1920C 800A206C 3C0C8016 */  lui   $t4, %hi(gSegments)
/* B19210 800A2070 000FC080 */  sll   $t8, $t7, 2
/* B19214 800A2074 01D8C821 */  addu  $t9, $t6, $t8
/* B19218 800A2078 8F220000 */  lw    $v0, ($t9)
/* B1921C 800A207C 25ED0001 */  addiu $t5, $t7, 1
/* B19220 800A2080 8FB80064 */  lw    $t8, 0x64($sp)
/* B19224 800A2084 000DC880 */  sll   $t9, $t5, 2
/* B19228 800A2088 00024900 */  sll   $t1, $v0, 4
/* B1922C 800A208C 00095702 */  srl   $t2, $t1, 0x1c
/* B19230 800A2090 032DC823 */  subu  $t9, $t9, $t5
/* B19234 800A2094 000A5880 */  sll   $t3, $t2, 2
/* B19238 800A2098 0019C840 */  sll   $t9, $t9, 1
/* B1923C 800A209C 018B6021 */  addu  $t4, $t4, $t3
/* B19240 800A20A0 AFAD005C */  sw    $t5, 0x5c($sp)
/* B19244 800A20A4 03194821 */  addu  $t1, $t8, $t9
/* B19248 800A20A8 892B0000 */  lwl   $t3, ($t1)
/* B1924C 800A20AC 992B0003 */  lwr   $t3, 3($t1)
/* B19250 800A20B0 8D8C6FA8 */  lw    $t4, %lo(gSegments)($t4)
/* B19254 800A20B4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19258 800A20B8 27AE003C */  addiu $t6, $sp, 0x3c
/* B1925C 800A20BC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19260 800A20C0 ADCB0000 */  sw    $t3, ($t6)
/* B19264 800A20C4 952B0004 */  lhu   $t3, 4($t1)
/* B19268 800A20C8 00414024 */  and   $t0, $v0, $at
/* B1926C 800A20CC 3C018000 */  lui   $at, 0x8000
/* B19270 800A20D0 010C8021 */  addu  $s0, $t0, $t4
/* B19274 800A20D4 02018021 */  addu  $s0, $s0, $at
/* B19278 800A20D8 A5CB0004 */  sh    $t3, 4($t6)
/* B1927C 800A20DC 86080000 */  lh    $t0, ($s0)
/* B19280 800A20E0 8FB80068 */  lw    $t8, 0x68($sp)
/* B19284 800A20E4 8FA5005C */  lw    $a1, 0x5c($sp)
/* B19288 800A20E8 44882000 */  mtc1  $t0, $f4
/* B1928C 800A20EC 8FA40058 */  lw    $a0, 0x58($sp)
/* B19290 800A20F0 27A90074 */  addiu $t1, $sp, 0x74
/* B19294 800A20F4 468021A0 */  cvt.s.w $f6, $f4
/* B19298 800A20F8 27B9003C */  addiu $t9, $sp, 0x3c
/* B1929C 800A20FC 27A60050 */  addiu $a2, $sp, 0x50
/* B192A0 800A2100 27A70044 */  addiu $a3, $sp, 0x44
/* B192A4 800A2104 E7A60044 */  swc1  $f6, 0x44($sp)
/* B192A8 800A2108 860C0002 */  lh    $t4, 2($s0)
/* B192AC 800A210C 448C4000 */  mtc1  $t4, $f8
/* B192B0 800A2110 00000000 */  nop   
/* B192B4 800A2114 468042A0 */  cvt.s.w $f10, $f8
/* B192B8 800A2118 E7AA0048 */  swc1  $f10, 0x48($sp)
/* B192BC 800A211C 860F0004 */  lh    $t7, 4($s0)
/* B192C0 800A2120 448F8000 */  mtc1  $t7, $f16
/* B192C4 800A2124 00000000 */  nop   
/* B192C8 800A2128 468084A0 */  cvt.s.w $f18, $f16
/* B192CC 800A212C E7B2004C */  swc1  $f18, 0x4c($sp)
/* B192D0 800A2130 8E0D0008 */  lw    $t5, 8($s0)
/* B192D4 800A2134 13000007 */  beqz  $t8, .L800A2154
/* B192D8 800A2138 AFAD0050 */   sw    $t5, 0x50($sp)
/* B192DC 800A213C 8FAE0070 */  lw    $t6, 0x70($sp)
/* B192E0 800A2140 AFB90010 */  sw    $t9, 0x10($sp)
/* B192E4 800A2144 AFA90018 */  sw    $t1, 0x18($sp)
/* B192E8 800A2148 0300F809 */  jalr  $t8
/* B192EC 800A214C AFAE0014 */  sw    $t6, 0x14($sp)
/* B192F0 800A2150 1440001B */  bnez  $v0, .L800A21C0
.L800A2154:
/* B192F4 800A2154 27A40044 */   addiu $a0, $sp, 0x44
/* B192F8 800A2158 0C0344D0 */  jal   func_800D1340
/* B192FC 800A215C 27A5003C */   addiu $a1, $sp, 0x3c
/* B19300 800A2160 8FAA0050 */  lw    $t2, 0x50($sp)
/* B19304 800A2164 8FAB0074 */  lw    $t3, 0x74($sp)
/* B19308 800A2168 3C0CDA38 */  lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* B1930C 800A216C 11400014 */  beqz  $t2, .L800A21C0
/* B19310 800A2170 25680008 */   addiu $t0, $t3, 8
/* B19314 800A2174 AFA80074 */  sw    $t0, 0x74($sp)
/* B19318 800A2178 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* B1931C 800A217C AD6C0000 */  sw    $t4, ($t3)
/* B19320 800A2180 8FAF0058 */  lw    $t7, 0x58($sp)
/* B19324 800A2184 3C058014 */  lui   $a1, %hi(D_801402C4) # $a1, 0x8014
/* B19328 800A2188 24A502C4 */  addiu $a1, %lo(D_801402C4) # addiu $a1, $a1, 0x2c4
/* B1932C 800A218C 8DE40000 */  lw    $a0, ($t7)
/* B19330 800A2190 AFAB0038 */  sw    $t3, 0x38($sp)
/* B19334 800A2194 0C0346A2 */  jal   Matrix_NewMtx
/* B19338 800A2198 240605D1 */   li    $a2, 1489
/* B1933C 800A219C 8FA30038 */  lw    $v1, 0x38($sp)
/* B19340 800A21A0 3C0EDE00 */  lui   $t6, 0xde00
/* B19344 800A21A4 AC620004 */  sw    $v0, 4($v1)
/* B19348 800A21A8 8FAD0074 */  lw    $t5, 0x74($sp)
/* B1934C 800A21AC 25B90008 */  addiu $t9, $t5, 8
/* B19350 800A21B0 AFB90074 */  sw    $t9, 0x74($sp)
/* B19354 800A21B4 ADAE0000 */  sw    $t6, ($t5)
/* B19358 800A21B8 8FA90050 */  lw    $t1, 0x50($sp)
/* B1935C 800A21BC ADA90004 */  sw    $t1, 4($t5)
.L800A21C0:
/* B19360 800A21C0 8FB8006C */  lw    $t8, 0x6c($sp)
/* B19364 800A21C4 8FA40058 */  lw    $a0, 0x58($sp)
/* B19368 800A21C8 8FA5005C */  lw    $a1, 0x5c($sp)
/* B1936C 800A21CC 13000007 */  beqz  $t8, .L800A21EC
/* B19370 800A21D0 27A60050 */   addiu $a2, $sp, 0x50
/* B19374 800A21D4 8FAA0070 */  lw    $t2, 0x70($sp)
/* B19378 800A21D8 27AB0074 */  addiu $t3, $sp, 0x74
/* B1937C 800A21DC AFAB0014 */  sw    $t3, 0x14($sp)
/* B19380 800A21E0 27A7003C */  addiu $a3, $sp, 0x3c
/* B19384 800A21E4 0300F809 */  jalr  $t8
/* B19388 800A21E8 AFAA0010 */  sw    $t2, 0x10($sp)
.L800A21EC:
/* B1938C 800A21EC 92050006 */  lbu   $a1, 6($s0)
/* B19390 800A21F0 240100FF */  li    $at, 255
/* B19394 800A21F4 8FA40058 */  lw    $a0, 0x58($sp)
/* B19398 800A21F8 10A1000C */  beq   $a1, $at, .L800A222C
/* B1939C 800A21FC 8FA60060 */   lw    $a2, 0x60($sp)
/* B193A0 800A2200 8FA80068 */  lw    $t0, 0x68($sp)
/* B193A4 800A2204 8FAC006C */  lw    $t4, 0x6c($sp)
/* B193A8 800A2208 8FAF0070 */  lw    $t7, 0x70($sp)
/* B193AC 800A220C 8FAD0074 */  lw    $t5, 0x74($sp)
/* B193B0 800A2210 8FA70064 */  lw    $a3, 0x64($sp)
/* B193B4 800A2214 AFA80010 */  sw    $t0, 0x10($sp)
/* B193B8 800A2218 AFAC0014 */  sw    $t4, 0x14($sp)
/* B193BC 800A221C AFAF0018 */  sw    $t7, 0x18($sp)
/* B193C0 800A2220 0C028811 */  jal   func_800A2044
/* B193C4 800A2224 AFAD001C */   sw    $t5, 0x1c($sp)
/* B193C8 800A2228 AFA20074 */  sw    $v0, 0x74($sp)
.L800A222C:
/* B193CC 800A222C 0C034221 */  jal   Matrix_Pull
/* B193D0 800A2230 00000000 */   nop   
/* B193D4 800A2234 92050007 */  lbu   $a1, 7($s0)
/* B193D8 800A2238 240100FF */  li    $at, 255
/* B193DC 800A223C 8FA40058 */  lw    $a0, 0x58($sp)
/* B193E0 800A2240 10A1000C */  beq   $a1, $at, .L800A2274
/* B193E4 800A2244 8FA60060 */   lw    $a2, 0x60($sp)
/* B193E8 800A2248 8FB90068 */  lw    $t9, 0x68($sp)
/* B193EC 800A224C 8FAE006C */  lw    $t6, 0x6c($sp)
/* B193F0 800A2250 8FA90070 */  lw    $t1, 0x70($sp)
/* B193F4 800A2254 8FAA0074 */  lw    $t2, 0x74($sp)
/* B193F8 800A2258 8FA70064 */  lw    $a3, 0x64($sp)
/* B193FC 800A225C AFB90010 */  sw    $t9, 0x10($sp)
/* B19400 800A2260 AFAE0014 */  sw    $t6, 0x14($sp)
/* B19404 800A2264 AFA90018 */  sw    $t1, 0x18($sp)
/* B19408 800A2268 0C028811 */  jal   func_800A2044
/* B1940C 800A226C AFAA001C */   sw    $t2, 0x1c($sp)
/* B19410 800A2270 AFA20074 */  sw    $v0, 0x74($sp)
.L800A2274:
/* B19414 800A2274 8FBF002C */  lw    $ra, 0x2c($sp)
/* B19418 800A2278 8FA20074 */  lw    $v0, 0x74($sp)
/* B1941C 800A227C 8FB00028 */  lw    $s0, 0x28($sp)
/* B19420 800A2280 03E00008 */  jr    $ra
/* B19424 800A2284 27BD0058 */   addiu $sp, $sp, 0x58

