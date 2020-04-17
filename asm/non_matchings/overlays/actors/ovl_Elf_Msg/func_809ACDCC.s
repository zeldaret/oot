glabel func_809ACDCC
/* 002AC 809ACDCC 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 002B0 809ACDD0 2418FF00 */  addiu   $t8, $zero, 0xFF00         ## $t8 = FFFFFF00
/* 002B4 809ACDD4 306E8000 */  andi    $t6, $v1, 0x8000           ## $t6 = 00000000
/* 002B8 809ACDD8 11C00004 */  beq     $t6, $zero, .L809ACDEC     
/* 002BC 809ACDDC 306F00FF */  andi    $t7, $v1, 0x00FF           ## $t7 = 00000000
/* 002C0 809ACDE0 306200FF */  andi    $v0, $v1, 0x00FF           ## $v0 = 00000000
/* 002C4 809ACDE4 03E00008 */  jr      $ra                        
/* 002C8 809ACDE8 24420100 */  addiu   $v0, $v0, 0x0100           ## $v0 = 00000100
.L809ACDEC:
/* 002CC 809ACDEC 030F1023 */  subu    $v0, $t8, $t7              
/* 002D0 809ACDF0 03E00008 */  jr      $ra                        
/* 002D4 809ACDF4 00000000 */  nop
