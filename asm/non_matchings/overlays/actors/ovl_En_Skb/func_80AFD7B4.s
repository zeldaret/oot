glabel func_80AFD7B4
/* 00E14 80AFD7B4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00E18 80AFD7B8 AFB00020 */  sw      $s0, 0x0020($sp)
/* 00E1C 80AFD7BC AFA5002C */  sw      $a1, 0x002C($sp)
/* 00E20 80AFD7C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E24 80AFD7C4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00E28 80AFD7C8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E2C 80AFD7CC 24A509DC */  addiu   $a1, $a1, 0x09DC           ## $a1 = 060009DC
/* 00E30 80AFD7D0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E34 80AFD7D4 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00E38 80AFD7D8 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 00E3C 80AFD7DC 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 00E40 80AFD7E0 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 00E44 80AFD7E4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00E48 80AFD7E8 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00E4C 80AFD7EC A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00E50 80AFD7F0 11E00005 */  beq     $t7, $zero, .L80AFD808
/* 00E54 80AFD7F4 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 00E58 80AFD7F8 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 00E5C 80AFD7FC 44812000 */  mtc1    $at, $f4                   ## $f4 = -6.00
/* 00E60 80AFD800 00000000 */  nop
/* 00E64 80AFD804 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80AFD808:
/* 00E68 80AFD808 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 00E6C 80AFD80C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00E70 80AFD810 A2180280 */  sb      $t8, 0x0280($s0)           ## 00000280
/* 00E74 80AFD814 03214024 */  and     $t0, $t9, $at
/* 00E78 80AFD818 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 00E7C 80AFD81C 8FA6002C */  lw      $a2, 0x002C($sp)
/* 00E80 80AFD820 2604028C */  addiu   $a0, $s0, 0x028C           ## $a0 = 0000028C
/* 00E84 80AFD824 0C00CB89 */  jal     func_80032E24
/* 00E88 80AFD828 24050012 */  addiu   $a1, $zero, 0x0012         ## $a1 = 00000012
/* 00E8C 80AFD82C 92090283 */  lbu     $t1, 0x0283($s0)           ## 00000283
/* 00E90 80AFD830 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00E94 80AFD834 240C0028 */  addiu   $t4, $zero, 0x0028         ## $t4 = 00000028
/* 00E98 80AFD838 352A0004 */  ori     $t2, $t1, 0x0004           ## $t2 = 00000004
/* 00E9C 80AFD83C A20A0283 */  sb      $t2, 0x0283($s0)           ## 00000283
/* 00EA0 80AFD840 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 00EA4 80AFD844 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 00EA8 80AFD848 8FA4002C */  lw      $a0, 0x002C($sp)
/* 00EAC 80AFD84C 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00EB0 80AFD850 24063833 */  addiu   $a2, $zero, 0x3833         ## $a2 = 00003833
/* 00EB4 80AFD854 0C00AA7D */  jal     EffectSsDeadSound_SpawnStationary
/* 00EB8 80AFD858 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00EBC 80AFD85C 3C0580B0 */  lui     $a1, %hi(func_80AFD880)    ## $a1 = 80B00000
/* 00EC0 80AFD860 24A5D880 */  addiu   $a1, $a1, %lo(func_80AFD880) ## $a1 = 80AFD880
/* 00EC4 80AFD864 0C2BF268 */  jal     func_80AFC9A0
/* 00EC8 80AFD868 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ECC 80AFD86C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00ED0 80AFD870 8FB00020 */  lw      $s0, 0x0020($sp)
/* 00ED4 80AFD874 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00ED8 80AFD878 03E00008 */  jr      $ra
/* 00EDC 80AFD87C 00000000 */  nop
