glabel func_80A40F58
/* 029E8 80A40F58 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 029EC 80A40F5C 3C0F80A4 */  lui     $t7, %hi(D_80A41BB4)       ## $t7 = 80A40000
/* 029F0 80A40F60 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 029F4 80A40F64 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 029F8 80A40F68 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 029FC 80A40F6C AFA50054 */  sw      $a1, 0x0054($sp)           
/* 02A00 80A40F70 25EF1BB4 */  addiu   $t7, $t7, %lo(D_80A41BB4)  ## $t7 = 80A41BB4
/* 02A04 80A40F74 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A41BB4
/* 02A08 80A40F78 27AE0044 */  addiu   $t6, $sp, 0x0044           ## $t6 = FFFFFFF4
/* 02A0C 80A40F7C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A41BB8
/* 02A10 80A40F80 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 02A14 80A40F84 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A41BBC
/* 02A18 80A40F88 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 02A1C 80A40F8C 3C0680A4 */  lui     $a2, %hi(D_80A41C00)       ## $a2 = 80A40000
/* 02A20 80A40F90 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 02A24 80A40F94 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 02A28 80A40F98 24C61C00 */  addiu   $a2, $a2, %lo(D_80A41C00)  ## $a2 = 80A41C00
/* 02A2C 80A40F9C 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE0
/* 02A30 80A40FA0 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 02A34 80A40FA4 24070910 */  addiu   $a3, $zero, 0x0910         ## $a3 = 00000910
/* 02A38 80A40FA8 0C031AB1 */  jal     func_800C6AC4              
/* 02A3C 80A40FAC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02A40 80A40FB0 0C034213 */  jal     Matrix_Push              
/* 02A44 80A40FB4 00000000 */  nop
/* 02A48 80A40FB8 8FA90054 */  lw      $t1, 0x0054($sp)           
/* 02A4C 80A40FBC 0C024F46 */  jal     func_80093D18              
/* 02A50 80A40FC0 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 02A54 80A40FC4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 02A58 80A40FC8 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 02A5C 80A40FCC 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 02A60 80A40FD0 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 02A64 80A40FD4 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 02A68 80A40FD8 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 02A6C 80A40FDC 8FAC0054 */  lw      $t4, 0x0054($sp)           
/* 02A70 80A40FE0 3C0580A4 */  lui     $a1, %hi(D_80A41C10)       ## $a1 = 80A40000
/* 02A74 80A40FE4 24A51C10 */  addiu   $a1, $a1, %lo(D_80A41C10)  ## $a1 = 80A41C10
/* 02A78 80A40FE8 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 02A7C 80A40FEC 24060916 */  addiu   $a2, $zero, 0x0916         ## $a2 = 00000916
/* 02A80 80A40FF0 0C0346A2 */  jal     Matrix_NewMtx              
/* 02A84 80A40FF4 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 02A88 80A40FF8 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 02A8C 80A40FFC 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 02A90 80A41000 25EFBD80 */  addiu   $t7, $t7, 0xBD80           ## $t7 = 0600BD80
/* 02A94 80A41004 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02A98 80A41008 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 02A9C 80A4100C 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 02AA0 80A41010 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFF4
/* 02AA4 80A41014 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 02AA8 80A41018 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 02AAC 80A4101C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 02AB0 80A41020 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 02AB4 80A41024 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 02AB8 80A41028 0C0346BD */  jal     Matrix_MultVec3f              
/* 02ABC 80A4102C 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 02AC0 80A41030 0C034221 */  jal     Matrix_Pull              
/* 02AC4 80A41034 00000000 */  nop
/* 02AC8 80A41038 8FB80054 */  lw      $t8, 0x0054($sp)           
/* 02ACC 80A4103C 3C0680A4 */  lui     $a2, %hi(D_80A41C20)       ## $a2 = 80A40000
/* 02AD0 80A41040 24C61C20 */  addiu   $a2, $a2, %lo(D_80A41C20)  ## $a2 = 80A41C20
/* 02AD4 80A41044 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE0
/* 02AD8 80A41048 24070925 */  addiu   $a3, $zero, 0x0925         ## $a3 = 00000925
/* 02ADC 80A4104C 0C031AD5 */  jal     func_800C6B54              
/* 02AE0 80A41050 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 02AE4 80A41054 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02AE8 80A41058 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02AEC 80A4105C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 02AF0 80A41060 03E00008 */  jr      $ra                        
/* 02AF4 80A41064 00000000 */  nop


