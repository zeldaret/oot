glabel func_80AFA880
/* 00160 80AFA880 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00164 80AFA884 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00168 80AFA888 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0016C 80AFA88C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00170 80AFA890 24A5139C */  addiu   $a1, $a1, 0x139C           ## $a1 = 0600139C
/* 00174 80AFA894 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00178 80AFA898 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0017C 80AFA89C 0C0294A7 */  jal     func_800A529C              
/* 00180 80AFA8A0 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00184 80AFA8A4 24040064 */  addiu   $a0, $zero, 0x0064         ## $a0 = 00000064
/* 00188 80AFA8A8 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 0018C 80AFA8AC 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 00190 80AFA8B0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00194 80AFA8B4 3C1980B0 */  lui     $t9, %hi(func_80AFAA7C)    ## $t9 = 80B00000
/* 00198 80AFA8B8 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 0019C 80AFA8BC 90EF0281 */  lbu     $t7, 0x0281($a3)           ## 00000281
/* 001A0 80AFA8C0 2739AA7C */  addiu   $t9, $t9, %lo(func_80AFAA7C) ## $t9 = 80AFAA7C
/* 001A4 80AFA8C4 A4E20194 */  sh      $v0, 0x0194($a3)           ## 00000194
/* 001A8 80AFA8C8 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 001AC 80AFA8CC A4EE02B2 */  sh      $t6, 0x02B2($a3)           ## 000002B2
/* 001B0 80AFA8D0 A0F80281 */  sb      $t8, 0x0281($a3)           ## 00000281
/* 001B4 80AFA8D4 ACF90190 */  sw      $t9, 0x0190($a3)           ## 00000190
/* 001B8 80AFA8D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001BC 80AFA8DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C0 80AFA8E0 03E00008 */  jr      $ra                        
/* 001C4 80AFA8E4 00000000 */  nop


