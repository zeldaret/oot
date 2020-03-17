glabel func_80B039BC
/* 0174C 80B039BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01750 80B039C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01754 80B039C4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01758 80B039C8 0C2C0B54 */  jal     func_80B02D50              
/* 0175C 80B039CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01760 80B039D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01764 80B039D4 0C00BCCD */  jal     func_8002F334              
/* 01768 80B039D8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0176C 80B039DC 10400004 */  beq     $v0, $zero, .L80B039F0     
/* 01770 80B039E0 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01774 80B039E4 3C0E80B0 */  lui     $t6, %hi(func_80B03A00)    ## $t6 = 80B00000
/* 01778 80B039E8 25CE3A00 */  addiu   $t6, $t6, %lo(func_80B03A00) ## $t6 = 80B03A00
/* 0177C 80B039EC ADEE02F8 */  sw      $t6, 0x02F8($t7)           ## 000002F8
.L80B039F0:
/* 01780 80B039F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01784 80B039F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01788 80B039F8 03E00008 */  jr      $ra                        
/* 0178C 80B039FC 00000000 */  nop


