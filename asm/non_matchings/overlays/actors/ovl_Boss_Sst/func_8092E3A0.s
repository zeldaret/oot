glabel func_8092E3A0
/* 01DD0 8092E3A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01DD4 8092E3A4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01DD8 8092E3A8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 01DDC 8092E3AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01DE0 8092E3B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01DE4 8092E3B4 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 01DE8 8092E3B8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01DEC 8092E3BC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01DF0 8092E3C0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 01DF4 8092E3C4 80AE0195 */  lb      $t6, 0x0195($a1)           ## 00000195
/* 01DF8 8092E3C8 51C00004 */  beql    $t6, $zero, .L8092E3DC     
/* 01DFC 8092E3CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E00 8092E3D0 0C24B8FA */  jal     func_8092E3E8              
/* 01E04 8092E3D4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01E08 8092E3D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8092E3DC:
/* 01E0C 8092E3DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E10 8092E3E0 03E00008 */  jr      $ra                        
/* 01E14 8092E3E4 00000000 */  nop
