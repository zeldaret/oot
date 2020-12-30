glabel func_80AF5C40
/* 006E0 80AF5C40 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 006E4 80AF5C44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 006E8 80AF5C48 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 006EC 80AF5C4C 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 006F0 80AF5C50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006F4 80AF5C54 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 006F8 80AF5C58 10400006 */  beq     $v0, $zero, .L80AF5C74     
/* 006FC 80AF5C5C 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 00700 80AF5C60 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00704 80AF5C64 5041000A */  beql    $v0, $at, .L80AF5C90       
/* 00708 80AF5C68 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0070C 80AF5C6C 10000015 */  beq     $zero, $zero, .L80AF5CC4   
/* 00710 80AF5C70 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF5C74:
/* 00714 80AF5C74 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 00718 80AF5C78 0C00D3B0 */  jal     func_80034EC0              
/* 0071C 80AF5C7C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00720 80AF5C80 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 00724 80AF5C84 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00728 80AF5C88 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 0072C 80AF5C8C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AF5C90:
/* 00730 80AF5C90 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 00734 80AF5C94 0C0295B2 */  jal     Animation_OnFrame              
/* 00738 80AF5C98 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0073C 80AF5C9C 10400008 */  beq     $v0, $zero, .L80AF5CC0     
/* 00740 80AF5CA0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00744 80AF5CA4 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 00748 80AF5CA8 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 0074C 80AF5CAC 0C00D3B0 */  jal     func_80034EC0              
/* 00750 80AF5CB0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00754 80AF5CB4 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 00758 80AF5CB8 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 0075C 80AF5CBC A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AF5CC0:
/* 00760 80AF5CC0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF5CC4:
/* 00764 80AF5CC4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00768 80AF5CC8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0076C 80AF5CCC 03E00008 */  jr      $ra                        
/* 00770 80AF5CD0 00000000 */  nop
