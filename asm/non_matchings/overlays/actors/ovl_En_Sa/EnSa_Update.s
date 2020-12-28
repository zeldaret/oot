glabel EnSa_Update
/* 01680 80AF6BE0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01684 80AF6BE4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01688 80AF6BE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0168C 80AF6BEC AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01690 80AF6BF0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01694 80AF6BF4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01698 80AF6BF8 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 0169C 80AF6BFC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 016A0 80AF6C00 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 016A4 80AF6C04 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 016A8 80AF6C08 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 016AC 80AF6C0C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 016B0 80AF6C10 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 016B4 80AF6C14 02212821 */  addu    $a1, $s1, $at              
/* 016B8 80AF6C18 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 016BC 80AF6C1C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 016C0 80AF6C20 0C02927F */  jal     SkelAnime_Update
              
/* 016C4 80AF6C24 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 016C8 80AF6C28 8E0E0154 */  lw      $t6, 0x0154($s0)           ## 00000154
/* 016CC 80AF6C2C 3C040600 */  lui     $a0, %hi(D_06001D50)                ## $a0 = 06000000
/* 016D0 80AF6C30 24841D50 */  addiu   $a0, $a0, %lo(D_06001D50)           ## $a0 = 06001D50
/* 016D4 80AF6C34 548E000E */  bnel    $a0, $t6, .L80AF6C70       
/* 016D8 80AF6C38 8E0F0190 */  lw      $t7, 0x0190($s0)           ## 00000190
/* 016DC 80AF6C3C 0C028800 */  jal     Animation_GetLastFrame
              
/* 016E0 80AF6C40 00000000 */  nop
/* 016E4 80AF6C44 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 016E8 80AF6C48 C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
/* 016EC 80AF6C4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016F0 80AF6C50 46803220 */  cvt.s.w $f8, $f6                   
/* 016F4 80AF6C54 4604403E */  c.le.s  $f8, $f4                   
/* 016F8 80AF6C58 00000000 */  nop
/* 016FC 80AF6C5C 45020004 */  bc1fl   .L80AF6C70                 
/* 01700 80AF6C60 8E0F0190 */  lw      $t7, 0x0190($s0)           ## 00000190
/* 01704 80AF6C64 0C2BD763 */  jal     func_80AF5D8C              
/* 01708 80AF6C68 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 0170C 80AF6C6C 8E0F0190 */  lw      $t7, 0x0190($s0)           ## 00000190
.L80AF6C70:
/* 01710 80AF6C70 3C0380AF */  lui     $v1, %hi(func_80AF68E4)    ## $v1 = 80AF0000
/* 01714 80AF6C74 246368E4 */  addiu   $v1, $v1, %lo(func_80AF68E4) ## $v1 = 80AF68E4
/* 01718 80AF6C78 106F000A */  beq     $v1, $t7, .L80AF6CA4       
/* 0171C 80AF6C7C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01720 80AF6C80 86060218 */  lh      $a2, 0x0218($s0)           ## 00000218
/* 01724 80AF6C84 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 01728 80AF6C88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0172C 80AF6C8C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01730 80AF6C90 0C00D375 */  jal     func_80034DD4              
/* 01734 80AF6C94 3C0743C8 */  lui     $a3, 0x43C8                ## $a3 = 43C80000
/* 01738 80AF6C98 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 0173C 80AF6C9C 10000002 */  beq     $zero, $zero, .L80AF6CA8   
/* 01740 80AF6CA0 A6020218 */  sh      $v0, 0x0218($s0)           ## 00000218
.L80AF6CA4:
/* 01744 80AF6CA4 A6180218 */  sh      $t8, 0x0218($s0)           ## 00000218
.L80AF6CA8:
/* 01748 80AF6CA8 8E080190 */  lw      $t0, 0x0190($s0)           ## 00000190
/* 0174C 80AF6CAC 86190218 */  lh      $t9, 0x0218($s0)           ## 00000218
/* 01750 80AF6CB0 1468000E */  bne     $v1, $t0, .L80AF6CEC       
/* 01754 80AF6CB4 A21900C8 */  sb      $t9, 0x00C8($s0)           ## 000000C8
/* 01758 80AF6CB8 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 0175C 80AF6CBC C610005C */  lwc1    $f16, 0x005C($s0)          ## 0000005C
/* 01760 80AF6CC0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 01764 80AF6CC4 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 01768 80AF6CC8 46105480 */  add.s   $f18, $f10, $f16           
/* 0176C 80AF6CCC C6100064 */  lwc1    $f16, 0x0064($s0)          ## 00000064
/* 01770 80AF6CD0 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01774 80AF6CD4 46043200 */  add.s   $f8, $f6, $f4              
/* 01778 80AF6CD8 E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
/* 0177C 80AF6CDC 46105480 */  add.s   $f18, $f10, $f16           
/* 01780 80AF6CE0 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 01784 80AF6CE4 10000003 */  beq     $zero, $zero, .L80AF6CF4   
/* 01788 80AF6CE8 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
.L80AF6CEC:
/* 0178C 80AF6CEC 0C00B5FB */  jal     func_8002D7EC              
/* 01790 80AF6CF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AF6CF4:
/* 01794 80AF6CF4 862900A4 */  lh      $t1, 0x00A4($s1)           ## 000000A4
/* 01798 80AF6CF8 24010056 */  addiu   $at, $zero, 0x0056         ## $at = 00000056
/* 0179C 80AF6CFC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 017A0 80AF6D00 11210008 */  beq     $t1, $at, .L80AF6D24       
/* 017A4 80AF6D04 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 017A8 80AF6D08 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 017AC 80AF6D0C 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 017B0 80AF6D10 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 017B4 80AF6D14 44060000 */  mfc1    $a2, $f0                   
/* 017B8 80AF6D18 44070000 */  mfc1    $a3, $f0                   
/* 017BC 80AF6D1C 0C00B92D */  jal     func_8002E4B4              
/* 017C0 80AF6D20 E7A00010 */  swc1    $f0, 0x0010($sp)           
.L80AF6D24:
/* 017C4 80AF6D24 0C2BD827 */  jal     func_80AF609C              
/* 017C8 80AF6D28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017CC 80AF6D2C 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 017D0 80AF6D30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017D4 80AF6D34 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 017D8 80AF6D38 0320F809 */  jalr    $ra, $t9                   
/* 017DC 80AF6D3C 00000000 */  nop
/* 017E0 80AF6D40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017E4 80AF6D44 0C2BD5F6 */  jal     func_80AF57D8              
/* 017E8 80AF6D48 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 017EC 80AF6D4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017F0 80AF6D50 0C2BD7CD */  jal     func_80AF5F34              
/* 017F4 80AF6D54 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 017F8 80AF6D58 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 017FC 80AF6D5C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01800 80AF6D60 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01804 80AF6D64 03E00008 */  jr      $ra                        
/* 01808 80AF6D68 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
