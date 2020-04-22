glabel func_80986F88
/* 023A8 80986F88 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 023AC 80986F8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 023B0 80986F90 0C261B32 */  jal     func_80986CC8              
/* 023B4 80986F94 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 023B8 80986F98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 023BC 80986F9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 023C0 80986FA0 03E00008 */  jr      $ra                        
/* 023C4 80986FA4 00000000 */  nop
