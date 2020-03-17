glabel func_80ABDBB8
/* 01008 80ABDBB8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0100C 80ABDBBC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01010 80ABDBC0 848E01C8 */  lh      $t6, 0x01C8($a0)           ## 000001C8
/* 01014 80ABDBC4 848201CA */  lh      $v0, 0x01CA($a0)           ## 000001CA
/* 01018 80ABDBC8 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0101C 80ABDBCC 10400003 */  beq     $v0, $zero, .L80ABDBDC     
/* 01020 80ABDBD0 A48F01C8 */  sh      $t7, 0x01C8($a0)           ## 000001C8
/* 01024 80ABDBD4 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01028 80ABDBD8 A49801CA */  sh      $t8, 0x01CA($a0)           ## 000001CA
.L80ABDBDC:
/* 0102C 80ABDBDC 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 01030 80ABDBE0 0320F809 */  jalr    $ra, $t9                   
/* 01034 80ABDBE4 00000000 */  nop
/* 01038 80ABDBE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0103C 80ABDBEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01040 80ABDBF0 03E00008 */  jr      $ra                        
/* 01044 80ABDBF4 00000000 */  nop


