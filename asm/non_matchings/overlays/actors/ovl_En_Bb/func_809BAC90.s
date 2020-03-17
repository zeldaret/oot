glabel func_809BAC90
/* 029B0 809BAC90 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 029B4 809BAC94 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 029B8 809BAC98 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 029BC 809BAC9C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 029C0 809BACA0 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 029C4 809BACA4 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
/* 029C8 809BACA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 029CC 809BACAC 10410012 */  beq     $v0, $at, .L809BACF8       
/* 029D0 809BACB0 AC8E0250 */  sw      $t6, 0x0250($a0)           ## 00000250
/* 029D4 809BACB4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 029D8 809BACB8 1041000D */  beq     $v0, $at, .L809BACF0       
/* 029DC 809BACBC 2841FFFD */  slti    $at, $v0, 0xFFFD           
/* 029E0 809BACC0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 029E4 809BACC4 14200006 */  bne     $at, $zero, .L809BACE0     
/* 029E8 809BACC8 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 029EC 809BACCC 44812000 */  mtc1    $at, $f4                   ## $f4 = -2.00
/* 029F0 809BACD0 3C01809C */  lui     $at, %hi(D_809BBCC8)       ## $at = 809C0000
/* 029F4 809BACD4 E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 029F8 809BACD8 C426BCC8 */  lwc1    $f6, %lo(D_809BBCC8)($at)  
/* 029FC 809BACDC E48600BC */  swc1    $f6, 0x00BC($a0)           ## 000000BC
.L809BACE0:
/* 02A00 809BACE0 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 02A04 809BACE4 E600028C */  swc1    $f0, 0x028C($s0)           ## 0000028C
/* 02A08 809BACE8 10000003 */  beq     $zero, $zero, .L809BACF8   
/* 02A0C 809BACEC E6000288 */  swc1    $f0, 0x0288($s0)           ## 00000288
.L809BACF0:
/* 02A10 809BACF0 0C26E146 */  jal     func_809B8518              
/* 02A14 809BACF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809BACF8:
/* 02A18 809BACF8 920202AA */  lbu     $v0, 0x02AA($s0)           ## 000002AA
/* 02A1C 809BACFC 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 02A20 809BAD00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A24 809BAD04 10410009 */  beq     $v0, $at, .L809BAD2C       
/* 02A28 809BAD08 24058000 */  addiu   $a1, $zero, 0x8000         ## $a1 = FFFF8000
/* 02A2C 809BAD0C 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 02A30 809BAD10 1041000D */  beq     $v0, $at, .L809BAD48       
/* 02A34 809BAD14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A38 809BAD18 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 02A3C 809BAD1C 1041000C */  beq     $v0, $at, .L809BAD50       
/* 02A40 809BAD20 00000000 */  nop
/* 02A44 809BAD24 10000014 */  beq     $zero, $zero, .L809BAD78   
/* 02A48 809BAD28 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
.L809BAD2C:
/* 02A4C 809BAD2C 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 02A50 809BAD30 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 02A54 809BAD34 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 02A58 809BAD38 0C00D09B */  jal     func_8003426C              
/* 02A5C 809BAD3C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02A60 809BAD40 1000000D */  beq     $zero, $zero, .L809BAD78   
/* 02A64 809BAD44 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
.L809BAD48:
/* 02A68 809BAD48 24180030 */  addiu   $t8, $zero, 0x0030         ## $t8 = 00000030
/* 02A6C 809BAD4C A61802A8 */  sh      $t8, 0x02A8($s0)           ## 000002A8
.L809BAD50:
/* 02A70 809BAD50 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02A74 809BAD54 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 02A78 809BAD58 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 02A7C 809BAD5C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 02A80 809BAD60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A84 809BAD64 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02A88 809BAD68 240600B4 */  addiu   $a2, $zero, 0x00B4         ## $a2 = 000000B4
/* 02A8C 809BAD6C 0C00D09B */  jal     func_8003426C              
/* 02A90 809BAD70 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02A94 809BAD74 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
.L809BAD78:
/* 02A98 809BAD78 3C05809C */  lui     $a1, %hi(func_809BADA4)    ## $a1 = 809C0000
/* 02A9C 809BAD7C 24A5ADA4 */  addiu   $a1, $a1, %lo(func_809BADA4) ## $a1 = 809BADA4
/* 02AA0 809BAD80 3109FFFE */  andi    $t1, $t0, 0xFFFE           ## $t1 = 00000000
/* 02AA4 809BAD84 A6090088 */  sh      $t1, 0x0088($s0)           ## 00000088
/* 02AA8 809BAD88 0C26E0B8 */  jal     func_809B82E0              
/* 02AAC 809BAD8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AB0 809BAD90 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02AB4 809BAD94 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02AB8 809BAD98 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02ABC 809BAD9C 03E00008 */  jr      $ra                        
/* 02AC0 809BADA0 00000000 */  nop


