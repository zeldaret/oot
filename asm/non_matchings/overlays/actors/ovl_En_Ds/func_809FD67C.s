glabel func_809FD67C
/* 0064C 809FD67C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00650 809FD680 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00654 809FD684 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00658 809FD688 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0065C 809FD68C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00660 809FD690 0C042F6F */  jal     func_8010BDBC              
/* 00664 809FD694 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00668 809FD698 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0066C 809FD69C 54410041 */  bnel    $v0, $at, .L809FD7A4       
/* 00670 809FD6A0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00674 809FD6A4 0C041AF2 */  jal     func_80106BC8              
/* 00678 809FD6A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0067C 809FD6AC 1040003C */  beq     $v0, $zero, .L809FD7A0     
/* 00680 809FD6B0 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00684 809FD6B4 00501021 */  addu    $v0, $v0, $s0              
/* 00688 809FD6B8 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 0068C 809FD6BC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00690 809FD6C0 10400005 */  beq     $v0, $zero, .L809FD6D8     
/* 00694 809FD6C4 00000000 */  nop
/* 00698 809FD6C8 1041002F */  beq     $v0, $at, .L809FD788       
/* 0069C 809FD6CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006A0 809FD6D0 10000030 */  beq     $zero, $zero, .L809FD794   
/* 006A4 809FD6D4 8FAB0028 */  lw      $t3, 0x0028($sp)           
.L809FD6D8:
/* 006A8 809FD6D8 0C27F573 */  jal     func_809FD5CC              
/* 006AC 809FD6DC 00000000 */  nop
/* 006B0 809FD6E0 10400009 */  beq     $v0, $zero, .L809FD708     
/* 006B4 809FD6E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006B8 809FD6E8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 006BC 809FD6EC 1041000A */  beq     $v0, $at, .L809FD718       
/* 006C0 809FD6F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006C4 809FD6F4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 006C8 809FD6F8 1041000E */  beq     $v0, $at, .L809FD734       
/* 006CC 809FD6FC 00000000 */  nop
/* 006D0 809FD700 10000024 */  beq     $zero, $zero, .L809FD794   
/* 006D4 809FD704 8FAB0028 */  lw      $t3, 0x0028($sp)           
.L809FD708:
/* 006D8 809FD708 0C042DC8 */  jal     func_8010B720              
/* 006DC 809FD70C 2405500E */  addiu   $a1, $zero, 0x500E         ## $a1 = 0000500E
/* 006E0 809FD710 10000020 */  beq     $zero, $zero, .L809FD794   
/* 006E4 809FD714 8FAB0028 */  lw      $t3, 0x0028($sp)           
.L809FD718:
/* 006E8 809FD718 0C042DC8 */  jal     func_8010B720              
/* 006EC 809FD71C 24050096 */  addiu   $a1, $zero, 0x0096         ## $a1 = 00000096
/* 006F0 809FD720 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 006F4 809FD724 3C0E80A0 */  lui     $t6, %hi(func_809FD160)    ## $t6 = 80A00000
/* 006F8 809FD728 25CED160 */  addiu   $t6, $t6, %lo(func_809FD160) ## $t6 = 809FD160
/* 006FC 809FD72C 1000001C */  beq     $zero, $zero, .L809FD7A0   
/* 00700 809FD730 ADEE01EC */  sw      $t6, 0x01EC($t7)           ## 000001EC
.L809FD734:
/* 00704 809FD734 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00708 809FD738 2404FF9C */  addiu   $a0, $zero, 0xFF9C         ## $a0 = FFFFFF9C
/* 0070C 809FD73C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00710 809FD740 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00714 809FD744 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00718 809FD748 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 0071C 809FD74C 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00720 809FD750 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 00724 809FD754 0301C824 */  and     $t9, $t8, $at              
/* 00728 809FD758 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0072C 809FD75C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00730 809FD760 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 00734 809FD764 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00738 809FD768 24060012 */  addiu   $a2, $zero, 0x0012         ## $a2 = 00000012
/* 0073C 809FD76C 0C00BD0D */  jal     func_8002F434              
/* 00740 809FD770 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00744 809FD774 8FA90028 */  lw      $t1, 0x0028($sp)           
/* 00748 809FD778 3C0880A0 */  lui     $t0, %hi(func_809FD61C)    ## $t0 = 80A00000
/* 0074C 809FD77C 2508D61C */  addiu   $t0, $t0, %lo(func_809FD61C) ## $t0 = 809FD61C
/* 00750 809FD780 10000007 */  beq     $zero, $zero, .L809FD7A0   
/* 00754 809FD784 AD2801EC */  sw      $t0, 0x01EC($t1)           ## 000001EC
.L809FD788:
/* 00758 809FD788 0C042DC8 */  jal     func_8010B720              
/* 0075C 809FD78C 2405500D */  addiu   $a1, $zero, 0x500D         ## $a1 = 0000500D
/* 00760 809FD790 8FAB0028 */  lw      $t3, 0x0028($sp)           
.L809FD794:
/* 00764 809FD794 3C0A80A0 */  lui     $t2, %hi(func_809FD10C)    ## $t2 = 80A00000
/* 00768 809FD798 254AD10C */  addiu   $t2, $t2, %lo(func_809FD10C) ## $t2 = 809FD10C
/* 0076C 809FD79C AD6A01EC */  sw      $t2, 0x01EC($t3)           ## 000001EC
.L809FD7A0:
/* 00770 809FD7A0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809FD7A4:
/* 00774 809FD7A4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00778 809FD7A8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0077C 809FD7AC 03E00008 */  jr      $ra                        
/* 00780 809FD7B0 00000000 */  nop


