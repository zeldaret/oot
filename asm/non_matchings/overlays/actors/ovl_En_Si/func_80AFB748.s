glabel func_80AFB748
/* 000B8 80AFB748 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 000BC 80AFB74C 90820161 */  lbu     $v0, 0x0161($a0)           ## 00000161
/* 000C0 80AFB750 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 000C4 80AFB754 11C00002 */  beq     $t6, $zero, .L80AFB760     
/* 000C8 80AFB758 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 000CC 80AFB75C A08F0161 */  sb      $t7, 0x0161($a0)           ## 00000161
.L80AFB760:
/* 000D0 80AFB760 03E00008 */  jr      $ra                        
/* 000D4 80AFB764 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


