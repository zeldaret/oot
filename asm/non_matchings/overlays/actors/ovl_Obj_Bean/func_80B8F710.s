glabel func_80B8F710
/* 00C90 80B8F710 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C94 80B8F714 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C98 80B8F718 3C0E80B9 */  lui     $t6, %hi(func_80B8F788)    ## $t6 = 80B90000
/* 00C9C 80B8F71C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CA0 80B8F720 25CEF788 */  addiu   $t6, $t6, %lo(func_80B8F788) ## $t6 = 80B8F788
/* 00CA4 80B8F724 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CA8 80B8F728 AC8E01BC */  sw      $t6, 0x01BC($a0)           ## 000001BC
/* 00CAC 80B8F72C 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 00CB0 80B8F730 0C01DF64 */  jal     Rand_S16Offset
              
/* 00CB4 80B8F734 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 00CB8 80B8F738 A60201C0 */  sh      $v0, 0x01C0($s0)           ## 000001C0
/* 00CBC 80B8F73C 240407D0 */  addiu   $a0, $zero, 0x07D0         ## $a0 = 000007D0
/* 00CC0 80B8F740 0C01DF64 */  jal     Rand_S16Offset
              
/* 00CC4 80B8F744 240503E8 */  addiu   $a1, $zero, 0x03E8         ## $a1 = 000003E8
/* 00CC8 80B8F748 240F00C8 */  addiu   $t7, $zero, 0x00C8         ## $t7 = 000000C8
/* 00CCC 80B8F74C A60201C4 */  sh      $v0, 0x01C4($s0)           ## 000001C4
/* 00CD0 80B8F750 A60F01C6 */  sh      $t7, 0x01C6($s0)           ## 000001C6
/* 00CD4 80B8F754 240436B0 */  addiu   $a0, $zero, 0x36B0         ## $a0 = 000036B0
/* 00CD8 80B8F758 0C01DF64 */  jal     Rand_S16Offset
              
/* 00CDC 80B8F75C 24051770 */  addiu   $a1, $zero, 0x1770         ## $a1 = 00001770
/* 00CE0 80B8F760 24180FA0 */  addiu   $t8, $zero, 0x0FA0         ## $t8 = 00000FA0
/* 00CE4 80B8F764 241918E4 */  addiu   $t9, $zero, 0x18E4         ## $t9 = 000018E4
/* 00CE8 80B8F768 A60201CA */  sh      $v0, 0x01CA($s0)           ## 000001CA
/* 00CEC 80B8F76C A61801CC */  sh      $t8, 0x01CC($s0)           ## 000001CC
/* 00CF0 80B8F770 A61901D0 */  sh      $t9, 0x01D0($s0)           ## 000001D0
/* 00CF4 80B8F774 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CF8 80B8F778 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00CFC 80B8F77C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D00 80B8F780 03E00008 */  jr      $ra                        
/* 00D04 80B8F784 00000000 */  nop
