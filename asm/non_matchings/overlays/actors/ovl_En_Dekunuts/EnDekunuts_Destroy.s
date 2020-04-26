glabel EnDekunuts_Destroy
/* 00168 809E96C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0016C 809E96CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00170 809E96D0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00174 809E96D4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00178 809E96D8 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0017C 809E96DC 11C10003 */  beq     $t6, $at, .L809E96EC       
/* 00180 809E96E0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00184 809E96E4 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00188 809E96E8 24C502C8 */  addiu   $a1, $a2, 0x02C8           ## $a1 = 000002C8
.L809E96EC:
/* 0018C 809E96EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00190 809E96F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00194 809E96F4 03E00008 */  jr      $ra                        
/* 00198 809E96F8 00000000 */  nop
