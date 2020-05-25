glabel EnDodongo_Destroy
/* 0071C 809F896C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00720 809F8970 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00724 809F8974 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00728 809F8978 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0072C 809F897C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00730 809F8980 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00734 809F8984 0C009C27 */  jal     Effect_Delete              
/* 00738 809F8988 8DC503D0 */  lw      $a1, 0x03D0($t6)           ## 000003D0
/* 0073C 809F898C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00740 809F8990 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00744 809F8994 0C017232 */  jal     Collider_DestroyTris              
/* 00748 809F8998 24A50454 */  addiu   $a1, $a1, 0x0454           ## $a1 = 00000454
/* 0074C 809F899C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00750 809F89A0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00754 809F89A4 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00758 809F89A8 24A50588 */  addiu   $a1, $a1, 0x0588           ## $a1 = 00000588
/* 0075C 809F89AC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00760 809F89B0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00764 809F89B4 0C017418 */  jal     Collider_DestroyQuad              
/* 00768 809F89B8 24A503D4 */  addiu   $a1, $a1, 0x03D4           ## $a1 = 000003D4
/* 0076C 809F89BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00770 809F89C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00774 809F89C4 03E00008 */  jr      $ra                        
/* 00778 809F89C8 00000000 */  nop
