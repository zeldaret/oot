glabel func_80B3F754
/* 03574 80B3F754 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03578 80B3F758 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0357C 80B3F75C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 03580 80B3F760 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03584 80B3F764 24060016 */  addiu   $a2, $zero, 0x0016         ## $a2 = 00000016
/* 03588 80B3F768 0C2CF13C */  jal     func_80B3C4F0              
/* 0358C 80B3F76C 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 03590 80B3F770 1040000E */  beq     $v0, $zero, .L80B3F7AC     
/* 03594 80B3F774 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 03598 80B3F778 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 0359C 80B3F77C 24A5A048 */  addiu   $a1, $a1, 0xA048           ## $a1 = 0601A048
/* 035A0 80B3F780 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 035A4 80B3F784 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 035A8 80B3F788 0C2CF1C0 */  jal     func_80B3C700              
/* 035AC 80B3F78C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 035B0 80B3F790 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 035B4 80B3F794 240E0033 */  addiu   $t6, $zero, 0x0033         ## $t6 = 00000033
/* 035B8 80B3F798 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 035BC 80B3F79C ADEE0260 */  sw      $t6, 0x0260($t7)           ## 00000260
/* 035C0 80B3F7A0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 035C4 80B3F7A4 0C2CF162 */  jal     func_80B3C588              
/* 035C8 80B3F7A8 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80B3F7AC:
/* 035CC 80B3F7AC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 035D0 80B3F7B0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 035D4 80B3F7B4 03E00008 */  jr      $ra                        
/* 035D8 80B3F7B8 00000000 */  nop


