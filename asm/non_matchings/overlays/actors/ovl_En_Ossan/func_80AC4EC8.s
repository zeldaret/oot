.rdata
glabel D_80AC9178
    .asciz "\n\x1b[33m初めて手にいれた！！\x1b[m\n\n"
    .balign 4

glabel D_80AC9198
    .asciz "\x1b[33m持ち上げ開始！！\x1b[m\n\n"
    .balign 4

.text
glabel func_80AC4EC8
/* 02228 80AC4EC8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0222C 80AC4ECC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02230 80AC4ED0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 02234 80AC4ED4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 02238 80AC4ED8 8C8E1C44 */  lw      $t6, 0x1C44($a0)           ## 00001C44
/* 0223C 80AC4EDC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02240 80AC4EE0 3C0480AD */  lui     $a0, %hi(D_80AC9178)       ## $a0 = 80AD0000
/* 02244 80AC4EE4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02248 80AC4EE8 24849178 */  addiu   $a0, $a0, %lo(D_80AC9178)  ## $a0 = 80AC9178
/* 0224C 80AC4EEC 0C00084C */  jal     osSyncPrintf
              
/* 02250 80AC4EF0 AFAE002C */  sw      $t6, 0x002C($sp)           
/* 02254 80AC4EF4 922F0252 */  lbu     $t7, 0x0252($s1)           ## 00000252
/* 02258 80AC4EF8 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 0225C 80AC4EFC 44810000 */  mtc1    $at, $f0                   ## $f0 = 120.00
/* 02260 80AC4F00 000FC080 */  sll     $t8, $t7,  2               
/* 02264 80AC4F04 0238C821 */  addu    $t9, $s1, $t8              
/* 02268 80AC4F08 8F280200 */  lw      $t0, 0x0200($t9)           ## 00000200
/* 0226C 80AC4F0C 44070000 */  mfc1    $a3, $f0                   
/* 02270 80AC4F10 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02274 80AC4F14 8D0601A4 */  lw      $a2, 0x01A4($t0)           ## 000001A4
/* 02278 80AC4F18 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0227C 80AC4F1C 0C00BD0D */  jal     func_8002F434              
/* 02280 80AC4F20 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 02284 80AC4F24 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02288 80AC4F28 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 0228C 80AC4F2C 00300821 */  addu    $at, $at, $s0              
/* 02290 80AC4F30 24090036 */  addiu   $t1, $zero, 0x0036         ## $t1 = 00000036
/* 02294 80AC4F34 A02903DC */  sb      $t1, 0x03DC($at)           ## 000103DC
/* 02298 80AC4F38 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0229C 80AC4F3C 00300821 */  addu    $at, $at, $s0              
/* 022A0 80AC4F40 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 022A4 80AC4F44 A02A04BF */  sb      $t2, 0x04BF($at)           ## 000104BF
/* 022A8 80AC4F48 8C4B0680 */  lw      $t3, 0x0680($v0)           ## 00000680
/* 022AC 80AC4F4C 3C01DFFF */  lui     $at, 0xDFFF                ## $at = DFFF0000
/* 022B0 80AC4F50 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = DFFFFFFF
/* 022B4 80AC4F54 01616024 */  and     $t4, $t3, $at              
/* 022B8 80AC4F58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022BC 80AC4F5C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 022C0 80AC4F60 0C02F124 */  jal     func_800BC490              
/* 022C4 80AC4F64 AC4C0680 */  sw      $t4, 0x0680($v0)           ## 00000680
/* 022C8 80AC4F68 0C020978 */  jal     Interface_ChangeAlpha              
/* 022CC 80AC4F6C 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 022D0 80AC4F70 A2200251 */  sb      $zero, 0x0251($s1)         ## 00000251
/* 022D4 80AC4F74 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 022D8 80AC4F78 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 022DC 80AC4F7C 0C2B0CD4 */  jal     func_80AC3350              
/* 022E0 80AC4F80 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 022E4 80AC4F84 240D000F */  addiu   $t5, $zero, 0x000F         ## $t5 = 0000000F
/* 022E8 80AC4F88 3C0480AD */  lui     $a0, %hi(D_80AC9198)       ## $a0 = 80AD0000
/* 022EC 80AC4F8C A62D01FC */  sh      $t5, 0x01FC($s1)           ## 000001FC
/* 022F0 80AC4F90 0C00084C */  jal     osSyncPrintf
              
/* 022F4 80AC4F94 24849198 */  addiu   $a0, $a0, %lo(D_80AC9198)  ## $a0 = 80AC9198
/* 022F8 80AC4F98 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 022FC 80AC4F9C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 02300 80AC4FA0 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 02304 80AC4FA4 03E00008 */  jr      $ra                        
/* 02308 80AC4FA8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
