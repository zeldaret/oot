glabel func_809EE96C
/* 010FC 809EE96C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01100 809EE970 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01104 809EE974 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01108 809EE978 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0110C 809EE97C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01110 809EE980 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01114 809EE984 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01118 809EE988 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0111C 809EE98C 0C042F6F */  jal     func_8010BDBC              
/* 01120 809EE990 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 01124 809EE994 860E0292 */  lh      $t6, 0x0292($s0)           ## 00000292
/* 01128 809EE998 55C20015 */  bnel    $t6, $v0, .L809EE9F0       
/* 0112C 809EE99C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01130 809EE9A0 0C041AF2 */  jal     func_80106BC8              
/* 01134 809EE9A4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01138 809EE9A8 50400011 */  beql    $v0, $zero, .L809EE9F0     
/* 0113C 809EE9AC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01140 809EE9B0 0C041B33 */  jal     func_80106CCC              
/* 01144 809EE9B4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01148 809EE9B8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0114C 809EE9BC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01150 809EE9C0 0C00B7D5 */  jal     func_8002DF54              
/* 01154 809EE9C4 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01158 809EE9C8 3C08809F */  lui     $t0, %hi(func_809EDD4C)    ## $t0 = 809F0000
/* 0115C 809EE9CC 240F4056 */  addiu   $t7, $zero, 0x4056         ## $t7 = 00004056
/* 01160 809EE9D0 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 01164 809EE9D4 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01168 809EE9D8 2508DD4C */  addiu   $t0, $t0, %lo(func_809EDD4C) ## $t0 = 809EDD4C
/* 0116C 809EE9DC A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
/* 01170 809EE9E0 A6180292 */  sh      $t8, 0x0292($s0)           ## 00000292
/* 01174 809EE9E4 A61902A8 */  sh      $t9, 0x02A8($s0)           ## 000002A8
/* 01178 809EE9E8 AE080280 */  sw      $t0, 0x0280($s0)           ## 00000280
/* 0117C 809EE9EC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EE9F0:
/* 01180 809EE9F0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01184 809EE9F4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01188 809EE9F8 03E00008 */  jr      $ra                        
/* 0118C 809EE9FC 00000000 */  nop
