glabel ElfMsg2_Update
/* 003A0 809ADAA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003A4 809ADAA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003A8 809ADAA8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003AC 809ADAAC 0C26B5C2 */  jal     func_809AD708              
/* 003B0 809ADAB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003B4 809ADAB4 14400005 */  bne     $v0, $zero, .L809ADACC     
/* 003B8 809ADAB8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 003BC 809ADABC 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 003C0 809ADAC0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 003C4 809ADAC4 0320F809 */  jalr    $ra, $t9                   
/* 003C8 809ADAC8 00000000 */  nop
.L809ADACC:
/* 003CC 809ADACC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003D0 809ADAD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003D4 809ADAD4 03E00008 */  jr      $ra                        
/* 003D8 809ADAD8 00000000 */  nop
