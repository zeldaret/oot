glabel func_808A39FC
/* 0022C 808A39FC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00230 808A3A00 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00234 808A3A04 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00238 808A3A08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0023C 808A3A0C 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00240 808A3A10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00244 808A3A14 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00248 808A3A18 00A12021 */  addu    $a0, $a1, $at              
/* 0024C 808A3A1C 82050168 */  lb      $a1, 0x0168($s0)           ## 00000168
/* 00250 808A3A20 0C026062 */  jal     Object_IsLoaded
              
/* 00254 808A3A24 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00258 808A3A28 1040006C */  beq     $v0, $zero, .L808A3BDC     
/* 0025C 808A3A2C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00260 808A3A30 82050169 */  lb      $a1, 0x0169($s0)           ## 00000169
/* 00264 808A3A34 0C026062 */  jal     Object_IsLoaded
              
/* 00268 808A3A38 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0026C 808A3A3C 10400067 */  beq     $v0, $zero, .L808A3BDC     
/* 00270 808A3A40 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00274 808A3A44 8205016A */  lb      $a1, 0x016A($s0)           ## 0000016A
/* 00278 808A3A48 04A20006 */  bltzl   $a1, .L808A3A64            
/* 0027C 808A3A4C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00280 808A3A50 0C026062 */  jal     Object_IsLoaded
              
/* 00284 808A3A54 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00288 808A3A58 10400060 */  beq     $v0, $zero, .L808A3BDC     
/* 0028C 808A3A5C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00290 808A3A60 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L808A3A64:
/* 00294 808A3A64 820E0168 */  lb      $t6, 0x0168($s0)           ## 00000168
/* 00298 808A3A68 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0029C 808A3A6C 28410004 */  slti    $at, $v0, 0x0004           
/* 002A0 808A3A70 14200026 */  bne     $at, $zero, .L808A3B0C     
/* 002A4 808A3A74 A20E001E */  sb      $t6, 0x001E($s0)           ## 0000001E
/* 002A8 808A3A78 244FFFFC */  addiu   $t7, $v0, 0xFFFC           ## $t7 = FFFFFFFC
/* 002AC 808A3A7C A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 002B0 808A3A80 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 002B4 808A3A84 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002B8 808A3A88 14400005 */  bne     $v0, $zero, .L808A3AA0     
/* 002BC 808A3A8C 00000000 */  nop
/* 002C0 808A3A90 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 002C4 808A3A94 2405006F */  addiu   $a1, $zero, 0x006F         ## $a1 = 0000006F
/* 002C8 808A3A98 10000011 */  beq     $zero, $zero, .L808A3AE0   
/* 002CC 808A3A9C A2020168 */  sb      $v0, 0x0168($s0)           ## 00000168
.L808A3AA0:
/* 002D0 808A3AA0 54410006 */  bnel    $v0, $at, .L808A3ABC       
/* 002D4 808A3AA4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 002D8 808A3AA8 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 002DC 808A3AAC 2405005C */  addiu   $a1, $zero, 0x005C         ## $a1 = 0000005C
/* 002E0 808A3AB0 1000000B */  beq     $zero, $zero, .L808A3AE0   
/* 002E4 808A3AB4 A2020168 */  sb      $v0, 0x0168($s0)           ## 00000168
/* 002E8 808A3AB8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L808A3ABC:
/* 002EC 808A3ABC 14410005 */  bne     $v0, $at, .L808A3AD4       
/* 002F0 808A3AC0 00000000 */  nop
/* 002F4 808A3AC4 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 002F8 808A3AC8 24050071 */  addiu   $a1, $zero, 0x0071         ## $a1 = 00000071
/* 002FC 808A3ACC 10000004 */  beq     $zero, $zero, .L808A3AE0   
/* 00300 808A3AD0 A2020168 */  sb      $v0, 0x0168($s0)           ## 00000168
.L808A3AD4:
/* 00304 808A3AD4 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00308 808A3AD8 24050070 */  addiu   $a1, $zero, 0x0070         ## $a1 = 00000070
/* 0030C 808A3ADC A2020168 */  sb      $v0, 0x0168($s0)           ## 00000168
.L808A3AE0:
/* 00310 808A3AE0 82180168 */  lb      $t8, 0x0168($s0)           ## 00000168
/* 00314 808A3AE4 3C19808A */  lui     $t9, %hi(func_808A3D58)    ## $t9 = 808A0000
/* 00318 808A3AE8 27393D58 */  addiu   $t9, $t9, %lo(func_808A3D58) ## $t9 = 808A3D58
/* 0031C 808A3AEC 07010005 */  bgez    $t8, .L808A3B04            
/* 00320 808A3AF0 00000000 */  nop
/* 00324 808A3AF4 0C00B55C */  jal     Actor_Kill
              
/* 00328 808A3AF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0032C 808A3AFC 10000038 */  beq     $zero, $zero, .L808A3BE0   
/* 00330 808A3B00 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A3B04:
/* 00334 808A3B04 10000035 */  beq     $zero, $zero, .L808A3BDC   
/* 00338 808A3B08 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
.L808A3B0C:
/* 0033C 808A3B0C 0C00B591 */  jal     Actor_SetObjectDependency
              
/* 00340 808A3B10 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00344 808A3B14 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00348 808A3B18 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0034C 808A3B1C 3C08808A */  lui     $t0, %hi(func_808A3F58)    ## $t0 = 808A0000
/* 00350 808A3B20 25083F58 */  addiu   $t0, $t0, %lo(func_808A3F58) ## $t0 = 808A3F58
/* 00354 808A3B24 1440000A */  bne     $v0, $zero, .L808A3B50     
/* 00358 808A3B28 AE080134 */  sw      $t0, 0x0134($s0)           ## 00000134
/* 0035C 808A3B2C 3C09808A */  lui     $t1, %hi(func_808A3C8C)    ## $t1 = 808A0000
/* 00360 808A3B30 25293C8C */  addiu   $t1, $t1, %lo(func_808A3C8C) ## $t1 = 808A3C8C
/* 00364 808A3B34 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00368 808A3B38 AE090164 */  sw      $t1, 0x0164($s0)           ## 00000164
/* 0036C 808A3B3C 248454B8 */  addiu   $a0, $a0, 0x54B8           ## $a0 = 060054B8
/* 00370 808A3B40 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00374 808A3B44 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFFC
/* 00378 808A3B48 1000001F */  beq     $zero, $zero, .L808A3BC8   
/* 0037C 808A3B4C 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808A3B50:
/* 00380 808A3B50 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00384 808A3B54 14410009 */  bne     $v0, $at, .L808A3B7C       
/* 00388 808A3B58 3C0A808A */  lui     $t2, %hi(func_808A3BFC)    ## $t2 = 808A0000
/* 0038C 808A3B5C 254A3BFC */  addiu   $t2, $t2, %lo(func_808A3BFC) ## $t2 = 808A3BFC
/* 00390 808A3B60 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00394 808A3B64 AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
/* 00398 808A3B68 24843490 */  addiu   $a0, $a0, 0x3490           ## $a0 = 06003490
/* 0039C 808A3B6C 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 003A0 808A3B70 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFFC
/* 003A4 808A3B74 10000014 */  beq     $zero, $zero, .L808A3BC8   
/* 003A8 808A3B78 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808A3B7C:
/* 003AC 808A3B7C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 003B0 808A3B80 1441000A */  bne     $v0, $at, .L808A3BAC       
/* 003B4 808A3B84 3C0C808A */  lui     $t4, %hi(func_808A3C8C)    ## $t4 = 808A0000
/* 003B8 808A3B88 3C0B808A */  lui     $t3, %hi(func_808A3BF0)    ## $t3 = 808A0000
/* 003BC 808A3B8C 256B3BF0 */  addiu   $t3, $t3, %lo(func_808A3BF0) ## $t3 = 808A3BF0
/* 003C0 808A3B90 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 003C4 808A3B94 AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
/* 003C8 808A3B98 248443D0 */  addiu   $a0, $a0, 0x43D0           ## $a0 = 060043D0
/* 003CC 808A3B9C 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 003D0 808A3BA0 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFFC
/* 003D4 808A3BA4 10000008 */  beq     $zero, $zero, .L808A3BC8   
/* 003D8 808A3BA8 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808A3BAC:
/* 003DC 808A3BAC 258C3C8C */  addiu   $t4, $t4, %lo(func_808A3C8C) ## $t4 = 00003C8C
/* 003E0 808A3BB0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 003E4 808A3BB4 AE0C0164 */  sw      $t4, 0x0164($s0)           ## 00000164
/* 003E8 808A3BB8 24846078 */  addiu   $a0, $a0, 0x6078           ## $a0 = 06006078
/* 003EC 808A3BBC 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 003F0 808A3BC0 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFFC
/* 003F4 808A3BC4 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808A3BC8:
/* 003F8 808A3BC8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 003FC 808A3BCC 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 00400 808A3BD0 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00404 808A3BD4 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00408 808A3BD8 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
.L808A3BDC:
/* 0040C 808A3BDC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A3BE0:
/* 00410 808A3BE0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00414 808A3BE4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00418 808A3BE8 03E00008 */  jr      $ra                        
/* 0041C 808A3BEC 00000000 */  nop
