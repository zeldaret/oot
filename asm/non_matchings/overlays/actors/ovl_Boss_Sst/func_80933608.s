glabel func_80933608
/* 07038 80933608 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0703C 8093360C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 07040 80933610 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 07044 80933614 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 07048 80933618 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0704C 8093361C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 07050 80933620 860501A4 */  lh      $a1, 0x01A4($s0)           ## 000001A4
/* 07054 80933624 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 07058 80933628 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 0705C 8093362C 24060400 */  addiu   $a2, $zero, 0x0400         ## $a2 = 00000400
/* 07060 80933630 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 07064 80933634 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 07068 80933638 24051000 */  addiu   $a1, $zero, 0x1000         ## $a1 = 00001000
/* 0706C 8093363C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 07070 80933640 24060400 */  addiu   $a2, $zero, 0x0400         ## $a2 = 00000400
/* 07074 80933644 02228824 */  and     $s1, $s1, $v0              
/* 07078 80933648 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 0707C 8093364C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 07080 80933650 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 07084 80933654 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 07088 80933658 02228824 */  and     $s1, $s1, $v0              
/* 0708C 8093365C 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 07090 80933660 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 07094 80933664 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 07098 80933668 24060400 */  addiu   $a2, $zero, 0x0400         ## $a2 = 00000400
/* 0709C 8093366C 8E0E011C */  lw      $t6, 0x011C($s0)           ## 0000011C
/* 070A0 80933670 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 070A4 80933674 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 070A8 80933678 C5C403CC */  lwc1    $f4, 0x03CC($t6)           ## 000003CC
/* 070AC 8093367C 02228824 */  and     $s1, $s1, $v0              
/* 070B0 80933680 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 070B4 80933684 46062200 */  add.s   $f8, $f4, $f6              
/* 070B8 80933688 3C064248 */  lui     $a2, 0x4248                ## $a2 = 42480000
/* 070BC 8093368C 44054000 */  mfc1    $a1, $f8                   
/* 070C0 80933690 0C01DE80 */  jal     Math_ApproxF
              
/* 070C4 80933694 00000000 */  nop
/* 070C8 80933698 02228824 */  and     $s1, $s1, $v0              
/* 070CC 8093369C 260403C4 */  addiu   $a0, $s0, 0x03C4           ## $a0 = 000003C4
/* 070D0 809336A0 3C0543C8 */  lui     $a1, 0x43C8                ## $a1 = 43C80000
/* 070D4 809336A4 0C01DE80 */  jal     Math_ApproxF
              
/* 070D8 809336A8 3C064270 */  lui     $a2, 0x4270                ## $a2 = 42700000
/* 070DC 809336AC 02228824 */  and     $s1, $s1, $v0              
/* 070E0 809336B0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 070E4 809336B4 860401A4 */  lh      $a0, 0x01A4($s0)           ## 000001A4
/* 070E8 809336B8 C61003C4 */  lwc1    $f16, 0x03C4($s0)          ## 000003C4
/* 070EC 809336BC 8E0F011C */  lw      $t7, 0x011C($s0)           ## 0000011C
/* 070F0 809336C0 860401A4 */  lh      $a0, 0x01A4($s0)           ## 000001A4
/* 070F4 809336C4 46100482 */  mul.s   $f18, $f0, $f16            
/* 070F8 809336C8 C5EA03C8 */  lwc1    $f10, 0x03C8($t7)          ## 000003C8
/* 070FC 809336CC 46125101 */  sub.s   $f4, $f10, $f18            
/* 07100 809336D0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 07104 809336D4 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 07108 809336D8 C60803C4 */  lwc1    $f8, 0x03C4($s0)           ## 000003C4
/* 0710C 809336DC 8E18011C */  lw      $t8, 0x011C($s0)           ## 0000011C
/* 07110 809336E0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 07114 809336E4 46080402 */  mul.s   $f16, $f0, $f8             
/* 07118 809336E8 C70603D0 */  lwc1    $f6, 0x03D0($t8)           ## 000003D0
/* 0711C 809336EC 46103281 */  sub.s   $f10, $f6, $f16            
/* 07120 809336F0 0C02927F */  jal     SkelAnime_Update
              
/* 07124 809336F4 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 07128 809336F8 50400006 */  beql    $v0, $zero, .L80933714     
/* 0712C 809336FC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 07130 80933700 52200004 */  beql    $s1, $zero, .L80933714     
/* 07134 80933704 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 07138 80933708 0C24CDC9 */  jal     func_80933724              
/* 0713C 8093370C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07140 80933710 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80933714:
/* 07144 80933714 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 07148 80933718 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0714C 8093371C 03E00008 */  jr      $ra                        
/* 07150 80933720 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
