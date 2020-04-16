glabel func_80A3FEB4
/* 01944 80A3FEB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01948 80A3FEB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0194C 80A3FEBC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01950 80A3FEC0 3C0180A4 */  lui     $at, %hi(D_80A422A8)       ## $at = 80A40000
/* 01954 80A3FEC4 C42422A8 */  lwc1    $f4, %lo(D_80A422A8)($at)  
/* 01958 80A3FEC8 C486008C */  lwc1    $f6, 0x008C($a0)           ## 0000008C
/* 0195C 80A3FECC 3C0580A4 */  lui     $a1, %hi(func_80A3FEF8)    ## $a1 = 80A40000
/* 01960 80A3FED0 4606203C */  c.lt.s  $f4, $f6                   
/* 01964 80A3FED4 00000000 */  nop
/* 01968 80A3FED8 45030004 */  bc1tl   .L80A3FEEC                 
/* 0196C 80A3FEDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01970 80A3FEE0 0C28F95C */  jal     func_80A3E570              
/* 01974 80A3FEE4 24A5FEF8 */  addiu   $a1, $a1, %lo(func_80A3FEF8) ## $a1 = 80A3FEF8
/* 01978 80A3FEE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3FEEC:
/* 0197C 80A3FEEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01980 80A3FEF0 03E00008 */  jr      $ra                        
/* 01984 80A3FEF4 00000000 */  nop
