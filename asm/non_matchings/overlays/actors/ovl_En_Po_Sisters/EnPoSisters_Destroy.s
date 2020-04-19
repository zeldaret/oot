glabel EnPoSisters_Destroy
/* 00248 80AD91D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0024C 80AD91DC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00250 80AD91E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00254 80AD91E4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00258 80AD91E8 8CE60298 */  lw      $a2, 0x0298($a3)           ## 00000298
/* 0025C 80AD91EC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00260 80AD91F0 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 00264 80AD91F4 0C01E9F1 */  jal     Lights_Remove
              
/* 00268 80AD91F8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0026C 80AD91FC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00270 80AD9200 90EF0194 */  lbu     $t7, 0x0194($a3)           ## 00000194
/* 00274 80AD9204 55E00008 */  bnel    $t7, $zero, .L80AD9228     
/* 00278 80AD9208 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0027C 80AD920C 90F80195 */  lbu     $t8, 0x0195($a3)           ## 00000195
/* 00280 80AD9210 57000005 */  bnel    $t8, $zero, .L80AD9228     
/* 00284 80AD9214 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00288 80AD9218 0C03D6D6 */  jal     func_800F5B58              
/* 0028C 80AD921C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00290 80AD9220 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00294 80AD9224 8FA4001C */  lw      $a0, 0x001C($sp)           
.L80AD9228:
/* 00298 80AD9228 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0029C 80AD922C 24E502AC */  addiu   $a1, $a3, 0x02AC           ## $a1 = 000002AC
/* 002A0 80AD9230 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002A4 80AD9234 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002A8 80AD9238 03E00008 */  jr      $ra                        
/* 002AC 80AD923C 00000000 */  nop
