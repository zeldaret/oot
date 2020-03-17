glabel func_80B03C8C
/* 01A1C 80B03C8C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01A20 80B03C90 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01A24 80B03C94 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01A28 80B03C98 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01A2C 80B03C9C 84820528 */  lh      $v0, 0x0528($a0)           ## 00000528
/* 01A30 80B03CA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A34 80B03CA4 5040000C */  beql    $v0, $zero, .L80B03CD8     
/* 01A38 80B03CA8 86020534 */  lh      $v0, 0x0534($s0)           ## 00000534
/* 01A3C 80B03CAC 14400003 */  bne     $v0, $zero, .L80B03CBC     
/* 01A40 80B03CB0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01A44 80B03CB4 10000003 */  beq     $zero, $zero, .L80B03CC4   
/* 01A48 80B03CB8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B03CBC:
/* 01A4C 80B03CBC A60E0528 */  sh      $t6, 0x0528($s0)           ## 00000528
/* 01A50 80B03CC0 86030528 */  lh      $v1, 0x0528($s0)           ## 00000528
.L80B03CC4:
/* 01A54 80B03CC4 14600003 */  bne     $v1, $zero, .L80B03CD4     
/* 01A58 80B03CC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A5C 80B03CCC 0C2C09C0 */  jal     func_80B02700              
/* 01A60 80B03CD0 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
.L80B03CD4:
/* 01A64 80B03CD4 86020534 */  lh      $v0, 0x0534($s0)           ## 00000534
.L80B03CD8:
/* 01A68 80B03CD8 5040000C */  beql    $v0, $zero, .L80B03D0C     
/* 01A6C 80B03CDC C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 01A70 80B03CE0 14400003 */  bne     $v0, $zero, .L80B03CF0     
/* 01A74 80B03CE4 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 01A78 80B03CE8 10000003 */  beq     $zero, $zero, .L80B03CF8   
/* 01A7C 80B03CEC 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B03CF0:
/* 01A80 80B03CF0 A60F0534 */  sh      $t7, 0x0534($s0)           ## 00000534
/* 01A84 80B03CF4 86030534 */  lh      $v1, 0x0534($s0)           ## 00000534
.L80B03CF8:
/* 01A88 80B03CF8 14600003 */  bne     $v1, $zero, .L80B03D08     
/* 01A8C 80B03CFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A90 80B03D00 0C2C09C0 */  jal     func_80B02700              
/* 01A94 80B03D04 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
.L80B03D08:
/* 01A98 80B03D08 C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
.L80B03D0C:
/* 01A9C 80B03D0C C6080540 */  lwc1    $f8, 0x0540($s0)           ## 00000540
/* 01AA0 80B03D10 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 01AA4 80B03D14 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 01AA8 80B03D18 46083280 */  add.s   $f10, $f6, $f8             
/* 01AAC 80B03D1C 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 01AB0 80B03D20 26040060 */  addiu   $a0, $s0, 0x0060           ## $a0 = 00000060
/* 01AB4 80B03D24 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 01AB8 80B03D28 4604503E */  c.le.s  $f10, $f4                  
/* 01ABC 80B03D2C 00000000 */  nop
/* 01AC0 80B03D30 45020008 */  bc1fl   .L80B03D54                 
/* 01AC4 80B03D34 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01AC8 80B03D38 3C0580B0 */  lui     $a1, %hi(func_80B03A00)    ## $a1 = 80B00000
/* 01ACC 80B03D3C 24A53A00 */  addiu   $a1, $a1, %lo(func_80B03A00) ## $a1 = 80B03A00
/* 01AD0 80B03D40 0C2C089C */  jal     func_80B02270              
/* 01AD4 80B03D44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AD8 80B03D48 10000006 */  beq     $zero, $zero, .L80B03D64   
/* 01ADC 80B03D4C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01AE0 80B03D50 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
.L80B03D54:
/* 01AE4 80B03D54 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 01AE8 80B03D58 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01AEC 80B03D5C E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 01AF0 80B03D60 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B03D64:
/* 01AF4 80B03D64 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01AF8 80B03D68 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01AFC 80B03D6C 03E00008 */  jr      $ra                        
/* 01B00 80B03D70 00000000 */  nop


