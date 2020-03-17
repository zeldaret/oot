glabel func_80AB2148
/* 013B8 80AB2148 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 013BC 80AB214C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 013C0 80AB2150 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 013C4 80AB2154 0C2AC4C4 */  jal     func_80AB1310              
/* 013C8 80AB2158 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 013CC 80AB215C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 013D0 80AB2160 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 013D4 80AB2164 AC8E0278 */  sw      $t6, 0x0278($a0)           ## 00000278
/* 013D8 80AB2168 AC80027C */  sw      $zero, 0x027C($a0)         ## 0000027C
/* 013DC 80AB216C A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 013E0 80AB2170 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 013E4 80AB2174 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013E8 80AB2178 03E00008 */  jr      $ra                        
/* 013EC 80AB217C 00000000 */  nop


