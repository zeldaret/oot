glabel func_808B30D8
/* 00148 808B30D8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0014C 808B30DC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00150 808B30E0 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00154 808B30E4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00158 808B30E8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0015C 808B30EC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00160 808B30F0 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 00164 808B30F4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00168 808B30F8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0016C 808B30FC 5040000A */  beql    $v0, $zero, .L808B3128     
/* 00170 808B3100 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00174 808B3104 0C22CC4D */  jal     func_808B3134              
/* 00178 808B3108 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0017C 808B310C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00180 808B3110 24051040 */  addiu   $a1, $zero, 0x1040         ## $a1 = 00001040
/* 00184 808B3114 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 00188 808B3118 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 0018C 808B311C 0C02003E */  jal     func_800800F8              
/* 00190 808B3120 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00194 808B3124 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B3128:
/* 00198 808B3128 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0019C 808B312C 03E00008 */  jr      $ra                        
/* 001A0 808B3130 00000000 */  nop


