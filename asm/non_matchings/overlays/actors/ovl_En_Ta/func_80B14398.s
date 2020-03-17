glabel func_80B14398
/* 008F8 80B14398 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008FC 80B1439C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00900 80B143A0 0C00BCCD */  jal     func_8002F334              
/* 00904 80B143A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00908 80B143A8 10400006 */  beq     $v0, $zero, .L80B143C4     
/* 0090C 80B143AC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00910 80B143B0 3C0580B1 */  lui     $a1, %hi(func_80B14754)    ## $a1 = 80B10000
/* 00914 80B143B4 3C0680B1 */  lui     $a2, %hi(func_80B167FC)    ## $a2 = 80B10000
/* 00918 80B143B8 24C667FC */  addiu   $a2, $a2, %lo(func_80B167FC) ## $a2 = 80B167FC
/* 0091C 80B143BC 0C2C4EA8 */  jal     func_80B13AA0              
/* 00920 80B143C0 24A54754 */  addiu   $a1, $a1, %lo(func_80B14754) ## $a1 = 80B14754
.L80B143C4:
/* 00924 80B143C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00928 80B143C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0092C 80B143CC 03E00008 */  jr      $ra                        
/* 00930 80B143D0 00000000 */  nop


