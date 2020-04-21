.late_rodata
glabel D_80AFE128
    .float 3000.0

.text
glabel EnSkb_Update
/* 01270 80AFDC10 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01274 80AFDC14 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01278 80AFDC18 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 0127C 80AFDC1C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01280 80AFDC20 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01284 80AFDC24 0C2BF65A */  jal     func_80AFD968              
/* 01288 80AFDC28 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0128C 80AFDC2C 0C00B638 */  jal     Actor_MoveForward
              
/* 01290 80AFDC30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01294 80AFDC34 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01298 80AFDC38 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 0129C 80AFDC3C 240E001D */  addiu   $t6, $zero, 0x001D         ## $t6 = 0000001D
/* 012A0 80AFDC40 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 012A4 80AFDC44 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 012A8 80AFDC48 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 012AC 80AFDC4C 3C064170 */  lui     $a2, 0x4170                ## $a2 = 41700000
/* 012B0 80AFDC50 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 012B4 80AFDC54 0C00B92D */  jal     func_8002E4B4              
/* 012B8 80AFDC58 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 012BC 80AFDC5C 8E190284 */  lw      $t9, 0x0284($s0)           ## 00000284
/* 012C0 80AFDC60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012C4 80AFDC64 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 012C8 80AFDC68 0320F809 */  jalr    $ra, $t9                   
/* 012CC 80AFDC6C 00000000 */  nop
/* 012D0 80AFDC70 8E180024 */  lw      $t8, 0x0024($s0)           ## 00000024
/* 012D4 80AFDC74 8E0F0028 */  lw      $t7, 0x0028($s0)           ## 00000028
/* 012D8 80AFDC78 3C0180B0 */  lui     $at, %hi(D_80AFE128)       ## $at = 80B00000
/* 012DC 80AFDC7C AE180038 */  sw      $t8, 0x0038($s0)           ## 00000038
/* 012E0 80AFDC80 8E18002C */  lw      $t8, 0x002C($s0)           ## 0000002C
/* 012E4 80AFDC84 AE0F003C */  sw      $t7, 0x003C($s0)           ## 0000003C
/* 012E8 80AFDC88 C6080054 */  lwc1    $f8, 0x0054($s0)           ## 00000054
/* 012EC 80AFDC8C AE180040 */  sw      $t8, 0x0040($s0)           ## 00000040
/* 012F0 80AFDC90 C426E128 */  lwc1    $f6, %lo(D_80AFE128)($at)  
/* 012F4 80AFDC94 C610003C */  lwc1    $f16, 0x003C($s0)          ## 0000003C
/* 012F8 80AFDC98 92080281 */  lbu     $t0, 0x0281($s0)           ## 00000281
/* 012FC 80AFDC9C 46083282 */  mul.s   $f10, $f6, $f8             
/* 01300 80AFDCA0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01304 80AFDCA4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01308 80AFDCA8 02212821 */  addu    $a1, $s1, $at              
/* 0130C 80AFDCAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01310 80AFDCB0 460A8480 */  add.s   $f18, $f16, $f10           
/* 01314 80AFDCB4 11000003 */  beq     $t0, $zero, .L80AFDCC4     
/* 01318 80AFDCB8 E612003C */  swc1    $f18, 0x003C($s0)          ## 0000003C
/* 0131C 80AFDCBC 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01320 80AFDCC0 260602A4 */  addiu   $a2, $s0, 0x02A4           ## $a2 = 000002A4
.L80AFDCC4:
/* 01324 80AFDCC4 92090280 */  lbu     $t1, 0x0280($s0)           ## 00000280
/* 01328 80AFDCC8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0132C 80AFDCCC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01330 80AFDCD0 02212821 */  addu    $a1, $s1, $at              
/* 01334 80AFDCD4 29210003 */  slti    $at, $t1, 0x0003           
/* 01338 80AFDCD8 1420000E */  bne     $at, $zero, .L80AFDD14     
/* 0133C 80AFDCDC 260602A4 */  addiu   $a2, $s0, 0x02A4           ## $a2 = 000002A4
/* 01340 80AFDCE0 920A0114 */  lbu     $t2, 0x0114($s0)           ## 00000114
/* 01344 80AFDCE4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01348 80AFDCE8 51400006 */  beql    $t2, $zero, .L80AFDD04     
/* 0134C 80AFDCEC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01350 80AFDCF0 960B0112 */  lhu     $t3, 0x0112($s0)           ## 00000112
/* 01354 80AFDCF4 316C4000 */  andi    $t4, $t3, 0x4000           ## $t4 = 00000000
/* 01358 80AFDCF8 15800006 */  bne     $t4, $zero, .L80AFDD14     
/* 0135C 80AFDCFC 00000000 */  nop
/* 01360 80AFDD00 AFA5002C */  sw      $a1, 0x002C($sp)           
.L80AFDD04:
/* 01364 80AFDD04 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01368 80AFDD08 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 0136C 80AFDD0C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01370 80AFDD10 8FA60028 */  lw      $a2, 0x0028($sp)           
.L80AFDD14:
/* 01374 80AFDD14 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01378 80AFDD18 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0137C 80AFDD1C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01380 80AFDD20 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01384 80AFDD24 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01388 80AFDD28 03E00008 */  jr      $ra                        
/* 0138C 80AFDD2C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
