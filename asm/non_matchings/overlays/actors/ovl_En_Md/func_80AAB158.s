glabel func_80AAB158
/* 00F08 80AAB158 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00F0C 80AAB15C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00F10 80AAB160 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00F14 80AAB164 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00F18 80AAB168 3C01432A */  lui     $at, 0x432A                ## $at = 432A0000
/* 00F1C 80AAB16C 44813000 */  mtc1    $at, $f6                   ## $f6 = 170.00
/* 00F20 80AAB170 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00F24 80AAB174 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F28 80AAB178 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 00F2C 80AAB17C 4606203C */  c.lt.s  $f4, $f6                   
/* 00F30 80AAB180 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00F34 80AAB184 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00F38 80AAB188 45000022 */  bc1f    .L80AAB214                 
/* 00F3C 80AAB18C 00000000 */  nop
/* 00F40 80AAB190 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 00F44 80AAB194 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 00F48 80AAB198 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 00F4C 80AAB19C 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 00F50 80AAB1A0 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 00F54 80AAB1A4 468042A0 */  cvt.s.w $f10, $f8                  
/* 00F58 80AAB1A8 468084A0 */  cvt.s.w $f18, $f16                 
/* 00F5C 80AAB1AC 46125101 */  sub.s   $f4, $f10, $f18            
/* 00F60 80AAB1B0 4600218D */  trunc.w.s $f6, $f4                   
/* 00F64 80AAB1B4 44023000 */  mfc1    $v0, $f6                   
/* 00F68 80AAB1B8 00000000 */  nop
/* 00F6C 80AAB1BC 00021400 */  sll     $v0, $v0, 16               
/* 00F70 80AAB1C0 00021403 */  sra     $v0, $v0, 16               
/* 00F74 80AAB1C4 04400004 */  bltz    $v0, .L80AAB1D8            
/* 00F78 80AAB1C8 00021823 */  subu    $v1, $zero, $v0            
/* 00F7C 80AAB1CC 00021C00 */  sll     $v1, $v0, 16               
/* 00F80 80AAB1D0 10000003 */  beq     $zero, $zero, .L80AAB1E0   
/* 00F84 80AAB1D4 00031C03 */  sra     $v1, $v1, 16               
.L80AAB1D8:
/* 00F88 80AAB1D8 00031C00 */  sll     $v1, $v1, 16               
/* 00F8C 80AAB1DC 00031C03 */  sra     $v1, $v1, 16               
.L80AAB1E0:
/* 00F90 80AAB1E0 A7A30032 */  sh      $v1, 0x0032($sp)           
/* 00F94 80AAB1E4 0C00D1FA */  jal     func_800347E8              
/* 00F98 80AAB1E8 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 00F9C 80AAB1EC 87A30032 */  lh      $v1, 0x0032($sp)           
/* 00FA0 80AAB1F0 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 00FA4 80AAB1F4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00FA8 80AAB1F8 0043082A */  slt     $at, $v0, $v1              
/* 00FAC 80AAB1FC 14200003 */  bne     $at, $zero, .L80AAB20C     
/* 00FB0 80AAB200 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00FB4 80AAB204 10000003 */  beq     $zero, $zero, .L80AAB214   
/* 00FB8 80AAB208 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
.L80AAB20C:
/* 00FBC 80AAB20C 10000001 */  beq     $zero, $zero, .L80AAB214   
/* 00FC0 80AAB210 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80AAB214:
/* 00FC4 80AAB214 860801E0 */  lh      $t0, 0x01E0($s0)           ## 000001E0
/* 00FC8 80AAB218 3C0A80AB */  lui     $t2, %hi(func_80AAB8F8)    ## $t2 = 80AB0000
/* 00FCC 80AAB21C 254AB8F8 */  addiu   $t2, $t2, %lo(func_80AAB8F8) ## $t2 = 80AAB8F8
/* 00FD0 80AAB220 11000002 */  beq     $t0, $zero, .L80AAB22C     
/* 00FD4 80AAB224 8FAB003C */  lw      $t3, 0x003C($sp)           
/* 00FD8 80AAB228 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
.L80AAB22C:
/* 00FDC 80AAB22C 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 00FE0 80AAB230 3C0980AB */  lui     $t1, %hi(func_80AABD0C)    ## $t1 = 80AB0000
/* 00FE4 80AAB234 2529BD0C */  addiu   $t1, $t1, %lo(func_80AABD0C) ## $t1 = 80AABD0C
/* 00FE8 80AAB238 15220003 */  bne     $t1, $v0, .L80AAB248       
/* 00FEC 80AAB23C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FF0 80AAB240 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00FF4 80AAB244 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80AAB248:
/* 00FF8 80AAB248 15420003 */  bne     $t2, $v0, .L80AAB258       
/* 00FFC 80AAB24C 260501E0 */  addiu   $a1, $s0, 0x01E0           ## $a1 = 000001E0
/* 01000 80AAB250 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 01004 80AAB254 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80AAB258:
/* 01008 80AAB258 916C1D6C */  lbu     $t4, 0x1D6C($t3)           ## 00001D6C
/* 0100C 80AAB25C 3C0D8012 */  lui     $t5, 0x8012                ## $t5 = 80120000
/* 01010 80AAB260 8FAE003C */  lw      $t6, 0x003C($sp)           
/* 01014 80AAB264 55800005 */  bnel    $t4, $zero, .L80AAB27C     
/* 01018 80AAB268 8DD800E0 */  lw      $t8, 0x00E0($t6)           ## 000000E0
/* 0101C 80AAB26C 8DADD394 */  lw      $t5, -0x2C6C($t5)          ## 8011D394
/* 01020 80AAB270 51A0000D */  beql    $t5, $zero, .L80AAB2A8     
/* 01024 80AAB274 8CC80024 */  lw      $t0, 0x0024($a2)           ## 00000024
/* 01028 80AAB278 8DD800E0 */  lw      $t8, 0x00E0($t6)           ## 000000E0
.L80AAB27C:
/* 0102C 80AAB27C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01030 80AAB280 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 01034 80AAB284 AE1801F8 */  sw      $t8, 0x01F8($s0)           ## 000001F8
/* 01038 80AAB288 8DCF00E4 */  lw      $t7, 0x00E4($t6)           ## 000000E4
/* 0103C 80AAB28C 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 01040 80AAB290 AE0F01FC */  sw      $t7, 0x01FC($s0)           ## 000001FC
/* 01044 80AAB294 8DD800E8 */  lw      $t8, 0x00E8($t6)           ## 000000E8
/* 01048 80AAB298 E60801F4 */  swc1    $f8, 0x01F4($s0)           ## 000001F4
/* 0104C 80AAB29C 10000012 */  beq     $zero, $zero, .L80AAB2E8   
/* 01050 80AAB2A0 AE180200 */  sw      $t8, 0x0200($s0)           ## 00000200
/* 01054 80AAB2A4 8CC80024 */  lw      $t0, 0x0024($a2)           ## 00000024
.L80AAB2A8:
/* 01058 80AAB2A8 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 0105C 80AAB2AC 3C01C190 */  lui     $at, 0xC190                ## $at = C1900000
/* 01060 80AAB2B0 AE0801F8 */  sw      $t0, 0x01F8($s0)           ## 000001F8
/* 01064 80AAB2B4 8CD90028 */  lw      $t9, 0x0028($a2)           ## 00000028
/* 01068 80AAB2B8 AE1901FC */  sw      $t9, 0x01FC($s0)           ## 000001FC
/* 0106C 80AAB2BC 8CC8002C */  lw      $t0, 0x002C($a2)           ## 0000002C
/* 01070 80AAB2C0 AE080200 */  sw      $t0, 0x0200($s0)           ## 00000200
/* 01074 80AAB2C4 8D29E664 */  lw      $t1, -0x199C($t1)          ## 8015E664
/* 01078 80AAB2C8 59200005 */  blezl   $t1, .L80AAB2E0            
/* 0107C 80AAB2CC 44815000 */  mtc1    $at, $f10                  ## $f10 = -18.00
/* 01080 80AAB2D0 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01084 80AAB2D4 10000004 */  beq     $zero, $zero, .L80AAB2E8   
/* 01088 80AAB2D8 E61001F4 */  swc1    $f16, 0x01F4($s0)          ## 000001F4
/* 0108C 80AAB2DC 44815000 */  mtc1    $at, $f10                  ## $f10 = -18.00
.L80AAB2E0:
/* 01090 80AAB2E0 00000000 */  nop
/* 01094 80AAB2E4 E60A01F4 */  swc1    $f10, 0x01F4($s0)          ## 000001F4
.L80AAB2E8:
/* 01098 80AAB2E8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 0109C 80AAB2EC A7A3002E */  sh      $v1, 0x002E($sp)           
/* 010A0 80AAB2F0 0C00D285 */  jal     func_80034A14              
/* 010A4 80AAB2F4 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 010A8 80AAB2F8 8E0B0190 */  lw      $t3, 0x0190($s0)           ## 00000190
/* 010AC 80AAB2FC 3C0A80AB */  lui     $t2, %hi(func_80AABC10)    ## $t2 = 80AB0000
/* 010B0 80AAB300 254ABC10 */  addiu   $t2, $t2, %lo(func_80AABC10) ## $t2 = 80AABC10
/* 010B4 80AAB304 114B0015 */  beq     $t2, $t3, .L80AAB35C       
/* 010B8 80AAB308 87A3002E */  lh      $v1, 0x002E($sp)           
/* 010BC 80AAB30C 50600014 */  beql    $v1, $zero, .L80AAB360     
/* 010C0 80AAB310 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 010C4 80AAB314 860C01D4 */  lh      $t4, 0x01D4($s0)           ## 000001D4
/* 010C8 80AAB318 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 010CC 80AAB31C 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 010D0 80AAB320 448C9000 */  mtc1    $t4, $f18                  ## $f18 = 0.00
/* 010D4 80AAB324 3C0D80AB */  lui     $t5, %hi(func_80AAAE94)    ## $t5 = 80AB0000
/* 010D8 80AAB328 3C0E80AB */  lui     $t6, %hi(func_80AAAF04)    ## $t6 = 80AB0000
/* 010DC 80AAB32C 46809120 */  cvt.s.w $f4, $f18                  
/* 010E0 80AAB330 25CEAF04 */  addiu   $t6, $t6, %lo(func_80AAAF04) ## $t6 = 80AAAF04
/* 010E4 80AAB334 25ADAE94 */  addiu   $t5, $t5, %lo(func_80AAAE94) ## $t5 = 80AAAE94
/* 010E8 80AAB338 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 010EC 80AAB33C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 010F0 80AAB340 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 010F4 80AAB344 46062200 */  add.s   $f8, $f4, $f6              
/* 010F8 80AAB348 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 010FC 80AAB34C 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 01100 80AAB350 44074000 */  mfc1    $a3, $f8                   
/* 01104 80AAB354 0C00D0F3 */  jal     func_800343CC              
/* 01108 80AAB358 00000000 */  nop
.L80AAB35C:
/* 0110C 80AAB35C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AAB360:
/* 01110 80AAB360 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01114 80AAB364 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01118 80AAB368 03E00008 */  jr      $ra                        
/* 0111C 80AAB36C 00000000 */  nop
