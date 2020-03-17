glabel func_80AA7134
/* 010E4 80AA7134 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 010E8 80AA7138 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 010EC 80AA713C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 010F0 80AA7140 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 010F4 80AA7144 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 010F8 80AA7148 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 010FC 80AA714C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01100 80AA7150 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01104 80AA7154 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 01108 80AA7158 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0110C 80AA715C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01110 80AA7160 84C3032A */  lh      $v1, 0x032A($a2)           ## 0000032A
/* 01114 80AA7164 14600003 */  bne     $v1, $zero, .L80AA7174     
/* 01118 80AA7168 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 0111C 80AA716C 10000003 */  beq     $zero, $zero, .L80AA717C   
/* 01120 80AA7170 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AA7174:
/* 01124 80AA7174 A4CE032A */  sh      $t6, 0x032A($a2)           ## 0000032A
/* 01128 80AA7178 84C2032A */  lh      $v0, 0x032A($a2)           ## 0000032A
.L80AA717C:
/* 0112C 80AA717C 54400008 */  bnel    $v0, $zero, .L80AA71A0     
/* 01130 80AA7180 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01134 80AA7184 0C0295B2 */  jal     func_800A56C8              
/* 01138 80AA7188 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0113C 80AA718C 10400003 */  beq     $v0, $zero, .L80AA719C     
/* 01140 80AA7190 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 01144 80AA7194 0C2A9A5D */  jal     func_80AA6974              
/* 01148 80AA7198 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
.L80AA719C:
/* 0114C 80AA719C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA71A0:
/* 01150 80AA71A0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01154 80AA71A4 03E00008 */  jr      $ra                        
/* 01158 80AA71A8 00000000 */  nop


