glabel EnPoDesert_Update
/* 00760 80AD3410 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00764 80AD3414 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00768 80AD3418 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0076C 80AD341C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00770 80AD3420 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00774 80AD3424 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00778 80AD3428 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0077C 80AD342C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00780 80AD3430 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 00784 80AD3434 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00788 80AD3438 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0078C 80AD343C 0320F809 */  jalr    $ra, $t9                   
/* 00790 80AD3440 00000000 */  nop
/* 00794 80AD3444 0C00B638 */  jal     Actor_MoveForward
              
/* 00798 80AD3448 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0079C 80AD344C 0C2B4C17 */  jal     func_80AD305C              
/* 007A0 80AD3450 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007A4 80AD3454 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 007A8 80AD3458 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 007AC 80AD345C 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 007B0 80AD3460 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 007B4 80AD3464 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007B8 80AD3468 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 007BC 80AD346C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 007C0 80AD3470 3C0741D8 */  lui     $a3, 0x41D8                ## $a3 = 41D80000
/* 007C4 80AD3474 0C00B92D */  jal     func_8002E4B4              
/* 007C8 80AD3478 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 007CC 80AD347C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007D0 80AD3480 0C00B56E */  jal     Actor_SetHeight
              
/* 007D4 80AD3484 3C054228 */  lui     $a1, 0x4228                ## $a1 = 42280000
/* 007D8 80AD3488 26060238 */  addiu   $a2, $s0, 0x0238           ## $a2 = 00000238
/* 007DC 80AD348C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000238
/* 007E0 80AD3490 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 007E4 80AD3494 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 007E8 80AD3498 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007EC 80AD349C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 007F0 80AD34A0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 007F4 80AD34A4 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 007F8 80AD34A8 02212821 */  addu    $a1, $s1, $at              
/* 007FC 80AD34AC 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00800 80AD34B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00804 80AD34B4 922F1C27 */  lbu     $t7, 0x1C27($s1)           ## 00001C27
/* 00808 80AD34B8 3C098003 */  lui     $t1, %hi(ActorShadow_DrawFunc_Circle)
/* 0080C 80AD34BC 51E00008 */  beql    $t7, $zero, .L80AD34E0     
/* 00810 80AD34C0 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 00814 80AD34C4 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 00818 80AD34C8 2529B5EC */  addiu   $t1, %lo(ActorShadow_DrawFunc_Circle)
/* 0081C 80AD34CC AE0900C0 */  sw      $t1, 0x00C0($s0)           ## 000000C0
/* 00820 80AD34D0 37080081 */  ori     $t0, $t8, 0x0081           ## $t0 = 00000081
/* 00824 80AD34D4 10000006 */  beq     $zero, $zero, .L80AD34F0   
/* 00828 80AD34D8 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 0082C 80AD34DC 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
.L80AD34E0:
/* 00830 80AD34E0 2401FF7E */  addiu   $at, $zero, 0xFF7E         ## $at = FFFFFF7E
/* 00834 80AD34E4 AE0000C0 */  sw      $zero, 0x00C0($s0)         ## 000000C0
/* 00838 80AD34E8 01415824 */  and     $t3, $t2, $at              
/* 0083C 80AD34EC AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
.L80AD34F0:
/* 00840 80AD34F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00844 80AD34F4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00848 80AD34F8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0084C 80AD34FC 03E00008 */  jr      $ra                        
/* 00850 80AD3500 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
