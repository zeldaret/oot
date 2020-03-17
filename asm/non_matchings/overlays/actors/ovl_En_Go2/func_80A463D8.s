glabel func_80A463D8
/* 036A8 80A463D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 036AC 80A463DC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 036B0 80A463E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 036B4 80A463E4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 036B8 80A463E8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 036BC 80A463EC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 036C0 80A463F0 0C0300C5 */  jal     func_800C0314              
/* 036C4 80A463F4 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 036C8 80A463F8 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 036CC 80A463FC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 036D0 80A46400 0C0300E1 */  jal     func_800C0384              
/* 036D4 80A46404 85C5059A */  lh      $a1, 0x059A($t6)           ## 0000059A
/* 036D8 80A46408 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 036DC 80A4640C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 036E0 80A46410 03E00008 */  jr      $ra                        
/* 036E4 80A46414 00000000 */  nop


