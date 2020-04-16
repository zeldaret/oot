glabel func_8083A098
/* 07E88 8083A098 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 07E8C 8083A09C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 07E90 8083A0A0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 07E94 8083A0A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 07E98 8083A0A8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 07E9C 8083A0AC 0C20E818 */  jal     func_8083A060              
/* 07EA0 8083A0B0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 07EA4 8083A0B4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 07EA8 8083A0B8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 07EAC 8083A0BC 0C20CCA3 */  jal     func_8083328C              
/* 07EB0 8083A0C0 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 07EB4 8083A0C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 07EB8 8083A0C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 07EBC 8083A0CC 03E00008 */  jr      $ra                        
/* 07EC0 8083A0D0 00000000 */  nop
