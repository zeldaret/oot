glabel func_80AF59E0
/* 00480 80AF59E0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00484 80AF59E4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00488 80AF59E8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0048C 80AF59EC 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 00490 80AF59F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00494 80AF59F4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00498 80AF59F8 10400006 */  beq     $v0, $zero, .L80AF5A14     
/* 0049C 80AF59FC 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 004A0 80AF5A00 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 004A4 80AF5A04 5041000A */  beql    $v0, $at, .L80AF5A30       
/* 004A8 80AF5A08 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 004AC 80AF5A0C 10000015 */  beq     $zero, $zero, .L80AF5A64   
/* 004B0 80AF5A10 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF5A14:
/* 004B4 80AF5A14 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 004B8 80AF5A18 0C00D3B0 */  jal     func_80034EC0              
/* 004BC 80AF5A1C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 004C0 80AF5A20 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 004C4 80AF5A24 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 004C8 80AF5A28 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 004CC 80AF5A2C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AF5A30:
/* 004D0 80AF5A30 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 004D4 80AF5A34 0C0295B2 */  jal     func_800A56C8              
/* 004D8 80AF5A38 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 004DC 80AF5A3C 10400008 */  beq     $v0, $zero, .L80AF5A60     
/* 004E0 80AF5A40 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 004E4 80AF5A44 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 004E8 80AF5A48 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 004EC 80AF5A4C 0C00D3B0 */  jal     func_80034EC0              
/* 004F0 80AF5A50 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 004F4 80AF5A54 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 004F8 80AF5A58 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 004FC 80AF5A5C A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AF5A60:
/* 00500 80AF5A60 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF5A64:
/* 00504 80AF5A64 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00508 80AF5A68 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0050C 80AF5A6C 03E00008 */  jr      $ra                        
/* 00510 80AF5A70 00000000 */  nop


