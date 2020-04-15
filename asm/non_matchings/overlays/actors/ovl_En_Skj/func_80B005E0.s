glabel func_80B005E0
/* 02330 80B005E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02334 80B005E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02338 80B005E8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0233C 80B005EC 0C2BF8AC */  jal     func_80AFE2B0              
/* 02340 80B005F0 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 02344 80B005F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02348 80B005F8 0C2BF8CE */  jal     func_80AFE338              
/* 0234C 80B005FC 2405001A */  addiu   $a1, $zero, 0x001A         ## $a1 = 0000001A
/* 02350 80B00600 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02354 80B00604 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02358 80B00608 03E00008 */  jr      $ra                        
/* 0235C 80B0060C 00000000 */  nop
