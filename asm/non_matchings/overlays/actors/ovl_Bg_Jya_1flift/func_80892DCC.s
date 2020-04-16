glabel func_80892DCC
/* 0026C 80892DCC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00270 80892DD0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00274 80892DD4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00278 80892DD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0027C 80892DDC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00280 80892DE0 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 00284 80892DE4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00288 80892DE8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0028C 80892DEC 50400004 */  beql    $v0, $zero, .L80892E00     
/* 00290 80892DF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00294 80892DF4 0C224B8D */  jal     func_80892E34              
/* 00298 80892DF8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0029C 80892DFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80892E00:
/* 002A0 80892E00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002A4 80892E04 03E00008 */  jr      $ra                        
/* 002A8 80892E08 00000000 */  nop
