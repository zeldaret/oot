glabel func_80AC1F28
/* 018C8 80AC1F28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 018CC 80AC1F2C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 018D0 80AC1F30 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 018D4 80AC1F34 90820381 */  lbu     $v0, 0x0381($a0)           ## 00000381
/* 018D8 80AC1F38 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 018DC 80AC1F3C 24E50388 */  addiu   $a1, $a3, 0x0388           ## $a1 = 00000388
/* 018E0 80AC1F40 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 018E4 80AC1F44 11C0001F */  beq     $t6, $zero, .L80AC1FC4     
/* 018E8 80AC1F48 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 018EC 80AC1F4C A08F0381 */  sb      $t7, 0x0381($a0)           ## 00000381
/* 018F0 80AC1F50 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 018F4 80AC1F54 0C00D594 */  jal     func_80035650              
/* 018F8 80AC1F58 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 018FC 80AC1F5C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01900 80AC1F60 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01904 80AC1F64 90F800B1 */  lbu     $t8, 0x00B1($a3)           ## 000000B1
/* 01908 80AC1F68 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0190C 80AC1F6C 17000004 */  bne     $t8, $zero, .L80AC1F80     
/* 01910 80AC1F70 00000000 */  nop
/* 01914 80AC1F74 90F900B0 */  lbu     $t9, 0x00B0($a3)           ## 000000B0
/* 01918 80AC1F78 53200013 */  beql    $t9, $zero, .L80AC1FC8     
/* 0191C 80AC1F7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC1F80:
/* 01920 80AC1F80 0C00CB1F */  jal     func_80032C7C              
/* 01924 80AC1F84 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01928 80AC1F88 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 0192C 80AC1F8C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01930 80AC1F90 8CE80004 */  lw      $t0, 0x0004($a3)           ## 00000004
/* 01934 80AC1F94 90EA00B1 */  lbu     $t2, 0x00B1($a3)           ## 000000B1
/* 01938 80AC1F98 A0E000AF */  sb      $zero, 0x00AF($a3)         ## 000000AF
/* 0193C 80AC1F9C 01014824 */  and     $t1, $t0, $at              
/* 01940 80AC1FA0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01944 80AC1FA4 15410005 */  bne     $t2, $at, .L80AC1FBC       
/* 01948 80AC1FA8 ACE90004 */  sw      $t1, 0x0004($a3)           ## 00000004
/* 0194C 80AC1FAC 0C2B035F */  jal     func_80AC0D7C              
/* 01950 80AC1FB0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01954 80AC1FB4 10000004 */  beq     $zero, $zero, .L80AC1FC8   
/* 01958 80AC1FB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC1FBC:
/* 0195C 80AC1FBC 0C2B032B */  jal     func_80AC0CAC              
/* 01960 80AC1FC0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80AC1FC4:
/* 01964 80AC1FC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC1FC8:
/* 01968 80AC1FC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0196C 80AC1FCC 03E00008 */  jr      $ra                        
/* 01970 80AC1FD0 00000000 */  nop


