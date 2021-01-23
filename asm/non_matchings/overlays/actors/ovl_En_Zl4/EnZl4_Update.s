glabel EnZl4_Update
/* 02B08 80B5E2B8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02B0C 80B5E2BC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02B10 80B5E2C0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02B14 80B5E2C4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 02B18 80B5E2C8 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 02B1C 80B5E2CC 3C0E80B6 */  lui     $t6, %hi(func_80B5E108)    ## $t6 = 80B60000
/* 02B20 80B5E2D0 25CEE108 */  addiu   $t6, $t6, %lo(func_80B5E108) ## $t6 = 80B5E108
/* 02B24 80B5E2D4 11CF0003 */  beq     $t6, $t7, .L80B5E2E4       
/* 02B28 80B5E2D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02B2C 80B5E2DC 0C02927F */  jal     SkelAnime_Update
              
/* 02B30 80B5E2E0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
.L80B5E2E4:
/* 02B34 80B5E2E4 0C2D6E7A */  jal     func_80B5B9E8              
/* 02B38 80B5E2E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B3C 80B5E2EC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02B40 80B5E2F0 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 02B44 80B5E2F4 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 02B48 80B5E2F8 44060000 */  mfc1    $a2, $f0                   
/* 02B4C 80B5E2FC 44070000 */  mfc1    $a3, $f0                   
/* 02B50 80B5E300 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 02B54 80B5E304 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02B58 80B5E308 0C00B92D */  jal     Actor_UpdateBgCheckInfo              
/* 02B5C 80B5E30C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 02B60 80B5E310 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 02B64 80B5E314 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B68 80B5E318 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 02B6C 80B5E31C 0320F809 */  jalr    $ra, $t9                   
/* 02B70 80B5E320 00000000 */  nop
/* 02B74 80B5E324 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 02B78 80B5E328 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 02B7C 80B5E32C AFA6002C */  sw      $a2, 0x002C($sp)           
/* 02B80 80B5E330 0C0189B7 */  jal     Collider_UpdateCylinder
              
/* 02B84 80B5E334 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B88 80B5E338 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 02B8C 80B5E33C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02B90 80B5E340 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02B94 80B5E344 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 02B98 80B5E348 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 02B9C 80B5E34C 00812821 */  addu    $a1, $a0, $at              
/* 02BA0 80B5E350 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02BA4 80B5E354 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02BA8 80B5E358 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02BAC 80B5E35C 03E00008 */  jr      $ra                        
/* 02BB0 80B5E360 00000000 */  nop
