glabel func_80AEC0B4
/* 014A4 80AEC0B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014A8 80AEC0B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 014AC 80AEC0BC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 014B0 80AEC0C0 0C2BAE27 */  jal     func_80AEB89C              
/* 014B4 80AEC0C4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 014B8 80AEC0C8 0C2BACC8 */  jal     func_80AEB320              
/* 014BC 80AEC0CC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 014C0 80AEC0D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 014C4 80AEC0D4 0C2BAF21 */  jal     func_80AEBC84              
/* 014C8 80AEC0D8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 014CC 80AEC0DC 0C2BAF0C */  jal     func_80AEBC30              
/* 014D0 80AEC0E0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 014D4 80AEC0E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 014D8 80AEC0E8 0C2BAF47 */  jal     func_80AEBD1C              
/* 014DC 80AEC0EC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 014E0 80AEC0F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 014E4 80AEC0F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 014E8 80AEC0F8 03E00008 */  jr      $ra                        
/* 014EC 80AEC0FC 00000000 */  nop
