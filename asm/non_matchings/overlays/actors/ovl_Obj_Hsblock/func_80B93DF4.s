glabel func_80B93DF4
/* 00294 80B93DF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00298 80B93DF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0029C 80B93DFC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 002A0 80B93E00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002A4 80B93E04 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002A8 80B93E08 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 002AC 80B93E0C 00052A03 */  sra     $a1, $a1,  8               
/* 002B0 80B93E10 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 002B4 80B93E14 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 002B8 80B93E18 50400004 */  beql    $v0, $zero, .L80B93E2C     
/* 002BC 80B93E1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002C0 80B93E20 0C2E4F8E */  jal     func_80B93E38              
/* 002C4 80B93E24 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 002C8 80B93E28 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B93E2C:
/* 002CC 80B93E2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002D0 80B93E30 03E00008 */  jr      $ra                        
/* 002D4 80B93E34 00000000 */  nop


