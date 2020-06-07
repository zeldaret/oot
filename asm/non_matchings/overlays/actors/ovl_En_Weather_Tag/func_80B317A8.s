glabel func_80B317A8
/* 00788 80B317A8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0078C 80B317AC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00790 80B317B0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00794 80B317B4 240F003C */  addiu   $t7, $zero, 0x003C         ## $t7 = 0000003C
/* 00798 80B317B8 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 0079C 80B317BC AFA40028 */  sw      $a0, 0x0028($sp)           
/* 007A0 80B317C0 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 007A4 80B317C4 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 007A8 80B317C8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 007AC 80B317CC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 007B0 80B317D0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 007B4 80B317D4 0C2CC4B2 */  jal     func_80B312C8              
/* 007B8 80B317D8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 007BC 80B317DC 10400004 */  beq     $v0, $zero, .L80B317F0     
/* 007C0 80B317E0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 007C4 80B317E4 3C0580B3 */  lui     $a1, %hi(func_80B31800)    ## $a1 = 80B30000
/* 007C8 80B317E8 0C2CC408 */  jal     func_80B31020              
/* 007CC 80B317EC 24A51800 */  addiu   $a1, $a1, %lo(func_80B31800) ## $a1 = 80B31800
.L80B317F0:
/* 007D0 80B317F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 007D4 80B317F4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 007D8 80B317F8 03E00008 */  jr      $ra                        
/* 007DC 80B317FC 00000000 */  nop
