glabel func_809CE014
/* 00FA4 809CE014 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00FA8 809CE018 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00FAC 809CE01C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FB0 809CE020 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00FB4 809CE024 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00FB8 809CE028 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00FBC 809CE02C 248401AC */  addiu   $a0, $a0, 0x01AC           ## $a0 = 000001AC
/* 00FC0 809CE030 0C273444 */  jal     func_809CD110              
/* 00FC4 809CE034 00000000 */  nop
/* 00FC8 809CE038 86020254 */  lh      $v0, 0x0254($s0)           ## 00000254
/* 00FCC 809CE03C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00FD0 809CE040 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00FD4 809CE044 14410006 */  bne     $v0, $at, .L809CE060       
/* 00FD8 809CE048 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00FDC 809CE04C 2406003C */  addiu   $a2, $zero, 0x003C         ## $a2 = 0000003C
/* 00FE0 809CE050 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00FE4 809CE054 240728E7 */  addiu   $a3, $zero, 0x28E7         ## $a3 = 000028E7
/* 00FE8 809CE058 10000019 */  beq     $zero, $zero, .L809CE0C0   
/* 00FEC 809CE05C 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809CE060:
/* 00FF0 809CE060 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00FF4 809CE064 14410011 */  bne     $v0, $at, .L809CE0AC       
/* 00FF8 809CE068 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00FFC 809CE06C C604003C */  lwc1    $f4, 0x003C($s0)           ## 0000003C
/* 01000 809CE070 8E070038 */  lw      $a3, 0x0038($s0)           ## 00000038
/* 01004 809CE074 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 01008 809CE078 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0100C 809CE07C C6060040 */  lwc1    $f6, 0x0040($s0)           ## 00000040
/* 01010 809CE080 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01014 809CE084 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 01018 809CE088 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 0101C 809CE08C 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 01020 809CE090 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 01024 809CE094 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01028 809CE098 24060018 */  addiu   $a2, $zero, 0x0018         ## $a2 = 00000018
/* 0102C 809CE09C 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 01030 809CE0A0 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 01034 809CE0A4 10000005 */  beq     $zero, $zero, .L809CE0BC   
/* 01038 809CE0A8 A2000258 */  sb      $zero, 0x0258($s0)         ## 00000258
.L809CE0AC:
/* 0103C 809CE0AC 5C400004 */  bgtzl   $v0, .L809CE0C0            
/* 01040 809CE0B0 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01044 809CE0B4 0C273834 */  jal     func_809CE0D0              
/* 01048 809CE0B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809CE0BC:
/* 0104C 809CE0BC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809CE0C0:
/* 01050 809CE0C0 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01054 809CE0C4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01058 809CE0C8 03E00008 */  jr      $ra                        
/* 0105C 809CE0CC 00000000 */  nop
