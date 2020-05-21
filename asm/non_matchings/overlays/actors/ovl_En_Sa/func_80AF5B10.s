glabel func_80AF5B10
/* 005B0 80AF5B10 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 005B4 80AF5B14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005B8 80AF5B18 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 005BC 80AF5B1C 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 005C0 80AF5B20 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005C4 80AF5B24 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 005C8 80AF5B28 10400006 */  beq     $v0, $zero, .L80AF5B44     
/* 005CC 80AF5B2C 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 005D0 80AF5B30 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 005D4 80AF5B34 5041000A */  beql    $v0, $at, .L80AF5B60       
/* 005D8 80AF5B38 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 005DC 80AF5B3C 10000015 */  beq     $zero, $zero, .L80AF5B94   
/* 005E0 80AF5B40 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF5B44:
/* 005E4 80AF5B44 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 005E8 80AF5B48 0C00D3B0 */  jal     func_80034EC0              
/* 005EC 80AF5B4C 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 005F0 80AF5B50 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 005F4 80AF5B54 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 005F8 80AF5B58 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 005FC 80AF5B5C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AF5B60:
/* 00600 80AF5B60 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 00604 80AF5B64 0C0295B2 */  jal     func_800A56C8              
/* 00608 80AF5B68 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0060C 80AF5B6C 10400008 */  beq     $v0, $zero, .L80AF5B90     
/* 00610 80AF5B70 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00614 80AF5B74 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 00618 80AF5B78 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 0061C 80AF5B7C 0C00D3B0 */  jal     func_80034EC0              
/* 00620 80AF5B80 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00624 80AF5B84 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 00628 80AF5B88 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 0062C 80AF5B8C A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AF5B90:
/* 00630 80AF5B90 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF5B94:
/* 00634 80AF5B94 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00638 80AF5B98 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0063C 80AF5B9C 03E00008 */  jr      $ra                        
/* 00640 80AF5BA0 00000000 */  nop
