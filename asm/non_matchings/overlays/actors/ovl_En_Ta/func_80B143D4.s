glabel func_80B143D4
/* 00934 80B143D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00938 80B143D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0093C 80B143DC 0C00BCCD */  jal     func_8002F334              
/* 00940 80B143E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00944 80B143E4 10400006 */  beq     $v0, $zero, .L80B14400     
/* 00948 80B143E8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0094C 80B143EC 3C0580B1 */  lui     $a1, %hi(func_80B146F8)    ## $a1 = 80B10000
/* 00950 80B143F0 3C0680B1 */  lui     $a2, %hi(func_80B167FC)    ## $a2 = 80B10000
/* 00954 80B143F4 24C667FC */  addiu   $a2, $a2, %lo(func_80B167FC) ## $a2 = 80B167FC
/* 00958 80B143F8 0C2C4EA8 */  jal     func_80B13AA0              
/* 0095C 80B143FC 24A546F8 */  addiu   $a1, $a1, %lo(func_80B146F8) ## $a1 = 80B146F8
.L80B14400:
/* 00960 80B14400 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00964 80B14404 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00968 80B14408 03E00008 */  jr      $ra                        
/* 0096C 80B1440C 00000000 */  nop
