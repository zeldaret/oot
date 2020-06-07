glabel BgSpot08Bakudankabe_Init
/* 0034C 808B061C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00350 808B0620 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00354 808B0624 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00358 808B0628 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0035C 808B062C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00360 808B0630 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00364 808B0634 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00368 808B0638 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0036C 808B063C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00370 808B0640 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00374 808B0644 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00378 808B0648 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0037C 808B064C 10400005 */  beq     $v0, $zero, .L808B0664     
/* 00380 808B0650 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00384 808B0654 0C00B55C */  jal     Actor_Kill
              
/* 00388 808B0658 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0038C 808B065C 10000012 */  beq     $zero, $zero, .L808B06A8   
/* 00390 808B0660 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B0664:
/* 00394 808B0664 0C22C0B4 */  jal     func_808B02D0              
/* 00398 808B0668 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0039C 808B066C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 003A0 808B0670 248439D4 */  addiu   $a0, $a0, 0x39D4           ## $a0 = 060039D4
/* 003A4 808B0674 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 003A8 808B0678 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 003AC 808B067C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 003B0 808B0680 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 003B4 808B0684 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 003B8 808B0688 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 003BC 808B068C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 003C0 808B0690 3C05808B */  lui     $a1, %hi(D_808B08D0)       ## $a1 = 808B0000
/* 003C4 808B0694 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 003C8 808B0698 24A508D0 */  addiu   $a1, $a1, %lo(D_808B08D0)  ## $a1 = 808B08D0
/* 003CC 808B069C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 003D0 808B06A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003D4 808B06A4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B06A8:
/* 003D8 808B06A8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003DC 808B06AC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 003E0 808B06B0 03E00008 */  jr      $ra                        
/* 003E4 808B06B4 00000000 */  nop
