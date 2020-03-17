glabel BgSpot11Bakudankabe_Init
/* 003AC 808B252C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 003B0 808B2530 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 003B4 808B2534 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 003B8 808B2538 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 003BC 808B253C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003C0 808B2540 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 003C4 808B2544 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 003C8 808B2548 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 003CC 808B254C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 003D0 808B2550 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 003D4 808B2554 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 003D8 808B2558 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 003DC 808B255C 10400005 */  beq     $v0, $zero, .L808B2574     
/* 003E0 808B2560 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003E4 808B2564 0C00B55C */  jal     Actor_Kill
              
/* 003E8 808B2568 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003EC 808B256C 10000015 */  beq     $zero, $zero, .L808B25C4   
/* 003F0 808B2570 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B2574:
/* 003F4 808B2574 0C22C860 */  jal     func_808B2180              
/* 003F8 808B2578 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 003FC 808B257C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00400 808B2580 24841A58 */  addiu   $a0, $a0, 0x1A58           ## $a0 = 06001A58
/* 00404 808B2584 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00408 808B2588 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 0040C 808B258C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00410 808B2590 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00414 808B2594 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00418 808B2598 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0041C 808B259C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00420 808B25A0 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00424 808B25A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00428 808B25A8 0C00B58B */  jal     Actor_SetScale
              
/* 0042C 808B25AC 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00430 808B25B0 3C04808B */  lui     $a0, %hi(D_808B2750)       ## $a0 = 808B0000
/* 00434 808B25B4 24842750 */  addiu   $a0, $a0, %lo(D_808B2750)  ## $a0 = 808B2750
/* 00438 808B25B8 0C00084C */  jal     osSyncPrintf
              
/* 0043C 808B25BC 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00440 808B25C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B25C4:
/* 00444 808B25C4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00448 808B25C8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0044C 808B25CC 03E00008 */  jr      $ra                        
/* 00450 808B25D0 00000000 */  nop


