glabel func_80A60D28
/* 05A38 80A60D28 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 05A3C 80A60D2C AFBF002C */  sw      $ra, 0x002C($sp)
/* 05A40 80A60D30 AFB00028 */  sw      $s0, 0x0028($sp)
/* 05A44 80A60D34 AFA50034 */  sw      $a1, 0x0034($sp)
/* 05A48 80A60D38 8CCE000C */  lw      $t6, 0x000C($a2)           ## 0000000C
/* 05A4C 80A60D3C 2401F7FF */  addiu   $at, $zero, 0xF7FF         ## $at = FFFFF7FF
/* 05A50 80A60D40 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 05A54 80A60D44 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 05A58 80A60D48 948E0384 */  lhu     $t6, 0x0384($a0)           ## 00000384
/* 05A5C 80A60D4C 240D0005 */  addiu   $t5, $zero, 0x0005         ## $t5 = 00000005
/* 05A60 80A60D50 468021A0 */  cvt.s.w $f6, $f4
/* 05A64 80A60D54 2485021C */  addiu   $a1, $a0, 0x021C           ## $a1 = 0000021C
/* 05A68 80A60D58 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05A6C 80A60D5C 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 05A70 80A60D60 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 05A74 80A60D64 E4860024 */  swc1    $f6, 0x0024($a0)           ## 00000024
/* 05A78 80A60D68 8CCF0010 */  lw      $t7, 0x0010($a2)           ## 00000010
/* 05A7C 80A60D6C 8C880024 */  lw      $t0, 0x0024($a0)           ## 00000024
/* 05A80 80A60D70 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 05A84 80A60D74 31CFFFFB */  andi    $t7, $t6, 0xFFFB           ## $t7 = 00000000
/* 05A88 80A60D78 468042A0 */  cvt.s.w $f10, $f8
/* 05A8C 80A60D7C E48A0028 */  swc1    $f10, 0x0028($a0)          ## 00000028
/* 05A90 80A60D80 8CD80014 */  lw      $t8, 0x0014($a2)           ## 00000014
/* 05A94 80A60D84 AC880100 */  sw      $t0, 0x0100($a0)           ## 00000100
/* 05A98 80A60D88 8C990028 */  lw      $t9, 0x0028($a0)           ## 00000028
/* 05A9C 80A60D8C 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 05AA0 80A60D90 8C9801F0 */  lw      $t8, 0x01F0($a0)           ## 000001F0
/* 05AA4 80A60D94 AC990104 */  sw      $t9, 0x0104($a0)           ## 00000104
/* 05AA8 80A60D98 468084A0 */  cvt.s.w $f18, $f16
/* 05AAC 80A60D9C 0301C824 */  and     $t9, $t8, $at
/* 05AB0 80A60DA0 E492002C */  swc1    $f18, 0x002C($a0)          ## 0000002C
/* 05AB4 80A60DA4 8C88002C */  lw      $t0, 0x002C($a0)           ## 0000002C
/* 05AB8 80A60DA8 AC880108 */  sw      $t0, 0x0108($a0)           ## 00000108
/* 05ABC 80A60DAC 94C90008 */  lhu     $t1, 0x0008($a2)           ## 00000008
/* 05AC0 80A60DB0 AC8C0210 */  sw      $t4, 0x0210($a0)           ## 00000210
/* 05AC4 80A60DB4 AC8D0380 */  sw      $t5, 0x0380($a0)           ## 00000380
/* 05AC8 80A60DB8 A4890032 */  sh      $t1, 0x0032($a0)           ## 00000032
/* 05ACC 80A60DBC 888B0030 */  lwl     $t3, 0x0030($a0)           ## 00000030
/* 05AD0 80A60DC0 988B0033 */  lwr     $t3, 0x0033($a0)           ## 00000033
/* 05AD4 80A60DC4 8C890228 */  lw      $t1, 0x0228($a0)           ## 00000228
/* 05AD8 80A60DC8 A48F0384 */  sh      $t7, 0x0384($a0)           ## 00000384
/* 05ADC 80A60DCC A88B00B4 */  swl     $t3, 0x00B4($a0)           ## 000000B4
/* 05AE0 80A60DD0 B88B00B7 */  swr     $t3, 0x00B7($a0)           ## 000000B7
/* 05AE4 80A60DD4 948B0034 */  lhu     $t3, 0x0034($a0)           ## 00000034
/* 05AE8 80A60DD8 AC9901F0 */  sw      $t9, 0x01F0($a0)           ## 000001F0
/* 05AEC 80A60DDC 3C0C8013 */  lui     $t4, %hi(D_801333E8)
/* 05AF0 80A60DE0 A48B00B8 */  sh      $t3, 0x00B8($a0)           ## 000000B8
/* 05AF4 80A60DE4 ACA90000 */  sw      $t1, 0x0000($a1)           ## 0000021C
/* 05AF8 80A60DE8 8C88022C */  lw      $t0, 0x022C($a0)           ## 0000022C
/* 05AFC 80A60DEC 258C33E8 */  addiu   $t4, %lo(D_801333E8)
/* 05B00 80A60DF0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 05B04 80A60DF4 ACA80004 */  sw      $t0, 0x0004($a1)           ## 00000220
/* 05B08 80A60DF8 8C890230 */  lw      $t1, 0x0230($a0)           ## 00000230
/* 05B0C 80A60DFC ACA90008 */  sw      $t1, 0x0008($a1)           ## 00000224
/* 05B10 80A60E00 8C8A01F0 */  lw      $t2, 0x01F0($a0)           ## 000001F0
/* 05B14 80A60E04 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 05B18 80A60E08 000A5900 */  sll     $t3, $t2,  4
/* 05B1C 80A60E0C 05630005 */  bgezl   $t3, .L80A60E24
/* 05B20 80A60E10 8E0D0158 */  lw      $t5, 0x0158($s0)           ## 00000158
/* 05B24 80A60E14 AFA70010 */  sw      $a3, 0x0010($sp)
/* 05B28 80A60E18 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 05B2C 80A60E1C AFAC0014 */  sw      $t4, 0x0014($sp)
/* 05B30 80A60E20 8E0D0158 */  lw      $t5, 0x0158($s0)           ## 00000158
.L80A60E24:
/* 05B34 80A60E24 3C0F80A6 */  lui     $t7, %hi(D_80A65E58)       ## $t7 = 80A60000
/* 05B38 80A60E28 8E180210 */  lw      $t8, 0x0210($s0)           ## 00000210
/* 05B3C 80A60E2C 000D7080 */  sll     $t6, $t5,  2
/* 05B40 80A60E30 01EE7821 */  addu    $t7, $t7, $t6
/* 05B44 80A60E34 8DEF5E58 */  lw      $t7, %lo(D_80A65E58)($t7)
/* 05B48 80A60E38 0018C880 */  sll     $t9, $t8,  2
/* 05B4C 80A60E3C 01F94021 */  addu    $t0, $t7, $t9
/* 05B50 80A60E40 0C028800 */  jal     Animation_GetLastFrame

/* 05B54 80A60E44 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 05B58 80A60E48 8E090158 */  lw      $t1, 0x0158($s0)           ## 00000158
/* 05B5C 80A60E4C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 05B60 80A60E50 3C0B80A6 */  lui     $t3, %hi(D_80A65E58)       ## $t3 = 80A60000
/* 05B64 80A60E54 00095080 */  sll     $t2, $t1,  2
/* 05B68 80A60E58 8E0C0210 */  lw      $t4, 0x0210($s0)           ## 00000210
/* 05B6C 80A60E5C 016A5821 */  addu    $t3, $t3, $t2
/* 05B70 80A60E60 8D6B5E58 */  lw      $t3, %lo(D_80A65E58)($t3)
/* 05B74 80A60E64 468021A0 */  cvt.s.w $f6, $f4
/* 05B78 80A60E68 000C6880 */  sll     $t5, $t4,  2
/* 05B7C 80A60E6C 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 05B80 80A60E70 016D7021 */  addu    $t6, $t3, $t5
/* 05B84 80A60E74 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 05B88 80A60E78 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 05B8C 80A60E7C 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 05B90 80A60E80 AFB80014 */  sw      $t8, 0x0014($sp)
/* 05B94 80A60E84 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 05B98 80A60E88 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 05B9C 80A60E8C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 05BA0 80A60E90 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 05BA4 80A60E94 0C029468 */  jal     Animation_Change

/* 05BA8 80A60E98 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 05BAC 80A60E9C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 05BB0 80A60EA0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 05BB4 80A60EA4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 05BB8 80A60EA8 03E00008 */  jr      $ra
/* 05BBC 80A60EAC 00000000 */  nop
