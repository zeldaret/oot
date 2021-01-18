.rdata
glabel D_80A66800
    .asciz "this->race.rider != NULL"
    .balign 4

glabel D_80A6681C
    .asciz "../z_en_horse.c"
    .balign 4

.late_rodata
glabel D_80A6687C
 .word 0x41411EB8

.text
glabel EnHorse_Init
/* 00DE0 80A5C0D0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00DE4 80A5C0D4 AFB10030 */  sw      $s1, 0x0030($sp)
/* 00DE8 80A5C0D8 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 00DEC 80A5C0DC 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 00DF0 80A5C0E0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00DF4 80A5C0E4 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 00DF8 80A5C0E8 AFB0002C */  sw      $s0, 0x002C($sp)
/* 00DFC 80A5C0EC 3C0580A6 */  lui     $a1, %hi(D_80A66664)       ## $a1 = 80A60000
/* 00E00 80A5C0F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E04 80A5C0F4 24A56664 */  addiu   $a1, $a1, %lo(D_80A66664)  ## $a1 = 80A66664
/* 00E08 80A5C0F8 0C01E037 */  jal     Actor_ProcessInitChain

/* 00E0C 80A5C0FC A5C00E60 */  sh      $zero, 0x0E60($t6)         ## 80160E60
/* 00E10 80A5C100 0C297032 */  jal     func_80A5C0C8
/* 00E14 80A5C104 260403C8 */  addiu   $a0, $s0, 0x03C8           ## $a0 = 000003C8
/* 00E18 80A5C108 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 00E1C 80A5C10C 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 00E20 80A5C110 26180024 */  addiu   $t8, $s0, 0x0024           ## $t8 = 00000024
/* 00E24 80A5C114 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00E28 80A5C118 A5E005BE */  sh      $zero, 0x05BE($t7)         ## 801605BE
/* 00E2C 80A5C11C AFB8003C */  sw      $t8, 0x003C($sp)
/* 00E30 80A5C120 8F090000 */  lw      $t1, 0x0000($t8)           ## 00000024
/* 00E34 80A5C124 44813000 */  mtc1    $at, $f6                   ## $f6 = 70.00
/* 00E38 80A5C128 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00E3C 80A5C12C AE090258 */  sw      $t1, 0x0258($s0)           ## 00000258
/* 00E40 80A5C130 8F080004 */  lw      $t0, 0x0004($t8)           ## 00000028
/* 00E44 80A5C134 AE08025C */  sw      $t0, 0x025C($s0)           ## 0000025C
/* 00E48 80A5C138 C604025C */  lwc1    $f4, 0x025C($s0)           ## 0000025C
/* 00E4C 80A5C13C 8F090008 */  lw      $t1, 0x0008($t8)           ## 0000002C
/* 00E50 80A5C140 AE000150 */  sw      $zero, 0x0150($s0)         ## 00000150
/* 00E54 80A5C144 46062200 */  add.s   $f8, $f4, $f6
/* 00E58 80A5C148 AE000154 */  sw      $zero, 0x0154($s0)         ## 00000154
/* 00E5C 80A5C14C AE090260 */  sw      $t1, 0x0260($s0)           ## 00000260
/* 00E60 80A5C150 E608025C */  swc1    $f8, 0x025C($s0)           ## 0000025C
/* 00E64 80A5C154 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 00E68 80A5C158 844A055C */  lh      $t2, 0x055C($v0)           ## 8016055C
/* 00E6C 80A5C15C 15400002 */  bne     $t2, $zero, .L80A5C168
/* 00E70 80A5C160 240B0046 */  addiu   $t3, $zero, 0x0046         ## $t3 = 00000046
/* 00E74 80A5C164 A44B055C */  sh      $t3, 0x055C($v0)           ## 8016055C
.L80A5C168:
/* 00E78 80A5C168 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00E7C 80A5C16C 304C8000 */  andi    $t4, $v0, 0x8000           ## $t4 = 00000000
/* 00E80 80A5C170 11800021 */  beq     $t4, $zero, .L80A5C1F8
/* 00E84 80A5C174 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 00E88 80A5C178 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 00E8C 80A5C17C 00416824 */  and     $t5, $v0, $at
/* 00E90 80A5C180 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00E94 80A5C184 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00E98 80A5C188 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00E9C 80A5C18C A60D001C */  sh      $t5, 0x001C($s0)           ## 0000001C
/* 00EA0 80A5C190 AE0E0158 */  sw      $t6, 0x0158($s0)           ## 00000158
/* 00EA4 80A5C194 02212021 */  addu    $a0, $s1, $at
/* 00EA8 80A5C198 AFA40038 */  sw      $a0, 0x0038($sp)
/* 00EAC 80A5C19C 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00EB0 80A5C1A0 240500D2 */  addiu   $a1, $zero, 0x00D2         ## $a1 = 000000D2
/* 00EB4 80A5C1A4 00027E00 */  sll     $t7, $v0, 24
/* 00EB8 80A5C1A8 000FC603 */  sra     $t8, $t7, 24
/* 00EBC 80A5C1AC 07010005 */  bgez    $t8, .L80A5C1C4
/* 00EC0 80A5C1B0 A202015C */  sb      $v0, 0x015C($s0)           ## 0000015C
/* 00EC4 80A5C1B4 0C00B55C */  jal     Actor_Kill

/* 00EC8 80A5C1B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ECC 80A5C1BC 10000192 */  beq     $zero, $zero, .L80A5C808
/* 00ED0 80A5C1C0 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80A5C1C4:
/* 00ED4 80A5C1C4 8FA40038 */  lw      $a0, 0x0038($sp)
.L80A5C1C8:
/* 00ED8 80A5C1C8 0C026062 */  jal     Object_IsLoaded

/* 00EDC 80A5C1CC 8205015C */  lb      $a1, 0x015C($s0)           ## 0000015C
/* 00EE0 80A5C1D0 5040FFFD */  beql    $v0, $zero, .L80A5C1C8
/* 00EE4 80A5C1D4 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00EE8 80A5C1D8 8219015C */  lb      $t9, 0x015C($s0)           ## 0000015C
/* 00EEC 80A5C1DC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00EF0 80A5C1E0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00EF4 80A5C1E4 0C00B591 */  jal     Actor_SetObjectDependency

/* 00EF8 80A5C1E8 A219001E */  sb      $t9, 0x001E($s0)           ## 0000001E
/* 00EFC 80A5C1EC 2408000C */  addiu   $t0, $zero, 0x000C         ## $t0 = 0000000C
/* 00F00 80A5C1F0 10000004 */  beq     $zero, $zero, .L80A5C204
/* 00F04 80A5C1F4 AE080208 */  sw      $t0, 0x0208($s0)           ## 00000208
.L80A5C1F8:
/* 00F08 80A5C1F8 2409000E */  addiu   $t1, $zero, 0x000E         ## $t1 = 0000000E
/* 00F0C 80A5C1FC AE000158 */  sw      $zero, 0x0158($s0)         ## 00000158
/* 00F10 80A5C200 AE090208 */  sw      $t1, 0x0208($s0)           ## 00000208
.L80A5C204:
/* 00F14 80A5C204 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 00F18 80A5C208 24017FFF */  addiu   $at, $zero, 0x7FFF         ## $at = 00007FFF
/* 00F1C 80A5C20C 15410002 */  bne     $t2, $at, .L80A5C218
/* 00F20 80A5C210 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00F24 80A5C214 A60B001C */  sh      $t3, 0x001C($s0)           ## 0000001C
.L80A5C218:
/* 00F28 80A5C218 862200A4 */  lh      $v0, 0x00A4($s1)           ## 000000A4
/* 00F2C 80A5C21C 2401004C */  addiu   $at, $zero, 0x004C         ## $at = 0000004C
/* 00F30 80A5C220 14410003 */  bne     $v0, $at, .L80A5C230
/* 00F34 80A5C224 3C0C0001 */  lui     $t4, 0x0001                ## $t4 = 00010000
/* 00F38 80A5C228 1000003B */  beq     $zero, $zero, .L80A5C318
/* 00F3C 80A5C22C AE0C01F0 */  sw      $t4, 0x01F0($s0)           ## 000001F0
.L80A5C230:
/* 00F40 80A5C230 2401005D */  addiu   $at, $zero, 0x005D         ## $at = 0000005D
/* 00F44 80A5C234 54410009 */  bnel    $v0, $at, .L80A5C25C
/* 00F48 80A5C238 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00F4C 80A5C23C 8E0D0158 */  lw      $t5, 0x0158($s0)           ## 00000158
/* 00F50 80A5C240 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F54 80A5C244 3C0E0005 */  lui     $t6, 0x0005                ## $t6 = 00050000
/* 00F58 80A5C248 55A10004 */  bnel    $t5, $at, .L80A5C25C
/* 00F5C 80A5C24C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00F60 80A5C250 10000031 */  beq     $zero, $zero, .L80A5C318
/* 00F64 80A5C254 AE0E01F0 */  sw      $t6, 0x01F0($s0)           ## 000001F0
/* 00F68 80A5C258 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80A5C25C:
/* 00F6C 80A5C25C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00F70 80A5C260 3C0F000B */  lui     $t7, 0x000B                ## $t7 = 000B0000
/* 00F74 80A5C264 54410004 */  bnel    $v0, $at, .L80A5C278
/* 00F78 80A5C268 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00F7C 80A5C26C 1000002A */  beq     $zero, $zero, .L80A5C318
/* 00F80 80A5C270 AE0F01F0 */  sw      $t7, 0x01F0($s0)           ## 000001F0
/* 00F84 80A5C274 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
.L80A5C278:
/* 00F88 80A5C278 14410021 */  bne     $v0, $at, .L80A5C300
/* 00F8C 80A5C27C 3C18000A */  lui     $t8, 0x000A                ## $t8 = 000A0000
/* 00F90 80A5C280 AE1801F0 */  sw      $t8, 0x01F0($s0)           ## 000001F0
/* 00F94 80A5C284 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 00F98 80A5C288 24040018 */  addiu   $a0, $zero, 0x0018         ## $a0 = 00000018
/* 00F9C 80A5C28C 14400006 */  bne     $v0, $zero, .L80A5C2A8
/* 00FA0 80A5C290 3C198016 */  lui     $t9, %hi(gGameInfo)
/* 00FA4 80A5C294 8F39FA90 */  lw      $t9, %lo(gGameInfo)($t9)
/* 00FA8 80A5C298 3C0D8016 */  lui     $t5, %hi(gSaveContext+0x13fa)
/* 00FAC 80A5C29C 87280556 */  lh      $t0, 0x0556($t9)           ## 80160556
/* 00FB0 80A5C2A0 1100000A */  beq     $t0, $zero, .L80A5C2CC
/* 00FB4 80A5C2A4 00000000 */  nop
.L80A5C2A8:
/* 00FB8 80A5C2A8 8E0901F0 */  lw      $t1, 0x01F0($s0)           ## 000001F0
/* 00FBC 80A5C2AC 3C01FFFD */  lui     $at, 0xFFFD                ## $at = FFFD0000
/* 00FC0 80A5C2B0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFDFFFF
/* 00FC4 80A5C2B4 01215024 */  and     $t2, $t1, $at
/* 00FC8 80A5C2B8 3C010400 */  lui     $at, 0x0400                ## $at = 04000000
/* 00FCC 80A5C2BC AE0A01F0 */  sw      $t2, 0x01F0($s0)           ## 000001F0
/* 00FD0 80A5C2C0 01416025 */  or      $t4, $t2, $at              ## $t4 = 04000000
/* 00FD4 80A5C2C4 10000014 */  beq     $zero, $zero, .L80A5C318
/* 00FD8 80A5C2C8 AE0C01F0 */  sw      $t4, 0x01F0($s0)           ## 000001F0
.L80A5C2CC:
/* 00FDC 80A5C2CC 95ADFA5A */  lhu     $t5, %lo(gSaveContext+0x13fa)($t5)
/* 00FE0 80A5C2D0 31AE0040 */  andi    $t6, $t5, 0x0040           ## $t6 = 00000000
/* 00FE4 80A5C2D4 51C00011 */  beql    $t6, $zero, .L80A5C31C
/* 00FE8 80A5C2D8 862900A4 */  lh      $t1, 0x00A4($s1)           ## 000000A4
/* 00FEC 80A5C2DC 8E0F0158 */  lw      $t7, 0x0158($s0)           ## 00000158
/* 00FF0 80A5C2E0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00FF4 80A5C2E4 55E1000D */  bnel    $t7, $at, .L80A5C31C
/* 00FF8 80A5C2E8 862900A4 */  lh      $t1, 0x00A4($s1)           ## 000000A4
/* 00FFC 80A5C2EC 8E1801F0 */  lw      $t8, 0x01F0($s0)           ## 000001F0
/* 01000 80A5C2F0 3C010030 */  lui     $at, 0x0030                ## $at = 00300000
/* 01004 80A5C2F4 0301C825 */  or      $t9, $t8, $at              ## $t9 = 00300000
/* 01008 80A5C2F8 10000007 */  beq     $zero, $zero, .L80A5C318
/* 0100C 80A5C2FC AE1901F0 */  sw      $t9, 0x01F0($s0)           ## 000001F0
.L80A5C300:
/* 01010 80A5C300 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01014 80A5C304 14410003 */  bne     $v0, $at, .L80A5C314
/* 01018 80A5C308 24080080 */  addiu   $t0, $zero, 0x0080         ## $t0 = 00000080
/* 0101C 80A5C30C 10000002 */  beq     $zero, $zero, .L80A5C318
/* 01020 80A5C310 AE0801F0 */  sw      $t0, 0x01F0($s0)           ## 000001F0
.L80A5C314:
/* 01024 80A5C314 AE0001F0 */  sw      $zero, 0x01F0($s0)         ## 000001F0
.L80A5C318:
/* 01028 80A5C318 862900A4 */  lh      $t1, 0x00A4($s1)           ## 000000A4
.L80A5C31C:
/* 0102C 80A5C31C 24010063 */  addiu   $at, $zero, 0x0063         ## $at = 00000063
/* 01030 80A5C320 15210012 */  bne     $t1, $at, .L80A5C36C
/* 01034 80A5C324 3C0A8016 */  lui     $t2, %hi(gSaveContext+0x13fa)
/* 01038 80A5C328 954AFA5A */  lhu     $t2, %lo(gSaveContext+0x13fa)($t2)
/* 0103C 80A5C32C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01040 80A5C330 314B000F */  andi    $t3, $t2, 0x000F           ## $t3 = 00000000
/* 01044 80A5C334 5561000E */  bnel    $t3, $at, .L80A5C370
/* 01048 80A5C338 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 0104C 80A5C33C 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 01050 80A5C340 24040018 */  addiu   $a0, $zero, 0x0018         ## $a0 = 00000018
/* 01054 80A5C344 14400009 */  bne     $v0, $zero, .L80A5C36C
/* 01058 80A5C348 3C0C8016 */  lui     $t4, %hi(gGameInfo)
/* 0105C 80A5C34C 8D8CFA90 */  lw      $t4, %lo(gGameInfo)($t4)
/* 01060 80A5C350 858D0556 */  lh      $t5, 0x0556($t4)           ## 80160556
/* 01064 80A5C354 55A00006 */  bnel    $t5, $zero, .L80A5C370
/* 01068 80A5C358 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 0106C 80A5C35C 8E0E01F0 */  lw      $t6, 0x01F0($s0)           ## 000001F0
/* 01070 80A5C360 3C010200 */  lui     $at, 0x0200                ## $at = 02000000
/* 01074 80A5C364 01C17825 */  or      $t7, $t6, $at              ## $t7 = 02000000
/* 01078 80A5C368 AE0F01F0 */  sw      $t7, 0x01F0($s0)           ## 000001F0
.L80A5C36C:
/* 0107C 80A5C36C 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
.L80A5C370:
/* 01080 80A5C370 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 01084 80A5C374 0C00B58B */  jal     Actor_SetScale

/* 01088 80A5C378 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0108C 80A5C37C 3C01C060 */  lui     $at, 0xC060                ## $at = C0600000
/* 01090 80A5C380 44815000 */  mtc1    $at, $f10                  ## $f10 = -3.50
/* 01094 80A5C384 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Squiggly)
/* 01098 80A5C388 24C6B644 */  addiu   $a2, %lo(ActorShadow_DrawFunc_Squiggly)
/* 0109C 80A5C38C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 010A0 80A5C390 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 010A4 80A5C394 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 010A8 80A5C398 0C00AC78 */  jal     ActorShape_Init

/* 010AC 80A5C39C E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 010B0 80A5C3A0 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 010B4 80A5C3A4 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 010B8 80A5C3A8 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
/* 010BC 80A5C3AC 26050278 */  addiu   $a1, $s0, 0x0278           ## $a1 = 00000278
/* 010C0 80A5C3B0 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 010C4 80A5C3B4 AFA50040 */  sw      $a1, 0x0040($sp)
/* 010C8 80A5C3B8 0C0170D9 */  jal     Collider_InitCylinder

/* 010CC 80A5C3BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 010D0 80A5C3C0 3C0780A6 */  lui     $a3, %hi(D_80A65EAC)       ## $a3 = 80A60000
/* 010D4 80A5C3C4 8FA50040 */  lw      $a1, 0x0040($sp)
/* 010D8 80A5C3C8 24E75EAC */  addiu   $a3, $a3, %lo(D_80A65EAC)  ## $a3 = 80A65EAC
/* 010DC 80A5C3CC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 010E0 80A5C3D0 0C01712B */  jal     Collider_SetCylinder

/* 010E4 80A5C3D4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 010E8 80A5C3D8 260502C4 */  addiu   $a1, $s0, 0x02C4           ## $a1 = 000002C4
/* 010EC 80A5C3DC AFA50040 */  sw      $a1, 0x0040($sp)
/* 010F0 80A5C3E0 0C0170D9 */  jal     Collider_InitCylinder

/* 010F4 80A5C3E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 010F8 80A5C3E8 3C0780A6 */  lui     $a3, %hi(D_80A65ED8)       ## $a3 = 80A60000
/* 010FC 80A5C3EC 8FA50040 */  lw      $a1, 0x0040($sp)
/* 01100 80A5C3F0 24E75ED8 */  addiu   $a3, $a3, %lo(D_80A65ED8)  ## $a3 = 80A65ED8
/* 01104 80A5C3F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01108 80A5C3F8 0C01712B */  jal     Collider_SetCylinder

/* 0110C 80A5C3FC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 01110 80A5C400 26050310 */  addiu   $a1, $s0, 0x0310           ## $a1 = 00000310
/* 01114 80A5C404 AFA50040 */  sw      $a1, 0x0040($sp)
/* 01118 80A5C408 0C016EFE */  jal     Collider_InitJntSph
/* 0111C 80A5C40C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01120 80A5C410 3C0780A6 */  lui     $a3, %hi(D_80A65F28)       ## $a3 = 80A60000
/* 01124 80A5C414 26190330 */  addiu   $t9, $s0, 0x0330           ## $t9 = 00000330
/* 01128 80A5C418 8FA50040 */  lw      $a1, 0x0040($sp)
/* 0112C 80A5C41C AFB90010 */  sw      $t9, 0x0010($sp)
/* 01130 80A5C420 24E75F28 */  addiu   $a3, $a3, %lo(D_80A65F28)  ## $a3 = 80A65F28
/* 01134 80A5C424 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01138 80A5C428 0C017014 */  jal     Collider_SetJntSph
/* 0113C 80A5C42C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 01140 80A5C430 0C016C80 */  jal     DamageTable_Get

/* 01144 80A5C434 2404000B */  addiu   $a0, $zero, 0x000B         ## $a0 = 0000000B
/* 01148 80A5C438 3C0680A6 */  lui     $a2, %hi(D_80A65F38)       ## $a2 = 80A60000
/* 0114C 80A5C43C 24C65F38 */  addiu   $a2, $a2, %lo(D_80A65F38)  ## $a2 = 80A65F38
/* 01150 80A5C440 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 01154 80A5C444 0C0187B5 */  jal     CollisionCheck_SetInfo
/* 01158 80A5C448 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 0115C 80A5C44C 8FA8003C */  lw      $t0, 0x003C($sp)
/* 01160 80A5C450 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01164 80A5C454 44812000 */  mtc1    $at, $f4                   ## $f4 = 70.00
/* 01168 80A5C458 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 00000000
/* 0116C 80A5C45C 24010063 */  addiu   $at, $zero, 0x0063         ## $at = 00000063
/* 01170 80A5C460 3C0B8016 */  lui     $t3, %hi(gSaveContext+0x1360)
/* 01174 80A5C464 AE0A0038 */  sw      $t2, 0x0038($s0)           ## 00000038
/* 01178 80A5C468 8D090004 */  lw      $t1, 0x0004($t0)           ## 00000004
/* 0117C 80A5C46C AE09003C */  sw      $t1, 0x003C($s0)           ## 0000003C
/* 01180 80A5C470 C612003C */  lwc1    $f18, 0x003C($s0)          ## 0000003C
/* 01184 80A5C474 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 00000008
/* 01188 80A5C478 AE00020C */  sw      $zero, 0x020C($s0)         ## 0000020C
/* 0118C 80A5C47C 46049180 */  add.s   $f6, $f18, $f4
/* 01190 80A5C480 AE0A0040 */  sw      $t2, 0x0040($s0)           ## 00000040
/* 01194 80A5C484 E606003C */  swc1    $f6, 0x003C($s0)           ## 0000003C
/* 01198 80A5C488 862200A4 */  lh      $v0, 0x00A4($s1)           ## 000000A4
/* 0119C 80A5C48C 54410035 */  bnel    $v0, $at, .L80A5C564
/* 011A0 80A5C490 24010036 */  addiu   $at, $zero, 0x0036         ## $at = 00000036
/* 011A4 80A5C494 8D6BF9C0 */  lw      $t3, %lo(gSaveContext+0x1360)($t3)
/* 011A8 80A5C498 29610004 */  slti    $at, $t3, 0x0004
/* 011AC 80A5C49C 50200031 */  beql    $at, $zero, .L80A5C564
/* 011B0 80A5C4A0 24010036 */  addiu   $at, $zero, 0x0036         ## $at = 00000036
/* 011B4 80A5C4A4 8E0C0158 */  lw      $t4, 0x0158($s0)           ## 00000158
/* 011B8 80A5C4A8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 011BC 80A5C4AC 1581001C */  bne     $t4, $at, .L80A5C520
/* 011C0 80A5C4B0 00000000 */  nop
/* 011C4 80A5C4B4 860D0034 */  lh      $t5, 0x0034($s0)           ## 00000034
/* 011C8 80A5C4B8 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x10)
/* 011CC 80A5C4BC 11A00004 */  beq     $t5, $zero, .L80A5C4D0
/* 011D0 80A5C4C0 00000000 */  nop
/* 011D4 80A5C4C4 8DCEE670 */  lw      $t6, %lo(gSaveContext+0x10)($t6)
/* 011D8 80A5C4C8 11C00005 */  beq     $t6, $zero, .L80A5C4E0
/* 011DC 80A5C4CC 00000000 */  nop
.L80A5C4D0:
/* 011E0 80A5C4D0 0C00B55C */  jal     Actor_Kill

/* 011E4 80A5C4D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011E8 80A5C4D8 100000CB */  beq     $zero, $zero, .L80A5C808
/* 011EC 80A5C4DC 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80A5C4E0:
/* 011F0 80A5C4E0 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 011F4 80A5C4E4 24040018 */  addiu   $a0, $zero, 0x0018         ## $a0 = 00000018
/* 011F8 80A5C4E8 50400006 */  beql    $v0, $zero, .L80A5C504
/* 011FC 80A5C4EC 860F0034 */  lh      $t7, 0x0034($s0)           ## 00000034
/* 01200 80A5C4F0 0C00B55C */  jal     Actor_Kill

/* 01204 80A5C4F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01208 80A5C4F8 100000C3 */  beq     $zero, $zero, .L80A5C808
/* 0120C 80A5C4FC 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 01210 80A5C500 860F0034 */  lh      $t7, 0x0034($s0)           ## 00000034
.L80A5C504:
/* 01214 80A5C504 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01218 80A5C508 51E10030 */  beql    $t7, $at, .L80A5C5CC
/* 0121C 80A5C50C 8E020158 */  lw      $v0, 0x0158($s0)           ## 00000158
/* 01220 80A5C510 0C00B55C */  jal     Actor_Kill

/* 01224 80A5C514 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01228 80A5C518 100000BB */  beq     $zero, $zero, .L80A5C808
/* 0122C 80A5C51C 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80A5C520:
/* 01230 80A5C520 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 01234 80A5C524 24040018 */  addiu   $a0, $zero, 0x0018         ## $a0 = 00000018
/* 01238 80A5C528 14400027 */  bne     $v0, $zero, .L80A5C5C8
/* 0123C 80A5C52C 3C188016 */  lui     $t8, %hi(gGameInfo)
/* 01240 80A5C530 8F18FA90 */  lw      $t8, %lo(gGameInfo)($t8)
/* 01244 80A5C534 3C088016 */  lui     $t0, %hi(gSaveContext+0x10)
/* 01248 80A5C538 87190556 */  lh      $t9, 0x0556($t8)           ## 80160556
/* 0124C 80A5C53C 57200023 */  bnel    $t9, $zero, .L80A5C5CC
/* 01250 80A5C540 8E020158 */  lw      $v0, 0x0158($s0)           ## 00000158
/* 01254 80A5C544 8D08E670 */  lw      $t0, %lo(gSaveContext+0x10)($t0)
/* 01258 80A5C548 51000020 */  beql    $t0, $zero, .L80A5C5CC
/* 0125C 80A5C54C 8E020158 */  lw      $v0, 0x0158($s0)           ## 00000158
/* 01260 80A5C550 0C00B55C */  jal     Actor_Kill

/* 01264 80A5C554 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01268 80A5C558 100000AB */  beq     $zero, $zero, .L80A5C808
/* 0126C 80A5C55C 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 01270 80A5C560 24010036 */  addiu   $at, $zero, 0x0036         ## $at = 00000036
.L80A5C564:
/* 01274 80A5C564 14410018 */  bne     $v0, $at, .L80A5C5C8
/* 01278 80A5C568 3C098016 */  lui     $t1, %hi(gSaveContext+0x10)
/* 0127C 80A5C56C 8D29E670 */  lw      $t1, %lo(gSaveContext+0x10)($t1)
/* 01280 80A5C570 1120000D */  beq     $t1, $zero, .L80A5C5A8
/* 01284 80A5C574 00000000 */  nop
/* 01288 80A5C578 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 0128C 80A5C57C 24040018 */  addiu   $a0, $zero, 0x0018         ## $a0 = 00000018
/* 01290 80A5C580 14400009 */  bne     $v0, $zero, .L80A5C5A8
/* 01294 80A5C584 3C0A8016 */  lui     $t2, %hi(gGameInfo)
/* 01298 80A5C588 8D4AFA90 */  lw      $t2, %lo(gGameInfo)($t2)
/* 0129C 80A5C58C 3C0C8016 */  lui     $t4, %hi(gSaveContext+4)
/* 012A0 80A5C590 854B0556 */  lh      $t3, 0x0556($t2)           ## 80160556
/* 012A4 80A5C594 15600004 */  bne     $t3, $zero, .L80A5C5A8
/* 012A8 80A5C598 00000000 */  nop
/* 012AC 80A5C59C 8D8CE664 */  lw      $t4, %lo(gSaveContext+4)($t4)
/* 012B0 80A5C5A0 51800006 */  beql    $t4, $zero, .L80A5C5BC
/* 012B4 80A5C5A4 8E0D01F0 */  lw      $t5, 0x01F0($s0)           ## 000001F0
.L80A5C5A8:
/* 012B8 80A5C5A8 0C00B55C */  jal     Actor_Kill

/* 012BC 80A5C5AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012C0 80A5C5B0 10000095 */  beq     $zero, $zero, .L80A5C808
/* 012C4 80A5C5B4 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 012C8 80A5C5B8 8E0D01F0 */  lw      $t5, 0x01F0($s0)           ## 000001F0
.L80A5C5BC:
/* 012CC 80A5C5BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 012D0 80A5C5C0 01A17025 */  or      $t6, $t5, $at              ## $t6 = 00010000
/* 012D4 80A5C5C4 AE0E01F0 */  sw      $t6, 0x01F0($s0)           ## 000001F0
.L80A5C5C8:
/* 012D8 80A5C5C8 8E020158 */  lw      $v0, 0x0158($s0)           ## 00000158
.L80A5C5CC:
/* 012DC 80A5C5CC 3C0F80A6 */  lui     $t7, %hi(D_80A65E58)       ## $t7 = 80A60000
/* 012E0 80A5C5D0 3C0680A6 */  lui     $a2, %hi(D_80A65E84)       ## $a2 = 80A60000
/* 012E4 80A5C5D4 00021080 */  sll     $v0, $v0,  2
/* 012E8 80A5C5D8 01E27821 */  addu    $t7, $t7, $v0
/* 012EC 80A5C5DC 8DEF5E58 */  lw      $t7, %lo(D_80A65E58)($t7)
/* 012F0 80A5C5E0 00C23021 */  addu    $a2, $a2, $v0
/* 012F4 80A5C5E4 8CC65E84 */  lw      $a2, %lo(D_80A65E84)($a2)
/* 012F8 80A5C5E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 012FC 80A5C5EC 26050160 */  addiu   $a1, $s0, 0x0160           ## $a1 = 00000160
/* 01300 80A5C5F0 0C02998F */  jal     func_800A663C
/* 01304 80A5C5F4 8DE70000 */  lw      $a3, 0x0000($t7)           ## 80A60000
/* 01308 80A5C5F8 8E180158 */  lw      $t8, 0x0158($s0)           ## 00000158
/* 0130C 80A5C5FC 3C0880A6 */  lui     $t0, %hi(D_80A65E58)       ## $t0 = 80A60000
/* 01310 80A5C600 AE000210 */  sw      $zero, 0x0210($s0)         ## 00000210
/* 01314 80A5C604 0018C880 */  sll     $t9, $t8,  2
/* 01318 80A5C608 01194021 */  addu    $t0, $t0, $t9
/* 0131C 80A5C60C 8D085E58 */  lw      $t0, %lo(D_80A65E58)($t0)
/* 01320 80A5C610 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 01324 80A5C614 0C02947A */  jal     Animation_PlayOnce
/* 01328 80A5C618 8D050000 */  lw      $a1, 0x0000($t0)           ## 80A60000
/* 0132C 80A5C61C 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 01330 80A5C620 A2090238 */  sb      $t1, 0x0238($s0)           ## 00000238
/* 01334 80A5C624 AE00023C */  sw      $zero, 0x023C($s0)         ## 0000023C
/* 01338 80A5C628 AE000244 */  sw      $zero, 0x0244($s0)         ## 00000244
/* 0133C 80A5C62C A200037A */  sb      $zero, 0x037A($s0)         ## 0000037A
/* 01340 80A5C630 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01344 80A5C634 0C296FF6 */  jal     func_80A5BFD8
/* 01348 80A5C638 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0134C 80A5C63C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01350 80A5C640 0C296FFB */  jal     func_80A5BFEC
/* 01354 80A5C644 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01358 80A5C648 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0135C 80A5C64C 0C29702D */  jal     func_80A5C0B4
/* 01360 80A5C650 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01364 80A5C654 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 01368 80A5C658 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0136C 80A5C65C 54410006 */  bnel    $v0, $at, .L80A5C678
/* 01370 80A5C660 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01374 80A5C664 0C297C11 */  jal     func_80A5F044
/* 01378 80A5C668 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0137C 80A5C66C 10000062 */  beq     $zero, $zero, .L80A5C7F8
/* 01380 80A5C670 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 01384 80A5C674 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80A5C678:
/* 01388 80A5C678 5441002A */  bnel    $v0, $at, .L80A5C724
/* 0138C 80A5C67C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01390 80A5C680 0C297F2B */  jal     func_80A5FCAC
/* 01394 80A5C684 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01398 80A5C688 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 0139C 80A5C68C 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 013A0 80A5C690 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 013A4 80A5C694 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 013A8 80A5C698 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 013AC 80A5C69C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 013B0 80A5C6A0 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 013B4 80A5C6A4 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 013B8 80A5C6A8 860A00B4 */  lh      $t2, 0x00B4($s0)           ## 000000B4
/* 013BC 80A5C6AC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 013C0 80A5C6B0 240600CB */  addiu   $a2, $zero, 0x00CB         ## $a2 = 000000CB
/* 013C4 80A5C6B4 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 013C8 80A5C6B8 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 013CC 80A5C6BC AFAD0024 */  sw      $t5, 0x0024($sp)
/* 013D0 80A5C6C0 AFAC0020 */  sw      $t4, 0x0020($sp)
/* 013D4 80A5C6C4 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 013D8 80A5C6C8 AFAB001C */  sw      $t3, 0x001C($sp)
/* 013DC 80A5C6CC 14400007 */  bne     $v0, $zero, .L80A5C6EC
/* 013E0 80A5C6D0 AE02038C */  sw      $v0, 0x038C($s0)           ## 0000038C
/* 013E4 80A5C6D4 3C0480A6 */  lui     $a0, %hi(D_80A66800)       ## $a0 = 80A60000
/* 013E8 80A5C6D8 3C0580A6 */  lui     $a1, %hi(D_80A6681C)       ## $a1 = 80A60000
/* 013EC 80A5C6DC 24A5681C */  addiu   $a1, $a1, %lo(D_80A6681C)  ## $a1 = 80A6681C
/* 013F0 80A5C6E0 24846800 */  addiu   $a0, $a0, %lo(D_80A66800)  ## $a0 = 80A66800
/* 013F4 80A5C6E4 0C0007FC */  jal     __assert

/* 013F8 80A5C6E8 24060C05 */  addiu   $a2, $zero, 0x0C05         ## $a2 = 00000C05
.L80A5C6EC:
/* 013FC 80A5C6EC 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x13fa)
/* 01400 80A5C6F0 95CEFA5A */  lhu     $t6, %lo(gSaveContext+0x13fa)($t6)
/* 01404 80A5C6F4 3C01414A */  lui     $at, 0x414A                ## $at = 414A0000
/* 01408 80A5C6F8 31CF0040 */  andi    $t7, $t6, 0x0040           ## $t7 = 00000000
/* 0140C 80A5C6FC 55E00006 */  bnel    $t7, $zero, .L80A5C718
/* 01410 80A5C700 44819000 */  mtc1    $at, $f18                  ## $f18 = 12.62
/* 01414 80A5C704 3C0180A6 */  lui     $at, %hi(D_80A6687C)       ## $at = 80A60000
/* 01418 80A5C708 C430687C */  lwc1    $f16, %lo(D_80A6687C)($at)
/* 0141C 80A5C70C 10000039 */  beq     $zero, $zero, .L80A5C7F4
/* 01420 80A5C710 E6100398 */  swc1    $f16, 0x0398($s0)          ## 00000398
/* 01424 80A5C714 44819000 */  mtc1    $at, $f18                  ## $f18 = -0.00
.L80A5C718:
/* 01428 80A5C718 10000036 */  beq     $zero, $zero, .L80A5C7F4
/* 0142C 80A5C71C E6120398 */  swc1    $f18, 0x0398($s0)          ## 00000398
/* 01430 80A5C720 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
.L80A5C724:
/* 01434 80A5C724 14410005 */  bne     $v0, $at, .L80A5C73C
/* 01438 80A5C728 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0143C 80A5C72C 0C298416 */  jal     func_80A61058
/* 01440 80A5C730 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01444 80A5C734 10000030 */  beq     $zero, $zero, .L80A5C7F8
/* 01448 80A5C738 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L80A5C73C:
/* 0144C 80A5C73C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01450 80A5C740 54410008 */  bnel    $v0, $at, .L80A5C764
/* 01454 80A5C744 863800A4 */  lh      $t8, 0x00A4($s1)           ## 000000A4
/* 01458 80A5C748 0C298503 */  jal     func_80A6140C
/* 0145C 80A5C74C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01460 80A5C750 0C02126A */  jal     Interface_InitHorsebackArchery
/* 01464 80A5C754 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01468 80A5C758 10000027 */  beq     $zero, $zero, .L80A5C7F8
/* 0146C 80A5C75C A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 01470 80A5C760 863800A4 */  lh      $t8, 0x00A4($s1)           ## 000000A4
.L80A5C764:
/* 01474 80A5C764 24010063 */  addiu   $at, $zero, 0x0063         ## $at = 00000063
/* 01478 80A5C768 5701000E */  bnel    $t8, $at, .L80A5C7A4
/* 0147C 80A5C76C 862200A4 */  lh      $v0, 0x00A4($s1)           ## 000000A4
/* 01480 80A5C770 0C00D6D3 */  jal     Flags_GetEventChkInf

/* 01484 80A5C774 24040018 */  addiu   $a0, $zero, 0x0018         ## $a0 = 00000018
/* 01488 80A5C778 14400009 */  bne     $v0, $zero, .L80A5C7A0
/* 0148C 80A5C77C 3C198016 */  lui     $t9, %hi(gGameInfo)
/* 01490 80A5C780 8F39FA90 */  lw      $t9, %lo(gGameInfo)($t9)
/* 01494 80A5C784 87280556 */  lh      $t0, 0x0556($t9)           ## 80160556
/* 01498 80A5C788 55000006 */  bnel    $t0, $zero, .L80A5C7A4
/* 0149C 80A5C78C 862200A4 */  lh      $v0, 0x00A4($s1)           ## 000000A4
/* 014A0 80A5C790 0C298681 */  jal     func_80A61A04
/* 014A4 80A5C794 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014A8 80A5C798 10000017 */  beq     $zero, $zero, .L80A5C7F8
/* 014AC 80A5C79C A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L80A5C7A0:
/* 014B0 80A5C7A0 862200A4 */  lh      $v0, 0x00A4($s1)           ## 000000A4
.L80A5C7A4:
/* 014B4 80A5C7A4 2401004C */  addiu   $at, $zero, 0x004C         ## $at = 0000004C
/* 014B8 80A5C7A8 54410006 */  bnel    $v0, $at, .L80A5C7C4
/* 014BC 80A5C7AC 2401005D */  addiu   $at, $zero, 0x005D         ## $at = 0000005D
/* 014C0 80A5C7B0 0C297CEA */  jal     func_80A5F3A8
/* 014C4 80A5C7B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014C8 80A5C7B8 1000000F */  beq     $zero, $zero, .L80A5C7F8
/* 014CC 80A5C7BC A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 014D0 80A5C7C0 2401005D */  addiu   $at, $zero, 0x005D         ## $at = 0000005D
.L80A5C7C4:
/* 014D4 80A5C7C4 14410009 */  bne     $v0, $at, .L80A5C7EC
/* 014D8 80A5C7C8 00000000 */  nop
/* 014DC 80A5C7CC 8E090158 */  lw      $t1, 0x0158($s0)           ## 00000158
/* 014E0 80A5C7D0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 014E4 80A5C7D4 15210005 */  bne     $t1, $at, .L80A5C7EC
/* 014E8 80A5C7D8 00000000 */  nop
/* 014EC 80A5C7DC 0C297CEA */  jal     func_80A5F3A8
/* 014F0 80A5C7E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014F4 80A5C7E4 10000004 */  beq     $zero, $zero, .L80A5C7F8
/* 014F8 80A5C7E8 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L80A5C7EC:
/* 014FC 80A5C7EC 0C297CF7 */  jal     func_80A5F3DC
/* 01500 80A5C7F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A5C7F4:
/* 01504 80A5C7F4 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L80A5C7F8:
/* 01508 80A5C7F8 860200B8 */  lh      $v0, 0x00B8($s0)           ## 000000B8
/* 0150C 80A5C7FC A6020034 */  sh      $v0, 0x0034($s0)           ## 00000034
/* 01510 80A5C800 A6020018 */  sh      $v0, 0x0018($s0)           ## 00000018
/* 01514 80A5C804 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80A5C808:
/* 01518 80A5C808 8FB0002C */  lw      $s0, 0x002C($sp)
/* 0151C 80A5C80C 8FB10030 */  lw      $s1, 0x0030($sp)
/* 01520 80A5C810 03E00008 */  jr      $ra
/* 01524 80A5C814 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
