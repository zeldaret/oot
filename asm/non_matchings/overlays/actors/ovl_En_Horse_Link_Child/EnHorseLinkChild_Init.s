glabel EnHorseLinkChild_Init
/* 00298 80A69668 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0029C 80A6966C AFA5003C */  sw      $a1, 0x003C($sp)
/* 002A0 80A69670 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 002A4 80A69674 AFB00020 */  sw      $s0, 0x0020($sp)
/* 002A8 80A69678 3C0580A7 */  lui     $a1, %hi(D_80A6AF78)       ## $a1 = 80A70000
/* 002AC 80A6967C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002B0 80A69680 0C01E037 */  jal     Actor_ProcessInitChain

/* 002B4 80A69684 24A5AF78 */  addiu   $a1, $a1, %lo(D_80A6AF78)  ## $a1 = 80A6AF78
/* 002B8 80A69688 3C053BA3 */  lui     $a1, 0x3BA3                ## $a1 = 3BA30000
/* 002BC 80A6968C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3BA3D70A
/* 002C0 80A69690 0C00B58B */  jal     Actor_SetScale

/* 002C4 80A69694 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002C8 80A69698 3C01C060 */  lui     $at, 0xC060                ## $at = C0600000
/* 002CC 80A6969C 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.50
/* 002D0 80A696A0 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Squiggly)
/* 002D4 80A696A4 24C6B644 */  addiu   $a2, %lo(ActorShadow_DrawFunc_Squiggly)
/* 002D8 80A696A8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 002DC 80A696AC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 002E0 80A696B0 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 002E4 80A696B4 0C00AC78 */  jal     ActorShape_Init

/* 002E8 80A696B8 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 002EC 80A696BC 8E0F0028 */  lw      $t7, 0x0028($s0)           ## 00000028
/* 002F0 80A696C0 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 002F4 80A696C4 8E180024 */  lw      $t8, 0x0024($s0)           ## 00000024
/* 002F8 80A696C8 AE0F003C */  sw      $t7, 0x003C($s0)           ## 0000003C
/* 002FC 80A696CC C608003C */  lwc1    $f8, 0x003C($s0)           ## 0000003C
/* 00300 80A696D0 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 00304 80A696D4 AE180038 */  sw      $t8, 0x0038($s0)           ## 00000038
/* 00308 80A696D8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0030C 80A696DC 460A4400 */  add.s   $f16, $f8, $f10
/* 00310 80A696E0 8E18002C */  lw      $t8, 0x002C($s0)           ## 0000002C
/* 00314 80A696E4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00318 80A696E8 AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
/* 0031C 80A696EC E610003C */  swc1    $f16, 0x003C($s0)          ## 0000003C
/* 00320 80A696F0 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00324 80A696F4 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00328 80A696F8 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 0032C 80A696FC AE180040 */  sw      $t8, 0x0040($s0)           ## 00000040
/* 00330 80A69700 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00334 80A69704 24E72F98 */  addiu   $a3, $a3, 0x2F98           ## $a3 = 06002F98
/* 00338 80A69708 24C67B20 */  addiu   $a2, $a2, 0x7B20           ## $a2 = 06007B20
/* 0033C 80A6970C 0C02998F */  jal     func_800A663C
/* 00340 80A69710 26050154 */  addiu   $a1, $s0, 0x0154           ## $a1 = 00000154
/* 00344 80A69714 AE000150 */  sw      $zero, 0x0150($s0)         ## 00000150
/* 00348 80A69718 3C0580A7 */  lui     $a1, %hi(D_80A6AEE0)       ## $a1 = 80A70000
/* 0034C 80A6971C 8CA5AEE0 */  lw      $a1, %lo(D_80A6AEE0)($a1)
/* 00350 80A69720 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00354 80A69724 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 00358 80A69728 260501F4 */  addiu   $a1, $s0, 0x01F4           ## $a1 = 000001F4
/* 0035C 80A6972C AFA50028 */  sw      $a1, 0x0028($sp)
/* 00360 80A69730 0C0170D9 */  jal     Collider_InitCylinder

/* 00364 80A69734 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00368 80A69738 3C0780A7 */  lui     $a3, %hi(D_80A6AEF4)       ## $a3 = 80A70000
/* 0036C 80A6973C 8FA50028 */  lw      $a1, 0x0028($sp)
/* 00370 80A69740 24E7AEF4 */  addiu   $a3, $a3, %lo(D_80A6AEF4)  ## $a3 = 80A6AEF4
/* 00374 80A69744 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00378 80A69748 0C017114 */  jal     Collider_SetCylinder_Set3
/* 0037C 80A6974C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00380 80A69750 26050240 */  addiu   $a1, $s0, 0x0240           ## $a1 = 00000240
/* 00384 80A69754 AFA50028 */  sw      $a1, 0x0028($sp)
/* 00388 80A69758 0C016EFE */  jal     Collider_InitJntSph
/* 0038C 80A6975C 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00390 80A69760 3C0780A7 */  lui     $a3, %hi(D_80A6AF44)       ## $a3 = 80A70000
/* 00394 80A69764 26190260 */  addiu   $t9, $s0, 0x0260           ## $t9 = 00000260
/* 00398 80A69768 8FA50028 */  lw      $a1, 0x0028($sp)
/* 0039C 80A6976C AFB90010 */  sw      $t9, 0x0010($sp)
/* 003A0 80A69770 24E7AF44 */  addiu   $a3, $a3, %lo(D_80A6AF44)  ## $a3 = 80A6AF44
/* 003A4 80A69774 8FA4003C */  lw      $a0, 0x003C($sp)
/* 003A8 80A69778 0C017014 */  jal     Collider_SetJntSph
/* 003AC 80A6977C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 003B0 80A69780 3C0680A7 */  lui     $a2, %hi(D_80A6AF54)       ## $a2 = 80A70000
/* 003B4 80A69784 24C6AF54 */  addiu   $a2, $a2, %lo(D_80A6AF54)  ## $a2 = 80A6AF54
/* 003B8 80A69788 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 003BC 80A6978C 0C0187B5 */  jal     CollisionCheck_SetInfoDamageTable
/* 003C0 80A69790 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 003C4 80A69794 AE0001F0 */  sw      $zero, 0x01F0($s0)         ## 000001F0
/* 003C8 80A69798 A20001EC */  sb      $zero, 0x01EC($s0)         ## 000001EC
/* 003CC 80A6979C 3C088016 */  lui     $t0, %hi(gSaveContext+0x1360)
/* 003D0 80A697A0 8D08F9C0 */  lw      $t0, %lo(gSaveContext+0x1360)($t0)
/* 003D4 80A697A4 8FA9003C */  lw      $t1, 0x003C($sp)
/* 003D8 80A697A8 29010004 */  slti    $at, $t0, 0x0004
/* 003DC 80A697AC 54200006 */  bnel    $at, $zero, .L80A697C8
/* 003E0 80A697B0 852A00A4 */  lh      $t2, 0x00A4($t1)           ## 000000A4
/* 003E4 80A697B4 0C29A7B0 */  jal     func_80A69EC0
/* 003E8 80A697B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003EC 80A697BC 10000017 */  beq     $zero, $zero, .L80A6981C
/* 003F0 80A697C0 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 003F4 80A697C4 852A00A4 */  lh      $t2, 0x00A4($t1)           ## 000000A4
.L80A697C8:
/* 003F8 80A697C8 24010063 */  addiu   $at, $zero, 0x0063         ## $at = 00000063
/* 003FC 80A697CC 15410010 */  bne     $t2, $at, .L80A69810
/* 00400 80A697D0 00000000 */  nop
/* 00404 80A697D4 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 00408 80A697D8 24040014 */  addiu   $a0, $zero, 0x0014         ## $a0 = 00000014
/* 0040C 80A697DC 14400005 */  bne     $v0, $zero, .L80A697F4
/* 00410 80A697E0 3C0B8016 */  lui     $t3, %hi(gSaveContext+0xed6)
/* 00414 80A697E4 0C00B55C */  jal     Actor_Kill

/* 00418 80A697E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0041C 80A697EC 1000000F */  beq     $zero, $zero, .L80A6982C
/* 00420 80A697F0 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80A697F4:
/* 00424 80A697F4 956BF536 */  lhu     $t3, %lo(gSaveContext+0xed6)($t3)
/* 00428 80A697F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0042C 80A697FC 316C0040 */  andi    $t4, $t3, 0x0040           ## $t4 = 00000000
/* 00430 80A69800 0C29A7B0 */  jal     func_80A69EC0
/* 00434 80A69804 AE0C02A0 */  sw      $t4, 0x02A0($s0)           ## 000002A0
/* 00438 80A69808 10000004 */  beq     $zero, $zero, .L80A6981C
/* 0043C 80A6980C A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L80A69810:
/* 00440 80A69810 0C29A7B0 */  jal     func_80A69EC0
/* 00444 80A69814 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00448 80A69818 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L80A6981C:
/* 0044C 80A6981C 860200B8 */  lh      $v0, 0x00B8($s0)           ## 000000B8
/* 00450 80A69820 A6020034 */  sh      $v0, 0x0034($s0)           ## 00000034
/* 00454 80A69824 A6020018 */  sh      $v0, 0x0018($s0)           ## 00000018
/* 00458 80A69828 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80A6982C:
/* 0045C 80A6982C 8FB00020 */  lw      $s0, 0x0020($sp)
/* 00460 80A69830 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00464 80A69834 03E00008 */  jr      $ra
/* 00468 80A69838 00000000 */  nop
