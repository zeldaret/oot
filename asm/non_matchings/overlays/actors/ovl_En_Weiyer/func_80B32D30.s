glabel func_80B32D30
/* 00AA0 80B32D30 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00AA4 80B32D34 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00AA8 80B32D38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AAC 80B32D3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AB0 80B32D40 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00AB4 80B32D44 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00AB8 80B32D48 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00ABC 80B32D4C AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00AC0 80B32D50 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00AC4 80B32D54 0C0295B2 */  jal     func_800A56C8              
/* 00AC8 80B32D58 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00ACC 80B32D5C 10400003 */  beq     $v0, $zero, .L80B32D6C     
/* 00AD0 80B32D60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AD4 80B32D64 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00AD8 80B32D68 2405394E */  addiu   $a1, $zero, 0x394E         ## $a1 = 0000394E
.L80B32D6C:
/* 00ADC 80B32D6C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00AE0 80B32D70 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00AE4 80B32D74 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00AE8 80B32D78 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 00AEC 80B32D7C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00AF0 80B32D80 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00AF4 80B32D84 0C01DE80 */  jal     Math_ApproxF
              
/* 00AF8 80B32D88 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00AFC 80B32D8C 86030194 */  lh      $v1, 0x0194($s0)           ## 00000194
/* 00B00 80B32D90 10600003 */  beq     $v1, $zero, .L80B32DA0     
/* 00B04 80B32D94 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 00B08 80B32D98 A60E0194 */  sh      $t6, 0x0194($s0)           ## 00000194
/* 00B0C 80B32D9C 86030194 */  lh      $v1, 0x0194($s0)           ## 00000194
.L80B32DA0:
/* 00B10 80B32DA0 54600006 */  bnel    $v1, $zero, .L80B32DBC     
/* 00B14 80B32DA4 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00B18 80B32DA8 0C2CC90D */  jal     func_80B32434              
/* 00B1C 80B32DAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B20 80B32DB0 1000000A */  beq     $zero, $zero, .L80B32DDC   
/* 00B24 80B32DB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B28 80B32DB8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
.L80B32DBC:
/* 00B2C 80B32DBC C606000C */  lwc1    $f6, 0x000C($s0)           ## 0000000C
/* 00B30 80B32DC0 4606203C */  c.lt.s  $f4, $f6                   
/* 00B34 80B32DC4 00000000 */  nop
/* 00B38 80B32DC8 45020004 */  bc1fl   .L80B32DDC                 
/* 00B3C 80B32DCC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B40 80B32DD0 0C2CC8E1 */  jal     func_80B32384              
/* 00B44 80B32DD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B48 80B32DD8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B32DDC:
/* 00B4C 80B32DDC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00B50 80B32DE0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B54 80B32DE4 03E00008 */  jr      $ra                        
/* 00B58 80B32DE8 00000000 */  nop
