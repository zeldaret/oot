glabel func_80A5E00C
/* 02D1C 80A5E00C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02D20 80A5E010 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02D24 80A5E014 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02D28 80A5E018 8C9801F0 */  lw      $t8, 0x01F0($a0)           ## 000001F0
/* 02D2C 80A5E01C 8C890228 */  lw      $t1, 0x0228($a0)           ## 00000228
/* 02D30 80A5E020 2401F7FF */  addiu   $at, $zero, 0xF7FF         ## $at = FFFFF7FF
/* 02D34 80A5E024 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 02D38 80A5E028 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 02D3C 80A5E02C 0301C824 */  and     $t9, $t8, $at
/* 02D40 80A5E030 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 02D44 80A5E034 AC8F0210 */  sw      $t7, 0x0210($a0)           ## 00000210
/* 02D48 80A5E038 AC9901F0 */  sw      $t9, 0x01F0($a0)           ## 000001F0
/* 02D4C 80A5E03C 2485021C */  addiu   $a1, $a0, 0x021C           ## $a1 = 0000021C
/* 02D50 80A5E040 ACA90000 */  sw      $t1, 0x0000($a1)           ## 0000021C
/* 02D54 80A5E044 8C88022C */  lw      $t0, 0x022C($a0)           ## 0000022C
/* 02D58 80A5E048 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02D5C 80A5E04C 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 02D60 80A5E050 ACA80004 */  sw      $t0, 0x0004($a1)           ## 00000220
/* 02D64 80A5E054 8C890230 */  lw      $t1, 0x0230($a0)           ## 00000230
/* 02D68 80A5E058 3C0C8013 */  lui     $t4, 0x8013                ## $t4 = 80130000
/* 02D6C 80A5E05C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 02D70 80A5E060 ACA90008 */  sw      $t1, 0x0008($a1)           ## 00000224
/* 02D74 80A5E064 8C8A01F0 */  lw      $t2, 0x01F0($a0)           ## 000001F0
/* 02D78 80A5E068 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 02D7C 80A5E06C 258C33E8 */  addiu   $t4, $t4, 0x33E8           ## $t4 = 801333E8
/* 02D80 80A5E070 000A5900 */  sll     $t3, $t2,  4
/* 02D84 80A5E074 05610004 */  bgez    $t3, .L80A5E088
/* 02D88 80A5E078 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02D8C 80A5E07C AFA70010 */  sw      $a3, 0x0010($sp)
/* 02D90 80A5E080 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 02D94 80A5E084 AFAC0014 */  sw      $t4, 0x0014($sp)
.L80A5E088:
/* 02D98 80A5E088 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 02D9C 80A5E08C 240500B4 */  addiu   $a1, $zero, 0x00B4         ## $a1 = 000000B4
/* 02DA0 80A5E090 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 02DA4 80A5E094 0C02A800 */  jal     func_800AA000
/* 02DA8 80A5E098 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 02DAC 80A5E09C 8E0D0158 */  lw      $t5, 0x0158($s0)           ## 00000158
/* 02DB0 80A5E0A0 3C0F80A6 */  lui     $t7, %hi(D_80A65E58)       ## $t7 = 80A60000
/* 02DB4 80A5E0A4 8E180210 */  lw      $t8, 0x0210($s0)           ## 00000210
/* 02DB8 80A5E0A8 000D7080 */  sll     $t6, $t5,  2
/* 02DBC 80A5E0AC 01EE7821 */  addu    $t7, $t7, $t6
/* 02DC0 80A5E0B0 8DEF5E58 */  lw      $t7, %lo(D_80A65E58)($t7)
/* 02DC4 80A5E0B4 0018C880 */  sll     $t9, $t8,  2
/* 02DC8 80A5E0B8 01F94021 */  addu    $t0, $t7, $t9
/* 02DCC 80A5E0BC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 02DD0 80A5E0C0 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 02DD4 80A5E0C4 8E090158 */  lw      $t1, 0x0158($s0)           ## 00000158
/* 02DD8 80A5E0C8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02DDC 80A5E0CC 3C0B80A6 */  lui     $t3, %hi(D_80A65E58)       ## $t3 = 80A60000
/* 02DE0 80A5E0D0 00095080 */  sll     $t2, $t1,  2
/* 02DE4 80A5E0D4 8E0C0210 */  lw      $t4, 0x0210($s0)           ## 00000210
/* 02DE8 80A5E0D8 016A5821 */  addu    $t3, $t3, $t2
/* 02DEC 80A5E0DC 8D6B5E58 */  lw      $t3, %lo(D_80A65E58)($t3)
/* 02DF0 80A5E0E0 468021A0 */  cvt.s.w $f6, $f4
/* 02DF4 80A5E0E4 000C6880 */  sll     $t5, $t4,  2
/* 02DF8 80A5E0E8 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 02DFC 80A5E0EC 016D7021 */  addu    $t6, $t3, $t5
/* 02E00 80A5E0F0 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 02E04 80A5E0F4 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 02E08 80A5E0F8 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 02E0C 80A5E0FC AFB80014 */  sw      $t8, 0x0014($sp)
/* 02E10 80A5E100 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 02E14 80A5E104 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 02E18 80A5E108 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02E1C 80A5E10C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02E20 80A5E110 0C029468 */  jal     SkelAnime_ChangeAnim

/* 02E24 80A5E114 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 02E28 80A5E118 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02E2C 80A5E11C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02E30 80A5E120 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02E34 80A5E124 03E00008 */  jr      $ra
/* 02E38 80A5E128 00000000 */  nop
