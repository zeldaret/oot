glabel func_80B57AAC
/* 046FC 80B57AAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04700 80B57AB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04704 80B57AB4 10A00006 */  beq     $a1, $zero, .L80B57AD0     
/* 04708 80B57AB8 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 0470C 80B57ABC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 04710 80B57AC0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 04714 80B57AC4 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 04718 80B57AC8 0C2D5385 */  jal     func_80B54E14              
/* 0471C 80B57ACC AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B57AD0:
/* 04720 80B57AD0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04724 80B57AD4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04728 80B57AD8 03E00008 */  jr      $ra                        
/* 0472C 80B57ADC 00000000 */  nop
