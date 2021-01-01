glabel func_80B2742C
/* 00D7C 80B2742C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D80 80B27430 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D84 80B27434 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D88 80B27438 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D8C 80B2743C 0C02927F */  jal     SkelAnime_Update
              
/* 00D90 80B27440 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D94 80B27444 50400004 */  beql    $v0, $zero, .L80B27458     
/* 00D98 80B27448 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D9C 80B2744C 0C2C9A3F */  jal     func_80B268FC              
/* 00DA0 80B27450 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00DA4 80B27454 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B27458:
/* 00DA8 80B27458 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DAC 80B2745C 03E00008 */  jr      $ra                        
/* 00DB0 80B27460 00000000 */  nop
