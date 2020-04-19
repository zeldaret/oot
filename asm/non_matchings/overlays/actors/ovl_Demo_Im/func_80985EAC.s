glabel func_80985EAC
/* 012CC 80985EAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012D0 80985EB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012D4 80985EB4 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 012D8 80985EB8 28410050 */  slti    $at, $v0, 0x0050           
/* 012DC 80985EBC 14200007 */  bne     $at, $zero, .L80985EDC     
/* 012E0 80985EC0 284100F3 */  slti    $at, $v0, 0x00F3           
/* 012E4 80985EC4 10200005 */  beq     $at, $zero, .L80985EDC     
/* 012E8 80985EC8 00000000 */  nop
/* 012EC 80985ECC 0C2613C4 */  jal     func_80984F10              
/* 012F0 80985ED0 00000000 */  nop
/* 012F4 80985ED4 10000004 */  beq     $zero, $zero, .L80985EE8   
/* 012F8 80985ED8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80985EDC:
/* 012FC 80985EDC 0C26136E */  jal     func_80984DB8              
/* 01300 80985EE0 00000000 */  nop
/* 01304 80985EE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80985EE8:
/* 01308 80985EE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0130C 80985EEC 03E00008 */  jr      $ra                        
/* 01310 80985EF0 00000000 */  nop
