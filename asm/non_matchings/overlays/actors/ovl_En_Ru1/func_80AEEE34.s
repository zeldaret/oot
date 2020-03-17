glabel func_80AEEE34
/* 04224 80AEEE34 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04228 80AEEE38 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0422C 80AEEE3C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04230 80AEEE40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04234 80AEEE44 0C2BB60F */  jal     func_80AED83C              
/* 04238 80AEEE48 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0423C 80AEEE4C 0C2BACC8 */  jal     func_80AEB320              
/* 04240 80AEEE50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04244 80AEEE54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04248 80AEEE58 0C2BABB3 */  jal     func_80AEAECC              
/* 0424C 80AEEE5C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04250 80AEEE60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04254 80AEEE64 0C2BB8BE */  jal     func_80AEE2F8              
/* 04258 80AEEE68 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0425C 80AEEE6C 0C2BAB87 */  jal     func_80AEAE1C              
/* 04260 80AEEE70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04264 80AEEE74 0C2BB5BE */  jal     func_80AED6F8              
/* 04268 80AEEE78 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0426C 80AEEE7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04270 80AEEE80 0C2BB9F1 */  jal     func_80AEE7C4              
/* 04274 80AEEE84 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04278 80AEEE88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0427C 80AEEE8C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04280 80AEEE90 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04284 80AEEE94 03E00008 */  jr      $ra                        
/* 04288 80AEEE98 00000000 */  nop


