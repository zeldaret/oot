glabel func_80989960
/* 00AE0 80989960 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AE4 80989964 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AE8 80989968 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00AEC 8098996C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00AF0 80989970 0C00B55C */  jal     Actor_Kill
              
/* 00AF4 80989974 8C84011C */  lw      $a0, 0x011C($a0)           ## 0000011C
/* 00AF8 80989978 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AFC 8098997C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B00 80989980 03E00008 */  jr      $ra                        
/* 00B04 80989984 00000000 */  nop


