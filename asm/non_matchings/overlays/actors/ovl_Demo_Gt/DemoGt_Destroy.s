glabel DemoGt_Destroy
/* 00000 8097D670 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 8097D674 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 8097D678 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0000C 8097D67C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00010 8097D680 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00014 8097D684 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00018 8097D688 10410003 */  beq     $v0, $at, .L8097D698       
/* 0001C 8097D68C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00020 8097D690 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00024 8097D694 14410003 */  bne     $v0, $at, .L8097D6A4       
.L8097D698:
/* 00028 8097D698 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0002C 8097D69C 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00030 8097D6A0 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
.L8097D6A4:
/* 00034 8097D6A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00038 8097D6A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0003C 8097D6AC 03E00008 */  jr      $ra                        
/* 00040 8097D6B0 00000000 */  nop


