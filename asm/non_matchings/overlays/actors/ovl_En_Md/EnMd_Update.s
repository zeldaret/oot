glabel EnMd_Update
/* 01BE4 80AABE34 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01BE8 80AABE38 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01BEC 80AABE3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01BF0 80AABE40 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01BF4 80AABE44 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01BF8 80AABE48 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01BFC 80AABE4C 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 01C00 80AABE50 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 01C04 80AABE54 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01C08 80AABE58 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 01C0C 80AABE5C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01C10 80AABE60 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01C14 80AABE64 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01C18 80AABE68 02212821 */  addu    $a1, $s1, $at              
/* 01C1C 80AABE6C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01C20 80AABE70 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01C24 80AABE74 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01C28 80AABE78 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01C2C 80AABE7C 0C2AAC38 */  jal     func_80AAB0E0              
/* 01C30 80AABE80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C34 80AABE84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C38 80AABE88 0C2AAD69 */  jal     func_80AAB5A4              
/* 01C3C 80AABE8C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01C40 80AABE90 0C00B638 */  jal     Actor_MoveForward
              
/* 01C44 80AABE94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C48 80AABE98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C4C 80AABE9C 0C2AAC56 */  jal     func_80AAB158              
/* 01C50 80AABEA0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01C54 80AABEA4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01C58 80AABEA8 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 01C5C 80AABEAC AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 01C60 80AABEB0 44060000 */  mfc1    $a2, $f0                   
/* 01C64 80AABEB4 44070000 */  mfc1    $a3, $f0                   
/* 01C68 80AABEB8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01C6C 80AABEBC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01C70 80AABEC0 0C00B92D */  jal     func_8002E4B4              
/* 01C74 80AABEC4 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 01C78 80AABEC8 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 01C7C 80AABECC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C80 80AABED0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01C84 80AABED4 0320F809 */  jalr    $ra, $t9                   
/* 01C88 80AABED8 00000000 */  nop
/* 01C8C 80AABEDC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01C90 80AABEE0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01C94 80AABEE4 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01C98 80AABEE8 03E00008 */  jr      $ra                        
/* 01C9C 80AABEEC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


