.rdata
glabel D_809F0560
    .asciz "デクの実売り            "
    .balign 4

glabel D_809F057C
    .asciz "デクの棒売り            "
    .balign 4

glabel D_809F0598
    .asciz "ハートの欠片売り        "
    .balign 4

glabel D_809F05B4
    .asciz "デクの種売り            "
    .balign 4

glabel D_809F05D0
    .asciz "デクの盾売り            "
    .balign 4

glabel D_809F05EC
    .asciz "バクダン売り            "
    .balign 4

glabel D_809F0608
    .asciz "矢売り                  "
    .balign 4

glabel D_809F0624
    .asciz "赤のくすり売り          "
    .balign 4

glabel D_809F0640
    .asciz "緑のくすり売り          "
    .balign 4

glabel D_809F065C
    .asciz "デクの棒持てる数を増やす"
    .balign 4

glabel D_809F0678
    .asciz "デクの実持てる数を増やす"
    .balign 4

glabel D_809F0694
    .asciz "\x1B[31m引数エラー（売りナッツ）[ arg_data = %d ]\x1B[m\n"
    .balign 4

glabel D_809F06C8
    .asciz "\x1B[32m◆◆◆ 売りナッツ『%s』 ◆◆◆\x1B[m\n"
    .balign 4

.text
glabel EnDns_Init
/* 00000 809EF350 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 809EF354 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00008 809EF358 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0000C 809EF35C AFA50044 */  sw      $a1, 0x0044($sp)
/* 00010 809EF360 8486001C */  lh      $a2, 0x001C($a0)           ## 0000001C
/* 00014 809EF364 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 809EF368 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0001C 809EF36C 04C10009 */  bgez    $a2, .L809EF394
/* 00020 809EF370 3C04809F */  lui     $a0, %hi(D_809F06C8)       ## $a0 = 809F0000
/* 00024 809EF374 3C04809F */  lui     $a0, %hi(D_809F0694)       ## $a0 = 809F0000
/* 00028 809EF378 24840694 */  addiu   $a0, $a0, %lo(D_809F0694)  ## $a0 = 809F0694
/* 0002C 809EF37C 0C00084C */  jal     osSyncPrintf

/* 00030 809EF380 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00034 809EF384 0C00B55C */  jal     Actor_Kill

/* 00038 809EF388 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0003C 809EF38C 10000055 */  beq     $zero, $zero, .L809EF4E4
/* 00040 809EF390 8FBF002C */  lw      $ra, 0x002C($sp)
.L809EF394:
/* 00044 809EF394 14C1000D */  bne     $a2, $at, .L809EF3CC
/* 00048 809EF398 248406C8 */  addiu   $a0, $a0, %lo(D_809F06C8)  ## $a0 = 000006C8
/* 0004C 809EF39C 3C0E8016 */  lui     $t6, %hi(gSaveContext+4)
/* 00050 809EF3A0 8DCEE664 */  lw      $t6, %lo(gSaveContext+4)($t6)
/* 00054 809EF3A4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00058 809EF3A8 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
/* 0005C 809EF3AC 11C00003 */  beq     $t6, $zero, .L809EF3BC
/* 00060 809EF3B0 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00064 809EF3B4 10000001 */  beq     $zero, $zero, .L809EF3BC
/* 00068 809EF3B8 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L809EF3BC:
/* 0006C 809EF3BC 54410004 */  bnel    $v0, $at, .L809EF3D0
/* 00070 809EF3C0 0006C080 */  sll     $t8, $a2,  2
/* 00074 809EF3C4 A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 00078 809EF3C8 8606001C */  lh      $a2, 0x001C($s0)           ## 0000001C
.L809EF3CC:
/* 0007C 809EF3CC 0006C080 */  sll     $t8, $a2,  2
.L809EF3D0:
/* 00080 809EF3D0 3C05809F */  lui     $a1, %hi(D_809F0424)       ## $a1 = 809F0000
/* 00084 809EF3D4 00B82821 */  addu    $a1, $a1, $t8
/* 00088 809EF3D8 0C00084C */  jal     osSyncPrintf

/* 0008C 809EF3DC 8CA50424 */  lw      $a1, %lo(D_809F0424)($a1)
/* 00090 809EF3E0 3C05809F */  lui     $a1, %hi(D_809F052C)       ## $a1 = 809F0000
/* 00094 809EF3E4 24A5052C */  addiu   $a1, $a1, %lo(D_809F052C)  ## $a1 = 809F052C
/* 00098 809EF3E8 0C01E037 */  jal     Actor_ProcessInitChain

/* 0009C 809EF3EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000A0 809EF3F0 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 000A4 809EF3F4 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 000A8 809EF3F8 26190190 */  addiu   $t9, $s0, 0x0190           ## $t9 = 00000190
/* 000AC 809EF3FC 260801FC */  addiu   $t0, $s0, 0x01FC           ## $t0 = 000001FC
/* 000B0 809EF400 24090012 */  addiu   $t1, $zero, 0x0012         ## $t1 = 00000012
/* 000B4 809EF404 AFA90018 */  sw      $t1, 0x0018($sp)
/* 000B8 809EF408 AFA80014 */  sw      $t0, 0x0014($sp)
/* 000BC 809EF40C AFB90010 */  sw      $t9, 0x0010($sp)
/* 000C0 809EF410 24E709A0 */  addiu   $a3, $a3, 0x09A0           ## $a3 = 060009A0
/* 000C4 809EF414 24C641A8 */  addiu   $a2, $a2, 0x41A8           ## $a2 = 060041A8
/* 000C8 809EF418 8FA40044 */  lw      $a0, 0x0044($sp)
/* 000CC 809EF41C 0C0291BE */  jal     SkelAnime_InitSV
/* 000D0 809EF420 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 000D4 809EF424 2605026C */  addiu   $a1, $s0, 0x026C           ## $a1 = 0000026C
/* 000D8 809EF428 AFA50034 */  sw      $a1, 0x0034($sp)
/* 000DC 809EF42C 0C0170D9 */  jal     Collider_InitCylinder

/* 000E0 809EF430 8FA40044 */  lw      $a0, 0x0044($sp)
/* 000E4 809EF434 3C07809F */  lui     $a3, %hi(D_809F03E0)       ## $a3 = 809F0000
/* 000E8 809EF438 8FA50034 */  lw      $a1, 0x0034($sp)
/* 000EC 809EF43C 24E703E0 */  addiu   $a3, $a3, %lo(D_809F03E0)  ## $a3 = 809F03E0
/* 000F0 809EF440 8FA40044 */  lw      $a0, 0x0044($sp)
/* 000F4 809EF444 0C017114 */  jal     Collider_SetCylinder_Set3
/* 000F8 809EF448 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000FC 809EF44C 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00100 809EF450 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00104 809EF454 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00108 809EF458 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0010C 809EF45C 0C00AC78 */  jal     ActorShape_Init

/* 00110 809EF460 3C07420C */  lui     $a3, 0x420C                ## $a3 = 420C0000
/* 00114 809EF464 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 00118 809EF468 3C0C809F */  lui     $t4, %hi(D_809F040C)       ## $t4 = 809F0000
/* 0011C 809EF46C 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00120 809EF470 000A5840 */  sll     $t3, $t2,  1
/* 00124 809EF474 018B6021 */  addu    $t4, $t4, $t3
/* 00128 809EF478 958C040C */  lhu     $t4, %lo(D_809F040C)($t4)
/* 0012C 809EF47C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00130 809EF480 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00134 809EF484 0C00B58B */  jal     Actor_SetScale

/* 00138 809EF488 A60C010E */  sh      $t4, 0x010E($s0)           ## 0000010E
/* 0013C 809EF48C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00140 809EF490 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00144 809EF494 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00148 809EF498 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 0014C 809EF49C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00150 809EF4A0 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 00154 809EF4A4 3C18809F */  lui     $t8, %hi(D_809F0500)       ## $t8 = 809F0000
/* 00158 809EF4A8 000E7880 */  sll     $t7, $t6,  2
/* 0015C 809EF4AC A20D00AE */  sb      $t5, 0x00AE($s0)           ## 000000AE
/* 00160 809EF4B0 A20202BB */  sb      $v0, 0x02BB($s0)           ## 000002BB
/* 00164 809EF4B4 A20202BC */  sb      $v0, 0x02BC($s0)           ## 000002BC
/* 00168 809EF4B8 A20002BD */  sb      $zero, 0x02BD($s0)         ## 000002BD
/* 0016C 809EF4BC 030FC021 */  addu    $t8, $t8, $t7
/* 00170 809EF4C0 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 00174 809EF4C4 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 00178 809EF4C8 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 0017C 809EF4CC 8F180500 */  lw      $t8, %lo(D_809F0500)($t8)
/* 00180 809EF4D0 3C19809F */  lui     $t9, %hi(func_809EFB84)    ## $t9 = 809F0000
/* 00184 809EF4D4 2739FB84 */  addiu   $t9, $t9, %lo(func_809EFB84) ## $t9 = 809EFB84
/* 00188 809EF4D8 AE190268 */  sw      $t9, 0x0268($s0)           ## 00000268
/* 0018C 809EF4DC AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00190 809EF4E0 8FBF002C */  lw      $ra, 0x002C($sp)
.L809EF4E4:
/* 00194 809EF4E4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00198 809EF4E8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0019C 809EF4EC 03E00008 */  jr      $ra
/* 001A0 809EF4F0 00000000 */  nop
