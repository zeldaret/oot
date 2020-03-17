glabel func_809EBBC8
/* 00E88 809EBBC8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00E8C 809EBBCC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00E90 809EBBD0 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00E94 809EBBD4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00E98 809EBBD8 C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 00E9C 809EBBDC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00EA0 809EBBE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00EA4 809EBBE4 3C01809F */  lui     $at, %hi(D_809EC6E4)       ## $at = 809F0000
/* 00EA8 809EBBE8 4604003C */  c.lt.s  $f0, $f4                   
/* 00EAC 809EBBEC 00000000 */  nop
/* 00EB0 809EBBF0 45020005 */  bc1fl   .L809EBC08                 
/* 00EB4 809EBBF4 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 00EB8 809EBBF8 C426C6E4 */  lwc1    $f6, %lo(D_809EC6E4)($at)  
/* 00EBC 809EBBFC 46060200 */  add.s   $f8, $f0, $f6              
/* 00EC0 809EBC00 E4880068 */  swc1    $f8, 0x0068($a0)           ## 00000068
/* 00EC4 809EBC04 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
.L809EBC08:
/* 00EC8 809EBC08 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00ECC 809EBC0C A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 00ED0 809EBC10 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00ED4 809EBC14 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00ED8 809EBC18 50400031 */  beql    $v0, $zero, .L809EBCE0     
/* 00EDC 809EBC1C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00EE0 809EBC20 92180251 */  lbu     $t8, 0x0251($s0)           ## 00000251
/* 00EE4 809EBC24 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00EE8 809EBC28 3C0142D2 */  lui     $at, 0x42D2                ## $at = 42D20000
/* 00EEC 809EBC2C 13000006 */  beq     $t8, $zero, .L809EBC48     
/* 00EF0 809EBC30 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 00EF4 809EBC34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EF8 809EBC38 0C27AD36 */  jal     func_809EB4D8              
/* 00EFC 809EBC3C 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00F00 809EBC40 10000025 */  beq     $zero, $zero, .L809EBCD8   
/* 00F04 809EBC44 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
.L809EBC48:
/* 00F08 809EBC48 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.00
/* 00F0C 809EBC4C C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
/* 00F10 809EBC50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F14 809EBC54 460A803E */  c.le.s  $f16, $f10                 
/* 00F18 809EBC58 00000000 */  nop
/* 00F1C 809EBC5C 4500001B */  bc1f    .L809EBCCC                 
/* 00F20 809EBC60 00000000 */  nop
/* 00F24 809EBC64 0C00B821 */  jal     func_8002E084              
/* 00F28 809EBC68 24052AAA */  addiu   $a1, $zero, 0x2AAA         ## $a1 = 00002AAA
/* 00F2C 809EBC6C 10400017 */  beq     $v0, $zero, .L809EBCCC     
/* 00F30 809EBC70 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00F34 809EBC74 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00F38 809EBC78 24844658 */  addiu   $a0, $a0, 0x4658           ## $a0 = 06004658
/* 00F3C 809EBC7C 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 00F40 809EBC80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F44 809EBC84 46809120 */  cvt.s.w $f4, $f18                  
/* 00F48 809EBC88 0C27AD71 */  jal     func_809EB5C4              
/* 00F4C 809EBC8C E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 00F50 809EBC90 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 00F54 809EBC94 44814000 */  mtc1    $at, $f8                   ## $f8 = -6.00
/* 00F58 809EBC98 C7A60034 */  lwc1    $f6, 0x0034($sp)           
/* 00F5C 809EBC9C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00F60 809EBCA0 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00F64 809EBCA4 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00F68 809EBCA8 24A54658 */  addiu   $a1, $a1, 0x4658           ## $a1 = 06004658
/* 00F6C 809EBCAC 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00F70 809EBCB0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00F74 809EBCB4 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 00F78 809EBCB8 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00F7C 809EBCBC 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00F80 809EBCC0 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00F84 809EBCC4 10000004 */  beq     $zero, $zero, .L809EBCD8   
/* 00F88 809EBCC8 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
.L809EBCCC:
/* 00F8C 809EBCCC 0C27ACCD */  jal     func_809EB334              
/* 00F90 809EBCD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F94 809EBCD4 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
.L809EBCD8:
/* 00F98 809EBCD8 A2080258 */  sb      $t0, 0x0258($s0)           ## 00000258
/* 00F9C 809EBCDC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809EBCE0:
/* 00FA0 809EBCE0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00FA4 809EBCE4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00FA8 809EBCE8 03E00008 */  jr      $ra                        
/* 00FAC 809EBCEC 00000000 */  nop


