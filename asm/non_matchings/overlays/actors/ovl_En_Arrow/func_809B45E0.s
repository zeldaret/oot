glabel func_809B45E0
/* 00CC0 809B45E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CC4 809B45E4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00CC8 809B45E8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00CCC 809B45EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CD0 809B45F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CD4 809B45F4 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00CD8 809B45F8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00CDC 809B45FC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00CE0 809B4600 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00CE4 809B4604 90A20248 */  lbu     $v0, 0x0248($a1)           ## 00000248
/* 00CE8 809B4608 14400003 */  bne     $v0, $zero, .L809B4618     
/* 00CEC 809B460C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00CF0 809B4610 10000003 */  beq     $zero, $zero, .L809B4620   
/* 00CF4 809B4614 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809B4618:
/* 00CF8 809B4618 A0AE0248 */  sb      $t6, 0x0248($a1)           ## 00000248
/* 00CFC 809B461C 31C300FF */  andi    $v1, $t6, 0x00FF           ## $v1 = 000000FF
.L809B4620:
/* 00D00 809B4620 54600004 */  bnel    $v1, $zero, .L809B4634     
/* 00D04 809B4624 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D08 809B4628 0C00B55C */  jal     Actor_Kill
              
/* 00D0C 809B462C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00D10 809B4630 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809B4634:
/* 00D14 809B4634 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D18 809B4638 03E00008 */  jr      $ra                        
/* 00D1C 809B463C 00000000 */  nop


