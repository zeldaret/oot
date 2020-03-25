glabel EnShopnuts_Init
/* 00000 80AFA720 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80AFA724 AFA5003C */  sw      $a1, 0x003C($sp)
/* 00008 80AFA728 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0000C 80AFA72C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00010 80AFA730 3C0580B0 */  lui     $a1, %hi(D_80AFB514)       ## $a1 = 80B00000
/* 00014 80AFA734 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80AFA738 0C01E037 */  jal     Actor_ProcessInitChain

/* 0001C 80AFA73C 24A5B514 */  addiu   $a1, $a1, %lo(D_80AFB514)  ## $a1 = 80AFB514
/* 00020 80AFA740 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00024 80AFA744 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00028 80AFA748 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0002C 80AFA74C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00030 80AFA750 0C00AC78 */  jal     ActorShape_Init

/* 00034 80AFA754 3C07420C */  lui     $a3, 0x420C                ## $a3 = 420C0000
/* 00038 80AFA758 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0003C 80AFA75C 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00040 80AFA760 260E0196 */  addiu   $t6, $s0, 0x0196           ## $t6 = 00000196
/* 00044 80AFA764 260F0202 */  addiu   $t7, $s0, 0x0202           ## $t7 = 00000202
/* 00048 80AFA768 24180012 */  addiu   $t8, $zero, 0x0012         ## $t8 = 00000012
/* 0004C 80AFA76C AFB80018 */  sw      $t8, 0x0018($sp)
/* 00050 80AFA770 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00054 80AFA774 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00058 80AFA778 24E74574 */  addiu   $a3, $a3, 0x4574           ## $a3 = 06004574
/* 0005C 80AFA77C 24C641A8 */  addiu   $a2, $a2, 0x41A8           ## $a2 = 060041A8
/* 00060 80AFA780 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00064 80AFA784 0C0291BE */  jal     SkelAnime_InitSV
/* 00068 80AFA788 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0006C 80AFA78C 26050270 */  addiu   $a1, $s0, 0x0270           ## $a1 = 00000270
/* 00070 80AFA790 AFA50030 */  sw      $a1, 0x0030($sp)
/* 00074 80AFA794 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00078 80AFA798 8FA4003C */  lw      $a0, 0x003C($sp)
/* 0007C 80AFA79C 3C0780B0 */  lui     $a3, %hi(D_80AFB4E0)       ## $a3 = 80B00000
/* 00080 80AFA7A0 24E7B4E0 */  addiu   $a3, $a3, %lo(D_80AFB4E0)  ## $a3 = 80AFB4E0
/* 00084 80AFA7A4 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00088 80AFA7A8 8FA50030 */  lw      $a1, 0x0030($sp)
/* 0008C 80AFA7AC 0C01712B */  jal     ActorCollider_InitCylinder

/* 00090 80AFA7B0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00094 80AFA7B4 3C0680B0 */  lui     $a2, %hi(D_80AFB50C)       ## $a2 = 80B00000
/* 00098 80AFA7B8 24C6B50C */  addiu   $a2, $a2, %lo(D_80AFB50C)  ## $a2 = 80AFB50C
/* 0009C 80AFA7BC 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000A0 80AFA7C0 0C0187B5 */  jal     func_80061ED4
/* 000A4 80AFA7C4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 000A8 80AFA7C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000AC 80AFA7CC 0C0189B7 */  jal     ActorCollider_Cylinder_Update

/* 000B0 80AFA7D0 8FA50030 */  lw      $a1, 0x0030($sp)
/* 000B4 80AFA7D4 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 000B8 80AFA7D8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 000BC 80AFA7DC 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 000C0 80AFA7E0 14410004 */  bne     $v0, $at, .L80AFA7F4
/* 000C4 80AFA7E4 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 000C8 80AFA7E8 94790EF0 */  lhu     $t9, 0x0EF0($v1)           ## 8015F550
/* 000CC 80AFA7EC 33280800 */  andi    $t0, $t9, 0x0800           ## $t0 = 00000000
/* 000D0 80AFA7F0 1500000E */  bne     $t0, $zero, .L80AFA82C
.L80AFA7F4:
/* 000D4 80AFA7F4 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 000D8 80AFA7F8 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 000DC 80AFA7FC 14410004 */  bne     $v0, $at, .L80AFA810
/* 000E0 80AFA800 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 000E4 80AFA804 94690F2A */  lhu     $t1, 0x0F2A($v1)           ## 8015F58A
/* 000E8 80AFA808 312A0004 */  andi    $t2, $t1, 0x0004           ## $t2 = 00000000
/* 000EC 80AFA80C 15400007 */  bne     $t2, $zero, .L80AFA82C
.L80AFA810:
/* 000F0 80AFA810 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 000F4 80AFA814 14410009 */  bne     $v0, $at, .L80AFA83C
/* 000F8 80AFA818 00000000 */  nop
/* 000FC 80AFA81C 946B0F2A */  lhu     $t3, 0x0F2A($v1)           ## 8015F58A
/* 00100 80AFA820 316C0008 */  andi    $t4, $t3, 0x0008           ## $t4 = 00000000
/* 00104 80AFA824 11800005 */  beq     $t4, $zero, .L80AFA83C
/* 00108 80AFA828 00000000 */  nop
.L80AFA82C:
/* 0010C 80AFA82C 0C00B55C */  jal     Actor_Kill

/* 00110 80AFA830 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00114 80AFA834 10000004 */  beq     $zero, $zero, .L80AFA848
/* 00118 80AFA838 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AFA83C:
/* 0011C 80AFA83C 0C2BEA20 */  jal     func_80AFA880
/* 00120 80AFA840 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00124 80AFA844 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AFA848:
/* 00128 80AFA848 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0012C 80AFA84C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00130 80AFA850 03E00008 */  jr      $ra
/* 00134 80AFA854 00000000 */  nop


