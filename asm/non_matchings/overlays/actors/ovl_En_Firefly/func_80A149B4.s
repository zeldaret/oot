glabel func_80A149B4
/* 01944 80A149B4 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 01948 80A149B8 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 0194C 80A149BC 8FB000B0 */  lw      $s0, 0x00B0($sp)           
/* 01950 80A149C0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01954 80A149C4 AFA400A0 */  sw      $a0, 0x00A0($sp)           
/* 01958 80A149C8 AFA600A8 */  sw      $a2, 0x00A8($sp)           
/* 0195C 80A149CC AFA700AC */  sw      $a3, 0x00AC($sp)           
/* 01960 80A149D0 920E01B9 */  lbu     $t6, 0x01B9($s0)           ## 000001B9
/* 01964 80A149D4 2401001B */  addiu   $at, $zero, 0x001B         ## $at = 0000001B
/* 01968 80A149D8 55C0000D */  bnel    $t6, $zero, .L80A14A10     
/* 0196C 80A149DC 920201B8 */  lbu     $v0, 0x01B8($s0)           ## 000001B8
/* 01970 80A149E0 14A1000A */  bne     $a1, $at, .L80A14A0C       
/* 01974 80A149E4 8FA400B4 */  lw      $a0, 0x00B4($sp)           
/* 01978 80A149E8 8C830000 */  lw      $v1, 0x0000($a0)           ## 00000000
/* 0197C 80A149EC 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 01980 80A149F0 27391678 */  addiu   $t9, $t9, 0x1678           ## $t9 = 06001678
/* 01984 80A149F4 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 01988 80A149F8 AC8F0000 */  sw      $t7, 0x0000($a0)           ## 00000000
/* 0198C 80A149FC 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 01990 80A14A00 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 01994 80A14A04 100000AF */  beq     $zero, $zero, .L80A14CC4   
/* 01998 80A14A08 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
.L80A14A0C:
/* 0199C 80A14A0C 920201B8 */  lbu     $v0, 0x01B8($s0)           ## 000001B8
.L80A14A10:
/* 019A0 80A14A10 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 019A4 80A14A14 10410002 */  beq     $v0, $at, .L80A14A20       
/* 019A8 80A14A18 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 019AC 80A14A1C 144100A9 */  bne     $v0, $at, .L80A14CC4       
.L80A14A20:
/* 019B0 80A14A20 2402000F */  addiu   $v0, $zero, 0x000F         ## $v0 = 0000000F
/* 019B4 80A14A24 10A20003 */  beq     $a1, $v0, .L80A14A34       
/* 019B8 80A14A28 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 019BC 80A14A2C 54A100A6 */  bnel    $a1, $at, .L80A14CC8       
/* 019C0 80A14A30 2402000F */  addiu   $v0, $zero, 0x000F         ## $v0 = 0000000F
.L80A14A34:
/* 019C4 80A14A34 8E0B01B4 */  lw      $t3, 0x01B4($s0)           ## 000001B4
/* 019C8 80A14A38 3C0A80A1 */  lui     $t2, %hi(func_80A13D68)    ## $t2 = 80A10000
/* 019CC 80A14A3C 254A3D68 */  addiu   $t2, $t2, %lo(func_80A13D68) ## $t2 = 80A13D68
/* 019D0 80A14A40 114B001C */  beq     $t2, $t3, .L80A14AB4       
/* 019D4 80A14A44 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFA8
/* 019D8 80A14A48 0C034236 */  jal     Matrix_Get              
/* 019DC 80A14A4C AFA500A4 */  sw      $a1, 0x00A4($sp)           
/* 019E0 80A14A50 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 019E4 80A14A54 00000000 */  nop
/* 019E8 80A14A58 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 019EC 80A14A5C 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 019F0 80A14A60 C7A80078 */  lwc1    $f8, 0x0078($sp)           
/* 019F4 80A14A64 46040182 */  mul.s   $f6, $f0, $f4              
/* 019F8 80A14A68 46083280 */  add.s   $f10, $f6, $f8             
/* 019FC 80A14A6C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01A00 80A14A70 E7AA0094 */  swc1    $f10, 0x0094($sp)          
/* 01A04 80A14A74 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01A08 80A14A78 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 01A0C 80A14A7C C7A4007C */  lwc1    $f4, 0x007C($sp)           
/* 01A10 80A14A80 46100482 */  mul.s   $f18, $f0, $f16            
/* 01A14 80A14A84 46049180 */  add.s   $f6, $f18, $f4             
/* 01A18 80A14A88 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01A1C 80A14A8C E7A60098 */  swc1    $f6, 0x0098($sp)           
/* 01A20 80A14A90 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01A24 80A14A94 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 01A28 80A14A98 C7B00080 */  lwc1    $f16, 0x0080($sp)          
/* 01A2C 80A14A9C 2408FFD8 */  addiu   $t0, $zero, 0xFFD8         ## $t0 = FFFFFFD8
/* 01A30 80A14AA0 46080282 */  mul.s   $f10, $f0, $f8             
/* 01A34 80A14AA4 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 01A38 80A14AA8 46105480 */  add.s   $f18, $f10, $f16           
/* 01A3C 80A14AAC 1000006B */  beq     $zero, $zero, .L80A14C5C   
/* 01A40 80A14AB0 E7B2009C */  swc1    $f18, 0x009C($sp)          
.L80A14AB4:
/* 01A44 80A14AB4 54A20030 */  bnel    $a1, $v0, .L80A14B78       
/* 01A48 80A14AB8 860401BA */  lh      $a0, 0x01BA($s0)           ## 000001BA
/* 01A4C 80A14ABC 860401BA */  lh      $a0, 0x01BA($s0)           ## 000001BA
/* 01A50 80A14AC0 AFA500A4 */  sw      $a1, 0x00A4($sp)           
/* 01A54 80A14AC4 00800821 */  addu    $at, $a0, $zero            
/* 01A58 80A14AC8 000420C0 */  sll     $a0, $a0,  3               
/* 01A5C 80A14ACC 00812021 */  addu    $a0, $a0, $at              
/* 01A60 80A14AD0 000420C0 */  sll     $a0, $a0,  3               
/* 01A64 80A14AD4 00812023 */  subu    $a0, $a0, $at              
/* 01A68 80A14AD8 000420C0 */  sll     $a0, $a0,  3               
/* 01A6C 80A14ADC 00812021 */  addu    $a0, $a0, $at              
/* 01A70 80A14AE0 00042080 */  sll     $a0, $a0,  2               
/* 01A74 80A14AE4 00812023 */  subu    $a0, $a0, $at              
/* 01A78 80A14AE8 00042080 */  sll     $a0, $a0,  2               
/* 01A7C 80A14AEC 00042400 */  sll     $a0, $a0, 16               
/* 01A80 80A14AF0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01A84 80A14AF4 00042403 */  sra     $a0, $a0, 16               
/* 01A88 80A14AF8 860C01BA */  lh      $t4, 0x01BA($s0)           ## 000001BA
/* 01A8C 80A14AFC C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 01A90 80A14B00 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 01A94 80A14B04 00000000 */  nop
/* 01A98 80A14B08 468021A0 */  cvt.s.w $f6, $f4                   
/* 01A9C 80A14B0C 46060202 */  mul.s   $f8, $f0, $f6              
/* 01AA0 80A14B10 460A4400 */  add.s   $f16, $f8, $f10            
/* 01AA4 80A14B14 E7B00094 */  swc1    $f16, 0x0094($sp)          
/* 01AA8 80A14B18 860401BA */  lh      $a0, 0x01BA($s0)           ## 000001BA
/* 01AAC 80A14B1C 00800821 */  addu    $at, $a0, $zero            
/* 01AB0 80A14B20 000420C0 */  sll     $a0, $a0,  3               
/* 01AB4 80A14B24 00812021 */  addu    $a0, $a0, $at              
/* 01AB8 80A14B28 000420C0 */  sll     $a0, $a0,  3               
/* 01ABC 80A14B2C 00812023 */  subu    $a0, $a0, $at              
/* 01AC0 80A14B30 000420C0 */  sll     $a0, $a0,  3               
/* 01AC4 80A14B34 00812021 */  addu    $a0, $a0, $at              
/* 01AC8 80A14B38 00042080 */  sll     $a0, $a0,  2               
/* 01ACC 80A14B3C 00812023 */  subu    $a0, $a0, $at              
/* 01AD0 80A14B40 00042080 */  sll     $a0, $a0,  2               
/* 01AD4 80A14B44 00042400 */  sll     $a0, $a0, 16               
/* 01AD8 80A14B48 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01ADC 80A14B4C 00042403 */  sra     $a0, $a0, 16               
/* 01AE0 80A14B50 860D01BA */  lh      $t5, 0x01BA($s0)           ## 000001BA
/* 01AE4 80A14B54 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 01AE8 80A14B58 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 01AEC 80A14B5C 00000000 */  nop
/* 01AF0 80A14B60 46809120 */  cvt.s.w $f4, $f18                  
/* 01AF4 80A14B64 46040182 */  mul.s   $f6, $f0, $f4              
/* 01AF8 80A14B68 46083280 */  add.s   $f10, $f6, $f8             
/* 01AFC 80A14B6C 1000002E */  beq     $zero, $zero, .L80A14C28   
/* 01B00 80A14B70 E7AA009C */  swc1    $f10, 0x009C($sp)          
/* 01B04 80A14B74 860401BA */  lh      $a0, 0x01BA($s0)           ## 000001BA
.L80A14B78:
/* 01B08 80A14B78 AFA500A4 */  sw      $a1, 0x00A4($sp)           
/* 01B0C 80A14B7C 00800821 */  addu    $at, $a0, $zero            
/* 01B10 80A14B80 000420C0 */  sll     $a0, $a0,  3               
/* 01B14 80A14B84 00812021 */  addu    $a0, $a0, $at              
/* 01B18 80A14B88 000420C0 */  sll     $a0, $a0,  3               
/* 01B1C 80A14B8C 00812023 */  subu    $a0, $a0, $at              
/* 01B20 80A14B90 000420C0 */  sll     $a0, $a0,  3               
/* 01B24 80A14B94 00812021 */  addu    $a0, $a0, $at              
/* 01B28 80A14B98 00042080 */  sll     $a0, $a0,  2               
/* 01B2C 80A14B9C 00812023 */  subu    $a0, $a0, $at              
/* 01B30 80A14BA0 00042080 */  sll     $a0, $a0,  2               
/* 01B34 80A14BA4 00042400 */  sll     $a0, $a0, 16               
/* 01B38 80A14BA8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01B3C 80A14BAC 00042403 */  sra     $a0, $a0, 16               
/* 01B40 80A14BB0 860E01BA */  lh      $t6, 0x01BA($s0)           ## 000001BA
/* 01B44 80A14BB4 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 01B48 80A14BB8 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 01B4C 80A14BBC 00000000 */  nop
/* 01B50 80A14BC0 46809120 */  cvt.s.w $f4, $f18                  
/* 01B54 80A14BC4 46040182 */  mul.s   $f6, $f0, $f4              
/* 01B58 80A14BC8 46068201 */  sub.s   $f8, $f16, $f6             
/* 01B5C 80A14BCC E7A80094 */  swc1    $f8, 0x0094($sp)           
/* 01B60 80A14BD0 860401BA */  lh      $a0, 0x01BA($s0)           ## 000001BA
/* 01B64 80A14BD4 00800821 */  addu    $at, $a0, $zero            
/* 01B68 80A14BD8 000420C0 */  sll     $a0, $a0,  3               
/* 01B6C 80A14BDC 00812021 */  addu    $a0, $a0, $at              
/* 01B70 80A14BE0 000420C0 */  sll     $a0, $a0,  3               
/* 01B74 80A14BE4 00812023 */  subu    $a0, $a0, $at              
/* 01B78 80A14BE8 000420C0 */  sll     $a0, $a0,  3               
/* 01B7C 80A14BEC 00812021 */  addu    $a0, $a0, $at              
/* 01B80 80A14BF0 00042080 */  sll     $a0, $a0,  2               
/* 01B84 80A14BF4 00812023 */  subu    $a0, $a0, $at              
/* 01B88 80A14BF8 00042080 */  sll     $a0, $a0,  2               
/* 01B8C 80A14BFC 00042400 */  sll     $a0, $a0, 16               
/* 01B90 80A14C00 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01B94 80A14C04 00042403 */  sra     $a0, $a0, 16               
/* 01B98 80A14C08 860F01BA */  lh      $t7, 0x01BA($s0)           ## 000001BA
/* 01B9C 80A14C0C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01BA0 80A14C10 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 01BA4 80A14C14 00000000 */  nop
/* 01BA8 80A14C18 46809120 */  cvt.s.w $f4, $f18                  
/* 01BAC 80A14C1C 46040402 */  mul.s   $f16, $f0, $f4             
/* 01BB0 80A14C20 46105181 */  sub.s   $f6, $f10, $f16            
/* 01BB4 80A14C24 E7A6009C */  swc1    $f6, 0x009C($sp)           
.L80A14C28:
/* 01BB8 80A14C28 861801BA */  lh      $t8, 0x01BA($s0)           ## 000001BA
/* 01BBC 80A14C2C 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 01BC0 80A14C30 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 01BC4 80A14C34 03385023 */  subu    $t2, $t9, $t8              
/* 01BC8 80A14C38 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 01BCC 80A14C3C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 01BD0 80A14C40 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 01BD4 80A14C44 468044A0 */  cvt.s.w $f18, $f8                  
/* 01BD8 80A14C48 2408FFFB */  addiu   $t0, $zero, 0xFFFB         ## $t0 = FFFFFFFB
/* 01BDC 80A14C4C 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 01BE0 80A14C50 46049282 */  mul.s   $f10, $f18, $f4            
/* 01BE4 80A14C54 460A8180 */  add.s   $f6, $f16, $f10            
/* 01BE8 80A14C58 E7A60098 */  swc1    $f6, 0x0098($sp)           
.L80A14C5C:
/* 01BEC 80A14C5C 920B01B8 */  lbu     $t3, 0x01B8($s0)           ## 000001B8
/* 01BF0 80A14C60 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01BF4 80A14C64 8FA400A0 */  lw      $a0, 0x00A0($sp)           
/* 01BF8 80A14C68 15610006 */  bne     $t3, $at, .L80A14C84       
/* 01BFC 80A14C6C 27A50094 */  addiu   $a1, $sp, 0x0094           ## $a1 = FFFFFFF4
/* 01C00 80A14C70 3C0280A1 */  lui     $v0, %hi(D_80A14FA0)       ## $v0 = 80A10000
/* 01C04 80A14C74 3C0380A1 */  lui     $v1, %hi(D_80A14FA4)       ## $v1 = 80A10000
/* 01C08 80A14C78 24424FA0 */  addiu   $v0, $v0, %lo(D_80A14FA0)  ## $v0 = 80A14FA0
/* 01C0C 80A14C7C 10000005 */  beq     $zero, $zero, .L80A14C94   
/* 01C10 80A14C80 24634FA4 */  addiu   $v1, $v1, %lo(D_80A14FA4)  ## $v1 = 80A14FA4
.L80A14C84:
/* 01C14 80A14C84 3C0280A1 */  lui     $v0, %hi(D_80A14FA8)       ## $v0 = 80A10000
/* 01C18 80A14C88 3C0380A1 */  lui     $v1, %hi(D_80A14FAC)       ## $v1 = 80A10000
/* 01C1C 80A14C8C 24424FA8 */  addiu   $v0, $v0, %lo(D_80A14FA8)  ## $v0 = 80A14FA8
/* 01C20 80A14C90 24634FAC */  addiu   $v1, $v1, %lo(D_80A14FAC)  ## $v1 = 80A14FAC
.L80A14C94:
/* 01C24 80A14C94 3C0680A1 */  lui     $a2, %hi(D_80A14FB0)       ## $a2 = 80A10000
/* 01C28 80A14C98 3C0780A1 */  lui     $a3, %hi(D_80A14FBC)       ## $a3 = 80A10000
/* 01C2C 80A14C9C 240C00FA */  addiu   $t4, $zero, 0x00FA         ## $t4 = 000000FA
/* 01C30 80A14CA0 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 01C34 80A14CA4 24E74FBC */  addiu   $a3, $a3, %lo(D_80A14FBC)  ## $a3 = 80A14FBC
/* 01C38 80A14CA8 24C64FB0 */  addiu   $a2, $a2, %lo(D_80A14FB0)  ## $a2 = 80A14FB0
/* 01C3C 80A14CAC AFA20010 */  sw      $v0, 0x0010($sp)           
/* 01C40 80A14CB0 AFA30014 */  sw      $v1, 0x0014($sp)           
/* 01C44 80A14CB4 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 01C48 80A14CB8 0C00A10F */  jal     func_8002843C              
/* 01C4C 80A14CBC AFA90020 */  sw      $t1, 0x0020($sp)           
/* 01C50 80A14CC0 8FA500A4 */  lw      $a1, 0x00A4($sp)           
.L80A14CC4:
/* 01C54 80A14CC4 2402000F */  addiu   $v0, $zero, 0x000F         ## $v0 = 0000000F
.L80A14CC8:
/* 01C58 80A14CC8 10A20005 */  beq     $a1, $v0, .L80A14CE0       
/* 01C5C 80A14CCC 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 01C60 80A14CD0 10A10003 */  beq     $a1, $at, .L80A14CE0       
/* 01C64 80A14CD4 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01C68 80A14CD8 54A10015 */  bnel    $a1, $at, .L80A14D30       
/* 01C6C 80A14CDC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A14CE0:
/* 01C70 80A14CE0 14A20003 */  bne     $a1, $v0, .L80A14CF0       
/* 01C74 80A14CE4 3C0480A1 */  lui     $a0, %hi(D_80A14FC8)       ## $a0 = 80A10000
/* 01C78 80A14CE8 10000007 */  beq     $zero, $zero, .L80A14D08   
/* 01C7C 80A14CEC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
.L80A14CF0:
/* 01C80 80A14CF0 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 01C84 80A14CF4 54A10004 */  bnel    $a1, $at, .L80A14D08       
/* 01C88 80A14CF8 26050164 */  addiu   $a1, $s0, 0x0164           ## $a1 = 00000164
/* 01C8C 80A14CFC 10000002 */  beq     $zero, $zero, .L80A14D08   
/* 01C90 80A14D00 26050158 */  addiu   $a1, $s0, 0x0158           ## $a1 = 00000158
/* 01C94 80A14D04 26050164 */  addiu   $a1, $s0, 0x0164           ## $a1 = 00000164
.L80A14D08:
/* 01C98 80A14D08 24844FC8 */  addiu   $a0, $a0, %lo(D_80A14FC8)  ## $a0 = 80A14FC8
/* 01C9C 80A14D0C 0C0346BD */  jal     Matrix_MultVec3f              
/* 01CA0 80A14D10 AFA50090 */  sw      $a1, 0x0090($sp)           
/* 01CA4 80A14D14 8FA50090 */  lw      $a1, 0x0090($sp)           
/* 01CA8 80A14D18 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01CAC 80A14D1C 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 01CB0 80A14D20 C4A80004 */  lwc1    $f8, 0x0004($a1)           ## 00000004
/* 01CB4 80A14D24 46124101 */  sub.s   $f4, $f8, $f18             
/* 01CB8 80A14D28 E4A40004 */  swc1    $f4, 0x0004($a1)           ## 00000004
/* 01CBC 80A14D2C 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A14D30:
/* 01CC0 80A14D30 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01CC4 80A14D34 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
/* 01CC8 80A14D38 03E00008 */  jr      $ra                        
/* 01CCC 80A14D3C 00000000 */  nop
