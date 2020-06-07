glabel EnInsect_Destroy
/* 00514 80A7C334 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00518 80A7C338 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0051C 80A7C33C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00520 80A7C340 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00524 80A7C344 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00528 80A7C348 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 0052C 80A7C34C 00021400 */  sll     $v0, $v0, 16               
/* 00530 80A7C350 00021403 */  sra     $v0, $v0, 16               
/* 00534 80A7C354 A7A2001E */  sh      $v0, 0x001E($sp)           
/* 00538 80A7C358 0C016F32 */  jal     Collider_DestroyJntSph              
/* 0053C 80A7C35C 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 00540 80A7C360 87A2001E */  lh      $v0, 0x001E($sp)           
/* 00544 80A7C364 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00548 80A7C368 3C0380A8 */  lui     $v1, %hi(D_80A7DEB8)       ## $v1 = 80A80000
/* 0054C 80A7C36C 10410004 */  beq     $v0, $at, .L80A7C380       
/* 00550 80A7C370 2463DEB8 */  addiu   $v1, $v1, %lo(D_80A7DEB8)  ## $v1 = 80A7DEB8
/* 00554 80A7C374 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00558 80A7C378 54410006 */  bnel    $v0, $at, .L80A7C394       
/* 0055C 80A7C37C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A7C380:
/* 00560 80A7C380 84620000 */  lh      $v0, 0x0000($v1)           ## 80A7DEB8
/* 00564 80A7C384 18400002 */  blez    $v0, .L80A7C390            
/* 00568 80A7C388 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0056C 80A7C38C A46E0000 */  sh      $t6, 0x0000($v1)           ## 80A7DEB8
.L80A7C390:
/* 00570 80A7C390 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A7C394:
/* 00574 80A7C394 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00578 80A7C398 03E00008 */  jr      $ra                        
/* 0057C 80A7C39C 00000000 */  nop
