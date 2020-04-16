glabel func_80B57F84
/* 04BD4 80B57F84 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04BD8 80B57F88 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04BDC 80B57F8C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 04BE0 80B57F90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04BE4 80B57F94 0C2D5D74 */  jal     func_80B575D0              
/* 04BE8 80B57F98 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 04BEC 80B57F9C 10400017 */  beq     $v0, $zero, .L80B57FFC     
/* 04BF0 80B57FA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04BF4 80B57FA4 0C2D5F1F */  jal     func_80B57C7C              
/* 04BF8 80B57FA8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 04BFC 80B57FAC 50400014 */  beql    $v0, $zero, .L80B58000     
/* 04C00 80B57FB0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 04C04 80B57FB4 0C02FF21 */  jal     func_800BFC84              
/* 04C08 80B57FB8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 04C0C 80B57FBC 1440000F */  bne     $v0, $zero, .L80B57FFC     
/* 04C10 80B57FC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04C14 80B57FC4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 04C18 80B57FC8 24A59FBC */  addiu   $a1, $a1, 0x9FBC           ## $a1 = 06009FBC
/* 04C1C 80B57FCC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 04C20 80B57FD0 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 04C24 80B57FD4 0C2D5385 */  jal     func_80B54E14              
/* 04C28 80B57FD8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 04C2C 80B57FDC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 04C30 80B57FE0 240E0024 */  addiu   $t6, $zero, 0x0024         ## $t6 = 00000024
/* 04C34 80B57FE4 AE0E024C */  sw      $t6, 0x024C($s0)           ## 0000024C
/* 04C38 80B57FE8 E60402EC */  swc1    $f4, 0x02EC($s0)           ## 000002EC
/* 04C3C 80B57FEC 0C2D5E9D */  jal     func_80B57A74              
/* 04C40 80B57FF0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 04C44 80B57FF4 10000002 */  beq     $zero, $zero, .L80B58000   
/* 04C48 80B57FF8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B57FFC:
/* 04C4C 80B57FFC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B58000:
/* 04C50 80B58000 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04C54 80B58004 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 04C58 80B58008 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04C5C 80B5800C 03E00008 */  jr      $ra                        
/* 04C60 80B58010 00000000 */  nop
