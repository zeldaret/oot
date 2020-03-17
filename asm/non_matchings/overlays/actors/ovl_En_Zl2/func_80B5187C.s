glabel func_80B5187C
/* 02EEC 80B5187C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02EF0 80B51880 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02EF4 80B51884 10A0000A */  beq     $a1, $zero, .L80B518B0     
/* 02EF8 80B51888 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02EFC 80B5188C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02F00 80B51890 24A5A79C */  addiu   $a1, $a1, 0xA79C           ## $a1 = 0600A79C
/* 02F04 80B51894 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02F08 80B51898 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02F0C 80B5189C 0C2D3F40 */  jal     func_80B4FD00              
/* 02F10 80B518A0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02F14 80B518A4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02F18 80B518A8 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 02F1C 80B518AC E5C4027C */  swc1    $f4, 0x027C($t6)           ## 0000027C
.L80B518B0:
/* 02F20 80B518B0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02F24 80B518B4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02F28 80B518B8 03E00008 */  jr      $ra                        
/* 02F2C 80B518BC 00000000 */  nop


