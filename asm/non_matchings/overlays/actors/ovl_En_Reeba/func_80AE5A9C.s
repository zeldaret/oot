glabel func_80AE5A9C
/* 00DCC 80AE5A9C 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00DD0 80AE5AA0 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00DD4 80AE5AA4 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00DD8 80AE5AA8 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 00DDC 80AE5AAC 84820278 */  lh      $v0, 0x0278($a0)           ## 00000278
/* 00DE0 80AE5AB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DE4 80AE5AB4 24053989 */  addiu   $a1, $zero, 0x3989         ## $a1 = 00003989
/* 00DE8 80AE5AB8 10400035 */  beq     $v0, $zero, .L80AE5B90     
/* 00DEC 80AE5ABC 00000000 */  nop
/* 00DF0 80AE5AC0 848E027E */  lh      $t6, 0x027E($a0)           ## 0000027E
/* 00DF4 80AE5AC4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00DF8 80AE5AC8 304F000F */  andi    $t7, $v0, 0x000F           ## $t7 = 00000000
/* 00DFC 80AE5ACC 55C10039 */  bnel    $t6, $at, .L80AE5BB4       
/* 00E00 80AE5AD0 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00E04 80AE5AD4 15E00036 */  bne     $t7, $zero, .L80AE5BB0     
/* 00E08 80AE5AD8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00E0C 80AE5ADC 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 00E10 80AE5AE0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00E14 80AE5AE4 00000000 */  nop
/* 00E18 80AE5AE8 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00E1C 80AE5AEC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00E20 80AE5AF0 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 00E24 80AE5AF4 46040180 */  add.s   $f6, $f0, $f4              
/* 00E28 80AE5AF8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00E2C 80AE5AFC E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 00E30 80AE5B00 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00E34 80AE5B04 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00E38 80AE5B08 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 00E3C 80AE5B0C 46080280 */  add.s   $f10, $f0, $f8             
/* 00E40 80AE5B10 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00E44 80AE5B14 E7AA0050 */  swc1    $f10, 0x0050($sp)          
/* 00E48 80AE5B18 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00E4C 80AE5B1C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00E50 80AE5B20 44811000 */  mtc1    $at, $f2                   ## $f2 = 3.00
/* 00E54 80AE5B24 46100480 */  add.s   $f18, $f0, $f16            
/* 00E58 80AE5B28 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 00E5C 80AE5B2C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E60 80AE5B30 27A6004C */  addiu   $a2, $sp, 0x004C           ## $a2 = FFFFFFF4
/* 00E64 80AE5B34 E7B20054 */  swc1    $f18, 0x0054($sp)          
/* 00E68 80AE5B38 8618027A */  lh      $t8, 0x027A($s0)           ## 0000027A
/* 00E6C 80AE5B3C 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 00E70 80AE5B40 24190096 */  addiu   $t9, $zero, 0x0096         ## $t9 = 00000096
/* 00E74 80AE5B44 13000004 */  beq     $t8, $zero, .L80AE5B58     
/* 00E78 80AE5B48 24080096 */  addiu   $t0, $zero, 0x0096         ## $t0 = 00000096
/* 00E7C 80AE5B4C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00E80 80AE5B50 44811000 */  mtc1    $at, $f2                   ## $f2 = 6.00
/* 00E84 80AE5B54 00000000 */  nop
.L80AE5B58:
/* 00E88 80AE5B58 240900FA */  addiu   $t1, $zero, 0x00FA         ## $t1 = 000000FA
/* 00E8C 80AE5B5C 240A00EB */  addiu   $t2, $zero, 0x00EB         ## $t2 = 000000EB
/* 00E90 80AE5B60 240B00F5 */  addiu   $t3, $zero, 0x00F5         ## $t3 = 000000F5
/* 00E94 80AE5B64 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00E98 80AE5B68 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 00E9C 80AE5B6C AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 00EA0 80AE5B70 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00EA4 80AE5B74 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00EA8 80AE5B78 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00EAC 80AE5B7C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00EB0 80AE5B80 0C00A850 */  jal     EffectSsEnIce_SpawnFlyingVec3f              
/* 00EB4 80AE5B84 E7A20028 */  swc1    $f2, 0x0028($sp)           
/* 00EB8 80AE5B88 1000000A */  beq     $zero, $zero, .L80AE5BB4   
/* 00EBC 80AE5B8C 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80AE5B90:
/* 00EC0 80AE5B90 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00EC4 80AE5B94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EC8 80AE5B98 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 00ECC 80AE5B9C 0C00CB1F */  jal     func_80032C7C              
/* 00ED0 80AE5BA0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00ED4 80AE5BA4 3C0D80AE */  lui     $t5, %hi(func_80AE5C38)    ## $t5 = 80AE0000
/* 00ED8 80AE5BA8 25AD5C38 */  addiu   $t5, $t5, %lo(func_80AE5C38) ## $t5 = 80AE5C38
/* 00EDC 80AE5BAC AE0D026C */  sw      $t5, 0x026C($s0)           ## 0000026C
.L80AE5BB0:
/* 00EE0 80AE5BB0 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80AE5BB4:
/* 00EE4 80AE5BB4 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00EE8 80AE5BB8 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00EEC 80AE5BBC 03E00008 */  jr      $ra                        
/* 00EF0 80AE5BC0 00000000 */  nop
