glabel func_80930FE8
/* 04A18 80930FE8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04A1C 80930FEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04A20 80930FF0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04A24 80930FF4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 04A28 80930FF8 84E5008A */  lh      $a1, 0x008A($a3)           ## 0000008A
/* 04A2C 80930FFC AFA70020 */  sw      $a3, 0x0020($sp)           
/* 04A30 80931000 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 04A34 80931004 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 04A38 80931008 24060400 */  addiu   $a2, $zero, 0x0400         ## $a2 = 00000400
/* 04A3C 8093100C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 04A40 80931010 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 04A44 80931014 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 04A48 80931018 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 04A4C 8093101C 10400005 */  beq     $v0, $zero, .L80931034     
/* 04A50 80931020 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 04A54 80931024 51C00004 */  beql    $t6, $zero, .L80931038     
/* 04A58 80931028 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04A5C 8093102C 0C24C411 */  jal     func_80931044              
/* 04A60 80931030 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80931034:
/* 04A64 80931034 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80931038:
/* 04A68 80931038 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04A6C 8093103C 03E00008 */  jr      $ra                        
/* 04A70 80931040 00000000 */  nop


