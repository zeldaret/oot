glabel func_80B507E8
/* 01E58 80B507E8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01E5C 80B507EC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01E60 80B507F0 10A0000A */  beq     $a1, $zero, .L80B5081C     
/* 01E64 80B507F4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01E68 80B507F8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01E6C 80B507FC 24A51B48 */  addiu   $a1, $a1, 0x1B48           ## $a1 = 06001B48
/* 01E70 80B50800 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01E74 80B50804 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01E78 80B50808 0C2D3F40 */  jal     func_80B4FD00              
/* 01E7C 80B5080C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01E80 80B50810 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01E84 80B50814 240E0011 */  addiu   $t6, $zero, 0x0011         ## $t6 = 00000011
/* 01E88 80B50818 ADEE019C */  sw      $t6, 0x019C($t7)           ## 0000019C
.L80B5081C:
/* 01E8C 80B5081C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01E90 80B50820 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01E94 80B50824 03E00008 */  jr      $ra                        
/* 01E98 80B50828 00000000 */  nop


