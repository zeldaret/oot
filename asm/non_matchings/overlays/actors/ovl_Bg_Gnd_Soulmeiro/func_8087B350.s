glabel func_8087B350
/* 00590 8087B350 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00594 8087B354 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00598 8087B358 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0059C 8087B35C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005A0 8087B360 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 005A4 8087B364 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 005A8 8087B368 00052A03 */  sra     $a1, $a1,  8               
/* 005AC 8087B36C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 005B0 8087B370 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 005B4 8087B374 10400005 */  beq     $v0, $zero, .L8087B38C     
/* 005B8 8087B378 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 005BC 8087B37C 3C0E8088 */  lui     $t6, %hi(BgGndSoulmeiro_Draw)    ## $t6 = 80880000
/* 005C0 8087B380 25CEB3CC */  addiu   $t6, $t6, %lo(BgGndSoulmeiro_Draw) ## $t6 = 8087B3CC
/* 005C4 8087B384 10000002 */  beq     $zero, $zero, .L8087B390   
/* 005C8 8087B388 ACCE0134 */  sw      $t6, 0x0134($a2)           ## 00000134
.L8087B38C:
/* 005CC 8087B38C ACC00134 */  sw      $zero, 0x0134($a2)         ## 00000134
.L8087B390:
/* 005D0 8087B390 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005D4 8087B394 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005D8 8087B398 03E00008 */  jr      $ra                        
/* 005DC 8087B39C 00000000 */  nop


