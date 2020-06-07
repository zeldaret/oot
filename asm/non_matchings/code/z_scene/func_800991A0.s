.rdata
glabel D_8013F5DC
    .asciz "\n[ZU]sceneset age    =[%X]"
    .balign 4

glabel D_8013F5F8
    .asciz "\n[ZU]sceneset time   =[%X]"
    .balign 4

glabel D_8013F614
    .asciz "\n[ZU]sceneset counter=[%X]"
    .balign 4

glabel D_8013F630
    .asciz "\nげぼはっ！ 指定されたデータがないでええっす！"
    .balign 4

glabel D_8013F660
    .asciz "\nそこで、大人の昼データを使用するでええっす！！"
    .balign 4

.text
glabel func_800991A0
/* B10340 800991A0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B10344 800991A4 AFA40020 */  sw    $a0, 0x20($sp)
/* B10348 800991A8 AFA50024 */  sw    $a1, 0x24($sp)
/* B1034C 800991AC AFBF0014 */  sw    $ra, 0x14($sp)
/* B10350 800991B0 3C058016 */  lui   $a1, %hi(gSaveContext+4) # $a1, 0x8016
/* B10354 800991B4 3C048014 */  lui   $a0, %hi(D_8013F5DC) # $a0, 0x8014
/* B10358 800991B8 2484F5DC */  addiu $a0, %lo(D_8013F5DC) # addiu $a0, $a0, -0xa24
/* B1035C 800991BC 0C00084C */  jal   osSyncPrintf
/* B10360 800991C0 8CA5E664 */   lw    $a1, %lo(gSaveContext+4)($a1)
/* B10364 800991C4 3C058016 */  lui   $a1, %hi(gSaveContext+8) # $a1, 0x8016
/* B10368 800991C8 3C048014 */  lui   $a0, %hi(D_8013F5F8) # $a0, 0x8014
/* B1036C 800991CC 2484F5F8 */  addiu $a0, %lo(D_8013F5F8) # addiu $a0, $a0, -0xa08
/* B10370 800991D0 0C00084C */  jal   osSyncPrintf
/* B10374 800991D4 8CA5E668 */   lw    $a1, %lo(gSaveContext+8)($a1)
/* B10378 800991D8 3C058016 */  lui   $a1, %hi(gSaveContext+0x1360) # $a1, 0x8016
/* B1037C 800991DC 3C048014 */  lui   $a0, %hi(D_8013F614) # $a0, 0x8014
/* B10380 800991E0 2484F614 */  addiu $a0, %lo(D_8013F614) # addiu $a0, $a0, -0x9ec
/* B10384 800991E4 0C00084C */  jal   osSyncPrintf
/* B10388 800991E8 8CA5F9C0 */   lw    $a1, %lo(gSaveContext+0x1360)($a1)
/* B1038C 800991EC 3C028016 */  lui   $v0, %hi(gSaveContext+0x1360) # $v0, 0x8016
/* B10390 800991F0 8C42F9C0 */  lw    $v0, %lo(gSaveContext+0x1360)($v0)
/* B10394 800991F4 3C078016 */  lui   $a3, %hi(gSegments) # $a3, 0x8016
/* B10398 800991F8 8FAE0024 */  lw    $t6, 0x24($sp)
/* B1039C 800991FC 50400050 */  beql  $v0, $zero, .L80099340
/* B103A0 80099200 8FBF0014 */   lw    $ra, 0x14($sp)
/* B103A4 80099204 8DC30004 */  lw    $v1, 4($t6)
/* B103A8 80099208 24E76FA8 */  addiu $a3, %lo(gSegments) # addiu $a3, $a3, 0x6fa8
/* B103AC 8009920C 3C0800FF */  lui   $t0, (0x00FFFFFF >> 16) # lui $t0, 0xff
/* B103B0 80099210 00037900 */  sll   $t7, $v1, 4
/* B103B4 80099214 000FC702 */  srl   $t8, $t7, 0x1c
/* B103B8 80099218 0018C880 */  sll   $t9, $t8, 2
/* B103BC 8009921C 00F95021 */  addu  $t2, $a3, $t9
/* B103C0 80099220 8D4B0000 */  lw    $t3, ($t2)
/* B103C4 80099224 3508FFFF */  ori   $t0, (0x00FFFFFF & 0xFFFF) # ori $t0, $t0, 0xffff
/* B103C8 80099228 00686024 */  and   $t4, $v1, $t0
/* B103CC 8009922C 3C098000 */  lui   $t1, 0x8000
/* B103D0 80099230 016C6821 */  addu  $t5, $t3, $t4
/* B103D4 80099234 01A97021 */  addu  $t6, $t5, $t1
/* B103D8 80099238 00027880 */  sll   $t7, $v0, 2
/* B103DC 8009923C 01CFC021 */  addu  $t8, $t6, $t7
/* B103E0 80099240 8F06FFFC */  lw    $a2, -4($t8)
/* B103E4 80099244 3C048014 */  lui   $a0, %hi(D_8013F630)
/* B103E8 80099248 10C0000E */  beqz  $a2, .L80099284
/* B103EC 8009924C 0006C900 */   sll   $t9, $a2, 4
/* B103F0 80099250 00195702 */  srl   $t2, $t9, 0x1c
/* B103F4 80099254 000A5880 */  sll   $t3, $t2, 2
/* B103F8 80099258 00EB6021 */  addu  $t4, $a3, $t3
/* B103FC 8009925C 8D8D0000 */  lw    $t5, ($t4)
/* B10400 80099260 00C87024 */  and   $t6, $a2, $t0
/* B10404 80099264 8FA40020 */  lw    $a0, 0x20($sp)
/* B10408 80099268 01AE7821 */  addu  $t7, $t5, $t6
/* B1040C 8009926C 0C026103 */  jal   Scene_ExecuteCommands
/* B10410 80099270 01E92821 */   addu  $a1, $t7, $t1
/* B10414 80099274 8FB90024 */  lw    $t9, 0x24($sp)
/* B10418 80099278 24180014 */  li    $t8, 20
/* B1041C 8009927C 1000002F */  b     .L8009933C
/* B10420 80099280 A3380008 */   sb    $t8, 8($t9)
.L80099284:
/* B10424 80099284 0C00084C */  jal   osSyncPrintf
/* B10428 80099288 2484F630 */   addiu $a0, $a0, %lo(D_8013F630)
/* B1042C 8009928C 3C028016 */  lui   $v0, %hi(gSaveContext+0x1360) # $v0, 0x8016
/* B10430 80099290 8C42F9C0 */  lw    $v0, %lo(gSaveContext+0x1360)($v0)
/* B10434 80099294 24010003 */  li    $at, 3
/* B10438 80099298 8FAA0024 */  lw    $t2, 0x24($sp)
/* B1043C 8009929C 14410027 */  bne   $v0, $at, .L8009933C
/* B10440 800992A0 3C0E8016 */   lui   $t6, %hi(gSegments)
/* B10444 800992A4 8D430004 */  lw    $v1, 4($t2)
/* B10448 800992A8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1044C 800992AC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B10450 800992B0 00035900 */  sll   $t3, $v1, 4
/* B10454 800992B4 000B6702 */  srl   $t4, $t3, 0x1c
/* B10458 800992B8 000C6880 */  sll   $t5, $t4, 2
/* B1045C 800992BC 01CD7021 */  addu  $t6, $t6, $t5
/* B10460 800992C0 8DCE6FA8 */  lw    $t6, %lo(gSegments)($t6)
/* B10464 800992C4 00617824 */  and   $t7, $v1, $at
/* B10468 800992C8 0002C880 */  sll   $t9, $v0, 2
/* B1046C 800992CC 01CFC021 */  addu  $t8, $t6, $t7
/* B10470 800992D0 03195021 */  addu  $t2, $t8, $t9
/* B10474 800992D4 3C068000 */  lui   $a2, 0x8000
/* B10478 800992D8 00CA3021 */  addu  $a2, $a2, $t2
/* B1047C 800992DC 8CC6FFF8 */  lw    $a2, -8($a2)
/* B10480 800992E0 3C048014 */  lui   $a0, %hi(D_8013F660) # $a0, 0x8014
/* B10484 800992E4 2484F660 */  addiu $a0, %lo(D_8013F660) # addiu $a0, $a0, -0x9a0
/* B10488 800992E8 0C00084C */  jal   osSyncPrintf
/* B1048C 800992EC AFA60018 */   sw    $a2, 0x18($sp)
/* B10490 800992F0 8FA60018 */  lw    $a2, 0x18($sp)
/* B10494 800992F4 8FA40020 */  lw    $a0, 0x20($sp)
/* B10498 800992F8 3C0E8016 */  lui   $t6, %hi(gSegments)
/* B1049C 800992FC 10C0000F */  beqz  $a2, .L8009933C
/* B104A0 80099300 00065900 */   sll   $t3, $a2, 4
/* B104A4 80099304 000B6702 */  srl   $t4, $t3, 0x1c
/* B104A8 80099308 000C6880 */  sll   $t5, $t4, 2
/* B104AC 8009930C 01CD7021 */  addu  $t6, $t6, $t5
/* B104B0 80099310 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B104B4 80099314 8DCE6FA8 */  lw    $t6, %lo(gSegments)($t6)
/* B104B8 80099318 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B104BC 8009931C 00C17824 */  and   $t7, $a2, $at
/* B104C0 80099320 3C018000 */  lui   $at, 0x8000
/* B104C4 80099324 01CF2821 */  addu  $a1, $t6, $t7
/* B104C8 80099328 0C026103 */  jal   Scene_ExecuteCommands
/* B104CC 8009932C 00A12821 */   addu  $a1, $a1, $at
/* B104D0 80099330 8FB90024 */  lw    $t9, 0x24($sp)
/* B104D4 80099334 24180014 */  li    $t8, 20
/* B104D8 80099338 A3380008 */  sb    $t8, 8($t9)
.L8009933C:
/* B104DC 8009933C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80099340:
/* B104E0 80099340 27BD0020 */  addiu $sp, $sp, 0x20
/* B104E4 80099344 03E00008 */  jr    $ra
/* B104E8 80099348 00000000 */   nop   

