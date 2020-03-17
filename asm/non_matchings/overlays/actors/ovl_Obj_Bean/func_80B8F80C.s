glabel func_80B8F80C
/* 00D8C 80B8F80C 3C0E80B9 */  lui     $t6, %hi(func_80B8F84C)    ## $t6 = 80B90000
/* 00D90 80B8F810 25CEF84C */  addiu   $t6, $t6, %lo(func_80B8F84C) ## $t6 = 80B8F84C
/* 00D94 80B8F814 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 00D98 80B8F818 24180BB8 */  addiu   $t8, $zero, 0x0BB8         ## $t8 = 00000BB8
/* 00D9C 80B8F81C 2419012C */  addiu   $t9, $zero, 0x012C         ## $t9 = 0000012C
/* 00DA0 80B8F820 24083A98 */  addiu   $t0, $zero, 0x3A98         ## $t0 = 00003A98
/* 00DA4 80B8F824 24090FA0 */  addiu   $t1, $zero, 0x0FA0         ## $t1 = 00000FA0
/* 00DA8 80B8F828 240A18E4 */  addiu   $t2, $zero, 0x18E4         ## $t2 = 000018E4
/* 00DAC 80B8F82C AC8E01BC */  sw      $t6, 0x01BC($a0)           ## 000001BC
/* 00DB0 80B8F830 A48F01C0 */  sh      $t7, 0x01C0($a0)           ## 000001C0
/* 00DB4 80B8F834 A49801C4 */  sh      $t8, 0x01C4($a0)           ## 000001C4
/* 00DB8 80B8F838 A49901C6 */  sh      $t9, 0x01C6($a0)           ## 000001C6
/* 00DBC 80B8F83C A48801CA */  sh      $t0, 0x01CA($a0)           ## 000001CA
/* 00DC0 80B8F840 A48901CC */  sh      $t1, 0x01CC($a0)           ## 000001CC
/* 00DC4 80B8F844 03E00008 */  jr      $ra                        
/* 00DC8 80B8F848 A48A01D0 */  sh      $t2, 0x01D0($a0)           ## 000001D0


