glabel func_809C4318
/* 00CE8 809C4318 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00CEC 809C431C 3C0F809C */  lui     $t7, %hi(D_809C4A48)       ## $t7 = 809C0000
/* 00CF0 809C4320 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00CF4 809C4324 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00CF8 809C4328 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00CFC 809C432C 25EF4A48 */  addiu   $t7, $t7, %lo(D_809C4A48)  ## $t7 = 809C4A48
/* 00D00 809C4330 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809C4A48
/* 00D04 809C4334 27AE0044 */  addiu   $t6, $sp, 0x0044           ## $t6 = FFFFFFF4
/* 00D08 809C4338 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809C4A4C
/* 00D0C 809C433C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00D10 809C4340 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809C4A50
/* 00D14 809C4344 3C09809C */  lui     $t1, %hi(D_809C4A54)       ## $t1 = 809C0000
/* 00D18 809C4348 25294A54 */  addiu   $t1, $t1, %lo(D_809C4A54)  ## $t1 = 809C4A54
/* 00D1C 809C434C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 00D20 809C4350 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 00D24 809C4354 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 809C4A54
/* 00D28 809C4358 27A80038 */  addiu   $t0, $sp, 0x0038           ## $t0 = FFFFFFE8
/* 00D2C 809C435C 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 809C4A58
/* 00D30 809C4360 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 00D34 809C4364 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 809C4A5C
/* 00D38 809C4368 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D3C 809C436C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D40 809C4370 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 00D44 809C4374 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D48 809C4378 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 00D4C 809C437C 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00D50 809C4380 0C042F6F */  jal     func_8010BDBC              
/* 00D54 809C4384 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00D58 809C4388 860C022E */  lh      $t4, 0x022E($s0)           ## 0000022E
/* 00D5C 809C438C 5582001F */  bnel    $t4, $v0, .L809C440C       
/* 00D60 809C4390 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D64 809C4394 0C041AF2 */  jal     func_80106BC8              
/* 00D68 809C4398 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00D6C 809C439C 1040001A */  beq     $v0, $zero, .L809C4408     
/* 00D70 809C43A0 3C014314 */  lui     $at, 0x4314                ## $at = 43140000
/* 00D74 809C43A4 44812000 */  mtc1    $at, $f4                   ## $f4 = 148.00
/* 00D78 809C43A8 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00D7C 809C43AC 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 00D80 809C43B0 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00D84 809C43B4 44814000 */  mtc1    $at, $f8                   ## $f8 = 300.00
/* 00D88 809C43B8 240D0032 */  addiu   $t5, $zero, 0x0032         ## $t5 = 00000032
/* 00D8C 809C43BC 240E000F */  addiu   $t6, $zero, 0x000F         ## $t6 = 0000000F
/* 00D90 809C43C0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00D94 809C43C4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00D98 809C43C8 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00D9C 809C43CC 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFDC
/* 00DA0 809C43D0 27A60038 */  addiu   $a2, $sp, 0x0038           ## $a2 = FFFFFFE8
/* 00DA4 809C43D4 27A70044 */  addiu   $a3, $sp, 0x0044           ## $a3 = FFFFFFF4
/* 00DA8 809C43D8 E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 00DAC 809C43DC E7A60030 */  swc1    $f6, 0x0030($sp)           
/* 00DB0 809C43E0 0C00A3A1 */  jal     func_80028E84              
/* 00DB4 809C43E4 E7A80034 */  swc1    $f8, 0x0034($sp)           
/* 00DB8 809C43E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DBC 809C43EC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DC0 809C43F0 2405184B */  addiu   $a1, $zero, 0x184B         ## $a1 = 0000184B
/* 00DC4 809C43F4 3C18809C */  lui     $t8, %hi(func_809C441C)    ## $t8 = 809C0000
/* 00DC8 809C43F8 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 00DCC 809C43FC 2718441C */  addiu   $t8, $t8, %lo(func_809C441C) ## $t8 = 809C441C
/* 00DD0 809C4400 A60F022A */  sh      $t7, 0x022A($s0)           ## 0000022A
/* 00DD4 809C4404 AE180214 */  sw      $t8, 0x0214($s0)           ## 00000214
.L809C4408:
/* 00DD8 809C4408 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809C440C:
/* 00DDC 809C440C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00DE0 809C4410 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00DE4 809C4414 03E00008 */  jr      $ra                        
/* 00DE8 809C4418 00000000 */  nop


