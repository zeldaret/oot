glabel func_80A49AA8
/* 00BE8 80A49AA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BEC 80A49AAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BF0 80A49AB0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00BF4 80A49AB4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00BF8 80A49AB8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00BFC 80A49ABC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00C00 80A49AC0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00C04 80A49AC4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00C08 80A49AC8 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00C0C 80A49ACC 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 00C10 80A49AD0 94EE0088 */  lhu     $t6, 0x0088($a3)           ## 00000088
/* 00C14 80A49AD4 24E40068 */  addiu   $a0, $a3, 0x0068           ## $a0 = 00000068
/* 00C18 80A49AD8 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00C1C 80A49ADC 51E00005 */  beql    $t7, $zero, .L80A49AF4     
/* 00C20 80A49AE0 84F802CC */  lh      $t8, 0x02CC($a3)           ## 000002CC
/* 00C24 80A49AE4 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00C28 80A49AE8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00C2C 80A49AEC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00C30 80A49AF0 84F802CC */  lh      $t8, 0x02CC($a3)           ## 000002CC
.L80A49AF4:
/* 00C34 80A49AF4 5700000B */  bnel    $t8, $zero, .L80A49B24     
/* 00C38 80A49AF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C3C 80A49AFC 80F900AF */  lb      $t9, 0x00AF($a3)           ## 000000AF
/* 00C40 80A49B00 1F200005 */  bgtz    $t9, .L80A49B18            
/* 00C44 80A49B04 00000000 */  nop
/* 00C48 80A49B08 0C2926CC */  jal     func_80A49B30              
/* 00C4C 80A49B0C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00C50 80A49B10 10000004 */  beq     $zero, $zero, .L80A49B24   
/* 00C54 80A49B14 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A49B18:
/* 00C58 80A49B18 0C2924A5 */  jal     func_80A49294              
/* 00C5C 80A49B1C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00C60 80A49B20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A49B24:
/* 00C64 80A49B24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C68 80A49B28 03E00008 */  jr      $ra                        
/* 00C6C 80A49B2C 00000000 */  nop


