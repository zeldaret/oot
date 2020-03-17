.rdata
glabel D_80139094
    .asciz "camera: res: stat (%d/%d/%d)\n"
    .balign 4
    
glabel D_801390B4
    .asciz "camera: res: PREG(%02d) = %d\n"
    .balign 4

.text
glabel func_80045128
/* ABC2C8 80045128 27BDFFC8 */  addiu $sp, $sp, -0x38
/* ABC2CC 8004512C AFB20020 */  sw    $s2, 0x20($sp)
/* ABC2D0 80045130 3C128016 */  lui   $s2, %hi(gGameInfo) # $s2, 0x8016
/* ABC2D4 80045134 2652FA90 */  addiu $s2, %lo(gGameInfo) # addiu $s2, $s2, -0x570
/* ABC2D8 80045138 8E4E0000 */  lw    $t6, ($s2)
/* ABC2DC 8004513C AFBF0034 */  sw    $ra, 0x34($sp)
/* ABC2E0 80045140 AFB60030 */  sw    $s6, 0x30($sp)
/* ABC2E4 80045144 AFB5002C */  sw    $s5, 0x2c($sp)
/* ABC2E8 80045148 AFB40028 */  sw    $s4, 0x28($sp)
/* ABC2EC 8004514C AFB30024 */  sw    $s3, 0x24($sp)
/* ABC2F0 80045150 AFB1001C */  sw    $s1, 0x1c($sp)
/* ABC2F4 80045154 AFB00018 */  sw    $s0, 0x18($sp)
/* ABC2F8 80045158 AFA5003C */  sw    $a1, 0x3c($sp)
/* ABC2FC 8004515C 85CF02F8 */  lh    $t7, 0x2f8($t6)
/* ABC300 80045160 00058400 */  sll   $s0, $a1, 0x10
/* ABC304 80045164 00108403 */  sra   $s0, $s0, 0x10
/* ABC308 80045168 11E00007 */  beqz  $t7, .L80045188
/* ABC30C 8004516C 0080A825 */   move  $s5, $a0
/* ABC310 80045170 3C048014 */  lui   $a0, %hi(D_80139094) # $a0, 0x8014
/* ABC314 80045174 24849094 */  addiu $a0, %lo(D_80139094) # addiu $a0, $a0, -0x6f6c
/* ABC318 80045178 86A50164 */  lh    $a1, 0x164($s5)
/* ABC31C 8004517C 86A60142 */  lh    $a2, 0x142($s5)
/* ABC320 80045180 0C00084C */  jal   osSyncPrintf
/* ABC324 80045184 02003825 */   move  $a3, $s0
.L80045188:
/* ABC328 80045188 86B80142 */  lh    $t8, 0x142($s5)
/* ABC32C 8004518C 3C168012 */  lui   $s6, %hi(D_8011D064) # $s6, 0x8012
/* ABC330 80045190 26D6D064 */  addiu $s6, %lo(D_8011D064) # addiu $s6, $s6, -0x2f9c
/* ABC334 80045194 0018C8C0 */  sll   $t9, $t8, 3
/* ABC338 80045198 02D94021 */  addu  $t0, $s6, $t9
/* ABC33C 8004519C 8D090004 */  lw    $t1, 4($t0)
/* ABC340 800451A0 0010A0C0 */  sll   $s4, $s0, 3
/* ABC344 800451A4 00008825 */  move  $s1, $zero
/* ABC348 800451A8 01341021 */  addu  $v0, $t1, $s4
/* ABC34C 800451AC 844A0002 */  lh    $t2, 2($v0)
/* ABC350 800451B0 8C430004 */  lw    $v1, 4($v0)
/* ABC354 800451B4 3C138014 */  lui   $s3, %hi(D_801390B4) # $s3, 0x8014
/* ABC358 800451B8 1940001B */  blez  $t2, .L80045228
/* ABC35C 800451BC 00608025 */   move  $s0, $v1
/* ABC360 800451C0 267390B4 */  addiu $s3, %lo(D_801390B4) # addiu $s3, $s3, -0x6f4c
/* ABC364 800451C4 860D0002 */  lh    $t5, 2($s0)
.L800451C8:
/* ABC368 800451C8 8E4C0000 */  lw    $t4, ($s2)
/* ABC36C 800451CC 860B0000 */  lh    $t3, ($s0)
/* ABC370 800451D0 000D7040 */  sll   $t6, $t5, 1
/* ABC374 800451D4 018E7821 */  addu  $t7, $t4, $t6
/* ABC378 800451D8 A5EB0254 */  sh    $t3, 0x254($t7)
/* ABC37C 800451DC 8E580000 */  lw    $t8, ($s2)
/* ABC380 800451E0 02602025 */  move  $a0, $s3
/* ABC384 800451E4 871902F8 */  lh    $t9, 0x2f8($t8)
/* ABC388 800451E8 53200005 */  beql  $t9, $zero, .L80045200
/* ABC38C 800451EC 86A80142 */   lh    $t0, 0x142($s5)
/* ABC390 800451F0 86050002 */  lh    $a1, 2($s0)
/* ABC394 800451F4 0C00084C */  jal   osSyncPrintf
/* ABC398 800451F8 86060000 */   lh    $a2, ($s0)
/* ABC39C 800451FC 86A80142 */  lh    $t0, 0x142($s5)
.L80045200:
/* ABC3A0 80045200 26310001 */  addiu $s1, $s1, 1
/* ABC3A4 80045204 26100004 */  addiu $s0, $s0, 4
/* ABC3A8 80045208 000848C0 */  sll   $t1, $t0, 3
/* ABC3AC 8004520C 02C95021 */  addu  $t2, $s6, $t1
/* ABC3B0 80045210 8D4D0004 */  lw    $t5, 4($t2)
/* ABC3B4 80045214 01B46021 */  addu  $t4, $t5, $s4
/* ABC3B8 80045218 858E0002 */  lh    $t6, 2($t4)
/* ABC3BC 8004521C 022E082A */  slt   $at, $s1, $t6
/* ABC3C0 80045220 5420FFE9 */  bnezl $at, .L800451C8
/* ABC3C4 80045224 860D0002 */   lh    $t5, 2($s0)
.L80045228:
/* ABC3C8 80045228 A6A0015E */  sh    $zero, 0x15e($s5)
/* ABC3CC 8004522C 8FBF0034 */  lw    $ra, 0x34($sp)
/* ABC3D0 80045230 8FB60030 */  lw    $s6, 0x30($sp)
/* ABC3D4 80045234 8FB5002C */  lw    $s5, 0x2c($sp)
/* ABC3D8 80045238 8FB40028 */  lw    $s4, 0x28($sp)
/* ABC3DC 8004523C 8FB30024 */  lw    $s3, 0x24($sp)
/* ABC3E0 80045240 8FB20020 */  lw    $s2, 0x20($sp)
/* ABC3E4 80045244 8FB1001C */  lw    $s1, 0x1c($sp)
/* ABC3E8 80045248 8FB00018 */  lw    $s0, 0x18($sp)
/* ABC3EC 8004524C 03E00008 */  jr    $ra
/* ABC3F0 80045250 27BD0038 */   addiu $sp, $sp, 0x38

