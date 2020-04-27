glabel EnBox_Init
/* 00094 809C8E54 3C028016 */  lui     $v0, %hi(gSaveContext+4)
/* 00098 809C8E58 8C42E664 */  lw      $v0, %lo(gSaveContext+4)($v0)
/* 0009C 809C8E5C 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 000A0 809C8E60 AFB00024 */  sw      $s0, 0x0024($sp)
/* 000A4 809C8E64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000A8 809C8E68 3C04809D */  lui     $a0, %hi(D_809CA800)       ## $a0 = 809D0000
/* 000AC 809C8E6C 00027080 */  sll     $t6, $v0,  2
/* 000B0 809C8E70 008E2021 */  addu    $a0, $a0, $t6
/* 000B4 809C8E74 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 000B8 809C8E78 8C84A800 */  lw      $a0, %lo(D_809CA800)($a0)
/* 000BC 809C8E7C AFBF002C */  sw      $ra, 0x002C($sp)
/* 000C0 809C8E80 AFB10028 */  sw      $s1, 0x0028($sp)
/* 000C4 809C8E84 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 000C8 809C8E88 AFA00048 */  sw      $zero, 0x0048($sp)
/* 000CC 809C8E8C E7A40044 */  swc1    $f4, 0x0044($sp)
/* 000D0 809C8E90 0C028800 */  jal     SkelAnime_GetFrameCount

/* 000D4 809C8E94 AFA4004C */  sw      $a0, 0x004C($sp)
/* 000D8 809C8E98 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 000DC 809C8E9C 3C05809D */  lui     $a1, %hi(D_809CA810)       ## $a1 = 809D0000
/* 000E0 809C8EA0 24A5A810 */  addiu   $a1, $a1, %lo(D_809CA810)  ## $a1 = 809CA810
/* 000E4 809C8EA4 46803220 */  cvt.s.w $f8, $f6
/* 000E8 809C8EA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000EC 809C8EAC 0C01E037 */  jal     Actor_ProcessInitChain

/* 000F0 809C8EB0 E7A80040 */  swc1    $f8, 0x0040($sp)
/* 000F4 809C8EB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000F8 809C8EB8 0C010D20 */  jal     DynaPolyInfo_SetActorMove

/* 000FC 809C8EBC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00100 809C8EC0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00104 809C8EC4 24845FC8 */  addiu   $a0, $a0, 0x5FC8           ## $a0 = 06005FC8
/* 00108 809C8EC8 0C010620 */  jal     DynaPolyInfo_Alloc

/* 0010C 809C8ECC 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFF0
/* 00110 809C8ED0 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 00114 809C8ED4 AFA50030 */  sw      $a1, 0x0030($sp)
/* 00118 809C8ED8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0011C 809C8EDC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00120 809C8EE0 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00124 809C8EE4 8FA70048 */  lw      $a3, 0x0048($sp)
/* 00128 809C8EE8 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0012C 809C8EEC 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00130 809C8EF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00134 809C8EF4 0C00FB2A */  jal     func_8003ECA8
/* 00138 809C8EF8 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 0013C 809C8EFC 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00140 809C8F00 3C01C0B0 */  lui     $at, 0xC0B0                ## $at = C0B00000
/* 00144 809C8F04 44815000 */  mtc1    $at, $f10                  ## $f10 = -5.50
/* 00148 809C8F08 3C01C248 */  lui     $at, 0xC248                ## $at = C2480000
/* 0014C 809C8F0C 86080034 */  lh      $t0, 0x0034($s0)           ## 00000034
/* 00150 809C8F10 44818000 */  mtc1    $at, $f16                  ## $f16 = -50.00
/* 00154 809C8F14 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00158 809C8F18 000FC303 */  sra     $t8, $t7, 12
/* 0015C 809C8F1C 3319000F */  andi    $t9, $t8, 0x000F           ## $t9 = 00000000
/* 00160 809C8F20 A20001F6 */  sb      $zero, 0x01F6($s0)         ## 000001F6
/* 00164 809C8F24 A21901F9 */  sb      $t9, 0x01F9($s0)           ## 000001F9
/* 00168 809C8F28 A20001FA */  sb      $zero, 0x01FA($s0)         ## 000001FA
/* 0016C 809C8F2C A20001FB */  sb      $zero, 0x01FB($s0)         ## 000001FB
/* 00170 809C8F30 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00174 809C8F34 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 00178 809C8F38 A20801F8 */  sb      $t0, 0x01F8($s0)           ## 000001F8
/* 0017C 809C8F3C E6100070 */  swc1    $f16, 0x0070($s0)          ## 00000070
/* 00180 809C8F40 0C00B32C */  jal     Flags_GetTreasure

/* 00184 809C8F44 30A5001F */  andi    $a1, $a1, 0x001F           ## $a1 = 00000000
/* 00188 809C8F48 1040000E */  beq     $v0, $zero, .L809C8F84
/* 0018C 809C8F4C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00190 809C8F50 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 00194 809C8F54 3C05809D */  lui     $a1, %hi(func_809C9D70)    ## $a1 = 809D0000
/* 00198 809C8F58 A20901F7 */  sb      $t1, 0x01F7($s0)           ## 000001F7
/* 0019C 809C8F5C A20A01FA */  sb      $t2, 0x01FA($s0)           ## 000001FA
/* 001A0 809C8F60 24A59D70 */  addiu   $a1, $a1, %lo(func_809C9D70) ## $a1 = 809C9D70
/* 001A4 809C8F64 0C272370 */  jal     func_809C8DC0
/* 001A8 809C8F68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001AC 809C8F6C 920B01F6 */  lbu     $t3, 0x01F6($s0)           ## 000001F6
/* 001B0 809C8F70 356C0010 */  ori     $t4, $t3, 0x0010           ## $t4 = 00000010
/* 001B4 809C8F74 A20C01F6 */  sb      $t4, 0x01F6($s0)           ## 000001F6
/* 001B8 809C8F78 C7B20040 */  lwc1    $f18, 0x0040($sp)
/* 001BC 809C8F7C 10000092 */  beq     $zero, $zero, .L809C91C8
/* 001C0 809C8F80 E7B20044 */  swc1    $f18, 0x0044($sp)
.L809C8F84:
/* 001C4 809C8F84 920201F9 */  lbu     $v0, 0x01F9($s0)           ## 000001F9
/* 001C8 809C8F88 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 001CC 809C8F8C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001D0 809C8F90 10410003 */  beq     $v0, $at, .L809C8FA0
/* 001D4 809C8F94 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 001D8 809C8F98 54410021 */  bnel    $v0, $at, .L809C9020
/* 001DC 809C8F9C 920201F9 */  lbu     $v0, 0x01F9($s0)           ## 000001F9
.L809C8FA0:
/* 001E0 809C8FA0 0C00B2D0 */  jal     Flags_GetSwitch

/* 001E4 809C8FA4 920501F8 */  lbu     $a1, 0x01F8($s0)           ## 000001F8
/* 001E8 809C8FA8 1440001C */  bne     $v0, $zero, .L809C901C
/* 001EC 809C8FAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001F0 809C8FB0 8FA50030 */  lw      $a1, 0x0030($sp)
/* 001F4 809C8FB4 0C00FAFE */  jal     func_8003EBF8
/* 001F8 809C8FB8 8E06014C */  lw      $a2, 0x014C($s0)           ## 0000014C
/* 001FC 809C8FBC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00200 809C8FC0 00000000 */  nop
/* 00204 809C8FC4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00208 809C8FC8 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 0020C 809C8FCC 3C05809D */  lui     $a1, %hi(func_809C9630)    ## $a1 = 809D0000
/* 00210 809C8FD0 240FFFF4 */  addiu   $t7, $zero, 0xFFF4         ## $t7 = FFFFFFF4
/* 00214 809C8FD4 4604003C */  c.lt.s  $f0, $f4
/* 00218 809C8FD8 24A59630 */  addiu   $a1, $a1, %lo(func_809C9630) ## $a1 = 809C9630
/* 0021C 809C8FDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00220 809C8FE0 45000004 */  bc1f    .L809C8FF4
/* 00224 809C8FE4 00000000 */  nop
/* 00228 809C8FE8 920D01F6 */  lbu     $t5, 0x01F6($s0)           ## 000001F6
/* 0022C 809C8FEC 35AE0004 */  ori     $t6, $t5, 0x0004           ## $t6 = 00000004
/* 00230 809C8FF0 A20E01F6 */  sb      $t6, 0x01F6($s0)           ## 000001F6
.L809C8FF4:
/* 00234 809C8FF4 0C272370 */  jal     func_809C8DC0
/* 00238 809C8FF8 AE0F01A8 */  sw      $t7, 0x01A8($s0)           ## 000001A8
/* 0023C 809C8FFC 921801F6 */  lbu     $t8, 0x01F6($s0)           ## 000001F6
/* 00240 809C9000 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 00244 809C9004 A20001F7 */  sb      $zero, 0x01F7($s0)         ## 000001F7
/* 00248 809C9008 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 0024C 809C900C 35090010 */  ori     $t1, $t0, 0x0010           ## $t1 = 00000010
/* 00250 809C9010 A21901F6 */  sb      $t9, 0x01F6($s0)           ## 000001F6
/* 00254 809C9014 1000006C */  beq     $zero, $zero, .L809C91C8
/* 00258 809C9018 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
.L809C901C:
/* 0025C 809C901C 920201F9 */  lbu     $v0, 0x01F9($s0)           ## 000001F9
.L809C9020:
/* 00260 809C9020 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00264 809C9024 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00268 809C9028 10410003 */  beq     $v0, $at, .L809C9038
/* 0026C 809C902C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00270 809C9030 5441001A */  bnel    $v0, $at, .L809C909C
/* 00274 809C9034 920201F9 */  lbu     $v0, 0x01F9($s0)           ## 000001F9
.L809C9038:
/* 00278 809C9038 0C00B337 */  jal     Flags_GetClear

/* 0027C 809C903C 82050003 */  lb      $a1, 0x0003($s0)           ## 00000003
/* 00280 809C9040 14400015 */  bne     $v0, $zero, .L809C9098
/* 00284 809C9044 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00288 809C9048 3C05809D */  lui     $a1, %hi(func_809C990C)    ## $a1 = 809D0000
/* 0028C 809C904C 0C272370 */  jal     func_809C8DC0
/* 00290 809C9050 24A5990C */  addiu   $a1, $a1, %lo(func_809C990C) ## $a1 = 809C990C
/* 00294 809C9054 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00298 809C9058 8FA50030 */  lw      $a1, 0x0030($sp)
/* 0029C 809C905C 0C00FAFE */  jal     func_8003EBF8
/* 002A0 809C9060 8E06014C */  lw      $a2, 0x014C($s0)           ## 0000014C
/* 002A4 809C9064 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 002A8 809C9068 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 002AC 809C906C C606000C */  lwc1    $f6, 0x000C($s0)           ## 0000000C
/* 002B0 809C9070 920A01F6 */  lbu     $t2, 0x01F6($s0)           ## 000001F6
/* 002B4 809C9074 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 002B8 809C9078 46083281 */  sub.s   $f10, $f6, $f8
/* 002BC 809C907C 354B0001 */  ori     $t3, $t2, 0x0001           ## $t3 = 00000001
/* 002C0 809C9080 358D0010 */  ori     $t5, $t4, 0x0010           ## $t5 = 00000010
/* 002C4 809C9084 A20B01F6 */  sb      $t3, 0x01F6($s0)           ## 000001F6
/* 002C8 809C9088 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 002CC 809C908C A20001F7 */  sb      $zero, 0x01F7($s0)         ## 000001F7
/* 002D0 809C9090 1000004D */  beq     $zero, $zero, .L809C91C8
/* 002D4 809C9094 AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
.L809C9098:
/* 002D8 809C9098 920201F9 */  lbu     $v0, 0x01F9($s0)           ## 000001F9
.L809C909C:
/* 002DC 809C909C 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 002E0 809C90A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002E4 809C90A4 10410004 */  beq     $v0, $at, .L809C90B8
/* 002E8 809C90A8 3C05809D */  lui     $a1, %hi(func_809C9700)    ## $a1 = 809D0000
/* 002EC 809C90AC 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 002F0 809C90B0 54410019 */  bnel    $v0, $at, .L809C9118
/* 002F4 809C90B4 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
.L809C90B8:
/* 002F8 809C90B8 0C272370 */  jal     func_809C8DC0
/* 002FC 809C90BC 24A59700 */  addiu   $a1, $a1, %lo(func_809C9700) ## $a1 = 809C9700
/* 00300 809C90C0 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00304 809C90C4 3C010200 */  lui     $at, 0x0200                ## $at = 02000000
/* 00308 809C90C8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0030C 809C90CC 01C17825 */  or      $t7, $t6, $at              ## $t7 = 02000000
/* 00310 809C90D0 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00314 809C90D4 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00318 809C90D8 0C00FAFE */  jal     func_8003EBF8
/* 0031C 809C90DC 8E06014C */  lw      $a2, 0x014C($s0)           ## 0000014C
/* 00320 809C90E0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00324 809C90E4 44819000 */  mtc1    $at, $f18                  ## $f18 = 50.00
/* 00328 809C90E8 C610000C */  lwc1    $f16, 0x000C($s0)          ## 0000000C
/* 0032C 809C90EC 921801F6 */  lbu     $t8, 0x01F6($s0)           ## 000001F6
/* 00330 809C90F0 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 00334 809C90F4 46128101 */  sub.s   $f4, $f16, $f18
/* 00338 809C90F8 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 0033C 809C90FC 35090010 */  ori     $t1, $t0, 0x0010           ## $t1 = 00000010
/* 00340 809C9100 A21901F6 */  sb      $t9, 0x01F6($s0)           ## 000001F6
/* 00344 809C9104 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 00348 809C9108 A20001F7 */  sb      $zero, 0x01F7($s0)         ## 000001F7
/* 0034C 809C910C 1000002E */  beq     $zero, $zero, .L809C91C8
/* 00350 809C9110 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 00354 809C9114 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
.L809C9118:
/* 00358 809C9118 14410019 */  bne     $v0, $at, .L809C9180
/* 0035C 809C911C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00360 809C9120 0C00B2D0 */  jal     Flags_GetSwitch

/* 00364 809C9124 920501F8 */  lbu     $a1, 0x01F8($s0)           ## 000001F8
/* 00368 809C9128 14400015 */  bne     $v0, $zero, .L809C9180
/* 0036C 809C912C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00370 809C9130 3C05809D */  lui     $a1, %hi(func_809C988C)    ## $a1 = 809D0000
/* 00374 809C9134 0C272370 */  jal     func_809C8DC0
/* 00378 809C9138 24A5988C */  addiu   $a1, $a1, %lo(func_809C988C) ## $a1 = 809C988C
/* 0037C 809C913C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00380 809C9140 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00384 809C9144 0C00FAFE */  jal     func_8003EBF8
/* 00388 809C9148 8E06014C */  lw      $a2, 0x014C($s0)           ## 0000014C
/* 0038C 809C914C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00390 809C9150 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 00394 809C9154 C606000C */  lwc1    $f6, 0x000C($s0)           ## 0000000C
/* 00398 809C9158 920A01F6 */  lbu     $t2, 0x01F6($s0)           ## 000001F6
/* 0039C 809C915C 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 003A0 809C9160 46083281 */  sub.s   $f10, $f6, $f8
/* 003A4 809C9164 354B0001 */  ori     $t3, $t2, 0x0001           ## $t3 = 00000001
/* 003A8 809C9168 358D0010 */  ori     $t5, $t4, 0x0010           ## $t5 = 00000010
/* 003AC 809C916C A20B01F6 */  sb      $t3, 0x01F6($s0)           ## 000001F6
/* 003B0 809C9170 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 003B4 809C9174 A20001F7 */  sb      $zero, 0x01F7($s0)         ## 000001F7
/* 003B8 809C9178 10000013 */  beq     $zero, $zero, .L809C91C8
/* 003BC 809C917C AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
.L809C9180:
/* 003C0 809C9180 920201F9 */  lbu     $v0, 0x01F9($s0)           ## 000001F9
/* 003C4 809C9184 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 003C8 809C9188 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003CC 809C918C 10410004 */  beq     $v0, $at, .L809C91A0
/* 003D0 809C9190 3C05809D */  lui     $a1, %hi(func_809C9B28)    ## $a1 = 809D0000
/* 003D4 809C9194 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 003D8 809C9198 14410004 */  bne     $v0, $at, .L809C91AC
/* 003DC 809C919C 00000000 */  nop
.L809C91A0:
/* 003E0 809C91A0 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 003E4 809C91A4 35CF0080 */  ori     $t7, $t6, 0x0080           ## $t7 = 00000080
/* 003E8 809C91A8 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
.L809C91AC:
/* 003EC 809C91AC 0C272370 */  jal     func_809C8DC0
/* 003F0 809C91B0 24A59B28 */  addiu   $a1, $a1, %lo(func_809C9B28) ## $a1 = 809C9B28
/* 003F4 809C91B4 921801F6 */  lbu     $t8, 0x01F6($s0)           ## 000001F6
/* 003F8 809C91B8 37080001 */  ori     $t0, $t8, 0x0001           ## $t0 = 00000001
/* 003FC 809C91BC A20801F6 */  sb      $t0, 0x01F6($s0)           ## 000001F6
/* 00400 809C91C0 35090010 */  ori     $t1, $t0, 0x0010           ## $t1 = 00000011
/* 00404 809C91C4 A20901F6 */  sb      $t1, 0x01F6($s0)           ## 000001F6
.L809C91C8:
/* 00408 809C91C8 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 0040C 809C91CC 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
/* 00410 809C91D0 860200B8 */  lh      $v0, 0x00B8($s0)           ## 000000B8
/* 00414 809C91D4 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00418 809C91D8 01415821 */  addu    $t3, $t2, $at
/* 0041C 809C91DC A60B0032 */  sh      $t3, 0x0032($s0)           ## 00000032
/* 00420 809C91E0 A6020034 */  sh      $v0, 0x0034($s0)           ## 00000034
/* 00424 809C91E4 A6020018 */  sh      $v0, 0x0018($s0)           ## 00000018
/* 00428 809C91E8 26050164 */  addiu   $a1, $s0, 0x0164           ## $a1 = 00000164
/* 0042C 809C91EC 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00430 809C91F0 260C01B8 */  addiu   $t4, $s0, 0x01B8           ## $t4 = 000001B8
/* 00434 809C91F4 260D01D6 */  addiu   $t5, $s0, 0x01D6           ## $t5 = 000001D6
/* 00438 809C91F8 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 0043C 809C91FC AFAE0018 */  sw      $t6, 0x0018($sp)
/* 00440 809C9200 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 00444 809C9204 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 00448 809C9208 24C647D8 */  addiu   $a2, $a2, 0x47D8           ## $a2 = 060047D8
/* 0044C 809C920C AFA50034 */  sw      $a1, 0x0034($sp)
/* 00450 809C9210 8FA7004C */  lw      $a3, 0x004C($sp)
/* 00454 809C9214 0C02915F */  jal     SkelAnime_Init

/* 00458 809C9218 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0045C 809C921C C7B00040 */  lwc1    $f16, 0x0040($sp)
/* 00460 809C9220 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00464 809C9224 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00468 809C9228 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0046C 809C922C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00470 809C9230 8FA5004C */  lw      $a1, 0x004C($sp)
/* 00474 809C9234 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 00478 809C9238 8FA70044 */  lw      $a3, 0x0044($sp)
/* 0047C 809C923C E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00480 809C9240 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00484 809C9244 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00488 809C9248 920201F9 */  lbu     $v0, 0x01F9($s0)           ## 000001F9
/* 0048C 809C924C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00490 809C9250 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00494 809C9254 10410008 */  beq     $v0, $at, .L809C9278
/* 00498 809C9258 3C053BA3 */  lui     $a1, 0x3BA3                ## $a1 = 3BA30000
/* 0049C 809C925C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 004A0 809C9260 10410005 */  beq     $v0, $at, .L809C9278
/* 004A4 809C9264 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 004A8 809C9268 10410003 */  beq     $v0, $at, .L809C9278
/* 004AC 809C926C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 004B0 809C9270 54410009 */  bnel    $v0, $at, .L809C9298
/* 004B4 809C9274 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
.L809C9278:
/* 004B8 809C9278 0C00B58B */  jal     Actor_SetScale

/* 004BC 809C927C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 004C0 809C9280 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004C4 809C9284 0C00B56E */  jal     Actor_SetHeight

/* 004C8 809C9288 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 004CC 809C928C 10000009 */  beq     $zero, $zero, .L809C92B4
/* 004D0 809C9290 8FBF002C */  lw      $ra, 0x002C($sp)
/* 004D4 809C9294 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
.L809C9298:
/* 004D8 809C9298 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 004DC 809C929C 0C00B58B */  jal     Actor_SetScale

/* 004E0 809C92A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004E4 809C92A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004E8 809C92A8 0C00B56E */  jal     Actor_SetHeight

/* 004EC 809C92AC 3C054220 */  lui     $a1, 0x4220                ## $a1 = 42200000
/* 004F0 809C92B0 8FBF002C */  lw      $ra, 0x002C($sp)
.L809C92B4:
/* 004F4 809C92B4 8FB00024 */  lw      $s0, 0x0024($sp)
/* 004F8 809C92B8 8FB10028 */  lw      $s1, 0x0028($sp)
/* 004FC 809C92BC 03E00008 */  jr      $ra
/* 00500 809C92C0 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
