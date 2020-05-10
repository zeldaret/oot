glabel func_809C988C
/* 00ACC 809C988C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AD0 809C9890 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AD4 809C9894 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00AD8 809C9898 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00ADC 809C989C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00AE0 809C98A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AE4 809C98A4 3042001F */  andi    $v0, $v0, 0x001F           ## $v0 = 00000000
/* 00AE8 809C98A8 28410014 */  slti    $at, $v0, 0x0014           
/* 00AEC 809C98AC 14200005 */  bne     $at, $zero, .L809C98C4     
/* 00AF0 809C98B0 28410020 */  slti    $at, $v0, 0x0020           
/* 00AF4 809C98B4 50200004 */  beql    $at, $zero, .L809C98C8     
/* 00AF8 809C98B8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00AFC 809C98BC 0C00BD7C */  jal     func_8002F5F0              
/* 00B00 809C98C0 00000000 */  nop
.L809C98C4:
/* 00B04 809C98C4 8FA40024 */  lw      $a0, 0x0024($sp)           
.L809C98C8:
/* 00B08 809C98C8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00B0C 809C98CC 920501F8 */  lbu     $a1, 0x01F8($s0)           ## 000001F8
/* 00B10 809C98D0 10400009 */  beq     $v0, $zero, .L809C98F8     
/* 00B14 809C98D4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00B18 809C98D8 0C020120 */  jal     func_80080480              
/* 00B1C 809C98DC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B20 809C98E0 3C05809D */  lui     $a1, %hi(func_809C99C4)    ## $a1 = 809D0000
/* 00B24 809C98E4 24A599C4 */  addiu   $a1, $a1, %lo(func_809C99C4) ## $a1 = 809C99C4
/* 00B28 809C98E8 0C272370 */  jal     func_809C8DC0              
/* 00B2C 809C98EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B30 809C98F0 240EFFE2 */  addiu   $t6, $zero, 0xFFE2         ## $t6 = FFFFFFE2
/* 00B34 809C98F4 AE0E01A8 */  sw      $t6, 0x01A8($s0)           ## 000001A8
.L809C98F8:
/* 00B38 809C98F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B3C 809C98FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00B40 809C9900 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B44 809C9904 03E00008 */  jr      $ra                        
/* 00B48 809C9908 00000000 */  nop
