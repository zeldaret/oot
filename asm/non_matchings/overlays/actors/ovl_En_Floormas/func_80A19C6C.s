glabel func_80A19C6C
/* 0275C 80A19C6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02760 80A19C70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02764 80A19C74 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02768 80A19C78 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0276C 80A19C7C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02770 80A19C80 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02774 80A19C84 50400004 */  beql    $v0, $zero, .L80A19C98     
/* 02778 80A19C88 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0277C 80A19C8C 0C285DF2 */  jal     func_80A177C8              
/* 02780 80A19C90 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02784 80A19C94 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A19C98:
/* 02788 80A19C98 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0278C 80A19C9C 03E00008 */  jr      $ra                        
/* 02790 80A19CA0 00000000 */  nop


