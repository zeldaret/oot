glabel func_80ACA88C
/* 0096C 80ACA88C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00970 80ACA890 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00974 80ACA894 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00978 80ACA898 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0097C 80ACA89C 0C042F6F */  jal     func_8010BDBC              
/* 00980 80ACA8A0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00984 80ACA8A4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00988 80ACA8A8 1441001B */  bne     $v0, $at, .L80ACA918       
/* 0098C 80ACA8AC 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00990 80ACA8B0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00994 80ACA8B4 0C041AF2 */  jal     func_80106BC8              
/* 00998 80ACA8B8 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 0099C 80ACA8BC 10400016 */  beq     $v0, $zero, .L80ACA918     
/* 009A0 80ACA8C0 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 009A4 80ACA8C4 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 009A8 80ACA8C8 00461021 */  addu    $v0, $v0, $a2              
/* 009AC 80ACA8CC 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 009B0 80ACA8D0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 009B4 80ACA8D4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 009B8 80ACA8D8 10400005 */  beq     $v0, $zero, .L80ACA8F0     
/* 009BC 80ACA8DC 00000000 */  nop
/* 009C0 80ACA8E0 10410007 */  beq     $v0, $at, .L80ACA900       
/* 009C4 80ACA8E4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 009C8 80ACA8E8 1000000C */  beq     $zero, $zero, .L80ACA91C   
/* 009CC 80ACA8EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACA8F0:
/* 009D0 80ACA8F0 0C042DC8 */  jal     func_8010B720              
/* 009D4 80ACA8F4 24052065 */  addiu   $a1, $zero, 0x2065         ## $a1 = 00002065
/* 009D8 80ACA8F8 10000008 */  beq     $zero, $zero, .L80ACA91C   
/* 009DC 80ACA8FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACA900:
/* 009E0 80ACA900 0C042DC8 */  jal     func_8010B720              
/* 009E4 80ACA904 24052067 */  addiu   $a1, $zero, 0x2067         ## $a1 = 00002067
/* 009E8 80ACA908 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 009EC 80ACA90C 3C0E80AD */  lui     $t6, %hi(func_80ACA76C)    ## $t6 = 80AD0000
/* 009F0 80ACA910 25CEA76C */  addiu   $t6, $t6, %lo(func_80ACA76C) ## $t6 = 80ACA76C
/* 009F4 80ACA914 ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
.L80ACA918:
/* 009F8 80ACA918 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACA91C:
/* 009FC 80ACA91C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A00 80ACA920 03E00008 */  jr      $ra                        
/* 00A04 80ACA924 00000000 */  nop
