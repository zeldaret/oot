glabel func_809EFF50
/* 00C00 809EFF50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C04 809EFF54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C08 809EFF58 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C0C 809EFF5C 0C00BD04 */  jal     Actor_HasParent              
/* 00C10 809EFF60 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C14 809EFF64 10400006 */  beq     $v0, $zero, .L809EFF80     
/* 00C18 809EFF68 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C1C 809EFF6C 3C0E809F */  lui     $t6, %hi(func_809EFF98)    ## $t6 = 809F0000
/* 00C20 809EFF70 25CEFF98 */  addiu   $t6, $t6, %lo(func_809EFF98) ## $t6 = 809EFF98
/* 00C24 809EFF74 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 00C28 809EFF78 10000003 */  beq     $zero, $zero, .L809EFF88   
/* 00C2C 809EFF7C AC8E0268 */  sw      $t6, 0x0268($a0)           ## 00000268
.L809EFF80:
/* 00C30 809EFF80 0C27BF74 */  jal     func_809EFDD0              
/* 00C34 809EFF84 8FA5001C */  lw      $a1, 0x001C($sp)           
.L809EFF88:
/* 00C38 809EFF88 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C3C 809EFF8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C40 809EFF90 03E00008 */  jr      $ra                        
/* 00C44 809EFF94 00000000 */  nop
