glabel ObjLightswitch_Draw
/* 012B8 80B97E58 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 012BC 80B97E5C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012C0 80B97E60 848301BC */  lh      $v1, 0x01BC($a0)           ## 000001BC
/* 012C4 80B97E64 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 012C8 80B97E68 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 012CC 80B97E6C 00031983 */  sra     $v1, $v1,  6               
/* 012D0 80B97E70 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 012D4 80B97E74 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 012D8 80B97E78 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 012DC 80B97E7C 15C1000B */  bne     $t6, $at, .L80B97EAC       
/* 012E0 80B97E80 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
/* 012E4 80B97E84 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 012E8 80B97E88 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 012EC 80B97E8C AFA30018 */  sw      $v1, 0x0018($sp)           
/* 012F0 80B97E90 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 012F4 80B97E94 0C018A29 */  jal     func_800628A4              
/* 012F8 80B97E98 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 012FC 80B97E9C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 01300 80B97EA0 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 01304 80B97EA4 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 01308 80B97EA8 84C2001C */  lh      $v0, 0x001C($a2)           ## 0000001C
.L80B97EAC:
/* 0130C 80B97EAC 00027903 */  sra     $t7, $v0,  4               
/* 01310 80B97EB0 31F80003 */  andi    $t8, $t7, 0x0003           ## $t8 = 00000000
/* 01314 80B97EB4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01318 80B97EB8 1701000A */  bne     $t8, $at, .L80B97EE4       
/* 0131C 80B97EBC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01320 80B97EC0 1C600003 */  bgtz    $v1, .L80B97ED0            
/* 01324 80B97EC4 286100FF */  slti    $at, $v1, 0x00FF           
/* 01328 80B97EC8 10200006 */  beq     $at, $zero, .L80B97EE4     
/* 0132C 80B97ECC 00000000 */  nop
.L80B97ED0:
/* 01330 80B97ED0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01334 80B97ED4 0C2E5ED4 */  jal     func_80B97B50              
/* 01338 80B97ED8 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0133C 80B97EDC 10000004 */  beq     $zero, $zero, .L80B97EF0   
/* 01340 80B97EE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B97EE4:
/* 01344 80B97EE4 0C2E5DF4 */  jal     func_80B977D0              
/* 01348 80B97EE8 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0134C 80B97EEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B97EF0:
/* 01350 80B97EF0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01354 80B97EF4 03E00008 */  jr      $ra                        
/* 01358 80B97EF8 00000000 */  nop
/* 0135C 80B97EFC 00000000 */  nop
