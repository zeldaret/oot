glabel EnMa3_Update
/* 00794 80AA3234 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00798 80AA3238 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 0079C 80AA323C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007A0 80AA3240 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 007A4 80AA3244 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 007A8 80AA3248 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 007AC 80AA324C 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 007B0 80AA3250 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 007B4 80AA3254 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 007B8 80AA3258 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 007BC 80AA325C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 007C0 80AA3260 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 007C4 80AA3264 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 007C8 80AA3268 02212821 */  addu    $a1, $s1, $at              
/* 007CC 80AA326C 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 007D0 80AA3270 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007D4 80AA3274 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 007D8 80AA3278 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 007DC 80AA327C 0C2A8BE0 */  jal     func_80AA2F80              
/* 007E0 80AA3280 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007E4 80AA3284 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 007E8 80AA3288 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007EC 80AA328C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 007F0 80AA3290 0320F809 */  jalr    $ra, $t9                   
/* 007F4 80AA3294 00000000 */  nop
/* 007F8 80AA3298 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007FC 80AA329C 0C2A8B95 */  jal     func_80AA2E54              
/* 00800 80AA32A0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00804 80AA32A4 860E01D4 */  lh      $t6, 0x01D4($s0)           ## 000001D4
/* 00808 80AA32A8 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 0080C 80AA32AC 44814000 */  mtc1    $at, $f8                   ## $f8 = 150.00
/* 00810 80AA32B0 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00814 80AA32B4 3C0F80AA */  lui     $t7, %hi(func_80AA2AA0)    ## $t7 = 80AA0000
/* 00818 80AA32B8 3C1880AA */  lui     $t8, %hi(func_80AA2BD4)    ## $t8 = 80AA0000
/* 0081C 80AA32BC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00820 80AA32C0 27182BD4 */  addiu   $t8, $t8, %lo(func_80AA2BD4) ## $t8 = 80AA2BD4
/* 00824 80AA32C4 25EF2AA0 */  addiu   $t7, $t7, %lo(func_80AA2AA0) ## $t7 = 80AA2AA0
/* 00828 80AA32C8 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 0082C 80AA32CC AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00830 80AA32D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00834 80AA32D4 46083280 */  add.s   $f10, $f6, $f8             
/* 00838 80AA32D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0083C 80AA32DC 260601E0 */  addiu   $a2, $s0, 0x01E0           ## $a2 = 000001E0
/* 00840 80AA32E0 44075000 */  mfc1    $a3, $f10                  
/* 00844 80AA32E4 0C00D0F3 */  jal     func_800343CC              
/* 00848 80AA32E8 00000000 */  nop
/* 0084C 80AA32EC 860801E0 */  lh      $t0, 0x01E0($s0)           ## 000001E0
/* 00850 80AA32F0 55000009 */  bnel    $t0, $zero, .L80AA3318     
/* 00854 80AA32F4 860A020A */  lh      $t2, 0x020A($s0)           ## 0000020A
/* 00858 80AA32F8 8609020A */  lh      $t1, 0x020A($s0)           ## 0000020A
/* 0085C 80AA32FC 5120000D */  beql    $t1, $zero, .L80AA3334     
/* 00860 80AA3300 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00864 80AA3304 0C03D961 */  jal     func_800F6584              
/* 00868 80AA3308 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0086C 80AA330C 10000008 */  beq     $zero, $zero, .L80AA3330   
/* 00870 80AA3310 A600020A */  sh      $zero, 0x020A($s0)         ## 0000020A
/* 00874 80AA3314 860A020A */  lh      $t2, 0x020A($s0)           ## 0000020A
.L80AA3318:
/* 00878 80AA3318 55400006 */  bnel    $t2, $zero, .L80AA3334     
/* 0087C 80AA331C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00880 80AA3320 0C03D961 */  jal     func_800F6584              
/* 00884 80AA3324 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00888 80AA3328 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0088C 80AA332C A60B020A */  sh      $t3, 0x020A($s0)           ## 0000020A
.L80AA3330:
/* 00890 80AA3330 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AA3334:
/* 00894 80AA3334 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00898 80AA3338 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0089C 80AA333C 03E00008 */  jr      $ra                        
/* 008A0 80AA3340 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
