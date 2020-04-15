glabel EnHintnuts_Destroy
/* 0019C 80A5739C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001A0 80A573A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001A4 80A573A4 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 001A8 80A573A8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001AC 80A573AC 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 001B0 80A573B0 11C10003 */  beq     $t6, $at, .L80A573C0       
/* 001B4 80A573B4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001B8 80A573B8 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001BC 80A573BC 24C50214 */  addiu   $a1, $a2, 0x0214           ## $a1 = 00000214
.L80A573C0:
/* 001C0 80A573C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001C4 80A573C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C8 80A573C8 03E00008 */  jr      $ra                        
/* 001CC 80A573CC 00000000 */  nop
