glabel func_80A56ACC
/* 009FC 80A56ACC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A00 80A56AD0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A04 80A56AD4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A08 80A56AD8 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 00A0C 80A56ADC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00A10 80A56AE0 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00A14 80A56AE4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A18 80A56AE8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A1C 80A56AEC E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 00A20 80A56AF0 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00A24 80A56AF4 C7A6001C */  lwc1    $f6, 0x001C($sp)           
/* 00A28 80A56AF8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00A2C 80A56AFC C4E80288 */  lwc1    $f8, 0x0288($a3)           ## 00000288
/* 00A30 80A56B00 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00A34 80A56B04 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00A38 80A56B08 4606403E */  c.le.s  $f8, $f6                   
/* 00A3C 80A56B0C 00000000 */  nop
/* 00A40 80A56B10 45020008 */  bc1fl   .L80A56B34                 
/* 00A44 80A56B14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A48 80A56B18 0C00B7D5 */  jal     func_8002DF54              
/* 00A4C 80A56B1C AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00A50 80A56B20 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00A54 80A56B24 3C0E80A5 */  lui     $t6, %hi(func_80A5673C)    ## $t6 = 80A50000
/* 00A58 80A56B28 25CE673C */  addiu   $t6, $t6, %lo(func_80A5673C) ## $t6 = 80A5673C
/* 00A5C 80A56B2C ACEE025C */  sw      $t6, 0x025C($a3)           ## 0000025C
/* 00A60 80A56B30 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A56B34:
/* 00A64 80A56B34 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A68 80A56B38 03E00008 */  jr      $ra                        
/* 00A6C 80A56B3C 00000000 */  nop


