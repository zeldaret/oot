glabel BossGoma_Init
/* 00234 80915C44 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00238 80915C48 AFB10038 */  sw      $s1, 0x0038($sp)
/* 0023C 80915C4C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00240 80915C50 AFBF003C */  sw      $ra, 0x003C($sp)
/* 00244 80915C54 AFB00034 */  sw      $s0, 0x0034($sp)
/* 00248 80915C58 3C058092 */  lui     $a1, %hi(D_8091B2A8)       ## $a1 = 80920000
/* 0024C 80915C5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00250 80915C60 0C01E037 */  jal     Actor_ProcessInitChain

/* 00254 80915C64 24A5B2A8 */  addiu   $a1, $a1, %lo(D_8091B2A8)  ## $a1 = 8091B2A8
/* 00258 80915C68 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 0025C 80915C6C 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00260 80915C70 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00264 80915C74 3C05457A */  lui     $a1, 0x457A                ## $a1 = 457A0000
/* 00268 80915C78 0C00AC78 */  jal     ActorShape_Init

/* 0026C 80915C7C 3C074316 */  lui     $a3, 0x4316                ## $a3 = 43160000
/* 00270 80915C80 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00274 80915C84 3C060602 */  lui     $a2, 0x0602                ## $a2 = 06020000
/* 00278 80915C88 3C070601 */  lui     $a3, 0x0601                ## $a3 = 06010000
/* 0027C 80915C8C 24E72678 */  addiu   $a3, $a3, 0x2678           ## $a3 = 06012678
/* 00280 80915C90 24C6DCF8 */  addiu   $a2, $a2, 0xDCF8           ## $a2 = 0601DCF8
/* 00284 80915C94 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00288 80915C98 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0028C 80915C9C AFA00010 */  sw      $zero, 0x0010($sp)
/* 00290 80915CA0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00294 80915CA4 0C02915F */  jal     SkelAnime_Init

/* 00298 80915CA8 AFA00018 */  sw      $zero, 0x0018($sp)
/* 0029C 80915CAC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 002A0 80915CB0 24A52678 */  addiu   $a1, $a1, 0x2678           ## $a1 = 06012678
/* 002A4 80915CB4 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 002A8 80915CB8 8FA40044 */  lw      $a0, 0x0044($sp)
/* 002AC 80915CBC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 002B0 80915CC0 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 002B4 80915CC4 3C01C396 */  lui     $at, 0xC396                ## $at = C3960000
/* 002B8 80915CC8 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 002BC 80915CCC C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 002C0 80915CD0 44814000 */  mtc1    $at, $f8                   ## $f8 = -300.00
/* 002C4 80915CD4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 002C8 80915CD8 240E8000 */  addiu   $t6, $zero, 0x8000         ## $t6 = FFFF8000
/* 002CC 80915CDC A60E00B4 */  sh      $t6, 0x00B4($s0)           ## 000000B4
/* 002D0 80915CE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002D4 80915CE4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 002D8 80915CE8 E60001F8 */  swc1    $f0, 0x01F8($s0)           ## 000001F8
/* 002DC 80915CEC E6000224 */  swc1    $f0, 0x0224($s0)           ## 00000224
/* 002E0 80915CF0 E60401FC */  swc1    $f4, 0x01FC($s0)           ## 000001FC
/* 002E4 80915CF4 E6060200 */  swc1    $f6, 0x0200($s0)           ## 00000200
/* 002E8 80915CF8 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 002EC 80915CFC 0C245800 */  jal     func_80916000
/* 002F0 80915D00 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 002F4 80915D04 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 002F8 80915D08 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 002FC 80915D0C A20F00AF */  sb      $t7, 0x00AF($s0)           ## 000000AF
/* 00300 80915D10 A21800AE */  sb      $t8, 0x00AE($s0)           ## 000000AE
/* 00304 80915D14 260507BC */  addiu   $a1, $s0, 0x07BC           ## $a1 = 000007BC
/* 00308 80915D18 AFA50044 */  sw      $a1, 0x0044($sp)
/* 0030C 80915D1C 0C016EFE */  jal     Collider_InitJntSph
/* 00310 80915D20 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00314 80915D24 3C078092 */  lui     $a3, %hi(D_8091B034)       ## $a3 = 80920000
/* 00318 80915D28 261907DC */  addiu   $t9, $s0, 0x07DC           ## $t9 = 000007DC
/* 0031C 80915D2C 8FA50044 */  lw      $a1, 0x0044($sp)
/* 00320 80915D30 AFB90010 */  sw      $t9, 0x0010($sp)
/* 00324 80915D34 24E7B034 */  addiu   $a3, $a3, %lo(D_8091B034)  ## $a3 = 8091B034
/* 00328 80915D38 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0032C 80915D3C 0C017014 */  jal     Collider_SetJntSph
/* 00330 80915D40 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00334 80915D44 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 00338 80915D48 00B12821 */  addu    $a1, $a1, $s1
/* 0033C 80915D4C 80A51CBC */  lb      $a1, 0x1CBC($a1)           ## 00011CBC
/* 00340 80915D50 0C00B337 */  jal     Flags_GetClear

/* 00344 80915D54 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00348 80915D58 50400023 */  beql    $v0, $zero, .L80915DE8
/* 0034C 80915D5C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00350 80915D60 0C00B55C */  jal     Actor_Kill

/* 00354 80915D64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00358 80915D68 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0035C 80915D6C 3C01C420 */  lui     $at, 0xC420                ## $at = C4200000
/* 00360 80915D70 44818000 */  mtc1    $at, $f16                  ## $f16 = -640.00
/* 00364 80915D74 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00368 80915D78 AFA40044 */  sw      $a0, 0x0044($sp)
/* 0036C 80915D7C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00370 80915D80 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00374 80915D84 2407005D */  addiu   $a3, $zero, 0x005D         ## $a3 = 0000005D
/* 00378 80915D88 AFA0001C */  sw      $zero, 0x001C($sp)
/* 0037C 80915D8C AFA00020 */  sw      $zero, 0x0020($sp)
/* 00380 80915D90 AFA00024 */  sw      $zero, 0x0024($sp)
/* 00384 80915D94 AFA00028 */  sw      $zero, 0x0028($sp)
/* 00388 80915D98 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 0038C 80915D9C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00390 80915DA0 0C00C916 */  jal     Actor_SpawnChild

/* 00394 80915DA4 E7B00014 */  swc1    $f16, 0x0014($sp)
/* 00398 80915DA8 3C01C420 */  lui     $at, 0xC420                ## $at = C4200000
/* 0039C 80915DAC 44819000 */  mtc1    $at, $f18                  ## $f18 = -640.00
/* 003A0 80915DB0 3C01C2A8 */  lui     $at, 0xC2A8                ## $at = C2A80000
/* 003A4 80915DB4 44812000 */  mtc1    $at, $f4                   ## $f4 = -84.00
/* 003A8 80915DB8 8FA40044 */  lw      $a0, 0x0044($sp)
/* 003AC 80915DBC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 003B0 80915DC0 2406005F */  addiu   $a2, $zero, 0x005F         ## $a2 = 0000005F
/* 003B4 80915DC4 3C07430D */  lui     $a3, 0x430D                ## $a3 = 430D0000
/* 003B8 80915DC8 AFA00018 */  sw      $zero, 0x0018($sp)
/* 003BC 80915DCC AFA0001C */  sw      $zero, 0x001C($sp)
/* 003C0 80915DD0 AFA00020 */  sw      $zero, 0x0020($sp)
/* 003C4 80915DD4 AFA00024 */  sw      $zero, 0x0024($sp)
/* 003C8 80915DD8 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 003CC 80915DDC 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 003D0 80915DE0 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 003D4 80915DE4 8FBF003C */  lw      $ra, 0x003C($sp)
.L80915DE8:
/* 003D8 80915DE8 8FB00034 */  lw      $s0, 0x0034($sp)
/* 003DC 80915DEC 8FB10038 */  lw      $s1, 0x0038($sp)
/* 003E0 80915DF0 03E00008 */  jr      $ra
/* 003E4 80915DF4 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
