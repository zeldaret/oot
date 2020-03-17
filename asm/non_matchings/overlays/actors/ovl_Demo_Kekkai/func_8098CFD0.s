glabel func_8098CFD0
/* 00000 8098CFD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 8098CFD4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 8098CFD8 04800004 */  bltz    $a0, .L8098CFEC            
/* 0000C 8098CFDC 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00010 8098CFE0 28810007 */  slti    $at, $a0, 0x0007           
/* 00014 8098CFE4 14200003 */  bne     $at, $zero, .L8098CFF4     
/* 00018 8098CFE8 00057080 */  sll     $t6, $a1,  2               
.L8098CFEC:
/* 0001C 8098CFEC 10000005 */  beq     $zero, $zero, .L8098D004   
/* 00020 8098CFF0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8098CFF4:
/* 00024 8098CFF4 3C048099 */  lui     $a0, %hi(D_8098E100)       ## $a0 = 80990000
/* 00028 8098CFF8 008E2021 */  addu    $a0, $a0, $t6              
/* 0002C 8098CFFC 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 00030 8098D000 8C84E100 */  lw      $a0, %lo(D_8098E100)($a0)  
.L8098D004:
/* 00034 8098D004 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00038 8098D008 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0003C 8098D00C 03E00008 */  jr      $ra                        
/* 00040 8098D010 00000000 */  nop


