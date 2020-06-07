glabel func_809F709C
/* 00CDC 809F709C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CE0 809F70A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CE4 809F70A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CE8 809F70A8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00CEC 809F70AC 24053821 */  addiu   $a1, $zero, 0x3821         ## $a1 = 00003821
/* 00CF0 809F70B0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CF4 809F70B4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00CF8 809F70B8 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00CFC 809F70BC 01C17824 */  and     $t7, $t6, $at              
/* 00D00 809F70C0 0C27DA88 */  jal     func_809F6A20              
/* 00D04 809F70C4 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00D08 809F70C8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D0C 809F70CC 3C18809F */  lui     $t8, %hi(func_809F7AB8)    ## $t8 = 809F0000
/* 00D10 809F70D0 27187AB8 */  addiu   $t8, $t8, %lo(func_809F7AB8) ## $t8 = 809F7AB8
/* 00D14 809F70D4 AC980190 */  sw      $t8, 0x0190($a0)           ## 00000190
/* 00D18 809F70D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D1C 809F70DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D20 809F70E0 03E00008 */  jr      $ra                        
/* 00D24 809F70E4 00000000 */  nop
