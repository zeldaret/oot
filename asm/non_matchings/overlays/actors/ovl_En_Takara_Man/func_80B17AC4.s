glabel func_80B17AC4
/* 00564 80B17AC4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00568 80B17AC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0056C 80B17ACC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00570 80B17AD0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00574 80B17AD4 0C042F6F */  jal     func_8010BDBC              
/* 00578 80B17AD8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0057C 80B17ADC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00580 80B17AE0 54410009 */  bnel    $v0, $at, .L80B17B08       
/* 00584 80B17AE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00588 80B17AE8 0C041AF2 */  jal     func_80106BC8              
/* 0058C 80B17AEC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00590 80B17AF0 10400004 */  beq     $v0, $zero, .L80B17B04     
/* 00594 80B17AF4 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00598 80B17AF8 3C0E80B1 */  lui     $t6, %hi(func_80B176E0)    ## $t6 = 80B10000
/* 0059C 80B17AFC 25CE76E0 */  addiu   $t6, $t6, %lo(func_80B176E0) ## $t6 = 80B176E0
/* 005A0 80B17B00 ADEE014C */  sw      $t6, 0x014C($t7)           ## 0000014C
.L80B17B04:
/* 005A4 80B17B04 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B17B08:
/* 005A8 80B17B08 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005AC 80B17B0C 03E00008 */  jr      $ra                        
/* 005B0 80B17B10 00000000 */  nop


