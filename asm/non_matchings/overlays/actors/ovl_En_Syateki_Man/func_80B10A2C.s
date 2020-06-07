glabel func_80B10A2C
/* 001BC 80B10A2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001C0 80B10A30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001C4 80B10A34 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001C8 80B10A38 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001CC 80B10A3C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 001D0 80B10A40 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 001D4 80B10A44 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 001D8 80B10A48 0C00BC65 */  jal     func_8002F194              
/* 001DC 80B10A4C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 001E0 80B10A50 10400005 */  beq     $v0, $zero, .L80B10A68     
/* 001E4 80B10A54 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 001E8 80B10A58 3C0E80B1 */  lui     $t6, %hi(func_80B10A84)    ## $t6 = 80B10000
/* 001EC 80B10A5C 25CE0A84 */  addiu   $t6, $t6, %lo(func_80B10A84) ## $t6 = 80B10A84
/* 001F0 80B10A60 10000004 */  beq     $zero, $zero, .L80B10A74   
/* 001F4 80B10A64 AC8E01FC */  sw      $t6, 0x01FC($a0)           ## 000001FC
.L80B10A68:
/* 001F8 80B10A68 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 001FC 80B10A6C 0C00BCB3 */  jal     func_8002F2CC              
/* 00200 80B10A70 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
.L80B10A74:
/* 00204 80B10A74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00208 80B10A78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0020C 80B10A7C 03E00008 */  jr      $ra                        
/* 00210 80B10A80 00000000 */  nop
