.late_rodata
glabel D_809889D8
 .word 0xC61C4000

.text
glabel func_80985310
/* 00730 80985310 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00734 80985314 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00738 80985318 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0073C 8098531C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00740 80985320 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00744 80985324 24A51868 */  addiu   $a1, $a1, 0x1868           ## $a1 = 06001868
/* 00748 80985328 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0074C 8098532C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00750 80985330 0C2614A0 */  jal     func_80985280              
/* 00754 80985334 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00758 80985338 3C018099 */  lui     $at, %hi(D_809889D8)       ## $at = 80990000
/* 0075C 8098533C C42489D8 */  lwc1    $f4, %lo(D_809889D8)($at)  
/* 00760 80985340 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00764 80985344 E5C400BC */  swc1    $f4, 0x00BC($t6)           ## 000000BC
/* 00768 80985348 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0076C 8098534C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00770 80985350 03E00008 */  jr      $ra                        
/* 00774 80985354 00000000 */  nop
