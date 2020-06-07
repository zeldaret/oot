glabel func_8005E10C
/* AD52AC 8005E10C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD52B0 8005E110 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD52B4 8005E114 AFA5002C */  sw    $a1, 0x2c($sp)
/* AD52B8 8005E118 AFA60030 */  sw    $a2, 0x30($sp)
/* AD52BC 8005E11C C4C40000 */  lwc1  $f4, ($a2)
/* AD52C0 8005E120 3C018016 */  lui   $at, %hi(D_8015DD6C) # $at, 0x8016
/* AD52C4 8005E124 24190005 */  li    $t9, 5
/* AD52C8 8005E128 4600218D */  trunc.w.s $f6, $f4
/* AD52CC 8005E12C 3C028016 */  lui   $v0, %hi(D_8015DD68) # $v0, 0x8016
/* AD52D0 8005E130 2442DD68 */  addiu $v0, %lo(D_8015DD68) # addiu $v0, $v0, -0x2298
/* AD52D4 8005E134 240300FF */  li    $v1, 255
/* AD52D8 8005E138 44183000 */  mfc1  $t8, $f6
/* AD52DC 8005E13C 24080080 */  li    $t0, 128
/* AD52E0 8005E140 2409000A */  li    $t1, 10
/* AD52E4 8005E144 A438DD68 */  sh    $t8, %lo(D_8015DD68)($at)
/* AD52E8 8005E148 C4C80004 */  lwc1  $f8, 4($a2)
/* AD52EC 8005E14C 24180005 */  li    $t8, 5
/* AD52F0 8005E150 240A0020 */  li    $t2, 32
/* AD52F4 8005E154 4600428D */  trunc.w.s $f10, $f8
/* AD52F8 8005E158 240B0040 */  li    $t3, 64
/* AD52FC 8005E15C 240E0010 */  li    $t6, 16
/* AD5300 8005E160 240D0001 */  li    $t5, 1
/* AD5304 8005E164 440C5000 */  mfc1  $t4, $f10
/* AD5308 8005E168 27A50024 */  addiu $a1, $sp, 0x24
/* AD530C 8005E16C 00003825 */  move  $a3, $zero
/* AD5310 8005E170 A42CDD6A */  sh    $t4, %lo(D_8015DD6A)($at)
/* AD5314 8005E174 C4D00008 */  lwc1  $f16, 8($a2)
/* AD5318 8005E178 240C00C8 */  li    $t4, 200
/* AD531C 8005E17C AFA20014 */  sw    $v0, 0x14($sp)
/* AD5320 8005E180 4600848D */  trunc.w.s $f18, $f16
/* AD5324 8005E184 AFAD0010 */  sw    $t5, 0x10($sp)
/* AD5328 8005E188 00003025 */  move  $a2, $zero
/* AD532C 8005E18C 440F9000 */  mfc1  $t7, $f18
/* AD5330 8005E190 00000000 */  nop   
/* AD5334 8005E194 A42FDD6C */  sh    $t7, %lo(D_8015DD6C)($at)
/* AD5338 8005E198 3C018016 */  lui   $at, %hi(D_8015E1FC) # $at, 0x8016
/* AD533C 8005E19C AC38E1FC */  sw    $t8, %lo(D_8015E1FC)($at)
/* AD5340 8005E1A0 3C018016 */  lui   $at, %hi(D_8015E200) # $at, 0x8016
/* AD5344 8005E1A4 AC39E200 */  sw    $t9, %lo(D_8015E200)($at)
/* AD5348 8005E1A8 A049049C */  sb    $t1, 0x49c($v0)
/* AD534C 8005E1AC A04C049D */  sb    $t4, 0x49d($v0)
/* AD5350 8005E1B0 A049049E */  sb    $t1, 0x49e($v0)
/* AD5354 8005E1B4 A043049F */  sb    $v1, 0x49f($v0)
/* AD5358 8005E1B8 A04004A0 */  sb    $zero, 0x4a0($v0)
/* AD535C 8005E1BC A04804A1 */  sb    $t0, 0x4a1($v0)
/* AD5360 8005E1C0 A04004A2 */  sb    $zero, 0x4a2($v0)
/* AD5364 8005E1C4 A04304A3 */  sb    $v1, 0x4a3($v0)
/* AD5368 8005E1C8 A04004A4 */  sb    $zero, 0x4a4($v0)
/* AD536C 8005E1CC A04804A5 */  sb    $t0, 0x4a5($v0)
/* AD5370 8005E1D0 A04004A6 */  sb    $zero, 0x4a6($v0)
/* AD5374 8005E1D4 A04304A7 */  sb    $v1, 0x4a7($v0)
/* AD5378 8005E1D8 A04004A8 */  sb    $zero, 0x4a8($v0)
/* AD537C 8005E1DC A04804A9 */  sb    $t0, 0x4a9($v0)
/* AD5380 8005E1E0 A04004AA */  sb    $zero, 0x4aa($v0)
/* AD5384 8005E1E4 A04304AB */  sb    $v1, 0x4ab($v0)
/* AD5388 8005E1E8 A04004AC */  sb    $zero, 0x4ac($v0)
/* AD538C 8005E1EC A04A04AD */  sb    $t2, 0x4ad($v0)
/* AD5390 8005E1F0 A04004AE */  sb    $zero, 0x4ae($v0)
/* AD5394 8005E1F4 A04004AF */  sb    $zero, 0x4af($v0)
/* AD5398 8005E1F8 A04004B0 */  sb    $zero, 0x4b0($v0)
/* AD539C 8005E1FC A04A04B1 */  sb    $t2, 0x4b1($v0)
/* AD53A0 8005E200 A04004B2 */  sb    $zero, 0x4b2($v0)
/* AD53A4 8005E204 A04004B3 */  sb    $zero, 0x4b3($v0)
/* AD53A8 8005E208 A04004B4 */  sb    $zero, 0x4b4($v0)
/* AD53AC 8005E20C A04B04B5 */  sb    $t3, 0x4b5($v0)
/* AD53B0 8005E210 A04004B6 */  sb    $zero, 0x4b6($v0)
/* AD53B4 8005E214 A04004B7 */  sb    $zero, 0x4b7($v0)
/* AD53B8 8005E218 A04004B8 */  sb    $zero, 0x4b8($v0)
/* AD53BC 8005E21C A04B04B9 */  sb    $t3, 0x4b9($v0)
/* AD53C0 8005E220 A04004BA */  sb    $zero, 0x4ba($v0)
/* AD53C4 8005E224 A04004BB */  sb    $zero, 0x4bb($v0)
/* AD53C8 8005E228 3C018016 */  lui   $at, %hi(D_8015E224) # $at, 0x8016
/* AD53CC 8005E22C AC20E224 */  sw    $zero, %lo(D_8015E224)($at)
/* AD53D0 8005E230 3C018016 */  lui   $at, %hi(D_8015E228) # $at, 0x8016
/* AD53D4 8005E234 AC2EE228 */  sw    $t6, %lo(D_8015E228)($at)
/* AD53D8 8005E238 3C014100 */  li    $at, 0x41000000 # 0.000000
/* AD53DC 8005E23C 44812000 */  mtc1  $at, $f4
/* AD53E0 8005E240 3C018016 */  lui   $at, %hi(D_8015E1F4)
/* AD53E4 8005E244 E424E1F4 */  swc1  $f4, %lo(D_8015E1F4)($at)
/* AD53E8 8005E248 3C01BF80 */  li    $at, 0xBF800000 # 0.000000
/* AD53EC 8005E24C 44813000 */  mtc1  $at, $f6
/* AD53F0 8005E250 3C018016 */  lui   $at, %hi(D_8015E1F8)
/* AD53F4 8005E254 0C009B35 */  jal   Effect_Add
/* AD53F8 8005E258 E426E1F8 */   swc1  $f6, %lo(D_8015E1F8)($at)
/* AD53FC 8005E25C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD5400 8005E260 27BD0028 */  addiu $sp, $sp, 0x28
/* AD5404 8005E264 03E00008 */  jr    $ra
/* AD5408 8005E268 00000000 */   nop   
