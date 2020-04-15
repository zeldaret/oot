glabel func_80A57F5C
/* 00D5C 80A57F5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D60 80A57F60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D64 80A57F64 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D68 80A57F68 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D6C 80A57F6C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D70 80A57F70 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D74 80A57F74 50400004 */  beql    $v0, $zero, .L80A57F88     
/* 00D78 80A57F78 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D7C 80A57F7C 0C295E14 */  jal     func_80A57850              
/* 00D80 80A57F80 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D84 80A57F84 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A57F88:
/* 00D88 80A57F88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D8C 80A57F8C 03E00008 */  jr      $ra                        
/* 00D90 80A57F90 00000000 */  nop
