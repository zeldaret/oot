glabel EnPoSisters_Update
/* 0333C 80ADC2CC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 03340 80ADC2D0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03344 80ADC2D4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03348 80ADC2D8 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 0334C 80ADC2DC 908202BC */  lbu     $v0, 0x02BC($a0)           ## 000002BC
/* 03350 80ADC2E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03354 80ADC2E4 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 03358 80ADC2E8 11C00003 */  beq     $t6, $zero, .L80ADC2F8     
/* 0335C 80ADC2EC 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 03360 80ADC2F0 0C2B655A */  jal     func_80AD9568              
/* 03364 80ADC2F4 A08F02BC */  sb      $t7, 0x02BC($a0)           ## 000002BC
.L80ADC2F8:
/* 03368 80ADC2F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0336C 80ADC2FC 0C2B7043 */  jal     func_80ADC10C              
/* 03370 80ADC300 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 03374 80ADC304 92180199 */  lbu     $t8, 0x0199($s0)           ## 00000199
/* 03378 80ADC308 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0337C 80ADC30C 33190004 */  andi    $t9, $t8, 0x0004           ## $t9 = 00000000
/* 03380 80ADC310 53200004 */  beql    $t9, $zero, .L80ADC324     
/* 03384 80ADC314 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 03388 80ADC318 0C2B700D */  jal     func_80ADC034              
/* 0338C 80ADC31C 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 03390 80ADC320 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
.L80ADC324:
/* 03394 80ADC324 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03398 80ADC328 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 0339C 80ADC32C 0320F809 */  jalr    $ra, $t9                   
/* 033A0 80ADC330 00000000 */  nop
/* 033A4 80ADC334 92020199 */  lbu     $v0, 0x0199($s0)           ## 00000199
/* 033A8 80ADC338 3048001F */  andi    $t0, $v0, 0x001F           ## $t0 = 00000000
/* 033AC 80ADC33C 11000082 */  beq     $t0, $zero, .L80ADC548     
/* 033B0 80ADC340 30490008 */  andi    $t1, $v0, 0x0008           ## $t1 = 00000000
/* 033B4 80ADC344 11200003 */  beq     $t1, $zero, .L80ADC354     
/* 033B8 80ADC348 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 033BC 80ADC34C 0C2B68D7 */  jal     func_80ADA35C              
/* 033C0 80ADC350 8FA50054 */  lw      $a1, 0x0054($sp)           
.L80ADC354:
/* 033C4 80ADC354 0C00B638 */  jal     Actor_MoveForward
              
/* 033C8 80ADC358 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 033CC 80ADC35C 920A0199 */  lbu     $t2, 0x0199($s0)           ## 00000199
/* 033D0 80ADC360 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 033D4 80ADC364 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 033D8 80ADC368 314B0010 */  andi    $t3, $t2, 0x0010           ## $t3 = 00000000
/* 033DC 80ADC36C 1160000C */  beq     $t3, $zero, .L80ADC3A0     
/* 033E0 80ADC370 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 033E4 80ADC374 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 033E8 80ADC378 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 033EC 80ADC37C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 033F0 80ADC380 240C0005 */  addiu   $t4, $zero, 0x0005         ## $t4 = 00000005
/* 033F4 80ADC384 44060000 */  mfc1    $a2, $f0                   
/* 033F8 80ADC388 44070000 */  mfc1    $a3, $f0                   
/* 033FC 80ADC38C AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 03400 80ADC390 0C00B92D */  jal     func_8002E4B4              
/* 03404 80ADC394 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 03408 80ADC398 10000013 */  beq     $zero, $zero, .L80ADC3E8   
/* 0340C 80ADC39C 260502AC */  addiu   $a1, $s0, 0x02AC           ## $a1 = 000002AC
.L80ADC3A0:
/* 03410 80ADC3A0 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 03414 80ADC3A4 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.00
/* 03418 80ADC3A8 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 0341C 80ADC3AC E7A60038 */  swc1    $f6, 0x0038($sp)           
/* 03420 80ADC3B0 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 03424 80ADC3B4 27AD0038 */  addiu   $t5, $sp, 0x0038           ## $t5 = FFFFFFE8
/* 03428 80ADC3B8 26050078 */  addiu   $a1, $s0, 0x0078           ## $a1 = 00000078
/* 0342C 80ADC3BC 460A4400 */  add.s   $f16, $f8, $f10            
/* 03430 80ADC3C0 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFE4
/* 03434 80ADC3C4 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 03438 80ADC3C8 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 0343C 80ADC3CC E7B0003C */  swc1    $f16, 0x003C($sp)          
/* 03440 80ADC3D0 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 03444 80ADC3D4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 03448 80ADC3D8 0C00F269 */  jal     func_8003C9A4              
/* 0344C 80ADC3DC E7B20040 */  swc1    $f18, 0x0040($sp)          
/* 03450 80ADC3E0 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
/* 03454 80ADC3E4 260502AC */  addiu   $a1, $s0, 0x02AC           ## $a1 = 000002AC
.L80ADC3E8:
/* 03458 80ADC3E8 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 0345C 80ADC3EC 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 03460 80ADC3F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03464 80ADC3F4 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 03468 80ADC3F8 3C0480AE */  lui     $a0, %hi(func_80ADA8C0)    ## $a0 = 80AE0000
/* 0346C 80ADC3FC 2484A8C0 */  addiu   $a0, $a0, %lo(func_80ADA8C0) ## $a0 = 80ADA8C0
/* 03470 80ADC400 10820004 */  beq     $a0, $v0, .L80ADC414       
/* 03474 80ADC404 3C0E80AE */  lui     $t6, %hi(func_80ADA7F0)    ## $t6 = 80AE0000
/* 03478 80ADC408 25CEA7F0 */  addiu   $t6, $t6, %lo(func_80ADA7F0) ## $t6 = 80ADA7F0
/* 0347C 80ADC40C 15C2000D */  bne     $t6, $v0, .L80ADC444       
/* 03480 80ADC410 3C0880AE */  lui     $t0, %hi(func_80ADAFC0)    ## $t0 = 80AE0000
.L80ADC414:
/* 03484 80ADC414 920F0198 */  lbu     $t7, 0x0198($s0)           ## 00000198
/* 03488 80ADC418 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 0348C 80ADC41C 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 03490 80ADC420 330200FF */  andi    $v0, $t8, 0x00FF           ## $v0 = 00000001
/* 03494 80ADC424 28410009 */  slti    $at, $v0, 0x0009           
/* 03498 80ADC428 14200003 */  bne     $at, $zero, .L80ADC438     
/* 0349C 80ADC42C A2180198 */  sb      $t8, 0x0198($s0)           ## 00000198
/* 034A0 80ADC430 10000002 */  beq     $zero, $zero, .L80ADC43C   
/* 034A4 80ADC434 A2190198 */  sb      $t9, 0x0198($s0)           ## 00000198
.L80ADC438:
/* 034A8 80ADC438 A2020198 */  sb      $v0, 0x0198($s0)           ## 00000198
.L80ADC43C:
/* 034AC 80ADC43C 10000010 */  beq     $zero, $zero, .L80ADC480   
/* 034B0 80ADC440 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
.L80ADC444:
/* 034B4 80ADC444 2508AFC0 */  addiu   $t0, $t0, %lo(func_80ADAFC0) ## $t0 = 80ADAFC0
/* 034B8 80ADC448 1102000D */  beq     $t0, $v0, .L80ADC480       
/* 034BC 80ADC44C 00000000 */  nop
/* 034C0 80ADC450 92030198 */  lbu     $v1, 0x0198($s0)           ## 00000198
/* 034C4 80ADC454 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 034C8 80ADC458 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFF
/* 034CC 80ADC45C 00031C00 */  sll     $v1, $v1, 16               
/* 034D0 80ADC460 00031C03 */  sra     $v1, $v1, 16               
/* 034D4 80ADC464 5C600005 */  bgtzl   $v1, .L80ADC47C            
/* 034D8 80ADC468 A2030198 */  sb      $v1, 0x0198($s0)           ## 00000198
/* 034DC 80ADC46C A2090198 */  sb      $t1, 0x0198($s0)           ## 00000198
/* 034E0 80ADC470 10000003 */  beq     $zero, $zero, .L80ADC480   
/* 034E4 80ADC474 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 034E8 80ADC478 A2030198 */  sb      $v1, 0x0198($s0)           ## 00000198
.L80ADC47C:
/* 034EC 80ADC47C 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
.L80ADC480:
/* 034F0 80ADC480 5482000C */  bnel    $a0, $v0, .L80ADC4B4       
/* 034F4 80ADC484 920C0199 */  lbu     $t4, 0x0199($s0)           ## 00000199
/* 034F8 80ADC488 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 034FC 80ADC48C 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 03500 80ADC490 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 03504 80ADC494 01415825 */  or      $t3, $t2, $at              ## $t3 = 01000000
/* 03508 80ADC498 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0350C 80ADC49C AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 03510 80ADC4A0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 03514 80ADC4A4 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 03518 80ADC4A8 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 0351C 80ADC4AC 00812821 */  addu    $a1, $a0, $at              
/* 03520 80ADC4B0 920C0199 */  lbu     $t4, 0x0199($s0)           ## 00000199
.L80ADC4B4:
/* 03524 80ADC4B4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03528 80ADC4B8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0352C 80ADC4BC 318D0001 */  andi    $t5, $t4, 0x0001           ## $t5 = 00000000
/* 03530 80ADC4C0 11A00004 */  beq     $t5, $zero, .L80ADC4D4     
/* 03534 80ADC4C4 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 03538 80ADC4C8 00812821 */  addu    $a1, $a0, $at              
/* 0353C 80ADC4CC 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 03540 80ADC4D0 8FA60028 */  lw      $a2, 0x0028($sp)           
.L80ADC4D4:
/* 03544 80ADC4D4 8E180190 */  lw      $t8, 0x0190($s0)           ## 00000190
/* 03548 80ADC4D8 3C0F80AE */  lui     $t7, %hi(func_80ADB338)    ## $t7 = 80AE0000
/* 0354C 80ADC4DC 25EFB338 */  addiu   $t7, $t7, %lo(func_80ADB338) ## $t7 = 80ADB338
/* 03550 80ADC4E0 11F80006 */  beq     $t7, $t8, .L80ADC4FC       
/* 03554 80ADC4E4 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 03558 80ADC4E8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0355C 80ADC4EC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 03560 80ADC4F0 00812821 */  addu    $a1, $a0, $at              
/* 03564 80ADC4F4 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 03568 80ADC4F8 8FA60028 */  lw      $a2, 0x0028($sp)           
.L80ADC4FC:
/* 0356C 80ADC4FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03570 80ADC500 0C00B56E */  jal     Actor_SetHeight
              
/* 03574 80ADC504 3C054220 */  lui     $a1, 0x4220                ## $a1 = 42200000
/* 03578 80ADC508 8E090190 */  lw      $t1, 0x0190($s0)           ## 00000190
/* 0357C 80ADC50C 3C0880AE */  lui     $t0, %hi(func_80ADAC70)    ## $t0 = 80AE0000
/* 03580 80ADC510 2508AC70 */  addiu   $t0, $t0, %lo(func_80ADAC70) ## $t0 = 80ADAC70
/* 03584 80ADC514 55090007 */  bnel    $t0, $t1, .L80ADC534       
/* 03588 80ADC518 920C0199 */  lbu     $t4, 0x0199($s0)           ## 00000199
/* 0358C 80ADC51C 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
/* 03590 80ADC520 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 03594 80ADC524 01415821 */  addu    $t3, $t2, $at              
/* 03598 80ADC528 10000007 */  beq     $zero, $zero, .L80ADC548   
/* 0359C 80ADC52C A60B00B6 */  sh      $t3, 0x00B6($s0)           ## 000000B6
/* 035A0 80ADC530 920C0199 */  lbu     $t4, 0x0199($s0)           ## 00000199
.L80ADC534:
/* 035A4 80ADC534 318D0002 */  andi    $t5, $t4, 0x0002           ## $t5 = 00000000
/* 035A8 80ADC538 51A00004 */  beql    $t5, $zero, .L80ADC54C     
/* 035AC 80ADC53C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 035B0 80ADC540 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 035B4 80ADC544 A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
.L80ADC548:
/* 035B8 80ADC548 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ADC54C:
/* 035BC 80ADC54C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 035C0 80ADC550 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 035C4 80ADC554 03E00008 */  jr      $ra                        
/* 035C8 80ADC558 00000000 */  nop


