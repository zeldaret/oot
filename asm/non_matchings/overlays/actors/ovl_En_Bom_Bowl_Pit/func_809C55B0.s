glabel func_809C55B0
/* 00770 809C55B0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00774 809C55B4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00778 809C55B8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0077C 809C55BC 0C00BD04 */  jal     func_8002F410              
/* 00780 809C55C0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00784 809C55C4 10400005 */  beq     $v0, $zero, .L809C55DC     
/* 00788 809C55C8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0078C 809C55CC 3C0E809C */  lui     $t6, %hi(func_809C5608)    ## $t6 = 809C0000
/* 00790 809C55D0 25CE5608 */  addiu   $t6, $t6, %lo(func_809C5608) ## $t6 = 809C5608
/* 00794 809C55D4 10000008 */  beq     $zero, $zero, .L809C55F8   
/* 00798 809C55D8 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
.L809C55DC:
/* 0079C 809C55DC 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 007A0 809C55E0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 007A4 809C55E4 8C860160 */  lw      $a2, 0x0160($a0)           ## 00000160
/* 007A8 809C55E8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 007AC 809C55EC 3C0744FA */  lui     $a3, 0x44FA                ## $a3 = 44FA0000
/* 007B0 809C55F0 0C00BD0D */  jal     func_8002F434              
/* 007B4 809C55F4 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L809C55F8:
/* 007B8 809C55F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 007BC 809C55FC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007C0 809C5600 03E00008 */  jr      $ra                        
/* 007C4 809C5604 00000000 */  nop
