glabel EnTuboTrap_Update
/* 00B04 80B263F4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00B08 80B263F8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00B0C 80B263FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B10 80B26400 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B14 80B26404 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00B18 80B26408 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00B1C 80B2640C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00B20 80B26410 0320F809 */  jalr    $ra, $t9                   
/* 00B24 80B26414 00000000 */  nop
/* 00B28 80B26418 0C00B638 */  jal     Actor_MoveForward              
/* 00B2C 80B2641C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B30 80B26420 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00B34 80B26424 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 00B38 80B26428 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00B3C 80B2642C 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00B40 80B26430 240E001D */  addiu   $t6, $zero, 0x001D         ## $t6 = 0000001D
/* 00B44 80B26434 44060000 */  mfc1    $a2, $f0                   
/* 00B48 80B26438 44070000 */  mfc1    $a3, $f0                   
/* 00B4C 80B2643C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00B50 80B26440 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B54 80B26444 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B58 80B26448 0C00B92D */  jal     func_8002E4B4              
/* 00B5C 80B2644C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00B60 80B26450 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B64 80B26454 0C00B56E */  jal     Actor_SetHeight              
/* 00B68 80B26458 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00B6C 80B2645C 26050160 */  addiu   $a1, $s0, 0x0160           ## $a1 = 00000160
/* 00B70 80B26460 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00B74 80B26464 0C0189B7 */  jal     ActorCollider_Cylinder_Update              
/* 00B78 80B26468 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B7C 80B2646C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B80 80B26470 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00B84 80B26474 02212821 */  addu    $a1, $s1, $at              
/* 00B88 80B26478 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00B8C 80B2647C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B90 80B26480 0C01767D */  jal     Actor_CollisionCheck_SetAC              ## CollisionCheck_setAC
/* 00B94 80B26484 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00B98 80B26488 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00B9C 80B2648C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00BA0 80B26490 0C0175E7 */  jal     Actor_CollisionCheck_SetAT              ## CollisionCheck_setAT
/* 00BA4 80B26494 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00BA8 80B26498 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BAC 80B2649C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00BB0 80B264A0 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00BB4 80B264A4 03E00008 */  jr      $ra                        
/* 00BB8 80B264A8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
