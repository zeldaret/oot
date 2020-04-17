glabel BgMoriIdomizu_Update
/* 003F8 808A4A38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003FC 808A4A3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00400 808A4A40 8C82014C */  lw      $v0, 0x014C($a0)           ## 0000014C
/* 00404 808A4A44 50400004 */  beql    $v0, $zero, .L808A4A58     
/* 00408 808A4A48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0040C 808A4A4C 0040F809 */  jalr    $ra, $v0                   
/* 00410 808A4A50 00000000 */  nop
/* 00414 808A4A54 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A4A58:
/* 00418 808A4A58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0041C 808A4A5C 03E00008 */  jr      $ra                        
/* 00420 808A4A60 00000000 */  nop
