.late_rodata
glabel jtbl_8095C58C
.word L8094FEC4
.word L8094FF00
.word L8094FF00
.word L8094FF00
.word L8094FF30
.word L8094FF30
.word L8094FF30
.word L8094FF90
.word L8094FF90
.word L8094FF90
.word L8094FF90
.word L8094FF90
.word L8094FF90
.word L8094FF90
.word L8094FF90
.word L8094FF90
.word L8094FF90
.word L8094FF60
.word L8094FF60
.word L8094FF60
.word L8094FFD8
glabel jtbl_8095C5E0
.word L80950024
.word L809504C4
.word L809504C4
.word L809504C4
.word L80950538
.word L80950538
.word L80950538
.word L809505C4
.word L809505C4
.word L809505C4
.word L809505C4
.word L809505C4
.word L809505C4
.word L809505C4
.word L809505C4
.word L809505C4
.word L809505C4
.word L8095059C
.word L8095059C
.word L8095059C
.word L809505B0

.text
glabel BossVa_Init
/* 00B9C 8094FE5C 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00BA0 8094FE60 AFB40048 */  sw      $s4, 0x0048($sp)
/* 00BA4 8094FE64 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 00BA8 8094FE68 AFBF004C */  sw      $ra, 0x004C($sp)
/* 00BAC 8094FE6C AFB30044 */  sw      $s3, 0x0044($sp)
/* 00BB0 8094FE70 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00BB4 8094FE74 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 00BB8 8094FE78 AFB20040 */  sw      $s2, 0x0040($sp)
/* 00BBC 8094FE7C AFB1003C */  sw      $s1, 0x003C($sp)
/* 00BC0 8094FE80 AFB00038 */  sw      $s0, 0x0038($sp)
/* 00BC4 8094FE84 0C00B58B */  jal     Actor_SetScale

/* 00BC8 8094FE88 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00BCC 8094FE8C 8678001C */  lh      $t8, 0x001C($s3)           ## 0000001C
/* 00BD0 8094FE90 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00BD4 8094FE94 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00BD8 8094FE98 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00BDC 8094FE9C 2F210015 */  sltiu   $at, $t9, 0x0015
/* 00BE0 8094FEA0 A26E001F */  sb      $t6, 0x001F($s3)           ## 0000001F
/* 00BE4 8094FEA4 1020003A */  beq     $at, $zero, .L8094FF90
/* 00BE8 8094FEA8 A26F00AE */  sb      $t7, 0x00AE($s3)           ## 000000AE
/* 00BEC 8094FEAC 0019C880 */  sll     $t9, $t9,  2
/* 00BF0 8094FEB0 3C018096 */  lui     $at, %hi(jtbl_8095C58C)       ## $at = 80960000
/* 00BF4 8094FEB4 00390821 */  addu    $at, $at, $t9
/* 00BF8 8094FEB8 8C39C58C */  lw      $t9, %lo(jtbl_8095C58C)($at)
/* 00BFC 8094FEBC 03200008 */  jr      $t9
/* 00C00 8094FEC0 00000000 */  nop
glabel L8094FEC4
/* 00C04 8094FEC4 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00C08 8094FEC8 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00C0C 8094FECC 24E75184 */  addiu   $a3, $a3, 0x5184           ## $a3 = 06005184
/* 00C10 8094FED0 24C65B18 */  addiu   $a2, $a2, 0x5B18           ## $a2 = 06015B18
/* 00C14 8094FED4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00C18 8094FED8 2665014C */  addiu   $a1, $s3, 0x014C           ## $a1 = 0000014C
/* 00C1C 8094FEDC AFA00010 */  sw      $zero, 0x0010($sp)
/* 00C20 8094FEE0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00C24 8094FEE4 0C02915F */  jal     SkelAnime_Init

/* 00C28 8094FEE8 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00C2C 8094FEEC 8E690004 */  lw      $t1, 0x0004($s3)           ## 00000004
/* 00C30 8094FEF0 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 00C34 8094FEF4 01215025 */  or      $t2, $t1, $at              ## $t2 = 01000000
/* 00C38 8094FEF8 10000037 */  beq     $zero, $zero, .L8094FFD8
/* 00C3C 8094FEFC AE6A0004 */  sw      $t2, 0x0004($s3)           ## 00000004
glabel L8094FF00
/* 00C40 8094FF00 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00C44 8094FF04 3C070601 */  lui     $a3, 0x0601                ## $a3 = 06010000
/* 00C48 8094FF08 24E766A8 */  addiu   $a3, $a3, 0x66A8           ## $a3 = 060166A8
/* 00C4C 8094FF0C 24C67498 */  addiu   $a2, $a2, 0x7498           ## $a2 = 06017498
/* 00C50 8094FF10 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00C54 8094FF14 2665014C */  addiu   $a1, $s3, 0x014C           ## $a1 = 0000014C
/* 00C58 8094FF18 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00C5C 8094FF1C AFA00014 */  sw      $zero, 0x0014($sp)
/* 00C60 8094FF20 0C0291BE */  jal     SkelAnime_InitSV
/* 00C64 8094FF24 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00C68 8094FF28 1000002C */  beq     $zero, $zero, .L8094FFDC
/* 00C6C 8094FF2C 8E6E0024 */  lw      $t6, 0x0024($s3)           ## 00000024
glabel L8094FF30
/* 00C70 8094FF30 3C060602 */  lui     $a2, 0x0602                ## $a2 = 06020000
/* 00C74 8094FF34 3C070602 */  lui     $a3, 0x0602                ## $a3 = 06020000
/* 00C78 8094FF38 24E78D18 */  addiu   $a3, $a3, 0x8D18           ## $a3 = 06018D18
/* 00C7C 8094FF3C 24C699A0 */  addiu   $a2, $a2, 0x99A0           ## $a2 = 060199A0
/* 00C80 8094FF40 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00C84 8094FF44 2665014C */  addiu   $a1, $s3, 0x014C           ## $a1 = 0000014C
/* 00C88 8094FF48 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00C8C 8094FF4C AFA00014 */  sw      $zero, 0x0014($sp)
/* 00C90 8094FF50 0C0291BE */  jal     SkelAnime_InitSV
/* 00C94 8094FF54 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00C98 8094FF58 10000020 */  beq     $zero, $zero, .L8094FFDC
/* 00C9C 8094FF5C 8E6E0024 */  lw      $t6, 0x0024($s3)           ## 00000024
glabel L8094FF60
/* 00CA0 8094FF60 3C060602 */  lui     $a2, 0x0602                ## $a2 = 06020000
/* 00CA4 8094FF64 3C070602 */  lui     $a3, 0x0602                ## $a3 = 06020000
/* 00CA8 8094FF68 24E78150 */  addiu   $a3, $a3, 0x8150           ## $a3 = 06018150
/* 00CAC 8094FF6C 24C68870 */  addiu   $a2, $a2, 0x8870           ## $a2 = 06018870
/* 00CB0 8094FF70 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00CB4 8094FF74 2665014C */  addiu   $a1, $s3, 0x014C           ## $a1 = 0000014C
/* 00CB8 8094FF78 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00CBC 8094FF7C AFA00014 */  sw      $zero, 0x0014($sp)
/* 00CC0 8094FF80 0C0291BE */  jal     SkelAnime_InitSV
/* 00CC4 8094FF84 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00CC8 8094FF88 10000014 */  beq     $zero, $zero, .L8094FFDC
/* 00CCC 8094FF8C 8E6E0024 */  lw      $t6, 0x0024($s3)           ## 00000024
glabel L8094FF90
.L8094FF90:
/* 00CD0 8094FF90 8E6B0004 */  lw      $t3, 0x0004($s3)           ## 00000004
/* 00CD4 8094FF94 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 00CD8 8094FF98 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00CDC 8094FF9C 01616025 */  or      $t4, $t3, $at              ## $t4 = 01000000
/* 00CE0 8094FFA0 AE6C0004 */  sw      $t4, 0x0004($s3)           ## 00000004
/* 00CE4 8094FFA4 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00CE8 8094FFA8 24E70024 */  addiu   $a3, $a3, 0x0024           ## $a3 = 06000024
/* 00CEC 8094FFAC AFA00018 */  sw      $zero, 0x0018($sp)
/* 00CF0 8094FFB0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00CF4 8094FFB4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00CF8 8094FFB8 24C64E70 */  addiu   $a2, $a2, 0x4E70           ## $a2 = 06004E70
/* 00CFC 8094FFBC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00D00 8094FFC0 0C02915F */  jal     SkelAnime_Init

/* 00D04 8094FFC4 2665014C */  addiu   $a1, $s3, 0x014C           ## $a1 = 0000014C
/* 00D08 8094FFC8 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00D0C 8094FFCC 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 00D10 8094FFD0 00000000 */  nop
/* 00D14 8094FFD4 E66400BC */  swc1    $f4, 0x00BC($s3)           ## 000000BC
glabel L8094FFD8
.L8094FFD8:
/* 00D18 8094FFD8 8E6E0024 */  lw      $t6, 0x0024($s3)           ## 00000024
.L8094FFDC:
/* 00D1C 8094FFDC 8678001C */  lh      $t8, 0x001C($s3)           ## 0000001C
/* 00D20 8094FFE0 8E6D0028 */  lw      $t5, 0x0028($s3)           ## 00000028
/* 00D24 8094FFE4 AE6E0038 */  sw      $t6, 0x0038($s3)           ## 00000038
/* 00D28 8094FFE8 8E6E002C */  lw      $t6, 0x002C($s3)           ## 0000002C
/* 00D2C 8094FFEC 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00D30 8094FFF0 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00D34 8094FFF4 2F210015 */  sltiu   $at, $t9, 0x0015
/* 00D38 8094FFF8 A2600194 */  sb      $zero, 0x0194($s3)         ## 00000194
/* 00D3C 8094FFFC A26F0117 */  sb      $t7, 0x0117($s3)           ## 00000117
/* 00D40 80950000 AE6D003C */  sw      $t5, 0x003C($s3)           ## 0000003C
/* 00D44 80950004 1020016F */  beq     $at, $zero, .L809505C4
/* 00D48 80950008 AE6E0040 */  sw      $t6, 0x0040($s3)           ## 00000040
/* 00D4C 8095000C 0019C880 */  sll     $t9, $t9,  2
/* 00D50 80950010 3C018096 */  lui     $at, %hi(jtbl_8095C5E0)       ## $at = 80960000
/* 00D54 80950014 00390821 */  addu    $at, $at, $t9
/* 00D58 80950018 8C39C5E0 */  lw      $t9, %lo(jtbl_8095C5E0)($at)
/* 00D5C 8095001C 03200008 */  jr      $t9
/* 00D60 80950020 00000000 */  nop
glabel L80950024
/* 00D64 80950024 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00D68 80950028 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 00D6C 8095002C 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00D70 80950030 44815000 */  mtc1    $at, $f10                  ## $f10 = 400.00
/* 00D74 80950034 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00D78 80950038 26841C24 */  addiu   $a0, $s4, 0x1C24           ## $a0 = 00001C24
/* 00D7C 8095003C 24090013 */  addiu   $t1, $zero, 0x0013         ## $t1 = 00000013
/* 00D80 80950040 AFA90028 */  sw      $t1, 0x0028($sp)
/* 00D84 80950044 AFA40050 */  sw      $a0, 0x0050($sp)
/* 00D88 80950048 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00D8C 8095004C 02803025 */  or      $a2, $s4, $zero            ## $a2 = 00000000
/* 00D90 80950050 240700BA */  addiu   $a3, $zero, 0x00BA         ## $a3 = 000000BA
/* 00D94 80950054 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00D98 80950058 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00D9C 8095005C AFA00024 */  sw      $zero, 0x0024($sp)
/* 00DA0 80950060 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 00DA4 80950064 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 00DA8 80950068 0C00C916 */  jal     Actor_SpawnAttached

/* 00DAC 8095006C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00DB0 80950070 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00DB4 80950074 02818021 */  addu    $s0, $s4, $at
/* 00DB8 80950078 82051CBC */  lb      $a1, 0x1CBC($s0)           ## 00001CBC
/* 00DBC 8095007C 0C00B337 */  jal     Flags_GetClear

/* 00DC0 80950080 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00DC4 80950084 1040002C */  beq     $v0, $zero, .L80950138
/* 00DC8 80950088 3C0D8096 */  lui     $t5, %hi(D_8095C200)       ## $t5 = 80960000
/* 00DCC 8095008C 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 00DD0 80950090 954AF53A */  lhu     $t2, -0x0AC6($t2)          ## 8015F53A
/* 00DD4 80950094 240600A1 */  addiu   $a2, $zero, 0x00A1         ## $a2 = 000000A1
/* 00DD8 80950098 8FA40050 */  lw      $a0, 0x0050($sp)
/* 00DDC 8095009C 314B0080 */  andi    $t3, $t2, 0x0080           ## $t3 = 00000000
/* 00DE0 809500A0 51600003 */  beql    $t3, $zero, .L809500B0
/* 00DE4 809500A4 C6700028 */  lwc1    $f16, 0x0028($s3)          ## 00000028
/* 00DE8 809500A8 2406005D */  addiu   $a2, $zero, 0x005D         ## $a2 = 0000005D
/* 00DEC 809500AC C6700028 */  lwc1    $f16, 0x0028($s3)          ## 00000028
.L809500B0:
/* 00DF0 809500B0 8E670024 */  lw      $a3, 0x0024($s3)           ## 00000024
/* 00DF4 809500B4 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 00DF8 809500B8 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00DFC 809500BC C672002C */  lwc1    $f18, 0x002C($s3)          ## 0000002C
/* 00E00 809500C0 AFA00024 */  sw      $zero, 0x0024($sp)
/* 00E04 809500C4 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00E08 809500C8 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00E0C 809500CC AFA00018 */  sw      $zero, 0x0018($sp)
/* 00E10 809500D0 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00E14 809500D4 E7B20014 */  swc1    $f18, 0x0014($sp)
/* 00E18 809500D8 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00E1C 809500DC 44813000 */  mtc1    $at, $f6                   ## $f6 = 160.00
/* 00E20 809500E0 C6640024 */  lwc1    $f4, 0x0024($s3)           ## 00000024
/* 00E24 809500E4 C66A0028 */  lwc1    $f10, 0x0028($s3)          ## 00000028
/* 00E28 809500E8 8FA40050 */  lw      $a0, 0x0050($sp)
/* 00E2C 809500EC 46062200 */  add.s   $f8, $f4, $f6
/* 00E30 809500F0 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 00E34 809500F4 C670002C */  lwc1    $f16, 0x002C($s3)          ## 0000002C
/* 00E38 809500F8 AFA00024 */  sw      $zero, 0x0024($sp)
/* 00E3C 809500FC 44074000 */  mfc1    $a3, $f8
/* 00E40 80950100 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00E44 80950104 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00E48 80950108 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00E4C 8095010C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 00E50 80950110 2406005F */  addiu   $a2, $zero, 0x005F         ## $a2 = 0000005F
/* 00E54 80950114 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00E58 80950118 E7B00014 */  swc1    $f16, 0x0014($sp)
/* 00E5C 8095011C 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 00E60 80950120 3C018096 */  lui     $at, %hi(D_80966934)       ## $at = 80960000
/* 00E64 80950124 A42C6934 */  sh      $t4, %lo(D_80966934)($at)
/* 00E68 80950128 0C00B55C */  jal     Actor_Kill

/* 00E6C 8095012C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00E70 80950130 10000156 */  beq     $zero, $zero, .L8095068C
/* 00E74 80950134 8FBF004C */  lw      $ra, 0x004C($sp)
.L80950138:
/* 00E78 80950138 25ADC200 */  addiu   $t5, $t5, %lo(D_8095C200)  ## $t5 = FFFFC200
/* 00E7C 8095013C AE6D0098 */  sw      $t5, 0x0098($s3)           ## 00000098
/* 00E80 80950140 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 00E84 80950144 95EFF542 */  lhu     $t7, -0x0ABE($t7)          ## 8015F542
/* 00E88 80950148 340EFFFF */  ori     $t6, $zero, 0xFFFF         ## $t6 = 0000FFFF
/* 00E8C 8095014C 3C018096 */  lui     $at, %hi(D_8096693E)       ## $at = 80960000
/* 00E90 80950150 31F80040 */  andi    $t8, $t7, 0x0040           ## $t8 = 00000000
/* 00E94 80950154 1300008F */  beq     $t8, $zero, .L80950394
/* 00E98 80950158 A42E693E */  sh      $t6, %lo(D_8096693E)($at)
/* 00E9C 8095015C 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 00EA0 80950160 3C018096 */  lui     $at, %hi(D_809668D2)       ## $at = 80960000
/* 00EA4 80950164 A03968D2 */  sb      $t9, %lo(D_809668D2)($at)
/* 00EA8 80950168 3C018096 */  lui     $at, %hi(D_80966934)       ## $at = 80960000
/* 00EAC 8095016C 24090064 */  addiu   $t1, $zero, 0x0064         ## $t1 = 00000064
/* 00EB0 80950170 A4296934 */  sh      $t1, %lo(D_80966934)($at)
/* 00EB4 80950174 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00EB8 80950178 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00EBC 8095017C 0C00B7D5 */  jal     func_8002DF54
/* 00EC0 80950180 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00EC4 80950184 240300DC */  addiu   $v1, $zero, 0x00DC         ## $v1 = 000000DC
/* 00EC8 80950188 240A00BE */  addiu   $t2, $zero, 0x00BE         ## $t2 = 000000BE
/* 00ECC 8095018C 240B00D2 */  addiu   $t3, $zero, 0x00D2         ## $t3 = 000000D2
/* 00ED0 80950190 A2030B06 */  sb      $v1, 0x0B06($s0)           ## 00000B06
/* 00ED4 80950194 A2030B07 */  sb      $v1, 0x0B07($s0)           ## 00000B07
/* 00ED8 80950198 A20A0B08 */  sb      $t2, 0x0B08($s0)           ## 00000B08
/* 00EDC 8095019C A20B0B09 */  sb      $t3, 0x0B09($s0)           ## 00000B09
/* 00EE0 809501A0 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00EE4 809501A4 0C019148 */  jal     func_80064520
/* 00EE8 809501A8 26851D64 */  addiu   $a1, $s4, 0x1D64           ## $a1 = 00001D64
/* 00EEC 809501AC 0C03008C */  jal     func_800C0230
/* 00EF0 809501B0 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00EF4 809501B4 3C108096 */  lui     $s0, %hi(D_8095C23C)       ## $s0 = 80960000
/* 00EF8 809501B8 2610C23C */  addiu   $s0, $s0, %lo(D_8095C23C)  ## $s0 = 8095C23C
/* 00EFC 809501BC A6020000 */  sh      $v0, 0x0000($s0)           ## 8095C23C
/* 00F00 809501C0 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00F04 809501C4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00F08 809501C8 0C0300C5 */  jal     func_800C0314
/* 00F0C 809501CC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00F10 809501D0 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00F14 809501D4 86050000 */  lh      $a1, 0x0000($s0)           ## 8095C23C
/* 00F18 809501D8 0C0300C5 */  jal     func_800C0314
/* 00F1C 809501DC 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00F20 809501E0 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 00F24 809501E4 44819000 */  mtc1    $at, $f18                  ## $f18 = 140.00
/* 00F28 809501E8 3C01434D */  lui     $at, 0x434D                ## $at = 434D0000
/* 00F2C 809501EC 44813000 */  mtc1    $at, $f6                   ## $f6 = 205.00
/* 00F30 809501F0 3C078096 */  lui     $a3, %hi(D_809668D8)       ## $a3 = 80960000
/* 00F34 809501F4 3C01C1A0 */  lui     $at, 0xC1A0                ## $at = C1A00000
/* 00F38 809501F8 44815000 */  mtc1    $at, $f10                  ## $f10 = -20.00
/* 00F3C 809501FC 24E768D8 */  addiu   $a3, $a3, %lo(D_809668D8)  ## $a3 = 809668D8
/* 00F40 80950200 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00F44 80950204 E4F20000 */  swc1    $f18, 0x0000($a3)          ## 809668D8
/* 00F48 80950208 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 00F4C 8095020C 3C068096 */  lui     $a2, %hi(D_809668E8)       ## $a2 = 80960000
/* 00F50 80950210 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00F54 80950214 E4E60004 */  swc1    $f6, 0x0004($a3)           ## 809668DC
/* 00F58 80950218 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 00F5C 8095021C 24C668E8 */  addiu   $a2, $a2, %lo(D_809668E8)  ## $a2 = 809668E8
/* 00F60 80950220 E4EA0008 */  swc1    $f10, 0x0008($a3)          ## 809668E0
/* 00F64 80950224 3C038096 */  lui     $v1, %hi(D_809668F8)       ## $v1 = 80960000
/* 00F68 80950228 3C01C35C */  lui     $at, 0xC35C                ## $at = C35C0000
/* 00F6C 8095022C C4E40000 */  lwc1    $f4, 0x0000($a3)           ## 809668D8
/* 00F70 80950230 C4E80004 */  lwc1    $f8, 0x0004($a3)           ## 809668DC
/* 00F74 80950234 C4F00008 */  lwc1    $f16, 0x0008($a3)          ## 809668E0
/* 00F78 80950238 44815000 */  mtc1    $at, $f10                  ## $f10 = -220.00
/* 00F7C 8095023C 246368F8 */  addiu   $v1, $v1, %lo(D_809668F8)  ## $v1 = 809668F8
/* 00F80 80950240 3C088096 */  lui     $t0, %hi(D_80966908)       ## $t0 = 80960000
/* 00F84 80950244 E4D20000 */  swc1    $f18, 0x0000($a2)          ## 809668E8
/* 00F88 80950248 E4C60004 */  swc1    $f6, 0x0004($a2)           ## 809668EC
/* 00F8C 8095024C E4640000 */  swc1    $f4, 0x0000($v1)           ## 809668F8
/* 00F90 80950250 E4680004 */  swc1    $f8, 0x0004($v1)           ## 809668FC
/* 00F94 80950254 E4700008 */  swc1    $f16, 0x0008($v1)          ## 80966900
/* 00F98 80950258 E4CA0008 */  swc1    $f10, 0x0008($a2)          ## 809668F0
/* 00F9C 8095025C C4C40000 */  lwc1    $f4, 0x0000($a2)           ## 809668E8
/* 00FA0 80950260 C4C80004 */  lwc1    $f8, 0x0004($a2)           ## 809668EC
/* 00FA4 80950264 C4D00008 */  lwc1    $f16, 0x0008($a2)          ## 809668F0
/* 00FA8 80950268 25086908 */  addiu   $t0, $t0, %lo(D_80966908)  ## $t0 = 80966908
/* 00FAC 8095026C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00FB0 80950270 86050000 */  lh      $a1, 0x0000($s0)           ## 8095C23C
/* 00FB4 80950274 E5040000 */  swc1    $f4, 0x0000($t0)           ## 80966908
/* 00FB8 80950278 E5080004 */  swc1    $f8, 0x0004($t0)           ## 8096690C
/* 00FBC 8095027C 0C030136 */  jal     func_800C04D8
/* 00FC0 80950280 E5100008 */  swc1    $f16, 0x0008($t0)          ## 80966910
/* 00FC4 80950284 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 00FC8 80950288 3C108096 */  lui     $s0, %hi(D_8095C0F8)       ## $s0 = 80960000
/* 00FCC 8095028C 3C118096 */  lui     $s1, %hi(D_8095C1D6)       ## $s1 = 80960000
/* 00FD0 80950290 AE6C0198 */  sw      $t4, 0x0198($s3)           ## 00000198
/* 00FD4 80950294 2631C1D6 */  addiu   $s1, $s1, %lo(D_8095C1D6)  ## $s1 = 8095C1D6
/* 00FD8 80950298 2610C0F8 */  addiu   $s0, $s0, %lo(D_8095C0F8)  ## $s0 = 8095C0F8
/* 00FDC 8095029C 2412000F */  addiu   $s2, $zero, 0x000F         ## $s2 = 0000000F
.L809502A0:
/* 00FE0 809502A0 C6120000 */  lwc1    $f18, 0x0000($s0)          ## 8095C0F8
/* 00FE4 809502A4 C6640024 */  lwc1    $f4, 0x0024($s3)           ## 00000024
/* 00FE8 809502A8 C6080004 */  lwc1    $f8, 0x0004($s0)           ## 8095C0FC
/* 00FEC 809502AC 862D0000 */  lh      $t5, 0x0000($s1)           ## 8095C1D6
/* 00FF0 809502B0 46049180 */  add.s   $f6, $f18, $f4
/* 00FF4 809502B4 C6120008 */  lwc1    $f18, 0x0008($s0)          ## 8095C100
/* 00FF8 809502B8 86380002 */  lh      $t8, 0x0002($s1)           ## 8095C1D8
/* 00FFC 809502BC 862A0004 */  lh      $t2, 0x0004($s1)           ## 8095C1DA
/* 01000 809502C0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01004 809502C4 C66A0028 */  lwc1    $f10, 0x0028($s3)          ## 00000028
/* 01008 809502C8 8FA40050 */  lw      $a0, 0x0050($sp)
/* 0100C 809502CC 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01010 809502D0 460A4400 */  add.s   $f16, $f8, $f10
/* 01014 809502D4 02803025 */  or      $a2, $s4, $zero            ## $a2 = 00000000
/* 01018 809502D8 240700BA */  addiu   $a3, $zero, 0x00BA         ## $a3 = 000000BA
/* 0101C 809502DC E7B00014 */  swc1    $f16, 0x0014($sp)
/* 01020 809502E0 C664002C */  lwc1    $f4, 0x002C($s3)           ## 0000002C
/* 01024 809502E4 46049180 */  add.s   $f6, $f18, $f4
/* 01028 809502E8 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 0102C 809502EC 866E0030 */  lh      $t6, 0x0030($s3)           ## 00000030
/* 01030 809502F0 01AE7821 */  addu    $t7, $t5, $t6
/* 01034 809502F4 AFAF001C */  sw      $t7, 0x001C($sp)
/* 01038 809502F8 86790032 */  lh      $t9, 0x0032($s3)           ## 00000032
/* 0103C 809502FC 03194821 */  addu    $t1, $t8, $t9
/* 01040 80950300 AFA90020 */  sw      $t1, 0x0020($sp)
/* 01044 80950304 866B0034 */  lh      $t3, 0x0034($s3)           ## 00000034
/* 01048 80950308 AFB20028 */  sw      $s2, 0x0028($sp)
/* 0104C 8095030C 014B6021 */  addu    $t4, $t2, $t3
/* 01050 80950310 0C00C916 */  jal     Actor_SpawnAttached

/* 01054 80950314 AFAC0024 */  sw      $t4, 0x0024($sp)
/* 01058 80950318 2652FFFF */  addiu   $s2, $s2, 0xFFFF           ## $s2 = 0000000E
/* 0105C 8095031C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01060 80950320 2610FFF4 */  addiu   $s0, $s0, 0xFFF4           ## $s0 = 8095C0EC
/* 01064 80950324 1641FFDE */  bne     $s2, $at, .L809502A0
/* 01068 80950328 2631FFFA */  addiu   $s1, $s1, 0xFFFA           ## $s1 = 8095C1D0
/* 0106C 8095032C 3C0D8096 */  lui     $t5, %hi(D_8095C220)       ## $t5 = 80960000
/* 01070 80950330 25ADC220 */  addiu   $t5, $t5, %lo(D_8095C220)  ## $t5 = 8095C220
/* 01074 80950334 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 8095C220
/* 01078 80950338 27A2005C */  addiu   $v0, $sp, 0x005C           ## $v0 = FFFFFFE4
/* 0107C 8095033C 3C188096 */  lui     $t8, %hi(D_80966918)       ## $t8 = 80960000
/* 01080 80950340 AC4F0000 */  sw      $t7, 0x0000($v0)           ## FFFFFFE4
/* 01084 80950344 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 8095C224
/* 01088 80950348 8C490000 */  lw      $t1, 0x0000($v0)           ## FFFFFFE4
/* 0108C 8095034C 27186918 */  addiu   $t8, $t8, %lo(D_80966918)  ## $t8 = 80966918
/* 01090 80950350 AC4E0004 */  sw      $t6, 0x0004($v0)           ## FFFFFFE8
/* 01094 80950354 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 8095C228
/* 01098 80950358 3C0A8096 */  lui     $t2, %hi(D_80966928)       ## $t2 = 80960000
/* 0109C 8095035C 254A6928 */  addiu   $t2, $t2, %lo(D_80966928)  ## $t2 = 80966928
/* 010A0 80950360 AC4F0008 */  sw      $t7, 0x0008($v0)           ## FFFFFFEC
/* 010A4 80950364 AF090000 */  sw      $t1, 0x0000($t8)           ## 80966918
/* 010A8 80950368 8C590004 */  lw      $t9, 0x0004($v0)           ## FFFFFFE8
/* 010AC 8095036C AF190004 */  sw      $t9, 0x0004($t8)           ## 8096691C
/* 010B0 80950370 8C490008 */  lw      $t1, 0x0008($v0)           ## FFFFFFEC
/* 010B4 80950374 AF090008 */  sw      $t1, 0x0008($t8)           ## 80966920
/* 010B8 80950378 8C4C0000 */  lw      $t4, 0x0000($v0)           ## FFFFFFE4
/* 010BC 8095037C AD4C0000 */  sw      $t4, 0x0000($t2)           ## 80966928
/* 010C0 80950380 8C4B0004 */  lw      $t3, 0x0004($v0)           ## FFFFFFE8
/* 010C4 80950384 AD4B0004 */  sw      $t3, 0x0004($t2)           ## 8096692C
/* 010C8 80950388 8C4C0008 */  lw      $t4, 0x0008($v0)           ## FFFFFFEC
/* 010CC 8095038C 10000007 */  beq     $zero, $zero, .L809503AC
/* 010D0 80950390 AD4C0008 */  sw      $t4, 0x0008($t2)           ## 80966930
.L80950394:
/* 010D4 80950394 240DFFFC */  addiu   $t5, $zero, 0xFFFC         ## $t5 = FFFFFFFC
/* 010D8 80950398 3C018096 */  lui     $at, %hi(D_809668D2)       ## $at = 80960000
/* 010DC 8095039C A02D68D2 */  sb      $t5, %lo(D_809668D2)($at)
/* 010E0 809503A0 3C018096 */  lui     $at, %hi(D_80966934)       ## $at = 80960000
/* 010E4 809503A4 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 010E8 809503A8 A42E6934 */  sh      $t6, %lo(D_80966934)($at)
.L809503AC:
/* 010EC 809503AC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 010F0 809503B0 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 010F4 809503B4 2670028C */  addiu   $s0, $s3, 0x028C           ## $s0 = 0000028C
/* 010F8 809503B8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000028C
/* 010FC 809503BC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01100 809503C0 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 01104 809503C4 E66001CC */  swc1    $f0, 0x01CC($s3)           ## 000001CC
/* 01108 809503C8 3C078096 */  lui     $a3, %hi(D_8095BF60)       ## $a3 = 80960000
/* 0110C 809503CC 24E7BF60 */  addiu   $a3, $a3, %lo(D_8095BF60)  ## $a3 = 8095BF60
/* 01110 809503D0 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01114 809503D4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000028C
/* 01118 809503D8 0C01712B */  jal     ActorCollider_InitCylinder

/* 0111C 809503DC 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 01120 809503E0 3C108096 */  lui     $s0, %hi(D_8095C080)       ## $s0 = 80960000
/* 01124 809503E4 3C118096 */  lui     $s1, %hi(D_8095C19A)       ## $s1 = 80960000
/* 01128 809503E8 2631C19A */  addiu   $s1, $s1, %lo(D_8095C19A)  ## $s1 = 8095C19A
/* 0112C 809503EC 2610C080 */  addiu   $s0, $s0, %lo(D_8095C080)  ## $s0 = 8095C080
/* 01130 809503F0 24120005 */  addiu   $s2, $zero, 0x0005         ## $s2 = 00000005
.L809503F4:
/* 01134 809503F4 C6080000 */  lwc1    $f8, 0x0000($s0)           ## 8095C080
/* 01138 809503F8 C66A0024 */  lwc1    $f10, 0x0024($s3)          ## 00000024
/* 0113C 809503FC C6120004 */  lwc1    $f18, 0x0004($s0)          ## 8095C084
/* 01140 80950400 862F0000 */  lh      $t7, 0x0000($s1)           ## 8095C19A
/* 01144 80950404 460A4400 */  add.s   $f16, $f8, $f10
/* 01148 80950408 C6080008 */  lwc1    $f8, 0x0008($s0)           ## 8095C088
/* 0114C 8095040C 86290002 */  lh      $t1, 0x0002($s1)           ## 8095C19C
/* 01150 80950410 862C0004 */  lh      $t4, 0x0004($s1)           ## 8095C19E
/* 01154 80950414 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 01158 80950418 C6640028 */  lwc1    $f4, 0x0028($s3)           ## 00000028
/* 0115C 8095041C 8FA40050 */  lw      $a0, 0x0050($sp)
/* 01160 80950420 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01164 80950424 46049180 */  add.s   $f6, $f18, $f4
/* 01168 80950428 02803025 */  or      $a2, $s4, $zero            ## $a2 = 00000000
/* 0116C 8095042C 240700BA */  addiu   $a3, $zero, 0x00BA         ## $a3 = 000000BA
/* 01170 80950430 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 01174 80950434 C66A002C */  lwc1    $f10, 0x002C($s3)          ## 0000002C
/* 01178 80950438 460A4400 */  add.s   $f16, $f8, $f10
/* 0117C 8095043C E7B00018 */  swc1    $f16, 0x0018($sp)
/* 01180 80950440 86780030 */  lh      $t8, 0x0030($s3)           ## 00000030
/* 01184 80950444 01F8C821 */  addu    $t9, $t7, $t8
/* 01188 80950448 AFB9001C */  sw      $t9, 0x001C($sp)
/* 0118C 8095044C 866A0032 */  lh      $t2, 0x0032($s3)           ## 00000032
/* 01190 80950450 012A5821 */  addu    $t3, $t1, $t2
/* 01194 80950454 AFAB0020 */  sw      $t3, 0x0020($sp)
/* 01198 80950458 866D0034 */  lh      $t5, 0x0034($s3)           ## 00000034
/* 0119C 8095045C AFB20028 */  sw      $s2, 0x0028($sp)
/* 011A0 80950460 018D7021 */  addu    $t6, $t4, $t5
/* 011A4 80950464 0C00C916 */  jal     Actor_SpawnAttached

/* 011A8 80950468 AFAE0024 */  sw      $t6, 0x0024($sp)
/* 011AC 8095046C 2652FFFF */  addiu   $s2, $s2, 0xFFFF           ## $s2 = 00000004
/* 011B0 80950470 2610FFF4 */  addiu   $s0, $s0, 0xFFF4           ## $s0 = 8095C074
/* 011B4 80950474 0641FFDF */  bgez    $s2, .L809503F4
/* 011B8 80950478 2631FFFA */  addiu   $s1, $s1, 0xFFFA           ## $s1 = 8095C194
/* 011BC 8095047C 3C048096 */  lui     $a0, %hi(D_8095DF50)       ## $a0 = 80960000
/* 011C0 80950480 2484DF50 */  addiu   $a0, $a0, %lo(D_8095DF50)  ## $a0 = 8095DF50
/* 011C4 80950484 34058980 */  ori     $a1, $zero, 0x8980         ## $a1 = 00008980
/* 011C8 80950488 0C01DDF8 */  jal     Lib_MemSet

/* 011CC 8095048C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 011D0 80950490 3C0F8096 */  lui     $t7, %hi(D_809668D2)       ## $t7 = 80960000
/* 011D4 80950494 81EF68D2 */  lb      $t7, %lo(D_809668D2)($t7)
/* 011D8 80950498 29E1000D */  slti    $at, $t7, 0x000D
/* 011DC 8095049C 10200005 */  beq     $at, $zero, .L809504B4
/* 011E0 809504A0 00000000 */  nop
/* 011E4 809504A4 0C2541BC */  jal     func_809506F0
/* 011E8 809504A8 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 011EC 809504AC 10000077 */  beq     $zero, $zero, .L8095068C
/* 011F0 809504B0 8FBF004C */  lw      $ra, 0x004C($sp)
.L809504B4:
/* 011F4 809504B4 0C2545E8 */  jal     func_809517A0
/* 011F8 809504B8 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 011FC 809504BC 10000073 */  beq     $zero, $zero, .L8095068C
/* 01200 809504C0 8FBF004C */  lw      $ra, 0x004C($sp)
glabel L809504C4
/* 01204 809504C4 267002D8 */  addiu   $s0, $s3, 0x02D8           ## $s0 = 000002D8
/* 01208 809504C8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000002D8
/* 0120C 809504CC 0C016EFE */  jal     func_8005BBF8
/* 01210 809504D0 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01214 809504D4 3C078096 */  lui     $a3, %hi(D_8095BFB0)       ## $a3 = 80960000
/* 01218 809504D8 267802F8 */  addiu   $t8, $s3, 0x02F8           ## $t8 = 000002F8
/* 0121C 809504DC AFB80010 */  sw      $t8, 0x0010($sp)
/* 01220 809504E0 24E7BFB0 */  addiu   $a3, $a3, %lo(D_8095BFB0)  ## $a3 = 8095BFB0
/* 01224 809504E4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01228 809504E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000002D8
/* 0122C 809504EC 0C017014 */  jal     func_8005C050
/* 01230 809504F0 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 01234 809504F4 3C198096 */  lui     $t9, %hi(D_809668D2)       ## $t9 = 80960000
/* 01238 809504F8 833968D2 */  lb      $t9, %lo(D_809668D2)($t9)
/* 0123C 809504FC 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 01240 80950500 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01244 80950504 2B21000D */  slti    $at, $t9, 0x000D
/* 01248 80950508 10200005 */  beq     $at, $zero, .L80950520
/* 0124C 8095050C 00000000 */  nop
/* 01250 80950510 0C254FD3 */  jal     func_80953F4C
/* 01254 80950514 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01258 80950518 10000004 */  beq     $zero, $zero, .L8095052C
/* 0125C 8095051C 92690194 */  lbu     $t1, 0x0194($s3)           ## 00000194
.L80950520:
/* 01260 80950520 0C255039 */  jal     func_809540E4
/* 01264 80950524 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 01268 80950528 92690194 */  lbu     $t1, 0x0194($s3)           ## 00000194
.L8095052C:
/* 0126C 8095052C 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 01270 80950530 10000055 */  beq     $zero, $zero, .L80950688
/* 01274 80950534 A26A0194 */  sb      $t2, 0x0194($s3)           ## 00000194
glabel L80950538
/* 01278 80950538 26700338 */  addiu   $s0, $s3, 0x0338           ## $s0 = 00000338
/* 0127C 8095053C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000338
/* 01280 80950540 0C017406 */  jal     func_8005D018
/* 01284 80950544 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01288 80950548 3C078096 */  lui     $a3, %hi(D_8095BFF4)       ## $a3 = 80960000
/* 0128C 8095054C 24E7BFF4 */  addiu   $a3, $a3, %lo(D_8095BFF4)  ## $a3 = 8095BFF4
/* 01290 80950550 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01294 80950554 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000338
/* 01298 80950558 0C017441 */  jal     func_8005D104
/* 0129C 8095055C 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 012A0 80950560 3C0B8096 */  lui     $t3, %hi(D_809668D2)       ## $t3 = 80960000
/* 012A4 80950564 816B68D2 */  lb      $t3, %lo(D_809668D2)($t3)
/* 012A8 80950568 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 012AC 8095056C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 012B0 80950570 2961000D */  slti    $at, $t3, 0x000D
/* 012B4 80950574 10200005 */  beq     $at, $zero, .L8095058C
/* 012B8 80950578 00000000 */  nop
/* 012BC 8095057C 0C25528F */  jal     func_80954A3C
/* 012C0 80950580 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 012C4 80950584 10000041 */  beq     $zero, $zero, .L8095068C
/* 012C8 80950588 8FBF004C */  lw      $ra, 0x004C($sp)
.L8095058C:
/* 012CC 8095058C 0C2552E3 */  jal     func_80954B8C
/* 012D0 80950590 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 012D4 80950594 1000003D */  beq     $zero, $zero, .L8095068C
/* 012D8 80950598 8FBF004C */  lw      $ra, 0x004C($sp)
glabel L8095059C
/* 012DC 8095059C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 012E0 809505A0 0C255249 */  jal     func_80954924
/* 012E4 809505A4 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 012E8 809505A8 10000038 */  beq     $zero, $zero, .L8095068C
/* 012EC 809505AC 8FBF004C */  lw      $ra, 0x004C($sp)
glabel L809505B0
/* 012F0 809505B0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 012F4 809505B4 0C255F27 */  jal     func_80957C9C
/* 012F8 809505B8 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 012FC 809505BC 10000033 */  beq     $zero, $zero, .L8095068C
/* 01300 809505C0 8FBF004C */  lw      $ra, 0x004C($sp)
glabel L809505C4
.L809505C4:
/* 01304 809505C4 267002D8 */  addiu   $s0, $s3, 0x02D8           ## $s0 = 000002D8
/* 01308 809505C8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000002D8
/* 0130C 809505CC 0C016EFE */  jal     func_8005BBF8
/* 01310 809505D0 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01314 809505D4 3C078096 */  lui     $a3, %hi(D_8095BFE4)       ## $a3 = 80960000
/* 01318 809505D8 266C02F8 */  addiu   $t4, $s3, 0x02F8           ## $t4 = 000002F8
/* 0131C 809505DC AFAC0010 */  sw      $t4, 0x0010($sp)
/* 01320 809505E0 24E7BFE4 */  addiu   $a3, $a3, %lo(D_8095BFE4)  ## $a3 = 8095BFE4
/* 01324 809505E4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01328 809505E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000002D8
/* 0132C 809505EC 0C017014 */  jal     func_8005C050
/* 01330 809505F0 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 01334 809505F4 26700338 */  addiu   $s0, $s3, 0x0338           ## $s0 = 00000338
/* 01338 809505F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000338
/* 0133C 809505FC 0C017406 */  jal     func_8005D018
/* 01340 80950600 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01344 80950604 3C078096 */  lui     $a3, %hi(D_8095BFF4)       ## $a3 = 80960000
/* 01348 80950608 24E7BFF4 */  addiu   $a3, $a3, %lo(D_8095BFF4)  ## $a3 = 8095BFF4
/* 0134C 8095060C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01350 80950610 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000338
/* 01354 80950614 0C017441 */  jal     func_8005D104
/* 01358 80950618 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 0135C 8095061C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01360 80950620 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 01364 80950624 3C0D8096 */  lui     $t5, %hi(D_809668D2)       ## $t5 = 80960000
/* 01368 80950628 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0136C 8095062C E66001D8 */  swc1    $f0, 0x01D8($s3)           ## 000001D8
/* 01370 80950630 E66001DC */  swc1    $f0, 0x01DC($s3)           ## 000001DC
/* 01374 80950634 81AD68D2 */  lb      $t5, %lo(D_809668D2)($t5)
/* 01378 80950638 3C0E8096 */  lui     $t6, %hi(D_809668D1)       ## $t6 = 80960000
/* 0137C 8095063C 29A1000D */  slti    $at, $t5, 0x000D
/* 01380 80950640 10200005 */  beq     $at, $zero, .L80950658
/* 01384 80950644 00000000 */  nop
/* 01388 80950648 0C2559F4 */  jal     func_809567D0
/* 0138C 8095064C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 01390 80950650 1000000E */  beq     $zero, $zero, .L8095068C
/* 01394 80950654 8FBF004C */  lw      $ra, 0x004C($sp)
.L80950658:
/* 01398 80950658 91CE68D1 */  lbu     $t6, %lo(D_809668D1)($t6)
/* 0139C 8095065C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 013A0 80950660 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 013A4 80950664 29C10009 */  slti    $at, $t6, 0x0009
/* 013A8 80950668 14200005 */  bne     $at, $zero, .L80950680
/* 013AC 8095066C 00000000 */  nop
/* 013B0 80950670 0C255B8E */  jal     func_80956E38
/* 013B4 80950674 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 013B8 80950678 10000004 */  beq     $zero, $zero, .L8095068C
/* 013BC 8095067C 8FBF004C */  lw      $ra, 0x004C($sp)
.L80950680:
/* 013C0 80950680 0C255CB7 */  jal     func_809572DC
/* 013C4 80950684 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
.L80950688:
/* 013C8 80950688 8FBF004C */  lw      $ra, 0x004C($sp)
.L8095068C:
/* 013CC 8095068C 8FB00038 */  lw      $s0, 0x0038($sp)
/* 013D0 80950690 8FB1003C */  lw      $s1, 0x003C($sp)
/* 013D4 80950694 8FB20040 */  lw      $s2, 0x0040($sp)
/* 013D8 80950698 8FB30044 */  lw      $s3, 0x0044($sp)
/* 013DC 8095069C 8FB40048 */  lw      $s4, 0x0048($sp)
/* 013E0 809506A0 03E00008 */  jr      $ra
/* 013E4 809506A4 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000


