glabel func_80B5638C
/* 02FDC 80B5638C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02FE0 80B56390 10A00007 */  beq     $a1, $zero, .L80B563B0     
/* 02FE4 80B56394 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02FE8 80B56398 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02FEC 80B5639C 24A5210C */  addiu   $a1, $a1, 0x210C           ## $a1 = 0600210C
/* 02FF0 80B563A0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02FF4 80B563A4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02FF8 80B563A8 0C2D5385 */  jal     func_80B54E14              
/* 02FFC 80B563AC AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B563B0:
/* 03000 80B563B0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03004 80B563B4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03008 80B563B8 03E00008 */  jr      $ra                        
/* 0300C 80B563BC 00000000 */  nop
