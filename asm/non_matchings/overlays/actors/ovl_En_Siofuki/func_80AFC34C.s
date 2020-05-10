glabel func_80AFC34C
/* 007CC 80AFC34C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007D0 80AFC350 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007D4 80AFC354 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 007D8 80AFC358 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007DC 80AFC35C 0C2BEF72 */  jal     func_80AFBDC8              
/* 007E0 80AFC360 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 007E4 80AFC364 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007E8 80AFC368 0C2BEFA3 */  jal     func_80AFBE8C              
/* 007EC 80AFC36C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 007F0 80AFC370 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007F4 80AFC374 0C2BF074 */  jal     func_80AFC1D0              
/* 007F8 80AFC378 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 007FC 80AFC37C 9605001C */  lhu     $a1, 0x001C($s0)           ## 0000001C
/* 00800 80AFC380 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00804 80AFC384 00052983 */  sra     $a1, $a1,  6               
/* 00808 80AFC388 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0080C 80AFC38C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00810 80AFC390 10400008 */  beq     $v0, $zero, .L80AFC3B4     
/* 00814 80AFC394 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00818 80AFC398 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 0081C 80AFC39C 3C0F80B0 */  lui     $t7, %hi(func_80AFC218)    ## $t7 = 80B00000
/* 00820 80AFC3A0 240E012C */  addiu   $t6, $zero, 0x012C         ## $t6 = 0000012C
/* 00824 80AFC3A4 25EFC218 */  addiu   $t7, $t7, %lo(func_80AFC218) ## $t7 = 80AFC218
/* 00828 80AFC3A8 AE0E0168 */  sw      $t6, 0x0168($s0)           ## 00000168
/* 0082C 80AFC3AC AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
/* 00830 80AFC3B0 E604017C */  swc1    $f4, 0x017C($s0)           ## 0000017C
.L80AFC3B4:
/* 00834 80AFC3B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00838 80AFC3B8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0083C 80AFC3BC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00840 80AFC3C0 03E00008 */  jr      $ra                        
/* 00844 80AFC3C4 00000000 */  nop
