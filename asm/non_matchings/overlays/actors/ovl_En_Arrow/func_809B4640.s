glabel func_809B4640
/* 00D20 809B4640 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D24 809B4644 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D28 809B4648 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00D2C 809B464C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D30 809B4650 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D34 809B4654 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00D38 809B4658 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D3C 809B465C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D40 809B4660 0C00B638 */  jal     Actor_MoveForward
              
/* 00D44 809B4664 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D48 809B4668 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00D4C 809B466C 90A20248 */  lbu     $v0, 0x0248($a1)           ## 00000248
/* 00D50 809B4670 14400003 */  bne     $v0, $zero, .L809B4680     
/* 00D54 809B4674 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00D58 809B4678 10000003 */  beq     $zero, $zero, .L809B4688   
/* 00D5C 809B467C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809B4680:
/* 00D60 809B4680 A0AE0248 */  sb      $t6, 0x0248($a1)           ## 00000248
/* 00D64 809B4684 31C300FF */  andi    $v1, $t6, 0x00FF           ## $v1 = 000000FF
.L809B4688:
/* 00D68 809B4688 54600004 */  bnel    $v1, $zero, .L809B469C     
/* 00D6C 809B468C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D70 809B4690 0C00B55C */  jal     Actor_Kill
              
/* 00D74 809B4694 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00D78 809B4698 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809B469C:
/* 00D7C 809B469C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D80 809B46A0 03E00008 */  jr      $ra                        
/* 00D84 809B46A4 00000000 */  nop
