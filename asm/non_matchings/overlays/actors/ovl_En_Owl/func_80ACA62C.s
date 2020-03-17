glabel func_80ACA62C
/* 0070C 80ACA62C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00710 80ACA630 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00714 80ACA634 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00718 80ACA638 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0071C 80ACA63C 8486001C */  lh      $a2, 0x001C($a0)           ## 0000001C
/* 00720 80ACA640 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00724 80ACA644 30C6003F */  andi    $a2, $a2, 0x003F           ## $a2 = 00000000
/* 00728 80ACA648 28C10020 */  slti    $at, $a2, 0x0020           
/* 0072C 80ACA64C 1020000A */  beq     $at, $zero, .L80ACA678     
/* 00730 80ACA650 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00734 80ACA654 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00738 80ACA658 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 0073C 80ACA65C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00740 80ACA660 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00744 80ACA664 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00748 80ACA668 3C0480AD */  lui     $a0, %hi(D_80ACD730)       ## $a0 = 80AD0000
/* 0074C 80ACA66C 2484D730 */  addiu   $a0, $a0, %lo(D_80ACD730)  ## $a0 = 80ACD730
/* 00750 80ACA670 0C00084C */  jal     osSyncPrintf
              
/* 00754 80ACA674 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
.L80ACA678:
/* 00758 80ACA678 0C2B2972 */  jal     func_80ACA5C8              
/* 0075C 80ACA67C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00760 80ACA680 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00764 80ACA684 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00768 80ACA688 03E00008 */  jr      $ra                        
/* 0076C 80ACA68C 00000000 */  nop


