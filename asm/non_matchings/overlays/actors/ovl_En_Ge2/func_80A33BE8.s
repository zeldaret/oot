glabel func_80A33BE8
/* 01018 80A33BE8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0101C 80A33BEC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01020 80A33BF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01024 80A33BF4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01028 80A33BF8 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0102C 80A33BFC 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 01030 80A33C00 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 01034 80A33C04 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01038 80A33C08 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 0103C 80A33C0C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01040 80A33C10 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01044 80A33C14 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01048 80A33C18 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0104C 80A33C1C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01050 80A33C20 00812821 */  addu    $a1, $a0, $at              
/* 01054 80A33C24 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01058 80A33C28 44810000 */  mtc1    $at, $f0                   ## $f0 = 40.00
/* 0105C 80A33C2C 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 01060 80A33C30 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 01064 80A33C34 44060000 */  mfc1    $a2, $f0                   
/* 01068 80A33C38 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0106C 80A33C3C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01070 80A33C40 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 01074 80A33C44 0C00B92D */  jal     func_8002E4B4              
/* 01078 80A33C48 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0107C 80A33C4C 960F02F4 */  lhu     $t7, 0x02F4($s0)           ## 000002F4
/* 01080 80A33C50 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 01084 80A33C54 57000009 */  bnel    $t8, $zero, .L80A33C7C     
/* 01088 80A33C58 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0108C 80A33C5C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01090 80A33C60 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 01094 80A33C64 50400005 */  beql    $v0, $zero, .L80A33C7C     
/* 01098 80A33C68 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0109C 80A33C6C 961902F4 */  lhu     $t9, 0x02F4($s0)           ## 000002F4
/* 010A0 80A33C70 37280002 */  ori     $t0, $t9, 0x0002           ## $t0 = 00000002
/* 010A4 80A33C74 A60802F4 */  sh      $t0, 0x02F4($s0)           ## 000002F4
/* 010A8 80A33C78 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A33C7C:
/* 010AC 80A33C7C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 010B0 80A33C80 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 010B4 80A33C84 03E00008 */  jr      $ra                        
/* 010B8 80A33C88 00000000 */  nop
