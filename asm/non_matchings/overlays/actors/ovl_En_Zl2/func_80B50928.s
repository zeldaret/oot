glabel func_80B50928
/* 01F98 80B50928 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01F9C 80B5092C 10A0000C */  beq     $a1, $zero, .L80B50960     
/* 01FA0 80B50930 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01FA4 80B50934 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01FA8 80B50938 24A513A0 */  addiu   $a1, $a1, 0x13A0           ## $a1 = 060013A0
/* 01FAC 80B5093C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01FB0 80B50940 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01FB4 80B50944 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01FB8 80B50948 0C2D3F40 */  jal     func_80B4FD00              
/* 01FBC 80B5094C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01FC0 80B50950 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01FC4 80B50954 240E0015 */  addiu   $t6, $zero, 0x0015         ## $t6 = 00000015
/* 01FC8 80B50958 0C2D3FB6 */  jal     func_80B4FED8              
/* 01FCC 80B5095C AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
.L80B50960:
/* 01FD0 80B50960 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01FD4 80B50964 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01FD8 80B50968 03E00008 */  jr      $ra                        
/* 01FDC 80B5096C 00000000 */  nop


