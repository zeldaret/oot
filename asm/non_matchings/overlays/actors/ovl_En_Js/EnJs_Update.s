glabel EnJs_Update
/* 00528 80A89338 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0052C 80A8933C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00530 80A89340 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00534 80A89344 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00538 80A89348 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 0053C 80A8934C 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 00540 80A89350 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 00544 80A89354 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00548 80A89358 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 0054C 80A8935C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00550 80A89360 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00554 80A89364 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00558 80A89368 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 0055C 80A8936C 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00560 80A89370 00812821 */  addu    $a1, $a0, $at              
/* 00564 80A89374 0C00B638 */  jal     Actor_MoveForward
              
/* 00568 80A89378 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0056C 80A8937C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00570 80A89380 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00574 80A89384 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00578 80A89388 44060000 */  mfc1    $a2, $f0                   
/* 0057C 80A8938C 44070000 */  mfc1    $a3, $f0                   
/* 00580 80A89390 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00584 80A89394 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00588 80A89398 0C00B92D */  jal     func_8002E4B4              
/* 0058C 80A8939C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00590 80A893A0 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 00594 80A893A4 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00598 80A893A8 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 0059C 80A893AC 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 005A0 80A893B0 1300001F */  beq     $t8, $zero, .L80A89430     
/* 005A4 80A893B4 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 005A8 80A893B8 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 005AC 80A893BC 0C0107CD */  jal     func_80041F34              
/* 005B0 80A893C0 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 005B4 80A893C4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 005B8 80A893C8 14410028 */  bne     $v0, $at, .L80A8946C       
/* 005BC 80A893CC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 005C0 80A893D0 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 005C4 80A893D4 3C01C4FA */  lui     $at, 0xC4FA                ## $at = C4FA0000
/* 005C8 80A893D8 44814000 */  mtc1    $at, $f8                   ## $f8 = -2000.00
/* 005CC 80A893DC 84590CB4 */  lh      $t9, 0x0CB4($v0)           ## 80160CB4
/* 005D0 80A893E0 84480CB6 */  lh      $t0, 0x0CB6($v0)           ## 80160CB6
/* 005D4 80A893E4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 005D8 80A893E8 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 005DC 80A893EC 44888000 */  mtc1    $t0, $f16                  ## $f16 = 0.00
/* 005E0 80A893F0 260400BC */  addiu   $a0, $s0, 0x00BC           ## $a0 = 000000BC
/* 005E4 80A893F4 468021A0 */  cvt.s.w $f6, $f4                   
/* 005E8 80A893F8 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 005EC 80A893FC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 005F0 80A89400 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 005F4 80A89404 468084A0 */  cvt.s.w $f18, $f16                 
/* 005F8 80A89408 46083280 */  add.s   $f10, $f6, $f8             
/* 005FC 80A8940C 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 00600 80A89410 46049183 */  div.s   $f6, $f18, $f4             
/* 00604 80A89414 44055000 */  mfc1    $a1, $f10                  
/* 00608 80A89418 46083280 */  add.s   $f10, $f6, $f8             
/* 0060C 80A8941C 44075000 */  mfc1    $a3, $f10                  
/* 00610 80A89420 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00614 80A89424 00000000 */  nop
/* 00618 80A89428 10000010 */  beq     $zero, $zero, .L80A8946C   
/* 0061C 80A8942C 00000000 */  nop
.L80A89430:
/* 00620 80A89430 8D29FA90 */  lw      $t1, -0x0570($t1)          ## FFFFFA90
/* 00624 80A89434 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00628 80A89438 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 0062C 80A8943C 852A0CB6 */  lh      $t2, 0x0CB6($t1)           ## 00000CB6
/* 00630 80A89440 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00634 80A89444 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 00638 80A89448 448A8000 */  mtc1    $t2, $f16                  ## $f16 = 0.00
/* 0063C 80A8944C 260400BC */  addiu   $a0, $s0, 0x00BC           ## $a0 = 000000BC
/* 00640 80A89450 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00644 80A89454 468084A0 */  cvt.s.w $f18, $f16                 
/* 00648 80A89458 46049183 */  div.s   $f6, $f18, $f4             
/* 0064C 80A8945C 46083280 */  add.s   $f10, $f6, $f8             
/* 00650 80A89460 44065000 */  mfc1    $a2, $f10                  
/* 00654 80A89464 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00658 80A89468 00000000 */  nop
.L80A8946C:
/* 0065C 80A8946C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00660 80A89470 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 00664 80A89474 50400005 */  beql    $v0, $zero, .L80A8948C     
/* 00668 80A89478 8E19028C */  lw      $t9, 0x028C($s0)           ## 0000028C
/* 0066C 80A8947C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00670 80A89480 00000000 */  nop
/* 00674 80A89484 E61001B0 */  swc1    $f16, 0x01B0($s0)          ## 000001B0
/* 00678 80A89488 8E19028C */  lw      $t9, 0x028C($s0)           ## 0000028C
.L80A8948C:
/* 0067C 80A8948C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00680 80A89490 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00684 80A89494 0320F809 */  jalr    $ra, $t9                   
/* 00688 80A89498 00000000 */  nop
/* 0068C 80A8949C 960B0284 */  lhu     $t3, 0x0284($s0)           ## 00000284
/* 00690 80A894A0 26040278 */  addiu   $a0, $s0, 0x0278           ## $a0 = 00000278
/* 00694 80A894A4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00698 80A894A8 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 0069C 80A894AC 1180000E */  beq     $t4, $zero, .L80A894E8     
/* 006A0 80A894B0 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 006A4 80A894B4 8E0E0038 */  lw      $t6, 0x0038($s0)           ## 00000038
/* 006A8 80A894B8 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 006AC 80A894BC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 006B0 80A894C0 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 006B4 80A894C4 8E0D003C */  lw      $t5, 0x003C($s0)           ## 0000003C
/* 006B8 80A894C8 26060278 */  addiu   $a2, $s0, 0x0278           ## $a2 = 00000278
/* 006BC 80A894CC 2607027E */  addiu   $a3, $s0, 0x027E           ## $a3 = 0000027E
/* 006C0 80A894D0 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 006C4 80A894D4 8E0E0040 */  lw      $t6, 0x0040($s0)           ## 00000040
/* 006C8 80A894D8 0C00E0A4 */  jal     func_80038290              
/* 006CC 80A894DC AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 006D0 80A894E0 1000001B */  beq     $zero, $zero, .L80A89550   
/* 006D4 80A894E4 960A0284 */  lhu     $t2, 0x0284($s0)           ## 00000284
.L80A894E8:
/* 006D8 80A894E8 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 006DC 80A894EC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 006E0 80A894F0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 006E4 80A894F4 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 006E8 80A894F8 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 006EC 80A894FC AFB80010 */  sw      $t8, 0x0010($sp)           
/* 006F0 80A89500 2604027A */  addiu   $a0, $s0, 0x027A           ## $a0 = 0000027A
/* 006F4 80A89504 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 006F8 80A89508 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 006FC 80A8950C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00700 80A89510 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00704 80A89514 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 00708 80A89518 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 0070C 80A8951C 2604027E */  addiu   $a0, $s0, 0x027E           ## $a0 = 0000027E
/* 00710 80A89520 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00714 80A89524 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00718 80A89528 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0071C 80A8952C 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00720 80A89530 24090064 */  addiu   $t1, $zero, 0x0064         ## $t1 = 00000064
/* 00724 80A89534 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00728 80A89538 26040280 */  addiu   $a0, $s0, 0x0280           ## $a0 = 00000280
/* 0072C 80A8953C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00730 80A89540 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00734 80A89544 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00738 80A89548 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 0073C 80A8954C 960A0284 */  lhu     $t2, 0x0284($s0)           ## 00000284
.L80A89550:
/* 00740 80A89550 86030288 */  lh      $v1, 0x0288($s0)           ## 00000288
/* 00744 80A89554 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 00748 80A89558 3159FFFE */  andi    $t9, $t2, 0xFFFE           ## $t9 = 00000000
/* 0074C 80A8955C 14600003 */  bne     $v1, $zero, .L80A8956C     
/* 00750 80A89560 A6190284 */  sh      $t9, 0x0284($s0)           ## 00000284
/* 00754 80A89564 10000005 */  beq     $zero, $zero, .L80A8957C   
/* 00758 80A89568 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A8956C:
/* 0075C 80A8956C 246BFFFF */  addiu   $t3, $v1, 0xFFFF           ## $t3 = FFFFFFFF
/* 00760 80A89570 A60B0288 */  sh      $t3, 0x0288($s0)           ## 00000288
/* 00764 80A89574 86030288 */  lh      $v1, 0x0288($s0)           ## 00000288
/* 00768 80A89578 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A8957C:
/* 0076C 80A8957C 54400006 */  bnel    $v0, $zero, .L80A89598     
/* 00770 80A89580 A6030286 */  sh      $v1, 0x0286($s0)           ## 00000286
/* 00774 80A89584 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00778 80A89588 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 0077C 80A8958C A6020288 */  sh      $v0, 0x0288($s0)           ## 00000288
/* 00780 80A89590 86030288 */  lh      $v1, 0x0288($s0)           ## 00000288
/* 00784 80A89594 A6030286 */  sh      $v1, 0x0286($s0)           ## 00000286
.L80A89598:
/* 00788 80A89598 860C0286 */  lh      $t4, 0x0286($s0)           ## 00000286
/* 0078C 80A8959C 29810003 */  slti    $at, $t4, 0x0003           
/* 00790 80A895A0 54200003 */  bnel    $at, $zero, .L80A895B0     
/* 00794 80A895A4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00798 80A895A8 A6000286 */  sh      $zero, 0x0286($s0)         ## 00000286
/* 0079C 80A895AC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A895B0:
/* 007A0 80A895B0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 007A4 80A895B4 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 007A8 80A895B8 03E00008 */  jr      $ra                        
/* 007AC 80A895BC 00000000 */  nop
