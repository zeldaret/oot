glabel func_80AF5BA4
/* 00644 80AF5BA4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00648 80AF5BA8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0064C 80AF5BAC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00650 80AF5BB0 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 00654 80AF5BB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00658 80AF5BB8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0065C 80AF5BBC 10400006 */  beq     $v0, $zero, .L80AF5BD8     
/* 00660 80AF5BC0 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 00664 80AF5BC4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00668 80AF5BC8 5041000C */  beql    $v0, $at, .L80AF5BFC       
/* 0066C 80AF5BCC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00670 80AF5BD0 10000017 */  beq     $zero, $zero, .L80AF5C30   
/* 00674 80AF5BD4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF5BD8:
/* 00678 80AF5BD8 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 0067C 80AF5BDC 0C00D3B0 */  jal     func_80034EC0              
/* 00680 80AF5BE0 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00684 80AF5BE4 0C2BD625 */  jal     func_80AF5894              
/* 00688 80AF5BE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0068C 80AF5BEC 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 00690 80AF5BF0 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00694 80AF5BF4 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 00698 80AF5BF8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AF5BFC:
/* 0069C 80AF5BFC 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 006A0 80AF5C00 0C0295B2 */  jal     func_800A56C8              
/* 006A4 80AF5C04 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 006A8 80AF5C08 10400008 */  beq     $v0, $zero, .L80AF5C2C     
/* 006AC 80AF5C0C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 006B0 80AF5C10 3C0580AF */  lui     $a1, %hi(D_80AF7358)       ## $a1 = 80AF0000
/* 006B4 80AF5C14 24A57358 */  addiu   $a1, $a1, %lo(D_80AF7358)  ## $a1 = 80AF7358
/* 006B8 80AF5C18 0C00D3B0 */  jal     func_80034EC0              
/* 006BC 80AF5C1C 24060009 */  addiu   $a2, $zero, 0x0009         ## $a2 = 00000009
/* 006C0 80AF5C20 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 006C4 80AF5C24 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 006C8 80AF5C28 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AF5C2C:
/* 006CC 80AF5C2C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF5C30:
/* 006D0 80AF5C30 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 006D4 80AF5C34 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006D8 80AF5C38 03E00008 */  jr      $ra                        
/* 006DC 80AF5C3C 00000000 */  nop
