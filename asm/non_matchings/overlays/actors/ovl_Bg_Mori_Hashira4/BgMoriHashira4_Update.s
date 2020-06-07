glabel BgMoriHashira4_Update
/* 003F8 808A3458 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003FC 808A345C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00400 808A3460 8C820164 */  lw      $v0, 0x0164($a0)           ## 00000164
/* 00404 808A3464 50400004 */  beql    $v0, $zero, .L808A3478     
/* 00408 808A3468 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0040C 808A346C 0040F809 */  jalr    $ra, $v0                   
/* 00410 808A3470 00000000 */  nop
/* 00414 808A3474 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A3478:
/* 00418 808A3478 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0041C 808A347C 03E00008 */  jr      $ra                        
/* 00420 808A3480 00000000 */  nop
