glabel MirRay_Destroy
/* 0053C 80B8D58C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00540 80B8D590 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00544 80B8D594 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00548 80B8D598 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0054C 80B8D59C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00550 80B8D5A0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00554 80B8D5A4 8DC6029C */  lw      $a2, 0x029C($t6)           ## 0000029C
/* 00558 80B8D5A8 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 0055C 80B8D5AC 0C01E9F1 */  jal     Lights_Remove
              
/* 00560 80B8D5B0 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 00564 80B8D5B4 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00568 80B8D5B8 3C1980B9 */  lui     $t9, %hi(D_80B8E717)       ## $t9 = 80B90000
/* 0056C 80B8D5BC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00570 80B8D5C0 844F001C */  lh      $t7, 0x001C($v0)           ## 0000001C
/* 00574 80B8D5C4 000FC140 */  sll     $t8, $t7,  5               
/* 00578 80B8D5C8 0338C821 */  addu    $t9, $t9, $t8              
/* 0057C 80B8D5CC 9339E717 */  lbu     $t9, %lo(D_80B8E717)($t9)  
/* 00580 80B8D5D0 33280002 */  andi    $t0, $t9, 0x0002           ## $t0 = 00000000
/* 00584 80B8D5D4 51000005 */  beql    $t0, $zero, .L80B8D5EC     
/* 00588 80B8D5D8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0058C 80B8D5DC 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00590 80B8D5E0 2445014C */  addiu   $a1, $v0, 0x014C           ## $a1 = 0000014C
/* 00594 80B8D5E4 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00598 80B8D5E8 8FA4001C */  lw      $a0, 0x001C($sp)           
.L80B8D5EC:
/* 0059C 80B8D5EC 0C017418 */  jal     Collider_DestroyQuad              
/* 005A0 80B8D5F0 244501AC */  addiu   $a1, $v0, 0x01AC           ## $a1 = 000001AC
/* 005A4 80B8D5F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005A8 80B8D5F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005AC 80B8D5FC 03E00008 */  jr      $ra                        
/* 005B0 80B8D600 00000000 */  nop
