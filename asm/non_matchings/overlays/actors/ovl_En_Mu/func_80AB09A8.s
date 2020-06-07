glabel func_80AB09A8
/* 00588 80AB09A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0058C 80AB09AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00590 80AB09B0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00594 80AB09B4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00598 80AB09B8 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 0059C 80AB09BC 0C031A73 */  jal     Graph_Alloc
              
/* 005A0 80AB09C0 24050010 */  addiu   $a1, $zero, 0x0010         ## $a1 = 00000010
/* 005A4 80AB09C4 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 005A8 80AB09C8 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 005AC 80AB09CC 93A90023 */  lbu     $t1, 0x0023($sp)           
/* 005B0 80AB09D0 93B8001F */  lbu     $t8, 0x001F($sp)           
/* 005B4 80AB09D4 93AD0027 */  lbu     $t5, 0x0027($sp)           
/* 005B8 80AB09D8 93A8002B */  lbu     $t0, 0x002B($sp)           
/* 005BC 80AB09DC 00095400 */  sll     $t2, $t1, 16               
/* 005C0 80AB09E0 0018CE00 */  sll     $t9, $t8, 24               
/* 005C4 80AB09E4 032A5825 */  or      $t3, $t9, $t2              ## $t3 = 00000000
/* 005C8 80AB09E8 000D7200 */  sll     $t6, $t5,  8               
/* 005CC 80AB09EC 016E7825 */  or      $t7, $t3, $t6              ## $t7 = FB000000
/* 005D0 80AB09F0 3C19DF00 */  lui     $t9, 0xDF00                ## $t9 = DF000000
/* 005D4 80AB09F4 01E84825 */  or      $t1, $t7, $t0              ## $t1 = FB000000
/* 005D8 80AB09F8 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 005DC 80AB09FC AC590008 */  sw      $t9, 0x0008($v0)           ## 00000008
/* 005E0 80AB0A00 AC40000C */  sw      $zero, 0x000C($v0)         ## 0000000C
/* 005E4 80AB0A04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005E8 80AB0A08 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005EC 80AB0A0C 03E00008 */  jr      $ra                        
/* 005F0 80AB0A10 00000000 */  nop
