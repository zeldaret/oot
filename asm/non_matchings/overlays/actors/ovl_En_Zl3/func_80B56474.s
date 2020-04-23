glabel func_80B56474
/* 030C4 80B56474 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 030C8 80B56478 10A00007 */  beq     $a1, $zero, .L80B56498     
/* 030CC 80B5647C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 030D0 80B56480 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 030D4 80B56484 24A514DC */  addiu   $a1, $a1, 0x14DC           ## $a1 = 060014DC
/* 030D8 80B56488 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 030DC 80B5648C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 030E0 80B56490 0C2D5385 */  jal     func_80B54E14              
/* 030E4 80B56494 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B56498:
/* 030E8 80B56498 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 030EC 80B5649C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 030F0 80B564A0 03E00008 */  jr      $ra                        
/* 030F4 80B564A4 00000000 */  nop
