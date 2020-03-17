glabel func_808C0C98
/* 00078 808C0C98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0007C 808C0C9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00080 808C0CA0 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00084 808C0CA4 8485001C */  lh      $a1, 0x001C($a0)           ## 0000001C
/* 00088 808C0CA8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0008C 808C0CAC 00052A03 */  sra     $a1, $a1,  8               
/* 00090 808C0CB0 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00094 808C0CB4 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 00000000
/* 00098 808C0CB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0009C 808C0CBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000A0 808C0CC0 03E00008 */  jr      $ra                        
/* 000A4 808C0CC4 00000000 */  nop


