glabel func_80AD038C
/* 00EEC 80AD038C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00EF0 80AD0390 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00EF4 80AD0394 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00EF8 80AD0398 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00EFC 80AD039C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F00 80AD03A0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00F04 80AD03A4 44050000 */  mfc1    $a1, $f0                   
/* 00F08 80AD03A8 248400BC */  addiu   $a0, $a0, 0x00BC           ## $a0 = 000000BC
/* 00F0C 80AD03AC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00F10 80AD03B0 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 00F14 80AD03B4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00F18 80AD03B8 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00F1C 80AD03BC 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 00F20 80AD03C0 24050FA0 */  addiu   $a1, $zero, 0x0FA0         ## $a1 = 00000FA0
/* 00F24 80AD03C4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00F28 80AD03C8 24070320 */  addiu   $a3, $zero, 0x0320         ## $a3 = 00000320
/* 00F2C 80AD03CC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00F30 80AD03D0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00F34 80AD03D4 14400041 */  bne     $v0, $zero, .L80AD04DC     
/* 00F38 80AD03D8 00000000 */  nop
/* 00F3C 80AD03DC 860202FC */  lh      $v0, 0x02FC($s0)           ## 000002FC
/* 00F40 80AD03E0 10400011 */  beq     $v0, $zero, .L80AD0428     
/* 00F44 80AD03E4 00000000 */  nop
/* 00F48 80AD03E8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00F4C 80AD03EC C6060168 */  lwc1    $f6, 0x0168($s0)           ## 00000168
/* 00F50 80AD03F0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00F54 80AD03F4 A60E02FC */  sh      $t6, 0x02FC($s0)           ## 000002FC
/* 00F58 80AD03F8 46062032 */  c.eq.s  $f4, $f6                   
/* 00F5C 80AD03FC 00000000 */  nop
/* 00F60 80AD0400 45000009 */  bc1f    .L80AD0428                 
/* 00F64 80AD0404 00000000 */  nop
/* 00F68 80AD0408 860F02FC */  lh      $t7, 0x02FC($s0)           ## 000002FC
/* 00F6C 80AD040C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00F70 80AD0410 15E00005 */  bne     $t7, $zero, .L80AD0428     
/* 00F74 80AD0414 00000000 */  nop
/* 00F78 80AD0418 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 00F7C 80AD041C 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 00F80 80AD0420 A61802FC */  sh      $t8, 0x02FC($s0)           ## 000002FC
/* 00F84 80AD0424 E6080168 */  swc1    $f8, 0x0168($s0)           ## 00000168
.L80AD0428:
/* 00F88 80AD0428 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F8C 80AD042C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00F90 80AD0430 14400005 */  bne     $v0, $zero, .L80AD0448     
/* 00F94 80AD0434 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F98 80AD0438 861902FC */  lh      $t9, 0x02FC($s0)           ## 000002FC
/* 00F9C 80AD043C 3C014190 */  lui     $at, 0x4190                ## $at = 41900000
/* 00FA0 80AD0440 57200006 */  bnel    $t9, $zero, .L80AD045C     
/* 00FA4 80AD0444 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
.L80AD0448:
/* 00FA8 80AD0448 0C2B3FAC */  jal     func_80ACFEB0              
/* 00FAC 80AD044C A60002FA */  sh      $zero, 0x02FA($s0)         ## 000002FA
/* 00FB0 80AD0450 10000007 */  beq     $zero, $zero, .L80AD0470   
/* 00FB4 80AD0454 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00FB8 80AD0458 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
.L80AD045C:
/* 00FBC 80AD045C 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.00
/* 00FC0 80AD0460 00000000 */  nop
/* 00FC4 80AD0464 46105480 */  add.s   $f18, $f10, $f16           
/* 00FC8 80AD0468 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 00FCC 80AD046C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
.L80AD0470:
/* 00FD0 80AD0470 C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 00FD4 80AD0474 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00FD8 80AD0478 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
/* 00FDC 80AD047C 46062201 */  sub.s   $f8, $f4, $f6              
/* 00FE0 80AD0480 460A403C */  c.lt.s  $f8, $f10                  
/* 00FE4 80AD0484 00000000 */  nop
/* 00FE8 80AD0488 45000014 */  bc1f    .L80AD04DC                 
/* 00FEC 80AD048C 00000000 */  nop
/* 00FF0 80AD0490 8E090024 */  lw      $t1, 0x0024($s0)           ## 00000024
/* 00FF4 80AD0494 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 00FF8 80AD0498 240A0096 */  addiu   $t2, $zero, 0x0096         ## $t2 = 00000096
/* 00FFC 80AD049C ACA90000 */  sw      $t1, 0x0000($a1)           ## FFFFFFF4
/* 01000 80AD04A0 8E080028 */  lw      $t0, 0x0028($s0)           ## 00000028
/* 01004 80AD04A4 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 01008 80AD04A8 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 0100C 80AD04AC ACA80004 */  sw      $t0, 0x0004($a1)           ## FFFFFFF8
/* 01010 80AD04B0 8E09002C */  lw      $t1, 0x002C($s0)           ## 0000002C
/* 01014 80AD04B4 3C0642B4 */  lui     $a2, 0x42B4                ## $a2 = 42B40000
/* 01018 80AD04B8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0101C 80AD04BC ACA90008 */  sw      $t1, 0x0008($a1)           ## FFFFFFFC
/* 01020 80AD04C0 C6100080 */  lwc1    $f16, 0x0080($s0)          ## 00000080
/* 01024 80AD04C4 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 01028 80AD04C8 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 0102C 80AD04CC AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 01030 80AD04D0 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01034 80AD04D4 0C00CD20 */  jal     func_80033480              
/* 01038 80AD04D8 E7B00038 */  swc1    $f16, 0x0038($sp)          
.L80AD04DC:
/* 0103C 80AD04DC 3C0180AD */  lui     $at, %hi(D_80AD2924)       ## $at = 80AD0000
/* 01040 80AD04E0 C4322924 */  lwc1    $f18, %lo(D_80AD2924)($at) 
/* 01044 80AD04E4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01048 80AD04E8 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 0104C 80AD04EC 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 01050 80AD04F0 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 01054 80AD04F4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01058 80AD04F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0105C 80AD04FC 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01060 80AD0500 3C074296 */  lui     $a3, 0x4296                ## $a3 = 42960000
/* 01064 80AD0504 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 01068 80AD0508 0C2B3DE2 */  jal     func_80ACF788              
/* 0106C 80AD050C E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 01070 80AD0510 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01074 80AD0514 3C053D99 */  lui     $a1, 0x3D99                ## $a1 = 3D990000
/* 01078 80AD0518 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 0107C 80AD051C 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 01080 80AD0520 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3D99999A
/* 01084 80AD0524 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 01088 80AD0528 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0108C 80AD052C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01090 80AD0530 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01094 80AD0534 860E02F2 */  lh      $t6, 0x02F2($s0)           ## 000002F2
/* 01098 80AD0538 860F02F0 */  lh      $t7, 0x02F0($s0)           ## 000002F0
/* 0109C 80AD053C 01CFC021 */  addu    $t8, $t6, $t7              
/* 010A0 80AD0540 A61802F2 */  sh      $t8, 0x02F2($s0)           ## 000002F2
/* 010A4 80AD0544 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 010A8 80AD0548 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 010AC 80AD054C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 010B0 80AD0550 03E00008 */  jr      $ra                        
/* 010B4 80AD0554 00000000 */  nop


