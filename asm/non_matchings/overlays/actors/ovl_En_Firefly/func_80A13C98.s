glabel func_80A13C98
/* 00C28 80A13C98 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C2C 80A13C9C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C30 80A13CA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C34 80A13CA4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C38 80A13CA8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00C3C 80A13CAC 24840170 */  addiu   $a0, $a0, 0x0170           ## $a0 = 00000170
/* 00C40 80A13CB0 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00C44 80A13CB4 0C0295B2 */  jal     func_800A56C8              
/* 00C48 80A13CB8 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 00C4C 80A13CBC 10400004 */  beq     $v0, $zero, .L80A13CD0     
/* 00C50 80A13CC0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00C54 80A13CC4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C58 80A13CC8 00000000 */  nop
/* 00C5C 80A13CCC E604018C */  swc1    $f4, 0x018C($s0)           ## 0000018C
.L80A13CD0:
/* 00C60 80A13CD0 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 00C64 80A13CD4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00C68 80A13CD8 A20E0114 */  sb      $t6, 0x0114($s0)           ## 00000114
/* 00C6C 80A13CDC 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00C70 80A13CE0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00C74 80A13CE4 0C01DE80 */  jal     Math_ApproxF
              
/* 00C78 80A13CE8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00C7C 80A13CEC 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 00C80 80A13CF0 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 00C84 80A13CF4 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00C88 80A13CF8 31F88000 */  andi    $t8, $t7, 0x8000           ## $t8 = 00000000
/* 00C8C 80A13CFC 13000003 */  beq     $t8, $zero, .L80A13D0C     
/* 00C90 80A13D00 24056800 */  addiu   $a1, $zero, 0x6800         ## $a1 = 00006800
/* 00C94 80A13D04 10000013 */  beq     $zero, $zero, .L80A13D54   
/* 00C98 80A13D08 A2190114 */  sb      $t9, 0x0114($s0)           ## 00000114
.L80A13D0C:
/* 00C9C 80A13D0C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00CA0 80A13D10 24060200 */  addiu   $a2, $zero, 0x0200         ## $a2 = 00000200
/* 00CA4 80A13D14 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 00CA8 80A13D18 860301BA */  lh      $v1, 0x01BA($s0)           ## 000001BA
/* 00CAC 80A13D1C 2509FD00 */  addiu   $t1, $t0, 0xFD00           ## $t1 = FFFFFD00
/* 00CB0 80A13D20 10600003 */  beq     $v1, $zero, .L80A13D30     
/* 00CB4 80A13D24 A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 00CB8 80A13D28 246AFFFF */  addiu   $t2, $v1, 0xFFFF           ## $t2 = FFFFFFFF
/* 00CBC 80A13D2C A60A01BA */  sh      $t2, 0x01BA($s0)           ## 000001BA
.L80A13D30:
/* 00CC0 80A13D30 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 00CC4 80A13D34 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 00CC8 80A13D38 15800004 */  bne     $t4, $zero, .L80A13D4C     
/* 00CCC 80A13D3C 00000000 */  nop
/* 00CD0 80A13D40 860D01BA */  lh      $t5, 0x01BA($s0)           ## 000001BA
/* 00CD4 80A13D44 55A00004 */  bnel    $t5, $zero, .L80A13D58     
/* 00CD8 80A13D48 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A13D4C:
/* 00CDC 80A13D4C 0C284D11 */  jal     func_80A13444              
/* 00CE0 80A13D50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A13D54:
/* 00CE4 80A13D54 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A13D58:
/* 00CE8 80A13D58 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00CEC 80A13D5C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00CF0 80A13D60 03E00008 */  jr      $ra                        
/* 00CF4 80A13D64 00000000 */  nop
