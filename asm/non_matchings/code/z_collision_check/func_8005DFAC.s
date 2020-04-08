glabel func_8005DFAC
/* AD514C 8005DFAC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD5150 8005DFB0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD5154 8005DFB4 AFA5002C */  sw    $a1, 0x2c($sp)
/* AD5158 8005DFB8 AFA60030 */  sw    $a2, 0x30($sp)
/* AD515C 8005DFBC C4C40000 */  lwc1  $f4, ($a2)
/* AD5160 8005DFC0 3C018016 */  lui   $at, %hi(D_8015D8A4) # $at, 0x8016
/* AD5164 8005DFC4 24190005 */  li    $t9, 5
/* AD5168 8005DFC8 4600218D */  trunc.w.s $f6, $f4
/* AD516C 8005DFCC 3C028016 */  lui   $v0, %hi(D_8015D8A0) # $v0, 0x8016
/* AD5170 8005DFD0 2442D8A0 */  addiu $v0, %lo(D_8015D8A0) # addiu $v0, $v0, -0x2760
/* AD5174 8005DFD4 240300FF */  li    $v1, 255
/* AD5178 8005DFD8 44183000 */  mfc1  $t8, $f6
/* AD517C 8005DFDC 24080080 */  li    $t0, 128
/* AD5180 8005DFE0 2409000A */  li    $t1, 10
/* AD5184 8005DFE4 A438D8A0 */  sh    $t8, %lo(D_8015D8A0)($at)
/* AD5188 8005DFE8 C4C80004 */  lwc1  $f8, 4($a2)
/* AD518C 8005DFEC 24180005 */  li    $t8, 5
/* AD5190 8005DFF0 240A0020 */  li    $t2, 32
/* AD5194 8005DFF4 4600428D */  trunc.w.s $f10, $f8
/* AD5198 8005DFF8 240B0040 */  li    $t3, 64
/* AD519C 8005DFFC 240E0010 */  li    $t6, 16
/* AD51A0 8005E000 240D0001 */  li    $t5, 1
/* AD51A4 8005E004 440C5000 */  mfc1  $t4, $f10
/* AD51A8 8005E008 27A50024 */  addiu $a1, $sp, 0x24
/* AD51AC 8005E00C 00003825 */  move  $a3, $zero
/* AD51B0 8005E010 A42CD8A2 */  sh    $t4, %lo(D_8015D8A2)($at)
/* AD51B4 8005E014 C4D00008 */  lwc1  $f16, 8($a2)
/* AD51B8 8005E018 240C00C8 */  li    $t4, 200
/* AD51BC 8005E01C AFA20014 */  sw    $v0, 0x14($sp)
/* AD51C0 8005E020 4600848D */  trunc.w.s $f18, $f16
/* AD51C4 8005E024 AFAD0010 */  sw    $t5, 0x10($sp)
/* AD51C8 8005E028 00003025 */  move  $a2, $zero
/* AD51CC 8005E02C 440F9000 */  mfc1  $t7, $f18
/* AD51D0 8005E030 00000000 */  nop   
/* AD51D4 8005E034 A42FD8A4 */  sh    $t7, %lo(D_8015D8A4)($at)
/* AD51D8 8005E038 3C018016 */  lui   $at, %hi(D_8015DD34) # $at, 0x8016
/* AD51DC 8005E03C AC38DD34 */  sw    $t8, %lo(D_8015DD34)($at)
/* AD51E0 8005E040 3C018016 */  lui   $at, %hi(D_8015DD38) # $at, 0x8016
/* AD51E4 8005E044 AC39DD38 */  sw    $t9, %lo(D_8015DD38)($at)
/* AD51E8 8005E048 A049049C */  sb    $t1, 0x49c($v0)
/* AD51EC 8005E04C A049049D */  sb    $t1, 0x49d($v0)
/* AD51F0 8005E050 A04C049E */  sb    $t4, 0x49e($v0)
/* AD51F4 8005E054 A043049F */  sb    $v1, 0x49f($v0)
/* AD51F8 8005E058 A04004A0 */  sb    $zero, 0x4a0($v0)
/* AD51FC 8005E05C A04004A1 */  sb    $zero, 0x4a1($v0)
/* AD5200 8005E060 A04804A2 */  sb    $t0, 0x4a2($v0)
/* AD5204 8005E064 A04304A3 */  sb    $v1, 0x4a3($v0)
/* AD5208 8005E068 A04004A4 */  sb    $zero, 0x4a4($v0)
/* AD520C 8005E06C A04004A5 */  sb    $zero, 0x4a5($v0)
/* AD5210 8005E070 A04804A6 */  sb    $t0, 0x4a6($v0)
/* AD5214 8005E074 A04304A7 */  sb    $v1, 0x4a7($v0)
/* AD5218 8005E078 A04004A8 */  sb    $zero, 0x4a8($v0)
/* AD521C 8005E07C A04004A9 */  sb    $zero, 0x4a9($v0)
/* AD5220 8005E080 A04804AA */  sb    $t0, 0x4aa($v0)
/* AD5224 8005E084 A04304AB */  sb    $v1, 0x4ab($v0)
/* AD5228 8005E088 A04004AC */  sb    $zero, 0x4ac($v0)
/* AD522C 8005E08C A04004AD */  sb    $zero, 0x4ad($v0)
/* AD5230 8005E090 A04A04AE */  sb    $t2, 0x4ae($v0)
/* AD5234 8005E094 A04004AF */  sb    $zero, 0x4af($v0)
/* AD5238 8005E098 A04004B0 */  sb    $zero, 0x4b0($v0)
/* AD523C 8005E09C A04004B1 */  sb    $zero, 0x4b1($v0)
/* AD5240 8005E0A0 A04A04B2 */  sb    $t2, 0x4b2($v0)
/* AD5244 8005E0A4 A04004B3 */  sb    $zero, 0x4b3($v0)
/* AD5248 8005E0A8 A04004B4 */  sb    $zero, 0x4b4($v0)
/* AD524C 8005E0AC A04004B5 */  sb    $zero, 0x4b5($v0)
/* AD5250 8005E0B0 A04B04B6 */  sb    $t3, 0x4b6($v0)
/* AD5254 8005E0B4 A04004B7 */  sb    $zero, 0x4b7($v0)
/* AD5258 8005E0B8 A04004B8 */  sb    $zero, 0x4b8($v0)
/* AD525C 8005E0BC A04004B9 */  sb    $zero, 0x4b9($v0)
/* AD5260 8005E0C0 A04B04BA */  sb    $t3, 0x4ba($v0)
/* AD5264 8005E0C4 A04004BB */  sb    $zero, 0x4bb($v0)
/* AD5268 8005E0C8 3C018016 */  lui   $at, %hi(D_8015DD5C) # $at, 0x8016
/* AD526C 8005E0CC AC20DD5C */  sw    $zero, %lo(D_8015DD5C)($at)
/* AD5270 8005E0D0 3C018016 */  lui   $at, %hi(D_8015DD60) # $at, 0x8016
/* AD5274 8005E0D4 AC2EDD60 */  sw    $t6, %lo(D_8015DD60)($at)
/* AD5278 8005E0D8 3C014100 */  li    $at, 0x41000000 # 0.000000
/* AD527C 8005E0DC 44812000 */  mtc1  $at, $f4
/* AD5280 8005E0E0 3C018016 */  lui   $at, %hi(D_8015DD2C)
/* AD5284 8005E0E4 E424DD2C */  swc1  $f4, %lo(D_8015DD2C)($at)
/* AD5288 8005E0E8 3C01BF80 */  li    $at, 0xBF800000 # 0.000000
/* AD528C 8005E0EC 44813000 */  mtc1  $at, $f6
/* AD5290 8005E0F0 3C018016 */  lui   $at, %hi(D_8015DD30)
/* AD5294 8005E0F4 0C009B35 */  jal   Effect_Add
/* AD5298 8005E0F8 E426DD30 */   swc1  $f6, %lo(D_8015DD30)($at)
/* AD529C 8005E0FC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD52A0 8005E100 27BD0028 */  addiu $sp, $sp, 0x28
/* AD52A4 8005E104 03E00008 */  jr    $ra
/* AD52A8 8005E108 00000000 */   nop   
