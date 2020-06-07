glabel func_809C3C7C
/* 0064C 809C3C7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00650 809C3C80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00654 809C3C84 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00658 809C3C88 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0065C 809C3C8C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00660 809C3C90 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00664 809C3C94 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00668 809C3C98 0C00BC65 */  jal     func_8002F194              
/* 0066C 809C3C9C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00670 809C3CA0 10400005 */  beq     $v0, $zero, .L809C3CB8     
/* 00674 809C3CA4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00678 809C3CA8 3C0E809C */  lui     $t6, %hi(func_809C3CD4)    ## $t6 = 809C0000
/* 0067C 809C3CAC 25CE3CD4 */  addiu   $t6, $t6, %lo(func_809C3CD4) ## $t6 = 809C3CD4
/* 00680 809C3CB0 10000004 */  beq     $zero, $zero, .L809C3CC4   
/* 00684 809C3CB4 AC8E0214 */  sw      $t6, 0x0214($a0)           ## 00000214
.L809C3CB8:
/* 00688 809C3CB8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0068C 809C3CBC 0C00BCB3 */  jal     func_8002F2CC              
/* 00690 809C3CC0 3C0642F0 */  lui     $a2, 0x42F0                ## $a2 = 42F00000
.L809C3CC4:
/* 00694 809C3CC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00698 809C3CC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0069C 809C3CCC 03E00008 */  jr      $ra                        
/* 006A0 809C3CD0 00000000 */  nop
