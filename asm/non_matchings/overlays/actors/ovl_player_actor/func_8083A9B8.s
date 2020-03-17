glabel func_8083A9B8
/* 087A8 8083A9B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 087AC 8083A9BC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 087B0 8083A9C0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 087B4 8083A9C4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 087B8 8083A9C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 087BC 8083A9CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 087C0 8083A9D0 3C068085 */  lui     $a2, %hi(func_8084BDFC)    ## $a2 = 80850000
/* 087C4 8083A9D4 24C6BDFC */  addiu   $a2, $a2, %lo(func_8084BDFC) ## $a2 = 8084BDFC
/* 087C8 8083A9D8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 087CC 8083A9DC 0C20D716 */  jal     func_80835C58              
/* 087D0 8083A9E0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 087D4 8083A9E4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 087D8 8083A9E8 3C073FA6 */  lui     $a3, 0x3FA6                ## $a3 = 3FA60000
/* 087DC 8083A9EC 34E76666 */  ori     $a3, $a3, 0x6666           ## $a3 = 3FA66666
/* 087E0 8083A9F0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 087E4 8083A9F4 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 087E8 8083A9F8 0C029037 */  jal     func_800A40DC              
/* 087EC 8083A9FC 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 087F0 8083AA00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 087F4 8083AA04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 087F8 8083AA08 03E00008 */  jr      $ra                        
/* 087FC 8083AA0C 00000000 */  nop


