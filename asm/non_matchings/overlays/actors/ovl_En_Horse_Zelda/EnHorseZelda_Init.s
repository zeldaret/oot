glabel EnHorseZelda_Init
/* 00210 80A6DAE0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00214 80A6DAE4 AFB10020 */  sw      $s1, 0x0020($sp)
/* 00218 80A6DAE8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0021C 80A6DAEC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00220 80A6DAF0 AFB0001C */  sw      $s0, 0x001C($sp)
/* 00224 80A6DAF4 3C0580A7 */  lui     $a1, %hi(D_80A6E2B0)       ## $a1 = 80A70000
/* 00228 80A6DAF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0022C 80A6DAFC 0C01E037 */  jal     Actor_ProcessInitChain

/* 00230 80A6DB00 24A5E2B0 */  addiu   $a1, $a1, %lo(D_80A6E2B0)  ## $a1 = 80A6E2B0
/* 00234 80A6DB04 3C053C3C */  lui     $a1, 0x3C3C                ## $a1 = 3C3C0000
/* 00238 80A6DB08 34A56A7F */  ori     $a1, $a1, 0x6A7F           ## $a1 = 3C3C6A7F
/* 0023C 80A6DB0C 0C00B58B */  jal     Actor_SetScale

/* 00240 80A6DB10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00244 80A6DB14 3C01C060 */  lui     $at, 0xC060                ## $at = C0600000
/* 00248 80A6DB18 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.50
/* 0024C 80A6DB1C 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00250 80A6DB20 24C6B644 */  addiu   $a2, $a2, 0xB644           ## $a2 = 8002B644
/* 00254 80A6DB24 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00258 80A6DB28 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0025C 80A6DB2C 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 00260 80A6DB30 0C00AC78 */  jal     ActorShape_Init

/* 00264 80A6DB34 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00268 80A6DB38 8E0E0028 */  lw      $t6, 0x0028($s0)           ## 00000028
/* 0026C 80A6DB3C 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00270 80A6DB40 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
/* 00274 80A6DB44 AE0E003C */  sw      $t6, 0x003C($s0)           ## 0000003C
/* 00278 80A6DB48 C608003C */  lwc1    $f8, 0x003C($s0)           ## 0000003C
/* 0027C 80A6DB4C 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 00280 80A6DB50 AE0F0038 */  sw      $t7, 0x0038($s0)           ## 00000038
/* 00284 80A6DB54 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00288 80A6DB58 460A4400 */  add.s   $f16, $f8, $f10
/* 0028C 80A6DB5C 8E0F002C */  lw      $t7, 0x002C($s0)           ## 0000002C
/* 00290 80A6DB60 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00294 80A6DB64 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00298 80A6DB68 AE00014C */  sw      $zero, 0x014C($s0)         ## 0000014C
/* 0029C 80A6DB6C E610003C */  swc1    $f16, 0x003C($s0)          ## 0000003C
/* 002A0 80A6DB70 24E77148 */  addiu   $a3, $a3, 0x7148           ## $a3 = 06007148
/* 002A4 80A6DB74 24C66B2C */  addiu   $a2, $a2, 0x6B2C           ## $a2 = 06006B2C
/* 002A8 80A6DB78 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002AC 80A6DB7C 26050154 */  addiu   $a1, $s0, 0x0154           ## $a1 = 00000154
/* 002B0 80A6DB80 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 002B4 80A6DB84 0C02998F */  jal     func_800A663C
/* 002B8 80A6DB88 AE0F0040 */  sw      $t7, 0x0040($s0)           ## 00000040
/* 002BC 80A6DB8C AE000150 */  sw      $zero, 0x0150($s0)         ## 00000150
/* 002C0 80A6DB90 3C0580A7 */  lui     $a1, %hi(D_80A6E1D0)       ## $a1 = 80A70000
/* 002C4 80A6DB94 8CA5E1D0 */  lw      $a1, %lo(D_80A6E1D0)($a1)
/* 002C8 80A6DB98 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 002CC 80A6DB9C 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 002D0 80A6DBA0 260501FC */  addiu   $a1, $s0, 0x01FC           ## $a1 = 000001FC
/* 002D4 80A6DBA4 AFA50028 */  sw      $a1, 0x0028($sp)
/* 002D8 80A6DBA8 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 002DC 80A6DBAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002E0 80A6DBB0 3C0780A7 */  lui     $a3, %hi(D_80A6E1D8)       ## $a3 = 80A70000
/* 002E4 80A6DBB4 8FA50028 */  lw      $a1, 0x0028($sp)
/* 002E8 80A6DBB8 24E7E1D8 */  addiu   $a3, $a3, %lo(D_80A6E1D8)  ## $a3 = 80A6E1D8
/* 002EC 80A6DBBC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002F0 80A6DBC0 0C017114 */  jal     func_8005C450
/* 002F4 80A6DBC4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 002F8 80A6DBC8 26050248 */  addiu   $a1, $s0, 0x0248           ## $a1 = 00000248
/* 002FC 80A6DBCC AFA50028 */  sw      $a1, 0x0028($sp)
/* 00300 80A6DBD0 0C016EFE */  jal     func_8005BBF8
/* 00304 80A6DBD4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00308 80A6DBD8 3C0780A7 */  lui     $a3, %hi(D_80A6E228)       ## $a3 = 80A70000
/* 0030C 80A6DBDC 26180268 */  addiu   $t8, $s0, 0x0268           ## $t8 = 00000268
/* 00310 80A6DBE0 8FA50028 */  lw      $a1, 0x0028($sp)
/* 00314 80A6DBE4 AFB80010 */  sw      $t8, 0x0010($sp)
/* 00318 80A6DBE8 24E7E228 */  addiu   $a3, $a3, %lo(D_80A6E228)  ## $a3 = 80A6E228
/* 0031C 80A6DBEC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00320 80A6DBF0 0C017014 */  jal     func_8005C050
/* 00324 80A6DBF4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00328 80A6DBF8 3C0680A7 */  lui     $a2, %hi(D_80A6E238)       ## $a2 = 80A70000
/* 0032C 80A6DBFC 24C6E238 */  addiu   $a2, $a2, %lo(D_80A6E238)  ## $a2 = 80A6E238
/* 00330 80A6DC00 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00334 80A6DC04 0C0187B5 */  jal     func_80061ED4
/* 00338 80A6DC08 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0033C 80A6DC0C AE000150 */  sw      $zero, 0x0150($s0)         ## 00000150
/* 00340 80A6DC10 0C29B71F */  jal     func_80A6DC7C
/* 00344 80A6DC14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00348 80A6DC18 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0034C 80A6DC1C 8FB0001C */  lw      $s0, 0x001C($sp)
/* 00350 80A6DC20 8FB10020 */  lw      $s1, 0x0020($sp)
/* 00354 80A6DC24 03E00008 */  jr      $ra
/* 00358 80A6DC28 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
