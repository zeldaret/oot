glabel func_80A96048
/* 00CF8 80A96048 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CFC 80A9604C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D00 80A96050 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D04 80A96054 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00D08 80A96058 10400002 */  beq     $v0, $zero, .L80A96064     
/* 00D0C 80A9605C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00D10 80A96060 A48E001C */  sh      $t6, 0x001C($a0)           ## 0000001C
.L80A96064:
/* 00D14 80A96064 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00D18 80A96068 0C00BD04 */  jal     func_8002F410              
/* 00D1C 80A9606C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D20 80A96070 14400005 */  bne     $v0, $zero, .L80A96088     
/* 00D24 80A96074 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D28 80A96078 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 00D2C 80A9607C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00D30 80A96080 15E00005 */  bne     $t7, $zero, .L80A96098     
/* 00D34 80A96084 00000000 */  nop
.L80A96088:
/* 00D38 80A96088 0C2A5618 */  jal     func_80A95860              
/* 00D3C 80A9608C 00000000 */  nop
/* 00D40 80A96090 10000004 */  beq     $zero, $zero, .L80A960A4   
/* 00D44 80A96094 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A96098:
/* 00D48 80A96098 0C00BD55 */  jal     func_8002F554              
/* 00D4C 80A9609C 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00D50 80A960A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A960A4:
/* 00D54 80A960A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D58 80A960A8 03E00008 */  jr      $ra                        
/* 00D5C 80A960AC 00000000 */  nop
