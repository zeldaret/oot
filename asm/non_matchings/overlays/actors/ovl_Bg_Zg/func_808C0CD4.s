glabel func_808C0CD4
/* 000B4 808C0CD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000B8 808C0CD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000BC 808C0CDC 0C230326 */  jal     func_808C0C98              
/* 000C0 808C0CE0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000C4 808C0CE4 10400004 */  beq     $v0, $zero, .L808C0CF8     
/* 000C8 808C0CE8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 000CC 808C0CEC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 000D0 808C0CF0 0C230314 */  jal     func_808C0C50              
/* 000D4 808C0CF4 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
.L808C0CF8:
/* 000D8 808C0CF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000DC 808C0CFC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000E0 808C0D00 03E00008 */  jr      $ra                        
/* 000E4 808C0D04 00000000 */  nop


