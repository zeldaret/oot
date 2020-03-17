glabel EnMa1_Update
/* 00B44 80AA11D4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00B48 80AA11D8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00B4C 80AA11DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B50 80AA11E0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00B54 80AA11E4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00B58 80AA11E8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B5C 80AA11EC 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 00B60 80AA11F0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 00B64 80AA11F4 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00B68 80AA11F8 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00B6C 80AA11FC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B70 80AA1200 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00B74 80AA1204 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00B78 80AA1208 02212821 */  addu    $a1, $s1, $at              
/* 00B7C 80AA120C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00B80 80AA1210 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B84 80AA1214 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00B88 80AA1218 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00B8C 80AA121C 0C2A8283 */  jal     func_80AA0A0C              
/* 00B90 80AA1220 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B94 80AA1224 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 00B98 80AA1228 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B9C 80AA122C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00BA0 80AA1230 0320F809 */  jalr    $ra, $t9                   
/* 00BA4 80AA1234 00000000 */  nop
/* 00BA8 80AA1238 8E0F0190 */  lw      $t7, 0x0190($s0)           ## 00000190
/* 00BAC 80AA123C 3C0E80AA */  lui     $t6, %hi(func_80AA11C8)    ## $t6 = 80AA0000
/* 00BB0 80AA1240 25CE11C8 */  addiu   $t6, $t6, %lo(func_80AA11C8) ## $t6 = 80AA11C8
/* 00BB4 80AA1244 11CF0013 */  beq     $t6, $t7, .L80AA1294       
/* 00BB8 80AA1248 00000000 */  nop
/* 00BBC 80AA124C 861801D4 */  lh      $t8, 0x01D4($s0)           ## 000001D4
/* 00BC0 80AA1250 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00BC4 80AA1254 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 00BC8 80AA1258 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00BCC 80AA125C 3C0880AA */  lui     $t0, %hi(func_80AA0690)    ## $t0 = 80AA0000
/* 00BD0 80AA1260 3C0980AA */  lui     $t1, %hi(func_80AA0778)    ## $t1 = 80AA0000
/* 00BD4 80AA1264 468021A0 */  cvt.s.w $f6, $f4                   
/* 00BD8 80AA1268 25290778 */  addiu   $t1, $t1, %lo(func_80AA0778) ## $t1 = 80AA0778
/* 00BDC 80AA126C 25080690 */  addiu   $t0, $t0, %lo(func_80AA0690) ## $t0 = 80AA0690
/* 00BE0 80AA1270 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00BE4 80AA1274 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00BE8 80AA1278 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00BEC 80AA127C 46083280 */  add.s   $f10, $f6, $f8             
/* 00BF0 80AA1280 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BF4 80AA1284 260601E8 */  addiu   $a2, $s0, 0x01E8           ## $a2 = 000001E8
/* 00BF8 80AA1288 44075000 */  mfc1    $a3, $f10                  
/* 00BFC 80AA128C 0C00D0F3 */  jal     func_800343CC              
/* 00C00 80AA1290 00000000 */  nop
.L80AA1294:
/* 00C04 80AA1294 0C2A82DD */  jal     func_80AA0B74              
/* 00C08 80AA1298 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C0C 80AA129C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C10 80AA12A0 0C2A82BD */  jal     func_80AA0AF4              
/* 00C14 80AA12A4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C18 80AA12A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C1C 80AA12AC 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00C20 80AA12B0 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00C24 80AA12B4 03E00008 */  jr      $ra                        
/* 00C28 80AA12B8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


