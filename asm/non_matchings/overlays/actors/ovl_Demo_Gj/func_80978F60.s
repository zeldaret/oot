glabel func_80978F60
/* 00630 80978F60 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00634 80978F64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00638 80978F68 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0063C 80978F6C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00640 80978F70 10C00012 */  beq     $a2, $zero, .L80978FBC     
/* 00644 80978F74 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 00648 80978F78 3C058098 */  lui     $a1, %hi(D_8097BE84)       ## $a1 = 80980000
/* 0064C 80978F7C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00650 80978F80 24A5BE84 */  addiu   $a1, $a1, %lo(D_8097BE84)  ## $a1 = 8097BE84
/* 00654 80978F84 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00658 80978F88 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0065C 80978F8C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00660 80978F90 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00664 80978F94 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00668 80978F98 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0066C 80978F9C 27A50018 */  addiu   $a1, $sp, 0x0018           ## $a1 = FFFFFFF0
/* 00670 80978FA0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00674 80978FA4 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00678 80978FA8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 0067C 80978FAC 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00680 80978FB0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00684 80978FB4 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 00688 80978FB8 ADE2014C */  sw      $v0, 0x014C($t7)           ## 0000014C
.L80978FBC:
/* 0068C 80978FBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00690 80978FC0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00694 80978FC4 03E00008 */  jr      $ra                        
/* 00698 80978FC8 00000000 */  nop


