glabel func_80B318C0
/* 008A0 80B318C0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 008A4 80B318C4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 008A8 80B318C8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 008AC 80B318CC 240F003C */  addiu   $t7, $zero, 0x003C         ## $t7 = 0000003C
/* 008B0 80B318D0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 008B4 80B318D4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 008B8 80B318D8 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 008BC 80B318DC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 008C0 80B318E0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 008C4 80B318E4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 008C8 80B318E8 0C2CC527 */  jal     func_80B3149C              
/* 008CC 80B318EC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 008D0 80B318F0 10400008 */  beq     $v0, $zero, .L80B31914     
/* 008D4 80B318F4 8FB8002C */  lw      $t8, 0x002C($sp)           
/* 008D8 80B318F8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 008DC 80B318FC 00380821 */  addu    $at, $at, $t8              
/* 008E0 80B31900 A0200B15 */  sb      $zero, 0x0B15($at)         ## 00010B15
/* 008E4 80B31904 3C0580B3 */  lui     $a1, %hi(func_80B31850)    ## $a1 = 80B30000
/* 008E8 80B31908 24A51850 */  addiu   $a1, $a1, %lo(func_80B31850) ## $a1 = 80B31850
/* 008EC 80B3190C 0C2CC408 */  jal     func_80B31020              
/* 008F0 80B31910 8FA40028 */  lw      $a0, 0x0028($sp)           
.L80B31914:
/* 008F4 80B31914 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 008F8 80B31918 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 008FC 80B3191C 03E00008 */  jr      $ra                        
/* 00900 80B31920 00000000 */  nop
