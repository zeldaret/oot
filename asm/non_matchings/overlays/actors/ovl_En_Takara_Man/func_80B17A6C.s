glabel func_80B17A6C
/* 0050C 80B17A6C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00510 80B17A70 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00514 80B17A74 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00518 80B17A78 0C00BD04 */  jal     Actor_HasParent              
/* 0051C 80B17A7C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00520 80B17A80 10400005 */  beq     $v0, $zero, .L80B17A98     
/* 00524 80B17A84 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00528 80B17A88 3C0E80B1 */  lui     $t6, %hi(func_80B17AC4)    ## $t6 = 80B10000
/* 0052C 80B17A8C 25CE7AC4 */  addiu   $t6, $t6, %lo(func_80B17AC4) ## $t6 = 80B17AC4
/* 00530 80B17A90 10000008 */  beq     $zero, $zero, .L80B17AB4   
/* 00534 80B17A94 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
.L80B17A98:
/* 00538 80B17A98 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0053C 80B17A9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 00540 80B17AA0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00544 80B17AA4 24060071 */  addiu   $a2, $zero, 0x0071         ## $a2 = 00000071
/* 00548 80B17AA8 3C0744FA */  lui     $a3, 0x44FA                ## $a3 = 44FA0000
/* 0054C 80B17AAC 0C00BD0D */  jal     func_8002F434              
/* 00550 80B17AB0 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80B17AB4:
/* 00554 80B17AB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00558 80B17AB8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0055C 80B17ABC 03E00008 */  jr      $ra                        
/* 00560 80B17AC0 00000000 */  nop
