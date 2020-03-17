glabel func_80B903C4
/* 01944 80B903C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01948 80B903C8 3C0E80B9 */  lui     $t6, %hi(func_80B90400)    ## $t6 = 80B90000
/* 0194C 80B903CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01950 80B903D0 25CE0400 */  addiu   $t6, $t6, %lo(func_80B90400) ## $t6 = 80B90400
/* 01954 80B903D4 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 01958 80B903D8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0195C 80B903DC 0C2E3BCA */  jal     func_80B8EF28              
/* 01960 80B903E0 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 01964 80B903E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01968 80B903E8 240F003C */  addiu   $t7, $zero, 0x003C         ## $t7 = 0000003C
/* 0196C 80B903EC A48F01B4 */  sh      $t7, 0x01B4($a0)           ## 000001B4
/* 01970 80B903F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01974 80B903F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01978 80B903F8 03E00008 */  jr      $ra                        
/* 0197C 80B903FC 00000000 */  nop


