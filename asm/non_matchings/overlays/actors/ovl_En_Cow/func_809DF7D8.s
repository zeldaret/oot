glabel func_809DF7D8
/* 009D8 809DF7D8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 009DC 809DF7DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009E0 809DF7E0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 009E4 809DF7E4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 009E8 809DF7E8 0C042F6F */  jal     func_8010BDBC              
/* 009EC 809DF7EC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 009F0 809DF7F0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 009F4 809DF7F4 5441001B */  bnel    $v0, $at, .L809DF864       
/* 009F8 809DF7F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 009FC 809DF7FC 0C041AF2 */  jal     func_80106BC8              
/* 00A00 809DF800 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00A04 809DF804 50400017 */  beql    $v0, $zero, .L809DF864     
/* 00A08 809DF808 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A0C 809DF80C 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 00A10 809DF810 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00A14 809DF814 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00A18 809DF818 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 00000004
/* 00A1C 809DF81C 01C17824 */  and     $t7, $t6, $at              
/* 00A20 809DF820 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 00A24 809DF824 0C041B33 */  jal     func_80106CCC              
/* 00A28 809DF828 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00A2C 809DF82C 8FB90020 */  lw      $t9, 0x0020($sp)           
/* 00A30 809DF830 3C18809E */  lui     $t8, %hi(func_809DF778)    ## $t8 = 809E0000
/* 00A34 809DF834 2718F778 */  addiu   $t8, $t8, %lo(func_809DF778) ## $t8 = 809DF778
/* 00A38 809DF838 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00A3C 809DF83C 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00A40 809DF840 AF38027C */  sw      $t8, 0x027C($t9)           ## 0000027C
/* 00A44 809DF844 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00A48 809DF848 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 00A4C 809DF84C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A50 809DF850 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00A54 809DF854 24060050 */  addiu   $a2, $zero, 0x0050         ## $a2 = 00000050
/* 00A58 809DF858 0C00BD0D */  jal     func_8002F434              
/* 00A5C 809DF85C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00A60 809DF860 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809DF864:
/* 00A64 809DF864 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A68 809DF868 03E00008 */  jr      $ra                        
/* 00A6C 809DF86C 00000000 */  nop
