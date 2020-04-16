glabel ShotSun_Destroy
/* 000CC 80BADD8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000D0 80BADD90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000D4 80BADD94 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 000D8 80BADD98 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 000DC 80BADD9C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000E0 80BADDA0 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 000E4 80BADDA4 10410005 */  beq     $v0, $at, .L80BADDBC       
/* 000E8 80BADDA8 24010041 */  addiu   $at, $zero, 0x0041         ## $at = 00000041
/* 000EC 80BADDAC 10410003 */  beq     $v0, $at, .L80BADDBC       
/* 000F0 80BADDB0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000F4 80BADDB4 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 000F8 80BADDB8 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
.L80BADDBC:
/* 000FC 80BADDBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00100 80BADDC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00104 80BADDC4 03E00008 */  jr      $ra                        
/* 00108 80BADDC8 00000000 */  nop
