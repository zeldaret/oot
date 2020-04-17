glabel func_80AB1FA4
/* 01214 80AB1FA4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01218 80AB1FA8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0121C 80AB1FAC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01220 80AB1FB0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01224 80AB1FB4 24A51E7C */  addiu   $a1, $a1, 0x1E7C           ## $a1 = 06001E7C
/* 01228 80AB1FB8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0122C 80AB1FBC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01230 80AB1FC0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01234 80AB1FC4 0C2AC528 */  jal     func_80AB14A0              
/* 01238 80AB1FC8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0123C 80AB1FCC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01240 80AB1FD0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 01244 80AB1FD4 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 01248 80AB1FD8 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0124C 80AB1FDC AC8E0278 */  sw      $t6, 0x0278($a0)           ## 00000278
/* 01250 80AB1FE0 A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 01254 80AB1FE4 944F0EE6 */  lhu     $t7, 0x0EE6($v0)           ## 8015F546
/* 01258 80AB1FE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0125C 80AB1FEC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01260 80AB1FF0 35F80020 */  ori     $t8, $t7, 0x0020           ## $t8 = 00000020
/* 01264 80AB1FF4 03E00008 */  jr      $ra                        
/* 01268 80AB1FF8 A4580EE6 */  sh      $t8, 0x0EE6($v0)           ## 8015F546
