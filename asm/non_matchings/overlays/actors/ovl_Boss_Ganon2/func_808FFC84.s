glabel func_808FFC84
/* 02D44 808FFC84 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 02D48 808FFC88 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 02D4C 808FFC8C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 02D50 808FFC90 01CF1023 */  subu    $v0, $t6, $t7              
/* 02D54 808FFC94 00021400 */  sll     $v0, $v0, 16               
/* 02D58 808FFC98 00021403 */  sra     $v0, $v0, 16               
/* 02D5C 808FFC9C 04400003 */  bltz    $v0, .L808FFCAC            
/* 02D60 808FFCA0 00021823 */  subu    $v1, $zero, $v0            
/* 02D64 808FFCA4 10000001 */  beq     $zero, $zero, .L808FFCAC   
/* 02D68 808FFCA8 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L808FFCAC:
/* 02D6C 808FFCAC 28612800 */  slti    $at, $v1, 0x2800           
/* 02D70 808FFCB0 5020000A */  beql    $at, $zero, .L808FFCDC     
/* 02D74 808FFCB4 8C8A01C4 */  lw      $t2, 0x01C4($a0)           ## 000001C4
/* 02D78 808FFCB8 8C8801B8 */  lw      $t0, 0x01B8($a0)           ## 000001B8
/* 02D7C 808FFCBC 8C9901BC */  lw      $t9, 0x01BC($a0)           ## 000001BC
/* 02D80 808FFCC0 A0980313 */  sb      $t8, 0x0313($a0)           ## 00000313
/* 02D84 808FFCC4 AC880038 */  sw      $t0, 0x0038($a0)           ## 00000038
/* 02D88 808FFCC8 8C8801C0 */  lw      $t0, 0x01C0($a0)           ## 000001C0
/* 02D8C 808FFCCC AC99003C */  sw      $t9, 0x003C($a0)           ## 0000003C
/* 02D90 808FFCD0 03E00008 */  jr      $ra                        
/* 02D94 808FFCD4 AC880040 */  sw      $t0, 0x0040($a0)           ## 00000040
.L808FFCD8:
/* 02D98 808FFCD8 8C8A01C4 */  lw      $t2, 0x01C4($a0)           ## 000001C4
.L808FFCDC:
/* 02D9C 808FFCDC 8C8901C8 */  lw      $t1, 0x01C8($a0)           ## 000001C8
/* 02DA0 808FFCE0 A0800313 */  sb      $zero, 0x0313($a0)         ## 00000313
/* 02DA4 808FFCE4 AC8A0038 */  sw      $t2, 0x0038($a0)           ## 00000038
/* 02DA8 808FFCE8 8C8A01CC */  lw      $t2, 0x01CC($a0)           ## 000001CC
/* 02DAC 808FFCEC AC89003C */  sw      $t1, 0x003C($a0)           ## 0000003C
/* 02DB0 808FFCF0 AC8A0040 */  sw      $t2, 0x0040($a0)           ## 00000040
/* 02DB4 808FFCF4 03E00008 */  jr      $ra                        
/* 02DB8 808FFCF8 00000000 */  nop


