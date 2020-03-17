glabel func_80AE0A1C
/* 02CCC 80AE0A1C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 02CD0 80AE0A20 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02CD4 80AE0A24 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 02CD8 80AE0A28 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 02CDC 80AE0A2C 90820318 */  lbu     $v0, 0x0318($a0)           ## 00000318
/* 02CE0 80AE0A30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02CE4 80AE0A34 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02CE8 80AE0A38 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 02CEC 80AE0A3C 11C00003 */  beq     $t6, $zero, .L80AE0A4C     
/* 02CF0 80AE0A40 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 02CF4 80AE0A44 0C2B7932 */  jal     func_80ADE4C8              
/* 02CF8 80AE0A48 A08F0318 */  sb      $t7, 0x0318($a0)           ## 00000318
.L80AE0A4C:
/* 02CFC 80AE0A4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D00 80AE0A50 0C2B80CB */  jal     func_80AE032C              
/* 02D04 80AE0A54 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02D08 80AE0A58 0C2B80F1 */  jal     func_80AE03C4              
/* 02D0C 80AE0A5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D10 80AE0A60 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 02D14 80AE0A64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D18 80AE0A68 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02D1C 80AE0A6C 0320F809 */  jalr    $ra, $t9                   
/* 02D20 80AE0A70 00000000 */  nop
/* 02D24 80AE0A74 0C00B638 */  jal     Actor_MoveForward
              
/* 02D28 80AE0A78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D2C 80AE0A7C 8E080190 */  lw      $t0, 0x0190($s0)           ## 00000190
/* 02D30 80AE0A80 3C1880AE */  lui     $t8, %hi(func_80ADEDFC)    ## $t8 = 80AE0000
/* 02D34 80AE0A84 2718EDFC */  addiu   $t8, $t8, %lo(func_80ADEDFC) ## $t8 = 80ADEDFC
/* 02D38 80AE0A88 57080010 */  bnel    $t8, $t0, .L80AE0ACC       
/* 02D3C 80AE0A8C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02D40 80AE0A90 86090198 */  lh      $t1, 0x0198($s0)           ## 00000198
/* 02D44 80AE0A94 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02D48 80AE0A98 2921000A */  slti    $at, $t1, 0x000A           
/* 02D4C 80AE0A9C 5020000B */  beql    $at, $zero, .L80AE0ACC     
/* 02D50 80AE0AA0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02D54 80AE0AA4 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 02D58 80AE0AA8 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 02D5C 80AE0AAC 26060308 */  addiu   $a2, $s0, 0x0308           ## $a2 = 00000308
/* 02D60 80AE0AB0 01415825 */  or      $t3, $t2, $at              ## $t3 = 01000000
/* 02D64 80AE0AB4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02D68 80AE0AB8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02D6C 80AE0ABC AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 02D70 80AE0AC0 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 02D74 80AE0AC4 02212821 */  addu    $a1, $s1, $at              
/* 02D78 80AE0AC8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80AE0ACC:
/* 02D7C 80AE0ACC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02D80 80AE0AD0 02216021 */  addu    $t4, $s1, $at              
/* 02D84 80AE0AD4 260502BC */  addiu   $a1, $s0, 0x02BC           ## $a1 = 000002BC
/* 02D88 80AE0AD8 260D0308 */  addiu   $t5, $s0, 0x0308           ## $t5 = 00000308
/* 02D8C 80AE0ADC AFAD0030 */  sw      $t5, 0x0030($sp)           
/* 02D90 80AE0AE0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02D94 80AE0AE4 AFAC0034 */  sw      $t4, 0x0034($sp)           
/* 02D98 80AE0AE8 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 02D9C 80AE0AEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02DA0 80AE0AF0 920E02CD */  lbu     $t6, 0x02CD($s0)           ## 000002CD
/* 02DA4 80AE0AF4 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 02DA8 80AE0AF8 51E00009 */  beql    $t7, $zero, .L80AE0B20     
/* 02DAC 80AE0AFC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02DB0 80AE0B00 9219029D */  lbu     $t9, 0x029D($s0)           ## 0000029D
/* 02DB4 80AE0B04 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 02DB8 80AE0B08 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02DBC 80AE0B0C 17210003 */  bne     $t9, $at, .L80AE0B1C       
/* 02DC0 80AE0B10 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 02DC4 80AE0B14 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02DC8 80AE0B18 8FA6002C */  lw      $a2, 0x002C($sp)           
.L80AE0B1C:
/* 02DCC 80AE0B1C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80AE0B20:
/* 02DD0 80AE0B20 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 02DD4 80AE0B24 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 02DD8 80AE0B28 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 02DDC 80AE0B2C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02DE0 80AE0B30 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 02DE4 80AE0B34 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 02DE8 80AE0B38 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 02DEC 80AE0B3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02DF0 80AE0B40 0C00B56E */  jal     Actor_SetHeight
              
/* 02DF4 80AE0B44 3C054228 */  lui     $a1, 0x4228                ## $a1 = 42280000
/* 02DF8 80AE0B48 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 02DFC 80AE0B4C 3C1880AE */  lui     $t8, %hi(func_80ADEECC)    ## $t8 = 80AE0000
/* 02E00 80AE0B50 2718EECC */  addiu   $t8, $t8, %lo(func_80ADEECC) ## $t8 = 80ADEECC
/* 02E04 80AE0B54 1302000E */  beq     $t8, $v0, .L80AE0B90       
/* 02E08 80AE0B58 3C0880AE */  lui     $t0, %hi(func_80ADF574)    ## $t0 = 80AE0000
/* 02E0C 80AE0B5C 2508F574 */  addiu   $t0, $t0, %lo(func_80ADF574) ## $t0 = 80ADF574
/* 02E10 80AE0B60 1102000B */  beq     $t0, $v0, .L80AE0B90       
/* 02E14 80AE0B64 3C0980AE */  lui     $t1, %hi(func_80ADF894)    ## $t1 = 80AE0000
/* 02E18 80AE0B68 2529F894 */  addiu   $t1, $t1, %lo(func_80ADF894) ## $t1 = 80ADF894
/* 02E1C 80AE0B6C 55220007 */  bnel    $t1, $v0, .L80AE0B8C       
/* 02E20 80AE0B70 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
/* 02E24 80AE0B74 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
/* 02E28 80AE0B78 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 02E2C 80AE0B7C 01415821 */  addu    $t3, $t2, $at              
/* 02E30 80AE0B80 10000003 */  beq     $zero, $zero, .L80AE0B90   
/* 02E34 80AE0B84 A60B00B6 */  sh      $t3, 0x00B6($s0)           ## 000000B6
/* 02E38 80AE0B88 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
.L80AE0B8C:
/* 02E3C 80AE0B8C A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
.L80AE0B90:
/* 02E40 80AE0B90 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 02E44 80AE0B94 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02E48 80AE0B98 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 02E4C 80AE0B9C E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 02E50 80AE0BA0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 02E54 80AE0BA4 27AD003C */  addiu   $t5, $sp, 0x003C           ## $t5 = FFFFFFEC
/* 02E58 80AE0BA8 262407C0 */  addiu   $a0, $s1, 0x07C0           ## $a0 = 000007C0
/* 02E5C 80AE0BAC 46083280 */  add.s   $f10, $f6, $f8             
/* 02E60 80AE0BB0 26050078 */  addiu   $a1, $s0, 0x0078           ## $a1 = 00000078
/* 02E64 80AE0BB4 27A60038 */  addiu   $a2, $sp, 0x0038           ## $a2 = FFFFFFE8
/* 02E68 80AE0BB8 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 02E6C 80AE0BBC E7AA0040 */  swc1    $f10, 0x0040($sp)          
/* 02E70 80AE0BC0 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 02E74 80AE0BC4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 02E78 80AE0BC8 0C00F269 */  jal     func_8003C9A4              
/* 02E7C 80AE0BCC E7B00044 */  swc1    $f16, 0x0044($sp)          
/* 02E80 80AE0BD0 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
/* 02E84 80AE0BD4 0C2B8227 */  jal     func_80AE089C              
/* 02E88 80AE0BD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02E8C 80AE0BDC 920E029D */  lbu     $t6, 0x029D($s0)           ## 0000029D
/* 02E90 80AE0BE0 A20E00C8 */  sb      $t6, 0x00C8($s0)           ## 000000C8
/* 02E94 80AE0BE4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02E98 80AE0BE8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 02E9C 80AE0BEC 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 02EA0 80AE0BF0 03E00008 */  jr      $ra                        
/* 02EA4 80AE0BF4 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


