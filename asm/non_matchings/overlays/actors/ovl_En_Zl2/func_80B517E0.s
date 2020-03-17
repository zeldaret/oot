glabel func_80B517E0
/* 02E50 80B517E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02E54 80B517E4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02E58 80B517E8 10A0000A */  beq     $a1, $zero, .L80B51814     
/* 02E5C 80B517EC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02E60 80B517F0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02E64 80B517F4 24A52750 */  addiu   $a1, $a1, 0x2750           ## $a1 = 06002750
/* 02E68 80B517F8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02E6C 80B517FC 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02E70 80B51800 0C2D3F40 */  jal     func_80B4FD00              
/* 02E74 80B51804 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02E78 80B51808 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02E7C 80B5180C 240E001F */  addiu   $t6, $zero, 0x001F         ## $t6 = 0000001F
/* 02E80 80B51810 ADEE019C */  sw      $t6, 0x019C($t7)           ## 0000019C
.L80B51814:
/* 02E84 80B51814 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02E88 80B51818 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02E8C 80B5181C 03E00008 */  jr      $ra                        
/* 02E90 80B51820 00000000 */  nop


