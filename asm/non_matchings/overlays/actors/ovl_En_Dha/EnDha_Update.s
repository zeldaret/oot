glabel EnDha_Update
/* 00AEC 809ED36C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00AF0 809ED370 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00AF4 809ED374 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00AF8 809ED378 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00AFC 809ED37C 8C8E0118 */  lw      $t6, 0x0118($a0)           ## 00000118
/* 00B00 809ED380 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B04 809ED384 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00B08 809ED388 15C00009 */  bne     $t6, $zero, .L809ED3B0     
/* 00B0C 809ED38C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00B10 809ED390 3C01809F */  lui     $at, %hi(D_809ED788)       ## $at = 809F0000
/* 00B14 809ED394 C424D788 */  lwc1    $f4, %lo(D_809ED788)($at)  
/* 00B18 809ED398 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B1C 809ED39C 240600A4 */  addiu   $a2, $zero, 0x00A4         ## $a2 = 000000A4
/* 00B20 809ED3A0 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 00B24 809ED3A4 0C00D4FD */  jal     Actor_FindNearby
              
/* 00B28 809ED3A8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00B2C 809ED3AC AE020118 */  sw      $v0, 0x0118($s0)           ## 00000118
.L809ED3B0:
/* 00B30 809ED3B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B34 809ED3B4 0C27B49F */  jal     func_809ED27C              
/* 00B38 809ED3B8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00B3C 809ED3BC 8E1901C4 */  lw      $t9, 0x01C4($s0)           ## 000001C4
/* 00B40 809ED3C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B44 809ED3C4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00B48 809ED3C8 0320F809 */  jalr    $ra, $t9                   
/* 00B4C 809ED3CC 00000000 */  nop
/* 00B50 809ED3D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B54 809ED3D4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00B58 809ED3D8 02212821 */  addu    $a1, $s1, $at              
/* 00B5C 809ED3DC 26060200 */  addiu   $a2, $s0, 0x0200           ## $a2 = 00000200
/* 00B60 809ED3E0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00B64 809ED3E4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00B68 809ED3E8 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00B6C 809ED3EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B70 809ED3F0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00B74 809ED3F4 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00B78 809ED3F8 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00B7C 809ED3FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B80 809ED400 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B84 809ED404 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00B88 809ED408 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00B8C 809ED40C 03E00008 */  jr      $ra                        
/* 00B90 809ED410 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


