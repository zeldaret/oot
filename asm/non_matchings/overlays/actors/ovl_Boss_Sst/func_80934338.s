glabel func_80934338
/* 07D68 80934338 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 07D6C 8093433C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 07D70 80934340 3C068094 */  lui     $a2, %hi(D_80938C9C)       ## $a2 = 80940000
/* 07D74 80934344 8CC68C9C */  lw      $a2, %lo(D_80938C9C)($a2)  
/* 07D78 80934348 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 07D7C 8093434C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 07D80 80934350 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 07D84 80934354 3C058094 */  lui     $a1, %hi(D_80938CB4)       ## $a1 = 80940000
/* 07D88 80934358 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 07D8C 8093435C 24A58CB4 */  addiu   $a1, $a1, %lo(D_80938CB4)  ## $a1 = 80938CB4
/* 07D90 80934360 0C00B6F4 */  jal     func_8002DBD0              
/* 07D94 80934364 24C60024 */  addiu   $a2, $a2, 0x0024           ## $a2 = 80940024
/* 07D98 80934368 3C068094 */  lui     $a2, %hi(D_80938C98)       ## $a2 = 80940000
/* 07D9C 8093436C 8CC68C98 */  lw      $a2, %lo(D_80938C98)($a2)  
/* 07DA0 80934370 3C058094 */  lui     $a1, %hi(D_80938CA8)       ## $a1 = 80940000
/* 07DA4 80934374 24A58CA8 */  addiu   $a1, $a1, %lo(D_80938CA8)  ## $a1 = 80938CA8
/* 07DA8 80934378 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07DAC 8093437C 0C00B6F4 */  jal     func_8002DBD0              
/* 07DB0 80934380 24C60024 */  addiu   $a2, $a2, 0x0024           ## $a2 = 80940024
/* 07DB4 80934384 3C038094 */  lui     $v1, %hi(D_80938C98)       ## $v1 = 80940000
/* 07DB8 80934388 24638C98 */  addiu   $v1, $v1, %lo(D_80938C98)  ## $v1 = 80938C98
/* 07DBC 8093438C 8C6E0000 */  lw      $t6, 0x0000($v1)           ## 80938C98
/* 07DC0 80934390 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 07DC4 80934394 3C028094 */  lui     $v0, %hi(D_80938CC0)       ## $v0 = 80940000
/* 07DC8 80934398 85CF00B6 */  lh      $t7, 0x00B6($t6)           ## 000000B6
/* 07DCC 8093439C 8C680004 */  lw      $t0, 0x0004($v1)           ## 80938C9C
/* 07DD0 809343A0 24428CC0 */  addiu   $v0, $v0, %lo(D_80938CC0)  ## $v0 = 80938CC0
/* 07DD4 809343A4 01F8C823 */  subu    $t9, $t7, $t8              
/* 07DD8 809343A8 A4590000 */  sh      $t9, 0x0000($v0)           ## 80938CC0
/* 07DDC 809343AC 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 07DE0 809343B0 850900B6 */  lh      $t1, 0x00B6($t0)           ## 000000B6
/* 07DE4 809343B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07DE8 809343B8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 07DEC 809343BC 012A5823 */  subu    $t3, $t1, $t2              
/* 07DF0 809343C0 0C24CFB8 */  jal     func_80933EE0              
/* 07DF4 809343C4 A44B0002 */  sh      $t3, 0x0002($v0)           ## 80938CC2
/* 07DF8 809343C8 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 07DFC 809343CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07E00 809343D0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 07E04 809343D4 0320F809 */  jalr    $ra, $t9                   
/* 07E08 809343D8 00000000 */  nop
/* 07E0C 809343DC 820C0194 */  lb      $t4, 0x0194($s0)           ## 00000194
/* 07E10 809343E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 07E14 809343E4 260603D4 */  addiu   $a2, $s0, 0x03D4           ## $a2 = 000003D4
/* 07E18 809343E8 51800010 */  beql    $t4, $zero, .L8093442C     
/* 07E1C 809343EC 920A03E4 */  lbu     $t2, 0x03E4($s0)           ## 000003E4
/* 07E20 809343F0 922D1C27 */  lbu     $t5, 0x1C27($s1)           ## 00001C27
/* 07E24 809343F4 51A00005 */  beql    $t5, $zero, .L8093440C     
/* 07E28 809343F8 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 07E2C 809343FC 920E0114 */  lbu     $t6, 0x0114($s0)           ## 00000114
/* 07E30 80934400 51C00007 */  beql    $t6, $zero, .L80934420     
/* 07E34 80934404 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 07E38 80934408 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
.L8093440C:
/* 07E3C 8093440C 2401FF7F */  addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
/* 07E40 80934410 01E1C024 */  and     $t8, $t7, $at              
/* 07E44 80934414 10000004 */  beq     $zero, $zero, .L80934428   
/* 07E48 80934418 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 07E4C 8093441C 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
.L80934420:
/* 07E50 80934420 35090080 */  ori     $t1, $t0, 0x0080           ## $t1 = 00000080
/* 07E54 80934424 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
.L80934428:
/* 07E58 80934428 920A03E4 */  lbu     $t2, 0x03E4($s0)           ## 000003E4
.L8093442C:
/* 07E5C 8093442C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07E60 80934430 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 07E64 80934434 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 07E68 80934438 51600004 */  beql    $t3, $zero, .L8093444C     
/* 07E6C 8093443C 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 07E70 80934440 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 07E74 80934444 02212821 */  addu    $a1, $s1, $at              
/* 07E78 80934448 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
.L8093444C:
/* 07E7C 8093444C 3C198093 */  lui     $t9, %hi(func_8092CAD0)    ## $t9 = 80930000
/* 07E80 80934450 2739CAD0 */  addiu   $t9, $t9, %lo(func_8092CAD0) ## $t9 = 8092CAD0
/* 07E84 80934454 13220014 */  beq     $t9, $v0, .L809344A8       
/* 07E88 80934458 3C0C8093 */  lui     $t4, %hi(func_8092CC58)    ## $t4 = 80930000
/* 07E8C 8093445C 258CCC58 */  addiu   $t4, $t4, %lo(func_8092CC58) ## $t4 = 8092CC58
/* 07E90 80934460 11820011 */  beq     $t4, $v0, .L809344A8       
/* 07E94 80934464 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07E98 80934468 920D06C5 */  lbu     $t5, 0x06C5($s0)           ## 000006C5
/* 07E9C 8093446C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 07EA0 80934470 02212821 */  addu    $a1, $s1, $at              
/* 07EA4 80934474 31AE0001 */  andi    $t6, $t5, 0x0001           ## $t6 = 00000000
/* 07EA8 80934478 11C00008 */  beq     $t6, $zero, .L8093449C     
/* 07EAC 8093447C 260703D4 */  addiu   $a3, $s0, 0x03D4           ## $a3 = 000003D4
/* 07EB0 80934480 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 07EB4 80934484 260606B4 */  addiu   $a2, $s0, 0x06B4           ## $a2 = 000006B4
/* 07EB8 80934488 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 07EBC 8093448C 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 07EC0 80934490 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 07EC4 80934494 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 07EC8 80934498 8FA70020 */  lw      $a3, 0x0020($sp)           
.L8093449C:
/* 07ECC 8093449C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 07ED0 809344A0 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 07ED4 809344A4 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 00000000
.L809344A8:
/* 07ED8 809344A8 920F03E6 */  lbu     $t7, 0x03E6($s0)           ## 000003E6
/* 07EDC 809344AC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07EE0 809344B0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 07EE4 809344B4 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 07EE8 809344B8 13000004 */  beq     $t8, $zero, .L809344CC     
/* 07EEC 809344BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 07EF0 809344C0 02212821 */  addu    $a1, $s1, $at              
/* 07EF4 809344C4 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 07EF8 809344C8 260603D4 */  addiu   $a2, $s0, 0x03D4           ## $a2 = 000003D4
.L809344CC:
/* 07EFC 809344CC 0C24CE7E */  jal     func_809339F8              
/* 07F00 809344D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07F04 809344D4 82080194 */  lb      $t0, 0x0194($s0)           ## 00000194
/* 07F08 809344D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07F0C 809344DC 51000007 */  beql    $t0, $zero, .L809344FC     
/* 07F10 809344E0 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 07F14 809344E4 8E030004 */  lw      $v1, 0x0004($s0)           ## 00000004
/* 07F18 809344E8 24010080 */  addiu   $at, $zero, 0x0080         ## $at = 00000080
/* 07F1C 809344EC 30690080 */  andi    $t1, $v1, 0x0080           ## $t1 = 00000000
/* 07F20 809344F0 5521001B */  bnel    $t1, $at, .L80934560       
/* 07F24 809344F4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 07F28 809344F8 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
.L809344FC:
/* 07F2C 809344FC 3C0A8093 */  lui     $t2, %hi(func_8092DEA0)    ## $t2 = 80930000
/* 07F30 80934500 254ADEA0 */  addiu   $t2, $t2, %lo(func_8092DEA0) ## $t2 = 8092DEA0
/* 07F34 80934504 11420010 */  beq     $t2, $v0, .L80934548       
/* 07F38 80934508 8E030004 */  lw      $v1, 0x0004($s0)           ## 00000004
/* 07F3C 8093450C 3C0B8093 */  lui     $t3, %hi(func_8092DFFC)    ## $t3 = 80930000
/* 07F40 80934510 256BDFFC */  addiu   $t3, $t3, %lo(func_8092DFFC) ## $t3 = 8092DFFC
/* 07F44 80934514 1162000C */  beq     $t3, $v0, .L80934548       
/* 07F48 80934518 3C198093 */  lui     $t9, %hi(func_8092E3A0)    ## $t9 = 80930000
/* 07F4C 8093451C 2739E3A0 */  addiu   $t9, $t9, %lo(func_8092E3A0) ## $t9 = 8092E3A0
/* 07F50 80934520 13220009 */  beq     $t9, $v0, .L80934548       
/* 07F54 80934524 3C0C8093 */  lui     $t4, %hi(func_8092E510)    ## $t4 = 80930000
/* 07F58 80934528 258CE510 */  addiu   $t4, $t4, %lo(func_8092E510) ## $t4 = 8092E510
/* 07F5C 8093452C 11820006 */  beq     $t4, $v0, .L80934548       
/* 07F60 80934530 3C0D8093 */  lui     $t5, %hi(func_8092E830)    ## $t5 = 80930000
/* 07F64 80934534 25ADE830 */  addiu   $t5, $t5, %lo(func_8092E830) ## $t5 = 8092E830
/* 07F68 80934538 11A20003 */  beq     $t5, $v0, .L80934548       
/* 07F6C 8093453C 3C0E8093 */  lui     $t6, %hi(func_8092EA00)    ## $t6 = 80930000
/* 07F70 80934540 25CEEA00 */  addiu   $t6, $t6, %lo(func_8092EA00) ## $t6 = 8092EA00
/* 07F74 80934544 15C20005 */  bne     $t6, $v0, .L8093455C       
.L80934548:
/* 07F78 80934548 346F0001 */  ori     $t7, $v1, 0x0001           ## $t7 = 00000001
/* 07F7C 8093454C 3C028093 */  lui     $v0, %hi(func_8092DFFC)    ## $v0 = 80930000
/* 07F80 80934550 2442DFFC */  addiu   $v0, $v0, %lo(func_8092DFFC) ## $v0 = 8092DFFC
/* 07F84 80934554 10000006 */  beq     $zero, $zero, .L80934570   
/* 07F88 80934558 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
.L8093455C:
/* 07F8C 8093455C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
.L80934560:
/* 07F90 80934560 0061C024 */  and     $t8, $v1, $at              
/* 07F94 80934564 3C028093 */  lui     $v0, %hi(func_8092DFFC)    ## $v0 = 80930000
/* 07F98 80934568 2442DFFC */  addiu   $v0, $v0, %lo(func_8092DFFC) ## $v0 = 8092DFFC
/* 07F9C 8093456C AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
.L80934570:
/* 07FA0 80934570 8E080190 */  lw      $t0, 0x0190($s0)           ## 00000190
/* 07FA4 80934574 54480004 */  bnel    $v0, $t0, .L80934588       
/* 07FA8 80934578 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07FAC 8093457C 0C24CF4B */  jal     func_80933D2C              
/* 07FB0 80934580 2405318D */  addiu   $a1, $zero, 0x318D         ## $a1 = 0000318D
/* 07FB4 80934584 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80934588:
/* 07FB8 80934588 0C24D83F */  jal     func_809360FC              
/* 07FBC 8093458C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 07FC0 80934590 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 07FC4 80934594 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 07FC8 80934598 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 07FCC 8093459C 03E00008 */  jr      $ra                        
/* 07FD0 809345A0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
