glabel func_80B23A88
/* 00D98 80B23A88 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D9C 80B23A8C AFBF001C */  sw      $ra, 0x001C($sp)
/* 00DA0 80B23A90 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00DA4 80B23A94 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00DA8 80B23A98 3C070001 */  lui     $a3, 0x0001                ## $a3 = 00010000
/* 00DAC 80B23A9C 00E53821 */  addu    $a3, $a3, $a1
/* 00DB0 80B23AA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DB4 80B23AA4 11C00040 */  beq     $t6, $zero, .L80B23BA8
/* 00DB8 80B23AA8 8CE71DE4 */  lw      $a3, 0x1DE4($a3)           ## 00011DE4
/* 00DBC 80B23AAC 848602D8 */  lh      $a2, 0x02D8($a0)           ## 000002D8
/* 00DC0 80B23AB0 00067880 */  sll     $t7, $a2,  2
/* 00DC4 80B23AB4 00AFC021 */  addu    $t8, $a1, $t7
/* 00DC8 80B23AB8 8F031D8C */  lw      $v1, 0x1D8C($t8)           ## 00001D8C
/* 00DCC 80B23ABC 5060003B */  beql    $v1, $zero, .L80B23BAC
/* 00DD0 80B23AC0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00DD4 80B23AC4 94620000 */  lhu     $v0, 0x0000($v1)           ## 00000000
/* 00DD8 80B23AC8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00DDC 80B23ACC 1041000A */  beq     $v0, $at, .L80B23AF8
/* 00DE0 80B23AD0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00DE4 80B23AD4 10410010 */  beq     $v0, $at, .L80B23B18
/* 00DE8 80B23AD8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00DEC 80B23ADC 1041001A */  beq     $v0, $at, .L80B23B48
/* 00DF0 80B23AE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DF4 80B23AE4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00DF8 80B23AE8 1041001C */  beq     $v0, $at, .L80B23B5C
/* 00DFC 80B23AEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E00 80B23AF0 1000002E */  beq     $zero, $zero, .L80B23BAC
/* 00E04 80B23AF4 8FBF001C */  lw      $ra, 0x001C($sp)
.L80B23AF8:
/* 00E08 80B23AF8 0C2C90AD */  jal     func_80B242B4
/* 00E0C 80B23AFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E10 80B23B00 3C0580B2 */  lui     $a1, %hi(func_80B239A8)    ## $a1 = 80B20000
/* 00E14 80B23B04 24A539A8 */  addiu   $a1, $a1, %lo(func_80B239A8) ## $a1 = 80B239A8
/* 00E18 80B23B08 0C2C8B3C */  jal     func_80B22CF0
/* 00E1C 80B23B0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E20 80B23B10 10000026 */  beq     $zero, $zero, .L80B23BAC
/* 00E24 80B23B14 8FBF001C */  lw      $ra, 0x001C($sp)
.L80B23B18:
/* 00E28 80B23B18 0C2C90AD */  jal     func_80B242B4
/* 00E2C 80B23B1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E30 80B23B20 3C0580B2 */  lui     $a1, %hi(func_80B22F28)    ## $a1 = 80B20000
/* 00E34 80B23B24 24A52F28 */  addiu   $a1, $a1, %lo(func_80B22F28) ## $a1 = 80B22F28
/* 00E38 80B23B28 0C2C8B3C */  jal     func_80B22CF0
/* 00E3C 80B23B2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E40 80B23B30 3C050600 */  lui     $a1, %hi(D_060049C8)                ## $a1 = 06000000
/* 00E44 80B23B34 24A549C8 */  addiu   $a1, $a1, %lo(D_060049C8)           ## $a1 = 060049C8
/* 00E48 80B23B38 0C0294BE */  jal     Animation_PlayLoop
/* 00E4C 80B23B3C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00E50 80B23B40 10000019 */  beq     $zero, $zero, .L80B23BA8
/* 00E54 80B23B44 AE0002E4 */  sw      $zero, 0x02E4($s0)         ## 000002E4
.L80B23B48:
/* 00E58 80B23B48 3C0580B2 */  lui     $a1, %hi(func_80B23820)    ## $a1 = 80B20000
/* 00E5C 80B23B4C 0C2C8B3C */  jal     func_80B22CF0
/* 00E60 80B23B50 24A53820 */  addiu   $a1, $a1, %lo(func_80B23820) ## $a1 = 80B23820
/* 00E64 80B23B54 10000014 */  beq     $zero, $zero, .L80B23BA8
/* 00E68 80B23B58 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
.L80B23B5C:
/* 00E6C 80B23B5C 3C0580B2 */  lui     $a1, %hi(func_80B230D8)    ## $a1 = 80B20000
/* 00E70 80B23B60 24A530D8 */  addiu   $a1, $a1, %lo(func_80B230D8) ## $a1 = 80B230D8
/* 00E74 80B23B64 0C2C8B3C */  jal     func_80B22CF0
/* 00E78 80B23B68 AFA70024 */  sw      $a3, 0x0024($sp)
/* 00E7C 80B23B6C 3C050600 */  lui     $a1, %hi(D_060049C8)                ## $a1 = 06000000
/* 00E80 80B23B70 24A549C8 */  addiu   $a1, $a1, %lo(D_060049C8)           ## $a1 = 060049C8
/* 00E84 80B23B74 0C0294BE */  jal     Animation_PlayLoop
/* 00E88 80B23B78 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00E8C 80B23B7C 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 00E90 80B23B80 8FA70024 */  lw      $a3, 0x0024($sp)
/* 00E94 80B23B84 AE0002E4 */  sw      $zero, 0x02E4($s0)         ## 000002E4
/* 00E98 80B23B88 13200006 */  beq     $t9, $zero, .L80B23BA4
/* 00E9C 80B23B8C 00076280 */  sll     $t4, $a3, 10
/* 00EA0 80B23B90 00074A80 */  sll     $t1, $a3, 10
/* 00EA4 80B23B94 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00EA8 80B23B98 01215021 */  addu    $t2, $t1, $at
/* 00EAC 80B23B9C 10000002 */  beq     $zero, $zero, .L80B23BA8
/* 00EB0 80B23BA0 A60A02D6 */  sh      $t2, 0x02D6($s0)           ## 000002D6
.L80B23BA4:
/* 00EB4 80B23BA4 A60C02D6 */  sh      $t4, 0x02D6($s0)           ## 000002D6
.L80B23BA8:
/* 00EB8 80B23BA8 8FBF001C */  lw      $ra, 0x001C($sp)
.L80B23BAC:
/* 00EBC 80B23BAC 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00EC0 80B23BB0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00EC4 80B23BB4 03E00008 */  jr      $ra
/* 00EC8 80B23BB8 00000000 */  nop
