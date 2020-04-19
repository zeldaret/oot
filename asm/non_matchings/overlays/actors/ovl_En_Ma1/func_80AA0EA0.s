glabel func_80AA0EA0
/* 00810 80AA0EA0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00814 80AA0EA4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00818 80AA0EA8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0081C 80AA0EAC 0C00BD04 */  jal     func_8002F410              
/* 00820 80AA0EB0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00824 80AA0EB4 10400006 */  beq     $v0, $zero, .L80AA0ED0     
/* 00828 80AA0EB8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0082C 80AA0EBC 3C0E80AA */  lui     $t6, %hi(func_80AA0EFC)    ## $t6 = 80AA0000
/* 00830 80AA0EC0 25CE0EFC */  addiu   $t6, $t6, %lo(func_80AA0EFC) ## $t6 = 80AA0EFC
/* 00834 80AA0EC4 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 00838 80AA0EC8 10000008 */  beq     $zero, $zero, .L80AA0EEC   
/* 0083C 80AA0ECC AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
.L80AA0ED0:
/* 00840 80AA0ED0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00844 80AA0ED4 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00848 80AA0ED8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0084C 80AA0EDC 24060047 */  addiu   $a2, $zero, 0x0047         ## $a2 = 00000047
/* 00850 80AA0EE0 3C0742F0 */  lui     $a3, 0x42F0                ## $a3 = 42F00000
/* 00854 80AA0EE4 0C00BD0D */  jal     func_8002F434              
/* 00858 80AA0EE8 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80AA0EEC:
/* 0085C 80AA0EEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00860 80AA0EF0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00864 80AA0EF4 03E00008 */  jr      $ra                        
/* 00868 80AA0EF8 00000000 */  nop
