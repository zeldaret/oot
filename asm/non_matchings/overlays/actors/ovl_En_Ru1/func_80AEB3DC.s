glabel func_80AEB3DC
/* 007CC 80AEB3DC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007D0 80AEB3E0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 007D4 80AEB3E4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007D8 80AEB3E8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 007DC 80AEB3EC 24A50690 */  addiu   $a1, $a1, 0x0690           ## $a1 = 06000690
/* 007E0 80AEB3F0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 007E4 80AEB3F4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 007E8 80AEB3F8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 007EC 80AEB3FC 0C2BAC99 */  jal     func_80AEB264              
/* 007F0 80AEB400 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 007F4 80AEB404 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 007F8 80AEB408 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 007FC 80AEB40C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 00800 80AEB410 AC800264 */  sw      $zero, 0x0264($a0)         ## 00000264
/* 00804 80AEB414 0C2BABA9 */  jal     func_80AEAEA4              
/* 00808 80AEB418 AC8E0268 */  sw      $t6, 0x0268($a0)           ## 00000268
/* 0080C 80AEB41C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00810 80AEB420 0C2BABAE */  jal     func_80AEAEB8              
/* 00814 80AEB424 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00818 80AEB428 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0081C 80AEB42C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00820 80AEB430 03E00008 */  jr      $ra                        
/* 00824 80AEB434 00000000 */  nop


