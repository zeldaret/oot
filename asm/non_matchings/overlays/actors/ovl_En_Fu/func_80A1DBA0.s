glabel func_80A1DBA0
/* 00390 80A1DBA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00394 80A1DBA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00398 80A1DBA8 0C00BCCD */  jal     func_8002F334              
/* 0039C 80A1DBAC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003A0 80A1DBB0 10400004 */  beq     $v0, $zero, .L80A1DBC4     
/* 003A4 80A1DBB4 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 003A8 80A1DBB8 3C0E80A2 */  lui     $t6, %hi(func_80A1DE24)    ## $t6 = 80A20000
/* 003AC 80A1DBBC 25CEDE24 */  addiu   $t6, $t6, %lo(func_80A1DE24) ## $t6 = 80A1DE24
/* 003B0 80A1DBC0 ADEE02AC */  sw      $t6, 0x02AC($t7)           ## 000002AC
.L80A1DBC4:
/* 003B4 80A1DBC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003B8 80A1DBC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003BC 80A1DBCC 03E00008 */  jr      $ra                        
/* 003C0 80A1DBD0 00000000 */  nop
