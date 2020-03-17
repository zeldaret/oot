.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800FC0C0
/* B73260 800FC0C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B73264 800FC0C4 AFA40018 */  sw    $a0, 0x18($sp)
/* B73268 800FC0C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B7326C 800FC0CC AFA5001C */  sw    $a1, 0x1c($sp)
/* B73270 800FC0D0 3C048015 */  lui   $a0, %hi(D_8014A8B0) # $a0, 0x8015
/* B73274 800FC0D4 3C068015 */  lui   $a2, %hi(D_8014A8B4) # $a2, 0x8015
/* B73278 800FC0D8 24C6A8B4 */  addiu $a2, %lo(D_8014A8B4) # addiu $a2, $a2, -0x574c
/* B7327C 800FC0DC 2484A8B0 */  addiu $a0, %lo(D_8014A8B0) # addiu $a0, $a0, -0x5750
/* B73280 800FC0E0 8FA50018 */  lw    $a1, 0x18($sp)
/* B73284 800FC0E4 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B73288 800FC0E8 2407001F */   li    $a3, 31
/* B7328C 800FC0EC 3C048015 */  lui   $a0, %hi(D_8014A8C4) # $a0, 0x8015
/* B73290 800FC0F0 3C068015 */  lui   $a2, %hi(D_8014A8C8) # $a2, 0x8015
/* B73294 800FC0F4 24C6A8C8 */  addiu $a2, %lo(D_8014A8C8) # addiu $a2, $a2, -0x5738
/* B73298 800FC0F8 2484A8C4 */  addiu $a0, %lo(D_8014A8C4) # addiu $a0, $a0, -0x573c
/* B7329C 800FC0FC 8FA5001C */  lw    $a1, 0x1c($sp)
/* B732A0 800FC100 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B732A4 800FC104 24070020 */   li    $a3, 32
/* B732A8 800FC108 3C014780 */  li    $at, 0x47800000 # 0.000000
/* B732AC 800FC10C 44810000 */  mtc1  $at, $f0
/* B732B0 800FC110 00002825 */  move  $a1, $zero
/* B732B4 800FC114 8FA4001C */  lw    $a0, 0x1c($sp)
/* B732B8 800FC118 8FA30018 */  lw    $v1, 0x18($sp)
/* B732BC 800FC11C 24060004 */  li    $a2, 4
/* B732C0 800FC120 C4900000 */  lwc1  $f16, ($a0)
/* B732C4 800FC124 24A50001 */  addiu $a1, $a1, 1
/* B732C8 800FC128 46008482 */  mul.s $f18, $f16, $f0
/* B732CC 800FC12C 50A60027 */  beql  $a1, $a2, .L800FC1CC
/* B732D0 800FC130 4600940D */   trunc.w.s $f16, $f18
/* B732D4 800FC134 4600940D */  trunc.w.s $f16, $f18
.L800FC138:
/* B732D8 800FC138 24840010 */  addiu $a0, $a0, 0x10
/* B732DC 800FC13C 24A50001 */  addiu $a1, $a1, 1
/* B732E0 800FC140 24630008 */  addiu $v1, $v1, 8
/* B732E4 800FC144 44028000 */  mfc1  $v0, $f16
/* B732E8 800FC148 00000000 */  nop   
/* B732EC 800FC14C 00027C03 */  sra   $t7, $v0, 0x10
/* B732F0 800FC150 A46FFFF8 */  sh    $t7, -8($v1)
/* B732F4 800FC154 A4620018 */  sh    $v0, 0x18($v1)
/* B732F8 800FC158 C490FFF4 */  lwc1  $f16, -0xc($a0)
/* B732FC 800FC15C 46008402 */  mul.s $f16, $f16, $f0
/* B73300 800FC160 4600840D */  trunc.w.s $f16, $f16
/* B73304 800FC164 44028000 */  mfc1  $v0, $f16
/* B73308 800FC168 00000000 */  nop   
/* B7330C 800FC16C 0002CC03 */  sra   $t9, $v0, 0x10
/* B73310 800FC170 A479FFFA */  sh    $t9, -6($v1)
/* B73314 800FC174 A462001A */  sh    $v0, 0x1a($v1)
/* B73318 800FC178 C490FFF8 */  lwc1  $f16, -8($a0)
/* B7331C 800FC17C 46008402 */  mul.s $f16, $f16, $f0
/* B73320 800FC180 4600840D */  trunc.w.s $f16, $f16
/* B73324 800FC184 44028000 */  mfc1  $v0, $f16
/* B73328 800FC188 00000000 */  nop   
/* B7332C 800FC18C 00024C03 */  sra   $t1, $v0, 0x10
/* B73330 800FC190 A469FFFC */  sh    $t1, -4($v1)
/* B73334 800FC194 A462001C */  sh    $v0, 0x1c($v1)
/* B73338 800FC198 C490FFFC */  lwc1  $f16, -4($a0)
/* B7333C 800FC19C 46008402 */  mul.s $f16, $f16, $f0
/* B73340 800FC1A0 4600840D */  trunc.w.s $f16, $f16
/* B73344 800FC1A4 44028000 */  mfc1  $v0, $f16
/* B73348 800FC1A8 00000000 */  nop   
/* B7334C 800FC1AC 00025C03 */  sra   $t3, $v0, 0x10
/* B73350 800FC1B0 A46BFFFE */  sh    $t3, -2($v1)
/* B73354 800FC1B4 A462001E */  sh    $v0, 0x1e($v1)
/* B73358 800FC1B8 C4900000 */  lwc1  $f16, ($a0)
/* B7335C 800FC1BC 46008482 */  mul.s $f18, $f16, $f0
/* B73360 800FC1C0 54A6FFDD */  bnel  $a1, $a2, .L800FC138
/* B73364 800FC1C4 4600940D */   trunc.w.s $f16, $f18
/* B73368 800FC1C8 4600940D */  trunc.w.s $f16, $f18
.L800FC1CC:
/* B7336C 800FC1CC 24840010 */  addiu $a0, $a0, 0x10
/* B73370 800FC1D0 24630008 */  addiu $v1, $v1, 8
/* B73374 800FC1D4 44028000 */  mfc1  $v0, $f16
/* B73378 800FC1D8 00000000 */  nop   
/* B7337C 800FC1DC 00027C03 */  sra   $t7, $v0, 0x10
/* B73380 800FC1E0 A46FFFF8 */  sh    $t7, -8($v1)
/* B73384 800FC1E4 A4620018 */  sh    $v0, 0x18($v1)
/* B73388 800FC1E8 C490FFF4 */  lwc1  $f16, -0xc($a0)
/* B7338C 800FC1EC 46008402 */  mul.s $f16, $f16, $f0
/* B73390 800FC1F0 4600840D */  trunc.w.s $f16, $f16
/* B73394 800FC1F4 44028000 */  mfc1  $v0, $f16
/* B73398 800FC1F8 00000000 */  nop   
/* B7339C 800FC1FC 0002CC03 */  sra   $t9, $v0, 0x10
/* B733A0 800FC200 A479FFFA */  sh    $t9, -6($v1)
/* B733A4 800FC204 A462001A */  sh    $v0, 0x1a($v1)
/* B733A8 800FC208 C490FFF8 */  lwc1  $f16, -8($a0)
/* B733AC 800FC20C 46008402 */  mul.s $f16, $f16, $f0
/* B733B0 800FC210 4600840D */  trunc.w.s $f16, $f16
/* B733B4 800FC214 44028000 */  mfc1  $v0, $f16
/* B733B8 800FC218 00000000 */  nop   
/* B733BC 800FC21C 00024C03 */  sra   $t1, $v0, 0x10
/* B733C0 800FC220 A469FFFC */  sh    $t1, -4($v1)
/* B733C4 800FC224 A462001C */  sh    $v0, 0x1c($v1)
/* B733C8 800FC228 C490FFFC */  lwc1  $f16, -4($a0)
/* B733CC 800FC22C 46008402 */  mul.s $f16, $f16, $f0
/* B733D0 800FC230 4600840D */  trunc.w.s $f16, $f16
/* B733D4 800FC234 44028000 */  mfc1  $v0, $f16
/* B733D8 800FC238 00000000 */  nop   
/* B733DC 800FC23C 00025C03 */  sra   $t3, $v0, 0x10
/* B733E0 800FC240 A46BFFFE */  sh    $t3, -2($v1)
/* B733E4 800FC244 A462001E */  sh    $v0, 0x1e($v1)
/* B733E8 800FC248 8FBF0014 */  lw    $ra, 0x14($sp)
/* B733EC 800FC24C 27BD0018 */  addiu $sp, $sp, 0x18
/* B733F0 800FC250 03E00008 */  jr    $ra
/* B733F4 800FC254 00000000 */   nop   

glabel func_800FC258
/* B733F8 800FC258 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B733FC 800FC25C AFA40018 */  sw    $a0, 0x18($sp)
/* B73400 800FC260 AFBF0014 */  sw    $ra, 0x14($sp)
/* B73404 800FC264 AFA5001C */  sw    $a1, 0x1c($sp)
/* B73408 800FC268 3C048015 */  lui   $a0, %hi(D_8014A8D8) # $a0, 0x8015
/* B7340C 800FC26C 3C068015 */  lui   $a2, %hi(D_8014A8DC) # $a2, 0x8015
/* B73410 800FC270 24C6A8DC */  addiu $a2, %lo(D_8014A8DC) # addiu $a2, $a2, -0x5724
/* B73414 800FC274 2484A8D8 */  addiu $a0, %lo(D_8014A8D8) # addiu $a0, $a0, -0x5728
/* B73418 800FC278 8FA50018 */  lw    $a1, 0x18($sp)
/* B7341C 800FC27C 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B73420 800FC280 24070037 */   li    $a3, 55
/* B73424 800FC284 3C048015 */  lui   $a0, %hi(D_8014A8EC) # $a0, 0x8015
/* B73428 800FC288 3C068015 */  lui   $a2, %hi(D_8014A8F0) # $a2, 0x8015
/* B7342C 800FC28C 24C6A8F0 */  addiu $a2, %lo(D_8014A8F0) # addiu $a2, $a2, -0x5710
/* B73430 800FC290 2484A8EC */  addiu $a0, %lo(D_8014A8EC) # addiu $a0, $a0, -0x5714
/* B73434 800FC294 8FA5001C */  lw    $a1, 0x1c($sp)
/* B73438 800FC298 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B7343C 800FC29C 24070038 */   li    $a3, 56
/* B73440 800FC2A0 8FA40018 */  lw    $a0, 0x18($sp)
/* B73444 800FC2A4 0C040BE8 */  jal   func_80102FA0
/* B73448 800FC2A8 8FA5001C */   lw    $a1, 0x1c($sp)
/* B7344C 800FC2AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B73450 800FC2B0 27BD0018 */  addiu $sp, $sp, 0x18
/* B73454 800FC2B4 03E00008 */  jr    $ra
/* B73458 800FC2B8 00000000 */   nop   
