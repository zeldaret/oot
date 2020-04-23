glabel EnMa2_Update
/* 008C8 80AA2268 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 008CC 80AA226C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 008D0 80AA2270 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 008D4 80AA2274 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 008D8 80AA2278 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 008DC 80AA227C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 008E0 80AA2280 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 008E4 80AA2284 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 008E8 80AA2288 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 008EC 80AA228C AFA6002C */  sw      $a2, 0x002C($sp)           
/* 008F0 80AA2290 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 008F4 80AA2294 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 008F8 80AA2298 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 008FC 80AA229C 02212821 */  addu    $a1, $s1, $at              
/* 00900 80AA22A0 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00904 80AA22A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00908 80AA22A8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0090C 80AA22AC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00910 80AA22B0 0C2A8730 */  jal     func_80AA1CC0              
/* 00914 80AA22B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00918 80AA22B8 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 0091C 80AA22BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00920 80AA22C0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00924 80AA22C4 0320F809 */  jalr    $ra, $t9                   
/* 00928 80AA22C8 00000000 */  nop
/* 0092C 80AA22CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00930 80AA22D0 0C2A876D */  jal     func_80AA1DB4              
/* 00934 80AA22D4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00938 80AA22D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0093C 80AA22DC 0C2A86B9 */  jal     func_80AA1AE4              
/* 00940 80AA22E0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00944 80AA22E4 8E0F0190 */  lw      $t7, 0x0190($s0)           ## 00000190
/* 00948 80AA22E8 3C0E80AA */  lui     $t6, %hi(func_80AA20E4)    ## $t6 = 80AA0000
/* 0094C 80AA22EC 25CE20E4 */  addiu   $t6, $t6, %lo(func_80AA20E4) ## $t6 = 80AA20E4
/* 00950 80AA22F0 51CF0014 */  beql    $t6, $t7, .L80AA2344       
/* 00954 80AA22F4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00958 80AA22F8 861801D4 */  lh      $t8, 0x01D4($s0)           ## 000001D4
/* 0095C 80AA22FC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00960 80AA2300 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 00964 80AA2304 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00968 80AA2308 3C0880AA */  lui     $t0, %hi(func_80AA19A0)    ## $t0 = 80AA0000
/* 0096C 80AA230C 3C0980AA */  lui     $t1, %hi(func_80AA1A38)    ## $t1 = 80AA0000
/* 00970 80AA2310 468021A0 */  cvt.s.w $f6, $f4                   
/* 00974 80AA2314 25291A38 */  addiu   $t1, $t1, %lo(func_80AA1A38) ## $t1 = 80AA1A38
/* 00978 80AA2318 250819A0 */  addiu   $t0, $t0, %lo(func_80AA19A0) ## $t0 = 80AA19A0
/* 0097C 80AA231C AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00980 80AA2320 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00984 80AA2324 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00988 80AA2328 46083280 */  add.s   $f10, $f6, $f8             
/* 0098C 80AA232C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00990 80AA2330 260601E0 */  addiu   $a2, $s0, 0x01E0           ## $a2 = 000001E0
/* 00994 80AA2334 44075000 */  mfc1    $a3, $f10                  
/* 00998 80AA2338 0C00D0F3 */  jal     func_800343CC              
/* 0099C 80AA233C 00000000 */  nop
/* 009A0 80AA2340 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AA2344:
/* 009A4 80AA2344 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 009A8 80AA2348 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 009AC 80AA234C 03E00008 */  jr      $ra                        
/* 009B0 80AA2350 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
