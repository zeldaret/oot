glabel func_809C9A7C
/* 00CBC 809C9A7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CC0 809C9A80 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00CC4 809C9A84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CC8 809C9A88 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00CCC 809C9A8C 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 00CD0 809C9A90 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00CD4 809C9A94 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00CD8 809C9A98 0C00FB14 */  jal     func_8003EC50              
/* 00CDC 809C9A9C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00CE0 809C9AA0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00CE4 809C9AA4 8CE201A8 */  lw      $v0, 0x01A8($a3)           ## 000001A8
/* 00CE8 809C9AA8 04410004 */  bgez    $v0, .L809C9ABC            
/* 00CEC 809C9AAC 28410028 */  slti    $at, $v0, 0x0028           
/* 00CF0 809C9AB0 244F0001 */  addiu   $t7, $v0, 0x0001           ## $t7 = 00000001
/* 00CF4 809C9AB4 10000018 */  beq     $zero, $zero, .L809C9B18   
/* 00CF8 809C9AB8 ACEF01A8 */  sw      $t7, 0x01A8($a3)           ## 000001A8
.L809C9ABC:
/* 00CFC 809C9ABC 10200008 */  beq     $at, $zero, .L809C9AE0     
/* 00D00 809C9AC0 3C013FA0 */  lui     $at, 0x3FA0                ## $at = 3FA00000
/* 00D04 809C9AC4 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.25
/* 00D08 809C9AC8 C4E40028 */  lwc1    $f4, 0x0028($a3)           ## 00000028
/* 00D0C 809C9ACC 24580001 */  addiu   $t8, $v0, 0x0001           ## $t8 = 00000001
/* 00D10 809C9AD0 ACF801A8 */  sw      $t8, 0x01A8($a3)           ## 000001A8
/* 00D14 809C9AD4 46062200 */  add.s   $f8, $f4, $f6              
/* 00D18 809C9AD8 1000000F */  beq     $zero, $zero, .L809C9B18   
/* 00D1C 809C9ADC E4E80028 */  swc1    $f8, 0x0028($a3)           ## 00000028
.L809C9AE0:
/* 00D20 809C9AE0 2841003C */  slti    $at, $v0, 0x003C           
/* 00D24 809C9AE4 10200009 */  beq     $at, $zero, .L809C9B0C     
/* 00D28 809C9AE8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00D2C 809C9AEC 90F901F7 */  lbu     $t9, 0x01F7($a3)           ## 000001F7
/* 00D30 809C9AF0 C4EA000C */  lwc1    $f10, 0x000C($a3)          ## 0000000C
/* 00D34 809C9AF4 24490001 */  addiu   $t1, $v0, 0x0001           ## $t1 = 00000001
/* 00D38 809C9AF8 2728000C */  addiu   $t0, $t9, 0x000C           ## $t0 = 0000000C
/* 00D3C 809C9AFC A0E801F7 */  sb      $t0, 0x01F7($a3)           ## 000001F7
/* 00D40 809C9B00 ACE901A8 */  sw      $t1, 0x01A8($a3)           ## 000001A8
/* 00D44 809C9B04 10000004 */  beq     $zero, $zero, .L809C9B18   
/* 00D48 809C9B08 E4EA0028 */  swc1    $f10, 0x0028($a3)          ## 00000028
.L809C9B0C:
/* 00D4C 809C9B0C 3C05809D */  lui     $a1, %hi(func_809C9B28)    ## $a1 = 809D0000
/* 00D50 809C9B10 0C272370 */  jal     func_809C8DC0              
/* 00D54 809C9B14 24A59B28 */  addiu   $a1, $a1, %lo(func_809C9B28) ## $a1 = 809C9B28
.L809C9B18:
/* 00D58 809C9B18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D5C 809C9B1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D60 809C9B20 03E00008 */  jr      $ra                        
/* 00D64 809C9B24 00000000 */  nop
