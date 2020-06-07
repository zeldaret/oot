glabel func_809AD9F4
/* 002F4 809AD9F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002F8 809AD9F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002FC 809AD9FC 0C00BC65 */  jal     func_8002F194              
/* 00300 809ADA00 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00304 809ADA04 10400004 */  beq     $v0, $zero, .L809ADA18     
/* 00308 809ADA08 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0030C 809ADA0C 3C05809B */  lui     $a1, %hi(func_809AD978)    ## $a1 = 809B0000
/* 00310 809ADA10 0C26B5C0 */  jal     func_809AD700              
/* 00314 809ADA14 24A5D978 */  addiu   $a1, $a1, %lo(func_809AD978) ## $a1 = 809AD978
.L809ADA18:
/* 00318 809ADA18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0031C 809ADA1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00320 809ADA20 03E00008 */  jr      $ra                        
/* 00324 809ADA24 00000000 */  nop
