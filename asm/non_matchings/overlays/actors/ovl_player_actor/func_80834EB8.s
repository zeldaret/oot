glabel func_80834EB8
/* 02CA8 80834EB8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02CAC 80834EBC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02CB0 80834EC0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02CB4 80834EC4 908206AD */  lbu     $v0, 0x06AD($a0)           ## 000006AD
/* 02CB8 80834EC8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02CBC 80834ECC 10400003 */  beq     $v0, $zero, .L80834EDC     
/* 02CC0 80834ED0 00000000 */  nop
/* 02CC4 80834ED4 54410011 */  bnel    $v0, $at, .L80834F1C       
/* 02CC8 80834ED8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80834EDC:
/* 02CCC 80834EDC 0C20CEF3 */  jal     func_80833BCC              
/* 02CD0 80834EE0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02CD4 80834EE4 14400008 */  bne     $v0, $zero, .L80834F08     
/* 02CD8 80834EE8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02CDC 80834EEC 0C030129 */  jal     func_800C04A4              
/* 02CE0 80834EF0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02CE4 80834EF4 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 02CE8 80834EF8 0C01691C */  jal     func_8005A470              
/* 02CEC 80834EFC 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 02CF0 80834F00 14400003 */  bne     $v0, $zero, .L80834F10     
/* 02CF4 80834F04 8FAF0018 */  lw      $t7, 0x0018($sp)           
.L80834F08:
/* 02CF8 80834F08 10000004 */  beq     $zero, $zero, .L80834F1C   
/* 02CFC 80834F0C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80834F10:
/* 02D00 80834F10 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 02D04 80834F14 A1EE06AD */  sb      $t6, 0x06AD($t7)           ## 000006AD
/* 02D08 80834F18 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80834F1C:
/* 02D0C 80834F1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D10 80834F20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D14 80834F24 03E00008 */  jr      $ra                        
/* 02D18 80834F28 00000000 */  nop


