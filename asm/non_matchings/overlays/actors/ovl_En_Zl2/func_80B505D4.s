glabel func_80B505D4
/* 01C44 80B505D4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01C48 80B505D8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01C4C 80B505DC 10A0000A */  beq     $a1, $zero, .L80B50608     
/* 01C50 80B505E0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01C54 80B505E4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01C58 80B505E8 24A50EB0 */  addiu   $a1, $a1, 0x0EB0           ## $a1 = 06000EB0
/* 01C5C 80B505EC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01C60 80B505F0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01C64 80B505F4 0C2D3F40 */  jal     func_80B4FD00              
/* 01C68 80B505F8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01C6C 80B505FC 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01C70 80B50600 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 01C74 80B50604 ADEE019C */  sw      $t6, 0x019C($t7)           ## 0000019C
.L80B50608:
/* 01C78 80B50608 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01C7C 80B5060C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01C80 80B50610 03E00008 */  jr      $ra                        
/* 01C84 80B50614 00000000 */  nop
