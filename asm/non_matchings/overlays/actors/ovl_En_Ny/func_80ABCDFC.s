glabel func_80ABCDFC
/* 0024C 80ABCDFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00250 80ABCE00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00254 80ABCE04 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00258 80ABCE08 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0025C 80ABCE0C 240538EA */  addiu   $a1, $zero, 0x38EA         ## $a1 = 000038EA
/* 00260 80ABCE10 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00264 80ABCE14 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00268 80ABCE18 3C0E80AC */  lui     $t6, %hi(func_80ABD05C)    ## $t6 = 80AC0000
/* 0026C 80ABCE1C 25CED05C */  addiu   $t6, $t6, %lo(func_80ABD05C) ## $t6 = 80ABD05C
/* 00270 80ABCE20 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00274 80ABCE24 E48401E8 */  swc1    $f4, 0x01E8($a0)           ## 000001E8
/* 00278 80ABCE28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0027C 80ABCE2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00280 80ABCE30 03E00008 */  jr      $ra                        
/* 00284 80ABCE34 00000000 */  nop


