glabel func_80AB32EC
/* 0255C 80AB32EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02560 80AB32F0 10A00007 */  beq     $a1, $zero, .L80AB3310     
/* 02564 80AB32F4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02568 80AB32F8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0256C 80AB32FC 24A55614 */  addiu   $a1, $a1, 0x5614           ## $a1 = 06005614
/* 02570 80AB3300 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02574 80AB3304 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02578 80AB3308 0C2AC528 */  jal     func_80AB14A0              
/* 0257C 80AB330C AFA00010 */  sw      $zero, 0x0010($sp)         
.L80AB3310:
/* 02580 80AB3310 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02584 80AB3314 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02588 80AB3318 03E00008 */  jr      $ra                        
/* 0258C 80AB331C 00000000 */  nop


