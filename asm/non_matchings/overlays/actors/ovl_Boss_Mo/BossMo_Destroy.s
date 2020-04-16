glabel BossMo_Destroy
/* 00994 8091C494 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00998 8091C498 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0099C 8091C49C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 009A0 8091C4A0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 009A4 8091C4A4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 009A8 8091C4A8 29C10064 */  slti    $at, $t6, 0x0064           
/* 009AC 8091C4AC 14200006 */  bne     $at, $zero, .L8091C4C8     
/* 009B0 8091C4B0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 009B4 8091C4B4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 009B8 8091C4B8 0C016F32 */  jal     Collider_DestroyJntSph              
/* 009BC 8091C4BC 24C5101C */  addiu   $a1, $a2, 0x101C           ## $a1 = 0000101C
/* 009C0 8091C4C0 10000004 */  beq     $zero, $zero, .L8091C4D4   
/* 009C4 8091C4C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8091C4C8:
/* 009C8 8091C4C8 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 009CC 8091C4CC 24C514FC */  addiu   $a1, $a2, 0x14FC           ## $a1 = 000014FC
/* 009D0 8091C4D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8091C4D4:
/* 009D4 8091C4D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009D8 8091C4D8 03E00008 */  jr      $ra                        
/* 009DC 8091C4DC 00000000 */  nop
