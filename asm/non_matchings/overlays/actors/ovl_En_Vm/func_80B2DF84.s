glabel func_80B2DF84
/* 00B24 80B2DF84 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00B28 80B2DF88 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00B2C 80B2DF8C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00B30 80B2DF90 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00B34 80B2DF94 848E0254 */  lh      $t6, 0x0254($a0)           ## 00000254
/* 00B38 80B2DF98 8498025C */  lh      $t8, 0x025C($a0)           ## 0000025C
/* 00B3C 80B2DF9C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B40 80B2DFA0 25CF05DC */  addiu   $t7, $t6, 0x05DC           ## $t7 = 000005DC
/* 00B44 80B2DFA4 271909C4 */  addiu   $t9, $t8, 0x09C4           ## $t9 = 000009C4
/* 00B48 80B2DFA8 A48F0254 */  sh      $t7, 0x0254($a0)           ## 00000254
/* 00B4C 80B2DFAC 0C00B638 */  jal     Actor_MoveForward
              
/* 00B50 80B2DFB0 A499025C */  sh      $t9, 0x025C($a0)           ## 0000025C
/* 00B54 80B2DFB4 8E080220 */  lw      $t0, 0x0220($s0)           ## 00000220
/* 00B58 80B2DFB8 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 00B5C 80B2DFBC 240B06FF */  addiu   $t3, $zero, 0x06FF         ## $t3 = 000006FF
/* 00B60 80B2DFC0 2509FFFF */  addiu   $t1, $t0, 0xFFFF           ## $t1 = FFFFFFFF
/* 00B64 80B2DFC4 15200016 */  bne     $t1, $zero, .L80B2E020     
/* 00B68 80B2DFC8 AE090220 */  sw      $t1, 0x0220($s0)           ## 00000220
/* 00B6C 80B2DFCC C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00B70 80B2DFD0 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 00B74 80B2DFD4 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00B78 80B2DFD8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00B7C 80B2DFDC C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00B80 80B2DFE0 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00B84 80B2DFE4 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 00B88 80B2DFE8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00B8C 80B2DFEC AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00B90 80B2DFF0 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00B94 80B2DFF4 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00B98 80B2DFF8 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00B9C 80B2DFFC 10400002 */  beq     $v0, $zero, .L80B2E008     
/* 00BA0 80B2E000 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BA4 80B2E004 A44001F8 */  sh      $zero, 0x01F8($v0)         ## 000001F8
.L80B2E008:
/* 00BA8 80B2E008 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00BAC 80B2E00C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00BB0 80B2E010 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00BB4 80B2E014 240700A0 */  addiu   $a3, $zero, 0x00A0         ## $a3 = 000000A0
/* 00BB8 80B2E018 0C00B55C */  jal     Actor_Kill
              
/* 00BBC 80B2E01C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B2E020:
/* 00BC0 80B2E020 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00BC4 80B2E024 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00BC8 80B2E028 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00BCC 80B2E02C 03E00008 */  jr      $ra                        
/* 00BD0 80B2E030 00000000 */  nop


