glabel func_80AE5938
/* 00C68 80AE5938 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00C6C 80AE593C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00C70 80AE5940 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00C74 80AE5944 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 00C78 80AE5948 848E0278 */  lh      $t6, 0x0278($a0)           ## 00000278
/* 00C7C 80AE594C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C80 80AE5950 51C0000E */  beql    $t6, $zero, .L80AE598C     
/* 00C84 80AE5954 8602027E */  lh      $v0, 0x027E($s0)           ## 0000027E
/* 00C88 80AE5958 C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 00C8C 80AE595C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C90 80AE5960 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00C94 80AE5964 4604003C */  c.lt.s  $f0, $f4                   
/* 00C98 80AE5968 00000000 */  nop
/* 00C9C 80AE596C 45020047 */  bc1fl   .L80AE5A8C                 
/* 00CA0 80AE5970 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00CA4 80AE5974 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 00CA8 80AE5978 00000000 */  nop
/* 00CAC 80AE597C 46060200 */  add.s   $f8, $f0, $f6              
/* 00CB0 80AE5980 10000041 */  beq     $zero, $zero, .L80AE5A88   
/* 00CB4 80AE5984 E4880068 */  swc1    $f8, 0x0068($a0)           ## 00000068
/* 00CB8 80AE5988 8602027E */  lh      $v0, 0x027E($s0)           ## 0000027E
.L80AE598C:
/* 00CBC 80AE598C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00CC0 80AE5990 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00CC4 80AE5994 10410005 */  beq     $v0, $at, .L80AE59AC       
/* 00CC8 80AE5998 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00CCC 80AE599C 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
/* 00CD0 80AE59A0 3C1880AE */  lui     $t8, %hi(func_80AE5A9C)    ## $t8 = 80AE0000
/* 00CD4 80AE59A4 27185A9C */  addiu   $t8, $t8, %lo(func_80AE5A9C) ## $t8 = 80AE5A9C
/* 00CD8 80AE59A8 11E00034 */  beq     $t7, $zero, .L80AE5A7C     
.L80AE59AC:
/* 00CDC 80AE59AC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00CE0 80AE59B0 1441002C */  bne     $v0, $at, .L80AE5A64       
/* 00CE4 80AE59B4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00CE8 80AE59B8 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 00CEC 80AE59BC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00CF0 80AE59C0 00000000 */  nop
/* 00CF4 80AE59C4 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 00CF8 80AE59C8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00CFC 80AE59CC 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 00D00 80AE59D0 46100480 */  add.s   $f18, $f0, $f16            
/* 00D04 80AE59D4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00D08 80AE59D8 E7B2004C */  swc1    $f18, 0x004C($sp)          
/* 00D0C 80AE59DC C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00D10 80AE59E0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00D14 80AE59E4 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 00D18 80AE59E8 46040180 */  add.s   $f6, $f0, $f4              
/* 00D1C 80AE59EC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00D20 80AE59F0 E7A60050 */  swc1    $f6, 0x0050($sp)           
/* 00D24 80AE59F4 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00D28 80AE59F8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00D2C 80AE59FC 44811000 */  mtc1    $at, $f2                   ## $f2 = 3.00
/* 00D30 80AE5A00 46080280 */  add.s   $f10, $f0, $f8             
/* 00D34 80AE5A04 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 00D38 80AE5A08 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D3C 80AE5A0C 27A6004C */  addiu   $a2, $sp, 0x004C           ## $a2 = FFFFFFF4
/* 00D40 80AE5A10 E7AA0054 */  swc1    $f10, 0x0054($sp)          
/* 00D44 80AE5A14 8618027A */  lh      $t8, 0x027A($s0)           ## 0000027A
/* 00D48 80AE5A18 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 00D4C 80AE5A1C 24190096 */  addiu   $t9, $zero, 0x0096         ## $t9 = 00000096
/* 00D50 80AE5A20 13000004 */  beq     $t8, $zero, .L80AE5A34     
/* 00D54 80AE5A24 24080096 */  addiu   $t0, $zero, 0x0096         ## $t0 = 00000096
/* 00D58 80AE5A28 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00D5C 80AE5A2C 44811000 */  mtc1    $at, $f2                   ## $f2 = 6.00
/* 00D60 80AE5A30 00000000 */  nop
.L80AE5A34:
/* 00D64 80AE5A34 240900FA */  addiu   $t1, $zero, 0x00FA         ## $t1 = 000000FA
/* 00D68 80AE5A38 240A00EB */  addiu   $t2, $zero, 0x00EB         ## $t2 = 000000EB
/* 00D6C 80AE5A3C 240B00F5 */  addiu   $t3, $zero, 0x00F5         ## $t3 = 000000F5
/* 00D70 80AE5A40 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00D74 80AE5A44 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 00D78 80AE5A48 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 00D7C 80AE5A4C AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00D80 80AE5A50 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00D84 80AE5A54 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00D88 80AE5A58 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00D8C 80AE5A5C 0C00A850 */  jal     func_8002A140              
/* 00D90 80AE5A60 E7A20028 */  swc1    $f2, 0x0028($sp)           
.L80AE5A64:
/* 00D94 80AE5A64 3C0E80AE */  lui     $t6, %hi(func_80AE5E48)    ## $t6 = 80AE0000
/* 00D98 80AE5A68 240D0042 */  addiu   $t5, $zero, 0x0042         ## $t5 = 00000042
/* 00D9C 80AE5A6C 25CE5E48 */  addiu   $t6, $t6, %lo(func_80AE5E48) ## $t6 = 80AE5E48
/* 00DA0 80AE5A70 A60D0278 */  sh      $t5, 0x0278($s0)           ## 00000278
/* 00DA4 80AE5A74 10000004 */  beq     $zero, $zero, .L80AE5A88   
/* 00DA8 80AE5A78 AE0E026C */  sw      $t6, 0x026C($s0)           ## 0000026C
.L80AE5A7C:
/* 00DAC 80AE5A7C 240F001E */  addiu   $t7, $zero, 0x001E         ## $t7 = 0000001E
/* 00DB0 80AE5A80 A60F0278 */  sh      $t7, 0x0278($s0)           ## 00000278
/* 00DB4 80AE5A84 AE18026C */  sw      $t8, 0x026C($s0)           ## 0000026C
.L80AE5A88:
/* 00DB8 80AE5A88 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80AE5A8C:
/* 00DBC 80AE5A8C 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00DC0 80AE5A90 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00DC4 80AE5A94 03E00008 */  jr      $ra                        
/* 00DC8 80AE5A98 00000000 */  nop
