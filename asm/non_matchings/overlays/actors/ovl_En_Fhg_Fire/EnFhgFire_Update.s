glabel EnFhgFire_Update
/* 01E88 80A110E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E8C 80A110EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E90 80A110F0 848E0156 */  lh      $t6, 0x0156($a0)           ## 00000156
/* 01E94 80A110F4 84820150 */  lh      $v0, 0x0150($a0)           ## 00000150
/* 01E98 80A110F8 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 01E9C 80A110FC 10400003 */  beq     $v0, $zero, .L80A1110C     
/* 01EA0 80A11100 A48F0156 */  sh      $t7, 0x0156($a0)           ## 00000156
/* 01EA4 80A11104 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01EA8 80A11108 A4980150 */  sh      $t8, 0x0150($a0)           ## 00000150
.L80A1110C:
/* 01EAC 80A1110C 84820152 */  lh      $v0, 0x0152($a0)           ## 00000152
/* 01EB0 80A11110 10400002 */  beq     $v0, $zero, .L80A1111C     
/* 01EB4 80A11114 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 01EB8 80A11118 A4990152 */  sh      $t9, 0x0152($a0)           ## 00000152
.L80A1111C:
/* 01EBC 80A1111C 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 01EC0 80A11120 0320F809 */  jalr    $ra, $t9                   
/* 01EC4 80A11124 00000000 */  nop
/* 01EC8 80A11128 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01ECC 80A1112C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01ED0 80A11130 03E00008 */  jr      $ra                        
/* 01ED4 80A11134 00000000 */  nop


