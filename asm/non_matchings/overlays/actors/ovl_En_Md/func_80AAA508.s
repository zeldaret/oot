glabel func_80AAA508
/* 002B8 80AAA508 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 002BC 80AAA50C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002C0 80AAA510 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 002C4 80AAA514 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 002C8 80AAA518 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002CC 80AAA51C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 002D0 80AAA520 10400006 */  beq     $v0, $zero, .L80AAA53C     
/* 002D4 80AAA524 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 002D8 80AAA528 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002DC 80AAA52C 5041000C */  beql    $v0, $at, .L80AAA560       
/* 002E0 80AAA530 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 002E4 80AAA534 10000017 */  beq     $zero, $zero, .L80AAA594   
/* 002E8 80AAA538 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA53C:
/* 002EC 80AAA53C 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 002F0 80AAA540 0C00D3B0 */  jal     func_80034EC0              
/* 002F4 80AAA544 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 002F8 80AAA548 0C2AA894 */  jal     func_80AAA250              
/* 002FC 80AAA54C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00300 80AAA550 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 00304 80AAA554 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00308 80AAA558 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 0030C 80AAA55C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AAA560:
/* 00310 80AAA560 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 00314 80AAA564 0C0295B2 */  jal     func_800A56C8              
/* 00318 80AAA568 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0031C 80AAA56C 10400008 */  beq     $v0, $zero, .L80AAA590     
/* 00320 80AAA570 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00324 80AAA574 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 00328 80AAA578 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 0032C 80AAA57C 0C00D3B0 */  jal     func_80034EC0              
/* 00330 80AAA580 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00334 80AAA584 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 00338 80AAA588 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 0033C 80AAA58C A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AAA590:
/* 00340 80AAA590 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA594:
/* 00344 80AAA594 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00348 80AAA598 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0034C 80AAA59C 03E00008 */  jr      $ra                        
/* 00350 80AAA5A0 00000000 */  nop
