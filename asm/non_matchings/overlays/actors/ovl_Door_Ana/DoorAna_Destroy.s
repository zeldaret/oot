glabel DoorAna_Destroy
/* 000C4 80993FB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000C8 80993FB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000CC 80993FBC 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 000D0 80993FC0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000D4 80993FC4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000D8 80993FC8 31CF0200 */  andi    $t7, $t6, 0x0200           ## $t7 = 00000000
/* 000DC 80993FCC 51E00004 */  beql    $t7, $zero, .L80993FE0     
/* 000E0 80993FD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000E4 80993FD4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000E8 80993FD8 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 000EC 80993FDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80993FE0:
/* 000F0 80993FE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000F4 80993FE4 03E00008 */  jr      $ra                        
/* 000F8 80993FE8 00000000 */  nop


