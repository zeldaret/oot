glabel func_80B316B0
/* 00690 80B316B0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00694 80B316B4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00698 80B316B8 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 0069C 80B316BC 240F003C */  addiu   $t7, $zero, 0x003C         ## $t7 = 0000003C
/* 006A0 80B316C0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 006A4 80B316C4 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 006A8 80B316C8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 006AC 80B316CC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 006B0 80B316D0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 006B4 80B316D4 0C2CC527 */  jal     func_80B3149C              
/* 006B8 80B316D8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 006BC 80B316DC 10400004 */  beq     $v0, $zero, .L80B316F0     
/* 006C0 80B316E0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 006C4 80B316E4 3C0580B3 */  lui     $a1, %hi(func_80B31658)    ## $a1 = 80B30000
/* 006C8 80B316E8 0C2CC408 */  jal     func_80B31020              
/* 006CC 80B316EC 24A51658 */  addiu   $a1, $a1, %lo(func_80B31658) ## $a1 = 80B31658
.L80B316F0:
/* 006D0 80B316F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 006D4 80B316F4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006D8 80B316F8 03E00008 */  jr      $ra                        
/* 006DC 80B316FC 00000000 */  nop
