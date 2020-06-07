glabel func_80ADBBF4
/* 02C64 80ADBBF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02C68 80ADBBF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02C6C 80ADBBFC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 02C70 80ADBC00 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02C74 80ADBC04 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 02C78 80ADBC08 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02C7C 80ADBC0C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02C80 80ADBC10 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 02C84 80ADBC14 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 02C88 80ADBC18 24E40032 */  addiu   $a0, $a3, 0x0032           ## $a0 = 00000032
/* 02C8C 80ADBC1C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 02C90 80ADBC20 84E5008A */  lh      $a1, 0x008A($a3)           ## 0000008A
/* 02C94 80ADBC24 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 02C98 80ADBC28 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 02C9C 80ADBC2C 44813000 */  mtc1    $at, $f6                   ## $f6 = 240.00
/* 02CA0 80ADBC30 C4E40090 */  lwc1    $f4, 0x0090($a3)           ## 00000090
/* 02CA4 80ADBC34 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02CA8 80ADBC38 4606203C */  c.lt.s  $f4, $f6                   
/* 02CAC 80ADBC3C 00000000 */  nop
/* 02CB0 80ADBC40 4502000E */  bc1fl   .L80ADBC7C                 
/* 02CB4 80ADBC44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02CB8 80ADBC48 C4E80094 */  lwc1    $f8, 0x0094($a3)           ## 00000094
/* 02CBC 80ADBC4C 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 02CC0 80ADBC50 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 02CC4 80ADBC54 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 02CC8 80ADBC58 460A4000 */  add.s   $f0, $f8, $f10             
/* 02CCC 80ADBC5C 46000005 */  abs.s   $f0, $f0                   
/* 02CD0 80ADBC60 4610003C */  c.lt.s  $f0, $f16                  
/* 02CD4 80ADBC64 00000000 */  nop
/* 02CD8 80ADBC68 45020004 */  bc1fl   .L80ADBC7C                 
/* 02CDC 80ADBC6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02CE0 80ADBC70 0C2B64F1 */  jal     func_80AD93C4              
/* 02CE4 80ADBC74 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 02CE8 80ADBC78 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADBC7C:
/* 02CEC 80ADBC7C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02CF0 80ADBC80 03E00008 */  jr      $ra                        
/* 02CF4 80ADBC84 00000000 */  nop
