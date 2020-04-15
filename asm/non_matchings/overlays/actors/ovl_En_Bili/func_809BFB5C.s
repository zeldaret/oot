.late_rodata
glabel D_809C173C
    .float 0.9

.text
glabel func_809BFB5C
/* 002BC 809BFB5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002C0 809BFB60 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 002C4 809BFB64 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002C8 809BFB68 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 002CC 809BFB6C 24A500A4 */  addiu   $a1, $a1, 0x00A4           ## $a1 = 060000A4
/* 002D0 809BFB70 AFA60018 */  sw      $a2, 0x0018($sp)
/* 002D4 809BFB74 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 002D8 809BFB78 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 002DC 809BFB7C 8FA60018 */  lw      $a2, 0x0018($sp)
/* 002E0 809BFB80 240E0060 */  addiu   $t6, $zero, 0x0060         ## $t6 = 00000060
/* 002E4 809BFB84 3C01809C */  lui     $at, %hi(D_809C173C)       ## $at = 809C0000
/* 002E8 809BFB88 A4CE0196 */  sh      $t6, 0x0196($a2)           ## 00000196
/* 002EC 809BFB8C C424173C */  lwc1    $f4, %lo(D_809C173C)($at)
/* 002F0 809BFB90 90CF01E4 */  lbu     $t7, 0x01E4($a2)           ## 000001E4
/* 002F4 809BFB94 C4C60028 */  lwc1    $f6, 0x0028($a2)           ## 00000028
/* 002F8 809BFB98 3C19809C */  lui     $t9, %hi(func_809C0600)    ## $t9 = 809C0000
/* 002FC 809BFB9C 27390600 */  addiu   $t9, $t9, %lo(func_809C0600) ## $t9 = 809C0600
/* 00300 809BFBA0 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00304 809BFBA4 A0D801E4 */  sb      $t8, 0x01E4($a2)           ## 000001E4
/* 00308 809BFBA8 ACD90190 */  sw      $t9, 0x0190($a2)           ## 00000190
/* 0030C 809BFBAC E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 00310 809BFBB0 E4C6000C */  swc1    $f6, 0x000C($a2)           ## 0000000C
/* 00314 809BFBB4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00318 809BFBB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0031C 809BFBBC 03E00008 */  jr      $ra
/* 00320 809BFBC0 00000000 */  nop
