glabel EnFz_Update
/* 012FC 80A210BC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01300 80A210C0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01304 80A210C4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01308 80A210C8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 0130C 80A210CC 848E0240 */  lh      $t6, 0x0240($a0)           ## 00000240
/* 01310 80A210D0 84820242 */  lh      $v0, 0x0242($a0)           ## 00000242
/* 01314 80A210D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01318 80A210D8 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0131C 80A210DC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01320 80A210E0 10400003 */  beq     $v0, $zero, .L80A210F0     
/* 01324 80A210E4 A48F0240 */  sh      $t7, 0x0240($a0)           ## 00000240
/* 01328 80A210E8 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 0132C 80A210EC A4980242 */  sh      $t8, 0x0242($a0)           ## 00000242
.L80A210F0:
/* 01330 80A210F0 86020244 */  lh      $v0, 0x0244($s0)           ## 00000244
/* 01334 80A210F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01338 80A210F8 10400002 */  beq     $v0, $zero, .L80A21104     
/* 0133C 80A210FC 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 01340 80A21100 A6190244 */  sh      $t9, 0x0244($s0)           ## 00000244
.L80A21104:
/* 01344 80A21104 92020263 */  lbu     $v0, 0x0263($s0)           ## 00000263
/* 01348 80A21108 10400002 */  beq     $v0, $zero, .L80A21114     
/* 0134C 80A2110C 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 01350 80A21110 A2080263 */  sb      $t0, 0x0263($s0)           ## 00000263
.L80A21114:
/* 01354 80A21114 0C00B56E */  jal     Actor_SetFocusToWorld
              
/* 01358 80A21118 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 0135C 80A2111C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01360 80A21120 0C288128 */  jal     func_80A204A0              
/* 01364 80A21124 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01368 80A21128 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 0136C 80A2112C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01370 80A21130 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01374 80A21134 0320F809 */  jalr    $ra, $t9                   
/* 01378 80A21138 00000000 */  nop
/* 0137C 80A2113C 92090262 */  lbu     $t1, 0x0262($s0)           ## 00000262
/* 01380 80A21140 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01384 80A21144 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 01388 80A21148 5520001E */  bnel    $t1, $zero, .L80A211C4     
/* 0138C 80A2114C 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 01390 80A21150 0C0189B7 */  jal     Collider_UpdateCylinder
              
/* 01394 80A21154 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 01398 80A21158 2605019C */  addiu   $a1, $s0, 0x019C           ## $a1 = 0000019C
/* 0139C 80A2115C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 013A0 80A21160 0C0189B7 */  jal     Collider_UpdateCylinder
              
/* 013A4 80A21164 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013A8 80A21168 920A0248 */  lbu     $t2, 0x0248($s0)           ## 00000248
/* 013AC 80A2116C 51400015 */  beql    $t2, $zero, .L80A211C4     
/* 013B0 80A21170 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 013B4 80A21174 920B0114 */  lbu     $t3, 0x0114($s0)           ## 00000114
/* 013B8 80A21178 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 013BC 80A2117C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 013C0 80A21180 15600009 */  bne     $t3, $zero, .L80A211A8     
/* 013C4 80A21184 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 013C8 80A21188 02212821 */  addu    $a1, $s1, $at              
/* 013CC 80A2118C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 013D0 80A21190 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 013D4 80A21194 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 013D8 80A21198 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 013DC 80A2119C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 013E0 80A211A0 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 013E4 80A211A4 8FA6002C */  lw      $a2, 0x002C($sp)           
.L80A211A8:
/* 013E8 80A211A8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 013EC 80A211AC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 013F0 80A211B0 02212821 */  addu    $a1, $s1, $at              
/* 013F4 80A211B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 013F8 80A211B8 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 013FC 80A211BC 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 01400 80A211C0 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
.L80A211C4:
/* 01404 80A211C4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 01408 80A211C8 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 0140C 80A211CC 0C01DE80 */  jal     Math_StepToF
              
/* 01410 80A211D0 8E050254 */  lw      $a1, 0x0254($s0)           ## 00000254
/* 01414 80A211D4 0C00B638 */  jal     Actor_MoveForward
              
/* 01418 80A211D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0141C 80A211DC 920C0246 */  lbu     $t4, 0x0246($s0)           ## 00000246
/* 01420 80A211E0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01424 80A211E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01428 80A211E8 11800008 */  beq     $t4, $zero, .L80A2120C     
/* 0142C 80A211EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01430 80A211F0 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 01434 80A211F4 240D0005 */  addiu   $t5, $zero, 0x0005         ## $t5 = 00000005
/* 01438 80A211F8 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 0143C 80A211FC 44060000 */  mfc1    $a2, $f0                   
/* 01440 80A21200 44070000 */  mfc1    $a3, $f0                   
/* 01444 80A21204 0C00B92D */  jal     Actor_UpdateBgCheckInfo              
/* 01448 80A21208 E7A00010 */  swc1    $f0, 0x0010($sp)           
.L80A2120C:
/* 0144C 80A2120C 920E0260 */  lbu     $t6, 0x0260($s0)           ## 00000260
/* 01450 80A21210 3C1980A2 */  lui     $t9, %hi(jtbl_80A21C40)       ## $t9 = 80A20000
/* 01454 80A21214 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01458 80A21218 000E7880 */  sll     $t7, $t6,  2               
/* 0145C 80A2121C 032FC821 */  addu    $t9, $t9, $t7              
/* 01460 80A21220 8F391C40 */  lw      $t9, %lo(jtbl_80A21C40)($t9)  
/* 01464 80A21224 0320F809 */  jalr    $ra, $t9                   
/* 01468 80A21228 00000000 */  nop
/* 0146C 80A2122C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01470 80A21230 0C28856F */  jal     func_80A215BC              
/* 01474 80A21234 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01478 80A21238 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0147C 80A2123C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01480 80A21240 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01484 80A21244 03E00008 */  jr      $ra                        
/* 01488 80A21248 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
