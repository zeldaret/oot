.rdata
glabel D_8097068C
    .asciz "../z_demo_ec.c"
    .balign 4

glabel D_8097069C
    .asciz "../z_demo_ec.c"
    .balign 4

.text
glabel func_8096DA80
/* 005D0 8096DA80 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 005D4 8096DA84 AFBF002C */  sw      $ra, 0x002C($sp)
/* 005D8 8096DA88 AFB00028 */  sw      $s0, 0x0028($sp)
/* 005DC 8096DA8C AFA40070 */  sw      $a0, 0x0070($sp)
/* 005E0 8096DA90 AFA50074 */  sw      $a1, 0x0074($sp)
/* 005E4 8096DA94 AFA60078 */  sw      $a2, 0x0078($sp)
/* 005E8 8096DA98 AFA7007C */  sw      $a3, 0x007C($sp)
/* 005EC 8096DA9C 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 005F0 8096DAA0 3C068097 */  lui     $a2, %hi(D_8097068C)       ## $a2 = 80970000
/* 005F4 8096DAA4 24C6068C */  addiu   $a2, $a2, %lo(D_8097068C)  ## $a2 = 8097068C
/* 005F8 8096DAA8 24070261 */  addiu   $a3, $zero, 0x0261         ## $a3 = 00000261
/* 005FC 8096DAAC 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE0
/* 00600 8096DAB0 0C031AB1 */  jal     Graph_OpenDisps
/* 00604 8096DAB4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00608 8096DAB8 0C024F46 */  jal     func_80093D18
/* 0060C 8096DABC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00610 8096DAC0 8FA40078 */  lw      $a0, 0x0078($sp)
/* 00614 8096DAC4 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 00618 8096DAC8 37180028 */  ori     $t8, $t8, 0x0028           ## $t8 = DB060028
/* 0061C 8096DACC 10800011 */  beq     $a0, $zero, .L8096DB14
/* 00620 8096DAD0 0004C900 */  sll     $t9, $a0,  4
/* 00624 8096DAD4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00628 8096DAD8 00194702 */  srl     $t0, $t9, 28
/* 0062C 8096DADC 00084880 */  sll     $t1, $t0,  2
/* 00630 8096DAE0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00634 8096DAE4 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 00638 8096DAE8 3C0A8016 */  lui     $t2, %hi(gSegments)
/* 0063C 8096DAEC 01495021 */  addu    $t2, $t2, $t1
/* 00640 8096DAF0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00644 8096DAF4 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00648 8096DAF8 8D4A6FA8 */  lw      $t2, %lo(gSegments)($t2)
/* 0064C 8096DAFC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00650 8096DB00 00815824 */  and     $t3, $a0, $at
/* 00654 8096DB04 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00658 8096DB08 014B6021 */  addu    $t4, $t2, $t3
/* 0065C 8096DB0C 01816821 */  addu    $t5, $t4, $at
/* 00660 8096DB10 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
.L8096DB14:
/* 00664 8096DB14 8FA4007C */  lw      $a0, 0x007C($sp)
/* 00668 8096DB18 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 0066C 8096DB1C 35EF002C */  ori     $t7, $t7, 0x002C           ## $t7 = DB06002C
/* 00670 8096DB20 10800011 */  beq     $a0, $zero, .L8096DB68
/* 00674 8096DB24 0004C100 */  sll     $t8, $a0,  4
/* 00678 8096DB28 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0067C 8096DB2C 0018CF02 */  srl     $t9, $t8, 28
/* 00680 8096DB30 00194080 */  sll     $t0, $t9,  2
/* 00684 8096DB34 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00688 8096DB38 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 0068C 8096DB3C 3C098016 */  lui     $t1, %hi(gSegments)
/* 00690 8096DB40 01284821 */  addu    $t1, $t1, $t0
/* 00694 8096DB44 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00698 8096DB48 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0069C 8096DB4C 8D296FA8 */  lw      $t1, %lo(gSegments)($t1)
/* 006A0 8096DB50 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 006A4 8096DB54 00815024 */  and     $t2, $a0, $at
/* 006A8 8096DB58 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 006AC 8096DB5C 012A5821 */  addu    $t3, $t1, $t2
/* 006B0 8096DB60 01616021 */  addu    $t4, $t3, $at
/* 006B4 8096DB64 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
.L8096DB68:
/* 006B8 8096DB68 8FA50080 */  lw      $a1, 0x0080($sp)
/* 006BC 8096DB6C 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 006C0 8096DB70 50A0001E */  beql    $a1, $zero, .L8096DBEC
/* 006C4 8096DB74 8FAE0084 */  lw      $t6, 0x0084($sp)
/* 006C8 8096DB78 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 006CC 8096DB7C 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 006D0 8096DB80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006D4 8096DB84 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 006D8 8096DB88 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 006DC 8096DB8C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 006E0 8096DB90 0C25B616 */  jal     func_8096D858
/* 006E4 8096DB94 AFA20044 */  sw      $v0, 0x0044($sp)
/* 006E8 8096DB98 AFA20034 */  sw      $v0, 0x0034($sp)
/* 006EC 8096DB9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006F0 8096DBA0 0C25B616 */  jal     func_8096D858
/* 006F4 8096DBA4 8FA50080 */  lw      $a1, 0x0080($sp)
/* 006F8 8096DBA8 8FB80034 */  lw      $t8, 0x0034($sp)
/* 006FC 8096DBAC 3C0A8016 */  lui     $t2, %hi(gSegments)
/* 00700 8096DBB0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00704 8096DBB4 0018C900 */  sll     $t9, $t8,  4
/* 00708 8096DBB8 00194702 */  srl     $t0, $t9, 28
/* 0070C 8096DBBC 00084880 */  sll     $t1, $t0,  2
/* 00710 8096DBC0 01495021 */  addu    $t2, $t2, $t1
/* 00714 8096DBC4 8D4A6FA8 */  lw      $t2, %lo(gSegments)($t2)
/* 00718 8096DBC8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0071C 8096DBCC 00417824 */  and     $t7, $v0, $at
/* 00720 8096DBD0 8FAD0044 */  lw      $t5, 0x0044($sp)
/* 00724 8096DBD4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00728 8096DBD8 01EA5821 */  addu    $t3, $t7, $t2
/* 0072C 8096DBDC 01616021 */  addu    $t4, $t3, $at
/* 00730 8096DBE0 ADAC0004 */  sw      $t4, 0x0004($t5)           ## 00000004
/* 00734 8096DBE4 8FA50080 */  lw      $a1, 0x0080($sp)
/* 00738 8096DBE8 8FAE0084 */  lw      $t6, 0x0084($sp)
.L8096DBEC:
/* 0073C 8096DBEC 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 00740 8096DBF0 51C0001D */  beql    $t6, $zero, .L8096DC68
/* 00744 8096DBF4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00748 8096DBF8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0074C 8096DBFC 37390024 */  ori     $t9, $t9, 0x0024           ## $t9 = DB060024
/* 00750 8096DC00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00754 8096DC04 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00758 8096DC08 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 0075C 8096DC0C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00760 8096DC10 0C25B616 */  jal     func_8096D858
/* 00764 8096DC14 AFA20040 */  sw      $v0, 0x0040($sp)
/* 00768 8096DC18 AFA20034 */  sw      $v0, 0x0034($sp)
/* 0076C 8096DC1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00770 8096DC20 0C25B616 */  jal     func_8096D858
/* 00774 8096DC24 8FA50080 */  lw      $a1, 0x0080($sp)
/* 00778 8096DC28 8FA90034 */  lw      $t1, 0x0034($sp)
/* 0077C 8096DC2C 3C0C8016 */  lui     $t4, %hi(gSegments)
/* 00780 8096DC30 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00784 8096DC34 00097900 */  sll     $t7, $t1,  4
/* 00788 8096DC38 000F5702 */  srl     $t2, $t7, 28
/* 0078C 8096DC3C 000A5880 */  sll     $t3, $t2,  2
/* 00790 8096DC40 018B6021 */  addu    $t4, $t4, $t3
/* 00794 8096DC44 8D8C6FA8 */  lw      $t4, %lo(gSegments)($t4)
/* 00798 8096DC48 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0079C 8096DC4C 00414024 */  and     $t0, $v0, $at
/* 007A0 8096DC50 8FB80040 */  lw      $t8, 0x0040($sp)
/* 007A4 8096DC54 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 007A8 8096DC58 010C6821 */  addu    $t5, $t0, $t4
/* 007AC 8096DC5C 01A17021 */  addu    $t6, $t5, $at
/* 007B0 8096DC60 AF0E0004 */  sw      $t6, 0x0004($t8)           ## 00000004
/* 007B4 8096DC64 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
.L8096DC68:
/* 007B8 8096DC68 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 007BC 8096DC6C 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 007C0 8096DC70 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 007C4 8096DC74 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 007C8 8096DC78 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 007CC 8096DC7C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 007D0 8096DC80 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 007D4 8096DC84 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 007D8 8096DC88 3C088011 */  lui     $t0, %hi(D_80116280+0x10)
/* 007DC 8096DC8C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 007E0 8096DC90 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 007E4 8096DC94 25086290 */  addiu   $t0, %lo(D_80116280+0x10)
/* 007E8 8096DC98 356B0030 */  ori     $t3, $t3, 0x0030           ## $t3 = DB060030
/* 007EC 8096DC9C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 007F0 8096DCA0 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 007F4 8096DCA4 8FA30070 */  lw      $v1, 0x0070($sp)
/* 007F8 8096DCA8 8FAD008C */  lw      $t5, 0x008C($sp)
/* 007FC 8096DCAC 8FAC0088 */  lw      $t4, 0x0088($sp)
/* 00800 8096DCB0 2462014C */  addiu   $v0, $v1, 0x014C           ## $v0 = 0000014C
/* 00804 8096DCB4 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 00808 8096DCB8 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 0080C 8096DCBC 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 00810 8096DCC0 AFA30018 */  sw      $v1, 0x0018($sp)
/* 00814 8096DCC4 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 00818 8096DCC8 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 0081C 8096DCCC 8E0E02C0 */  lw      $t6, 0x02C0($s0)           ## 000002C0
/* 00820 8096DCD0 8FA40074 */  lw      $a0, 0x0074($sp)
/* 00824 8096DCD4 0C0289CF */  jal     Skeleton_DrawFlex
/* 00828 8096DCD8 AFAE001C */  sw      $t6, 0x001C($sp)
/* 0082C 8096DCDC 3C068097 */  lui     $a2, %hi(D_8097069C)       ## $a2 = 80970000
/* 00830 8096DCE0 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
/* 00834 8096DCE4 24C6069C */  addiu   $a2, $a2, %lo(D_8097069C)  ## $a2 = 8097069C
/* 00838 8096DCE8 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE0
/* 0083C 8096DCEC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00840 8096DCF0 0C031AD5 */  jal     Graph_CloseDisps
/* 00844 8096DCF4 24070286 */  addiu   $a3, $zero, 0x0286         ## $a3 = 00000286
/* 00848 8096DCF8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0084C 8096DCFC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00850 8096DD00 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 00854 8096DD04 03E00008 */  jr      $ra
/* 00858 8096DD08 00000000 */  nop
