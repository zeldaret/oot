glabel func_809DF8FC
/* 00AFC 809DF8FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B00 809DF900 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B04 809DF904 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B08 809DF908 0C00BC65 */  jal     func_8002F194              
/* 00B0C 809DF90C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B10 809DF910 10400005 */  beq     $v0, $zero, .L809DF928     
/* 00B14 809DF914 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B18 809DF918 3C0E809E */  lui     $t6, %hi(func_809DF870)    ## $t6 = 809E0000
/* 00B1C 809DF91C 25CEF870 */  addiu   $t6, $t6, %lo(func_809DF870) ## $t6 = 809DF870
/* 00B20 809DF920 1000000C */  beq     $zero, $zero, .L809DF954   
/* 00B24 809DF924 AC8E027C */  sw      $t6, 0x027C($a0)           ## 0000027C
.L809DF928:
/* 00B28 809DF928 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 00B2C 809DF92C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B30 809DF930 3C06432A */  lui     $a2, 0x432A                ## $a2 = 432A0000
/* 00B34 809DF934 01E1C025 */  or      $t8, $t7, $at              ## $t8 = 00010000
/* 00B38 809DF938 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 00B3C 809DF93C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B40 809DF940 0C00BCB3 */  jal     func_8002F2CC              
/* 00B44 809DF944 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00B48 809DF948 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B4C 809DF94C 24192006 */  addiu   $t9, $zero, 0x2006         ## $t9 = 00002006
/* 00B50 809DF950 A499010E */  sh      $t9, 0x010E($a0)           ## 0000010E
.L809DF954:
/* 00B54 809DF954 0C277D25 */  jal     func_809DF494              
/* 00B58 809DF958 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00B5C 809DF95C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B60 809DF960 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B64 809DF964 03E00008 */  jr      $ra                        
/* 00B68 809DF968 00000000 */  nop
