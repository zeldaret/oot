glabel func_80B319A0
/* 00980 80B319A0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00984 80B319A4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00988 80B319A8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0098C 80B319AC 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00990 80B319B0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00994 80B319B4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00998 80B319B8 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 0099C 80B319BC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 009A0 80B319C0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 009A4 80B319C4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 009A8 80B319C8 0C2CC527 */  jal     func_80B3149C              
/* 009AC 80B319CC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 009B0 80B319D0 5040000C */  beql    $v0, $zero, .L80B31A04     
/* 009B4 80B319D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 009B8 80B319D8 0C01DDA1 */  jal     func_80077684              
/* 009BC 80B319DC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 009C0 80B319E0 8FB8002C */  lw      $t8, 0x002C($sp)           
/* 009C4 80B319E4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 009C8 80B319E8 3C0580B3 */  lui     $a1, %hi(func_80B31924)    ## $a1 = 80B30000
/* 009CC 80B319EC 00380821 */  addu    $at, $at, $t8              
/* 009D0 80B319F0 A0200B12 */  sb      $zero, 0x0B12($at)         ## 00010B12
/* 009D4 80B319F4 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 009D8 80B319F8 0C2CC408 */  jal     func_80B31020              
/* 009DC 80B319FC 24A51924 */  addiu   $a1, $a1, %lo(func_80B31924) ## $a1 = 80B31924
/* 009E0 80B31A00 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B31A04:
/* 009E4 80B31A04 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 009E8 80B31A08 03E00008 */  jr      $ra                        
/* 009EC 80B31A0C 00000000 */  nop
