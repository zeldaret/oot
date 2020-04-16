glabel func_80AEFE9C
/* 0528C 80AEFE9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05290 80AEFEA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05294 80AEFEA4 0C2BBF8E */  jal     func_80AEFE38              
/* 05298 80AEFEA8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0529C 80AEFEAC 10400003 */  beq     $v0, $zero, .L80AEFEBC     
/* 052A0 80AEFEB0 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 052A4 80AEFEB4 240E002C */  addiu   $t6, $zero, 0x002C         ## $t6 = 0000002C
/* 052A8 80AEFEB8 ADEE0264 */  sw      $t6, 0x0264($t7)           ## 00000264
.L80AEFEBC:
/* 052AC 80AEFEBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 052B0 80AEFEC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 052B4 80AEFEC4 03E00008 */  jr      $ra                        
/* 052B8 80AEFEC8 00000000 */  nop
