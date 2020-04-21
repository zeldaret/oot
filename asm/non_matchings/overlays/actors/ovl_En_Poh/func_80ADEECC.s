glabel func_80ADEECC
/* 0117C 80ADEECC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01180 80ADEED0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01184 80ADEED4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01188 80ADEED8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0118C 80ADEEDC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01190 80ADEEE0 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 01194 80ADEEE4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01198 80ADEEE8 0C01DE80 */  jal     Math_ApproxF
              
/* 0119C 80ADEEEC 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 011A0 80ADEEF0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 011A4 80ADEEF4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 011A8 80ADEEF8 24E4014C */  addiu   $a0, $a3, 0x014C           ## $a0 = 0000014C
/* 011AC 80ADEEFC 1040000A */  beq     $v0, $zero, .L80ADEF28     
/* 011B0 80ADEF00 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 011B4 80ADEF04 90EE00AF */  lbu     $t6, 0x00AF($a3)           ## 000000AF
/* 011B8 80ADEF08 11C00005 */  beq     $t6, $zero, .L80ADEF20     
/* 011BC 80ADEF0C 00000000 */  nop
/* 011C0 80ADEF10 0C2B78DA */  jal     func_80ADE368              
/* 011C4 80ADEF14 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 011C8 80ADEF18 10000004 */  beq     $zero, $zero, .L80ADEF2C   
/* 011CC 80ADEF1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADEF20:
/* 011D0 80ADEF20 0C2B7923 */  jal     func_80ADE48C              
/* 011D4 80ADEF24 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80ADEF28:
/* 011D8 80ADEF28 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADEF2C:
/* 011DC 80ADEF2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 011E0 80ADEF30 03E00008 */  jr      $ra                        
/* 011E4 80ADEF34 00000000 */  nop
