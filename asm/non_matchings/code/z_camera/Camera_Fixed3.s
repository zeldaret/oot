.rdata
glabel D_801393DC
    .asciz "camera: position change %d \n"
    .balign 4

.late_rodata
glabel D_8013A190
    .float 0.01

.text
glabel Camera_Fixed3
/* AC6F84 8004FDE4 27BDFF98 */  addiu $sp, $sp, -0x68
/* AC6F88 8004FDE8 AFBF001C */  sw    $ra, 0x1c($sp)
/* AC6F8C 8004FDEC AFB00018 */  sw    $s0, 0x18($sp)
/* AC6F90 8004FDF0 0C0111DB */  jal   func_8004476C
/* AC6F94 8004FDF4 00808025 */   move  $s0, $a0
/* AC6F98 8004FDF8 2605005C */  addiu $a1, $s0, 0x5c
/* AC6F9C 8004FDFC 26060050 */  addiu $a2, $s0, 0x50
/* AC6FA0 8004FE00 AFA60030 */  sw    $a2, 0x30($sp)
/* AC6FA4 8004FE04 AFA50034 */  sw    $a1, 0x34($sp)
/* AC6FA8 8004FE08 27A40048 */  addiu $a0, $sp, 0x48
/* AC6FAC 8004FE0C 0C01F124 */  jal   OLib_Vec3fDiffToVecSphGeo
/* AC6FB0 8004FE10 AFA20050 */   sw    $v0, 0x50($sp)
/* AC6FB4 8004FE14 8603015E */  lh    $v1, 0x15e($s0)
/* AC6FB8 8004FE18 8FA70050 */  lw    $a3, 0x50($sp)
/* AC6FBC 8004FE1C 2401000A */  li    $at, 10
/* AC6FC0 8004FE20 5060000A */  beql  $v1, $zero, .L8004FE4C
/* AC6FC4 8004FE24 86180142 */   lh    $t8, 0x142($s0)
/* AC6FC8 8004FE28 10610007 */  beq   $v1, $at, .L8004FE48
/* AC6FCC 8004FE2C 24010014 */   li    $at, 20
/* AC6FD0 8004FE30 10610005 */  beq   $v1, $at, .L8004FE48
/* AC6FD4 8004FE34 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC6FD8 8004FE38 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC6FDC 8004FE3C 85CF0314 */  lh    $t7, 0x314($t6)
/* AC6FE0 8004FE40 11E00034 */  beqz  $t7, .L8004FF14
/* AC6FE4 8004FE44 00000000 */   nop
.L8004FE48:
/* AC6FE8 8004FE48 86180142 */  lh    $t8, 0x142($s0)
.L8004FE4C:
/* AC6FEC 8004FE4C 3C088012 */  lui   $t0, %hi(sCameraSettings+4)
/* AC6FF0 8004FE50 86090144 */  lh    $t1, 0x144($s0)
/* AC6FF4 8004FE54 0018C8C0 */  sll   $t9, $t8, 3
/* AC6FF8 8004FE58 01194021 */  addu  $t0, $t0, $t9
/* AC6FFC 8004FE5C 8D08D068 */  lw    $t0, %lo(sCameraSettings+4)($t0)
/* AC7000 8004FE60 000950C0 */  sll   $t2, $t1, 3
/* AC7004 8004FE64 26060074 */  addiu $a2, $s0, 0x74
/* AC7008 8004FE68 010A5821 */  addu  $t3, $t0, $t2
/* AC700C 8004FE6C 8D620004 */  lw    $v0, 4($t3)
/* AC7010 8004FE70 00C02025 */  move  $a0, $a2
/* AC7014 8004FE74 00E02825 */  move  $a1, $a3
/* AC7018 8004FE78 844C0000 */  lh    $t4, ($v0)
/* AC701C 8004FE7C A60C0000 */  sh    $t4, ($s0)
/* AC7020 8004FE80 AFA70050 */  sw    $a3, 0x50($sp)
/* AC7024 8004FE84 0C010EF1 */  jal   func_80043BC4
/* AC7028 8004FE88 AFA6002C */   sw    $a2, 0x2c($sp)
/* AC702C 8004FE8C 8FA6002C */  lw    $a2, 0x2c($sp)
/* AC7030 8004FE90 8FAD0034 */  lw    $t5, 0x34($sp)
/* AC7034 8004FE94 8FA70050 */  lw    $a3, 0x50($sp)
/* AC7038 8004FE98 8CCF0000 */  lw    $t7, ($a2)
/* AC703C 8004FE9C 26030002 */  addiu $v1, $s0, 2
/* AC7040 8004FEA0 2401FFFF */  li    $at, -1
/* AC7044 8004FEA4 ADAF0000 */  sw    $t7, ($t5)
/* AC7048 8004FEA8 8CCE0004 */  lw    $t6, 4($a2)
/* AC704C 8004FEAC 240A1770 */  li    $t2, 6000
/* AC7050 8004FEB0 ADAE0004 */  sw    $t6, 4($t5)
/* AC7054 8004FEB4 8CCF0008 */  lw    $t7, 8($a2)
/* AC7058 8004FEB8 ADAF0008 */  sw    $t7, 8($t5)
/* AC705C 8004FEBC 88F90006 */  lwl   $t9, 6($a3)
/* AC7060 8004FEC0 98F90009 */  lwr   $t9, 9($a3)
/* AC7064 8004FEC4 A8790000 */  swl   $t9, ($v1)
/* AC7068 8004FEC8 B8790003 */  swr   $t9, 3($v1)
/* AC706C 8004FECC 94F9000A */  lhu   $t9, 0xa($a3)
/* AC7070 8004FED0 A4790004 */  sh    $t9, 4($v1)
/* AC7074 8004FED4 84E9000C */  lh    $t1, 0xc($a3)
/* AC7078 8004FED8 A4690006 */  sh    $t1, 6($v1)
/* AC707C 8004FEDC 84640006 */  lh    $a0, 6($v1)
/* AC7080 8004FEE0 84E8000E */  lh    $t0, 0xe($a3)
/* AC7084 8004FEE4 14810003 */  bne   $a0, $at, .L8004FEF4
/* AC7088 8004FEE8 A468000A */   sh    $t0, 0xa($v1)
/* AC708C 8004FEEC A46A0006 */  sh    $t2, 6($v1)
/* AC7090 8004FEF0 84640006 */  lh    $a0, 6($v1)
.L8004FEF4:
/* AC7094 8004FEF4 28810169 */  slti  $at, $a0, 0x169
/* AC7098 8004FEF8 10200006 */  beqz  $at, .L8004FF14
/* AC709C 8004FEFC 00045880 */   sll   $t3, $a0, 2
/* AC70A0 8004FF00 01645823 */  subu  $t3, $t3, $a0
/* AC70A4 8004FF04 000B58C0 */  sll   $t3, $t3, 3
/* AC70A8 8004FF08 01645821 */  addu  $t3, $t3, $a0
/* AC70AC 8004FF0C 000B5880 */  sll   $t3, $t3, 2
/* AC70B0 8004FF10 A46B0006 */  sh    $t3, 6($v1)
.L8004FF14:
/* AC70B4 8004FF14 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC70B8 8004FF18 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC70BC 8004FF1C 26030002 */  addiu $v1, $s0, 2
/* AC70C0 8004FF20 02002025 */  move  $a0, $s0
/* AC70C4 8004FF24 858D0314 */  lh    $t5, 0x314($t4)
/* AC70C8 8004FF28 51A00007 */  beql  $t5, $zero, .L8004FF48
/* AC70CC 8004FF2C 860E015E */   lh    $t6, 0x15e($s0)
/* AC70D0 8004FF30 AFA30028 */  sw    $v1, 0x28($sp)
/* AC70D4 8004FF34 0C011495 */  jal   Camera_CopyPREGToModeValues
/* AC70D8 8004FF38 AFA70050 */   sw    $a3, 0x50($sp)
/* AC70DC 8004FF3C 8FA30028 */  lw    $v1, 0x28($sp)
/* AC70E0 8004FF40 8FA70050 */  lw    $a3, 0x50($sp)
/* AC70E4 8004FF44 860E015E */  lh    $t6, 0x15e($s0)
.L8004FF48:
/* AC70E8 8004FF48 240F0005 */  li    $t7, 5
/* AC70EC 8004FF4C 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC70F0 8004FF50 15C00008 */  bnez  $t6, .L8004FF74
/* AC70F4 8004FF54 3C048014 */   lui   $a0, %hi(D_801393DC) # $a0, 0x8014
/* AC70F8 8004FF58 A46F0008 */  sh    $t7, 8($v1)
/* AC70FC 8004FF5C 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC7100 8004FF60 84780006 */  lh    $t8, 6($v1)
/* AC7104 8004FF64 A7380262 */  sh    $t8, 0x262($t9)
/* AC7108 8004FF68 8609015E */  lh    $t1, 0x15e($s0)
/* AC710C 8004FF6C 25280001 */  addiu $t0, $t1, 1
/* AC7110 8004FF70 A608015E */  sh    $t0, 0x15e($s0)
.L8004FF74:
/* AC7114 8004FF74 8465000A */  lh    $a1, 0xa($v1)
/* AC7118 8004FF78 84EA000E */  lh    $t2, 0xe($a3)
/* AC711C 8004FF7C 248493DC */  addiu $a0, %lo(D_801393DC) # addiu $a0, $a0, -0x6c24
/* AC7120 8004FF80 50AA000B */  beql  $a1, $t2, .L8004FFB0
/* AC7124 8004FF84 84620008 */   lh    $v0, 8($v1)
/* AC7128 8004FF88 AFA30028 */  sw    $v1, 0x28($sp)
/* AC712C 8004FF8C 0C00084C */  jal   osSyncPrintf
/* AC7130 8004FF90 AFA70050 */   sw    $a3, 0x50($sp)
/* AC7134 8004FF94 8FA70050 */  lw    $a3, 0x50($sp)
/* AC7138 8004FF98 8FA30028 */  lw    $v1, 0x28($sp)
/* AC713C 8004FF9C 240C0005 */  li    $t4, 5
/* AC7140 8004FFA0 84EB000E */  lh    $t3, 0xe($a3)
/* AC7144 8004FFA4 A46C0008 */  sh    $t4, 8($v1)
/* AC7148 8004FFA8 A46B000A */  sh    $t3, 0xa($v1)
/* AC714C 8004FFAC 84620008 */  lh    $v0, 8($v1)
.L8004FFB0:
/* AC7150 8004FFB0 240E0001 */  li    $t6, 1
/* AC7154 8004FFB4 3C018012 */  lui   $at, %hi(D_8011D3E8)
/* AC7158 8004FFB8 18400005 */  blez  $v0, .L8004FFD0
/* AC715C 8004FFBC 244DFFFF */   addiu $t5, $v0, -1
/* AC7160 8004FFC0 A46D0008 */  sh    $t5, 8($v1)
/* AC7164 8004FFC4 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* AC7168 8004FFC8 10000002 */  b     .L8004FFD4
/* AC716C 8004FFCC AC2ED3E8 */   sw    $t6, %lo(D_8011D3E8)($at)
.L8004FFD0:
/* AC7170 8004FFD0 AC20D3E8 */  sw    $zero, %lo(D_8011D3E8)($at)
.L8004FFD4:
/* AC7174 8004FFD4 3C014316 */  li    $at, 0x43160000 # 0.000000
/* AC7178 8004FFD8 44812000 */  mtc1  $at, $f4
/* AC717C 8004FFDC 8FA40030 */  lw    $a0, 0x30($sp)
/* AC7180 8004FFE0 8FA50034 */  lw    $a1, 0x34($sp)
/* AC7184 8004FFE4 E7A40054 */  swc1  $f4, 0x54($sp)
/* AC7188 8004FFE8 846F0002 */  lh    $t7, 2($v1)
/* AC718C 8004FFEC 27A60054 */  addiu $a2, $sp, 0x54
/* AC7190 8004FFF0 A7AF005A */  sh    $t7, 0x5a($sp)
/* AC7194 8004FFF4 84780000 */  lh    $t8, ($v1)
/* AC7198 8004FFF8 AFA30028 */  sw    $v1, 0x28($sp)
/* AC719C 8004FFFC 0018C823 */  negu  $t9, $t8
/* AC71A0 80050000 0C010F0A */  jal   func_80043C28
/* AC71A4 80050004 A7B90058 */   sh    $t9, 0x58($sp)
/* AC71A8 80050008 86090000 */  lh    $t1, ($s0)
/* AC71AC 8005000C 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* AC71B0 80050010 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* AC71B4 80050014 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC71B8 80050018 AC29D3A0 */  sw    $t1, %lo(D_8011D3A0)($at)
/* AC71BC 8005001C 8FA30028 */  lw    $v1, 0x28($sp)
/* AC71C0 80050020 850A0262 */  lh    $t2, 0x262($t0)
/* AC71C4 80050024 3C018014 */  lui   $at, %hi(D_8013A190)
/* AC71C8 80050028 44809000 */  mtc1  $zero, $f18
/* AC71CC 8005002C A46A0006 */  sh    $t2, 6($v1)
/* AC71D0 80050030 A600015A */  sh    $zero, 0x15a($s0)
/* AC71D4 80050034 846B0006 */  lh    $t3, 6($v1)
/* AC71D8 80050038 C42AA190 */  lwc1  $f10, %lo(D_8013A190)($at)
/* AC71DC 8005003C E6120100 */  swc1  $f18, 0x100($s0)
/* AC71E0 80050040 448B3000 */  mtc1  $t3, $f6
/* AC71E4 80050044 24020001 */  li    $v0, 1
/* AC71E8 80050048 46803220 */  cvt.s.w $f8, $f6
/* AC71EC 8005004C 460A4402 */  mul.s $f16, $f8, $f10
/* AC71F0 80050050 E61000FC */  swc1  $f16, 0xfc($s0)
/* AC71F4 80050054 8FBF001C */  lw    $ra, 0x1c($sp)
/* AC71F8 80050058 8FB00018 */  lw    $s0, 0x18($sp)
/* AC71FC 8005005C 27BD0068 */  addiu $sp, $sp, 0x68
/* AC7200 80050060 03E00008 */  jr    $ra
/* AC7204 80050064 00000000 */   nop
