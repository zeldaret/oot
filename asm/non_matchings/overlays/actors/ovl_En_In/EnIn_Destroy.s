glabel EnIn_Destroy
/* 00FC4 80A79F74 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FC8 80A79F78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FCC 80A79F7C 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 00FD0 80A79F80 3C0E80A8 */  lui     $t6, %hi(func_80A79FB0)    ## $t6 = 80A80000
/* 00FD4 80A79F84 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00FD8 80A79F88 10400005 */  beq     $v0, $zero, .L80A79FA0     
/* 00FDC 80A79F8C 25CE9FB0 */  addiu   $t6, $t6, %lo(func_80A79FB0) ## $t6 = 80A79FB0
/* 00FE0 80A79F90 11C20003 */  beq     $t6, $v0, .L80A79FA0       
/* 00FE4 80A79F94 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00FE8 80A79F98 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00FEC 80A79F9C 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
.L80A79FA0:
/* 00FF0 80A79FA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FF4 80A79FA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FF8 80A79FA8 03E00008 */  jr      $ra                        
/* 00FFC 80A79FAC 00000000 */  nop
