glabel EnHorseZelda_Update
/* 00630 80A6DF00 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00634 80A6DF04 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00638 80A6DF08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0063C 80A6DF0C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00640 80A6DF10 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00644 80A6DF14 8E0E014C */  lw      $t6, 0x014C($s0)           ## 0000014C
/* 00648 80A6DF18 3C1980A7 */  lui     $t9, %hi(D_80A6E2B4)       ## $t9 = 80A70000
/* 0064C 80A6DF1C 000E7880 */  sll     $t7, $t6,  2               
/* 00650 80A6DF20 032FC821 */  addu    $t9, $t9, $t7              
/* 00654 80A6DF24 8F39E2B4 */  lw      $t9, %lo(D_80A6E2B4)($t9)  
/* 00658 80A6DF28 0320F809 */  jalr    $ra, $t9                   
/* 0065C 80A6DF2C 00000000 */  nop
/* 00660 80A6DF30 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00664 80A6DF34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00668 80A6DF38 0C00B638 */  jal     Actor_MoveForward
              
/* 0066C 80A6DF3C E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00670 80A6DF40 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00674 80A6DF44 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00678 80A6DF48 2418001D */  addiu   $t8, $zero, 0x001D         ## $t8 = 0000001D
/* 0067C 80A6DF4C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00680 80A6DF50 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00684 80A6DF54 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00688 80A6DF58 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 0068C 80A6DF5C 3C07425C */  lui     $a3, 0x425C                ## $a3 = 425C0000
/* 00690 80A6DF60 0C00B92D */  jal     func_8002E4B4              
/* 00694 80A6DF64 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00698 80A6DF68 8E080028 */  lw      $t0, 0x0028($s0)           ## 00000028
/* 0069C 80A6DF6C 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 006A0 80A6DF70 8E090024 */  lw      $t1, 0x0024($s0)           ## 00000024
/* 006A4 80A6DF74 AE08003C */  sw      $t0, 0x003C($s0)           ## 0000003C
/* 006A8 80A6DF78 C608003C */  lwc1    $f8, 0x003C($s0)           ## 0000003C
/* 006AC 80A6DF7C 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 006B0 80A6DF80 AE090038 */  sw      $t1, 0x0038($s0)           ## 00000038
/* 006B4 80A6DF84 8E09002C */  lw      $t1, 0x002C($s0)           ## 0000002C
/* 006B8 80A6DF88 460A4400 */  add.s   $f16, $f8, $f10            
/* 006BC 80A6DF8C 260601FC */  addiu   $a2, $s0, 0x01FC           ## $a2 = 000001FC
/* 006C0 80A6DF90 AE090040 */  sw      $t1, 0x0040($s0)           ## 00000040
/* 006C4 80A6DF94 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001FC
/* 006C8 80A6DF98 E610003C */  swc1    $f16, 0x003C($s0)          ## 0000003C
/* 006CC 80A6DF9C AFA6002C */  sw      $a2, 0x002C($sp)           
/* 006D0 80A6DFA0 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 006D4 80A6DFA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006D8 80A6DFA8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 006DC 80A6DFAC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 006E0 80A6DFB0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 006E4 80A6DFB4 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 006E8 80A6DFB8 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 006EC 80A6DFBC 00812821 */  addu    $a1, $a0, $at              
/* 006F0 80A6DFC0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 006F4 80A6DFC4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 006F8 80A6DFC8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 006FC 80A6DFCC 03E00008 */  jr      $ra                        
/* 00700 80A6DFD0 00000000 */  nop
