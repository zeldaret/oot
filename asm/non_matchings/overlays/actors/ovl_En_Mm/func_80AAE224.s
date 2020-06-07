glabel func_80AAE224
/* 00AB4 80AAE224 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AB8 80AAE228 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00ABC 80AAE22C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00AC0 80AAE230 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00AC4 80AAE234 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00AC8 80AAE238 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00ACC 80AAE23C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00AD0 80AAE240 10400010 */  beq     $v0, $zero, .L80AAE284     
/* 00AD4 80AAE244 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00AD8 80AAE248 8CEF0254 */  lw      $t7, 0x0254($a3)           ## 00000254
/* 00ADC 80AAE24C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00AE0 80AAE250 3C0E80AB */  lui     $t6, %hi(func_80AAE598)    ## $t6 = 80AB0000
/* 00AE4 80AAE254 25CEE598 */  addiu   $t6, $t6, %lo(func_80AAE598) ## $t6 = 80AAE598
/* 00AE8 80AAE258 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00AEC 80AAE25C ACEE0190 */  sw      $t6, 0x0190($a3)           ## 00000190
/* 00AF0 80AAE260 ACE001E8 */  sw      $zero, 0x01E8($a3)         ## 000001E8
/* 00AF4 80AAE264 ACE001E4 */  sw      $zero, 0x01E4($a3)         ## 000001E4
/* 00AF8 80AAE268 ACF80254 */  sw      $t8, 0x0254($a3)           ## 00000254
/* 00AFC 80AAE26C ACE001E0 */  sw      $zero, 0x01E0($a3)         ## 000001E0
/* 00B00 80AAE270 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00B04 80AAE274 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 00B08 80AAE278 24E60258 */  addiu   $a2, $a3, 0x0258           ## $a2 = 00000258
/* 00B0C 80AAE27C 0C2AB5DC */  jal     func_80AAD770              
/* 00B10 80AAE280 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
.L80AAE284:
/* 00B14 80AAE284 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B18 80AAE288 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B1C 80AAE28C 03E00008 */  jr      $ra                        
/* 00B20 80AAE290 00000000 */  nop
