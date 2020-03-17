glabel EnVbBall_Destroy
/* 00180 80B29120 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00184 80B29124 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00188 80B29128 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0018C 80B2912C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00190 80B29130 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00194 80B29134 29C100C8 */  slti    $at, $t6, 0x00C8           
/* 00198 80B29138 50200004 */  beql    $at, $zero, .L80B2914C     
/* 0019C 80B2913C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001A0 80B29140 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001A4 80B29144 24C50168 */  addiu   $a1, $a2, 0x0168           ## $a1 = 00000168
/* 001A8 80B29148 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B2914C:
/* 001AC 80B2914C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001B0 80B29150 03E00008 */  jr      $ra                        
/* 001B4 80B29154 00000000 */  nop


