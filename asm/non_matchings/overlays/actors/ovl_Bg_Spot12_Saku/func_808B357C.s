glabel func_808B357C
/* 0015C 808B357C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00160 808B3580 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00164 808B3584 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00168 808B3588 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0016C 808B358C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00170 808B3590 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00174 808B3594 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 00178 808B3598 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0017C 808B359C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00180 808B35A0 5040000D */  beql    $v0, $zero, .L808B35D8     
/* 00184 808B35A4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00188 808B35A8 0C22CD79 */  jal     func_808B35E4              
/* 0018C 808B35AC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00190 808B35B0 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 00194 808B35B4 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00198 808B35B8 2405104A */  addiu   $a1, $zero, 0x104A         ## $a1 = 0000104A
/* 0019C 808B35BC A70F0168 */  sh      $t7, 0x0168($t8)           ## 00000168
/* 001A0 808B35C0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 001A4 808B35C4 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 001A8 808B35C8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 001AC 808B35CC 0C02003E */  jal     func_800800F8              
/* 001B0 808B35D0 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 001B4 808B35D4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B35D8:
/* 001B8 808B35D8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 001BC 808B35DC 03E00008 */  jr      $ra                        
/* 001C0 808B35E0 00000000 */  nop


