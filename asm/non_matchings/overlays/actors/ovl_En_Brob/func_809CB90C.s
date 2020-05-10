glabel func_809CB90C
/* 00DFC 809CB90C 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00E00 809CB910 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E04 809CB914 AFA40060 */  sw      $a0, 0x0060($sp)           
/* 00E08 809CB918 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00E0C 809CB91C AFA60068 */  sw      $a2, 0x0068($sp)           
/* 00E10 809CB920 AFA7006C */  sw      $a3, 0x006C($sp)           
/* 00E14 809CB924 0C034236 */  jal     Matrix_Get              
/* 00E18 809CB928 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFBC
/* 00E1C 809CB92C 8FA20064 */  lw      $v0, 0x0064($sp)           
/* 00E20 809CB930 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00E24 809CB934 C7A4004C */  lwc1    $f4, 0x004C($sp)           
/* 00E28 809CB938 54410011 */  bnel    $v0, $at, .L809CB980       
/* 00E2C 809CB93C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00E30 809CB940 4600218D */  trunc.w.s $f6, $f4                   
/* 00E34 809CB944 8FA20070 */  lw      $v0, 0x0070($sp)           
/* 00E38 809CB948 440F3000 */  mfc1    $t7, $f6                   
/* 00E3C 809CB94C 00000000 */  nop
/* 00E40 809CB950 A44F026E */  sh      $t7, 0x026E($v0)           ## 0000026E
/* 00E44 809CB954 C7A80050 */  lwc1    $f8, 0x0050($sp)           
/* 00E48 809CB958 4600428D */  trunc.w.s $f10, $f8                  
/* 00E4C 809CB95C 44195000 */  mfc1    $t9, $f10                  
/* 00E50 809CB960 00000000 */  nop
/* 00E54 809CB964 A4590270 */  sh      $t9, 0x0270($v0)           ## 00000270
/* 00E58 809CB968 C7B00054 */  lwc1    $f16, 0x0054($sp)          
/* 00E5C 809CB96C 4600848D */  trunc.w.s $f18, $f16                 
/* 00E60 809CB970 44099000 */  mfc1    $t1, $f18                  
/* 00E64 809CB974 10000016 */  beq     $zero, $zero, .L809CB9D0   
/* 00E68 809CB978 A4490272 */  sh      $t1, 0x0272($v0)           ## 00000272
/* 00E6C 809CB97C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
.L809CB980:
/* 00E70 809CB980 14410013 */  bne     $v0, $at, .L809CB9D0       
/* 00E74 809CB984 C7A4004C */  lwc1    $f4, 0x004C($sp)           
/* 00E78 809CB988 4600218D */  trunc.w.s $f6, $f4                   
/* 00E7C 809CB98C 8FA20070 */  lw      $v0, 0x0070($sp)           
/* 00E80 809CB990 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 00E84 809CB994 44815000 */  mtc1    $at, $f10                  ## $f10 = 7.00
/* 00E88 809CB998 440B3000 */  mfc1    $t3, $f6                   
/* 00E8C 809CB99C 00000000 */  nop
/* 00E90 809CB9A0 A44B02BA */  sh      $t3, 0x02BA($v0)           ## 000002BA
/* 00E94 809CB9A4 C7A80050 */  lwc1    $f8, 0x0050($sp)           
/* 00E98 809CB9A8 460A4400 */  add.s   $f16, $f8, $f10            
/* 00E9C 809CB9AC 4600848D */  trunc.w.s $f18, $f16                 
/* 00EA0 809CB9B0 440D9000 */  mfc1    $t5, $f18                  
/* 00EA4 809CB9B4 00000000 */  nop
/* 00EA8 809CB9B8 A44D02BC */  sh      $t5, 0x02BC($v0)           ## 000002BC
/* 00EAC 809CB9BC C7A40054 */  lwc1    $f4, 0x0054($sp)           
/* 00EB0 809CB9C0 4600218D */  trunc.w.s $f6, $f4                   
/* 00EB4 809CB9C4 440F3000 */  mfc1    $t7, $f6                   
/* 00EB8 809CB9C8 00000000 */  nop
/* 00EBC 809CB9CC A44F02BE */  sh      $t7, 0x02BE($v0)           ## 000002BE
.L809CB9D0:
/* 00EC0 809CB9D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EC4 809CB9D4 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 00EC8 809CB9D8 03E00008 */  jr      $ra                        
/* 00ECC 809CB9DC 00000000 */  nop
