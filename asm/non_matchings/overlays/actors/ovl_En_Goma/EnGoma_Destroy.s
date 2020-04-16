glabel EnGoma_Destroy
/* 00388 80A49248 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0038C 80A4924C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00390 80A49250 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00394 80A49254 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00398 80A49258 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0039C 80A4925C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003A0 80A49260 29C1000A */  slti    $at, $t6, 0x000A           
/* 003A4 80A49264 10200007 */  beq     $at, $zero, .L80A49284     
/* 003A8 80A49268 24C5030C */  addiu   $a1, $a2, 0x030C           ## $a1 = 0000030C
/* 003AC 80A4926C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 003B0 80A49270 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 003B4 80A49274 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 003B8 80A49278 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 003BC 80A4927C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 003C0 80A49280 24C50358 */  addiu   $a1, $a2, 0x0358           ## $a1 = 00000358
.L80A49284:
/* 003C4 80A49284 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003C8 80A49288 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003CC 80A4928C 03E00008 */  jr      $ra                        
/* 003D0 80A49290 00000000 */  nop
