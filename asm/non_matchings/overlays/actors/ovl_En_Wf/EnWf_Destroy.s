glabel EnWf_Destroy
/* 00238 80B33EE8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0023C 80B33EEC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00240 80B33EF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00244 80B33EF4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00248 80B33EF8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0024C 80B33EFC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00250 80B33F00 0C016F32 */  jal     func_8005BCC8              
/* 00254 80B33F04 26050304 */  addiu   $a1, $s0, 0x0304           ## $a1 = 00000304
/* 00258 80B33F08 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0025C 80B33F0C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00260 80B33F10 26050424 */  addiu   $a1, $s0, 0x0424           ## $a1 = 00000424
/* 00264 80B33F14 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00268 80B33F18 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0026C 80B33F1C 26050470 */  addiu   $a1, $s0, 0x0470           ## $a1 = 00000470
/* 00270 80B33F20 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00274 80B33F24 51C00008 */  beql    $t6, $zero, .L80B33F48     
/* 00278 80B33F28 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
/* 0027C 80B33F2C 860F02FC */  lh      $t7, 0x02FC($s0)           ## 000002FC
/* 00280 80B33F30 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00284 80B33F34 51E10004 */  beql    $t7, $at, .L80B33F48       
/* 00288 80B33F38 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
/* 0028C 80B33F3C 0C03D6D6 */  jal     func_800F5B58              
/* 00290 80B33F40 00000000 */  nop
/* 00294 80B33F44 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
.L80B33F48:
/* 00298 80B33F48 50600015 */  beql    $v1, $zero, .L80B33FA0     
/* 0029C 80B33F4C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002A0 80B33F50 8C780130 */  lw      $t8, 0x0130($v1)           ## 00000130
/* 002A4 80B33F54 3C0480B3 */  lui     $a0, %hi(D_80B37B20)       ## $a0 = 80B30000
/* 002A8 80B33F58 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 002AC 80B33F5C 1300000F */  beq     $t8, $zero, .L80B33F9C     
/* 002B0 80B33F60 24847B20 */  addiu   $a0, $a0, %lo(D_80B37B20)  ## $a0 = 80B37B20
/* 002B4 80B33F64 84630152 */  lh      $v1, 0x0152($v1)           ## 00000152
/* 002B8 80B33F68 18600002 */  blez    $v1, .L80B33F74            
/* 002BC 80B33F6C 2479FFFF */  addiu   $t9, $v1, 0xFFFF           ## $t9 = FFFFFFFF
/* 002C0 80B33F70 A4590152 */  sh      $t9, 0x0152($v0)           ## 00000152
.L80B33F74:
/* 002C4 80B33F74 0C00084C */  jal     osSyncPrintf
              
/* 002C8 80B33F78 AFA20020 */  sw      $v0, 0x0020($sp)           
/* 002CC 80B33F7C 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 002D0 80B33F80 3C0480B3 */  lui     $a0, %hi(D_80B37B24)       ## $a0 = 80B30000
/* 002D4 80B33F84 24847B24 */  addiu   $a0, $a0, %lo(D_80B37B24)  ## $a0 = 80B37B24
/* 002D8 80B33F88 0C00084C */  jal     osSyncPrintf
              
/* 002DC 80B33F8C 84450152 */  lh      $a1, 0x0152($v0)           ## 00000152
/* 002E0 80B33F90 3C0480B3 */  lui     $a0, %hi(D_80B37B50)       ## $a0 = 80B30000
/* 002E4 80B33F94 0C00084C */  jal     osSyncPrintf
              
/* 002E8 80B33F98 24847B50 */  addiu   $a0, $a0, %lo(D_80B37B50)  ## $a0 = 80B37B50
.L80B33F9C:
/* 002EC 80B33F9C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B33FA0:
/* 002F0 80B33FA0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 002F4 80B33FA4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 002F8 80B33FA8 03E00008 */  jr      $ra                        
/* 002FC 80B33FAC 00000000 */  nop


