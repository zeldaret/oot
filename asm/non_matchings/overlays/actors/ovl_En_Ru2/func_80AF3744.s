glabel func_80AF3744
/* 011F4 80AF3744 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 011F8 80AF3748 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 011FC 80AF374C 0C2BCDC6 */  jal     func_80AF3718              
/* 01200 80AF3750 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01204 80AF3754 10400005 */  beq     $v0, $zero, .L80AF376C     
/* 01208 80AF3758 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0120C 80AF375C 0C00B55C */  jal     Actor_Kill
              
/* 01210 80AF3760 00000000 */  nop
/* 01214 80AF3764 1000000E */  beq     $zero, $zero, .L80AF37A0   
/* 01218 80AF3768 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF376C:
/* 0121C 80AF376C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01220 80AF3770 24A50DE8 */  addiu   $a1, $a1, 0x0DE8           ## $a1 = 06000DE8
/* 01224 80AF3774 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01228 80AF3778 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0122C 80AF377C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01230 80AF3780 0C2BCA3A */  jal     func_80AF28E8              
/* 01234 80AF3784 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01238 80AF3788 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0123C 80AF378C 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 01240 80AF3790 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01244 80AF3794 AC8E02A8 */  sw      $t6, 0x02A8($a0)           ## 000002A8
/* 01248 80AF3798 AC8F02AC */  sw      $t7, 0x02AC($a0)           ## 000002AC
/* 0124C 80AF379C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF37A0:
/* 01250 80AF37A0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01254 80AF37A4 03E00008 */  jr      $ra                        
/* 01258 80AF37A8 00000000 */  nop


