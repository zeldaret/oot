glabel func_80AAA7FC
/* 005AC 80AAA7FC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 005B0 80AAA800 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005B4 80AAA804 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 005B8 80AAA808 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 005BC 80AAA80C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005C0 80AAA810 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 005C4 80AAA814 10400006 */  beq     $v0, $zero, .L80AAA830     
/* 005C8 80AAA818 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 005CC 80AAA81C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 005D0 80AAA820 5041000A */  beql    $v0, $at, .L80AAA84C       
/* 005D4 80AAA824 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 005D8 80AAA828 10000015 */  beq     $zero, $zero, .L80AAA880   
/* 005DC 80AAA82C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA830:
/* 005E0 80AAA830 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 005E4 80AAA834 0C00D3B0 */  jal     func_80034EC0              
/* 005E8 80AAA838 2406000D */  addiu   $a2, $zero, 0x000D         ## $a2 = 0000000D
/* 005EC 80AAA83C 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 005F0 80AAA840 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 005F4 80AAA844 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 005F8 80AAA848 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AAA84C:
/* 005FC 80AAA84C 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 00600 80AAA850 0C0295B2 */  jal     func_800A56C8              
/* 00604 80AAA854 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00608 80AAA858 10400008 */  beq     $v0, $zero, .L80AAA87C     
/* 0060C 80AAA85C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00610 80AAA860 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 00614 80AAA864 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 00618 80AAA868 0C00D3B0 */  jal     func_80034EC0              
/* 0061C 80AAA86C 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00620 80AAA870 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 00624 80AAA874 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00628 80AAA878 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AAA87C:
/* 0062C 80AAA87C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA880:
/* 00630 80AAA880 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00634 80AAA884 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00638 80AAA888 03E00008 */  jr      $ra                        
/* 0063C 80AAA88C 00000000 */  nop
