glabel EnRu1_Destroy
/* 001EC 80AEADFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001F0 80AEAE00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001F4 80AEAE04 0C2BAB66 */  jal     func_80AEAD98              
/* 001F8 80AEAE08 00000000 */  nop
/* 001FC 80AEAE0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00200 80AEAE10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00204 80AEAE14 03E00008 */  jr      $ra                        
/* 00208 80AEAE18 00000000 */  nop


