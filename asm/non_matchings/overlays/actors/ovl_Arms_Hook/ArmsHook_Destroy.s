glabel ArmsHook_Destroy
/* 00080 80864F80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00084 80864F84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00088 80864F88 8C820200 */  lw      $v0, 0x0200($a0)           ## 00000200
/* 0008C 80864F8C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00090 80864F90 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00094 80864F94 10400005 */  beq     $v0, $zero, .L80864FAC     
/* 00098 80864F98 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0009C 80864F9C 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 00000004
/* 000A0 80864FA0 2401DFFF */  addiu   $at, $zero, 0xDFFF         ## $at = FFFFDFFF
/* 000A4 80864FA4 01C17824 */  and     $t7, $t6, $at              
/* 000A8 80864FA8 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
.L80864FAC:
/* 000AC 80864FAC 0C017418 */  jal     Collider_DestroyQuad              
/* 000B0 80864FB0 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 000B4 80864FB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000B8 80864FB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000BC 80864FBC 03E00008 */  jr      $ra                        
/* 000C0 80864FC0 00000000 */  nop
