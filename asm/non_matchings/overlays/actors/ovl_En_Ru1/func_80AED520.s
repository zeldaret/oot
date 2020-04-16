glabel func_80AED520
/* 02910 80AED520 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02914 80AED524 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02918 80AED528 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0291C 80AED52C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02920 80AED530 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 02924 80AED534 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 02928 80AED538 3C0F8013 */  lui     $t7, 0x8013                ## $t7 = 80130000
/* 0292C 80AED53C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 02930 80AED540 25EF33E8 */  addiu   $t7, $t7, 0x33E8           ## $t7 = 801333E8
/* 02934 80AED544 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 02938 80AED548 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0293C 80AED54C 24040883 */  addiu   $a0, $zero, 0x0883         ## $a0 = 00000883
/* 02940 80AED550 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02944 80AED554 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 02948 80AED558 244500E4 */  addiu   $a1, $v0, 0x00E4           ## $a1 = 000000E4
/* 0294C 80AED55C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02950 80AED560 24056864 */  addiu   $a1, $zero, 0x6864         ## $a1 = 00006864
/* 02954 80AED564 0C01E245 */  jal     func_80078914              
/* 02958 80AED568 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 0295C 80AED56C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02960 80AED570 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02964 80AED574 03E00008 */  jr      $ra                        
/* 02968 80AED578 00000000 */  nop
