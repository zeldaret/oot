glabel __osPfsGetStatus
/* B78AB0 80101910 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B78AB4 80101914 AFA40030 */  sw    $a0, 0x30($sp)
/* B78AB8 80101918 AFBF0014 */  sw    $ra, 0x14($sp)
/* B78ABC 8010191C AFA50034 */  sw    $a1, 0x34($sp)
/* B78AC0 80101920 240E00FA */  li    $t6, 250
/* B78AC4 80101924 3C018013 */  lui   $at, %hi(__osPfsInodeCacheBank) # $at, 0x8013
/* B78AC8 80101928 00A02025 */  move  $a0, $a1
/* B78ACC 8010192C A02E4CF4 */  sb    $t6, %lo(__osPfsInodeCacheBank)($at)
/* B78AD0 80101930 0C040678 */  jal   __osPfsRequestOneChannel
/* B78AD4 80101934 00002825 */   move  $a1, $zero
/* B78AD8 80101938 3C058017 */  lui   $a1, %hi(pifMempakBuf) # $a1, 0x8017
/* B78ADC 8010193C 24A55960 */  addiu $a1, %lo(pifMempakBuf) # addiu $a1, $a1, 0x5960
/* B78AE0 80101940 0C0404FC */  jal   __osSiRawStartDma /*(s32 dir, void *addr)*/
/* B78AE4 80101944 24040001 */   li    $a0, 1
/* B78AE8 80101948 8FA40030 */  lw    $a0, 0x30($sp)
/* B78AEC 8010194C 27A50028 */  addiu $a1, $sp, 0x28
/* B78AF0 80101950 0C000CA0 */  jal   osRecvMesg
/* B78AF4 80101954 24060001 */   li    $a2, 1
/* B78AF8 80101958 3C058017 */  lui   $a1, %hi(pifMempakBuf) # $a1, 0x8017
/* B78AFC 8010195C 24A55960 */  addiu $a1, %lo(pifMempakBuf) # addiu $a1, $a1, 0x5960
/* B78B00 80101960 0C0404FC */  jal   __osSiRawStartDma /*(s32 dir, void *addr)*/
/* B78B04 80101964 00002025 */   move  $a0, $zero
/* B78B08 80101968 AFA2002C */  sw    $v0, 0x2c($sp)
/* B78B0C 8010196C 8FA40030 */  lw    $a0, 0x30($sp)
/* B78B10 80101970 27A50028 */  addiu $a1, $sp, 0x28
/* B78B14 80101974 0C000CA0 */  jal   osRecvMesg
/* B78B18 80101978 24060001 */   li    $a2, 1
/* B78B1C 8010197C 8FA40034 */  lw    $a0, 0x34($sp)
/* B78B20 80101980 0C0406A9 */  jal   __osPfsGetOneChannelData
/* B78B24 80101984 27A50024 */   addiu $a1, $sp, 0x24
/* B78B28 80101988 93A20026 */  lbu   $v0, 0x26($sp)
/* B78B2C 8010198C 93B80027 */  lbu   $t8, 0x27($sp)
/* B78B30 80101990 8FBF0014 */  lw    $ra, 0x14($sp)
/* B78B34 80101994 30430001 */  andi  $v1, $v0, 1
/* B78B38 80101998 10600005 */  beqz  $v1, .L801019B0
/* B78B3C 8010199C 304F0002 */   andi  $t7, $v0, 2
/* B78B40 801019A0 11E00003 */  beqz  $t7, .L801019B0
/* B78B44 801019A4 00000000 */   nop   
/* B78B48 801019A8 1000000B */  b     .L801019D8
/* B78B4C 801019AC 24020002 */   li    $v0, 2
.L801019B0:
/* B78B50 801019B0 17000003 */  bnez  $t8, .L801019C0
/* B78B54 801019B4 00000000 */   nop   
/* B78B58 801019B8 14600003 */  bnez  $v1, .L801019C8
/* B78B5C 801019BC 30590004 */   andi  $t9, $v0, 4
.L801019C0:
/* B78B60 801019C0 10000005 */  b     .L801019D8
/* B78B64 801019C4 24020001 */   li    $v0, 1
.L801019C8:
/* B78B68 801019C8 13200003 */  beqz  $t9, .L801019D8
/* B78B6C 801019CC 8FA2002C */   lw    $v0, 0x2c($sp)
/* B78B70 801019D0 10000001 */  b     .L801019D8
/* B78B74 801019D4 24020004 */   li    $v0, 4
.L801019D8:
/* B78B78 801019D8 03E00008 */  jr    $ra
/* B78B7C 801019DC 27BD0030 */   addiu $sp, $sp, 0x30

