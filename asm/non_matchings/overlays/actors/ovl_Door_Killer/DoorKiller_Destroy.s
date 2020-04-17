glabel DoorKiller_Destroy
/* 00384 80994FD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00388 80994FD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0038C 80994FDC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00390 80994FE0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00394 80994FE4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00398 80994FE8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0039C 80994FEC 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 003A0 80994FF0 15E00007 */  bne     $t7, $zero, .L80995010     
/* 003A4 80994FF4 24C501C8 */  addiu   $a1, $a2, 0x01C8           ## $a1 = 000001C8
/* 003A8 80994FF8 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 003AC 80994FFC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 003B0 80995000 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 003B4 80995004 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 003B8 80995008 0C016F32 */  jal     func_8005BCC8              
/* 003BC 8099500C 24C50220 */  addiu   $a1, $a2, 0x0220           ## $a1 = 00000220
.L80995010:
/* 003C0 80995010 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003C4 80995014 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003C8 80995018 03E00008 */  jr      $ra                        
/* 003CC 8099501C 00000000 */  nop
