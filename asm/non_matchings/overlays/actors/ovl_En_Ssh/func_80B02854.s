glabel func_80B02854
/* 005E4 80B02854 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005E8 80B02858 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005EC 80B0285C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005F0 80B02860 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 005F4 80B02864 24053869 */  addiu   $a1, $zero, 0x3869         ## $a1 = 00003869
/* 005F8 80B02868 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005FC 80B0286C 0C2C09C0 */  jal     func_80B02700              
/* 00600 80B02870 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00604 80B02874 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00608 80B02878 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0060C 80B0287C 03E00008 */  jr      $ra                        
/* 00610 80B02880 00000000 */  nop


