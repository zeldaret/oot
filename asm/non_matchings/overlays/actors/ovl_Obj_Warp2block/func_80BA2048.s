.late_rodata
glabel D_80BA2994
    .float 0.01

.text
glabel func_80BA2048
/* 00258 80BA2048 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0025C 80BA204C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00260 80BA2050 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00264 80BA2054 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00268 80BA2058 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 0026C 80BA205C 27B1003C */  addiu   $s1, $sp, 0x003C           ## $s1 = FFFFFFF4
/* 00270 80BA2060 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00274 80BA2064 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00278 80BA2068 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0027C 80BA206C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00280 80BA2070 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFFF4
/* 00284 80BA2074 8E05011C */  lw      $a1, 0x011C($s0)           ## 0000011C
/* 00288 80BA2078 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0028C 80BA207C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00290 80BA2080 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 00294 80BA2084 8E04011C */  lw      $a0, 0x011C($s0)           ## 0000011C
/* 00298 80BA2088 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFF4
/* 0029C 80BA208C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 002A0 80BA2090 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 002A4 80BA2094 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 002A8 80BA2098 86030032 */  lh      $v1, 0x0032($s0)           ## 00000032
/* 002AC 80BA209C 26060050 */  addiu   $a2, $s0, 0x0050           ## $a2 = 00000050
/* 002B0 80BA20A0 844E0032 */  lh      $t6, 0x0032($v0)           ## 00000032
/* 002B4 80BA20A4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000050
/* 002B8 80BA20A8 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFFF4
/* 002BC 80BA20AC A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 002C0 80BA20B0 A4430032 */  sh      $v1, 0x0032($v0)           ## 00000032
/* 002C4 80BA20B4 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 002C8 80BA20B8 860300B6 */  lh      $v1, 0x00B6($s0)           ## 000000B6
/* 002CC 80BA20BC 844F00B6 */  lh      $t7, 0x00B6($v0)           ## 000000B6
/* 002D0 80BA20C0 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 002D4 80BA20C4 A44300B6 */  sh      $v1, 0x00B6($v0)           ## 000000B6
/* 002D8 80BA20C8 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 002DC 80BA20CC 86030018 */  lh      $v1, 0x0018($s0)           ## 00000018
/* 002E0 80BA20D0 84580018 */  lh      $t8, 0x0018($v0)           ## 00000018
/* 002E4 80BA20D4 A6180018 */  sh      $t8, 0x0018($s0)           ## 00000018
/* 002E8 80BA20D8 A4430018 */  sh      $v1, 0x0018($v0)           ## 00000018
/* 002EC 80BA20DC 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 002F0 80BA20E0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 002F4 80BA20E4 8E05011C */  lw      $a1, 0x011C($s0)           ## 0000011C
/* 002F8 80BA20E8 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 002FC 80BA20EC 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00300 80BA20F0 24A50050 */  addiu   $a1, $a1, 0x0050           ## $a1 = 00000050
/* 00304 80BA20F4 8E04011C */  lw      $a0, 0x011C($s0)           ## 0000011C
/* 00308 80BA20F8 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFF4
/* 0030C 80BA20FC 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00310 80BA2100 24840050 */  addiu   $a0, $a0, 0x0050           ## $a0 = 00000050
/* 00314 80BA2104 26060038 */  addiu   $a2, $s0, 0x0038           ## $a2 = 00000038
/* 00318 80BA2108 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000038
/* 0031C 80BA210C AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00320 80BA2110 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00324 80BA2114 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFFF4
/* 00328 80BA2118 8E05011C */  lw      $a1, 0x011C($s0)           ## 0000011C
/* 0032C 80BA211C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00330 80BA2120 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00334 80BA2124 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 00338 80BA2128 8E04011C */  lw      $a0, 0x011C($s0)           ## 0000011C
/* 0033C 80BA212C 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFF4
/* 00340 80BA2130 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00344 80BA2134 24840038 */  addiu   $a0, $a0, 0x0038           ## $a0 = 00000038
/* 00348 80BA2138 26060044 */  addiu   $a2, $s0, 0x0044           ## $a2 = 00000044
/* 0034C 80BA213C 88C90000 */  lwl     $t1, 0x0000($a2)           ## 00000044
/* 00350 80BA2140 98C90003 */  lwr     $t1, 0x0003($a2)           ## 00000047
/* 00354 80BA2144 27A80034 */  addiu   $t0, $sp, 0x0034           ## $t0 = FFFFFFEC
/* 00358 80BA2148 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 0035C 80BA214C AD090000 */  sw      $t1, 0x0000($t0)           ## FFFFFFEC
/* 00360 80BA2150 94C90004 */  lhu     $t1, 0x0004($a2)           ## 00000048
/* 00364 80BA2154 A5090004 */  sh      $t1, 0x0004($t0)           ## FFFFFFF0
/* 00368 80BA2158 8E0A011C */  lw      $t2, 0x011C($s0)           ## 0000011C
/* 0036C 80BA215C 894C0044 */  lwl     $t4, 0x0044($t2)           ## 00000044
/* 00370 80BA2160 994C0047 */  lwr     $t4, 0x0047($t2)           ## 00000047
/* 00374 80BA2164 A8CC0000 */  swl     $t4, 0x0000($a2)           ## 00000044
/* 00378 80BA2168 B8CC0003 */  swr     $t4, 0x0003($a2)           ## 00000047
/* 0037C 80BA216C 954C0048 */  lhu     $t4, 0x0048($t2)           ## 00000048
/* 00380 80BA2170 A4CC0004 */  sh      $t4, 0x0004($a2)           ## 00000048
/* 00384 80BA2174 8E0D011C */  lw      $t5, 0x011C($s0)           ## 0000011C
/* 00388 80BA2178 8D0F0000 */  lw      $t7, 0x0000($t0)           ## FFFFFFEC
/* 0038C 80BA217C A9AF0044 */  swl     $t7, 0x0044($t5)           ## 00000044
/* 00390 80BA2180 B9AF0047 */  swr     $t7, 0x0047($t5)           ## 00000047
/* 00394 80BA2184 950F0004 */  lhu     $t7, 0x0004($t0)           ## FFFFFFF0
/* 00398 80BA2188 A5AF0048 */  sh      $t7, 0x0048($t5)           ## 00000048
/* 0039C 80BA218C 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 003A0 80BA2190 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 003A4 80BA2194 8459001C */  lh      $t9, 0x001C($v0)           ## 0000001C
/* 003A8 80BA2198 30788000 */  andi    $t8, $v1, 0x8000           ## $t8 = 00000000
/* 003AC 80BA219C 306D7FFF */  andi    $t5, $v1, 0x7FFF           ## $t5 = 00000000
/* 003B0 80BA21A0 33297FFF */  andi    $t1, $t9, 0x7FFF           ## $t1 = 00000000
/* 003B4 80BA21A4 03095025 */  or      $t2, $t8, $t1              ## $t2 = 00000000
/* 003B8 80BA21A8 A60A001C */  sh      $t2, 0x001C($s0)           ## 0000001C
/* 003BC 80BA21AC 844B001C */  lh      $t3, 0x001C($v0)           ## 0000001C
/* 003C0 80BA21B0 316C8000 */  andi    $t4, $t3, 0x8000           ## $t4 = 00000000
/* 003C4 80BA21B4 018D7025 */  or      $t6, $t4, $t5              ## $t6 = 00000000
/* 003C8 80BA21B8 A44E001C */  sh      $t6, 0x001C($v0)           ## 0000001C
/* 003CC 80BA21BC 0C032D94 */  jal     func_800CB650              
/* 003D0 80BA21C0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 003D4 80BA21C4 3C0180BA */  lui     $at, %hi(D_80BA2994)       ## $at = 80BA0000
/* 003D8 80BA21C8 C4242994 */  lwc1    $f4, %lo(D_80BA2994)($at)  
/* 003DC 80BA21CC 4604003C */  c.lt.s  $f0, $f4                   
/* 003E0 80BA21D0 00000000 */  nop
/* 003E4 80BA21D4 45020008 */  bc1fl   .L80BA21F8                 
/* 003E8 80BA21D8 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 003EC 80BA21DC 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 003F0 80BA21E0 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 003F4 80BA21E4 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 003F8 80BA21E8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 003FC 80BA21EC 10000006 */  beq     $zero, $zero, .L80BA2208   
/* 00400 80BA21F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00404 80BA21F4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L80BA21F8:
/* 00408 80BA21F8 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 0040C 80BA21FC 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00410 80BA2200 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00414 80BA2204 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80BA2208:
/* 00418 80BA2208 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 0041C 80BA220C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00420 80BA2210 03E00008 */  jr      $ra                        
/* 00424 80BA2214 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
