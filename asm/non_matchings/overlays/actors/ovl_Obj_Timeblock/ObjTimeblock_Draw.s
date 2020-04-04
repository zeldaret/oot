glabel ObjTimeblock_Draw
/* 009F8 80BA0998 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 009FC 80BA099C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A00 80BA09A0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A04 80BA09A4 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00A08 80BA09A8 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00A0C 80BA09AC 908F0178 */  lbu     $t7, 0x0178($a0)           ## 00000178
/* 00A10 80BA09B0 3C0980BA */  lui     $t1, %hi(D_80BA0B38)       ## $t1 = 80BA0000
/* 00A14 80BA09B4 25290B38 */  addiu   $t1, $t1, %lo(D_80BA0B38)  ## $t1 = 80BA0B38
/* 00A18 80BA09B8 11E0003E */  beq     $t7, $zero, .L80BA0AB4     
/* 00A1C 80BA09BC 3C0680BA */  lui     $a2, %hi(D_80BA0C00)       ## $a2 = 80BA0000
/* 00A20 80BA09C0 84980018 */  lh      $t8, 0x0018($a0)           ## 00000018
/* 00A24 80BA09C4 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00A28 80BA09C8 24C60C00 */  addiu   $a2, $a2, %lo(D_80BA0C00)  ## $a2 = 80BA0C00
/* 00A2C 80BA09CC 33190007 */  andi    $t9, $t8, 0x0007           ## $t9 = 00000000
/* 00A30 80BA09D0 00194080 */  sll     $t0, $t9,  2               
/* 00A34 80BA09D4 01194023 */  subu    $t0, $t0, $t9              
/* 00A38 80BA09D8 01095021 */  addu    $t2, $t0, $t1              
/* 00A3C 80BA09DC AFAA0044 */  sw      $t2, 0x0044($sp)           
/* 00A40 80BA09E0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00A44 80BA09E4 240702FA */  addiu   $a3, $zero, 0x02FA         ## $a3 = 000002FA
/* 00A48 80BA09E8 0C031AB1 */  jal     Graph_OpenDisp              
/* 00A4C 80BA09EC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00A50 80BA09F0 8FAC004C */  lw      $t4, 0x004C($sp)           
/* 00A54 80BA09F4 0C024F46 */  jal     func_80093D18              
/* 00A58 80BA09F8 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 00A5C 80BA09FC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00A60 80BA0A00 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 00A64 80BA0A04 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 00A68 80BA0A08 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00A6C 80BA0A0C AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 00A70 80BA0A10 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00A74 80BA0A14 8FAE004C */  lw      $t6, 0x004C($sp)           
/* 00A78 80BA0A18 3C0580BA */  lui     $a1, %hi(D_80BA0C18)       ## $a1 = 80BA0000
/* 00A7C 80BA0A1C 24A50C18 */  addiu   $a1, $a1, %lo(D_80BA0C18)  ## $a1 = 80BA0C18
/* 00A80 80BA0A20 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 00A84 80BA0A24 240602FE */  addiu   $a2, $zero, 0x02FE         ## $a2 = 000002FE
/* 00A88 80BA0A28 0C0346A2 */  jal     Matrix_NewMtx              
/* 00A8C 80BA0A2C AFA2002C */  sw      $v0, 0x002C($sp)           
/* 00A90 80BA0A30 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 00A94 80BA0A34 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 00A98 80BA0A38 3C0680BA */  lui     $a2, %hi(D_80BA0C30)       ## $a2 = 80BA0000
/* 00A9C 80BA0A3C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00AA0 80BA0A40 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00AA4 80BA0A44 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00AA8 80BA0A48 24C60C30 */  addiu   $a2, $a2, %lo(D_80BA0C30)  ## $a2 = 80BA0C30
/* 00AAC 80BA0A4C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00AB0 80BA0A50 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00AB4 80BA0A54 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00AB8 80BA0A58 908C0001 */  lbu     $t4, 0x0001($a0)           ## 00000001
/* 00ABC 80BA0A5C 90890000 */  lbu     $t1, 0x0000($a0)           ## 00000000
/* 00AC0 80BA0A60 90980002 */  lbu     $t8, 0x0002($a0)           ## 00000002
/* 00AC4 80BA0A64 000C6C00 */  sll     $t5, $t4, 16               
/* 00AC8 80BA0A68 00095600 */  sll     $t2, $t1, 24               
/* 00ACC 80BA0A6C 014D7825 */  or      $t7, $t2, $t5              ## $t7 = 00000000
/* 00AD0 80BA0A70 0018CA00 */  sll     $t9, $t8,  8               
/* 00AD4 80BA0A74 01F94025 */  or      $t0, $t7, $t9              ## $t0 = FA000000
/* 00AD8 80BA0A78 350900FF */  ori     $t1, $t0, 0x00FF           ## $t1 = FA0000FF
/* 00ADC 80BA0A7C AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00AE0 80BA0A80 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00AE4 80BA0A84 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 00AE8 80BA0A88 254A0980 */  addiu   $t2, $t2, 0x0980           ## $t2 = 06000980
/* 00AEC 80BA0A8C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00AF0 80BA0A90 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 00AF4 80BA0A94 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00AF8 80BA0A98 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00AFC 80BA0A9C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00B00 80BA0AA0 8FAD004C */  lw      $t5, 0x004C($sp)           
/* 00B04 80BA0AA4 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00B08 80BA0AA8 24070304 */  addiu   $a3, $zero, 0x0304         ## $a3 = 00000304
/* 00B0C 80BA0AAC 0C031AD5 */  jal     Graph_CloseDisp              
/* 00B10 80BA0AB0 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
.L80BA0AB4:
/* 00B14 80BA0AB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B18 80BA0AB8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00B1C 80BA0ABC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00B20 80BA0AC0 03E00008 */  jr      $ra                        
/* 00B24 80BA0AC4 00000000 */  nop
/* 00B28 80BA0AC8 00000000 */  nop
/* 00B2C 80BA0ACC 00000000 */  nop

