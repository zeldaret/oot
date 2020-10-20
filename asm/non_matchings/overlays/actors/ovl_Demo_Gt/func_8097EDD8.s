glabel func_8097EDD8
/* 01768 8097EDD8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0176C 8097EDDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01770 8097EDE0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01774 8097EDE4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01778 8097EDE8 10C00012 */  beq     $a2, $zero, .L8097EE34     
/* 0177C 8097EDEC AFA60030 */  sw      $a2, 0x0030($sp)           
/* 01780 8097EDF0 3C058098 */  lui     $a1, %hi(D_809825F8)       ## $a1 = 80980000
/* 01784 8097EDF4 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 01788 8097EDF8 24A525F8 */  addiu   $a1, $a1, %lo(D_809825F8)  ## $a1 = 809825F8
/* 0178C 8097EDFC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01790 8097EE00 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 01794 8097EE04 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01798 8097EE08 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0179C 8097EE0C 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 017A0 8097EE10 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 017A4 8097EE14 27A50018 */  addiu   $a1, $sp, 0x0018           ## $a1 = FFFFFFF0
/* 017A8 8097EE18 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 017AC 8097EE1C 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 017B0 8097EE20 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 017B4 8097EE24 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 017B8 8097EE28 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 017BC 8097EE2C 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 017C0 8097EE30 ADE2014C */  sw      $v0, 0x014C($t7)           ## 0000014C
.L8097EE34:
/* 017C4 8097EE34 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 017C8 8097EE38 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 017CC 8097EE3C 03E00008 */  jr      $ra                        
/* 017D0 8097EE40 00000000 */  nop
