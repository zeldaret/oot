glabel func_80A49974
/* 00AB4 80A49974 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AB8 80A49978 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00ABC 80A4997C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00AC0 80A49980 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AC4 80A49984 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00AC8 80A49988 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00ACC 80A4998C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00AD0 80A49990 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00AD4 80A49994 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00AD8 80A49998 84AE02CC */  lh      $t6, 0x02CC($a1)           ## 000002CC
/* 00ADC 80A4999C 55C00004 */  bnel    $t6, $zero, .L80A499B0     
/* 00AE0 80A499A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AE4 80A499A4 0C2927A0 */  jal     func_80A49E80              
/* 00AE8 80A499A8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00AEC 80A499AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A499B0:
/* 00AF0 80A499B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AF4 80A499B4 03E00008 */  jr      $ra                        
/* 00AF8 80A499B8 00000000 */  nop


