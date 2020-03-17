glabel EnBdfire_Destroy
/* 0023C 809BC26C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00240 809BC270 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00244 809BC274 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00248 809BC278 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0024C 809BC27C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00250 809BC280 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00254 809BC284 05C10003 */  bgez    $t6, .L809BC294            
/* 00258 809BC288 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 0025C 809BC28C 0C01E9F1 */  jal     Lights_Remove
/* 00260 809BC290 8CE601D0 */  lw      $a2, 0x01D0($a3)           ## 000001D0
.L809BC294:
/* 00264 809BC294 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00268 809BC298 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0026C 809BC29C 03E00008 */  jr      $ra                        
/* 00270 809BC2A0 00000000 */  nop


