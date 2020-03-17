glabel func_80B03F48
/* 01CD8 80B03F48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01CDC 80B03F4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01CE0 80B03F50 948205CA */  lhu     $v0, 0x05CA($a0)           ## 000005CA
/* 01CE4 80B03F54 304E0010 */  andi    $t6, $v0, 0x0010           ## $t6 = 00000000
/* 01CE8 80B03F58 51C00013 */  beql    $t6, $zero, .L80B03FA8     
/* 01CEC 80B03F5C 8488052A */  lh      $t0, 0x052A($a0)           ## 0000052A
/* 01CF0 80B03F60 848F052A */  lh      $t7, 0x052A($a0)           ## 0000052A
/* 01CF4 80B03F64 55E0001F */  bnel    $t7, $zero, .L80B03FE4     
/* 01CF8 80B03F68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CFC 80B03F6C 8499001C */  lh      $t9, 0x001C($a0)           ## 0000001C
/* 01D00 80B03F70 3058FFEF */  andi    $t8, $v0, 0xFFEF           ## $t8 = 00000000
/* 01D04 80B03F74 A49805CA */  sh      $t8, 0x05CA($a0)           ## 000005CA
/* 01D08 80B03F78 13200006 */  beq     $t9, $zero, .L80B03F94     
/* 01D0C 80B03F7C 3C053F40 */  lui     $a1, 0x3F40                ## $a1 = 3F400000
/* 01D10 80B03F80 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 01D14 80B03F84 0C2C0A53 */  jal     func_80B0294C              
/* 01D18 80B03F88 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01D1C 80B03F8C 10000015 */  beq     $zero, $zero, .L80B03FE4   
/* 01D20 80B03F90 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B03F94:
/* 01D24 80B03F94 0C2C0A53 */  jal     func_80B0294C              
/* 01D28 80B03F98 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01D2C 80B03F9C 10000011 */  beq     $zero, $zero, .L80B03FE4   
/* 01D30 80B03FA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01D34 80B03FA4 8488052A */  lh      $t0, 0x052A($a0)           ## 0000052A
.L80B03FA8:
/* 01D38 80B03FA8 5100000E */  beql    $t0, $zero, .L80B03FE4     
/* 01D3C 80B03FAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01D40 80B03FB0 848A001C */  lh      $t2, 0x001C($a0)           ## 0000001C
/* 01D44 80B03FB4 34490010 */  ori     $t1, $v0, 0x0010           ## $t1 = 00000010
/* 01D48 80B03FB8 A48905CA */  sh      $t1, 0x05CA($a0)           ## 000005CA
/* 01D4C 80B03FBC 11400006 */  beq     $t2, $zero, .L80B03FD8     
/* 01D50 80B03FC0 3C053F40 */  lui     $a1, 0x3F40                ## $a1 = 3F400000
/* 01D54 80B03FC4 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 01D58 80B03FC8 0C2C0A53 */  jal     func_80B0294C              
/* 01D5C 80B03FCC 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 01D60 80B03FD0 10000004 */  beq     $zero, $zero, .L80B03FE4   
/* 01D64 80B03FD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B03FD8:
/* 01D68 80B03FD8 0C2C0A53 */  jal     func_80B0294C              
/* 01D6C 80B03FDC 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 01D70 80B03FE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B03FE4:
/* 01D74 80B03FE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01D78 80B03FE8 03E00008 */  jr      $ra                        
/* 01D7C 80B03FEC 00000000 */  nop


