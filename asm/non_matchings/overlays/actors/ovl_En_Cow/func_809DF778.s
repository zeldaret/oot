glabel func_809DF778
/* 00978 809DF778 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0097C 809DF77C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00980 809DF780 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00984 809DF784 0C00BD04 */  jal     func_8002F410              
/* 00988 809DF788 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0098C 809DF78C 10400006 */  beq     $v0, $zero, .L809DF7A8     
/* 00990 809DF790 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00994 809DF794 3C0E809E */  lui     $t6, %hi(func_809DF730)    ## $t6 = 809E0000
/* 00998 809DF798 25CEF730 */  addiu   $t6, $t6, %lo(func_809DF730) ## $t6 = 809DF730
/* 0099C 809DF79C AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 009A0 809DF7A0 10000009 */  beq     $zero, $zero, .L809DF7C8   
/* 009A4 809DF7A4 AC8E027C */  sw      $t6, 0x027C($a0)           ## 0000027C
.L809DF7A8:
/* 009A8 809DF7A8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 009AC 809DF7AC 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 009B0 809DF7B0 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 009B4 809DF7B4 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 009B8 809DF7B8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 009BC 809DF7BC 24060050 */  addiu   $a2, $zero, 0x0050         ## $a2 = 00000050
/* 009C0 809DF7C0 0C00BD0D */  jal     func_8002F434              
/* 009C4 809DF7C4 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L809DF7C8:
/* 009C8 809DF7C8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 009CC 809DF7CC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 009D0 809DF7D0 03E00008 */  jr      $ra                        
/* 009D4 809DF7D4 00000000 */  nop
