glabel EnZl1_Update
/* 016E0 80B4C220 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 016E4 80B4C224 3C0E80B5 */  lui     $t6, %hi(func_80B4B8B4)    ## $t6 = 80B50000
/* 016E8 80B4C228 25CEB8B4 */  addiu   $t6, $t6, %lo(func_80B4B8B4) ## $t6 = 80B4B8B4
/* 016EC 80B4C22C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 016F0 80B4C230 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 016F4 80B4C234 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 016F8 80B4C238 AFAE002C */  sw      $t6, 0x002C($sp)           
/* 016FC 80B4C23C 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 01700 80B4C240 3C0F80B5 */  lui     $t7, %hi(func_80B4BC78)    ## $t7 = 80B50000
/* 01704 80B4C244 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01708 80B4C248 11C20005 */  beq     $t6, $v0, .L80B4C260       
/* 0170C 80B4C24C 25EFBC78 */  addiu   $t7, $t7, %lo(func_80B4BC78) ## $t7 = 80B4BC78
/* 01710 80B4C250 51E20004 */  beql    $t7, $v0, .L80B4C264       
/* 01714 80B4C254 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01718 80B4C258 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0171C 80B4C25C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
.L80B4C260:
/* 01720 80B4C260 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80B4C264:
/* 01724 80B4C264 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 01728 80B4C268 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 0172C 80B4C26C 44060000 */  mfc1    $a2, $f0                   
/* 01730 80B4C270 44070000 */  mfc1    $a3, $f0                   
/* 01734 80B4C274 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01738 80B4C278 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0173C 80B4C27C 0C00B92D */  jal     func_8002E4B4              
/* 01740 80B4C280 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 01744 80B4C284 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 01748 80B4C288 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0174C 80B4C28C 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 01750 80B4C290 0320F809 */  jalr    $ra, $t9                   
/* 01754 80B4C294 00000000 */  nop
/* 01758 80B4C298 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 0175C 80B4C29C 8E090190 */  lw      $t1, 0x0190($s0)           ## 00000190
/* 01760 80B4C2A0 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 01764 80B4C2A4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 01768 80B4C2A8 11090009 */  beq     $t0, $t1, .L80B4C2D0       
/* 0176C 80B4C2AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01770 80B4C2B0 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01774 80B4C2B4 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 01778 80B4C2B8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0177C 80B4C2BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01780 80B4C2C0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01784 80B4C2C4 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01788 80B4C2C8 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 0178C 80B4C2CC 00812821 */  addu    $a1, $a0, $at              
.L80B4C2D0:
/* 01790 80B4C2D0 86050030 */  lh      $a1, 0x0030($s0)           ## 00000030
/* 01794 80B4C2D4 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01798 80B4C2D8 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 0179C 80B4C2DC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 017A0 80B4C2E0 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 017A4 80B4C2E4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 017A8 80B4C2E8 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 017AC 80B4C2EC 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 017B0 80B4C2F0 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 017B4 80B4C2F4 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 017B8 80B4C2F8 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 017BC 80B4C2FC 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 017C0 80B4C300 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 017C4 80B4C304 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 017C8 80B4C308 86050034 */  lh      $a1, 0x0034($s0)           ## 00000034
/* 017CC 80B4C30C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 017D0 80B4C310 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 017D4 80B4C314 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 017D8 80B4C318 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 017DC 80B4C31C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 017E0 80B4C320 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 017E4 80B4C324 0C2D2B86 */  jal     func_80B4AE18              
/* 017E8 80B4C328 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017EC 80B4C32C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 017F0 80B4C330 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 017F4 80B4C334 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 017F8 80B4C338 03E00008 */  jr      $ra                        
/* 017FC 80B4C33C 00000000 */  nop
