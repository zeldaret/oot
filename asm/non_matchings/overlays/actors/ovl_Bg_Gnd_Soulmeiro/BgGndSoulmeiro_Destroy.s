glabel BgGndSoulmeiro_Destroy
/* 00140 8087AF00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00144 8087AF04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00148 8087AF08 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0014C 8087AF0C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00150 8087AF10 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00154 8087AF14 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00158 8087AF18 55E00004 */  bnel    $t7, $zero, .L8087AF2C     
/* 0015C 8087AF1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00160 8087AF20 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00164 8087AF24 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 00168 8087AF28 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8087AF2C:
/* 0016C 8087AF2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00170 8087AF30 03E00008 */  jr      $ra                        
/* 00174 8087AF34 00000000 */  nop
