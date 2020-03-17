glabel func_809F7C48
/* 01888 809F7C48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0188C 809F7C4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01890 809F7C50 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01894 809F7C54 84820200 */  lh      $v0, 0x0200($a0)           ## 00000200
/* 01898 809F7C58 14400003 */  bne     $v0, $zero, .L809F7C68     
/* 0189C 809F7C5C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 018A0 809F7C60 10000003 */  beq     $zero, $zero, .L809F7C70   
/* 018A4 809F7C64 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809F7C68:
/* 018A8 809F7C68 A48E0200 */  sh      $t6, 0x0200($a0)           ## 00000200
/* 018AC 809F7C6C 84830200 */  lh      $v1, 0x0200($a0)           ## 00000200
.L809F7C70:
/* 018B0 809F7C70 54600004 */  bnel    $v1, $zero, .L809F7C84     
/* 018B4 809F7C74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018B8 809F7C78 0C27DC27 */  jal     func_809F709C              
/* 018BC 809F7C7C 00000000 */  nop
/* 018C0 809F7C80 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F7C84:
/* 018C4 809F7C84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018C8 809F7C88 03E00008 */  jr      $ra                        
/* 018CC 809F7C8C 00000000 */  nop


