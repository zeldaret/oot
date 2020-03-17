glabel func_809EB934
/* 00BF4 809EB934 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BF8 809EB938 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BFC 809EB93C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00C00 809EB940 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00C04 809EB944 24A52148 */  addiu   $a1, $a1, 0x2148           ## $a1 = 06002148
/* 00C08 809EB948 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00C0C 809EB94C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00C10 809EB950 0C029490 */  jal     func_800A5240              
/* 00C14 809EB954 3C06C0C0 */  lui     $a2, 0xC0C0                ## $a2 = C0C00000
/* 00C18 809EB958 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C1C 809EB95C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00C20 809EB960 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00C24 809EB964 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 00C28 809EB968 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 00C2C 809EB96C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00C30 809EB970 0301C824 */  and     $t9, $t8, $at              
/* 00C34 809EB974 240539A8 */  addiu   $a1, $zero, 0x39A8         ## $a1 = 000039A8
/* 00C38 809EB978 A08E025B */  sb      $t6, 0x025B($a0)           ## 0000025B
/* 00C3C 809EB97C A480025E */  sh      $zero, 0x025E($a0)         ## 0000025E
/* 00C40 809EB980 A0800250 */  sb      $zero, 0x0250($a0)         ## 00000250
/* 00C44 809EB984 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 00C48 809EB988 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 00C4C 809EB98C E4800318 */  swc1    $f0, 0x0318($a0)           ## 00000318
/* 00C50 809EB990 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00C54 809EB994 A48F0032 */  sh      $t7, 0x0032($a0)           ## 00000032
/* 00C58 809EB998 3C05809F */  lui     $a1, %hi(func_809EB9B8)    ## $a1 = 809F0000
/* 00C5C 809EB99C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C60 809EB9A0 0C27AB50 */  jal     func_809EAD40              
/* 00C64 809EB9A4 24A5B9B8 */  addiu   $a1, $a1, %lo(func_809EB9B8) ## $a1 = 809EB9B8
/* 00C68 809EB9A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C6C 809EB9AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C70 809EB9B0 03E00008 */  jr      $ra                        
/* 00C74 809EB9B4 00000000 */  nop


