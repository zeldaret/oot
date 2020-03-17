glabel BgHakaShip_Update
/* 00674 8087F774 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00678 8087F778 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0067C 8087F77C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00680 8087F780 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00684 8087F784 0320F809 */  jalr    $ra, $t9                   
/* 00688 8087F788 00000000 */  nop
/* 0068C 8087F78C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00690 8087F790 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00694 8087F794 55C00004 */  bnel    $t6, $zero, .L8087F7A8     
/* 00698 8087F798 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0069C 8087F79C 0C00B638 */  jal     Actor_MoveForward
              
/* 006A0 8087F7A0 00000000 */  nop
/* 006A4 8087F7A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8087F7A8:
/* 006A8 8087F7A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006AC 8087F7AC 03E00008 */  jr      $ra                        
/* 006B0 8087F7B0 00000000 */  nop


