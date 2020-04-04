glabel func_80AB840C
/* 02C8C 80AB840C 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 02C90 80AB8410 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 02C94 80AB8414 AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 02C98 80AB8418 AFB7004C */  sw      $s7, 0x004C($sp)           
/* 02C9C 80AB841C AFB60048 */  sw      $s6, 0x0048($sp)           
/* 02CA0 80AB8420 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 02CA4 80AB8424 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 02CA8 80AB8428 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 02CAC 80AB842C AFB20038 */  sw      $s2, 0x0038($sp)           
/* 02CB0 80AB8430 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 02CB4 80AB8434 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 02CB8 80AB8438 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 02CBC 80AB843C F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 02CC0 80AB8440 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 02CC4 80AB8444 8CB20000 */  lw      $s2, 0x0000($a1)           ## 00000000
/* 02CC8 80AB8448 00A0B825 */  or      $s7, $a1, $zero            ## $s7 = 00000000
/* 02CCC 80AB844C 24910358 */  addiu   $s1, $a0, 0x0358           ## $s1 = 00000358
/* 02CD0 80AB8450 3C0680AC */  lui     $a2, %hi(D_80AB8A20)       ## $a2 = 80AC0000
/* 02CD4 80AB8454 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 02CD8 80AB8458 24C68A20 */  addiu   $a2, $a2, %lo(D_80AB8A20)  ## $a2 = 80AB8A20
/* 02CDC 80AB845C 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFDC
/* 02CE0 80AB8460 24070769 */  addiu   $a3, $zero, 0x0769         ## $a3 = 00000769
/* 02CE4 80AB8464 0C031AB1 */  jal     Graph_OpenDisp              
/* 02CE8 80AB8468 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 02CEC 80AB846C 0C024F61 */  jal     func_80093D84              
/* 02CF0 80AB8470 8EE40000 */  lw      $a0, 0x0000($s7)           ## 00000000
/* 02CF4 80AB8474 3C01C47A */  lui     $at, 0xC47A                ## $at = C47A0000
/* 02CF8 80AB8478 4481C000 */  mtc1    $at, $f24                  ## $f24 = -1000.00
/* 02CFC 80AB847C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02D00 80AB8480 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 02D04 80AB8484 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 02D08 80AB8488 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 02D0C 80AB848C 241E0001 */  addiu   $s8, $zero, 0x0001         ## $s8 = 00000001
/* 02D10 80AB8490 3C16DE00 */  lui     $s6, 0xDE00                ## $s6 = DE000000
.L80AB8494:
/* 02D14 80AB8494 922E0000 */  lbu     $t6, 0x0000($s1)           ## 00000358
/* 02D18 80AB8498 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02D1C 80AB849C 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 02D20 80AB84A0 17CE0033 */  bne     $s8, $t6, .L80AB8570       
/* 02D24 80AB84A4 02E18021 */  addu    $s0, $s7, $at              
/* 02D28 80AB84A8 3C150600 */  lui     $s5, 0x0600                ## $s5 = 06000000
/* 02D2C 80AB84AC 1680000A */  bne     $s4, $zero, .L80AB84D8     
/* 02D30 80AB84B0 26B52428 */  addiu   $s5, $s5, 0x2428           ## $s5 = 06002428
/* 02D34 80AB84B4 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 02D38 80AB84B8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 02D3C 80AB84BC 248423B0 */  addiu   $a0, $a0, 0x23B0           ## $a0 = 060023B0
/* 02D40 80AB84C0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 02D44 80AB84C4 AE4F02D0 */  sw      $t7, 0x02D0($s2)           ## 000002D0
/* 02D48 80AB84C8 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 02D4C 80AB84CC 329400FF */  andi    $s4, $s4, 0x00FF           ## $s4 = 00000001
/* 02D50 80AB84D0 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 02D54 80AB84D4 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80AB84D8:
/* 02D58 80AB84D8 C62C0004 */  lwc1    $f12, 0x0004($s1)          ## 0000035C
/* 02D5C 80AB84DC C62E0008 */  lwc1    $f14, 0x0008($s1)          ## 00000360
/* 02D60 80AB84E0 8E26000C */  lw      $a2, 0x000C($s1)           ## 00000364
/* 02D64 80AB84E4 0C034261 */  jal     Matrix_Translate              
/* 02D68 80AB84E8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02D6C 80AB84EC 0C0347F5 */  jal     func_800D1FD4              
/* 02D70 80AB84F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D74 80AB84F4 C62C002C */  lwc1    $f12, 0x002C($s1)          ## 00000384
/* 02D78 80AB84F8 4406B000 */  mfc1    $a2, $f22                  
/* 02D7C 80AB84FC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02D80 80AB8500 0C0342A3 */  jal     Matrix_Scale              
/* 02D84 80AB8504 46006386 */  mov.s   $f14, $f12                 
/* 02D88 80AB8508 C62C0030 */  lwc1    $f12, 0x0030($s1)          ## 00000388
/* 02D8C 80AB850C 0C0343B5 */  jal     Matrix_RotateZ              
/* 02D90 80AB8510 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02D94 80AB8514 4406A000 */  mfc1    $a2, $f20                  
/* 02D98 80AB8518 4600A306 */  mov.s   $f12, $f20                 
/* 02D9C 80AB851C 4600C386 */  mov.s   $f14, $f24                 
/* 02DA0 80AB8520 0C034261 */  jal     Matrix_Translate              
/* 02DA4 80AB8524 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02DA8 80AB8528 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 02DAC 80AB852C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 02DB0 80AB8530 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 02DB4 80AB8534 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 02DB8 80AB8538 AE5802D0 */  sw      $t8, 0x02D0($s2)           ## 000002D0
/* 02DBC 80AB853C 3C0580AC */  lui     $a1, %hi(D_80AB8A30)       ## $a1 = 80AC0000
/* 02DC0 80AB8540 24A58A30 */  addiu   $a1, $a1, %lo(D_80AB8A30)  ## $a1 = 80AB8A30
/* 02DC4 80AB8544 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 02DC8 80AB8548 24060779 */  addiu   $a2, $zero, 0x0779         ## $a2 = 00000779
/* 02DCC 80AB854C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 02DD0 80AB8550 0C0346A2 */  jal     Matrix_NewMtx              
/* 02DD4 80AB8554 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02DD8 80AB8558 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 02DDC 80AB855C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 02DE0 80AB8560 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 02DE4 80AB8564 AE4802D0 */  sw      $t0, 0x02D0($s2)           ## 000002D0
/* 02DE8 80AB8568 AC550004 */  sw      $s5, 0x0004($v0)           ## 00000004
/* 02DEC 80AB856C AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80AB8570:
/* 02DF0 80AB8570 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 02DF4 80AB8574 00139C00 */  sll     $s3, $s3, 16               
/* 02DF8 80AB8578 00139C03 */  sra     $s3, $s3, 16               
/* 02DFC 80AB857C 2A610014 */  slti    $at, $s3, 0x0014           
/* 02E00 80AB8580 1420FFC4 */  bne     $at, $zero, .L80AB8494     
/* 02E04 80AB8584 26310038 */  addiu   $s1, $s1, 0x0038           ## $s1 = 00000390
/* 02E08 80AB8588 3C0680AC */  lui     $a2, %hi(D_80AB8A40)       ## $a2 = 80AC0000
/* 02E0C 80AB858C 24C68A40 */  addiu   $a2, $a2, %lo(D_80AB8A40)  ## $a2 = 80AB8A40
/* 02E10 80AB8590 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFDC
/* 02E14 80AB8594 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 02E18 80AB8598 0C031AD5 */  jal     Graph_CloseDisp              
/* 02E1C 80AB859C 2407077F */  addiu   $a3, $zero, 0x077F         ## $a3 = 0000077F
/* 02E20 80AB85A0 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 02E24 80AB85A4 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 02E28 80AB85A8 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 02E2C 80AB85AC D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 02E30 80AB85B0 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 02E34 80AB85B4 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 02E38 80AB85B8 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 02E3C 80AB85BC 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 02E40 80AB85C0 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 02E44 80AB85C4 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 02E48 80AB85C8 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 02E4C 80AB85CC 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 02E50 80AB85D0 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 02E54 80AB85D4 03E00008 */  jr      $ra                        
/* 02E58 80AB85D8 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
/* 02E5C 80AB85DC 00000000 */  nop

