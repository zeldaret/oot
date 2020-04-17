glabel EnExItem_Update
/* 00BC8 80A09A68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BCC 80A09A6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BD0 80A09A70 8482015A */  lh      $v0, 0x015A($a0)           ## 0000015A
/* 00BD4 80A09A74 10400002 */  beq     $v0, $zero, .L80A09A80     
/* 00BD8 80A09A78 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00BDC 80A09A7C A48E015A */  sh      $t6, 0x015A($a0)           ## 0000015A
.L80A09A80:
/* 00BE0 80A09A80 8482015C */  lh      $v0, 0x015C($a0)           ## 0000015C
/* 00BE4 80A09A84 10400002 */  beq     $v0, $zero, .L80A09A90     
/* 00BE8 80A09A88 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00BEC 80A09A8C A48F015C */  sh      $t7, 0x015C($a0)           ## 0000015C
.L80A09A90:
/* 00BF0 80A09A90 8482015E */  lh      $v0, 0x015E($a0)           ## 0000015E
/* 00BF4 80A09A94 10400002 */  beq     $v0, $zero, .L80A09AA0     
/* 00BF8 80A09A98 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 00BFC 80A09A9C A498015E */  sh      $t8, 0x015E($a0)           ## 0000015E
.L80A09AA0:
/* 00C00 80A09AA0 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00C04 80A09AA4 0320F809 */  jalr    $ra, $t9                   
/* 00C08 80A09AA8 00000000 */  nop
/* 00C0C 80A09AAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C10 80A09AB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C14 80A09AB4 03E00008 */  jr      $ra                        
/* 00C18 80A09AB8 00000000 */  nop
