glabel func_80A98C18
/* 01E68 80A98C18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E6C 80A98C1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E70 80A98C20 84820214 */  lh      $v0, 0x0214($a0)           ## 00000214
/* 01E74 80A98C24 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01E78 80A98C28 14400003 */  bne     $v0, $zero, .L80A98C38     
/* 01E7C 80A98C2C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01E80 80A98C30 10000003 */  beq     $zero, $zero, .L80A98C40   
/* 01E84 80A98C34 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A98C38:
/* 01E88 80A98C38 A4CE0214 */  sh      $t6, 0x0214($a2)           ## 00000214
/* 01E8C 80A98C3C 84C30214 */  lh      $v1, 0x0214($a2)           ## 00000214
.L80A98C40:
/* 01E90 80A98C40 14600021 */  bne     $v1, $zero, .L80A98CC8     
/* 01E94 80A98C44 3C0280AA */  lui     $v0, %hi(D_80A9A500)       ## $v0 = 80AA0000
/* 01E98 80A98C48 84CF001C */  lh      $t7, 0x001C($a2)           ## 0000001C
/* 01E9C 80A98C4C 84C80216 */  lh      $t0, 0x0216($a2)           ## 00000216
/* 01EA0 80A98C50 3C0380AA */  lui     $v1, %hi(D_80A9A160)       ## $v1 = 80AA0000
/* 01EA4 80A98C54 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 01EA8 80A98C58 0018C880 */  sll     $t9, $t8,  2               
/* 01EAC 80A98C5C 0338C823 */  subu    $t9, $t9, $t8              
/* 01EB0 80A98C60 0019C880 */  sll     $t9, $t9,  2               
/* 01EB4 80A98C64 0338C823 */  subu    $t9, $t9, $t8              
/* 01EB8 80A98C68 00591021 */  addu    $v0, $v0, $t9              
/* 01EBC 80A98C6C 9042A500 */  lbu     $v0, %lo(D_80A9A500)($v0)  
/* 01EC0 80A98C70 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 01EC4 80A98C74 A4C90216 */  sh      $t1, 0x0216($a2)           ## 00000216
/* 01EC8 80A98C78 00025080 */  sll     $t2, $v0,  2               
/* 01ECC 80A98C7C 01425023 */  subu    $t2, $t2, $v0              
/* 01ED0 80A98C80 000A5080 */  sll     $t2, $t2,  2               
/* 01ED4 80A98C84 006A1821 */  addu    $v1, $v1, $t2              
/* 01ED8 80A98C88 8C63A160 */  lw      $v1, %lo(D_80A9A160)($v1)  
/* 01EDC 80A98C8C 5060000F */  beql    $v1, $zero, .L80A98CCC     
/* 01EE0 80A98C90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01EE4 80A98C94 84CB0216 */  lh      $t3, 0x0216($a2)           ## 00000216
/* 01EE8 80A98C98 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 01EEC 80A98C9C 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 01EF0 80A98CA0 000B6080 */  sll     $t4, $t3,  2               
/* 01EF4 80A98CA4 006C6821 */  addu    $t5, $v1, $t4              
/* 01EF8 80A98CA8 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 01EFC 80A98CAC 55C00007 */  bnel    $t6, $zero, .L80A98CCC     
/* 01F00 80A98CB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F04 80A98CB4 0C01DF64 */  jal     Rand_S16Offset
              
/* 01F08 80A98CB8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01F0C 80A98CBC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01F10 80A98CC0 A4C20214 */  sh      $v0, 0x0214($a2)           ## 00000214
/* 01F14 80A98CC4 A4C00216 */  sh      $zero, 0x0216($a2)         ## 00000216
.L80A98CC8:
/* 01F18 80A98CC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A98CCC:
/* 01F1C 80A98CCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01F20 80A98CD0 03E00008 */  jr      $ra                        
/* 01F24 80A98CD4 00000000 */  nop
