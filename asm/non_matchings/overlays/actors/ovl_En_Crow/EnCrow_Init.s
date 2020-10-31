glabel EnCrow_Init
/* 00000 809E0240 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 809E0244 AFA5003C */  sw      $a1, 0x003C($sp)
/* 00008 809E0248 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0000C 809E024C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00010 809E0250 3C05809E */  lui     $a1, %hi(D_809E16CC)       ## $a1 = 809E0000
/* 00014 809E0254 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 809E0258 0C01E037 */  jal     Actor_ProcessInitChain

/* 0001C 809E025C 24A516CC */  addiu   $a1, $a1, %lo(D_809E16CC)  ## $a1 = 809E16CC
/* 00020 809E0260 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00024 809E0264 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00028 809E0268 260E01CA */  addiu   $t6, $s0, 0x01CA           ## $t6 = 000001CA
/* 0002C 809E026C 260F0200 */  addiu   $t7, $s0, 0x0200           ## $t7 = 00000200
/* 00030 809E0270 24180009 */  addiu   $t8, $zero, 0x0009         ## $t8 = 00000009
/* 00034 809E0274 AFB80018 */  sw      $t8, 0x0018($sp)
/* 00038 809E0278 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0003C 809E027C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00040 809E0280 24E700F0 */  addiu   $a3, $a3, 0x00F0           ## $a3 = 060000F0
/* 00044 809E0284 24C610C0 */  addiu   $a2, $a2, 0x10C0           ## $a2 = 060010C0
/* 00048 809E0288 8FA4003C */  lw      $a0, 0x003C($sp)
/* 0004C 809E028C 0C0291BE */  jal     SkelAnime_InitSV
/* 00050 809E0290 2605017C */  addiu   $a1, $s0, 0x017C           ## $a1 = 0000017C
/* 00054 809E0294 26050238 */  addiu   $a1, $s0, 0x0238           ## $a1 = 00000238
/* 00058 809E0298 AFA50030 */  sw      $a1, 0x0030($sp)
/* 0005C 809E029C 0C016EFE */  jal     Collider_InitJntSph
/* 00060 809E02A0 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00064 809E02A4 3C07809E */  lui     $a3, %hi(D_809E1690)       ## $a3 = 809E0000
/* 00068 809E02A8 26190258 */  addiu   $t9, $s0, 0x0258           ## $t9 = 00000258
/* 0006C 809E02AC 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00070 809E02B0 AFB90010 */  sw      $t9, 0x0010($sp)
/* 00074 809E02B4 24E71690 */  addiu   $a3, $a3, %lo(D_809E1690)  ## $a3 = 809E1690
/* 00078 809E02B8 8FA4003C */  lw      $a0, 0x003C($sp)
/* 0007C 809E02BC 0C017014 */  jal     Collider_SetJntSph
/* 00080 809E02C0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00084 809E02C4 3C08809E */  lui     $t0, %hi(D_809E169C)       ## $t0 = 809E0000
/* 00088 809E02C8 8D08169C */  lw      $t0, %lo(D_809E169C)($t0)
/* 0008C 809E02CC 8E0A0254 */  lw      $t2, 0x0254($s0)           ## 00000254
/* 00090 809E02D0 3C05809E */  lui     $a1, %hi(D_809E16A8)       ## $a1 = 809E0000
/* 00094 809E02D4 85090020 */  lh      $t1, 0x0020($t0)           ## 809E0020
/* 00098 809E02D8 3C06809E */  lui     $a2, %hi(D_809E16A0)       ## $a2 = 809E0000
/* 0009C 809E02DC 24C616A0 */  addiu   $a2, $a2, %lo(D_809E16A0)  ## $a2 = 809E16A0
/* 000A0 809E02E0 24A516A8 */  addiu   $a1, $a1, %lo(D_809E16A8)  ## $a1 = 809E16A8
/* 000A4 809E02E4 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000A8 809E02E8 0C0187B5 */  jal     CollisionCheck_SetInfo
/* 000AC 809E02EC A5490036 */  sh      $t1, 0x0036($t2)           ## 00000036
/* 000B0 809E02F0 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 000B4 809E02F4 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 000B8 809E02F8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 000BC 809E02FC 3C0544FA */  lui     $a1, 0x44FA                ## $a1 = 44FA0000
/* 000C0 809E0300 0C00AC78 */  jal     ActorShape_Init

/* 000C4 809E0304 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 000C8 809E0308 3C01809E */  lui     $at, %hi(D_809E16C8)       ## $at = 809E0000
/* 000CC 809E030C AC2016C8 */  sw      $zero, %lo(D_809E16C8)($at)
/* 000D0 809E0310 0C2780D5 */  jal     func_809E0354
/* 000D4 809E0314 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000D8 809E0318 8FBF002C */  lw      $ra, 0x002C($sp)
/* 000DC 809E031C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 000E0 809E0320 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 000E4 809E0324 03E00008 */  jr      $ra
/* 000E8 809E0328 00000000 */  nop
