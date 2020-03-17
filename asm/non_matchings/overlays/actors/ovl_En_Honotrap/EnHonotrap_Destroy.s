glabel EnHonotrap_Destroy
/* 0046C 80A5A09C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00470 80A5A0A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00474 80A5A0A4 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00478 80A5A0A8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0047C 80A5A0AC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00480 80A5A0B0 15C00006 */  bne     $t6, $zero, .L80A5A0CC     
/* 00484 80A5A0B4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00488 80A5A0B8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0048C 80A5A0BC 0C017232 */  jal     func_8005C8C8              
/* 00490 80A5A0C0 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 00494 80A5A0C4 10000004 */  beq     $zero, $zero, .L80A5A0D8   
/* 00498 80A5A0C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5A0CC:
/* 0049C 80A5A0CC 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 004A0 80A5A0D0 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 004A4 80A5A0D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5A0D8:
/* 004A8 80A5A0D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004AC 80A5A0DC 03E00008 */  jr      $ra                        
/* 004B0 80A5A0E0 00000000 */  nop


