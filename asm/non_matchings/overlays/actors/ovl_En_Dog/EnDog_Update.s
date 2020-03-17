glabel EnDog_Update
/* 00CF4 809FBCC4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00CF8 809FBCC8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00CFC 809FBCCC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00D00 809FBCD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D04 809FBCD4 0C27EC42 */  jal     func_809FB108              
/* 00D08 809FBCD8 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00D0C 809FBCDC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D10 809FBCE0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00D14 809FBCE4 860F01D6 */  lh      $t7, 0x01D6($s0)           ## 000001D6
/* 00D18 809FBCE8 860E01D4 */  lh      $t6, 0x01D4($s0)           ## 000001D4
/* 00D1C 809FBCEC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00D20 809FBCF0 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 00D24 809FBCF4 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00D28 809FBCF8 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00D2C 809FBCFC 46803220 */  cvt.s.w $f8, $f6                   
/* 00D30 809FBD00 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00D34 809FBD04 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00D38 809FBD08 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00D3C 809FBD0C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00D40 809FBD10 46802120 */  cvt.s.w $f4, $f4                   
/* 00D44 809FBD14 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00D48 809FBD18 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D4C 809FBD1C E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 00D50 809FBD20 44062000 */  mfc1    $a2, $f4                   
/* 00D54 809FBD24 44078000 */  mfc1    $a3, $f16                  
/* 00D58 809FBD28 0C00B92D */  jal     func_8002E4B4              
/* 00D5C 809FBD2C 00000000 */  nop
/* 00D60 809FBD30 0C00B638 */  jal     Actor_MoveForward
              
/* 00D64 809FBD34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D68 809FBD38 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 00D6C 809FBD3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D70 809FBD40 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00D74 809FBD44 0320F809 */  jalr    $ra, $t9                   
/* 00D78 809FBD48 00000000 */  nop
/* 00D7C 809FBD4C 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 00D80 809FBD50 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 00D84 809FBD54 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00D88 809FBD58 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00D8C 809FBD5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D90 809FBD60 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00D94 809FBD64 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D98 809FBD68 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00D9C 809FBD6C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00DA0 809FBD70 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00DA4 809FBD74 00812821 */  addu    $a1, $a0, $at              
/* 00DA8 809FBD78 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DAC 809FBD7C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00DB0 809FBD80 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00DB4 809FBD84 03E00008 */  jr      $ra                        
/* 00DB8 809FBD88 00000000 */  nop


