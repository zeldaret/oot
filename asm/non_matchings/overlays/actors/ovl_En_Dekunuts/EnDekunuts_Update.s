glabel EnDekunuts_Update
/* 012CC 809EA82C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 012D0 809EA830 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 012D4 809EA834 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 012D8 809EA838 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 012DC 809EA83C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 012E0 809EA840 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 012E4 809EA844 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 012E8 809EA848 11C1004B */  beq     $t6, $at, .L809EA978       
/* 012EC 809EA84C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 012F0 809EA850 0C27A9C3 */  jal     func_809EA70C              
/* 012F4 809EA854 00000000 */  nop
/* 012F8 809EA858 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 012FC 809EA85C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01300 809EA860 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01304 809EA864 0320F809 */  jalr    $ra, $t9                   
/* 01308 809EA868 00000000 */  nop
/* 0130C 809EA86C 0C00B638 */  jal     Actor_MoveForward
              
/* 01310 809EA870 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01314 809EA874 860F0308 */  lh      $t7, 0x0308($s0)           ## 00000308
/* 01318 809EA878 8618030A */  lh      $t8, 0x030A($s0)           ## 0000030A
/* 0131C 809EA87C 2408001D */  addiu   $t0, $zero, 0x001D         ## $t0 = 0000001D
/* 01320 809EA880 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 01324 809EA884 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 01328 809EA888 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 0132C 809EA88C 46802120 */  cvt.s.w $f4, $f4                   
/* 01330 809EA890 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01334 809EA894 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01338 809EA898 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 0133C 809EA89C 46803220 */  cvt.s.w $f8, $f6                   
/* 01340 809EA8A0 44072000 */  mfc1    $a3, $f4                   
/* 01344 809EA8A4 0C00B92D */  jal     func_8002E4B4              
/* 01348 809EA8A8 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 0134C 809EA8AC 260502C8 */  addiu   $a1, $s0, 0x02C8           ## $a1 = 000002C8
/* 01350 809EA8B0 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 01354 809EA8B4 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 01358 809EA8B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0135C 809EA8BC 920902D9 */  lbu     $t1, 0x02D9($s0)           ## 000002D9
/* 01360 809EA8C0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01364 809EA8C4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01368 809EA8C8 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 0136C 809EA8CC 11400004 */  beq     $t2, $zero, .L809EA8E0     
/* 01370 809EA8D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01374 809EA8D4 02212821 */  addu    $a1, $s1, $at              
/* 01378 809EA8D8 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 0137C 809EA8DC 8FA60028 */  lw      $a2, 0x0028($sp)           
.L809EA8E0:
/* 01380 809EA8E0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01384 809EA8E4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01388 809EA8E8 02212821 */  addu    $a1, $s1, $at              
/* 0138C 809EA8EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01390 809EA8F0 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01394 809EA8F4 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 01398 809EA8F8 8E030190 */  lw      $v1, 0x0190($s0)           ## 00000190
/* 0139C 809EA8FC 3C0B809F */  lui     $t3, %hi(func_809E9B98)    ## $t3 = 809F0000
/* 013A0 809EA900 256B9B98 */  addiu   $t3, $t3, %lo(func_809E9B98) ## $t3 = 809E9B98
/* 013A4 809EA904 15630006 */  bne     $t3, $v1, .L809EA920       
/* 013A8 809EA908 3C0C809F */  lui     $t4, %hi(func_809EA0C4)    ## $t4 = 809F0000
/* 013AC 809EA90C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013B0 809EA910 0C00B56E */  jal     Actor_SetHeight
              
/* 013B4 809EA914 8E050164 */  lw      $a1, 0x0164($s0)           ## 00000164
/* 013B8 809EA918 10000018 */  beq     $zero, $zero, .L809EA97C   
/* 013BC 809EA91C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EA920:
/* 013C0 809EA920 258CA0C4 */  addiu   $t4, $t4, %lo(func_809EA0C4) ## $t4 = FFFFA0C4
/* 013C4 809EA924 15830012 */  bne     $t4, $v1, .L809EA970       
/* 013C8 809EA928 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013CC 809EA92C 3C040600 */  lui     $a0, %hi(D_060004D8)                ## $a0 = 06000000
/* 013D0 809EA930 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 013D4 809EA934 248404D8 */  addiu   $a0, $a0, %lo(D_060004D8)           ## $a0 = 060004D8
/* 013D8 809EA938 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 013DC 809EA93C 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 013E0 809EA940 C60A0164 */  lwc1    $f10, 0x0164($s0)          ## 00000164
/* 013E4 809EA944 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 013E8 809EA948 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013EC 809EA94C 46005402 */  mul.s   $f16, $f10, $f0            
/* 013F0 809EA950 46809120 */  cvt.s.w $f4, $f18                  
/* 013F4 809EA954 46048183 */  div.s   $f6, $f16, $f4             
/* 013F8 809EA958 46060201 */  sub.s   $f8, $f0, $f6              
/* 013FC 809EA95C 44054000 */  mfc1    $a1, $f8                   
/* 01400 809EA960 0C00B56E */  jal     Actor_SetHeight
              
/* 01404 809EA964 00000000 */  nop
/* 01408 809EA968 10000004 */  beq     $zero, $zero, .L809EA97C   
/* 0140C 809EA96C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EA970:
/* 01410 809EA970 0C00B56E */  jal     Actor_SetHeight
              
/* 01414 809EA974 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
.L809EA978:
/* 01418 809EA978 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EA97C:
/* 0141C 809EA97C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01420 809EA980 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01424 809EA984 03E00008 */  jr      $ra                        
/* 01428 809EA988 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
