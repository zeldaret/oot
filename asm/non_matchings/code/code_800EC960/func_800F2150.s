glabel func_800F2150
/* B692F0 800F2150 3C028017 */  lui   $v0, %hi(D_8016BAB8) # $v0, 0x8017
/* B692F4 800F2154 8C42BAB8 */  lw    $v0, %lo(D_8016BAB8)($v0)
/* B692F8 800F2158 3C038013 */  lui   $v1, %hi(D_80131EC0) # $v1, 0x8013
/* B692FC 800F215C 24631EC0 */  addiu $v1, %lo(D_80131EC0) # addiu $v1, $v1, 0x1ec0
/* B69300 800F2160 304E0008 */  andi  $t6, $v0, 8
/* B69304 800F2164 11C00004 */  beqz  $t6, .L800F2178
/* B69308 800F2168 30590004 */   andi  $t9, $v0, 4
/* B6930C 800F216C 806F0000 */  lb    $t7, ($v1)
/* B69310 800F2170 25F8FFFF */  addiu $t8, $t7, -1
/* B69314 800F2174 A0780000 */  sb    $t8, ($v1)
.L800F2178:
/* B69318 800F2178 3C038013 */  lui   $v1, %hi(D_80131EC0) # $v1, 0x8013
/* B6931C 800F217C 13200004 */  beqz  $t9, .L800F2190
/* B69320 800F2180 24631EC0 */   addiu $v1, %lo(D_80131EC0) # addiu $v1, $v1, 0x1ec0
/* B69324 800F2184 80680000 */  lb    $t0, ($v1)
/* B69328 800F2188 25090001 */  addiu $t1, $t0, 1
/* B6932C 800F218C A0690000 */  sb    $t1, ($v1)
.L800F2190:
/* B69330 800F2190 304A0002 */  andi  $t2, $v0, 2
/* B69334 800F2194 11400006 */  beqz  $t2, .L800F21B0
/* B69338 800F2198 304D0001 */   andi  $t5, $v0, 1
/* B6933C 800F219C 3C048013 */  lui   $a0, %hi(D_80131EBC) # $a0, 0x8013
/* B69340 800F21A0 24841EBC */  addiu $a0, %lo(D_80131EBC) # addiu $a0, $a0, 0x1ebc
/* B69344 800F21A4 808B0000 */  lb    $t3, ($a0)
/* B69348 800F21A8 256CFFFF */  addiu $t4, $t3, -1
/* B6934C 800F21AC A08C0000 */  sb    $t4, ($a0)
.L800F21B0:
/* B69350 800F21B0 3C048013 */  lui   $a0, %hi(D_80131EBC) # $a0, 0x8013
/* B69354 800F21B4 11A00004 */  beqz  $t5, .L800F21C8
/* B69358 800F21B8 24841EBC */   addiu $a0, %lo(D_80131EBC) # addiu $a0, $a0, 0x1ebc
/* B6935C 800F21BC 808E0000 */  lb    $t6, ($a0)
/* B69360 800F21C0 25CF0001 */  addiu $t7, $t6, 1
/* B69364 800F21C4 A08F0000 */  sb    $t7, ($a0)
.L800F21C8:
/* B69368 800F21C8 30584000 */  andi  $t8, $v0, 0x4000
/* B6936C 800F21CC 13000003 */  beqz  $t8, .L800F21DC
/* B69370 800F21D0 30590800 */   andi  $t9, $v0, 0x800
/* B69374 800F21D4 A0800000 */  sb    $zero, ($a0)
/* B69378 800F21D8 A0600000 */  sb    $zero, ($v1)
.L800F21DC:
/* B6937C 800F21DC 13200007 */  beqz  $t9, .L800F21FC
/* B69380 800F21E0 30490400 */   andi  $t1, $v0, 0x400
/* B69384 800F21E4 3C058013 */  lui   $a1, %hi(D_80131EC4) # $a1, 0x8013
/* B69388 800F21E8 24A51EC4 */  addiu $a1, %lo(D_80131EC4) # addiu $a1, $a1, 0x1ec4
/* B6938C 800F21EC 80A30000 */  lb    $v1, ($a1)
/* B69390 800F21F0 18600002 */  blez  $v1, .L800F21FC
/* B69394 800F21F4 2468FFFF */   addiu $t0, $v1, -1
/* B69398 800F21F8 A0A80000 */  sb    $t0, ($a1)
.L800F21FC:
/* B6939C 800F21FC 3C058013 */  lui   $a1, %hi(D_80131EC4) # $a1, 0x8013
/* B693A0 800F2200 11200006 */  beqz  $t1, .L800F221C
/* B693A4 800F2204 24A51EC4 */   addiu $a1, %lo(D_80131EC4) # addiu $a1, $a1, 0x1ec4
/* B693A8 800F2208 80A30000 */  lb    $v1, ($a1)
/* B693AC 800F220C 28610006 */  slti  $at, $v1, 6
/* B693B0 800F2210 10200002 */  beqz  $at, .L800F221C
/* B693B4 800F2214 246A0001 */   addiu $t2, $v1, 1
/* B693B8 800F2218 A0AA0000 */  sb    $t2, ($a1)
.L800F221C:
/* B693BC 800F221C 304B0200 */  andi  $t3, $v0, 0x200
/* B693C0 800F2220 11600009 */  beqz  $t3, .L800F2248
/* B693C4 800F2224 304F0100 */   andi  $t7, $v0, 0x100
/* B693C8 800F2228 80AC0000 */  lb    $t4, ($a1)
/* B693CC 800F222C 3C0D8013 */  lui   $t5, %hi(D_80131EC8) # $t5, 0x8013
/* B693D0 800F2230 25AD1EC8 */  addiu $t5, %lo(D_80131EC8) # addiu $t5, $t5, 0x1ec8
/* B693D4 800F2234 018D1821 */  addu  $v1, $t4, $t5
/* B693D8 800F2238 80640000 */  lb    $a0, ($v1)
/* B693DC 800F223C 18800002 */  blez  $a0, .L800F2248
/* B693E0 800F2240 248EFFFF */   addiu $t6, $a0, -1
/* B693E4 800F2244 A06E0000 */  sb    $t6, ($v1)
.L800F2248:
/* B693E8 800F2248 11E0000A */  beqz  $t7, .L800F2274
/* B693EC 800F224C 00000000 */   nop   
/* B693F0 800F2250 80B80000 */  lb    $t8, ($a1)
/* B693F4 800F2254 3C198013 */  lui   $t9, %hi(D_80131EC8) # $t9, 0x8013
/* B693F8 800F2258 27391EC8 */  addiu $t9, %lo(D_80131EC8) # addiu $t9, $t9, 0x1ec8
/* B693FC 800F225C 03191821 */  addu  $v1, $t8, $t9
/* B69400 800F2260 80640000 */  lb    $a0, ($v1)
/* B69404 800F2264 28810004 */  slti  $at, $a0, 4
/* B69408 800F2268 10200002 */  beqz  $at, .L800F2274
/* B6940C 800F226C 24880001 */   addiu $t0, $a0, 1
/* B69410 800F2270 A0680000 */  sb    $t0, ($v1)
.L800F2274:
/* B69414 800F2274 03E00008 */  jr    $ra
/* B69418 800F2278 00000000 */   nop   

