glabel func_80A9BC1C
/* 00C7C 80A9BC1C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00C80 80A9BC20 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00C84 80A9BC24 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00C88 80A9BC28 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00C8C 80A9BC2C 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 00C90 80A9BC30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C94 80A9BC34 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00C98 80A9BC38 304E000B */  andi    $t6, $v0, 0x000B           ## $t6 = 00000000
/* 00C9C 80A9BC3C 11C0001F */  beq     $t6, $zero, .L80A9BCBC     
/* 00CA0 80A9BC40 30580040 */  andi    $t8, $v0, 0x0040           ## $t8 = 00000000
/* 00CA4 80A9BC44 304F0020 */  andi    $t7, $v0, 0x0020           ## $t7 = 00000000
/* 00CA8 80A9BC48 15E00005 */  bne     $t7, $zero, .L80A9BC60     
/* 00CAC 80A9BC4C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00CB0 80A9BC50 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00CB4 80A9BC54 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00CB8 80A9BC58 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00CBC 80A9BC5C 2407284E */  addiu   $a3, $zero, 0x284E         ## $a3 = 0000284E
.L80A9BC60:
/* 00CC0 80A9BC60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CC4 80A9BC64 0C2A6C87 */  jal     func_80A9B21C              
/* 00CC8 80A9BC68 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00CCC 80A9BC6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CD0 80A9BC70 0C2A6C1F */  jal     func_80A9B07C              
/* 00CD4 80A9BC74 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00CD8 80A9BC78 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00CDC 80A9BC7C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00CE0 80A9BC80 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 00CE4 80A9BC84 10400005 */  beq     $v0, $zero, .L80A9BC9C     
/* 00CE8 80A9BC88 00000000 */  nop
/* 00CEC 80A9BC8C 10410007 */  beq     $v0, $at, .L80A9BCAC       
/* 00CF0 80A9BC90 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00CF4 80A9BC94 54410081 */  bnel    $v0, $at, .L80A9BE9C       
/* 00CF8 80A9BC98 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A9BC9C:
/* 00CFC 80A9BC9C 0C00B55C */  jal     Actor_Kill
              
/* 00D00 80A9BCA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D04 80A9BCA4 1000007D */  beq     $zero, $zero, .L80A9BE9C   
/* 00D08 80A9BCA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A9BCAC:
/* 00D0C 80A9BCAC 0C2A6FCF */  jal     func_80A9BF3C              
/* 00D10 80A9BCB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D14 80A9BCB4 10000079 */  beq     $zero, $zero, .L80A9BE9C   
/* 00D18 80A9BCB8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A9BCBC:
/* 00D1C 80A9BCBC 13000044 */  beq     $t8, $zero, .L80A9BDD0     
/* 00D20 80A9BCC0 00000000 */  nop
/* 00D24 80A9BCC4 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00D28 80A9BCC8 24190190 */  addiu   $t9, $zero, 0x0190         ## $t9 = 00000190
/* 00D2C 80A9BCCC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D30 80A9BCD0 E7A40030 */  swc1    $f4, 0x0030($sp)           
/* 00D34 80A9BCD4 C6080084 */  lwc1    $f8, 0x0084($s0)           ## 00000084
/* 00D38 80A9BCD8 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00D3C 80A9BCDC 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF0
/* 00D40 80A9BCE0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00D44 80A9BCE4 46083280 */  add.s   $f10, $f6, $f8             
/* 00D48 80A9BCE8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00D4C 80A9BCEC E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 00D50 80A9BCF0 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00D54 80A9BCF4 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00D58 80A9BCF8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00D5C 80A9BCFC 0C00A527 */  jal     func_8002949C              
/* 00D60 80A9BD00 E7B00038 */  swc1    $f16, 0x0038($sp)          
/* 00D64 80A9BD04 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D68 80A9BD08 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF0
/* 00D6C 80A9BD0C 24060096 */  addiu   $a2, $zero, 0x0096         ## $a2 = 00000096
/* 00D70 80A9BD10 2407028A */  addiu   $a3, $zero, 0x028A         ## $a3 = 0000028A
/* 00D74 80A9BD14 0C00A511 */  jal     func_80029444              
/* 00D78 80A9BD18 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00D7C 80A9BD1C 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 00D80 80A9BD20 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00D84 80A9BD24 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D88 80A9BD28 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF0
/* 00D8C 80A9BD2C 24060190 */  addiu   $a2, $zero, 0x0190         ## $a2 = 00000190
/* 00D90 80A9BD30 0C00A511 */  jal     func_80029444              
/* 00D94 80A9BD34 24070320 */  addiu   $a3, $zero, 0x0320         ## $a3 = 00000320
/* 00D98 80A9BD38 240B0008 */  addiu   $t3, $zero, 0x0008         ## $t3 = 00000008
/* 00D9C 80A9BD3C AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00DA0 80A9BD40 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DA4 80A9BD44 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF0
/* 00DA8 80A9BD48 240601F4 */  addiu   $a2, $zero, 0x01F4         ## $a2 = 000001F4
/* 00DAC 80A9BD4C 0C00A511 */  jal     func_80029444              
/* 00DB0 80A9BD50 2407044C */  addiu   $a3, $zero, 0x044C         ## $a3 = 0000044C
/* 00DB4 80A9BD54 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00DB8 80A9BD58 44819000 */  mtc1    $at, $f18                  ## $f18 = -3.00
/* 00DBC 80A9BD5C 3C0280AA */  lui     $v0, %hi(D_80A9C1D4)       ## $v0 = 80AA0000
/* 00DC0 80A9BD60 3C0380AA */  lui     $v1, %hi(D_80A9C1DC)       ## $v1 = 80AA0000
/* 00DC4 80A9BD64 E6120070 */  swc1    $f18, 0x0070($s0)          ## 00000070
/* 00DC8 80A9BD68 3C0880AA */  lui     $t0, %hi(D_80A9C1D0)       ## $t0 = 80AA0000
/* 00DCC 80A9BD6C 3C0980AA */  lui     $t1, %hi(D_80A9C1D8)       ## $t1 = 80AA0000
/* 00DD0 80A9BD70 2529C1D8 */  addiu   $t1, $t1, %lo(D_80A9C1D8)  ## $t1 = 80A9C1D8
/* 00DD4 80A9BD74 2508C1D0 */  addiu   $t0, $t0, %lo(D_80A9C1D0)  ## $t0 = 80A9C1D0
/* 00DD8 80A9BD78 2463C1DC */  addiu   $v1, $v1, %lo(D_80A9C1DC)  ## $v1 = 80A9C1DC
/* 00DDC 80A9BD7C 2442C1D4 */  addiu   $v0, $v0, %lo(D_80A9C1D4)  ## $v0 = 80A9C1D4
/* 00DE0 80A9BD80 844C0000 */  lh      $t4, 0x0000($v0)           ## 80A9C1D4
/* 00DE4 80A9BD84 850E0000 */  lh      $t6, 0x0000($t0)           ## 80A9C1D0
/* 00DE8 80A9BD88 84780000 */  lh      $t8, 0x0000($v1)           ## 80A9C1DC
/* 00DEC 80A9BD8C 852A0000 */  lh      $t2, 0x0000($t1)           ## 80A9C1D8
/* 00DF0 80A9BD90 000C6843 */  sra     $t5, $t4,  1               
/* 00DF4 80A9BD94 000E7843 */  sra     $t7, $t6,  1               
/* 00DF8 80A9BD98 0018C843 */  sra     $t9, $t8,  1               
/* 00DFC 80A9BD9C 000A5843 */  sra     $t3, $t2,  1               
/* 00E00 80A9BDA0 A44D0000 */  sh      $t5, 0x0000($v0)           ## 80A9C1D4
/* 00E04 80A9BDA4 A50F0000 */  sh      $t7, 0x0000($t0)           ## 80A9C1D0
/* 00E08 80A9BDA8 A4790000 */  sh      $t9, 0x0000($v1)           ## 80A9C1DC
/* 00E0C 80A9BDAC A52B0000 */  sh      $t3, 0x0000($t1)           ## 80A9C1D8
/* 00E10 80A9BDB0 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 00E14 80A9BDB4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E18 80A9BDB8 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00E1C 80A9BDBC 318DFFBF */  andi    $t5, $t4, 0xFFBF           ## $t5 = 00000000
/* 00E20 80A9BDC0 A60D0088 */  sh      $t5, 0x0088($s0)           ## 00000088
/* 00E24 80A9BDC4 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00E28 80A9BDC8 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00E2C 80A9BDCC 240728C5 */  addiu   $a3, $zero, 0x28C5         ## $a3 = 000028C5
.L80A9BDD0:
/* 00E30 80A9BDD0 0C2A6C50 */  jal     func_80A9B140              
/* 00E34 80A9BDD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E38 80A9BDD8 3C0480AA */  lui     $a0, %hi(D_80A9C1D4)       ## $a0 = 80AA0000
/* 00E3C 80A9BDDC 3C0580AA */  lui     $a1, %hi(D_80A9C1D0)       ## $a1 = 80AA0000
/* 00E40 80A9BDE0 84A5C1D0 */  lh      $a1, %lo(D_80A9C1D0)($a1)  
/* 00E44 80A9BDE4 2484C1D4 */  addiu   $a0, $a0, %lo(D_80A9C1D4)  ## $a0 = 80A9C1D4
/* 00E48 80A9BDE8 0C01DE5F */  jal     Math_ApproxS
              
/* 00E4C 80A9BDEC 240601F4 */  addiu   $a2, $zero, 0x01F4         ## $a2 = 000001F4
/* 00E50 80A9BDF0 3C0480AA */  lui     $a0, %hi(D_80A9C1DC)       ## $a0 = 80AA0000
/* 00E54 80A9BDF4 3C0580AA */  lui     $a1, %hi(D_80A9C1D8)       ## $a1 = 80AA0000
/* 00E58 80A9BDF8 84A5C1D8 */  lh      $a1, %lo(D_80A9C1D8)($a1)  
/* 00E5C 80A9BDFC 2484C1DC */  addiu   $a0, $a0, %lo(D_80A9C1DC)  ## $a0 = 80A9C1DC
/* 00E60 80A9BE00 0C01DE5F */  jal     Math_ApproxS
              
/* 00E64 80A9BE04 240600AA */  addiu   $a2, $zero, 0x00AA         ## $a2 = 000000AA
/* 00E68 80A9BE08 3C0F80AA */  lui     $t7, %hi(D_80A9C1D4)       ## $t7 = 80AA0000
/* 00E6C 80A9BE0C 85EFC1D4 */  lh      $t7, %lo(D_80A9C1D4)($t7)  
/* 00E70 80A9BE10 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 00E74 80A9BE14 3C0A80AA */  lui     $t2, %hi(D_80A9C1DC)       ## $t2 = 80AA0000
/* 00E78 80A9BE18 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 00E7C 80A9BE1C 01CFC021 */  addu    $t8, $t6, $t7              
/* 00E80 80A9BE20 A61800B4 */  sh      $t8, 0x00B4($s0)           ## 000000B4
/* 00E84 80A9BE24 854AC1DC */  lh      $t2, %lo(D_80A9C1DC)($t2)  
/* 00E88 80A9BE28 3C053D4C */  lui     $a1, 0x3D4C                ## $a1 = 3D4C0000
/* 00E8C 80A9BE2C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3D4CCCCD
/* 00E90 80A9BE30 032A5821 */  addu    $t3, $t9, $t2              
/* 00E94 80A9BE34 A60B00B6 */  sh      $t3, 0x00B6($s0)           ## 000000B6
/* 00E98 80A9BE38 0C2A6C5D */  jal     func_80A9B174              
/* 00E9C 80A9BE3C 2604005C */  addiu   $a0, $s0, 0x005C           ## $a0 = 0000005C
/* 00EA0 80A9BE40 0C00B5FB */  jal     func_8002D7EC              
/* 00EA4 80A9BE44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EA8 80A9BE48 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00EAC 80A9BE4C 240C00C5 */  addiu   $t4, $zero, 0x00C5         ## $t4 = 000000C5
/* 00EB0 80A9BE50 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00EB4 80A9BE54 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00EB8 80A9BE58 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00EBC 80A9BE5C 3C0640F0 */  lui     $a2, 0x40F0                ## $a2 = 40F00000
/* 00EC0 80A9BE60 3C07420C */  lui     $a3, 0x420C                ## $a3 = 420C0000
/* 00EC4 80A9BE64 0C00B92D */  jal     func_8002E4B4              
/* 00EC8 80A9BE68 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00ECC 80A9BE6C 26060150 */  addiu   $a2, $s0, 0x0150           ## $a2 = 00000150
/* 00ED0 80A9BE70 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000150
/* 00ED4 80A9BE74 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00ED8 80A9BE78 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00EDC 80A9BE7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EE0 80A9BE80 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00EE4 80A9BE84 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00EE8 80A9BE88 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00EEC 80A9BE8C 02212821 */  addu    $a1, $s1, $at              
/* 00EF0 80A9BE90 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00EF4 80A9BE94 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00EF8 80A9BE98 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A9BE9C:
/* 00EFC 80A9BE9C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00F00 80A9BEA0 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00F04 80A9BEA4 03E00008 */  jr      $ra                        
/* 00F08 80A9BEA8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
