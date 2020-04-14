glabel func_80B8FD8C
/* 0130C 80B8FD8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01310 80B8FD90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01314 80B8FD94 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01318 80B8FD98 0C00BC65 */  jal     func_8002F194              
/* 0131C 80B8FD9C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01320 80B8FDA0 1040000F */  beq     $v0, $zero, .L80B8FDE0     
/* 01324 80B8FDA4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01328 80B8FDA8 0C00BCDA */  jal     func_8002F368              
/* 0132C 80B8FDAC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01330 80B8FDB0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01334 80B8FDB4 5441000F */  bnel    $v0, $at, .L80B8FDF4       
/* 01338 80B8FDB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0133C 80B8FDBC 0C2E3F80 */  jal     func_80B8FE00              
/* 01340 80B8FDC0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01344 80B8FDC4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 01348 80B8FDC8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0134C 80B8FDCC 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 01350 80B8FDD0 0C00B2DD */  jal     Flags_SetSwitch
              
/* 01354 80B8FDD4 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 01358 80B8FDD8 10000006 */  beq     $zero, $zero, .L80B8FDF4   
/* 0135C 80B8FDDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B8FDE0:
/* 01360 80B8FDE0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01364 80B8FDE4 3C064220 */  lui     $a2, 0x4220                ## $a2 = 42200000
/* 01368 80B8FDE8 0C00BCA6 */  jal     func_8002F298              
/* 0136C 80B8FDEC 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 01370 80B8FDF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B8FDF4:
/* 01374 80B8FDF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01378 80B8FDF8 03E00008 */  jr      $ra                        
/* 0137C 80B8FDFC 00000000 */  nop
