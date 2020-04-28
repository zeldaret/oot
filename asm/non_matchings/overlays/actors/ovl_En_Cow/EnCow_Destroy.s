glabel EnCow_Destroy
/* 0064C 809DF44C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00650 809DF450 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00654 809DF454 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00658 809DF458 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0065C 809DF45C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00660 809DF460 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00664 809DF464 15C00007 */  bne     $t6, $zero, .L809DF484     
/* 00668 809DF468 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 0066C 809DF46C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00670 809DF470 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00674 809DF474 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00678 809DF478 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0067C 809DF47C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00680 809DF480 24C50198 */  addiu   $a1, $a2, 0x0198           ## $a1 = 00000198
.L809DF484:
/* 00684 809DF484 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00688 809DF488 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0068C 809DF48C 03E00008 */  jr      $ra                        
/* 00690 809DF490 00000000 */  nop
