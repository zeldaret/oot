glabel func_80AF58B8
/* 00358 80AF58B8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0035C 80AF58BC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00360 80AF58C0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00364 80AF58C4 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 00368 80AF58C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0036C 80AF58CC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00370 80AF58D0 10400006 */  beq     $v0, $zero, .L80AF58EC     
/* 00374 80AF58D4 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 00378 80AF58D8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0037C 80AF58DC 5041000A */  beql    $v0, $at, .L80AF5908       
/* 00380 80AF58E0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00384 80AF58E4 10000015 */  beq     $zero, $zero, .L80AF593C   
/* 00388 80AF58E8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF58EC:
/* 0038C 80AF58EC 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 00390 80AF58F0 0C00D3B0 */  jal     func_80034EC0              
/* 00394 80AF58F4 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00398 80AF58F8 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 0039C 80AF58FC 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 003A0 80AF5900 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 003A4 80AF5904 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AF5908:
/* 003A8 80AF5908 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 003AC 80AF590C 0C0295B2 */  jal     func_800A56C8              
/* 003B0 80AF5910 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 003B4 80AF5914 10400008 */  beq     $v0, $zero, .L80AF5938     
/* 003B8 80AF5918 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 003BC 80AF591C 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 003C0 80AF5920 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 003C4 80AF5924 0C00D3B0 */  jal     func_80034EC0              
/* 003C8 80AF5928 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 003CC 80AF592C 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 003D0 80AF5930 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 003D4 80AF5934 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AF5938:
/* 003D8 80AF5938 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF593C:
/* 003DC 80AF593C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003E0 80AF5940 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 003E4 80AF5944 03E00008 */  jr      $ra                        
/* 003E8 80AF5948 00000000 */  nop


