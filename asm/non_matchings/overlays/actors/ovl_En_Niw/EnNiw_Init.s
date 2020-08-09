.rdata
glabel D_80AB8720
    .asciz "\x1b[33m☆☆☆☆☆ もういてる原 Ver.1 ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_80AB8754
    .asciz "\x1b[33m☆☆☆☆☆ もういてる原 Ver.2 ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_80AB8788
    .asciz "\x1b[33m 通常鶏index %d\n\x1b[m"
    .balign 4

glabel D_80AB87A4
    .asciz "\x1b[33m☆☆☆☆☆ どんな奴？ ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_80AB87D4
    .asciz "\n\n"
    .balign 4

.late_rodata
glabel D_80AB8A50
    .float 1530.0

glabel D_80AB8A54
    .float 3.99

glabel jtbl_80AB8A58
    .word L80AB5A44
    .word L80AB5A28
    .word L80AB5A64
    .word L80AB5AE8
    .word L80AB5A84
    .word L80AB5AF4
    .word L80AB5AA4
    .word L80AB5AF4
    .word L80AB5AF4
    .word L80AB5AF4
    .word L80AB5AF4
    .word L80AB5AF4
    .word L80AB5AC4
    .word L80AB5AD0

.text
glabel EnNiw_Init
/* 00000 80AB5780 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00004 80AB5784 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 00008 80AB5788 AFB20030 */  sw      $s2, 0x0030($sp)
/* 0000C 80AB578C AFB1002C */  sw      $s1, 0x002C($sp)
/* 00010 80AB5790 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00014 80AB5794 AFA50054 */  sw      $a1, 0x0054($sp)
/* 00018 80AB5798 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 0001C 80AB579C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00020 80AB57A0 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00024 80AB57A4 04410003 */  bgez    $v0, .L80AB57B4
/* 00028 80AB57A8 3C0580AC */  lui     $a1, %hi(D_80AB86DC)       ## $a1 = 80AC0000
/* 0002C 80AB57AC A480001C */  sh      $zero, 0x001C($a0)         ## 0000001C
/* 00030 80AB57B0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
.L80AB57B4:
/* 00034 80AB57B4 14410012 */  bne     $v0, $at, .L80AB5800
/* 00038 80AB57B8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0003C 80AB57BC 3C0380AC */  lui     $v1, %hi(D_80AB867C)       ## $v1 = 80AC0000
/* 00040 80AB57C0 2463867C */  addiu   $v1, $v1, %lo(D_80AB867C)  ## $v1 = 80AB867C
/* 00044 80AB57C4 906E0000 */  lbu     $t6, 0x0000($v1)           ## 80AB867C
/* 00048 80AB57C8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0004C 80AB57CC 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 00050 80AB57D0 51C00009 */  beql    $t6, $zero, .L80AB57F8
/* 00054 80AB57D4 A06F0000 */  sb      $t7, 0x0000($v1)           ## 80AB867C
/* 00058 80AB57D8 0C00B55C */  jal     Actor_Kill

/* 0005C 80AB57DC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00060 80AB57E0 3C0480AC */  lui     $a0, %hi(D_80AB8720)       ## $a0 = 80AC0000
/* 00064 80AB57E4 0C00084C */  jal     osSyncPrintf

/* 00068 80AB57E8 24848720 */  addiu   $a0, $a0, %lo(D_80AB8720)  ## $a0 = 80AB8720
/* 0006C 80AB57EC 100000F3 */  beq     $zero, $zero, .L80AB5BBC
/* 00070 80AB57F0 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 00074 80AB57F4 A06F0000 */  sb      $t7, 0x0000($v1)           ## 00000000
.L80AB57F8:
/* 00078 80AB57F8 8642001C */  lh      $v0, 0x001C($s2)           ## 0000001C
/* 0007C 80AB57FC A2580003 */  sb      $t8, 0x0003($s2)           ## 00000003
.L80AB5800:
/* 00080 80AB5800 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00084 80AB5804 14410010 */  bne     $v0, $at, .L80AB5848
/* 00088 80AB5808 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0008C 80AB580C 3C0280AC */  lui     $v0, %hi(D_80AB8680)       ## $v0 = 80AC0000
/* 00090 80AB5810 24428680 */  addiu   $v0, $v0, %lo(D_80AB8680)  ## $v0 = 80AB8680
/* 00094 80AB5814 90590000 */  lbu     $t9, 0x0000($v0)           ## 80AB8680
/* 00098 80AB5818 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 0009C 80AB581C 53200009 */  beql    $t9, $zero, .L80AB5844
/* 000A0 80AB5820 A0480000 */  sb      $t0, 0x0000($v0)           ## 80AB8680
/* 000A4 80AB5824 0C00B55C */  jal     Actor_Kill

/* 000A8 80AB5828 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 000AC 80AB582C 3C0480AC */  lui     $a0, %hi(D_80AB8754)       ## $a0 = 80AC0000
/* 000B0 80AB5830 0C00084C */  jal     osSyncPrintf

/* 000B4 80AB5834 24848754 */  addiu   $a0, $a0, %lo(D_80AB8754)  ## $a0 = 80AB8754
/* 000B8 80AB5838 100000E0 */  beq     $zero, $zero, .L80AB5BBC
/* 000BC 80AB583C 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 000C0 80AB5840 A0480000 */  sb      $t0, 0x0000($v0)           ## 00000000
.L80AB5844:
/* 000C4 80AB5844 A2490003 */  sb      $t1, 0x0003($s2)           ## 00000003
.L80AB5848:
/* 000C8 80AB5848 0C01E037 */  jal     Actor_ProcessInitChain

/* 000CC 80AB584C 24A586DC */  addiu   $a1, $a1, %lo(D_80AB86DC)  ## $a1 = FFFF86DC
/* 000D0 80AB5850 8E4A0004 */  lw      $t2, 0x0004($s2)           ## 00000004
/* 000D4 80AB5854 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 000D8 80AB5858 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 000DC 80AB585C 354B0001 */  ori     $t3, $t2, 0x0001           ## $t3 = 00000001
/* 000E0 80AB5860 AE4B0004 */  sw      $t3, 0x0004($s2)           ## 00000004
/* 000E4 80AB5864 264400B4 */  addiu   $a0, $s2, 0x00B4           ## $a0 = 000000B4
/* 000E8 80AB5868 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 000EC 80AB586C 0C00AC78 */  jal     ActorShape_Init

/* 000F0 80AB5870 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 000F4 80AB5874 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 000F8 80AB5878 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 000FC 80AB587C 264C0190 */  addiu   $t4, $s2, 0x0190           ## $t4 = 00000190
/* 00100 80AB5880 264D01F0 */  addiu   $t5, $s2, 0x01F0           ## $t5 = 000001F0
/* 00104 80AB5884 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 00108 80AB5888 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 0010C 80AB588C AFAD0014 */  sw      $t5, 0x0014($sp)
/* 00110 80AB5890 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 00114 80AB5894 24E700E8 */  addiu   $a3, $a3, 0x00E8           ## $a3 = 060000E8
/* 00118 80AB5898 24C62530 */  addiu   $a2, $a2, 0x2530           ## $a2 = 06002530
/* 0011C 80AB589C 8FA40054 */  lw      $a0, 0x0054($sp)
/* 00120 80AB58A0 0C0291BE */  jal     SkelAnime_InitSV
/* 00124 80AB58A4 2645014C */  addiu   $a1, $s2, 0x014C           ## $a1 = 0000014C
/* 00128 80AB58A8 8FAF0054 */  lw      $t7, 0x0054($sp)
/* 0012C 80AB58AC 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
/* 00130 80AB58B0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00134 80AB58B4 85F800A4 */  lh      $t8, 0x00A4($t7)           ## 000000A4
/* 00138 80AB58B8 3C0280AC */  lui     $v0, %hi(D_80AB8618)       ## $v0 = 80AC0000
/* 0013C 80AB58BC 17010033 */  bne     $t8, $at, .L80AB598C
/* 00140 80AB58C0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00144 80AB58C4 44811000 */  mtc1    $at, $f2                   ## $f2 = 40.00
/* 00148 80AB58C8 24428618 */  addiu   $v0, $v0, %lo(D_80AB8618)  ## $v0 = 80AB8618
.L80AB58CC:
/* 0014C 80AB58CC C6440024 */  lwc1    $f4, 0x0024($s2)           ## 00000024
/* 00150 80AB58D0 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 80AB8618
/* 00154 80AB58D4 46062001 */  sub.s   $f0, $f4, $f6
/* 00158 80AB58D8 46000005 */  abs.s   $f0, $f0
/* 0015C 80AB58DC 4602003C */  c.lt.s  $f0, $f2
/* 00160 80AB58E0 00000000 */  nop
/* 00164 80AB58E4 45020026 */  bc1fl   .L80AB5980
/* 00168 80AB58E8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0016C 80AB58EC C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 00170 80AB58F0 C44A0008 */  lwc1    $f10, 0x0008($v0)          ## 80AB8620
/* 00174 80AB58F4 3C0880AC */  lui     $t0, %hi(D_80AB866C)       ## $t0 = 80AC0000
/* 00178 80AB58F8 2508866C */  addiu   $t0, $t0, %lo(D_80AB866C)  ## $t0 = 80AB866C
/* 0017C 80AB58FC 460A4001 */  sub.s   $f0, $f8, $f10
/* 00180 80AB5900 3C0480AC */  lui     $a0, %hi(D_80AB8788)       ## $a0 = 80AC0000
/* 00184 80AB5904 0010C840 */  sll     $t9, $s0,  1
/* 00188 80AB5908 03288821 */  addu    $s1, $t9, $t0
/* 0018C 80AB590C 46000005 */  abs.s   $f0, $f0
/* 00190 80AB5910 24848788 */  addiu   $a0, $a0, %lo(D_80AB8788)  ## $a0 = 80AB8788
/* 00194 80AB5914 4602003C */  c.lt.s  $f0, $f2
/* 00198 80AB5918 00000000 */  nop
/* 0019C 80AB591C 45020018 */  bc1fl   .L80AB5980
/* 001A0 80AB5920 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
/* 001A4 80AB5924 A65002AA */  sh      $s0, 0x02AA($s2)           ## 000002AA
/* 001A8 80AB5928 864502AA */  lh      $a1, 0x02AA($s2)           ## 000002AA
/* 001AC 80AB592C 0C00084C */  jal     osSyncPrintf

/* 001B0 80AB5930 AFA2003C */  sw      $v0, 0x003C($sp)
/* 001B4 80AB5934 3C0A8016 */  lui     $t2, %hi(gSaveContext+0xf2a)
/* 001B8 80AB5938 954AF58A */  lhu     $t2, %lo(gSaveContext+0xf2a)($t2)
/* 001BC 80AB593C 86290000 */  lh      $t1, 0x0000($s1)           ## 00000000
/* 001C0 80AB5940 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 001C4 80AB5944 44811000 */  mtc1    $at, $f2                   ## $f2 = 40.00
/* 001C8 80AB5948 012A5824 */  and     $t3, $t1, $t2
/* 001CC 80AB594C 1160000B */  beq     $t3, $zero, .L80AB597C
/* 001D0 80AB5950 8FA2003C */  lw      $v0, 0x003C($sp)
/* 001D4 80AB5954 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 001D8 80AB5958 44818000 */  mtc1    $at, $f16                  ## $f16 = 300.00
/* 001DC 80AB595C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 001E0 80AB5960 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 001E4 80AB5964 3C0180AC */  lui     $at, %hi(D_80AB8A50)       ## $at = 80AC0000
/* 001E8 80AB5968 E6500024 */  swc1    $f16, 0x0024($s2)          ## 00000024
/* 001EC 80AB596C E6520028 */  swc1    $f18, 0x0028($s2)          ## 00000028
/* 001F0 80AB5970 C4248A50 */  lwc1    $f4, %lo(D_80AB8A50)($at)
/* 001F4 80AB5974 A640001C */  sh      $zero, 0x001C($s2)         ## 0000001C
/* 001F8 80AB5978 E644002C */  swc1    $f4, 0x002C($s2)           ## 0000002C
.L80AB597C:
/* 001FC 80AB597C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000003
.L80AB5980:
/* 00200 80AB5980 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00204 80AB5984 1601FFD1 */  bne     $s0, $at, .L80AB58CC
/* 00208 80AB5988 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = 0000000C
.L80AB598C:
/* 0020C 80AB598C 26500024 */  addiu   $s0, $s2, 0x0024           ## $s0 = 00000024
/* 00210 80AB5990 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000024
/* 00214 80AB5994 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00218 80AB5998 264402AC */  addiu   $a0, $s2, 0x02AC           ## $a0 = 000002AC
/* 0021C 80AB599C 3C118016 */  lui     $s1, %hi(gSaveContext)
/* 00220 80AB59A0 2631E660 */  addiu   $s1, %lo(gSaveContext)
/* 00224 80AB59A4 264402B8 */  addiu   $a0, $s2, 0x02B8           ## $a0 = 000002B8
/* 00228 80AB59A8 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 0022C 80AB59AC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000024
/* 00230 80AB59B0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00234 80AB59B4 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00238 80AB59B8 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 0023C 80AB59BC 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00240 80AB59C0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00244 80AB59C4 0C00B58B */  jal     Actor_SetScale

/* 00248 80AB59C8 E6460304 */  swc1    $f6, 0x0304($s2)           ## 00000304
/* 0024C 80AB59CC 3C0180AC */  lui     $at, %hi(D_80AB8A54)       ## $at = 80AC0000
/* 00250 80AB59D0 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 00254 80AB59D4 C42C8A54 */  lwc1    $f12, %lo(D_80AB8A54)($at)
/* 00258 80AB59D8 4600020D */  trunc.w.s $f8, $f0
/* 0025C 80AB59DC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00260 80AB59E0 440F4000 */  mfc1    $t7, $f8
/* 00264 80AB59E4 00000000 */  nop
/* 00268 80AB59E8 25F80005 */  addiu   $t8, $t7, 0x0005           ## $t8 = 00000005
/* 0026C 80AB59EC A65802A4 */  sh      $t8, 0x02A4($s2)           ## 000002A4
/* 00270 80AB59F0 865902A4 */  lh      $t9, 0x02A4($s2)           ## 000002A4
/* 00274 80AB59F4 07230003 */  bgezl   $t9, .L80AB5A04
/* 00278 80AB59F8 8649001C */  lh      $t1, 0x001C($s2)           ## 0000001C
/* 0027C 80AB59FC A64802A4 */  sh      $t0, 0x02A4($s2)           ## 000002A4
/* 00280 80AB5A00 8649001C */  lh      $t1, 0x001C($s2)           ## 0000001C
.L80AB5A04:
/* 00284 80AB5A04 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 00288 80AB5A08 2D41000E */  sltiu   $at, $t2, 0x000E
/* 0028C 80AB5A0C 10200039 */  beq     $at, $zero, .L80AB5AF4
/* 00290 80AB5A10 000A5080 */  sll     $t2, $t2,  2
/* 00294 80AB5A14 3C0180AC */  lui     $at, %hi(jtbl_80AB8A58)       ## $at = 80AC0000
/* 00298 80AB5A18 002A0821 */  addu    $at, $at, $t2
/* 0029C 80AB5A1C 8C2A8A58 */  lw      $t2, %lo(jtbl_80AB8A58)($at)
/* 002A0 80AB5A20 01400008 */  jr      $t2
/* 002A4 80AB5A24 00000000 */  nop
glabel L80AB5A28
/* 002A8 80AB5A28 8E2B0010 */  lw      $t3, 0x0010($s1)           ## 8015E670
/* 002AC 80AB5A2C 55600032 */  bnel    $t3, $zero, .L80AB5AF8
/* 002B0 80AB5A30 2650030C */  addiu   $s0, $s2, 0x030C           ## $s0 = 0000030C
/* 002B4 80AB5A34 0C00B55C */  jal     Actor_Kill

/* 002B8 80AB5A38 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 002BC 80AB5A3C 1000002E */  beq     $zero, $zero, .L80AB5AF8
/* 002C0 80AB5A40 2650030C */  addiu   $s0, $s2, 0x030C           ## $s0 = 0000030C
glabel L80AB5A44
/* 002C4 80AB5A44 962C0ED6 */  lhu     $t4, 0x0ED6($s1)           ## 8015F536
/* 002C8 80AB5A48 318D0010 */  andi    $t5, $t4, 0x0010           ## $t5 = 00000000
/* 002CC 80AB5A4C 51A0002A */  beql    $t5, $zero, .L80AB5AF8
/* 002D0 80AB5A50 2650030C */  addiu   $s0, $s2, 0x030C           ## $s0 = 0000030C
/* 002D4 80AB5A54 0C00B55C */  jal     Actor_Kill

/* 002D8 80AB5A58 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 002DC 80AB5A5C 10000026 */  beq     $zero, $zero, .L80AB5AF8
/* 002E0 80AB5A60 2650030C */  addiu   $s0, $s2, 0x030C           ## $s0 = 0000030C
glabel L80AB5A64
/* 002E4 80AB5A64 962E0ED6 */  lhu     $t6, 0x0ED6($s1)           ## 8015F536
/* 002E8 80AB5A68 31CF0010 */  andi    $t7, $t6, 0x0010           ## $t7 = 00000000
/* 002EC 80AB5A6C 55E00022 */  bnel    $t7, $zero, .L80AB5AF8
/* 002F0 80AB5A70 2650030C */  addiu   $s0, $s2, 0x030C           ## $s0 = 0000030C
/* 002F4 80AB5A74 0C00B55C */  jal     Actor_Kill

/* 002F8 80AB5A78 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 002FC 80AB5A7C 1000001E */  beq     $zero, $zero, .L80AB5AF8
/* 00300 80AB5A80 2650030C */  addiu   $s0, $s2, 0x030C           ## $s0 = 0000030C
glabel L80AB5A84
/* 00304 80AB5A84 96380ED6 */  lhu     $t8, 0x0ED6($s1)           ## 8015F536
/* 00308 80AB5A88 33190100 */  andi    $t9, $t8, 0x0100           ## $t9 = 00000000
/* 0030C 80AB5A8C 5320001A */  beql    $t9, $zero, .L80AB5AF8
/* 00310 80AB5A90 2650030C */  addiu   $s0, $s2, 0x030C           ## $s0 = 0000030C
/* 00314 80AB5A94 0C00B55C */  jal     Actor_Kill

/* 00318 80AB5A98 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0031C 80AB5A9C 10000016 */  beq     $zero, $zero, .L80AB5AF8
/* 00320 80AB5AA0 2650030C */  addiu   $s0, $s2, 0x030C           ## $s0 = 0000030C
glabel L80AB5AA4
/* 00324 80AB5AA4 96280ED6 */  lhu     $t0, 0x0ED6($s1)           ## 8015F536
/* 00328 80AB5AA8 31090100 */  andi    $t1, $t0, 0x0100           ## $t1 = 00000000
/* 0032C 80AB5AAC 55200012 */  bnel    $t1, $zero, .L80AB5AF8
/* 00330 80AB5AB0 2650030C */  addiu   $s0, $s2, 0x030C           ## $s0 = 0000030C
/* 00334 80AB5AB4 0C00B55C */  jal     Actor_Kill

/* 00338 80AB5AB8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0033C 80AB5ABC 1000000E */  beq     $zero, $zero, .L80AB5AF8
/* 00340 80AB5AC0 2650030C */  addiu   $s0, $s2, 0x030C           ## $s0 = 0000030C
glabel L80AB5AC4
/* 00344 80AB5AC4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00348 80AB5AC8 00000000 */  nop
/* 0034C 80AB5ACC E64A006C */  swc1    $f10, 0x006C($s2)          ## 0000006C
glabel L80AB5AD0
/* 00350 80AB5AD0 8E4A0004 */  lw      $t2, 0x0004($s2)           ## 00000004
/* 00354 80AB5AD4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00358 80AB5AD8 A24000AE */  sb      $zero, 0x00AE($s2)         ## 000000AE
/* 0035C 80AB5ADC 01415824 */  and     $t3, $t2, $at
/* 00360 80AB5AE0 10000004 */  beq     $zero, $zero, .L80AB5AF4
/* 00364 80AB5AE4 AE4B0004 */  sw      $t3, 0x0004($s2)           ## 00000004
glabel L80AB5AE8
/* 00368 80AB5AE8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0036C 80AB5AEC 00000000 */  nop
/* 00370 80AB5AF0 E650006C */  swc1    $f16, 0x006C($s2)          ## 0000006C
glabel L80AB5AF4
.L80AB5AF4:
/* 00374 80AB5AF4 2650030C */  addiu   $s0, $s2, 0x030C           ## $s0 = 0000030C
.L80AB5AF8:
/* 00378 80AB5AF8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000030C
/* 0037C 80AB5AFC 0C0170D9 */  jal     Collider_InitCylinder

/* 00380 80AB5B00 8FA40054 */  lw      $a0, 0x0054($sp)
/* 00384 80AB5B04 8642001C */  lh      $v0, 0x001C($s2)           ## 0000001C
/* 00388 80AB5B08 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0038C 80AB5B0C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000030C
/* 00390 80AB5B10 10410008 */  beq     $v0, $at, .L80AB5B34
/* 00394 80AB5B14 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 00398 80AB5B18 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 0039C 80AB5B1C 10410007 */  beq     $v0, $at, .L80AB5B3C
/* 003A0 80AB5B20 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 003A4 80AB5B24 10410005 */  beq     $v0, $at, .L80AB5B3C
/* 003A8 80AB5B28 8FA40054 */  lw      $a0, 0x0054($sp)
/* 003AC 80AB5B2C 10000014 */  beq     $zero, $zero, .L80AB5B80
/* 003B0 80AB5B30 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000030C
.L80AB5B34:
/* 003B4 80AB5B34 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 003B8 80AB5B38 A24C00AE */  sb      $t4, 0x00AE($s2)           ## 000000AE
.L80AB5B3C:
/* 003BC 80AB5B3C 3C0780AC */  lui     $a3, %hi(D_80AB86B0)       ## $a3 = 80AC0000
/* 003C0 80AB5B40 24E786B0 */  addiu   $a3, $a3, %lo(D_80AB86B0)  ## $a3 = 80AB86B0
/* 003C4 80AB5B44 0C01712B */  jal     Collider_SetCylinder

/* 003C8 80AB5B48 8FA40054 */  lw      $a0, 0x0054($sp)
/* 003CC 80AB5B4C 8FAD0054 */  lw      $t5, 0x0054($sp)
/* 003D0 80AB5B50 24010034 */  addiu   $at, $zero, 0x0034         ## $at = 00000034
/* 003D4 80AB5B54 85AE00A4 */  lh      $t6, 0x00A4($t5)           ## 000000A4
/* 003D8 80AB5B58 15C1000D */  bne     $t6, $at, .L80AB5B90
/* 003DC 80AB5B5C 00000000 */  nop
/* 003E0 80AB5B60 962F0ED6 */  lhu     $t7, 0x0ED6($s1)           ## 8015F536
/* 003E4 80AB5B64 31F84000 */  andi    $t8, $t7, 0x4000           ## $t8 = 00000000
/* 003E8 80AB5B68 17000009 */  bne     $t8, $zero, .L80AB5B90
/* 003EC 80AB5B6C 00000000 */  nop
/* 003F0 80AB5B70 0C00B55C */  jal     Actor_Kill

/* 003F4 80AB5B74 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 003F8 80AB5B78 10000005 */  beq     $zero, $zero, .L80AB5B90
/* 003FC 80AB5B7C 00000000 */  nop
.L80AB5B80:
/* 00400 80AB5B80 3C0780AC */  lui     $a3, %hi(D_80AB8684)       ## $a3 = 80AC0000
/* 00404 80AB5B84 24E78684 */  addiu   $a3, $a3, %lo(D_80AB8684)  ## $a3 = 80AB8684
/* 00408 80AB5B88 0C01712B */  jal     Collider_SetCylinder

/* 0040C 80AB5B8C 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
.L80AB5B90:
/* 00410 80AB5B90 3C0480AC */  lui     $a0, %hi(D_80AB87A4)       ## $a0 = 80AC0000
/* 00414 80AB5B94 248487A4 */  addiu   $a0, $a0, %lo(D_80AB87A4)  ## $a0 = 80AB87A4
/* 00418 80AB5B98 0C00084C */  jal     osSyncPrintf

/* 0041C 80AB5B9C 8645001C */  lh      $a1, 0x001C($s2)           ## 0000001C
/* 00420 80AB5BA0 3C0480AC */  lui     $a0, %hi(D_80AB87D4)       ## $a0 = 80AC0000
/* 00424 80AB5BA4 0C00084C */  jal     osSyncPrintf

/* 00428 80AB5BA8 248487D4 */  addiu   $a0, $a0, %lo(D_80AB87D4)  ## $a0 = 80AB87D4
/* 0042C 80AB5BAC 3C1980AB */  lui     $t9, %hi(func_80AB627C)    ## $t9 = 80AB0000
/* 00430 80AB5BB0 2739627C */  addiu   $t9, $t9, %lo(func_80AB627C) ## $t9 = 80AB627C
/* 00434 80AB5BB4 AE590250 */  sw      $t9, 0x0250($s2)           ## 00000250
/* 00438 80AB5BB8 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80AB5BBC:
/* 0043C 80AB5BBC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00440 80AB5BC0 8FB1002C */  lw      $s1, 0x002C($sp)
/* 00444 80AB5BC4 8FB20030 */  lw      $s2, 0x0030($sp)
/* 00448 80AB5BC8 03E00008 */  jr      $ra
/* 0044C 80AB5BCC 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
