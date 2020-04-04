glabel func_80A479B0
/* 04C80 80A479B0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 04C84 80A479B4 3C0F80A5 */  lui     $t7, %hi(D_80A48554)       ## $t7 = 80A50000
/* 04C88 80A479B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04C8C 80A479BC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04C90 80A479C0 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 04C94 80A479C4 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 04C98 80A479C8 25EF8554 */  addiu   $t7, $t7, %lo(D_80A48554)  ## $t7 = 80A48554
/* 04C9C 80A479CC 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A48554
/* 04CA0 80A479D0 27AE0044 */  addiu   $t6, $sp, 0x0044           ## $t6 = FFFFFFF4
/* 04CA4 80A479D4 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A48558
/* 04CA8 80A479D8 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 04CAC 80A479DC 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A4855C
/* 04CB0 80A479E0 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 04CB4 80A479E4 3C0680A5 */  lui     $a2, %hi(D_80A485CC)       ## $a2 = 80A50000
/* 04CB8 80A479E8 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 04CBC 80A479EC 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 04CC0 80A479F0 24C685CC */  addiu   $a2, $a2, %lo(D_80A485CC)  ## $a2 = 80A485CC
/* 04CC4 80A479F4 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE0
/* 04CC8 80A479F8 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 04CCC 80A479FC 24070B41 */  addiu   $a3, $zero, 0x0B41         ## $a3 = 00000B41
/* 04CD0 80A47A00 0C031AB1 */  jal     Graph_OpenDisp              
/* 04CD4 80A47A04 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 04CD8 80A47A08 8FA90054 */  lw      $t1, 0x0054($sp)           
/* 04CDC 80A47A0C 0C024F46 */  jal     func_80093D18              
/* 04CE0 80A47A10 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 04CE4 80A47A14 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04CE8 80A47A18 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 04CEC 80A47A1C 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 04CF0 80A47A20 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 04CF4 80A47A24 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 04CF8 80A47A28 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 04CFC 80A47A2C 8FAC0054 */  lw      $t4, 0x0054($sp)           
/* 04D00 80A47A30 3C0580A5 */  lui     $a1, %hi(D_80A485DC)       ## $a1 = 80A50000
/* 04D04 80A47A34 24A585DC */  addiu   $a1, $a1, %lo(D_80A485DC)  ## $a1 = 80A485DC
/* 04D08 80A47A38 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 04D0C 80A47A3C 24060B44 */  addiu   $a2, $zero, 0x0B44         ## $a2 = 00000B44
/* 04D10 80A47A40 0C0346A2 */  jal     Matrix_NewMtx              
/* 04D14 80A47A44 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 04D18 80A47A48 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 04D1C 80A47A4C 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 04D20 80A47A50 25EFBD80 */  addiu   $t7, $t7, 0xBD80           ## $t7 = 0600BD80
/* 04D24 80A47A54 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 04D28 80A47A58 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04D2C 80A47A5C 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 04D30 80A47A60 3C0680A5 */  lui     $a2, %hi(D_80A485EC)       ## $a2 = 80A50000
/* 04D34 80A47A64 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 04D38 80A47A68 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 04D3C 80A47A6C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 04D40 80A47A70 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 04D44 80A47A74 8FB80054 */  lw      $t8, 0x0054($sp)           
/* 04D48 80A47A78 24C685EC */  addiu   $a2, $a2, %lo(D_80A485EC)  ## $a2 = 80A485EC
/* 04D4C 80A47A7C 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE0
/* 04D50 80A47A80 24070B49 */  addiu   $a3, $zero, 0x0B49         ## $a3 = 00000B49
/* 04D54 80A47A84 0C031AD5 */  jal     Graph_CloseDisp              
/* 04D58 80A47A88 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 04D5C 80A47A8C 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 04D60 80A47A90 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFF4
/* 04D64 80A47A94 0C0346BD */  jal     Matrix_MultVec3f              
/* 04D68 80A47A98 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 04D6C 80A47A9C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04D70 80A47AA0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04D74 80A47AA4 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 04D78 80A47AA8 03E00008 */  jr      $ra                        
/* 04D7C 80A47AAC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001


