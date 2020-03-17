glabel func_80B00C38
/* 02988 80B00C38 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0298C 80B00C3C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 02990 80B00C40 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02994 80B00C44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02998 80B00C48 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0299C 80B00C4C 8CA51C44 */  lw      $a1, 0x1C44($a1)           ## 00001C44
/* 029A0 80B00C50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 029A4 80B00C54 0C2C0282 */  jal     func_80B00A08              
/* 029A8 80B00C58 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 029AC 80B00C5C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 029B0 80B00C60 02211821 */  addu    $v1, $s1, $at              
/* 029B4 80B00C64 946204C6 */  lhu     $v0, 0x04C6($v1)           ## 000004C6
/* 029B8 80B00C68 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 029BC 80B00C6C 54410014 */  bnel    $v0, $at, .L80B00CC0       
/* 029C0 80B00C70 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 029C4 80B00C74 0C041B33 */  jal     func_80106CCC              
/* 029C8 80B00C78 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 029CC 80B00C7C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 029D0 80B00C80 00310821 */  addu    $at, $at, $s1              
/* 029D4 80B00C84 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 029D8 80B00C88 A42E04C6 */  sh      $t6, 0x04C6($at)           ## 000104C6
/* 029DC 80B00C8C 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 029E0 80B00C90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029E4 80B00C94 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 029E8 80B00C98 3C0641D0 */  lui     $a2, 0x41D0                ## $a2 = 41D00000
/* 029EC 80B00C9C 0C00BCB3 */  jal     func_8002F2CC              
/* 029F0 80B00CA0 ADF006A8 */  sw      $s0, 0x06A8($t7)           ## 000006A8
/* 029F4 80B00CA4 3C1980B0 */  lui     $t9, %hi(func_80B00EA4)    ## $t9 = 80B00000
/* 029F8 80B00CA8 2418102D */  addiu   $t8, $zero, 0x102D         ## $t8 = 0000102D
/* 029FC 80B00CAC 27390EA4 */  addiu   $t9, $t9, %lo(func_80B00EA4) ## $t9 = 80B00EA4
/* 02A00 80B00CB0 A61802C4 */  sh      $t8, 0x02C4($s0)           ## 000002C4
/* 02A04 80B00CB4 10000076 */  beq     $zero, $zero, .L80B00E90   
/* 02A08 80B00CB8 AE190274 */  sw      $t9, 0x0274($s0)           ## 00000274
/* 02A0C 80B00CBC 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
.L80B00CC0:
/* 02A10 80B00CC0 54410016 */  bnel    $v0, $at, .L80B00D1C       
/* 02A14 80B00CC4 906203DC */  lbu     $v0, 0x03DC($v1)           ## 000003DC
/* 02A18 80B00CC8 0C01E221 */  jal     func_80078884              
/* 02A1C 80B00CCC 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 02A20 80B00CD0 0C041B33 */  jal     func_80106CCC              
/* 02A24 80B00CD4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02A28 80B00CD8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02A2C 80B00CDC 00310821 */  addu    $at, $at, $s1              
/* 02A30 80B00CE0 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 02A34 80B00CE4 A42804C6 */  sh      $t0, 0x04C6($at)           ## 000104C6
/* 02A38 80B00CE8 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 02A3C 80B00CEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A40 80B00CF0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02A44 80B00CF4 3C0641D0 */  lui     $a2, 0x41D0                ## $a2 = 41D00000
/* 02A48 80B00CF8 0C00BCB3 */  jal     func_8002F2CC              
/* 02A4C 80B00CFC AD3006A8 */  sw      $s0, 0x06A8($t1)           ## 000006A8
/* 02A50 80B00D00 3C0B80B0 */  lui     $t3, %hi(func_80B01004)    ## $t3 = 80B00000
/* 02A54 80B00D04 240A10BF */  addiu   $t2, $zero, 0x10BF         ## $t2 = 000010BF
/* 02A58 80B00D08 256B1004 */  addiu   $t3, $t3, %lo(func_80B01004) ## $t3 = 80B01004
/* 02A5C 80B00D0C A60A02C4 */  sh      $t2, 0x02C4($s0)           ## 000002C4
/* 02A60 80B00D10 1000005F */  beq     $zero, $zero, .L80B00E90   
/* 02A64 80B00D14 AE0B0274 */  sw      $t3, 0x0274($s0)           ## 00000274
/* 02A68 80B00D18 906203DC */  lbu     $v0, 0x03DC($v1)           ## 000003DC
.L80B00D1C:
/* 02A6C 80B00D1C 2401002B */  addiu   $at, $zero, 0x002B         ## $at = 0000002B
/* 02A70 80B00D20 10410009 */  beq     $v0, $at, .L80B00D48       
/* 02A74 80B00D24 2401002D */  addiu   $at, $zero, 0x002D         ## $at = 0000002D
/* 02A78 80B00D28 1041001A */  beq     $v0, $at, .L80B00D94       
/* 02A7C 80B00D2C 2401002E */  addiu   $at, $zero, 0x002E         ## $at = 0000002E
/* 02A80 80B00D30 10410026 */  beq     $v0, $at, .L80B00DCC       
/* 02A84 80B00D34 24010030 */  addiu   $at, $zero, 0x0030         ## $at = 00000030
/* 02A88 80B00D38 1041003D */  beq     $v0, $at, .L80B00E30       
/* 02A8C 80B00D3C 00000000 */  nop
/* 02A90 80B00D40 10000054 */  beq     $zero, $zero, .L80B00E94   
/* 02A94 80B00D44 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B00D48:
/* 02A98 80B00D48 3C1080B0 */  lui     $s0, %hi(D_80B01648)       ## $s0 = 80B00000
/* 02A9C 80B00D4C 26101648 */  addiu   $s0, $s0, %lo(D_80B01648)  ## $s0 = 80B01648
/* 02AA0 80B00D50 8E020004 */  lw      $v0, 0x0004($s0)           ## 80B0164C
/* 02AA4 80B00D54 10400002 */  beq     $v0, $zero, .L80B00D60     
/* 02AA8 80B00D58 00000000 */  nop
/* 02AAC 80B00D5C A04002D8 */  sb      $zero, 0x02D8($v0)         ## 000002D8
.L80B00D60:
/* 02AB0 80B00D60 0C03E3FD */  jal     func_800F8FF4              
/* 02AB4 80B00D64 24044836 */  addiu   $a0, $zero, 0x4836         ## $a0 = 00004836
/* 02AB8 80B00D68 5440004A */  bnel    $v0, $zero, .L80B00E94     
/* 02ABC 80B00D6C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02AC0 80B00D70 8E02000C */  lw      $v0, 0x000C($s0)           ## 80B01654
/* 02AC4 80B00D74 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 02AC8 80B00D78 10400002 */  beq     $v0, $zero, .L80B00D84     
/* 02ACC 80B00D7C 00000000 */  nop
/* 02AD0 80B00D80 A04C02D8 */  sb      $t4, 0x02D8($v0)           ## 000002D8
.L80B00D84:
/* 02AD4 80B00D84 0C041AAA */  jal     func_80106AA8              
/* 02AD8 80B00D88 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02ADC 80B00D8C 10000041 */  beq     $zero, $zero, .L80B00E94   
/* 02AE0 80B00D90 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B00D94:
/* 02AE4 80B00D94 3C0280B0 */  lui     $v0, %hi(D_80B01654)       ## $v0 = 80B00000
/* 02AE8 80B00D98 8C421654 */  lw      $v0, %lo(D_80B01654)($v0)  
/* 02AEC 80B00D9C 10400002 */  beq     $v0, $zero, .L80B00DA8     
/* 02AF0 80B00DA0 00000000 */  nop
/* 02AF4 80B00DA4 A04002D8 */  sb      $zero, 0x02D8($v0)         ## 80B002D8
.L80B00DA8:
/* 02AF8 80B00DA8 0C03E3FD */  jal     func_800F8FF4              
/* 02AFC 80B00DAC 24044836 */  addiu   $a0, $zero, 0x4836         ## $a0 = 00004836
/* 02B00 80B00DB0 54400038 */  bnel    $v0, $zero, .L80B00E94     
/* 02B04 80B00DB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02B08 80B00DB8 0C041AAA */  jal     func_80106AA8              
/* 02B0C 80B00DBC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02B10 80B00DC0 240D00A0 */  addiu   $t5, $zero, 0x00A0         ## $t5 = 000000A0
/* 02B14 80B00DC4 10000032 */  beq     $zero, $zero, .L80B00E90   
/* 02B18 80B00DC8 A60D02CA */  sh      $t5, 0x02CA($s0)           ## 80B01912
.L80B00DCC:
/* 02B1C 80B00DCC 860202CA */  lh      $v0, 0x02CA($s0)           ## 80B01912
/* 02B20 80B00DD0 10400003 */  beq     $v0, $zero, .L80B00DE0     
/* 02B24 80B00DD4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 02B28 80B00DD8 1000002D */  beq     $zero, $zero, .L80B00E90   
/* 02B2C 80B00DDC A60E02CA */  sh      $t6, 0x02CA($s0)           ## 80B01912
.L80B00DE0:
/* 02B30 80B00DE0 0C01E221 */  jal     func_80078884              
/* 02B34 80B00DE4 24044827 */  addiu   $a0, $zero, 0x4827         ## $a0 = 00004827
/* 02B38 80B00DE8 0C041B33 */  jal     func_80106CCC              
/* 02B3C 80B00DEC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02B40 80B00DF0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02B44 80B00DF4 00310821 */  addu    $at, $at, $s1              
/* 02B48 80B00DF8 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 02B4C 80B00DFC A42F04C6 */  sh      $t7, 0x04C6($at)           ## 000104C6
/* 02B50 80B00E00 8FB80024 */  lw      $t8, 0x0024($sp)           
/* 02B54 80B00E04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 80B01648
/* 02B58 80B00E08 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02B5C 80B00E0C 3C0641D0 */  lui     $a2, 0x41D0                ## $a2 = 41D00000
/* 02B60 80B00E10 0C00BCB3 */  jal     func_8002F2CC              
/* 02B64 80B00E14 AF1006A8 */  sw      $s0, 0x06A8($t8)           ## 000006A8
/* 02B68 80B00E18 3C0880B0 */  lui     $t0, %hi(func_80B00EA4)    ## $t0 = 80B00000
/* 02B6C 80B00E1C 2419102D */  addiu   $t9, $zero, 0x102D         ## $t9 = 0000102D
/* 02B70 80B00E20 25080EA4 */  addiu   $t0, $t0, %lo(func_80B00EA4) ## $t0 = 80B00EA4
/* 02B74 80B00E24 A61902C4 */  sh      $t9, 0x02C4($s0)           ## 80B0190C
/* 02B78 80B00E28 10000019 */  beq     $zero, $zero, .L80B00E90   
/* 02B7C 80B00E2C AE080274 */  sw      $t0, 0x0274($s0)           ## 80B018BC
.L80B00E30:
/* 02B80 80B00E30 0C03E3FD */  jal     func_800F8FF4              
/* 02B84 80B00E34 24044836 */  addiu   $a0, $zero, 0x4836         ## $a0 = 00004836
/* 02B88 80B00E38 14400015 */  bne     $v0, $zero, .L80B00E90     
/* 02B8C 80B00E3C 240A00A0 */  addiu   $t2, $zero, 0x00A0         ## $t2 = 000000A0
/* 02B90 80B00E40 3C0280B0 */  lui     $v0, %hi(D_80B0164C)       ## $v0 = 80B00000
/* 02B94 80B00E44 8C42164C */  lw      $v0, %lo(D_80B0164C)($v0)  
/* 02B98 80B00E48 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 02B9C 80B00E4C 24040006 */  addiu   $a0, $zero, 0x0006         ## $a0 = 00000006
/* 02BA0 80B00E50 10400002 */  beq     $v0, $zero, .L80B00E5C     
/* 02BA4 80B00E54 00000000 */  nop
/* 02BA8 80B00E58 A04902D8 */  sb      $t1, 0x02D8($v0)           ## 80B002D8
.L80B00E5C:
/* 02BAC 80B00E5C 0C03B616 */  jal     func_800ED858              
/* 02BB0 80B00E60 A60A02CA */  sh      $t2, 0x02CA($s0)           ## 80B01912
/* 02BB4 80B00E64 2404000E */  addiu   $a0, $zero, 0x000E         ## $a0 = 0000000E
/* 02BB8 80B00E68 0C03B64F */  jal     func_800ED93C              
/* 02BBC 80B00E6C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02BC0 80B00E70 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02BC4 80B00E74 00310821 */  addu    $at, $at, $s1              
/* 02BC8 80B00E78 240B002A */  addiu   $t3, $zero, 0x002A         ## $t3 = 0000002A
/* 02BCC 80B00E7C A02B03DC */  sb      $t3, 0x03DC($at)           ## 000103DC
/* 02BD0 80B00E80 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02BD4 80B00E84 00310821 */  addu    $at, $at, $s1              
/* 02BD8 80B00E88 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 02BDC 80B00E8C A02C04BF */  sb      $t4, 0x04BF($at)           ## 000104BF
.L80B00E90:
/* 02BE0 80B00E90 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B00E94:
/* 02BE4 80B00E94 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02BE8 80B00E98 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02BEC 80B00E9C 03E00008 */  jr      $ra                        
/* 02BF0 80B00EA0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


