glabel func_80AAA308
/* 000B8 80AAA308 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 000BC 80AAA30C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 000C0 80AAA310 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 000C4 80AAA314 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 000C8 80AAA318 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000CC 80AAA31C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 000D0 80AAA320 10400006 */  beq     $v0, $zero, .L80AAA33C     
/* 000D4 80AAA324 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 000D8 80AAA328 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 000DC 80AAA32C 5041000A */  beql    $v0, $at, .L80AAA358       
/* 000E0 80AAA330 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 000E4 80AAA334 10000015 */  beq     $zero, $zero, .L80AAA38C   
/* 000E8 80AAA338 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA33C:
/* 000EC 80AAA33C 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 000F0 80AAA340 0C00D3B0 */  jal     func_80034EC0              
/* 000F4 80AAA344 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 000F8 80AAA348 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 000FC 80AAA34C 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00100 80AAA350 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 00104 80AAA354 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AAA358:
/* 00108 80AAA358 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 0010C 80AAA35C 0C0295B2 */  jal     func_800A56C8              
/* 00110 80AAA360 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00114 80AAA364 10400008 */  beq     $v0, $zero, .L80AAA388     
/* 00118 80AAA368 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0011C 80AAA36C 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 00120 80AAA370 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 00124 80AAA374 0C00D3B0 */  jal     func_80034EC0              
/* 00128 80AAA378 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0012C 80AAA37C 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 00130 80AAA380 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00134 80AAA384 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AAA388:
/* 00138 80AAA388 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA38C:
/* 0013C 80AAA38C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00140 80AAA390 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00144 80AAA394 03E00008 */  jr      $ra                        
/* 00148 80AAA398 00000000 */  nop


