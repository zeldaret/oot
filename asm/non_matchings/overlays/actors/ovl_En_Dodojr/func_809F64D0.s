glabel func_809F64D0
/* 00110 809F64D0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00114 809F64D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00118 809F64D8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0011C 809F64DC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00120 809F64E0 2405180E */  addiu   $a1, $zero, 0x180E         ## $a1 = 0000180E
/* 00124 809F64E4 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 00128 809F64E8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0012C 809F64EC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00130 809F64F0 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00134 809F64F4 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 00138 809F64F8 0C00D09B */  jal     func_8003426C              
/* 0013C 809F64FC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00140 809F6500 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00144 809F6504 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00148 809F6508 03E00008 */  jr      $ra                        
/* 0014C 809F650C 00000000 */  nop
