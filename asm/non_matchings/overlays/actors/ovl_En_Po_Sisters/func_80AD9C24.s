glabel func_80AD9C24
/* 00C94 80AD9C24 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00C98 80AD9C28 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00C9C 80AD9C2C AFB00048 */  sw      $s0, 0x0048($sp)           
/* 00CA0 80AD9C30 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00CA4 80AD9C34 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00CA8 80AD9C38 908902BD */  lbu     $t1, 0x02BD($a0)           ## 000002BD
/* 00CAC 80AD9C3C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00CB0 80AD9C40 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 00CB4 80AD9C44 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 00CB8 80AD9C48 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 00CBC 80AD9C4C 01C17824 */  and     $t7, $t6, $at              
/* 00CC0 80AD9C50 312AFFFB */  andi    $t2, $t1, 0xFFFB           ## $t2 = 00000000
/* 00CC4 80AD9C54 AC800134 */  sw      $zero, 0x0134($a0)         ## 00000134
/* 00CC8 80AD9C58 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00CCC 80AD9C5C A498019C */  sh      $t8, 0x019C($a0)           ## 0000019C
/* 00CD0 80AD9C60 A0990199 */  sb      $t9, 0x0199($a0)           ## 00000199
/* 00CD4 80AD9C64 A08802C0 */  sb      $t0, 0x02C0($a0)           ## 000002C0
/* 00CD8 80AD9C68 A08A02BD */  sb      $t2, 0x02BD($a0)           ## 000002BD
/* 00CDC 80AD9C6C 8FAB0064 */  lw      $t3, 0x0064($sp)           
/* 00CE0 80AD9C70 3C0680AE */  lui     $a2, %hi(D_80ADD790)       ## $a2 = 80AE0000
/* 00CE4 80AD9C74 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CE8 80AD9C78 11600024 */  beq     $t3, $zero, .L80AD9D0C     
/* 00CEC 80AD9C7C 24C6D790 */  addiu   $a2, $a2, %lo(D_80ADD790)  ## $a2 = 80ADD790
/* 00CF0 80AD9C80 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 00CF4 80AD9C84 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 00CF8 80AD9C88 44814000 */  mtc1    $at, $f8                   ## $f8 = 45.00
/* 00CFC 80AD9C8C E7A40054 */  swc1    $f4, 0x0054($sp)           
/* 00D00 80AD9C90 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 00D04 80AD9C94 240C0096 */  addiu   $t4, $zero, 0x0096         ## $t4 = 00000096
/* 00D08 80AD9C98 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 00D0C 80AD9C9C 46083280 */  add.s   $f10, $f6, $f8             
/* 00D10 80AD9CA0 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00D14 80AD9CA4 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00D18 80AD9CA8 2418009B */  addiu   $t8, $zero, 0x009B         ## $t8 = 0000009B
/* 00D1C 80AD9CAC E7AA0058 */  swc1    $f10, 0x0058($sp)          
/* 00D20 80AD9CB0 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 00D24 80AD9CB4 01602025 */  or      $a0, $t3, $zero            ## $a0 = 00000000
/* 00D28 80AD9CB8 240B0009 */  addiu   $t3, $zero, 0x0009         ## $t3 = 00000009
/* 00D2C 80AD9CBC 24190096 */  addiu   $t9, $zero, 0x0096         ## $t9 = 00000096
/* 00D30 80AD9CC0 24080096 */  addiu   $t0, $zero, 0x0096         ## $t0 = 00000096
/* 00D34 80AD9CC4 24090096 */  addiu   $t1, $zero, 0x0096         ## $t1 = 00000096
/* 00D38 80AD9CC8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00D3C 80AD9CCC AFAA0034 */  sw      $t2, 0x0034($sp)           
/* 00D40 80AD9CD0 AFA90030 */  sw      $t1, 0x0030($sp)           
/* 00D44 80AD9CD4 AFA8002C */  sw      $t0, 0x002C($sp)           
/* 00D48 80AD9CD8 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 00D4C 80AD9CDC AFAB0038 */  sw      $t3, 0x0038($sp)           
/* 00D50 80AD9CE0 AFA0003C */  sw      $zero, 0x003C($sp)         
/* 00D54 80AD9CE4 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 00D58 80AD9CE8 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 00D5C 80AD9CEC AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00D60 80AD9CF0 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 00D64 80AD9CF4 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00D68 80AD9CF8 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00D6C 80AD9CFC 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFF4
/* 00D70 80AD9D00 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 80ADD790
/* 00D74 80AD9D04 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 00D78 80AD9D08 E7B0005C */  swc1    $f16, 0x005C($sp)          
.L80AD9D0C:
/* 00D7C 80AD9D0C 2604029C */  addiu   $a0, $s0, 0x029C           ## $a0 = 0000029C
/* 00D80 80AD9D10 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00D84 80AD9D14 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00D88 80AD9D18 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00D8C 80AD9D1C 0C01E796 */  jal     Lights_PointSetColorAndRadius
              
/* 00D90 80AD9D20 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00D94 80AD9D24 3C0C80AE */  lui     $t4, %hi(func_80ADB338)    ## $t4 = 80AE0000
/* 00D98 80AD9D28 258CB338 */  addiu   $t4, $t4, %lo(func_80ADB338) ## $t4 = 80ADB338
/* 00D9C 80AD9D2C AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
/* 00DA0 80AD9D30 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00DA4 80AD9D34 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 00DA8 80AD9D38 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 00DAC 80AD9D3C 03E00008 */  jr      $ra                        
/* 00DB0 80AD9D40 00000000 */  nop
