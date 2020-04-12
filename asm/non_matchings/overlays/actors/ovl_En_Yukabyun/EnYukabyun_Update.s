glabel EnYukabyun_Update
/* 00280 80B43C40 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00284 80B43C44 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00288 80B43C48 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 0028C 80B43C4C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00290 80B43C50 90830164 */  lbu     $v1, 0x0164($a0)           ## 00000164
/* 00294 80B43C54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00298 80B43C58 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0029C 80B43C5C 306E0002 */  andi    $t6, $v1, 0x0002           ## $t6 = 00000000
/* 002A0 80B43C60 15C00017 */  bne     $t6, $zero, .L80B43CC0     
/* 002A4 80B43C64 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 002A8 80B43C68 908F0165 */  lbu     $t7, 0x0165($a0)           ## 00000165
/* 002AC 80B43C6C 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 002B0 80B43C70 57000014 */  bnel    $t8, $zero, .L80B43CC4     
/* 002B4 80B43C74 920F0165 */  lbu     $t7, 0x0165($s0)           ## 00000165
/* 002B8 80B43C78 90990166 */  lbu     $t9, 0x0166($a0)           ## 00000166
/* 002BC 80B43C7C 33280002 */  andi    $t0, $t9, 0x0002           ## $t0 = 00000000
/* 002C0 80B43C80 51000007 */  beql    $t0, $zero, .L80B43CA0     
/* 002C4 80B43C84 8E02014C */  lw      $v0, 0x014C($s0)           ## 0000014C
/* 002C8 80B43C88 8C890160 */  lw      $t1, 0x0160($a0)           ## 00000160
/* 002CC 80B43C8C 2401006B */  addiu   $at, $zero, 0x006B         ## $at = 0000006B
/* 002D0 80B43C90 852A0000 */  lh      $t2, 0x0000($t1)           ## 00000000
/* 002D4 80B43C94 5541000B */  bnel    $t2, $at, .L80B43CC4       
/* 002D8 80B43C98 920F0165 */  lbu     $t7, 0x0165($s0)           ## 00000165
/* 002DC 80B43C9C 8E02014C */  lw      $v0, 0x014C($s0)           ## 0000014C
.L80B43CA0:
/* 002E0 80B43CA0 3C0B80B4 */  lui     $t3, %hi(func_80B43B6C)    ## $t3 = 80B40000
/* 002E4 80B43CA4 256B3B6C */  addiu   $t3, $t3, %lo(func_80B43B6C) ## $t3 = 80B43B6C
/* 002E8 80B43CA8 55620019 */  bnel    $t3, $v0, .L80B43D10       
/* 002EC 80B43CAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002F0 80B43CB0 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 002F4 80B43CB4 318D0008 */  andi    $t5, $t4, 0x0008           ## $t5 = 00000000
/* 002F8 80B43CB8 51A00015 */  beql    $t5, $zero, .L80B43D10     
/* 002FC 80B43CBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B43CC0:
/* 00300 80B43CC0 920F0165 */  lbu     $t7, 0x0165($s0)           ## 00000165
.L80B43CC4:
/* 00304 80B43CC4 92190166 */  lbu     $t9, 0x0166($s0)           ## 00000166
/* 00308 80B43CC8 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 0030C 80B43CCC 2401FFFA */  addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
/* 00310 80B43CD0 306EFFFD */  andi    $t6, $v1, 0xFFFD           ## $t6 = 00000000
/* 00314 80B43CD4 31F8FFFD */  andi    $t8, $t7, 0xFFFD           ## $t8 = 00000000
/* 00318 80B43CD8 3328FFFD */  andi    $t0, $t9, 0xFFFD           ## $t0 = 00000000
/* 0031C 80B43CDC 01215024 */  and     $t2, $t1, $at              
/* 00320 80B43CE0 A20E0164 */  sb      $t6, 0x0164($s0)           ## 00000164
/* 00324 80B43CE4 A2180165 */  sb      $t8, 0x0165($s0)           ## 00000165
/* 00328 80B43CE8 A2080166 */  sb      $t0, 0x0166($s0)           ## 00000166
/* 0032C 80B43CEC AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 00330 80B43CF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00334 80B43CF4 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 00338 80B43CF8 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 0033C 80B43CFC 240738C0 */  addiu   $a3, $zero, 0x38C0         ## $a3 = 000038C0
/* 00340 80B43D00 3C0B80B4 */  lui     $t3, %hi(func_80B43BCC)    ## $t3 = 80B40000
/* 00344 80B43D04 25623BCC */  addiu   $v0, $t3, %lo(func_80B43BCC) ## $v0 = 80B43BCC
/* 00348 80B43D08 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0034C 80B43D0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B43D10:
/* 00350 80B43D10 0040F809 */  jalr    $ra, $v0                   
/* 00354 80B43D14 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00358 80B43D18 0C00B638 */  jal     Actor_MoveForward
              
/* 0035C 80B43D1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00360 80B43D20 8E02014C */  lw      $v0, 0x014C($s0)           ## 0000014C
/* 00364 80B43D24 3C0C80B4 */  lui     $t4, %hi(func_80B43A94)    ## $t4 = 80B40000
/* 00368 80B43D28 258C3A94 */  addiu   $t4, $t4, %lo(func_80B43A94) ## $t4 = 80B43A94
/* 0036C 80B43D2C 11820024 */  beq     $t4, $v0, .L80B43DC0       
/* 00370 80B43D30 3C0D80B4 */  lui     $t5, %hi(func_80B43BCC)    ## $t5 = 80B40000
/* 00374 80B43D34 25AD3BCC */  addiu   $t5, $t5, %lo(func_80B43BCC) ## $t5 = 80B43BCC
/* 00378 80B43D38 11A20021 */  beq     $t5, $v0, .L80B43DC0       
/* 0037C 80B43D3C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00380 80B43D40 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00384 80B43D44 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 00388 80B43D48 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 0038C 80B43D4C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00390 80B43D50 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00394 80B43D54 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 00398 80B43D58 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 0039C 80B43D5C 0C00B92D */  jal     func_8002E4B4              
/* 003A0 80B43D60 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 003A4 80B43D64 26050154 */  addiu   $a1, $s0, 0x0154           ## $a1 = 00000154
/* 003A8 80B43D68 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 003AC 80B43D6C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 003B0 80B43D70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003B4 80B43D74 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 003B8 80B43D78 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 003BC 80B43D7C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 003C0 80B43D80 01E1C025 */  or      $t8, $t7, $at              ## $t8 = 01000000
/* 003C4 80B43D84 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 003C8 80B43D88 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 003CC 80B43D8C AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 003D0 80B43D90 02212821 */  addu    $a1, $s1, $at              
/* 003D4 80B43D94 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 003D8 80B43D98 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 003DC 80B43D9C 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 003E0 80B43DA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 003E4 80B43DA4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 003E8 80B43DA8 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 003EC 80B43DAC 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 003F0 80B43DB0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 003F4 80B43DB4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 003F8 80B43DB8 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 003FC 80B43DBC 8FA60028 */  lw      $a2, 0x0028($sp)           
.L80B43DC0:
/* 00400 80B43DC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00404 80B43DC4 0C00B56E */  jal     Actor_SetHeight
              
/* 00408 80B43DC8 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 0040C 80B43DCC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00410 80B43DD0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00414 80B43DD4 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00418 80B43DD8 03E00008 */  jr      $ra                        
/* 0041C 80B43DDC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
