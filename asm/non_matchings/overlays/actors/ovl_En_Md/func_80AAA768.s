glabel func_80AAA768
/* 00518 80AAA768 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0051C 80AAA76C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00520 80AAA770 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00524 80AAA774 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 00528 80AAA778 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0052C 80AAA77C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00530 80AAA780 10400006 */  beq     $v0, $zero, .L80AAA79C     
/* 00534 80AAA784 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 00538 80AAA788 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0053C 80AAA78C 5041000A */  beql    $v0, $at, .L80AAA7B8       
/* 00540 80AAA790 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00544 80AAA794 10000015 */  beq     $zero, $zero, .L80AAA7EC   
/* 00548 80AAA798 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA79C:
/* 0054C 80AAA79C 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 00550 80AAA7A0 0C00D3B0 */  jal     func_80034EC0              
/* 00554 80AAA7A4 2406000C */  addiu   $a2, $zero, 0x000C         ## $a2 = 0000000C
/* 00558 80AAA7A8 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 0055C 80AAA7AC 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00560 80AAA7B0 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 00564 80AAA7B4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AAA7B8:
/* 00568 80AAA7B8 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 0056C 80AAA7BC 0C0295B2 */  jal     func_800A56C8              
/* 00570 80AAA7C0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00574 80AAA7C4 10400008 */  beq     $v0, $zero, .L80AAA7E8     
/* 00578 80AAA7C8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0057C 80AAA7CC 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 00580 80AAA7D0 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 00584 80AAA7D4 0C00D3B0 */  jal     func_80034EC0              
/* 00588 80AAA7D8 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 0058C 80AAA7DC 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 00590 80AAA7E0 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00594 80AAA7E4 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AAA7E8:
/* 00598 80AAA7E8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA7EC:
/* 0059C 80AAA7EC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 005A0 80AAA7F0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 005A4 80AAA7F4 03E00008 */  jr      $ra                        
/* 005A8 80AAA7F8 00000000 */  nop
