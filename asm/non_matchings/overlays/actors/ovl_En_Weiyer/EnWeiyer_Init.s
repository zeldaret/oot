glabel EnWeiyer_Init
/* 00000 80B32290 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80B32294 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00008 80B32298 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0000C 80B3229C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00010 80B322A0 3C0580B3 */  lui     $a1, %hi(D_80B33AE4)       ## $a1 = 80B30000
/* 00014 80B322A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80B322A8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 80B322AC 24A53AE4 */  addiu   $a1, $a1, %lo(D_80B33AE4)  ## $a1 = 80B33AE4
/* 00020 80B322B0 3C068003 */  lui     $a2, %hi(ActorShadow_DrawCircle)
/* 00024 80B322B4 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawCircle)
/* 00028 80B322B8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0002C 80B322BC 3C05447A */  lui     $a1, 0x447A                ## $a1 = 447A0000
/* 00030 80B322C0 0C00AC78 */  jal     ActorShape_Init
              
/* 00034 80B322C4 3C074282 */  lui     $a3, 0x4282                ## $a3 = 42820000
/* 00038 80B322C8 3C060600 */  lui     $a2, %hi(D_06003410)                ## $a2 = 06000000
/* 0003C 80B322CC 3C070600 */  lui     $a3, %hi(D_060012AC)                ## $a3 = 06000000
/* 00040 80B322D0 260E0198 */  addiu   $t6, $s0, 0x0198           ## $t6 = 00000198
/* 00044 80B322D4 260F020A */  addiu   $t7, $s0, 0x020A           ## $t7 = 0000020A
/* 00048 80B322D8 24180013 */  addiu   $t8, $zero, 0x0013         ## $t8 = 00000013
/* 0004C 80B322DC AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00050 80B322E0 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00054 80B322E4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00058 80B322E8 24E712AC */  addiu   $a3, $a3, %lo(D_060012AC)           ## $a3 = 060012AC
/* 0005C 80B322EC 24C63410 */  addiu   $a2, $a2, %lo(D_06003410)           ## $a2 = 06003410
/* 00060 80B322F0 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00064 80B322F4 0C02915F */  jal     SkelAnime_Init
              
/* 00068 80B322F8 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0006C 80B322FC 26050284 */  addiu   $a1, $s0, 0x0284           ## $a1 = 00000284
/* 00070 80B32300 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00074 80B32304 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00078 80B32308 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0007C 80B3230C 3C0780B3 */  lui     $a3, %hi(D_80B33A90)       ## $a3 = 80B30000
/* 00080 80B32310 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00084 80B32314 24E73A90 */  addiu   $a3, $a3, %lo(D_80B33A90)  ## $a3 = 80B33A90
/* 00088 80B32318 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0008C 80B3231C 0C01712B */  jal     Collider_SetCylinder
              
/* 00090 80B32320 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00094 80B32324 3C0580B3 */  lui     $a1, %hi(D_80B33AC4)       ## $a1 = 80B30000
/* 00098 80B32328 3C0680B3 */  lui     $a2, %hi(D_80B33ABC)       ## $a2 = 80B30000
/* 0009C 80B3232C 24C63ABC */  addiu   $a2, $a2, %lo(D_80B33ABC)  ## $a2 = 80B33ABC
/* 000A0 80B32330 24A53AC4 */  addiu   $a1, $a1, %lo(D_80B33AC4)  ## $a1 = 80B33AC4
/* 000A4 80B32334 0C0187B5 */  jal     CollisionCheck_SetInfo              
/* 000A8 80B32338 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000AC 80B3233C 3C1980B3 */  lui     $t9, %hi(func_80B32804)    ## $t9 = 80B30000
/* 000B0 80B32340 27392804 */  addiu   $t9, $t9, %lo(func_80B32804) ## $t9 = 80B32804
/* 000B4 80B32344 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 000B8 80B32348 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 000BC 80B3234C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 000C0 80B32350 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 000C4 80B32354 03E00008 */  jr      $ra                        
/* 000C8 80B32358 00000000 */  nop
