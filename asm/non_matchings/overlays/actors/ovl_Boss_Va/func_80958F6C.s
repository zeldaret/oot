glabel func_80958F6C
/* 09CAC 80958F6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 09CB0 80958F70 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 09CB4 80958F74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 09CB8 80958F78 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 09CBC 80958F7C 10A10009 */  beq     $a1, $at, .L80958FA4       
/* 09CC0 80958F80 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 09CC4 80958F84 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 09CC8 80958F88 10A10008 */  beq     $a1, $at, .L80958FAC       
/* 09CCC 80958F8C 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 09CD0 80958F90 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 09CD4 80958F94 50A1000E */  beql    $a1, $at, .L80958FD0       
/* 09CD8 80958F98 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 09CDC 80958F9C 10000013 */  beq     $zero, $zero, .L80958FEC   
/* 09CE0 80958FA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80958FA4:
/* 09CE4 80958FA4 10000010 */  beq     $zero, $zero, .L80958FE8   
/* 09CE8 80958FA8 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
.L80958FAC:
/* 09CEC 80958FAC C5CC01D8 */  lwc1    $f12, 0x01D8($t6)          ## 000001D8
/* 09CF0 80958FB0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 09CF4 80958FB4 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 09CF8 80958FB8 44066000 */  mfc1    $a2, $f12                  
/* 09CFC 80958FBC 0C0342A3 */  jal     Matrix_Scale              
/* 09D00 80958FC0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 09D04 80958FC4 10000009 */  beq     $zero, $zero, .L80958FEC   
/* 09D08 80958FC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 09D0C 80958FCC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L80958FD0:
/* 09D10 80958FD0 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 09D14 80958FD4 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 09D18 80958FD8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 09D1C 80958FDC 44066000 */  mfc1    $a2, $f12                  
/* 09D20 80958FE0 0C0342A3 */  jal     Matrix_Scale              
/* 09D24 80958FE4 C5EE01DC */  lwc1    $f14, 0x01DC($t7)          ## 000001DC
.L80958FE8:
/* 09D28 80958FE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80958FEC:
/* 09D2C 80958FEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 09D30 80958FF0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 09D34 80958FF4 03E00008 */  jr      $ra                        
/* 09D38 80958FF8 00000000 */  nop
