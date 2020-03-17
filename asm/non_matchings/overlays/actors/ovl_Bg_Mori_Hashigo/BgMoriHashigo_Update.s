glabel BgMoriHashigo_Update
/* 0068C 808A2BEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00690 808A2BF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00694 808A2BF4 848201C8 */  lh      $v0, 0x01C8($a0)           ## 000001C8
/* 00698 808A2BF8 18400002 */  blez    $v0, .L808A2C04            
/* 0069C 808A2BFC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 006A0 808A2C00 A48E01C8 */  sh      $t6, 0x01C8($a0)           ## 000001C8
.L808A2C04:
/* 006A4 808A2C04 8C8201C4 */  lw      $v0, 0x01C4($a0)           ## 000001C4
/* 006A8 808A2C08 50400004 */  beql    $v0, $zero, .L808A2C1C     
/* 006AC 808A2C0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006B0 808A2C10 0040F809 */  jalr    $ra, $v0                   
/* 006B4 808A2C14 00000000 */  nop
/* 006B8 808A2C18 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A2C1C:
/* 006BC 808A2C1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006C0 808A2C20 03E00008 */  jr      $ra                        
/* 006C4 808A2C24 00000000 */  nop


