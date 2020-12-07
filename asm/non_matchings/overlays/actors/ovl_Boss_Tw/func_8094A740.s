glabel func_8094A740
/* 11A70 8094A740 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 11A74 8094A744 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 11A78 8094A748 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 11A7C 8094A74C 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 11A80 8094A750 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 11A84 8094A754 0C02927F */  jal     SkelAnime_Update
              
/* 11A88 8094A758 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 11A8C 8094A75C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 11A90 8094A760 0C0295B2 */  jal     Animation_OnFrame              
/* 11A94 8094A764 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 11A98 8094A768 10400003 */  beq     $v0, $zero, .L8094A778     
/* 11A9C 8094A76C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 11AA0 8094A770 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 11AA4 8094A774 240539B9 */  addiu   $a1, $zero, 0x39B9         ## $a1 = 000039B9
.L8094A778:
/* 11AA8 8094A778 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 11AAC 8094A77C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 11AB0 8094A780 0C0295B2 */  jal     Animation_OnFrame              
/* 11AB4 8094A784 8DC501A4 */  lw      $a1, 0x01A4($t6)           ## 000001A4
/* 11AB8 8094A788 10400003 */  beq     $v0, $zero, .L8094A798     
/* 11ABC 8094A78C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 11AC0 8094A790 0C252870 */  jal     func_8094A1C0              
/* 11AC4 8094A794 8FA50024 */  lw      $a1, 0x0024($sp)           
.L8094A798:
/* 11AC8 8094A798 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 11ACC 8094A79C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 11AD0 8094A7A0 03E00008 */  jr      $ra                        
/* 11AD4 8094A7A4 00000000 */  nop
/* 11AD8 8094A7A8 00000000 */  nop
/* 11ADC 8094A7AC 00000000 */  nop
