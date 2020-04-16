glabel func_80B57F1C
/* 04B6C 80B57F1C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04B70 80B57F20 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04B74 80B57F24 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04B78 80B57F28 0C2D5F60 */  jal     func_80B57D80              
/* 04B7C 80B57F2C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 04B80 80B57F30 14400010 */  bne     $v0, $zero, .L80B57F74     
/* 04B84 80B57F34 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 04B88 80B57F38 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 04B8C 80B57F3C 24A59BE4 */  addiu   $a1, $a1, 0x9BE4           ## $a1 = 06009BE4
/* 04B90 80B57F40 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 04B94 80B57F44 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 04B98 80B57F48 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 04B9C 80B57F4C 0C2D5385 */  jal     func_80B54E14              
/* 04BA0 80B57F50 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 04BA4 80B57F54 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 04BA8 80B57F58 240E0022 */  addiu   $t6, $zero, 0x0022         ## $t6 = 00000022
/* 04BAC 80B57F5C 8C8F0314 */  lw      $t7, 0x0314($a0)           ## 00000314
/* 04BB0 80B57F60 AC8E024C */  sw      $t6, 0x024C($a0)           ## 0000024C
/* 04BB4 80B57F64 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 04BB8 80B57F68 AC980314 */  sw      $t8, 0x0314($a0)           ## 00000314
/* 04BBC 80B57F6C 0C2D5EB8 */  jal     func_80B57AE0              
/* 04BC0 80B57F70 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80B57F74:
/* 04BC4 80B57F74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04BC8 80B57F78 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04BCC 80B57F7C 03E00008 */  jr      $ra                        
/* 04BD0 80B57F80 00000000 */  nop
