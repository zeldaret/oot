glabel func_80AFB028
/* 00908 80AFB028 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0090C 80AFB02C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00910 80AFB030 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00914 80AFB034 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00918 80AFB038 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0091C 80AFB03C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00920 80AFB040 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00924 80AFB044 10400015 */  beq     $v0, $zero, .L80AFB09C     
/* 00928 80AFB048 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 0092C 80AFB04C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00930 80AFB050 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 00934 80AFB054 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00938 80AFB058 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0093C 80AFB05C C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00940 80AFB060 2406011A */  addiu   $a2, $zero, 0x011A         ## $a2 = 0000011A
/* 00944 80AFB064 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00948 80AFB068 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 0094C 80AFB06C AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00950 80AFB070 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00954 80AFB074 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00958 80AFB078 861800B8 */  lh      $t8, 0x00B8($s0)           ## 000000B8
/* 0095C 80AFB07C AFB80020 */  sw      $t8, 0x0020($sp)           
/* 00960 80AFB080 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 00964 80AFB084 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00968 80AFB088 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 0096C 80AFB08C 0C00B55C */  jal     Actor_Kill
              
/* 00970 80AFB090 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00974 80AFB094 10000007 */  beq     $zero, $zero, .L80AFB0B4   
/* 00978 80AFB098 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80AFB09C:
/* 0097C 80AFB09C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00980 80AFB0A0 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00984 80AFB0A4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00988 80AFB0A8 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 0098C 80AFB0AC 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 00990 80AFB0B0 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80AFB0B4:
/* 00994 80AFB0B4 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00998 80AFB0B8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0099C 80AFB0BC 03E00008 */  jr      $ra                        
/* 009A0 80AFB0C0 00000000 */  nop
