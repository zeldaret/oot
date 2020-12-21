.late_rodata

glabel jtbl_8087A7F0
    .word L80879D7C
    .word L80879D7C
    .word L80879D8C
    .word L80879D8C
    .word L80879D8C
    .word L80879D7C
    .word L80879D8C
    .word L80879D8C
    .word L80879D84
    .word L80879D8C
    .word L80879D8C
    .word L80879D8C
    .word L80879D8C
    .word L80879D7C
    .word L80879D8C
    .word L80879D8C
    .word L80879D7C
    .word L80879D8C
    .word L80879D8C
    .word L80879D8C
    .word L80879D7C
    .word L80879D7C

.text
glabel func_80879D4C
/* 002AC 80879D4C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 002B0 80879D50 3C0F8088 */  lui     $t7, %hi(D_8087AC40)       ## $t7 = 80880000
/* 002B4 80879D54 01EE7821 */  addu    $t7, $t7, $t6              
/* 002B8 80879D58 91EFAC40 */  lbu     $t7, %lo(D_8087AC40)($t7)  
/* 002BC 80879D5C 2DE10016 */  sltiu   $at, $t7, 0x0016           
/* 002C0 80879D60 1020000A */  beq     $at, $zero, .L80879D8C     
/* 002C4 80879D64 000F7880 */  sll     $t7, $t7,  2               
/* 002C8 80879D68 3C018088 */  lui     $at, %hi(jtbl_8087A7F0)       ## $at = 80880000
/* 002CC 80879D6C 002F0821 */  addu    $at, $at, $t7              
/* 002D0 80879D70 8C2FA7F0 */  lw      $t7, %lo(jtbl_8087A7F0)($at)  
/* 002D4 80879D74 01E00008 */  jr      $t7                        
/* 002D8 80879D78 00000000 */  nop
glabel L80879D7C
/* 002DC 80879D7C 03E00008 */  jr      $ra                        
/* 002E0 80879D80 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80879D84
/* 002E4 80879D84 03E00008 */  jr      $ra                        
/* 002E8 80879D88 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
glabel L80879D8C
.L80879D8C:
/* 002EC 80879D8C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 002F0 80879D90 03E00008 */  jr      $ra                        
/* 002F4 80879D94 00000000 */  nop
