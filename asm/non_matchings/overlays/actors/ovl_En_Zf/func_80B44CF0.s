glabel func_80B44CF0
/* 00CA0 80B44CF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CA4 80B44CF4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CA8 80B44CF8 84AE001C */  lh      $t6, 0x001C($a1)           ## 0000001C
/* 00CAC 80B44CFC 8C831C44 */  lw      $v1, 0x1C44($a0)           ## 00001C44
/* 00CB0 80B44D00 05C2000A */  bltzl   $t6, .L80B44D2C            
/* 00CB4 80B44D04 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 00CB8 80B44D08 8C6F067C */  lw      $t7, 0x067C($v1)           ## 0000067C
/* 00CBC 80B44D0C 31F86000 */  andi    $t8, $t7, 0x6000           ## $t8 = 00000000
/* 00CC0 80B44D10 13000003 */  beq     $t8, $zero, .L80B44D20     
/* 00CC4 80B44D14 00000000 */  nop
/* 00CC8 80B44D18 10000026 */  beq     $zero, $zero, .L80B44DB4   
/* 00CCC 80B44D1C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B44D20:
/* 00CD0 80B44D20 10000024 */  beq     $zero, $zero, .L80B44DB4   
/* 00CD4 80B44D24 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00CD8 80B44D28 AFA30018 */  sw      $v1, 0x0018($sp)           
.L80B44D2C:
/* 00CDC 80B44D2C 0C00CEAE */  jal     func_80033AB8              
/* 00CE0 80B44D30 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CE4 80B44D34 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 00CE8 80B44D38 14400003 */  bne     $v0, $zero, .L80B44D48     
/* 00CEC 80B44D3C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00CF0 80B44D40 1000001C */  beq     $zero, $zero, .L80B44DB4   
/* 00CF4 80B44D44 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B44D48:
/* 00CF8 80B44D48 84B9001C */  lh      $t9, 0x001C($a1)           ## 0000001C
/* 00CFC 80B44D4C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00D00 80B44D50 57210018 */  bnel    $t9, $at, .L80B44DB4       
/* 00D04 80B44D54 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00D08 80B44D58 8C620664 */  lw      $v0, 0x0664($v1)           ## 00000664
/* 00D0C 80B44D5C 54400004 */  bnel    $v0, $zero, .L80B44D70     
/* 00D10 80B44D60 90480002 */  lbu     $t0, 0x0002($v0)           ## 00000002
/* 00D14 80B44D64 10000013 */  beq     $zero, $zero, .L80B44DB4   
/* 00D18 80B44D68 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00D1C 80B44D6C 90480002 */  lbu     $t0, 0x0002($v0)           ## 00000002
.L80B44D70:
/* 00D20 80B44D70 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00D24 80B44D74 51010004 */  beql    $t0, $at, .L80B44D88       
/* 00D28 80B44D78 84490000 */  lh      $t1, 0x0000($v0)           ## 00000000
/* 00D2C 80B44D7C 1000000D */  beq     $zero, $zero, .L80B44DB4   
/* 00D30 80B44D80 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00D34 80B44D84 84490000 */  lh      $t1, 0x0000($v0)           ## 00000001
.L80B44D88:
/* 00D38 80B44D88 24010025 */  addiu   $at, $zero, 0x0025         ## $at = 00000025
/* 00D3C 80B44D8C 51210004 */  beql    $t1, $at, .L80B44DA0       
/* 00D40 80B44D90 904A0114 */  lbu     $t2, 0x0114($v0)           ## 00000115
/* 00D44 80B44D94 10000007 */  beq     $zero, $zero, .L80B44DB4   
/* 00D48 80B44D98 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00D4C 80B44D9C 904A0114 */  lbu     $t2, 0x0114($v0)           ## 00000114
.L80B44DA0:
/* 00D50 80B44DA0 51400004 */  beql    $t2, $zero, .L80B44DB4     
/* 00D54 80B44DA4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00D58 80B44DA8 10000002 */  beq     $zero, $zero, .L80B44DB4   
/* 00D5C 80B44DAC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00D60 80B44DB0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B44DB4:
/* 00D64 80B44DB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D68 80B44DB8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D6C 80B44DBC 03E00008 */  jr      $ra                        
/* 00D70 80B44DC0 00000000 */  nop


