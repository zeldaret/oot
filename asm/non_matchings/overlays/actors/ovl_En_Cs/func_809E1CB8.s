glabel func_809E1CB8
/* 00408 809E1CB8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0040C 809E1CBC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00410 809E1CC0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00414 809E1CC4 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00418 809E1CC8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0041C 809E1CCC 2405000F */  addiu   $a1, $zero, 0x000F         ## $a1 = 0000000F
/* 00420 809E1CD0 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00424 809E1CD4 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00428 809E1CD8 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xef6)
/* 0042C 809E1CDC 95EFF556 */  lhu     $t7, %lo(gSaveContext+0xef6)($t7)
/* 00430 809E1CE0 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 00434 809E1CE4 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 00438 809E1CE8 31F80400 */  andi    $t8, $t7, 0x0400           ## $t8 = 00000000
/* 0043C 809E1CEC 13000005 */  beq     $t8, $zero, .L809E1D04     
/* 00440 809E1CF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00444 809E1CF4 5440000E */  bnel    $v0, $zero, .L809E1D30     
/* 00448 809E1CF8 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 0044C 809E1CFC 1000000B */  beq     $zero, $zero, .L809E1D2C   
/* 00450 809E1D00 24042028 */  addiu   $a0, $zero, 0x2028         ## $a0 = 00002028
.L809E1D04:
/* 00454 809E1D04 8FB9001C */  lw      $t9, 0x001C($sp)           
/* 00458 809E1D08 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0045C 809E1D0C 9328015F */  lbu     $t0, 0x015F($t9)           ## 0000015F
/* 00460 809E1D10 15010003 */  bne     $t0, $at, .L809E1D20       
/* 00464 809E1D14 00000000 */  nop
/* 00468 809E1D18 10000004 */  beq     $zero, $zero, .L809E1D2C   
/* 0046C 809E1D1C 24042023 */  addiu   $a0, $zero, 0x2023         ## $a0 = 00002023
.L809E1D20:
/* 00470 809E1D20 54600003 */  bnel    $v1, $zero, .L809E1D30     
/* 00474 809E1D24 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00002023
/* 00478 809E1D28 24042022 */  addiu   $a0, $zero, 0x2022         ## $a0 = 00002022
.L809E1D2C:
/* 0047C 809E1D2C 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00002022
.L809E1D30:
/* 00480 809E1D30 03E00008 */  jr      $ra                        
/* 00484 809E1D34 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
