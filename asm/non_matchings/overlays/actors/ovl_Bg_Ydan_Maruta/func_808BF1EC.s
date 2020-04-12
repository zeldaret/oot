glabel func_808BF1EC
/* 004AC 808BF1EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004B0 808BF1F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004B4 808BF1F4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 004B8 808BF1F8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 004BC 808BF1FC 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 004C0 808BF200 C4840060 */  lwc1    $f4, 0x0060($a0)           ## 00000060
/* 004C4 808BF204 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 004C8 808BF208 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 004CC 808BF20C 46062200 */  add.s   $f8, $f4, $f6              
/* 004D0 808BF210 E4880038 */  swc1    $f8, 0x0038($a0)           ## 00000060
/* 004D4 808BF214 8CE60060 */  lw      $a2, 0x0060($a3)           ## 00000060
/* 004D8 808BF218 8CE5000C */  lw      $a1, 0x000C($a3)           ## 0000000C
/* 004DC 808BF21C 0C01DE80 */  jal     Math_ApproxF
              
/* 004E0 808BF220 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 004E4 808BF224 10400009 */  beq     $v0, $zero, .L808BF24C     
/* 004E8 808BF228 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 004EC 808BF22C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 004F0 808BF230 24052860 */  addiu   $a1, $zero, 0x2860         ## $a1 = 00002860
/* 004F4 808BF234 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 004F8 808BF238 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 004FC 808BF23C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00500 808BF240 3C0E808C */  lui     $t6, %hi(func_808BF25C)    ## $t6 = 808C0000
/* 00504 808BF244 25CEF25C */  addiu   $t6, $t6, %lo(func_808BF25C) ## $t6 = 808BF25C
/* 00508 808BF248 ACEE0164 */  sw      $t6, 0x0164($a3)           ## 00000164
.L808BF24C:
/* 0050C 808BF24C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00510 808BF250 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00514 808BF254 03E00008 */  jr      $ra                        
/* 00518 808BF258 00000000 */  nop
