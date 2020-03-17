glabel func_808B2980
/* 00190 808B2980 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00194 808B2984 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00198 808B2988 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0019C 808B298C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 001A0 808B2990 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001A4 808B2994 0C01B129 */  jal     func_8006C4A4              
/* 001A8 808B2998 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 001AC 808B299C 5040000D */  beql    $v0, $zero, .L808B29D4     
/* 001B0 808B29A0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001B4 808B29A4 0C22CA03 */  jal     func_808B280C              
/* 001B8 808B29A8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 001BC 808B29AC 10400008 */  beq     $v0, $zero, .L808B29D0     
/* 001C0 808B29B0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 001C4 808B29B4 24051036 */  addiu   $a1, $zero, 0x1036         ## $a1 = 00001036
/* 001C8 808B29B8 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 001CC 808B29BC 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 001D0 808B29C0 0C02003E */  jal     func_800800F8              
/* 001D4 808B29C4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 001D8 808B29C8 0C22CA78 */  jal     func_808B29E0              
/* 001DC 808B29CC 8FA40020 */  lw      $a0, 0x0020($sp)           
.L808B29D0:
/* 001E0 808B29D0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B29D4:
/* 001E4 808B29D4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 001E8 808B29D8 03E00008 */  jr      $ra                        
/* 001EC 808B29DC 00000000 */  nop


