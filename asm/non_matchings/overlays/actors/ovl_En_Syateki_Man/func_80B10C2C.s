glabel func_80B10C2C
/* 003BC 80B10C2C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 003C0 80B10C30 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 003C4 80B10C34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003C8 80B10C38 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 003CC 80B10C3C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 003D0 80B10C40 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 003D4 80B10C44 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 003D8 80B10C48 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 003DC 80B10C4C 920E021C */  lbu     $t6, 0x021C($s0)           ## 0000021C
/* 003E0 80B10C50 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 003E4 80B10C54 00310821 */  addu    $at, $at, $s1              
/* 003E8 80B10C58 11C00002 */  beq     $t6, $zero, .L80B10C64     
/* 003EC 80B10C5C 240FFFFE */  addiu   $t7, $zero, 0xFFFE         ## $t7 = FFFFFFFE
/* 003F0 80B10C60 A02F1E5C */  sb      $t7, 0x1E5C($at)           ## 00011E5C
.L80B10C64:
/* 003F4 80B10C64 0C042F6F */  jal     func_8010BDBC              
/* 003F8 80B10C68 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 003FC 80B10C6C 86180212 */  lh      $t8, 0x0212($s0)           ## 00000212
/* 00400 80B10C70 57020014 */  bnel    $t8, $v0, .L80B10CC4       
/* 00404 80B10C74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00408 80B10C78 0C041AF2 */  jal     func_80106BC8              
/* 0040C 80B10C7C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00410 80B10C80 50400010 */  beql    $v0, $zero, .L80B10CC4     
/* 00414 80B10C84 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00418 80B10C88 9219021C */  lbu     $t9, 0x021C($s0)           ## 0000021C
/* 0041C 80B10C8C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00420 80B10C90 13200006 */  beq     $t9, $zero, .L80B10CAC     
/* 00424 80B10C94 00000000 */  nop
/* 00428 80B10C98 0C0200FC */  jal     func_800803F0              
/* 0042C 80B10C9C 86050228 */  lh      $a1, 0x0228($s0)           ## 00000228
/* 00430 80B10CA0 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 00434 80B10CA4 A6080228 */  sh      $t0, 0x0228($s0)           ## 00000228
/* 00438 80B10CA8 A200021C */  sb      $zero, 0x021C($s0)         ## 0000021C
.L80B10CAC:
/* 0043C 80B10CAC 0C041B33 */  jal     func_80106CCC              
/* 00440 80B10CB0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00444 80B10CB4 3C0980B1 */  lui     $t1, %hi(func_80B109DC)    ## $t1 = 80B10000
/* 00448 80B10CB8 252909DC */  addiu   $t1, $t1, %lo(func_80B109DC) ## $t1 = 80B109DC
/* 0044C 80B10CBC AE0901FC */  sw      $t1, 0x01FC($s0)           ## 000001FC
/* 00450 80B10CC0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B10CC4:
/* 00454 80B10CC4 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00458 80B10CC8 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0045C 80B10CCC 03E00008 */  jr      $ra                        
/* 00460 80B10CD0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
