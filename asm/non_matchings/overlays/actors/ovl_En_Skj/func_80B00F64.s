glabel func_80B00F64
/* 02CB4 80B00F64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02CB8 80B00F68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02CBC 80B00F6C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02CC0 80B00F70 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02CC4 80B00F74 0C042F6F */  jal     func_8010BDBC              
/* 02CC8 80B00F78 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02CCC 80B00F7C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02CD0 80B00F80 5441001D */  bnel    $v0, $at, .L80B00FF8       
/* 02CD4 80B00F84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02CD8 80B00F88 0C041AF2 */  jal     func_80106BC8              
/* 02CDC 80B00F8C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02CE0 80B00F90 10400018 */  beq     $v0, $zero, .L80B00FF4     
/* 02CE4 80B00F94 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 02CE8 80B00F98 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 02CEC 80B00F9C 004E1021 */  addu    $v0, $v0, $t6              
/* 02CF0 80B00FA0 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 02CF4 80B00FA4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02CF8 80B00FA8 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 02CFC 80B00FAC 50400006 */  beql    $v0, $zero, .L80B00FC8     
/* 02D00 80B00FB0 8DE21C44 */  lw      $v0, 0x1C44($t7)           ## 00001C44
/* 02D04 80B00FB4 1041000C */  beq     $v0, $at, .L80B00FE8       
/* 02D08 80B00FB8 8FAB0018 */  lw      $t3, 0x0018($sp)           
/* 02D0C 80B00FBC 1000000E */  beq     $zero, $zero, .L80B00FF8   
/* 02D10 80B00FC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D14 80B00FC4 8DE21C44 */  lw      $v0, 0x1C44($t7)           ## 00001C44
.L80B00FC8:
/* 02D18 80B00FC8 3C0880B0 */  lui     $t0, %hi(func_80B00A54)    ## $t0 = 80B00000
/* 02D1C 80B00FCC 25080A54 */  addiu   $t0, $t0, %lo(func_80B00A54) ## $t0 = 80B00A54
/* 02D20 80B00FD0 90580692 */  lbu     $t8, 0x0692($v0)           ## 00010692
/* 02D24 80B00FD4 37190020 */  ori     $t9, $t8, 0x0020           ## $t9 = 00000020
/* 02D28 80B00FD8 A0590692 */  sb      $t9, 0x0692($v0)           ## 00010692
/* 02D2C 80B00FDC 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 02D30 80B00FE0 10000004 */  beq     $zero, $zero, .L80B00FF4   
/* 02D34 80B00FE4 AD280274 */  sw      $t0, 0x0274($t1)           ## 00000274
.L80B00FE8:
/* 02D38 80B00FE8 3C0A80B0 */  lui     $t2, %hi(func_80B011CC)    ## $t2 = 80B00000
/* 02D3C 80B00FEC 254A11CC */  addiu   $t2, $t2, %lo(func_80B011CC) ## $t2 = 80B011CC
/* 02D40 80B00FF0 AD6A0274 */  sw      $t2, 0x0274($t3)           ## 00000274
.L80B00FF4:
/* 02D44 80B00FF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B00FF8:
/* 02D48 80B00FF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D4C 80B00FFC 03E00008 */  jr      $ra                        
/* 02D50 80B01000 00000000 */  nop


