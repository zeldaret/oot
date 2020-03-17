glabel func_80B57EAC
/* 04AFC 80B57EAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04B00 80B57EB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04B04 80B57EB4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04B08 80B57EB8 0C2D5CC9 */  jal     func_80B57324              
/* 04B0C 80B57EBC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04B10 80B57EC0 10400004 */  beq     $v0, $zero, .L80B57ED4     
/* 04B14 80B57EC4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04B18 80B57EC8 240E001A */  addiu   $t6, $zero, 0x001A         ## $t6 = 0000001A
/* 04B1C 80B57ECC 10000003 */  beq     $zero, $zero, .L80B57EDC   
/* 04B20 80B57ED0 AC8E024C */  sw      $t6, 0x024C($a0)           ## 0000024C
.L80B57ED4:
/* 04B24 80B57ED4 0C2D5CD4 */  jal     func_80B57350              
/* 04B28 80B57ED8 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80B57EDC:
/* 04B2C 80B57EDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04B30 80B57EE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04B34 80B57EE4 03E00008 */  jr      $ra                        
/* 04B38 80B57EE8 00000000 */  nop


