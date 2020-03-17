glabel func_80B4ED2C
/* 0039C 80B4ED2C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 003A0 80B4ED30 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 003A4 80B4ED34 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 003A8 80B4ED38 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 003AC 80B4ED3C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 003B0 80B4ED40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 003B4 80B4ED44 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 003B8 80B4ED48 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 003BC 80B4ED4C 44070000 */  mfc1    $a3, $f0                   
/* 003C0 80B4ED50 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 003C4 80B4ED54 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 003C8 80B4ED58 3C064296 */  lui     $a2, 0x4296                ## $a2 = 42960000
/* 003CC 80B4ED5C 0C00B92D */  jal     func_8002E4B4              
/* 003D0 80B4ED60 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 003D4 80B4ED64 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003D8 80B4ED68 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003DC 80B4ED6C 03E00008 */  jr      $ra                        
/* 003E0 80B4ED70 00000000 */  nop


