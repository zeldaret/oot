glabel func_80AAA6D4
/* 00484 80AAA6D4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00488 80AAA6D8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0048C 80AAA6DC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00490 80AAA6E0 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 00494 80AAA6E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00498 80AAA6E8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0049C 80AAA6EC 10400006 */  beq     $v0, $zero, .L80AAA708     
/* 004A0 80AAA6F0 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 004A4 80AAA6F4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 004A8 80AAA6F8 5041000A */  beql    $v0, $at, .L80AAA724       
/* 004AC 80AAA6FC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 004B0 80AAA700 10000015 */  beq     $zero, $zero, .L80AAA758   
/* 004B4 80AAA704 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA708:
/* 004B8 80AAA708 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 004BC 80AAA70C 0C00D3B0 */  jal     func_80034EC0              
/* 004C0 80AAA710 2406000B */  addiu   $a2, $zero, 0x000B         ## $a2 = 0000000B
/* 004C4 80AAA714 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 004C8 80AAA718 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 004CC 80AAA71C A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 004D0 80AAA720 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AAA724:
/* 004D4 80AAA724 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 004D8 80AAA728 0C0295B2 */  jal     func_800A56C8              
/* 004DC 80AAA72C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 004E0 80AAA730 10400008 */  beq     $v0, $zero, .L80AAA754     
/* 004E4 80AAA734 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 004E8 80AAA738 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 004EC 80AAA73C 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 004F0 80AAA740 0C00D3B0 */  jal     func_80034EC0              
/* 004F4 80AAA744 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 004F8 80AAA748 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 004FC 80AAA74C 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00500 80AAA750 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AAA754:
/* 00504 80AAA754 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA758:
/* 00508 80AAA758 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0050C 80AAA75C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00510 80AAA760 03E00008 */  jr      $ra                        
/* 00514 80AAA764 00000000 */  nop


