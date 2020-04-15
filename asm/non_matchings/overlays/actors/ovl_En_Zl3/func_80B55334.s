glabel func_80B55334
/* 01F84 80B55334 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01F88 80B55338 10A00007 */  beq     $a1, $zero, .L80B55358     
/* 01F8C 80B5533C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01F90 80B55340 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01F94 80B55344 24A5AACC */  addiu   $a1, $a1, 0xAACC           ## $a1 = 0600AACC
/* 01F98 80B55348 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01F9C 80B5534C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01FA0 80B55350 0C2D5385 */  jal     func_80B54E14              
/* 01FA4 80B55354 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B55358:
/* 01FA8 80B55358 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01FAC 80B5535C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01FB0 80B55360 03E00008 */  jr      $ra                        
/* 01FB4 80B55364 00000000 */  nop
