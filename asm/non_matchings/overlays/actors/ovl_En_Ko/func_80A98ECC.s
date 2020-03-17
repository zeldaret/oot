glabel func_80A98ECC
/* 0211C 80A98ECC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02120 80A98ED0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02124 80A98ED4 84AE00A4 */  lh      $t6, 0x00A4($a1)           ## 000000A4
/* 02128 80A98ED8 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
/* 0212C 80A98EDC 55C1000B */  bnel    $t6, $at, .L80A98F0C       
/* 02130 80A98EE0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02134 80A98EE4 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 02138 80A98EE8 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 0213C 80A98EEC 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 02140 80A98EF0 57010006 */  bnel    $t8, $at, .L80A98F0C       
/* 02144 80A98EF4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02148 80A98EF8 0C2A5F86 */  jal     func_80A97E18              
/* 0214C 80A98EFC 00000000 */  nop
/* 02150 80A98F00 10000021 */  beq     $zero, $zero, .L80A98F88   
/* 02154 80A98F04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02158 80A98F08 AFA40018 */  sw      $a0, 0x0018($sp)           
.L80A98F0C:
/* 0215C 80A98F0C 0C2A5ECE */  jal     func_80A97B38              
/* 02160 80A98F10 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02164 80A98F14 2C410005 */  sltiu   $at, $v0, 0x0005           
/* 02168 80A98F18 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0216C 80A98F1C 10200019 */  beq     $at, $zero, .L80A98F84     
/* 02170 80A98F20 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02174 80A98F24 0002C880 */  sll     $t9, $v0,  2               
/* 02178 80A98F28 3C0180AA */  lui     $at, %hi(jtbl_80A9A9AC)       ## $at = 80AA0000
/* 0217C 80A98F2C 00390821 */  addu    $at, $at, $t9              
/* 02180 80A98F30 8C39A9AC */  lw      $t9, %lo(jtbl_80A9A9AC)($at)  
/* 02184 80A98F34 03200008 */  jr      $t9                        
/* 02188 80A98F38 00000000 */  nop
glabel L80A98F3C
/* 0218C 80A98F3C 0C2A6095 */  jal     func_80A98254              
/* 02190 80A98F40 00000000 */  nop
/* 02194 80A98F44 10000010 */  beq     $zero, $zero, .L80A98F88   
/* 02198 80A98F48 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98F4C
/* 0219C 80A98F4C 0C2A60D7 */  jal     func_80A9835C              
/* 021A0 80A98F50 00000000 */  nop
/* 021A4 80A98F54 1000000C */  beq     $zero, $zero, .L80A98F88   
/* 021A8 80A98F58 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98F5C
/* 021AC 80A98F5C 0C2A6119 */  jal     func_80A98464              
/* 021B0 80A98F60 00000000 */  nop
/* 021B4 80A98F64 10000008 */  beq     $zero, $zero, .L80A98F88   
/* 021B8 80A98F68 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98F6C
/* 021BC 80A98F6C 0C2A615B */  jal     func_80A9856C              
/* 021C0 80A98F70 00000000 */  nop
/* 021C4 80A98F74 10000004 */  beq     $zero, $zero, .L80A98F88   
/* 021C8 80A98F78 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98F7C
/* 021CC 80A98F7C 0C2A619D */  jal     func_80A98674              
/* 021D0 80A98F80 00000000 */  nop
.L80A98F84:
/* 021D4 80A98F84 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A98F88:
/* 021D8 80A98F88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 021DC 80A98F8C 03E00008 */  jr      $ra                        
/* 021E0 80A98F90 00000000 */  nop


