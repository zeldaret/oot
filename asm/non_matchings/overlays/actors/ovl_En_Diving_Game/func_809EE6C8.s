glabel func_809EE6C8
/* 00E58 809EE6C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E5C 809EE6CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E60 809EE6D0 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00E64 809EE6D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E68 809EE6D8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E6C 809EE6DC AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00E70 809EE6E0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E74 809EE6E4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E78 809EE6E8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00E7C 809EE6EC 3C19809F */  lui     $t9, %hi(func_809EE408)    ## $t9 = 809F0000
/* 00E80 809EE6F0 3C01C352 */  lui     $at, 0xC352                ## $at = C3520000
/* 00E84 809EE6F4 84AE0296 */  lh      $t6, 0x0296($a1)           ## 00000296
/* 00E88 809EE6F8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00E8C 809EE6FC 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 00E90 809EE700 15C0001B */  bne     $t6, $zero, .L809EE770     
/* 00E94 809EE704 2739E408 */  addiu   $t9, $t9, %lo(func_809EE408) ## $t9 = 809EE408
/* 00E98 809EE708 44810000 */  mtc1    $at, $f0                   ## $f0 = -210.00
/* 00E9C 809EE70C 3C01C2A0 */  lui     $at, 0xC2A0                ## $at = C2A00000
/* 00EA0 809EE710 44811000 */  mtc1    $at, $f2                   ## $f2 = -80.00
/* 00EA4 809EE714 3C01C47F */  lui     $at, 0xC47F                ## $at = C47F0000
/* 00EA8 809EE718 44816000 */  mtc1    $at, $f12                  ## $f12 = -1020.00
/* 00EAC 809EE71C 3C01C38C */  lui     $at, 0xC38C                ## $at = C38C0000
/* 00EB0 809EE720 44817000 */  mtc1    $at, $f14                  ## $f14 = -280.00
/* 00EB4 809EE724 3C01C1A0 */  lui     $at, 0xC1A0                ## $at = C1A00000
/* 00EB8 809EE728 44818000 */  mtc1    $at, $f16                  ## $f16 = -20.00
/* 00EBC 809EE72C 3C01C370 */  lui     $at, 0xC370                ## $at = C3700000
/* 00EC0 809EE730 44819000 */  mtc1    $at, $f18                  ## $f18 = -240.00
/* 00EC4 809EE734 A4AF02A2 */  sh      $t7, 0x02A2($a1)           ## 000002A2
/* 00EC8 809EE738 A4B80294 */  sh      $t8, 0x0294($a1)           ## 00000294
/* 00ECC 809EE73C ACB90280 */  sw      $t9, 0x0280($a1)           ## 00000280
/* 00ED0 809EE740 E4A002F4 */  swc1    $f0, 0x02F4($a1)           ## 000002F4
/* 00ED4 809EE744 E4A002B8 */  swc1    $f0, 0x02B8($a1)           ## 000002B8
/* 00ED8 809EE748 E4A202F8 */  swc1    $f2, 0x02F8($a1)           ## 000002F8
/* 00EDC 809EE74C E4A202BC */  swc1    $f2, 0x02BC($a1)           ## 000002BC
/* 00EE0 809EE750 E4AC02FC */  swc1    $f12, 0x02FC($a1)          ## 000002FC
/* 00EE4 809EE754 E4AC02C0 */  swc1    $f12, 0x02C0($a1)          ## 000002C0
/* 00EE8 809EE758 E4AE02D0 */  swc1    $f14, 0x02D0($a1)          ## 000002D0
/* 00EEC 809EE75C E4AE02C4 */  swc1    $f14, 0x02C4($a1)          ## 000002C4
/* 00EF0 809EE760 E4B002D4 */  swc1    $f16, 0x02D4($a1)          ## 000002D4
/* 00EF4 809EE764 E4B002C8 */  swc1    $f16, 0x02C8($a1)          ## 000002C8
/* 00EF8 809EE768 E4B202D8 */  swc1    $f18, 0x02D8($a1)          ## 000002D8
/* 00EFC 809EE76C E4B202CC */  swc1    $f18, 0x02CC($a1)          ## 000002CC
.L809EE770:
/* 00F00 809EE770 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F04 809EE774 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F08 809EE778 03E00008 */  jr      $ra                        
/* 00F0C 809EE77C 00000000 */  nop
