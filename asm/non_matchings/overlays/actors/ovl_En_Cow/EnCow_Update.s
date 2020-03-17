glabel EnCow_Update
/* 00E1C 809DFC1C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00E20 809DFC20 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00E24 809DFC24 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00E28 809DFC28 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00E2C 809DFC2C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E30 809DFC30 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00E34 809DFC34 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00E38 809DFC38 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00E3C 809DFC3C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00E40 809DFC40 00A12821 */  addu    $a1, $a1, $at              
/* 00E44 809DFC44 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00E48 809DFC48 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 00E4C 809DFC4C 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 00E50 809DFC50 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00E54 809DFC54 AFAE0040 */  sw      $t6, 0x0040($sp)           
/* 00E58 809DFC58 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00E5C 809DFC5C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00E60 809DFC60 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00E64 809DFC64 26060198 */  addiu   $a2, $s0, 0x0198           ## $a2 = 00000198
/* 00E68 809DFC68 0C00B638 */  jal     Actor_MoveForward
              
/* 00E6C 809DFC6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E70 809DFC70 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00E74 809DFC74 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00E78 809DFC78 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00E7C 809DFC7C 44060000 */  mfc1    $a2, $f0                   
/* 00E80 809DFC80 44070000 */  mfc1    $a3, $f0                   
/* 00E84 809DFC84 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00E88 809DFC88 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E8C 809DFC8C 0C00B92D */  jal     func_8002E4B4              
/* 00E90 809DFC90 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00E94 809DFC94 260401E4 */  addiu   $a0, $s0, 0x01E4           ## $a0 = 000001E4
/* 00E98 809DFC98 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E9C 809DFC9C AFA40034 */  sw      $a0, 0x0034($sp)           
/* 00EA0 809DFCA0 5040002B */  beql    $v0, $zero, .L809DFD50     
/* 00EA4 809DFCA4 8E19027C */  lw      $t9, 0x027C($s0)           ## 0000027C
/* 00EA8 809DFCA8 8E1801EC */  lw      $t8, 0x01EC($s0)           ## 000001EC
/* 00EAC 809DFCAC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00EB0 809DFCB0 248401CC */  addiu   $a0, $a0, 0x01CC           ## $a0 = 060001CC
/* 00EB4 809DFCB4 14980016 */  bne     $a0, $t8, .L809DFD10       
/* 00EB8 809DFCB8 240528DF */  addiu   $a1, $zero, 0x28DF         ## $a1 = 000028DF
/* 00EBC 809DFCBC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00EC0 809DFCC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EC4 809DFCC4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00EC8 809DFCC8 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00ECC 809DFCCC 24844264 */  addiu   $a0, $a0, 0x4264           ## $a0 = 06004264
/* 00ED0 809DFCD0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00ED4 809DFCD4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00ED8 809DFCD8 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00EDC 809DFCDC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00EE0 809DFCE0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00EE4 809DFCE4 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00EE8 809DFCE8 44060000 */  mfc1    $a2, $f0                   
/* 00EEC 809DFCEC AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00EF0 809DFCF0 24A54264 */  addiu   $a1, $a1, 0x4264           ## $a1 = 06004264
/* 00EF4 809DFCF4 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00EF8 809DFCF8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00EFC 809DFCFC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00F00 809DFD00 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00F04 809DFD04 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00F08 809DFD08 10000011 */  beq     $zero, $zero, .L809DFD50   
/* 00F0C 809DFD0C 8E19027C */  lw      $t9, 0x027C($s0)           ## 0000027C
.L809DFD10:
/* 00F10 809DFD10 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00F14 809DFD14 00000000 */  nop
/* 00F18 809DFD18 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00F1C 809DFD1C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00F20 809DFD20 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00F24 809DFD24 468042A0 */  cvt.s.w $f10, $f8                  
/* 00F28 809DFD28 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00F2C 809DFD2C 44060000 */  mfc1    $a2, $f0                   
/* 00F30 809DFD30 24A501CC */  addiu   $a1, $a1, 0x01CC           ## $a1 = 060001CC
/* 00F34 809DFD34 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00F38 809DFD38 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00F3C 809DFD3C E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00F40 809DFD40 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00F44 809DFD44 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00F48 809DFD48 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00F4C 809DFD4C 8E19027C */  lw      $t9, 0x027C($s0)           ## 0000027C
.L809DFD50:
/* 00F50 809DFD50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F54 809DFD54 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 00F58 809DFD58 0320F809 */  jalr    $ra, $t9                   
/* 00F5C 809DFD5C 00000000 */  nop
/* 00F60 809DFD60 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00F64 809DFD64 44819000 */  mtc1    $at, $f18                  ## $f18 = 150.00
/* 00F68 809DFD68 C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
/* 00F6C 809DFD6C 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 00F70 809DFD70 4612803C */  c.lt.s  $f16, $f18                 
/* 00F74 809DFD74 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 00F78 809DFD78 45000033 */  bc1f    .L809DFE48                 
/* 00F7C 809DFD7C 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00F80 809DFD80 AFA40034 */  sw      $a0, 0x0034($sp)           
/* 00F84 809DFD84 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00F88 809DFD88 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00F8C 809DFD8C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00F90 809DFD90 04400005 */  bltz    $v0, .L809DFDA8            
/* 00F94 809DFD94 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00F98 809DFD98 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00F9C 809DFD9C 00000000 */  nop
/* 00FA0 809DFDA0 10000004 */  beq     $zero, $zero, .L809DFDB4   
/* 00FA4 809DFDA4 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L809DFDA8:
/* 00FA8 809DFDA8 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00FAC 809DFDAC 00000000 */  nop
/* 00FB0 809DFDB0 00021823 */  subu    $v1, $zero, $v0            
.L809DFDB4:
/* 00FB4 809DFDB4 3401C000 */  ori     $at, $zero, 0xC000         ## $at = 0000C000
/* 00FB8 809DFDB8 0061082A */  slt     $at, $v1, $at              
/* 00FBC 809DFDBC 10200022 */  beq     $at, $zero, .L809DFE48     
/* 00FC0 809DFDC0 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 00FC4 809DFDC4 26040038 */  addiu   $a0, $s0, 0x0038           ## $a0 = 00000038
/* 00FC8 809DFDC8 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 00FCC 809DFDCC AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00FD0 809DFDD0 0C01E027 */  jal     Math_Vec3f_Pitch
              
/* 00FD4 809DFDD4 AFA40034 */  sw      $a0, 0x0034($sp)           
/* 00FD8 809DFDD8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00FDC 809DFDDC 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00FE0 809DFDE0 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00FE4 809DFDE4 A7A20046 */  sh      $v0, 0x0046($sp)           
/* 00FE8 809DFDE8 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 00FEC 809DFDEC 87A50046 */  lh      $a1, 0x0046($sp)           
/* 00FF0 809DFDF0 00481823 */  subu    $v1, $v0, $t0              
/* 00FF4 809DFDF4 00031C00 */  sll     $v1, $v1, 16               
/* 00FF8 809DFDF8 28A11001 */  slti    $at, $a1, 0x1001           
/* 00FFC 809DFDFC 14200003 */  bne     $at, $zero, .L809DFE0C     
/* 01000 809DFE00 00031C03 */  sra     $v1, $v1, 16               
/* 01004 809DFE04 10000005 */  beq     $zero, $zero, .L809DFE1C   
/* 01008 809DFE08 24051000 */  addiu   $a1, $zero, 0x1000         ## $a1 = 00001000
.L809DFE0C:
/* 0100C 809DFE0C 28A1F000 */  slti    $at, $a1, 0xF000           
/* 01010 809DFE10 50200003 */  beql    $at, $zero, .L809DFE20     
/* 01014 809DFE14 28612501 */  slti    $at, $v1, 0x2501           
/* 01018 809DFE18 2405F000 */  addiu   $a1, $zero, 0xF000         ## $a1 = FFFFF000
.L809DFE1C:
/* 0101C 809DFE1C 28612501 */  slti    $at, $v1, 0x2501           
.L809DFE20:
/* 01020 809DFE20 54200004 */  bnel    $at, $zero, .L809DFE34     
/* 01024 809DFE24 2861DB00 */  slti    $at, $v1, 0xDB00           
/* 01028 809DFE28 10000005 */  beq     $zero, $zero, .L809DFE40   
/* 0102C 809DFE2C 24032500 */  addiu   $v1, $zero, 0x2500         ## $v1 = 00002500
/* 01030 809DFE30 2861DB00 */  slti    $at, $v1, 0xDB00           
.L809DFE34:
/* 01034 809DFE34 10200002 */  beq     $at, $zero, .L809DFE40     
/* 01038 809DFE38 00000000 */  nop
/* 0103C 809DFE3C 2403DB00 */  addiu   $v1, $zero, 0xDB00         ## $v1 = FFFFDB00
.L809DFE40:
/* 01040 809DFE40 10000003 */  beq     $zero, $zero, .L809DFE50   
/* 01044 809DFE44 A7A30044 */  sh      $v1, 0x0044($sp)           
.L809DFE48:
/* 01048 809DFE48 A7A00044 */  sh      $zero, 0x0044($sp)         
/* 0104C 809DFE4C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
.L809DFE50:
/* 01050 809DFE50 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 01054 809DFE54 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 01058 809DFE58 26040270 */  addiu   $a0, $s0, 0x0270           ## $a0 = 00000270
/* 0105C 809DFE5C 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 01060 809DFE60 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01064 809DFE64 240700C8 */  addiu   $a3, $zero, 0x00C8         ## $a3 = 000000C8
/* 01068 809DFE68 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 0106C 809DFE6C AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 01070 809DFE70 26040272 */  addiu   $a0, $s0, 0x0272           ## $a0 = 00000272
/* 01074 809DFE74 87A50044 */  lh      $a1, 0x0044($sp)           
/* 01078 809DFE78 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0107C 809DFE7C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01080 809DFE80 240700C8 */  addiu   $a3, $zero, 0x00C8         ## $a3 = 000000C8
/* 01084 809DFE84 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01088 809DFE88 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 0108C 809DFE8C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 01090 809DFE90 03E00008 */  jr      $ra                        
/* 01094 809DFE94 00000000 */  nop


