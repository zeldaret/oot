glabel func_800A81A0
/* B1F340 800A81A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1F344 800A81A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1F348 800A81A8 3C048016 */  lui   $a0, %hi(gSaveContext+0x1c) # $a0, 0x8016
/* B1F34C 800A81AC 2484E67C */  addiu $a0, %lo(gSaveContext+0x1c) # addiu $a0, $a0, -0x1984
/* B1F350 800A81B0 0C001114 */  jal   bzero
/* B1F354 800A81B4 24051338 */   li    $a1, 4920
/* B1F358 800A81B8 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B1F35C 800A81BC 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B1F360 800A81C0 3C0F8013 */  lui   $t7, %hi(D_8012A4F8) # $t7, 0x8013
/* B1F364 800A81C4 25EFA4F8 */  addiu $t7, %lo(D_8012A4F8) # addiu $t7, $t7, -0x5b08
/* B1F368 800A81C8 3C0E8016 */  lui   $t6, %hi(gSaveContext+0x1c) # $t6, 0x8016
/* B1F36C 800A81CC AC400014 */  sw    $zero, 0x14($v0)
/* B1F370 800A81D0 AC400018 */  sw    $zero, 0x18($v0)
/* B1F374 800A81D4 25CEE67C */  addiu $t6, %lo(gSaveContext+0x1c) # addiu $t6, $t6, -0x1984
/* B1F378 800A81D8 25E80048 */  addiu $t0, $t7, 0x48
.L800A81DC:
/* B1F37C 800A81DC 8DF90000 */  lw    $t9, ($t7)
/* B1F380 800A81E0 25EF000C */  addiu $t7, $t7, 0xc
/* B1F384 800A81E4 25CE000C */  addiu $t6, $t6, 0xc
/* B1F388 800A81E8 ADD9FFF4 */  sw    $t9, -0xc($t6)
/* B1F38C 800A81EC 8DF8FFF8 */  lw    $t8, -8($t7)
/* B1F390 800A81F0 ADD8FFF8 */  sw    $t8, -8($t6)
/* B1F394 800A81F4 8DF9FFFC */  lw    $t9, -4($t7)
/* B1F398 800A81F8 15E8FFF8 */  bne   $t7, $t0, .L800A81DC
/* B1F39C 800A81FC ADD9FFFC */   sw    $t9, -4($t6)
/* B1F3A0 800A8200 8DF90000 */  lw    $t9, ($t7)
/* B1F3A4 800A8204 3C0A8013 */  lui   $t2, %hi(D_8012A544) # $t2, 0x8013
/* B1F3A8 800A8208 254AA544 */  addiu $t2, %lo(D_8012A544) # addiu $t2, $t2, -0x5abc
/* B1F3AC 800A820C ADD90000 */  sw    $t9, ($t6)
/* B1F3B0 800A8210 8D4C0000 */  lw    $t4, ($t2)
/* B1F3B4 800A8214 3C098016 */  lui   $t1, %hi(gSaveContext+0x68) # $t1, 0x8016
/* B1F3B8 800A8218 2529E6C8 */  addiu $t1, %lo(gSaveContext+0x68) # addiu $t1, $t1, -0x1938
/* B1F3BC 800A821C A92C0000 */  swl   $t4, ($t1)
/* B1F3C0 800A8220 8D4B0004 */  lw    $t3, 4($t2)
/* B1F3C4 800A8224 B92C0003 */  swr   $t4, 3($t1)
/* B1F3C8 800A8228 954C0008 */  lhu   $t4, 8($t2)
/* B1F3CC 800A822C 3C088013 */  lui   $t0, %hi(D_8012A550) # $t0, 0x8013
/* B1F3D0 800A8230 2508A550 */  addiu $t0, %lo(D_8012A550) # addiu $t0, $t0, -0x5ab0
/* B1F3D4 800A8234 3C0D8016 */  lui   $t5, %hi(gSaveContext+0x74) # $t5, 0x8016
/* B1F3D8 800A8238 A92B0004 */  swl   $t3, 4($t1)
/* B1F3DC 800A823C 25ADE6D4 */  addiu $t5, %lo(gSaveContext+0x74) # addiu $t5, $t5, -0x192c
/* B1F3E0 800A8240 25180060 */  addiu $t8, $t0, 0x60
/* B1F3E4 800A8244 B92B0007 */  swr   $t3, 7($t1)
/* B1F3E8 800A8248 A52C0008 */  sh    $t4, 8($t1)
.L800A824C:
/* B1F3EC 800A824C 8D0E0000 */  lw    $t6, ($t0)
/* B1F3F0 800A8250 2508000C */  addiu $t0, $t0, 0xc
/* B1F3F4 800A8254 25AD000C */  addiu $t5, $t5, 0xc
/* B1F3F8 800A8258 ADAEFFF4 */  sw    $t6, -0xc($t5)
/* B1F3FC 800A825C 8D0FFFF8 */  lw    $t7, -8($t0)
/* B1F400 800A8260 ADAFFFF8 */  sw    $t7, -8($t5)
/* B1F404 800A8264 8D0EFFFC */  lw    $t6, -4($t0)
/* B1F408 800A8268 1518FFF8 */  bne   $t0, $t8, .L800A824C
/* B1F40C 800A826C ADAEFFFC */   sw    $t6, -4($t5)
/* B1F410 800A8270 3C198013 */  lui   $t9, %hi(D_8012A5B0) # $t9, 0x8013
/* B1F414 800A8274 9739A5B0 */  lhu   $t9, %lo(D_8012A5B0)($t9)
/* B1F418 800A8278 3C018016 */  lui   $at, %hi(gSaveContext+0x1352) # $at, 0x8016
/* B1F41C 800A827C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1F420 800A8280 A439F9B2 */  sh    $t9, %lo(gSaveContext+0x1352)($at)
/* B1F424 800A8284 24090051 */  li    $t1, 81
/* B1F428 800A8288 240AF8D0 */  li    $t2, -1840
/* B1F42C 800A828C 240B0048 */  li    $t3, 72
/* B1F430 800A8290 240C1579 */  li    $t4, 5497
/* B1F434 800A8294 24189527 */  li    $t8, -27353
/* B1F438 800A8298 24080001 */  li    $t0, 1
/* B1F43C 800A829C 3C0D4000 */  lui   $t5, 0x4000
/* B1F440 800A82A0 A4491348 */  sh    $t1, 0x1348($v0)
/* B1F444 800A82A4 A44A134A */  sh    $t2, 0x134a($v0)
/* B1F448 800A82A8 A44B134C */  sh    $t3, 0x134c($v0)
/* B1F44C 800A82AC A44C134E */  sh    $t4, 0x134e($v0)
/* B1F450 800A82B0 A4581350 */  sh    $t8, 0x1350($v0)
/* B1F454 800A82B4 A0400032 */  sb    $zero, 0x32($v0)
/* B1F458 800A82B8 A4480F32 */  sh    $t0, 0xf32($v0)
/* B1F45C 800A82BC AC4D0164 */  sw    $t5, 0x164($v0)
/* B1F460 800A82C0 03E00008 */  jr    $ra
/* B1F464 800A82C4 27BD0018 */   addiu $sp, $sp, 0x18

