glabel func_80885434
/* 00294 80885434 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00298 80885438 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0029C 8088543C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002A0 80885440 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 002A4 80885444 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 002A8 80885448 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002AC 8088544C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 002B0 80885450 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 002B4 80885454 1040001F */  beq     $v0, $zero, .L808854D4     
/* 002B8 80885458 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 002BC 8088545C 92020150 */  lbu     $v0, 0x0150($s0)           ## 00000150
/* 002C0 80885460 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002C4 80885464 3C0E8088 */  lui     $t6, %hi(func_808854E8)    ## $t6 = 80880000
/* 002C8 80885468 1441000A */  bne     $v0, $at, .L80885494       
/* 002CC 8088546C 25CE54E8 */  addiu   $t6, $t6, %lo(func_808854E8) ## $t6 = 808854E8
/* 002D0 80885470 AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
/* 002D4 80885474 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 002D8 80885478 24050D16 */  addiu   $a1, $zero, 0x0D16         ## $a1 = 00000D16
/* 002DC 8088547C 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 002E0 80885480 0C02003E */  jal     func_800800F8              
/* 002E4 80885484 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 002E8 80885488 240F0032 */  addiu   $t7, $zero, 0x0032         ## $t7 = 00000032
/* 002EC 8088548C 10000011 */  beq     $zero, $zero, .L808854D4   
/* 002F0 80885490 A60F0154 */  sh      $t7, 0x0154($s0)           ## 00000154
.L80885494:
/* 002F4 80885494 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 002F8 80885498 1441000C */  bne     $v0, $at, .L808854CC       
/* 002FC 8088549C 3C088088 */  lui     $t0, %hi(func_80885604)    ## $t0 = 80880000
/* 00300 808854A0 3C188088 */  lui     $t8, %hi(func_808854E8)    ## $t8 = 80880000
/* 00304 808854A4 271854E8 */  addiu   $t8, $t8, %lo(func_808854E8) ## $t8 = 808854E8
/* 00308 808854A8 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
/* 0030C 808854AC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00310 808854B0 24050D20 */  addiu   $a1, $zero, 0x0D20         ## $a1 = 00000D20
/* 00314 808854B4 2406003C */  addiu   $a2, $zero, 0x003C         ## $a2 = 0000003C
/* 00318 808854B8 0C02003E */  jal     func_800800F8              
/* 0031C 808854BC 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00320 808854C0 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 00324 808854C4 10000003 */  beq     $zero, $zero, .L808854D4   
/* 00328 808854C8 A6190154 */  sh      $t9, 0x0154($s0)           ## 00000154
.L808854CC:
/* 0032C 808854CC 25085604 */  addiu   $t0, $t0, %lo(func_80885604) ## $t0 = 00005604
/* 00330 808854D0 AE08014C */  sw      $t0, 0x014C($s0)           ## 0000014C
.L808854D4:
/* 00334 808854D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00338 808854D8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0033C 808854DC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00340 808854E0 03E00008 */  jr      $ra                        
/* 00344 808854E4 00000000 */  nop
