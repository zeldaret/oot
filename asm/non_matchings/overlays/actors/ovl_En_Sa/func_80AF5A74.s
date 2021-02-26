glabel func_80AF5A74
/* 00514 80AF5A74 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00518 80AF5A78 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0051C 80AF5A7C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00520 80AF5A80 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 00524 80AF5A84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00528 80AF5A88 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0052C 80AF5A8C 10400006 */  beq     $v0, $zero, .L80AF5AA8     
/* 00530 80AF5A90 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 00534 80AF5A94 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00538 80AF5A98 5041000C */  beql    $v0, $at, .L80AF5ACC       
/* 0053C 80AF5A9C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00540 80AF5AA0 10000017 */  beq     $zero, $zero, .L80AF5B00   
/* 00544 80AF5AA4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF5AA8:
/* 00548 80AF5AA8 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 0054C 80AF5AAC 0C00D3B0 */  jal     func_80034EC0              
/* 00550 80AF5AB0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00554 80AF5AB4 0C2BD625 */  jal     func_80AF5894              
/* 00558 80AF5AB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0055C 80AF5ABC 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 00560 80AF5AC0 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00564 80AF5AC4 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 00568 80AF5AC8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AF5ACC:
/* 0056C 80AF5ACC 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 00570 80AF5AD0 0C0295B2 */  jal     Animation_OnFrame              
/* 00574 80AF5AD4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00578 80AF5AD8 10400008 */  beq     $v0, $zero, .L80AF5AFC     
/* 0057C 80AF5ADC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00580 80AF5AE0 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 00584 80AF5AE4 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 00588 80AF5AE8 0C00D3B0 */  jal     func_80034EC0              
/* 0058C 80AF5AEC 24060009 */  addiu   $a2, $zero, 0x0009         ## $a2 = 00000009
/* 00590 80AF5AF0 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 00594 80AF5AF4 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00598 80AF5AF8 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AF5AFC:
/* 0059C 80AF5AFC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF5B00:
/* 005A0 80AF5B00 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 005A4 80AF5B04 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 005A8 80AF5B08 03E00008 */  jr      $ra                        
/* 005AC 80AF5B0C 00000000 */  nop
