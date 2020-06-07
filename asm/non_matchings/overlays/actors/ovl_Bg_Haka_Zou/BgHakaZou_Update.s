glabel BgHakaZou_Update
/* 00FB4 80883574 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FB8 80883578 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FBC 8088357C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00FC0 80883580 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00FC4 80883584 0320F809 */  jalr    $ra, $t9                   
/* 00FC8 80883588 00000000 */  nop
/* 00FCC 8088358C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00FD0 80883590 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00FD4 80883594 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00FD8 80883598 55C10004 */  bnel    $t6, $at, .L808835AC       
/* 00FDC 8088359C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FE0 808835A0 0C00B638 */  jal     Actor_MoveForward
              
/* 00FE4 808835A4 00000000 */  nop
/* 00FE8 808835A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808835AC:
/* 00FEC 808835AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FF0 808835B0 03E00008 */  jr      $ra                        
/* 00FF4 808835B4 00000000 */  nop
